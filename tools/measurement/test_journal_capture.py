"""Recovery tests exercise durable recording and real subprocess deadlines.

All generated scores/outcomes here are synthetic transport fixtures, never trials.
"""
import importlib.util
import json
from pathlib import Path
import struct
import sys
import tempfile
import time
import unittest

HERE = Path(__file__).absolute().parent


def record(i, page=6, label=2):
    status = {6: 2, 7: 3, 10: 4, 11: 5, 13: 3}[page]
    w = [i, i*2+1, 0, page, status, label if page == 6 else 0,
         700+i, 0, 3, 3, 0, 1, 0, 0, 0]
    h = 2166136261
    for b in struct.pack('<15I', *w):
        h = ((h ^ b)*16777619) & 0xffffffff
    return w + [h]


def snapshot(count, start=0, nonce=123456, overflow=0, changes=None):
    h = [0x4c4a3031, 1, 8256, 128, count, overflow, nonce, 0, 16]+[0]*7
    rows = [(changes or {}).get(i, record(i)) for i in range(start+1, count+1)]
    return ('JOURNAL_HEADER '+' '.join(map(str, h))+'\n' +
            ''.join('JOURNAL_RECORD '+' '.join(map(str, w))+'\n' for w in rows)+
            'JOURNAL_PASS\n')


