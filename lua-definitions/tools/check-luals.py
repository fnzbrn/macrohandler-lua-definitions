"""Exercise real LuaLS LSP services. Never executes Lua or starts Android."""
import argparse,json,pathlib,queue,subprocess,tempfile,threading,time,urllib.parse
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--server',type=pathlib.Path,required=True,help='Existing LuaLS executable; nothing is installed by this script.')
parser.add_argument('--package',type=pathlib.Path,default=pathlib.Path(__file__).resolve().parents[1])
parser.add_argument('--report',type=pathlib.Path,help='Optional JSON output, outside the package to preserve its manifest.')
args=parser.parse_args()
WORK=args.package.resolve(); EXE=args.server.resolve()
if not EXE.is_file() or not (WORK/'.luarc.json').is_file():parser.error('LuaLS executable or package configuration missing.')
LOGS=tempfile.TemporaryDirectory(prefix='macrohandler-luals-check-')
Q=queue.Queue();MESSAGES=[];IDENT=0;LOCK=threading.Lock()
P=subprocess.Popen([str(EXE),'--logpath='+LOGS.name],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL)
def send(data):
    raw=json.dumps(data).encode('utf-8')
    with LOCK:P.stdin.write(b'Content-Length: '+str(len(raw)).encode()+b'\r\n\r\n'+raw);P.stdin.flush()
def receive():
    while True:
        headers={}
        while True:
            line=P.stdout.readline()
            if not line:return
            if line==b'\r\n':break
            key,_,value=line.decode().partition(':');headers[key.lower()]=value.strip()
        msg=json.loads(P.stdout.read(int(headers['content-length'])))
        if 'method' in msg and 'id' in msg:
            send({'jsonrpc':'2.0','id':msg['id'],'result':[] if msg['method']=='workspace/configuration' else None})
        else:Q.put(msg)
threading.Thread(target=receive,daemon=True).start()
def request(method,params):
    global IDENT
    IDENT+=1;ident=IDENT;send({'jsonrpc':'2.0','id':ident,'method':method,'params':params});deadline=time.monotonic()+45
    while time.monotonic()<deadline:
        try:msg=Q.get(timeout=1)
        except queue.Empty:continue
        MESSAGES.append(msg)
        if msg.get('id')==ident:
            if 'error' in msg:raise RuntimeError(msg['error'])
            return msg.get('result')
    raise TimeoutError(method)
def notify(method,params):send({'jsonrpc':'2.0','method':method,'params':params})
def doc(name,text):
    uri=(WORK/'examples'/name).as_uri()
    notify('textDocument/didOpen',{'textDocument':{'uri':uri,'languageId':'lua','version':1,'text':text}})
    return uri
def pos(text,offset=None):
    text=text if offset is None else text[:offset]
    return {'line':text.count('\n'),'character':len(text.rsplit('\n',1)[-1])}
def query(name,text,method,offset=None):
    uri=doc(name,text)
    return request('textDocument/'+method,{'textDocument':{'uri':uri},'position':pos(text,offset)})
def labels(response):
    return [i['label'] for i in (response.get('items',[]) if isinstance(response,dict) else response or [])]
