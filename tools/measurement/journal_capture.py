"""Bounded, restartable experiment RAM-journal capture. Never writes target memory."""
import argparse
import csv
from datetime import datetime, timezone, timedelta
import hashlib
import io
import json
import os
from pathlib import Path
import re
import socket
import struct
import subprocess
import sys
import time
import uuid

HERE = Path(__file__).absolute().parent
SDK = Path(os.environ.get('FPGA_SDK_ROOT', 'D:/Tools/Xilinx/SDK/2018.3'))
RUNTIME = 'AC880-C1-JOURNAL-20261022'
RUNTIMES = {'E01':RUNTIME, 'E02':'AC880-E02-JOURNAL-20261022', 'E03':'AC880-E03-JOURNAL-20261022', 'E04':'AC880-E04-JOURNAL-20261022', 'E05':'AC880-E05-JOURNAL-20261022', 'E06':'AC880-E06-JOURNAL-20261022', 'E07':'AC880-E07-JOURNAL-20261022'}


def now():
    return datetime.now(timezone(timedelta(hours=8))).isoformat()


def atomic(path, text):
    tmp = path.with_name(path.name+'.tmp')
    with tmp.open('w', encoding='utf-8', newline='') as f:
        f.write(text); f.flush(); os.fsync(f.fileno())
    os.replace(str(tmp), str(path))


def checksum(words):
    h = 2166136261
    for b in struct.pack('<15I', *words):
        h = ((h ^ b)*16777619) & 0xffffffff
    return h


def uints(text, size):
    w = [int(x, 0) for x in text.split()]
    if len(w) != size or any(x < 0 or x > 0xffffffff for x in w):
        raise ValueError('Invalid journal uint32 payload')
    return w


def decode_record(w):
    if len(w) != 16 or checksum(w[:15]) != w[15]:
        raise ValueError('Record checksum mismatch')
    i, lo, hi, page, status, label, mslo, mshi, attempts, valid, rejected, stop, error, display_error, fault, crc = w
    if not 1 <= i <= 128 or page not in (6,7,10,11,13):
        raise ValueError('Invalid record index or terminal page')
    if status != {6:2, 7:3, 10:4, 11:5, 13:3}[page]:
        raise ValueError('Inconsistent terminal status')
    if page == 6 and not label or page == 7 and label:
        raise ValueError('Inconsistent terminal identity')
    if page in (6,7) and (error or display_error or fault or stop not in (1,2,3,4)):
        raise ValueError('Invalid eligible terminal record')
    return dict(journal_index=i, ui_sequence=lo+(hi<<32), page=page, status=status,
                predicted_label=label, result=({1:'WJX',2:'LYL',3:'LHJ'}.get(label,'ID_%d'%label)
                if page==6 else {7:'UNKNOWN',10:'NO_FACE',11:'ERROR',13:'QUALITY'}[page]),
                eligible=page in (6,7), decision_ms=mslo+(mshi<<32), attempts=attempts,
                valid_frames=valid, quality_rejected=rejected, stop_reason=stop,
                raw_words=w, true_identity=None, correct=None)


class TransportError(RuntimeError):
    pass


def parse_snapshot(text):
    h = None; rows = []; passed = False
    for line in text.splitlines():
        if line.startswith('JOURNAL_HEADER '):
            if h is not None: raise ValueError('Duplicate header')
            h = uints(line.split(' ',1)[1],16)
        elif line.startswith('JOURNAL_RECORD '):
            rows.append(decode_record(uints(line.split(' ',1)[1],16)))
        elif line == 'JOURNAL_PASS':
            if passed: raise ValueError('Duplicate pass marker')
            passed = True
        elif line.startswith('JOURNAL_FAILED'):
            reason=line.split(' ',1)[1] if ' ' in line else ''
            fatal=('RUNTIME_MISMATCH','SHORT_ID','JOURNAL_ABI','UI_ABI','INVALID_',
                   'ELF_ABI_','SYMBOL_MISSING_','JOURNAL_ROLLBACK','BOOT_OR_ABI_CHANGED','USAGE_')
            if not reason.startswith(fatal): raise TransportError(line)
            raise ValueError(line)
    if h is None or not passed: raise ValueError('Incomplete journal snapshot')
    if h[:4] != [0x4c4a3031,1,8256,128] or h[8] != 16 or h[4] > 128 or not (h[6] or h[7]):
        raise ValueError('Journal ABI/count/nonce mismatch')
    indices = [r['journal_index'] for r in rows]
    if indices and indices != list(range(indices[0],h[4]+1)):
        raise ValueError('Incomplete, duplicate or unordered snapshot')
    if any(i > h[4] for i in indices): raise ValueError('Uncommitted record')
    return dict(header=h, nonce=h[6]+(h[7]<<32), committed=h[4], overflow=h[5], rows=rows)


