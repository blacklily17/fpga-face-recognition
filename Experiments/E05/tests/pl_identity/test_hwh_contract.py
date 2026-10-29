from pathlib import Path
import importlib.util,xml.etree.ElementTree as ET,json
root=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline'
spec=importlib.util.spec_from_file_location('check',root/'scripts/check_integrated_hardware.py');mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
hwh=root/'build/h/e05_04/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/hw_handoff/facebox_system.hwh'
assert not mod.validate_hwh(hwh,None)['errors']
faults=[('reset','cnn_core','PORT','aresetn','SIGNAME','disconnected'),('status','cnn_status','PORT','In1','SIGNAME','disconnected'),('clock','cnn_dma','PORT','m_axi_mm2s_aclk','SIGNAME','wrong_clock'),('reset_port','match_mem','PORT','S03_ARESETN','SIGNAME','wrong_reset'),('DRE','cnn_dma','PARAMETER','C_INCLUDE_MM2S_DRE','VALUE','0'),('SG','cnn_dma','PARAMETER','C_INCLUDE_SG','VALUE','1'),('masters','axi_ctrl_interconnect','PARAMETER','NUM_MI','VALUE','13'),('memory_inputs','match_mem','PARAMETER','NUM_SI','VALUE','2')]
results=[]
for label,inst,element,name,key,value in faults:
 xml=ET.parse(hwh);node=xml.getroot().find(".//MODULE[@INSTANCE='"+inst+"']//"+element+"[@NAME='"+name+"']");assert node is not None,label
 node.set(key,value);mut=Path(__file__).resolve().parent/'mutated_hwh_test.hwh';xml.write(mut)
 errors=mod.validate_hwh(mut,None)['errors'];assert errors,label+' silently accepted'
 results.append({'fault':label,'rejection':errors})
xml=ET.parse(hwh);node=xml.getroot().find(".//MODULE[@INSTANCE='cnn_dma']//MEMRANGE[@MASTERBUSINTERFACE='M_AXI_S2MM']");node.set('HIGHVALUE','0x0fffffff');xml.write(mut)
errors=mod.validate_hwh(mut,None)['errors'];assert errors,'truncated DDR range accepted';results.append({'fault':'DDR_range','rejection':errors})
(Path(__file__).resolve().parent/'hwh_mutation_result.json').write_text(json.dumps({'status':'E05_HWH_MUTATION_PASS','faults_rejected':results},indent=2))
print('E05_HWH_MUTATION_PASS actual_passed=1 faults_rejected='+str(len(results)))
