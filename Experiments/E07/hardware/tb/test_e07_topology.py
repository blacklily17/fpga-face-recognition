"""Actual HWH mutation tests: reject broken E07 reset/status/HP3 DDR wiring."""
import copy
import importlib.util
import json
from pathlib import Path
import unittest
import xml.etree.ElementTree as ET
ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('hardware_gate', ROOT.parent/'scripts/check_c3_hardware.py')
gate = importlib.util.module_from_spec(spec); spec.loader.exec_module(gate)
WORK = ROOT.parents[2]/'_c3_build/e07h2'
HWH = WORK/'vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/hw_handoff/facebox_system.hwh'
TOPOLOGY = json.loads((WORK/'reports/facebox/c3_bd_topology.json').read_text())
class E07Topology(unittest.TestCase):
 def test_real_hardware_passes(self):
  self.assertFalse(gate.validate(HWH.read_bytes(), TOPOLOGY)['errors'])
 def test_reset_status_and_ddr_mutations_are_rejected(self):
  mutations = [
   ('idcnn_reset','PORTS/PORT[@NAME="Res"]','SIGNAME','broken_reset'),
   ('idcnn_status','PORTS/PORT[@NAME="In0"]','SIGNAME','broken_error'),
   ('idcnn_status','PORTS/PORT[@NAME="In1"]','SIGNAME','broken_busy'),
   ('idcnn_dma','PARAMETERS/PARAMETER[@NAME="C_INCLUDE_MM2S_DRE"]','VALUE','0'),
   ('idcnn_dma','.//MEMRANGE[@MASTERBUSINTERFACE="M_AXI_S2MM"]','HIGHVALUE','0x1FFFFFFF')]
  for instance, selector, attr, value in mutations:
   with self.subTest(instance=instance, selector=selector):
    root=ET.fromstring(HWH.read_bytes()); module=root.find('.//MODULE[@INSTANCE="'+instance+'"]')
    node=module.find(selector); self.assertIsNotNone(node); node.set(attr,value)
    self.assertTrue(gate.validate(ET.tostring(root),copy.deepcopy(TOPOLOGY))['errors'])
if __name__=='__main__':unittest.main()
