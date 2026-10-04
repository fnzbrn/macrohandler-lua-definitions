#!/usr/bin/env python3
"""Read-only definition/package and Kotlin registration drift check. Python 3.9+."""
import argparse, hashlib, json, pathlib, re, sys

def load(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def catalog_from_source(text):
    """Tokenize comments/strings separately; never scrape names from commented examples."""
    tokens=[];i=0
    while i<len(text):
        if text[i].isspace():i+=1;continue
        if text.startswith('//',i):
            end=text.find('\n',i);i=len(text) if end<0 else end+1;continue
        if text.startswith('/*',i):
            depth=1;i+=2
            while depth:
                if i>=len(text):raise ValueError('Unclosed Kotlin comment')
                if text.startswith('/*',i):depth+=1;i+=2
                elif text.startswith('*/',i):depth-=1;i+=2
                else:i+=1
            continue
        if text.startswith('"""',i):
            end=text.find('"""',i+3)
            if end<0:raise ValueError('Unclosed Kotlin raw string')
            tokens.append(('raw',text[i:end+3]));i=end+3;continue
        if text[i]=='"':
            start=i;i+=1
            while i<len(text):
                if text[i]=='\\':i+=2
                elif text[i]=='"':i+=1;break
                else:i+=1
            tokens.append(('string',text[start:i]));continue
        m=re.match(r'[A-Za-z_]\w*|->',text[i:]);word=m.group() if m else text[i]
        tokens.append(('code',word));i+=len(word)
    values=[v for _,v in tokens];result={}
    wanted={'supportedGlobalFunctions','supportedGlobalObjects','supportedObjectMethods','supportedGlobalConstants','callableGlobalObjects'}
    for i,word in enumerate(values[:-2]):
        if word!='val' or values[i+1] not in wanted:continue
        name=values[i+1];j=i+2
        while j<len(values) and values[j]!='=':j+=1
        if j>=len(values):raise ValueError('Missing catalog initializer '+name)
        j+=1;kind=values[j]
        while j<len(values) and values[j]!='(':j+=1
        start=j+1;depth=1;j+=1
        while j<len(values) and depth:
            if values[j]=='(':depth+=1
            elif values[j]==')':depth-=1
            j+=1
        if depth:raise ValueError('Unclosed catalog initializer '+name)
        body=tokens[start:j-1]
        if kind=='setOf':result[name]=[json.loads(v) for k,v in body if k=='string']
        elif kind=='mapOf':
            parts=[];chunk=[];depth=0
            for k,v in body:
                if v=='(' and k=='code':depth+=1
                elif v==')' and k=='code':depth-=1
                if v==',' and k=='code' and depth==0:
                    if chunk:parts.append(chunk)
                    chunk=[]
                else:chunk.append((k,v))
            if chunk:parts.append(chunk)
            out={}
            for part in parts:
                key=json.loads(part[0][1])
                out[key]=[json.loads(v) for k,v in part[2:] if k=='string'] if any(v=='setOf' for _,v in part) else ''.join(v for _,v in part[2:])
            result[name]=out
        else:raise ValueError('Unsupported initializer '+name+' '+kind)
    if set(result)!=wanted:raise ValueError('Missing catalog declarations: '+repr(wanted-set(result)))
    return result

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--package',type=pathlib.Path,default=pathlib.Path(__file__).resolve().parents[1])
    parser.add_argument('--repo',type=pathlib.Path,help='MacroHandler source checkout (read only). Omit for standalone package integrity only.')
    args=parser.parse_args();pkg=args.package.resolve();errors=[]
    meta=load(pkg/'metadata.json');inventory=load(pkg/'api-inventory.json')
    manifest=load(pkg/'package-manifest.json')
    listed={entry['path'] for entry in manifest['files']}
    actual_files={path.relative_to(pkg).as_posix() for path in pkg.rglob('*') if path.is_file() and path.name!='package-manifest.json'}
    if listed!=actual_files:errors.append('Package manifest file set drift: '+repr(sorted(listed^actual_files)))
    for entry in manifest['files']:
        path=(pkg/entry['path']).resolve()
        if not path.is_relative_to(pkg):errors.append('Unsafe manifest path: '+entry['path']);continue
        if not path.is_file() or digest(path)!=entry['sha256']:errors.append('Package file missing or modified: '+entry['path'])
    symbols=inventory['symbols'];actual={e['symbol'] for e in symbols}
    if len(actual)!=len(symbols):errors.append('Duplicate inventory symbol')
    library='\n'.join(p.read_text(encoding='utf-8') for p in sorted((pkg/'library').glob('*.d.lua')))
    expected_declarations=set()
    for e in symbols:
        target='_mh'+e['type'].split('.')[-1] if e['instance'] else (e['owner'] or '')
        name=e['method']
        if name in ('repeat','in'):
            needle=target+'['+json.dumps(name)+'] = function('
        else:needle='function '+(target+(':' if e['instance'] else '.') if target else '')+name+'('
        expected_declarations.add(needle)
        if needle not in library:errors.append('Inventory has no declaration: '+e['symbol'])
    declared=re.findall(r'^(?:function [A-Za-z_][\w.:]*\(|[A-Za-z_][\w.]*\["[^"]+"\] = function\()',library,re.M)
    if len(set(declared))!=len(declared):errors.append('Duplicate stub function declaration')
    for needle in sorted(set(declared)-expected_declarations):errors.append('Unlisted stub declaration: '+needle)
    # All catalog methods must exist on a namespace or its traced returned object.
    covered={}
    owner_map={'Template':'AssetTemplate','TextResult':'Result','MultiGestureBuilder':'MultiGesture','MultiGestureSequence':'MultiGesture','WebSocketSession':'WebSocket'}
    for e in symbols:
        owner=e['type'].removeprefix('MacroHandler.') if e['instance'] else e['owner']
        owner=owner_map.get(owner,owner)
        covered.setdefault(owner,set()).add(e['method'])
    exclusions={(e['owner'],e['method']) for e in inventory['notExposed']}
    for owner,names in inventory['catalog']['supportedObjectMethods'].items():
        for name in set(names)-covered.get(owner,set()):
            if (owner,name) not in exclusions:errors.append('Missing catalog declaration: '+owner+'.'+name)
    if args.repo:
        root=args.repo.resolve()
        catpath=root/'app/src/main/java/com/macrohandler/app/runtime/ScriptApiCatalog.kt'
        current=catalog_from_source(catpath.read_text(encoding='utf-8-sig'))
        for key,values in current.items():
            expected=inventory['catalog'][key]
            if values!=expected:errors.append('Runtime catalog drift: '+key)
        # Strict hashes protect arity/default/return/bridge changes too. A non-API edit can also
        # fail this conservative gate; a human must inspect and refresh evidence, never ignore it.
        for source in meta['sources']:
            path=(root/source['path']).resolve()
            if not path.is_relative_to(root):errors.append('Unsafe source path: '+source['path']);continue
            if not path.is_file() or digest(path)!=source['sha256']:errors.append('Source snapshot drift: '+source['path'])
    else:
        print('Source checkout not supplied: binding drift NOT checked.')
    for error in errors:print('FAIL: '+error)
    print(json.dumps({'status':'FAIL' if errors else 'PASS','declarationSymbols':len(symbols),'globalTables':len(inventory['catalog']['supportedGlobalObjects']),'catalogMethods':sum(map(len,inventory['catalog']['supportedObjectMethods'].values())),'sourceChecked':bool(args.repo),'apiFingerprint':meta['apiFingerprint'],'errors':len(errors)},indent=2))
    return 1 if errors else 0

if __name__=='__main__':
    try:sys.exit(main())
    except (OSError,ValueError,KeyError) as error:
        print('FAIL: '+str(error));sys.exit(2)
