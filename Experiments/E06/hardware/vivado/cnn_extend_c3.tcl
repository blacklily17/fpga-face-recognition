# C3 only: preserve C2 HP1/100MHz match; CNN owns HP2/50MHz.
if {[get_property CONFIG.NUM_MI $ctrl_ic] != 13} {error C3_EXPECTED_C2_13_MASTERS}
foreach name {cnn_regs_0 cnn_dma cnn_mem_interconnect cnn_ctrl_cc cnn_dma_ctrl_cc reset_cnn} {
    if {[llength [get_bd_cells -quiet $name]]} {error "C3_CELL_ALREADY_EXISTS $name"}
}
if {[llength [get_bd_intf_nets -quiet -of_objects [get_bd_intf_pins -quiet $ps7/S_AXI_HP2]]]} {
    error C3_HP2_ALREADY_OWNED
}
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP2 {1} CONFIG.PCW_FPGA_FCLK1_ENABLE {1} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50}] $ps7
set cnn_clk [get_bd_pins $ps7/FCLK_CLK1]
set cnn_rst [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_cnn]
set_property CONFIG.C_EXT_RESET_HIGH {0} $cnn_rst
connect_bd_net $cnn_clk [get_bd_pins $cnn_rst/slowest_sync_clk]
connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $cnn_rst/ext_reset_in]
connect_bd_net [get_bd_pins $const1/dout] [get_bd_pins $cnn_rst/dcm_locked]
set cnn_resetn [get_bd_pins $cnn_rst/peripheral_aresetn]

foreach rel {rtl/cnn/conv3x3_int8.sv rtl/cnn/maxpool2x2.sv rtl/cnn/cnn_layer_axis.sv rtl/bringup/cnn_regs_bd.v} {
    set cnn_file [file join $overlay_root $rel]
    if {![file isfile $cnn_file]} {error "C3_CNN_SOURCE_MISSING $cnn_file"}
    add_files -norecurse $cnn_file
}
set_property file_type SystemVerilog [get_files {conv3x3_int8.sv maxpool2x2.sv cnn_layer_axis.sv}]
update_compile_order -fileset sources_1
set cnn_regs [create_bd_cell -type module -reference cnn_regs_bd cnn_regs_0]
set cnn_dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 cnn_dma]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {1} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {32} CONFIG.c_s_axis_s2mm_tdata_width {32} CONFIG.c_include_mm2s_dre {0} CONFIG.c_include_s2mm_dre {0} CONFIG.c_sg_length_width {16} CONFIG.c_mm2s_burst_size {16} CONFIG.c_s2mm_burst_size {16}] $cnn_dma
set cnn_mem [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cnn_mem_interconnect]
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}] $cnn_mem
set_property CONFIG.NUM_MI {15} $ctrl_ic

# Explicit AXI-Lite clock conversion rather than a multi-bit 2FF crossing.
foreach {port cell target} {M13 cnn_ctrl_cc cnn_regs_0/s_axi M14 cnn_dma_ctrl_cc cnn_dma/S_AXI_LITE} {
    set cc [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 $cell]
    set_property -dict [list CONFIG.PROTOCOL {AXI4LITE} CONFIG.DATA_WIDTH {32} CONFIG.ADDR_WIDTH {32} CONFIG.IS_ACLK_ASYNC {1}] $cc
    connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/${port}_AXI] [get_bd_intf_pins $cc/S_AXI]
    connect_bd_intf_net [get_bd_intf_pins $cc/M_AXI] [get_bd_intf_pins $target]
    foreach pin [list $ctrl_ic/${port}_ACLK $cc/s_axi_aclk] {connect_bd_net $clk100 [get_bd_pins $pin]}
    foreach pin [list $ctrl_ic/${port}_ARESETN $cc/s_axi_aresetn] {connect_bd_net $rst100n [get_bd_pins $pin]}
    connect_bd_net $cnn_clk [get_bd_pins $cc/m_axi_aclk]
    connect_bd_net $cnn_resetn [get_bd_pins $cc/m_axi_aresetn]
}
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXIS_MM2S] [get_bd_intf_pins $cnn_regs/s_axis]
connect_bd_intf_net [get_bd_intf_pins $cnn_regs/m_axis] [get_bd_intf_pins $cnn_dma/S_AXIS_S2MM]
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXI_MM2S] [get_bd_intf_pins $cnn_mem/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins $cnn_dma/M_AXI_S2MM] [get_bd_intf_pins $cnn_mem/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins $cnn_mem/M00_AXI] [get_bd_intf_pins $ps7/S_AXI_HP2]
foreach pin [list $cnn_regs/aclk $cnn_dma/s_axi_lite_aclk $cnn_dma/m_axi_mm2s_aclk $cnn_dma/m_axi_s2mm_aclk $cnn_mem/ACLK $cnn_mem/S00_ACLK $cnn_mem/S01_ACLK $cnn_mem/M00_ACLK $ps7/S_AXI_HP2_ACLK] {
    connect_bd_net $cnn_clk [get_bd_pins $pin]
}
foreach pin [list $cnn_regs/aresetn $cnn_dma/axi_resetn $cnn_mem/ARESETN $cnn_mem/S00_ARESETN $cnn_mem/S01_ARESETN $cnn_mem/M00_ARESETN] {
    connect_bd_net $cnn_resetn [get_bd_pins $pin]
}
create_bd_addr_seg -range 0x10000 -offset 0x41270000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $cnn_regs/s_axi/reg0] SEG_CNN_CONTROL
create_bd_addr_seg -range 0x10000 -offset 0x40420000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $cnn_dma/S_AXI_LITE/Reg] SEG_CNN_DMA
puts "C3_CNN_ADDED ctrl_masters=15 CNN_HP2_50MHz MATCH_HP1_100MHz"
