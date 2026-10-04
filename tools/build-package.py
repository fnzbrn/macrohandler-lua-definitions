#!/usr/bin/env python3
"""Build only the self-contained LuaLS ZIP. Python 3.9+, no third-party dependencies."""
import argparse, hashlib, pathlib, subprocess, sys, zipfile

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=pathlib.Path,default=pathlib.Path(__file__).resolve().parents[1]/'dist')
    args=parser.parse_args()
    root=pathlib.Path(__file__).resolve().parents[1]
    package=root/'lua-definitions'
    result=subprocess.run([sys.executable,str(package/'tools/verify-lua-definitions.py')])
    if result.returncode:return result.returncode
    output=args.output.resolve()
    if output==package.resolve() or output.is_relative_to(package.resolve()):
        parser.error('Output must stay outside the definition package.')
    output.mkdir(parents=True,exist_ok=True)
    archive=output/'macrohandler-lua-definitions.zip'
    if archive.exists():parser.error('Output ZIP already exists; choose a fresh output directory.')
    with zipfile.ZipFile(archive,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as zip:
        for file in sorted(package.rglob('*')):
            if file.is_file():zip.write(file,'lua-definitions/'+file.relative_to(package).as_posix())
    checksum=hashlib.sha256(archive.read_bytes()).hexdigest()
    (output/'SHA256SUMS.txt').write_text(checksum+'  '+archive.name+'\n',encoding='utf-8')
    print(archive)
    print('SHA-256: '+checksum)
    return 0

if __name__=='__main__':sys.exit(main())
