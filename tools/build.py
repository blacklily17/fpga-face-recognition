"""Offline portable Vivado/SDK build. Never connects to a board or modifies ready/."""
import argparse,hashlib,json,os,re,subprocess,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd,log,env,marker=None):
    print('RUN',str(log),flush=True)
    log.parent.mkdir(parents=True,exist_ok=True)
    with log.open('w',encoding='utf-8') as f:
        rc=subprocess.call([str(x) for x in cmd],stdout=f,stderr=subprocess.STDOUT,env=env,cwd=str(log.parent))
    data=log.read_text(encoding='utf-8',errors='replace')
    if rc or (marker and marker not in data):
        print(data[-7000:]);raise RuntimeError('Build failed; inspect '+str(log))
def build(args):
    root=Path(args.root).resolve();cfg=json.loads((root/'config.json').read_text())
    if not re.fullmatch(r'[A-Za-z0-9_-]+',args.name):raise ValueError('Use a simple build name')
    if not str(root).isascii() or any(c in str(root) for c in ' ()'):
        raise ValueError('SDK 2018.3 requires a short ASCII path without spaces or parentheses')
    work=root/'build'/args.name
    if work.exists():raise ValueError('Choose a new -Name; existing build preserved: '+str(work))
    work.mkdir(parents=True)
    env=os.environ.copy();env['PROCESSOR_ARCHITECTURE']='AMD64';env['INTEGRATED_PYTHON']=sys.executable
    env.pop('INTEGRATED_BUILD_ROOT',None)
    hdf=Path(args.hdf).resolve() if args.hdf else root/cfg['hdf']
    receipt={'id':cfg['id'],'stage':args.stage,'board_access':False,'sources':{p.name:sha(p) for p in (root/'software/src').iterdir() if p.is_file()}}
    if args.stage in ('project','hardware','all'):
        hw=root/'hardware'; hw_work=hw/'build/h'/args.name
        if hw_work.exists():raise ValueError('Hardware work already exists')
        hw_work.mkdir(parents=True)
        gate=hw/'scripts/check_integrated_hardware.py'
        run([sys.executable,gate,'capture',hw,'--receipt',hw_work/'sources.json'],work/'hardware_sources.log',env)
        stage='bd' if args.stage=='project' else 'bit'
        run([Path(args.vivado)/'bin/vivado.bat','-mode','batch','-nolog','-nojournal','-source',hw/'scripts/build_integrated_hardware.tcl','-tclargs',stage,hw_work],work/'vivado.log',env,'INTEGRATED_BD_PASS' if stage=='bd' else 'INTEGRATED_HARDWARE_PASS')
        run([sys.executable,gate,'check',hw,'--receipt',hw_work/'sources.json'],work/'hardware_sources_after.log',env)
        receipt['xpr']=str((hw_work/'vivado/facebox/facebox.xpr').relative_to(root))
        hdf=hw_work/'export/facebox/joint.hdf'
    if args.stage in ('software','all'):
        sdk=Path(args.sdk);tool=sdk/'gnu/aarch32/nt/gcc-arm-none-eabi/bin'
        compiler=tool/'arm-none-eabi-gcc.exe'
        if not compiler.is_file():raise ValueError('SDK compiler missing: '+str(compiler))
        run([sdk/'bin/xsct.bat',HERE/'create_bsp.tcl',work/'sdk',hdf],work/'bsp.log',env,'DELIVERY_BSP_PASS')
        bsp=work/'sdk/bsp/ps7_cortexa9_0';src=root/'software/src';out=work/'arm';out.mkdir()
        cpu=['-mcpu=cortex-a9','-mfpu=vfpv3','-mfloat-abi=hard']
        flags=['-std=c99','-O2','-Wall','-Wextra','-Werror','-ffp-contract=off','-fno-fast-math']+cfg['defines']+cpu+['-I',str(src),'-I',str(bsp/'include'),'-I',str(root/'software/include')]
        objects=[];commands=[]
        for name in cfg['units']:
            unit=src/name;obj=out/(unit.stem+'.o')
            cmd=[compiler]+flags+['-c',unit,'-o',obj]
            run(cmd,work/'compile_logs'/(unit.stem+'.log'),env)
            objects.append(obj);commands.append([str(x) for x in cmd])
        elf=out/'firmware.elf';mapfile=out/'firmware.map'
        cmd=[compiler]+cpu+['-specs='+str(root/'software/Xilinx.spec'),'-Wl,--build-id=none','-Wl,-T,'+str(root/'software/live.ld'),'-Wl,-Map='+str(mapfile),'-Wl,--cref','-L',str(bsp/'lib'),'-o',elf]+objects+['-lm','-Wl,--start-group,-lxil,-lgcc,-lc,-lxilffs,--end-group']
        run(cmd,work/'link.log',env);commands.append([str(x) for x in cmd])
        if cfg['build_id'].encode() not in elf.read_bytes():raise ValueError('Runtime ID absent from ELF')
        run([tool/'arm-none-eabi-size.exe',elf],work/'size.txt',env)
        run([tool/'arm-none-eabi-nm.exe','-S',elf],work/'symbols.txt',env)
        receipt.update({'hdf_sha256':sha(hdf),'elf_sha256':sha(elf),'compiler_sha256':sha(compiler),'units':cfg['units'],'defines':cfg['defines'],'commands':commands})
    assert receipt['sources']=={p.name:sha(p) for p in (root/'software/src').iterdir() if p.is_file()}
    receipt['status']='PASS'
    (work/'receipt.json').write_text(json.dumps(receipt,indent=2),encoding='utf-8')
    print('DELIVERY_BUILD_PASS',cfg['id'],args.stage,flush=True)
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--root',required=True);p.add_argument('--stage',choices=['software','project','hardware','all'],default='software');p.add_argument('--name',default='rebuild01');p.add_argument('--sdk',required=True);p.add_argument('--vivado',required=True);p.add_argument('--hdf');build(p.parse_args())