class JournalRecorder:
    def __init__(self, output, group, target, binding, resume=False):
        if group not in ('known','unknown') or not 1 <= target <= 100:
            raise ValueError('Invalid group or target')
        self.output=Path(output); self.group=group; self.target=target; self.binding=binding
        self.rows=[]; self.cursor=0; self.nonce=None; self.count=0; self.baseline=None
        self.state='starting'; self.detail='Connecting; no trial group started yet'
        self.last_read=None; self.failures=0
        config=dict(group=group,target=target,binding=binding)
        if resume:
            actual=json.loads((self.output/'configuration.json').read_text(encoding='utf-8'))
            if actual != config: raise ValueError('Resume group/target/build binding changed')
            bp=self.output/'baseline.json'
            if not bp.exists(): raise ValueError('No durable baseline; start a new directory')
            self.baseline=json.loads(bp.read_text(encoding='utf-8'))
            self.nonce=self.baseline['nonce']; self.cursor=self.baseline['committed']
            self._recover_wal()
            self.state='complete' if self.count >= target else 'reconnecting'
            self.detail='Resumed durable cursor; awaiting board continuity verification'
        else:
            self.output.mkdir(parents=True, exist_ok=False)
            atomic(self.output/'configuration.json',json.dumps(config,indent=2)+'\n')
        self.publish()

    def _recover_wal(self):
        path=self.output/'events.jsonl'
        if not path.exists(): return
        data=path.read_bytes()
        if data and not data.endswith(b'\n'):
            end=data.rfind(b'\n')+1
            backup=self.output/('events.torn.'+uuid.uuid4().hex+'.bin')
            with backup.open('xb') as f:
                f.write(data); f.flush(); os.fsync(f.fileno())
            atomic(path,data[:end].decode('utf-8'))
            data=data[:end]
        for line in data.splitlines():
            row=json.loads(line.decode('utf-8')); decoded=decode_record(row['raw_words'])
            if any(row.get(k)!=v for k,v in decoded.items()) or row['nonce']!=self.nonce or row['group']!=self.group:
                raise ValueError('WAL content mismatch')
            if row['journal_index']!=self.cursor+1 or self.count>=self.target:
                raise ValueError('WAL gap or excess records')
            self.rows.append(row); self.cursor=row['journal_index']; self.count+=int(row['eligible'])

    def publish(self):
        values=[r['decision_ms'] for r in self.rows if r['eligible']]
        experiment=self.binding.get('experiment','E01')
        status=dict(experiment=experiment,state=self.state,detail=self.detail,group=self.group,count=self.count,target=self.target,
                    excluded_count=len(self.rows)-self.count,cursor=self.cursor,nonce=self.nonce,
                    latencies_ms=values,mean_decision_ms=sum(values)/len(values) if values else None,
                    min_decision_ms=min(values) if values else None,max_decision_ms=max(values) if values else None,
                    last_successful_read=self.last_read,consecutive_transport_failures=self.failures,
                    updated_at=now(),pid=os.getpid(),scope='Trigger to frozen decision; operator records accuracy')
        atomic(self.output/'status.json',json.dumps(status,ensure_ascii=False,indent=2)+'\n')
        atomic(self.output/'status.txt','%s %s: %d/%d\n%s\n'%(experiment,self.group,self.count,self.target,self.detail))
        buf=io.StringIO(newline=''); w=csv.writer(buf)
        columns=['sample_index','group','journal_index','result','decision_ms','true_identity','correct']
        w.writerow(columns)
        for row in self.rows:
            if row['eligible']: w.writerow([row.get(k) for k in columns])
        atomic(self.output/'timings.csv','\ufeff'+buf.getvalue())

    def transport_error(self, message):
        self.failures+=1; self.state='reconnecting'; self.detail=message
        self.publish()

    def accept(self, snapshot, baseline=False):
        if snapshot['overflow']: raise ValueError('Board journal overflow: group integrity unavailable')
        if baseline:
            if self.baseline is not None: raise ValueError('Cannot replace baseline on reconnect')
            self.baseline={k:snapshot[k] for k in ('nonce','committed','header')}
            self.nonce=snapshot['nonce']; self.cursor=snapshot['committed']
            atomic(self.output/'baseline.json',json.dumps(self.baseline,indent=2)+'\n')
        else:
            if self.baseline is None: raise ValueError('Missing baseline')
            if self.nonce!=snapshot['nonce'] or snapshot['committed']<self.cursor:
                raise ValueError('Board restart or journal rollback; do not join runs')
            known={r['journal_index']:r['raw_words'] for r in self.rows}
            for row in snapshot['rows']:
                i=row['journal_index']
                if i in known and known[i]!=row['raw_words']: raise ValueError('Immutable record changed')
            pending=[r for r in snapshot['rows'] if r['journal_index']>self.cursor]
            if snapshot['committed']>self.cursor and (not pending or pending[0]['journal_index']!=self.cursor+1):
                raise ValueError('Missing retained records before cursor')
            for item in pending:
                if self.count>=self.target: break
                row=dict(item,nonce=self.nonce,group=self.group,recorded_at=now(),
                         sample_index=self.count+1 if item['eligible'] else None)
                with (self.output/'events.jsonl').open('a',encoding='utf-8',newline='') as f:
                    f.write(json.dumps(row,ensure_ascii=False)+'\n'); f.flush(); os.fsync(f.fileno())
                self.rows.append(row); self.cursor=row['journal_index']; self.count+=int(row['eligible'])
        self.last_read=now(); self.failures=0
        self.state='complete' if self.count>=self.target else 'ready'
        self.detail='Target saved; group stopped' if self.state=='complete' else 'Read healthy; records retained on board between reads'
        self.publish()


