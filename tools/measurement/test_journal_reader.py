import importlib.util
from pathlib import Path
import tkinter
import unittest

HERE=Path(__file__).absolute().parent


class JournalReaderTests(unittest.TestCase):
    def setUp(self):
        self.assertTrue((HERE/'journal_reader.tcl').exists(),'Missing retained-history reader')
        spec=importlib.util.spec_from_file_location('fixtures',HERE/'test_journal_capture.py')
        self.f=importlib.util.module_from_spec(spec);spec.loader.exec_module(self.f)
        self.t=tkinter.Tcl(); self.messages=[];self.reads=[];self.count=10;self.nonce=55
        self.header_reads=0;self.reboot=False;self.busy=0;self.overflow=0
        self.runtime='AC880-C1-JOURNAL-20261022'
        self.t.createcommand('puts',lambda *a:self.messages.append(a[-1]) or '')
        self.t.createcommand('flush',lambda *a:'')
        self.t.createcommand('exec',lambda *a:'00100000 00000020 R g_live_build_id\n00200000 00002040 B g_login_journal\n00300000 00000070 B g_ui_diag')
        self.t.createcommand('connect',lambda *a:'')
        self.t.createcommand('disconnect',lambda *a:'')
        self.t.createcommand('targets',lambda *a:'{target_id 1 name APU}' if '-target-properties' in a else 'APU ARM Cortex-A9 MPCore #0 xc7z020')
        self.t.createcommand('mrd',self.read)
        self.t.call('source',str(HERE/'journal_reader.tcl'))

    def read(self,*args):
        address,count=int(args[-2],0),int(args[-1]);self.reads.append((address,count))
        if address==0x100000:
            s=self.runtime;return tuple(map(ord,s))+(0,)*(32-len(s))
        if address==0x300000:
            w=[0]*28;w[0]=0x55494354;w[1]=3;w[7]=self.busy
            return tuple(w)
        if address==0x200000:
            self.header_reads+=1
            nonce=self.nonce+int(self.reboot and self.header_reads>1)
            return tuple([0x4c4a3031,1,8256,128,self.count,self.overflow,nonce,0,16]+[0]*7)
        if address>=0x200040 and (address-0x200040)%64==0:
            start=(address-0x200040)//64+1
            return tuple(x for i in range(start,start+count//16) for x in self.f.record(i))
        raise AssertionError('Unexpected read')

    def run_reader(self,cursor):
        return int(self.t.call('journal_read',('E:/safe.elf','D:/sdk','tcp:127.0.0.1:3122',cursor)))

    def test_all_ten_retained_records_read_while_home_or_busy(self):
        self.busy=1
        self.assertEqual(self.run_reader(0),0)
        records=[s for s in self.messages if s.startswith('JOURNAL_RECORD ')]
        self.assertEqual(len(records),10)
        self.assertIn('JOURNAL_IDLE 0',self.messages)
        self.assertIn('JOURNAL_PASS',self.messages)

    def test_resume_cursor_reads_remaining_without_erasing_journal(self):
        self.assertEqual(self.run_reader(5),0)
        rows=[s.split()[1] for s in self.messages if s.startswith('JOURNAL_RECORD ')]
        self.assertEqual(rows,['6','7','8','9','10'])
        self.assertTrue(all(address in (0x100000,0x200000,0x300000) or address>=0x200040 for address,count in self.reads))

    def test_reboot_during_snapshot_never_passes(self):
        self.reboot=True
        self.assertEqual(self.run_reader(0),1)
        self.assertNotIn('JOURNAL_PASS',self.messages)

    def test_cursor_ahead_fails(self):
        self.assertEqual(self.run_reader(11),1)
        self.assertNotIn('JOURNAL_PASS',self.messages)

    def test_delayed_usb_target_enumeration_is_waited_for(self):
        calls=[]
        def targets(*args):
            if args:return '{target_id 1 name APU}'
            calls.append(1)
            return '' if len(calls)<3 else 'APU ARM Cortex-A9 MPCore #0 xc7z020'
        self.t.createcommand('targets',targets)
        self.assertEqual(self.run_reader(0),0)
        self.assertIn('JOURNAL_PASS',self.messages)

    def test_e02_reads_own_journal_but_cannot_be_read_as_e01(self):
        self.runtime='AC880-E02-JOURNAL-20261022'
        args=('E:/e02.elf','D:/sdk','tcp:127.0.0.1:3122',0,self.runtime)
        self.assertEqual(int(self.t.call('journal_read',args)),0)
        self.assertIn('JOURNAL_RUNTIME '+self.runtime,self.messages)
        self.messages.clear()
        self.assertEqual(self.run_reader(0),1)
        self.assertNotIn('JOURNAL_PASS',self.messages)


if __name__=='__main__':unittest.main()
