# P2 PL pipeline, separate HP1; existing HP0/video and reset topology retained.
# overlay_extend.tcl already owns M09/M10. Reserve CNN 41270000/40420000.
if {[get_property CONFIG.NUM_MI $ctrl_ic] != 11} {
    error "INTEGRATED_CTRL_BASELINE_CHANGED: expected 11 masters after overlay"
}
update_compile_order -fileset sources_1
set_property CONFIG.PCW_USE_S_AXI_HP1 {1} $ps7
set_property CONFIG.NUM_MI {13} $ctrl_ic
set match_dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 match_dma]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {32} CONFIG.c_s_axis_s2mm_tdata_width {32} CONFIG.c_include_mm2s_dre {0} CONFIG.c_include_s2mm_dre {0} CONFIG.c_sg_length_width {23} CONFIG.c_mm2s_burst_size {16} CONFIG.c_s2mm_burst_size {16}] $match_dma
set match_control [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 match_control]
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_IS_DUAL {1} CONFIG.C_GPIO2_WIDTH {1} CONFIG.C_ALL_INPUTS_2 {1}] $match_control
set match_core [create_bd_cell -type module -reference axis_lbp_distance match_core]
set match_mem [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 match_mem]
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}] $match_mem
set match_reset [create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 match_reset]
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {and}] $match_reset
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M11_AXI] [get_bd_intf_pins $match_dma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M12_AXI] [get_bd_intf_pins $match_control/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $match_dma/M_AXI_MM2S] [get_bd_intf_pins $match_mem/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins $match_dma/M_AXI_S2MM] [get_bd_intf_pins $match_mem/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins $match_mem/M00_AXI] [get_bd_intf_pins $ps7/S_AXI_HP1]
connect_bd_intf_net [get_bd_intf_pins $match_dma/M_AXIS_MM2S] [get_bd_intf_pins $match_core/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins $match_core/M_AXIS] [get_bd_intf_pins $match_dma/S_AXIS_S2MM]
connect_bd_net [get_bd_pins $match_control/gpio_io_o] [get_bd_pins $match_reset/Op1]
connect_bd_net $rst100n [get_bd_pins $match_reset/Op2]
connect_bd_net [get_bd_pins $match_reset/Res] [get_bd_pins $match_core/aresetn]
connect_bd_net [get_bd_pins $match_core/protocol_error] [get_bd_pins $match_control/gpio2_io_i]
foreach pin [list $ctrl_ic/M11_ACLK $ctrl_ic/M12_ACLK $match_control/s_axi_aclk $match_dma/s_axi_lite_aclk $match_dma/m_axi_mm2s_aclk $match_dma/m_axi_s2mm_aclk $match_core/aclk $match_mem/ACLK $match_mem/S00_ACLK $match_mem/S01_ACLK $match_mem/M00_ACLK $ps7/S_AXI_HP1_ACLK] {
    connect_bd_net $clk100 [get_bd_pins $pin]
}
foreach pin [list $ctrl_ic/M11_ARESETN $ctrl_ic/M12_ARESETN $match_control/s_axi_aresetn $match_dma/axi_resetn $match_mem/ARESETN $match_mem/S00_ARESETN $match_mem/S01_ARESETN $match_mem/M00_ARESETN] {
    connect_bd_net $rst100n [get_bd_pins $pin]
}
create_bd_addr_seg -range 0x10000 -offset 0x40410000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $match_dma/S_AXI_LITE/Reg] SEG_MATCH_DMA
create_bd_addr_seg -range 0x10000 -offset 0x41280000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $match_control/S_AXI/Reg] SEG_MATCH_CONTROL
puts "INTEGRATED_DISTANCE_ADDED ctrl_masters=13 match_dma=0x40410000 match_control=0x41280000 clock=FCLK0/100MHz memory=HP1"
