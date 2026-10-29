# Add after add_distance_pipeline.tcl.  Reuse its HP1 interconnect and reserve
# the addresses documented by the original integration plan.
if {[get_property CONFIG.NUM_MI $ctrl_ic] != 13} {
    error "CNN_CTRL_BASELINE_CHANGED: expected 13 masters after distance pipeline"
}
if {[get_property CONFIG.NUM_SI $match_mem] != 2} {
    error "CNN_HP1_BASELINE_CHANGED: expected two distance DMA memory masters"
}
set_property CONFIG.NUM_MI {15} $ctrl_ic
set_property CONFIG.NUM_SI {4} $match_mem
set cnn_dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 cnn_dma]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {32} CONFIG.c_s_axis_s2mm_tdata_width {32} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_sg_length_width {23} CONFIG.c_mm2s_burst_size {16} CONFIG.c_s2mm_burst_size {16}] $cnn_dma
set cnn_control [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 cnn_control]
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_IS_DUAL {1} CONFIG.C_GPIO2_WIDTH {2} CONFIG.C_ALL_INPUTS_2 {1}] $cnn_control
set cnn_core [create_bd_cell -type module -reference axis_cnn_conv3x3_bd cnn_core]
set cnn_reset [create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 cnn_reset]
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {and}] $cnn_reset
set cnn_status [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 cnn_status]
set_property -dict [list CONFIG.NUM_PORTS {2} CONFIG.IN0_WIDTH {1} CONFIG.IN1_WIDTH {1}] $cnn_status
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M13_AXI] [get_bd_intf_pins $cnn_dma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M14_AXI] [get_bd_intf_pins $cnn_control/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXI_MM2S] [get_bd_intf_pins $match_mem/S02_AXI]
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXI_S2MM] [get_bd_intf_pins $match_mem/S03_AXI]
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXIS_MM2S] [get_bd_intf_pins $cnn_core/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins $cnn_core/M_AXIS] [get_bd_intf_pins $cnn_dma/S_AXIS_S2MM]
connect_bd_net [get_bd_pins $cnn_control/gpio_io_o] [get_bd_pins $cnn_reset/Op1]
connect_bd_net $rst100n [get_bd_pins $cnn_reset/Op2]
connect_bd_net [get_bd_pins $cnn_reset/Res] [get_bd_pins $cnn_core/aresetn]
connect_bd_net [get_bd_pins $cnn_core/protocol_error] [get_bd_pins $cnn_status/In0]
connect_bd_net [get_bd_pins $cnn_core/busy] [get_bd_pins $cnn_status/In1]
connect_bd_net [get_bd_pins $cnn_status/dout] [get_bd_pins $cnn_control/gpio2_io_i]
foreach pin [list $ctrl_ic/M13_ACLK $ctrl_ic/M14_ACLK $cnn_control/s_axi_aclk $cnn_dma/s_axi_lite_aclk $cnn_dma/m_axi_mm2s_aclk $cnn_dma/m_axi_s2mm_aclk $cnn_core/aclk $match_mem/S02_ACLK $match_mem/S03_ACLK] {
    connect_bd_net $clk100 [get_bd_pins $pin]
}
foreach pin [list $ctrl_ic/M13_ARESETN $ctrl_ic/M14_ARESETN $cnn_control/s_axi_aresetn $cnn_dma/axi_resetn $match_mem/S02_ARESETN $match_mem/S03_ARESETN] {
    connect_bd_net $rst100n [get_bd_pins $pin]
}
create_bd_addr_seg -range 0x10000 -offset 0x40420000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $cnn_dma/S_AXI_LITE/Reg] SEG_CNN_DMA
create_bd_addr_seg -range 0x10000 -offset 0x41270000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $cnn_control/S_AXI/Reg] SEG_CNN_CONTROL
puts "CNN_CONV_PIPELINE_ADDED dma=0x40420000 control=0x41270000 clock=FCLK0/100MHz memory=HP1"