RESULTS={}
try:
    request('initialize',{'processId':None,'rootUri':WORK.as_uri(),'workspaceFolders':[{'uri':WORK.as_uri(),'name':'MacroHandler Lua definitions'}],'capabilities':{'textDocument':{'completion':{'completionItem':{'snippetSupport':True,'documentationFormat':['markdown','plaintext']}},'hover':{'contentFormat':['markdown','plaintext']},'signatureHelp':{'signatureInformation':{'documentationFormat':['markdown','plaintext']}}}}})
    notify('initialized',{})
    # A first hover forces source/library analysis before comparing member completion results.
    warm=doc('warmup.lua','wait(100)')
    ready=time.monotonic()+25
    while time.monotonic()<ready:
        response=request('textDocument/hover',{'textDocument':{'uri':warm},'position':{'line':0,'character':1}})
        if response and 'Workspace loading' not in json.dumps(response):break
        time.sleep(0.25)
    probes={
        'system_members':('System.wid',None,['width']),
        'point_members':('local p = Point(1, 2)\nif p then\n p:ge',None,['getX','getY']),
        'region_members':('local r = Region(0, 0, 10, 10)\nr:fi',None,['find','findText']),
        'match_members':('local r = Region()\nlocal hit = r:find("icon")\nif hit then hit:ge',None,['getPoint','getScore']),
        'enum_values':('---@type MacroHandler.ImageMode\nlocal mode = ""',-1,['balanced_image','rotation_image']),
        'form_fields':('---@type MacroHandler.FormSchema\nlocal form = { ti }',-3,['title']),
        'ocr_members':('local rows = Region():read()\nlocal row = rows[1]\nif row then row:ge',None,['getPoint','getText']),
        'response_members':('local response = Request.get("https://example.com")\nresponse:ge',None,['getResponseCode','getData']),
        'websocket_members':('local socket = WebSocket.connect("wss://example.com")\nsocket:se',None,['send']),
    }
    for name,(text,offset,expected) in probes.items():
        off=len(text)+offset if offset is not None and offset<0 else offset
        result=query(name+'.lua',text,'completion',off);ls=labels(result)
        RESULTS[name]={'labels':ls,'expected':expected,'passed':all(any(e==s or e in s for s in ls) for e in expected)}
    hover=query('hover.lua','wait(100)','hover',1)
    RESULTS['hover']={'result':hover,'passed':'number' in json.dumps(hover) and 'milliseconds' in json.dumps(hover)}
    signature=query('signature.lua','wait(100)','signatureHelp',5)
    RESULTS['signature']={'result':signature,'passed':bool(signature and signature.get('signatures'))}
    return_text='local response = Request.get("https://example.com")\nresponse:getData()'
    return_hover=query('return-hover.lua',return_text,'hover',return_text.index('getData')+1)
    RESULTS['return_type']={'result':return_hover,'passed':'string' in json.dumps(return_hover)}
    sandbox_hover=query('sandbox-hover.lua','load("return 1")','hover',1)
    RESULTS['sandbox_nil']={'result':sandbox_hover,'passed':'nil' in json.dumps(sandbox_hover) and 'fun' not in json.dumps(sandbox_hover)}
    for name in ('getmetatable','setmetatable'):
        result=query(name+'-hover.lua',name+'({})','hover',1)
        RESULTS[name+'_nil']={'result':result,'passed':'nil' in json.dumps(result) and 'fun' not in json.dumps(result)}
    ocr_labels=RESULTS['ocr_members']['labels']
    RESULTS['ocr_shape']={'passed':bool(ocr_labels) and not any('getScore' in name for name in ocr_labels),'excluded':'getScore (not exposed on CompatMatchText)'}
    # Wrong calls are checked as documents, not executed.
    bad_uri=doc('negative.lua','wait("not a number")\nDefinitelyMissingMacroHandlerApi()\n')
    deadline=time.monotonic()+25;negative=[]
    while time.monotonic()<deadline:
        try:msg=Q.get(timeout=1)
        except queue.Empty:continue
        MESSAGES.append(msg)
        if msg.get('method')=='textDocument/publishDiagnostics' and urllib.parse.unquote(msg['params'].get('uri','')).casefold()==urllib.parse.unquote(bad_uri).casefold():
            negative=msg['params']['diagnostics']
            codes=[d.get('code') for d in negative]
            if 'param-type-mismatch' in codes and 'undefined-global' in codes:break
    RESULTS['negative']={'diagnostics':negative,'passed':all(code in [d.get('code') for d in negative] for code in ('param-type-mismatch','undefined-global'))}
    request('shutdown',None);notify('exit',None)
finally:
    try:P.wait(timeout=10)
    except subprocess.TimeoutExpired:P.terminate();P.wait(timeout=5)
    LOGS.cleanup()
    if args.report:args.report.write_text(json.dumps(RESULTS,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({key:value['passed'] for key,value in RESULTS.items()}))
    if not all(v['passed'] for v in RESULTS.values()):raise SystemExit(1)
