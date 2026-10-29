from pathlib import Path
import importlib.util,xml.etree.ElementTree as ET,json
root=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline'
spec=importlib.util.spec_from_file_location('check',root/'scripts/check_integrated_hardware.py');mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
hwh=root/'build/h/e05_04/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/hw_handoff/facebox_system.hwh'
actual=mod.validate_hwh(hwh,None);assert not actual['errors'],actual['errors']
xml=ET.parse(hwh);port=xml.getroot().find(".//MODULE[@INSTANCE='cnn_core']//PORT[@NAME='aresetn']");port.set('SIGNAME','DISCONNECTED_RESET')
mut=Path(__file__).resolve().parent/'mutated_reset.hwh';xml.write(mut)
result=mod.validate_hwh(mut,None)
assert result['errors'],'RED: HWH checker silently accepted disconnected CNN reset'
print('CNN_RESET_MUTATION_REJECTED',result['errors'])