class ProcessCleanupError(ValueError):
    pass


def stop_owned_process(proc):
    if proc.poll() is not None: return
    if os.name=='nt':
        result=subprocess.run(['taskkill','/PID',str(proc.pid),'/T','/F'],stdout=subprocess.PIPE,
                              stderr=subprocess.STDOUT,timeout=5,creationflags=subprocess.CREATE_NO_WINDOW)
        if result.returncode:
            # Direct process handle is safe even if process-tree enumeration is restricted.
            if proc.poll() is None: proc.kill()
            proc.wait(timeout=2)
            raise ProcessCleanupError('Owned process-tree cleanup not confirmed; halted rather than spawn more readers: '+
                                      result.stdout.decode(errors='replace').strip())
    else: proc.kill()
    proc.wait(timeout=5)


def run_bounded(command, log_path, timeout=12, env=None):
    """Redirect to a file so a stuck/no-newline pipe cannot block the supervisor."""
    with Path(log_path).open('wb',buffering=0) as raw:
        proc=subprocess.Popen(command,stdout=raw,stderr=subprocess.STDOUT,env=env,
                              creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        try:
            rc=proc.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            stop_owned_process(proc)
            raise TimeoutError('XSCT read deadline exceeded; child tree terminated')
        finally:
            if proc.poll() is None: stop_owned_process(proc)
            raw.flush(); os.fsync(raw.fileno())
    if rc: raise RuntimeError('Reader exited %d; see %s'%(rc,log_path))
    return Path(log_path).read_text(encoding='utf-8',errors='replace')


def batch_command(paths):
    if any(not re.fullmatch(r'[A-Za-z0-9_:/\\. -]+',str(p)) for p in paths):
        raise ValueError('XSCT batch paths must be ASCII without shell metacharacters')
    return 'cmd.exe /d /s /c "'+' '.join('"'+str(p)+'"' for p in paths)+'"'


def tcl_quote(value):
    value=str(value).replace('\\','/')
    if any(c in value for c in '{}\n\r'): raise ValueError('Unsafe Tcl path')
    return '{'+value+'}'


class OwnedServer:
    """A dedicated port/process; never kills another task's hw_server."""
    def __init__(self, port, output, env):
        self.port=port; self.output=output; self.env=env; self.proc=None; self.log=None

    def start(self):
        with socket.socket() as probe:
            if probe.connect_ex(('127.0.0.1',self.port))==0:
                raise RuntimeError('Dedicated hw_server port already occupied; refuse takeover')
        self.log=(self.output/('server_'+uuid.uuid4().hex+'.log')).open('wb',buffering=0)
        command=batch_command([SDK/'bin/hw_server.bat'])
        # Fixed numeric port; retain batch's enclosing outer quote.
        command=command[:-1]+' -s tcp::%d"'%self.port
        self.proc=subprocess.Popen(command,stdout=self.log,stderr=subprocess.STDOUT,env=self.env,
                                   creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        deadline=time.monotonic()+8
        while time.monotonic()<deadline:
            if self.proc.poll() is not None: raise RuntimeError('Owned hw_server exited during startup')
            with socket.socket() as probe:
                if probe.connect_ex(('127.0.0.1',self.port))==0: return
            time.sleep(.1)
        raise TimeoutError('Owned hw_server startup deadline')

    def close(self):
        if self.proc is not None: stop_owned_process(self.proc); self.proc=None
        if self.log is not None: self.log.close(); self.log=None


class RunLock:
    """OS-owned byte lock survives launcher indirection and releases on a crash."""
    def __init__(self, output):
        self.path=Path(output).with_name(Path(output).name+'.writer.lock')
        self.file=None

    def __enter__(self):
        self.path.parent.mkdir(parents=True,exist_ok=True)
        self.file=self.path.open('a+b')
        if self.file.tell()==0: self.file.write(b'0'); self.file.flush()
        self.file.seek(0)
        try:
            if os.name=='nt':
                import msvcrt
                msvcrt.locking(self.file.fileno(),msvcrt.LK_NBLCK,1)
            else:
                import fcntl
                fcntl.flock(self.file.fileno(),fcntl.LOCK_EX|fcntl.LOCK_NB)
        except OSError:
            self.file.close(); self.file=None
            raise RuntimeError('Another recorder owns this group')
        return self

    def __exit__(self,*args):
        if self.file:
            self.file.seek(0)
            if os.name=='nt':
                import msvcrt
                msvcrt.locking(self.file.fileno(),msvcrt.LK_UNLCK,1)
            self.file.close(); self.file=None


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--elf',type=Path,required=True)
    ap.add_argument('--group',choices=('known','unknown'),required=True)
    ap.add_argument('--target',type=int,default=10)
    ap.add_argument('--experiment',choices=tuple(RUNTIMES),default='E01')
    ap.add_argument('--run-kind',choices=('validation','measurement'),default='validation')
    ap.add_argument('--resume',action='store_true')
    ap.add_argument('--server-port',type=int,default=3122)
    ap.add_argument('--read-timeout',type=float,default=12)
    args=ap.parse_args()
    if not 1024<=args.server_port<=65535 or not 2<=args.read_timeout<=30:
        raise ValueError('Invalid port/deadline')
    elf=args.elf.absolute(); reader=HERE/'journal_reader.tcl'
    runtime=RUNTIMES[args.experiment]
    binding={ 'runtime':runtime,'experiment':args.experiment, 'elf_sha256':hashlib.sha256(elf.read_bytes()).hexdigest(),
             'run_kind':args.run_kind,
             'reader_sha256':hashlib.sha256(reader.read_bytes()).hexdigest(),
             'recorder_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest() }
    lock=RunLock(args.output.absolute())
    lock.__enter__()
    try:
        rec=JournalRecorder(args.output.absolute(),args.group,args.target,binding,args.resume)
    except BaseException:
        lock.__exit__(); raise
    env=os.environ.copy(); env['PROCESSOR_ARCHITECTURE']='AMD64'
    server=OwnedServer(args.server_port,rec.output,env)
    try:
        if rec.state=='complete': return 0
        server.start()
        while rec.state!='complete' and not (rec.output/'STOP').exists():
            # Always read the preceding immutable record too, validating the saved cursor.
            cursor=max(0,rec.cursor-1) if rec.baseline else 0
            wrapper=rec.output/'read_once.tcl'
            atomic(wrapper,'source '+tcl_quote(reader)+'\nexit [journal_read [list '+
                   tcl_quote(elf)+' '+tcl_quote(SDK)+' tcp:127.0.0.1:%d %d %s]]\n'%(args.server_port,cursor,runtime))
            path=rec.output/('read_'+uuid.uuid4().hex+'.log')
            try:
                data=run_bounded(batch_command([SDK/'bin/xsct.bat',wrapper]),path,args.read_timeout,env)
                snap=parse_snapshot(data)
            except (TimeoutError,RuntimeError) as exc:
                rec.transport_error(str(exc))
                if rec.failures>=5: raise RuntimeError('Five consecutive transport failures; board journal retained')
                server.close(); time.sleep(.5); server.start(); continue
            # New groups can only start from an idle snapshot; reconnect never re-baselines.
            if rec.baseline is None and 'JOURNAL_IDLE 1' not in data.splitlines():
                raise ValueError('Start group only when board UI is idle')
            rec.accept(snap,baseline=rec.baseline is None)
            time.sleep(.5)
        if rec.state!='complete': rec.state='stopped'; rec.detail='Operator stopped; resume preserves cursor'; rec.publish()
        return 0
    except BaseException as exc:
        rec.state='halted'; rec.detail=str(exc); rec.publish(); raise
    finally:
        try: server.close()
        finally: lock.__exit__()


if __name__=='__main__': sys.exit(main())
