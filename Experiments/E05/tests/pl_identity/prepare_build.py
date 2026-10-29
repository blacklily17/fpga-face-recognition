from pathlib import Path
root=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline'
s=(root/'rtl/axis_cnn_conv3x3.sv').read_text();prefix=s[s.index('module axis_cnn_conv3x3 #('):s.index('    // Serialize')]
prefix=prefix.replace('axis_cnn_conv3x3 #(', 'axis_cnn_conv3x3_bd #(').replace('output reg','output wire')
ports=['aclk','aresetn','s_axis_tdata','s_axis_tkeep','s_axis_tvalid','s_axis_tready','s_axis_tlast','m_axis_tdata','m_axis_tkeep','m_axis_tvalid','m_axis_tready','m_axis_tlast','protocol_error','busy']
(root/'rtl/axis_cnn_conv3x3_bd.v').write_text(prefix+'axis_cnn_conv3x3 core(\n'+',\n'.join('.'+x+'('+x+')' for x in ports)+');\nendmodule\n')
p=root/'vivado/build_overlay.tcl';s=p.read_text().replace('add_files -norecurse [file join $overlay_root rtl axis_cnn_conv3x3.sv]','add_files -norecurse [list [file join $overlay_root rtl axis_cnn_conv3x3.sv] [file join $overlay_root rtl axis_cnn_conv3x3_bd.v]]');p.write_text(s)
p=root/'vivado/add_cnn_conv_pipeline.tcl';s=p.read_text().replace('-reference axis_cnn_conv3x3 cnn_core','-reference axis_cnn_conv3x3_bd cnn_core');p.write_text(s)
p=root/'scripts/run_integrated_hardware.tcl';s=p.read_text().replace('maxThreads 4','maxThreads 2').replace('-jobs 4','-jobs 2');p.write_text(s)
p=root/'scripts/check_integrated_hardware.py';s=p.read_text().replace("== '13', 'Control interconnect has 13 masters'","== '15', 'Control interconnect has 15 masters'").replace("== '2', 'Separate HP1 interconnect has 2 inputs'","== '4', 'Separate HP1 interconnect has 4 inputs'")
s=s.replace("    clocks = {", "    for a, ap, b, bp in (('axi_ctrl_interconnect','M13_AXI','cnn_dma','S_AXI_LITE'), ('axi_ctrl_interconnect','M14_AXI','cnn_control','S_AXI'), ('cnn_dma','M_AXI_MM2S','match_mem','S02_AXI'), ('cnn_dma','M_AXI_S2MM','match_mem','S03_AXI'), ('cnn_dma','M_AXIS_MM2S','cnn_core','S_AXIS'), ('cnn_core','M_AXIS','cnn_dma','S_AXIS_S2MM')):\n        link(a,ap,b,bp,True)\n    clocks = {")
s=s.replace("    for inst, ports in clocks.items():", "    clocks.update({'cnn_dma':('s_axi_lite_aclk','m_axi_mm2s_aclk','m_axi_s2mm_aclk'),'cnn_core':('aclk',),'cnn_control':('s_axi_aclk',)})\n    for inst, ports in clocks.items():")
s=s.replace("    for inst, ports in resets.items():", "    resets.update({'cnn_dma':('axi_resetn',),'cnn_control':('s_axi_aresetn',),'cnn_reset':('Op2',)})\n    for inst, ports in resets.items():")
s=s.replace("'match_control': (0x41280000, 0x10000)}", "'match_control': (0x41280000, 0x10000), 'cnn_dma':(0x40420000,0x10000), 'cnn_control':(0x41270000,0x10000)}")
s=s.replace("        require(not any(lo <= reserved <= hi for reserved in (0x41270000, 0x40420000)),\n                'CNN reserved addresses unused by ' + node.get('INSTANCE'))", "        require(node.get('INSTANCE') in ('cnn_dma','cnn_control') or not any(lo <= reserved <= hi for reserved in (0x41270000, 0x40420000)), 'CNN addresses exclusively allocated: '+node.get('INSTANCE'))")
p.write_text(s)