class JournalTests(unittest.TestCase):
    def setUp(self):
        script = HERE/'journal_capture.py'
        self.assertTrue(script.exists(), 'Missing bounded journal recorder')
        spec = importlib.util.spec_from_file_location('journal_capture', script)
        self.m = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(self.m)
        self.tmp = tempfile.TemporaryDirectory(dir=HERE)
        self.addCleanup(self.tmp.cleanup)
        self.out = Path(self.tmp.name)/'run'

    def recorder(self, target=10):
        r = self.m.JournalRecorder(self.out, 'known', target, {'test_fixture': True})
        r.accept(self.m.parse_snapshot(snapshot(0)), baseline=True)
        return r

    def test_five_saved_then_transport_timeout_and_replay_collects_ten_once(self):
        r = self.recorder()
        r.accept(self.m.parse_snapshot(snapshot(5)))
        r.transport_error('read deadline exceeded')
        self.assertEqual(r.count, 5)
        self.assertEqual(json.loads((self.out/'status.json').read_text())['state'], 'reconnecting')
        r.accept(self.m.parse_snapshot(snapshot(10)))
        r.accept(self.m.parse_snapshot(snapshot(10)))
        self.assertEqual(r.count, 10)
        self.assertEqual([x['decision_ms'] for x in r.rows], list(range(701, 711)))
        self.assertEqual(len((self.out/'events.jsonl').read_text().splitlines()), 10)
        self.assertTrue(all(x['true_identity'] is None and x['correct'] is None for x in r.rows))

    def test_process_restart_replays_durable_wal_without_skipping_backlog(self):
        r = self.recorder(); r.accept(self.m.parse_snapshot(snapshot(5)))
        r2 = self.m.JournalRecorder(self.out, 'known', 10, {'test_fixture': True}, resume=True)
        r2.accept(self.m.parse_snapshot(snapshot(10, start=5)))
        self.assertEqual(r2.count, 10)
        self.assertEqual(r2.cursor, 10)
        with self.assertRaises(ValueError):
            self.m.JournalRecorder(self.out, 'unknown', 10, {'test_fixture': True}, resume=True)

    def test_exclude_quality_noface_error_but_keep_unknown_and_name(self):
        r = self.recorder(target=2)
        s = snapshot(5, changes={1: record(1,13), 2: record(2,10), 3: record(3,11), 4: record(4,7)})
        r.accept(self.m.parse_snapshot(s))
        self.assertEqual(r.count, 2)
        self.assertEqual([x['result'] for x in r.rows], ['QUALITY','NO_FACE','ERROR','UNKNOWN','LYL'])
        self.assertEqual([x['eligible'] for x in r.rows], [False,False,False,True,True])

    def test_baseline_excludes_old_terminal_and_resume_does_not_rebaseline(self):
        r = self.m.JournalRecorder(self.out, 'known', 10, {})
        r.accept(self.m.parse_snapshot(snapshot(4)), baseline=True)
        r.accept(self.m.parse_snapshot(snapshot(10, start=4)))
        self.assertEqual(r.count, 6)
        with self.assertRaises(ValueError): r.accept(self.m.parse_snapshot(snapshot(10)), baseline=True)

    def test_changed_boot_overflow_gap_corruption_fail_without_discarding_saved(self):
        r = self.recorder(); r.accept(self.m.parse_snapshot(snapshot(5)))
        for s in [snapshot(10, nonce=12), snapshot(10, overflow=1), snapshot(10, start=6), snapshot(4)]:
            with self.assertRaises(ValueError): r.accept(self.m.parse_snapshot(s))
            self.assertEqual(r.count, 5)
        bad = record(6); bad[6] += 100
        with self.assertRaises(ValueError): self.m.parse_snapshot(snapshot(6, start=5, changes={6: bad}))
        with self.assertRaises(ValueError): self.m.parse_snapshot(snapshot(6) .replace('JOURNAL_PASS',''))

    def test_torn_wal_tail_preserved_and_recovered_from_board(self):
        r = self.recorder(); r.accept(self.m.parse_snapshot(snapshot(5)))
        with (self.out/'events.jsonl').open('ab') as f: f.write(b'{"broken":')
        r2 = self.m.JournalRecorder(self.out, 'known', 10, {'test_fixture': True}, resume=True)
        self.assertTrue(list(self.out.glob('events.torn.*.bin')))
        r2.accept(self.m.parse_snapshot(snapshot(10, start=5)))
        self.assertEqual(r2.count, 10)
        self.assertEqual(len((self.out/'events.jsonl').read_text().splitlines()), 10)

    def test_completed_group_does_not_include_later_results(self):
        r = self.recorder(); r.accept(self.m.parse_snapshot(snapshot(12)))
        self.assertEqual(r.count, 10)
        self.assertEqual(r.cursor, 10)

    def test_real_child_that_stalls_is_bounded_and_partial_output_retained(self):
        path = Path(self.tmp.name)/'stall.log'
        start = time.monotonic()
        with self.assertRaises(TimeoutError):
            self.m.run_bounded([sys.executable,'-u','-c','import time; print("five_saved",flush=True); time.sleep(30)'], path, .4)
        self.assertLess(time.monotonic()-start, 5)
        self.assertIn('five_saved', path.read_text())

    def test_failed_child_exit_cannot_be_mistaken_for_valid_snapshot(self):
        path = Path(self.tmp.name)/'fail.log'
        with self.assertRaises(RuntimeError):
            self.m.run_bounded([sys.executable,'-c','raise SystemExit(3)'], path, 2)

    def test_second_writer_cannot_open_same_group(self):
        self.assertTrue(hasattr(self.m,'RunLock'),'Missing single-writer lock')
        with self.m.RunLock(self.out):
            with self.assertRaises(RuntimeError):
                with self.m.RunLock(self.out): pass
        with self.m.RunLock(self.out): pass

    def test_missing_jtag_target_is_recoverable_but_wrong_runtime_is_fatal(self):
        with self.assertRaises(RuntimeError):
            self.m.parse_snapshot('JOURNAL_FAILED NO_DEVICE\n')
        with self.assertRaises(ValueError) as ctx:
            self.m.parse_snapshot('JOURNAL_FAILED RUNTIME_MISMATCH\n')
        self.assertNotIsInstance(ctx.exception, RuntimeError)

    def test_e02_status_and_binding_remain_distinct_from_e01(self):
        r=self.m.JournalRecorder(self.out,'known',10,{'experiment':'E02','runtime':'AC880-E02-JOURNAL-20261022'})
        r.accept(self.m.parse_snapshot(snapshot(0)),baseline=True)
        r.accept(self.m.parse_snapshot(snapshot(10)))
        state=json.loads((self.out/'status.json').read_text())
        self.assertEqual(state['experiment'],'E02')
        self.assertTrue((self.out/'status.txt').read_text().startswith('E02 '))
        self.assertEqual(state['count'],10)


if __name__ == '__main__': unittest.main()
