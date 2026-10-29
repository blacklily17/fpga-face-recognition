# E07: retain the E03 detector CNN on HP2 and add a distinct identity-CNN
# convolution engine on HP3. The two accelerators never share MMIO or DMA.
if {[get_property CONFIG.NUM_MI $ctrl_ic] != 15} {error E07_EXPECTED_E03_15_MASTERS}
foreach name {idcnn_dma idcnn_control idcnn_core idcnn_reset idcnn_status idcnn_mem_interconnect} {
    if {[llength [get_bd_cells -quiet $name]]} {error "E07_CELL_ALREADY_EXISTS $name"}
}
if {[llength [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins -quiet $ps7/S_AXI_HP3]]]} {
    error E07_HP3_ALREADY_OWNED
}
set_property CONFIG.PCW_USE_S_AXI_HP3 {1} $ps7
set idcnn_file [file join $overlay_root rtl cnn axis_identity_cnn_conv3x3.sv]
if {![file isfile $idcnn_file]} {error "E07_IDCNN_SOURCE_MISSING $idcnn_file"}
add_files -norecurse $idcnn_file
set_property file_type SystemVerilog [get_files axis_identity_cnn_conv3x3.sv]
update_compile_order -fileset sources_1

set_property CONFIG.NUM_MI {17} $ctrl_ic
set idcnn_dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 idcnn_dma]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {32} CONFIG.c_s_axis_s2mm_tdata_width {32} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_sg_length_width {23} CONFIG.c_mm2s_burst_size {16} CONFIG.c_s2mm_burst_size {16}] $idcnn_dma
set idcnn_control [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 idcnn_control]
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_IS_DUAL {1} CONFIG.C_GPIO2_WIDTH {2} CONFIG.C_ALL_INPUTS_2 {1}] $idcnn_control
set idcnn_core [create_bd_cell -type module -reference identity_cnn_bd idcnn_core]
set idcnn_reset [create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 idcnn_reset]
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {and}] $idcnn_reset
set idcnn_status [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 idcnn_status]
set_property -dict [list CONFIG.NUM_PORTS {2} CONFIG.IN0_WIDTH {1} CONFIG.IN1_WIDTH {1}] $idcnn_status
set idcnn_mem [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 idcnn_mem_interconnect]
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}] $idcnn_mem

connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M15_AXI] [get_bd_intf_pins $idcnn_dma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M16_AXI] [get_bd_intf_pins $idcnn_control/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $idcnn_dma/M_AXI_MM2S] [get_bd_intf_pins $idcnn_mem/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins $idcnn_dma/M_AXI_S2MM] [get_bd_intf_pins $idcnn_mem/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins $idcnn_mem/M00_AXI] [get_bd_intf_pins $ps7/S_AXI_HP3]
connect_bd_intf_net [get_bd_intf_pins $idcnn_dma/M_AXIS_MM2S] [get_bd_intf_pins $idcnn_core/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins $idcnn_core/M_AXIS] [get_bd_intf_pins $idcnn_dma/S_AXIS_S2MM]
connect_bd_net [get_bd_pins $idcnn_control/gpio_io_o] [get_bd_pins $idcnn_reset/Op1]
connect_bd_net $rst100n [get_bd_pins $idcnn_reset/Op2]
connect_bd_net [get_bd_pins $idcnn_reset/Res] [get_bd_pins $idcnn_core/aresetn]
connect_bd_net [get_bd_pins $idcnn_core/protocol_error] [get_bd_pins $idcnn_status/In0]
connect_bd_net [get_bd_pins $idcnn_core/busy] [get_bd_pins $idcnn_status/In1]
connect_bd_net [get_bd_pins $idcnn_status/dout] [get_bd_pins $idcnn_control/gpio2_io_i]
foreach pin [list $ctrl_ic/M15_ACLK $ctrl_ic/M16_ACLK $idcnn_control/s_axi_aclk $idcnn_dma/s_axi_lite_aclk $idcnn_dma/m_axi_mm2s_aclk $idcnn_dma/m_axi_s2mm_aclk $idcnn_core/aclk $idcnn_mem/ACLK $idcnn_mem/S00_ACLK $idcnn_mem/S01_ACLK $idcnn_mem/M00_ACLK $ps7/S_AXI_HP3_ACLK] {
    connect_bd_net $clk100 [get_bd_pins $pin]
}
foreach pin [list $ctrl_ic/M15_ARESETN $ctrl_ic/M16_ARESETN $idcnn_control/s_axi_aresetn $idcnn_dma/axi_resetn $idcnn_mem/ARESETN $idcnn_mem/S00_ARESETN $idcnn_mem/S01_ARESETN $idcnn_mem/M00_ARESETN] {
    connect_bd_net $rst100n [get_bd_pins $pin]
}
create_bd_addr_seg -range 0x10000 -offset 0x40430000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $idcnn_dma/S_AXI_LITE/Reg] SEG_IDCNN_DMA
create_bd_addr_seg -range 0x10000 -offset 0x41290000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $idcnn_control/S_AXI/Reg] SEG_IDCNN_CONTROL
puts "E07_IDENTITY_CNN_ADDED dma=0x40430000 control=0x41290000 clock=FCLK0/100MHz memory=HP3 ctrl_masters=17"

