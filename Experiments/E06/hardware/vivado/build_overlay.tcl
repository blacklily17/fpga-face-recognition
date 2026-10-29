set script_dir [file dirname [file normalize [info script]]]
set overlay_root [file normalize [file join $script_dir ..]]
set stage [lindex $argv 0]
if {$stage ni {bd bit}} {error "Stage must be bd or bit"}
set build_dir [file normalize [lindex $argv 1]]
if {[info exists ::integrated_hardware_entry] && [info exists ::c3_integrated_build_root]} {
    if {[file dirname $build_dir] ne $::c3_integrated_build_root} {error "Build outside selected C3 root"}
} elseif {![string match "$overlay_root/build/*" $build_dir]} {error "Build must stay within derived directory"}
set root_dir [file join $script_dir dependencies]
set ::stage6b1_mode 1
cd $root_dir
set stage5b_mode [expr {[info exists ::stage5b_mode] && $::stage5b_mode}]
set stage6b1_mode [expr {[info exists ::stage6b1_mode] && $::stage6b1_mode}]
if {$stage6b1_mode} {
    set project_name facebox
    set bd_name facebox_system
    set stage_label FACEBOX_DEV
} elseif {$stage5b_mode} {
    set project_name board_wp2_wp3_recovery_m17
    set bd_name stage5b_system
    set stage_label STAGE5B
} else {
    set project_name board_wp2_wp3_vdma_m17
    set bd_name stage5_system
    set stage_label STAGE5A
}
set project_dir [file join $build_dir vivado $project_name]
set report_dir [file join $build_dir reports $project_name]
set export_dir [file join $build_dir export $project_name]

file mkdir $project_dir
file mkdir $report_dir
file mkdir $export_dir

create_project $project_name $project_dir -part xc7z020clg484-2 -force
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

add_files -norecurse [list \
    [file join $root_dir WP1WP2 WP1_2 rtl camera dvp_rx.v] \
    [file join $root_dir WP1WP2 WP1_2 rtl camera rgb565_unpack_gray.v] \
    [file join $root_dir WP1WP2 WP1_2 rtl camera frame_stats.v] \
    [file join $root_dir WP1WP2 WP1_2 rtl top wp2_camera_top.v] \
    [file join $root_dir rtl common toggle_event_cdc.sv] \
    [file join $root_dir rtl image axis_frame_resync.sv] \
    [file join $root_dir rtl image camera_dual_axis_guard.sv] \
    [file join $root_dir rtl image gray_downscale_2x.sv] \
    [file join $root_dir rtl image triple_buffer_commit_manager.sv] \
    [file join $root_dir rtl image wp3_dual_fifo_frame_bridge.sv] \
    [file join $root_dir rtl image wp3_frame_safe_pipeline.sv] \
    [file join $root_dir rtl display rgb_lcd_timing.sv] \
    [file join $root_dir rtl bringup rgb_lcd_timing_bd.v] \
    [file join $root_dir rtl bringup wp2_wp3_stage5_axis_source.v]]
if {$stage6b1_mode} {
    add_files -norecurse [list \
        [file join $root_dir WP1WP2 WP1_2 rtl camera sccb_master.v] \
        [file join $root_dir WP1WP2 WP1_2 rtl camera ov5640_init.v] \
        [file join $root_dir rtl bringup wp1_ov5640_board_if.v] \
        [file join $root_dir rtl bringup real_camera_wp2_wp3_axis_source.sv] \
        [file join $root_dir WP1WP2 WP1_2 rtl data ov5640_800x480_rgb565_30fps.mem]]
}
set_property file_type SystemVerilog [get_files *.sv]
if {$stage6b1_mode} {
    set_property file_type Verilog [get_files real_camera_wp2_wp3_axis_source.sv]
}

add_files -norecurse [list \
    [file join $root_dir vivado ip axis_fifo_rgb_cdc axis_fifo_rgb_cdc.xci] \
    [file join $root_dir vivado ip axis_fifo_gray_cdc axis_fifo_gray_cdc.xci]]
set_property generate_synth_checkpoint 0 \
    [get_files {axis_fifo_rgb_cdc.xci axis_fifo_gray_cdc.xci}]

add_files -fileset constrs_1 -norecurse \
    [file join $root_dir vivado constraints ac880_ps_ddr_vdma_lcd.xdc]
if {$stage6b1_mode} {
    add_files -fileset constrs_1 -norecurse \
        [file join $root_dir vivado constraints ac880_ov5640_dvp_stage6b.xdc]
}

add_files -norecurse [list [file join $root_dir rtl image window3x3.sv] [file join $root_dir rtl image lbp_core.sv] [file join $root_dir rtl image lbp_histogram.sv] [file join $root_dir rtl image wp4_lbp_pipeline.sv] [file join $root_dir rtl image roi_resize_128.sv] [file join $root_dir rtl image lbp_uniform_map.mem] [file join $root_dir rtl bringup wp4_board_bridge_m13.sv] [file join $root_dir rtl bringup wp4_board_bridge_m13_bd.v]]
set_property file_type SystemVerilog [get_files {window3x3.sv lbp_core.sv lbp_histogram.sv wp4_lbp_pipeline.sv roi_resize_128.sv wp4_board_bridge_m13.sv}]
add_files [list [file join $root_dir live_status_cdc.sv] [file join $root_dir live_lcd_overlay.sv] [file join $root_dir live_lcd_bd.v] [file join $root_dir capture_key_sync.sv]]
set_property file_type Verilog [get_files capture_key_sync.sv]
add_files -fileset constrs_1 [file join $root_dir capture_keys.xdc]
add_files -norecurse [glob [file join $root_dir tx2 *.v]]
add_files -fileset constrs_1 -norecurse [list [file join $root_dir tx2 tx2_pins.xdc] [file join $script_dir touch_pins.xdc]]

foreach path [list "$overlay_root/rtl/control/overlay_regs.sv" "$overlay_root/rtl/control/overlay_ack_tracker.sv" "$overlay_root/rtl/control/bbox_mailbox.sv" "$overlay_root/rtl/display/hdmi_bbox_overlay.sv" "$overlay_root/rtl/capture/gray_snapshot_capture.sv" "$overlay_root/rtl/capture/gray_snapshot_bram.sv" "$overlay_root/rtl/capture/source_frame_verdict_cdc.sv"] {add_files -norecurse $path}
add_files -norecurse [list \
    [file join $overlay_root rtl distance_div_step.v] \
    [file join $overlay_root rtl distance_div14.v] \
    [file join $overlay_root rtl lbp_distance_pipeline.v] \
    [file join $overlay_root rtl axis_lbp_distance.v]]
add_files -norecurse [glob "$overlay_root/rtl/bringup/*_bd.v"]
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_fifo_gray_tag_cdc
set configs {}
foreach prop [list_property [get_ips axis_fifo_gray_cdc]] {
    if {[string match "CONFIG.*" $prop] && $prop ne "CONFIG.Component_Name"} {lappend configs $prop [get_property $prop [get_ips axis_fifo_gray_cdc]]}
}
set_property -dict $configs [get_ips axis_fifo_gray_tag_cdc]
set_property CONFIG.TUSER_WIDTH 33 [get_ips axis_fifo_gray_tag_cdc]
set_property generate_synth_checkpoint 0 [get_files axis_fifo_gray_tag_cdc.xci]

create_bd_design $bd_name

set ps7 [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0]
set_property -dict [list \
    CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
    CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
    CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
    CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
    CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
    CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
    CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
    CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
    CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
    CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
    CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
    CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
    CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
    CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
    CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
    CONFIG.PCW_GPIO_EMIO_GPIO_IO {2}] $ps7
make_bd_intf_pins_external [get_bd_intf_pins $ps7/GPIO_0]
set_property name touch_gpio [get_bd_intf_ports GPIO_0_0]

set vdma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0]
set_property -dict [list \
    CONFIG.c_include_mm2s {1} \
    CONFIG.c_include_s2mm {1} \
    CONFIG.c_include_sg {0} \
    CONFIG.c_num_fstores {3} \
    CONFIG.c_m_axi_mm2s_data_width {64} \
    CONFIG.c_m_axis_mm2s_tdata_width {16} \
    CONFIG.c_mm2s_linebuffer_depth {1024} \
    CONFIG.c_mm2s_max_burst_length {16} \
    CONFIG.c_include_mm2s_dre {0} \
    CONFIG.c_enable_mm2s_frm_counter {0} \
    CONFIG.c_enable_mm2s_delay_counter {0} \
    CONFIG.c_m_axi_s2mm_data_width {64} \
    CONFIG.c_s2mm_linebuffer_depth {1024} \
    CONFIG.c_s2mm_max_burst_length {16} \
    CONFIG.c_include_s2mm_dre {0} \
    CONFIG.c_enable_s2mm_frm_counter {1} \
    CONFIG.c_enable_s2mm_delay_counter {0}] $vdma

set gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 camera_start_gpio]
if {$stage6b1_mode} {
    set_property -dict [list \
        CONFIG.C_GPIO_WIDTH {32} \
        CONFIG.C_ALL_INPUTS {1} \
        CONFIG.C_IS_DUAL {1} \
        CONFIG.C_GPIO2_WIDTH {1} \
        CONFIG.C_ALL_OUTPUTS_2 {1}] $gpio
} elseif {$stage5b_mode} {
    set_property -dict [list \
        CONFIG.C_GPIO_WIDTH {2} \
        CONFIG.C_ALL_OUTPUTS {1} \
        CONFIG.C_IS_DUAL {1} \
        CONFIG.C_GPIO2_WIDTH {8} \
        CONFIG.C_ALL_INPUTS_2 {1}] $gpio
} else {
    set_property -dict [list \
        CONFIG.C_GPIO_WIDTH {1} \
        CONFIG.C_ALL_OUTPUTS {1} \
        CONFIG.C_IS_DUAL {0}] $gpio
}

set ctrl_ic [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ctrl_interconnect]
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {9}] $ctrl_ic
set keys [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 capture_keys]
set_property -dict [list CONFIG.C_GPIO_WIDTH {2} CONFIG.C_ALL_INPUTS {1} CONFIG.C_IS_DUAL {0}] $keys
set keys_sync [create_bd_cell -type module -reference capture_key_sync capture_key_sync_0]
set key_port [create_bd_port -dir I -from 1 -to 0 key_n]
connect_bd_net $key_port [get_bd_pins $keys_sync/key_n]
connect_bd_net [get_bd_pins $keys_sync/key_sync_n] [get_bd_pins $keys/gpio_io_i]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M05_AXI] [get_bd_intf_pins $keys/S_AXI]
set live_gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 live_status_gpio]
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_IS_DUAL {1} CONFIG.C_GPIO2_WIDTH {32} CONFIG.C_ALL_INPUTS_2 {1}] $live_gpio
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M06_AXI] [get_bd_intf_pins $live_gpio/S_AXI]
set dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0]
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {0} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {8} CONFIG.c_include_mm2s_dre {1} CONFIG.c_sg_length_width {23} CONFIG.c_mm2s_burst_size {16}] $dma
set control_gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 wp4_control_gpio]
set_property -dict [list CONFIG.C_GPIO_WIDTH {30} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_IS_DUAL {1} CONFIG.C_GPIO2_WIDTH {32} CONFIG.C_ALL_INPUTS_2 {1}] $control_gpio
set flag_gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 wp4_flag_gpio]
set_property -dict [list CONFIG.C_GPIO_WIDTH {6} CONFIG.C_ALL_INPUTS {1} CONFIG.C_IS_DUAL {0}] $flag_gpio
set bridge [create_bd_cell -type module -reference wp4_board_bridge_m13_bd wp4_board_bridge_0]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M02_AXI] [get_bd_intf_pins $dma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M03_AXI] [get_bd_intf_pins $control_gpio/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M04_AXI] [get_bd_intf_pins $flag_gpio/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $dma/M_AXIS_MM2S] [get_bd_intf_pins $bridge/dma]
connect_bd_net [get_bd_pins $control_gpio/gpio_io_o] [get_bd_pins $bridge/control]
connect_bd_net [get_bd_pins $control_gpio/gpio2_io_i] [get_bd_pins $bridge/data_status]
connect_bd_net [get_bd_pins $flag_gpio/gpio_io_i] [get_bd_pins $bridge/flag_status]
set mem_ic [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect]
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.NUM_MI {1}] $mem_ic
connect_bd_intf_net [get_bd_intf_pins $dma/M_AXI_MM2S] [get_bd_intf_pins $mem_ic/S02_AXI]

set clk_wiz [create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 video_clk_wiz]
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {100.000} \
    CONFIG.NUM_OUT_CLKS {2} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.333} \
    CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
    CONFIG.CLKOUT1_DRIVES {BUFG} \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {33.333} \
    CONFIG.CLKOUT2_REQUESTED_PHASE {90.000} \
    CONFIG.CLKOUT2_DRIVES {BUFG} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_RESET {false}] $clk_wiz

set rst100 [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_100m]
set rstlcd [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_lcd]
if {!$stage6b1_mode} {
    set rstcam [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_cam]
}
set const1 [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_1]
set_property CONFIG.CONST_VAL {1} $const1
set const0 [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_0]
set_property CONFIG.CONST_VAL {0} $const0

if {$stage6b1_mode} {
    set source [create_bd_cell -type module -reference real_camera_wp2_wp3_axis_source real_camera_source_0]
    set camera_clk_wiz [create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 camera_clk_wiz]
    set_property -dict [list \
        CONFIG.PRIM_IN_FREQ {100.000} \
        CONFIG.NUM_OUT_CLKS {2} \
        CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
        CONFIG.CLKOUT1_DRIVES {BUFG} \
        CONFIG.CLKOUT2_USED {true} \
        CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {24.000} \
        CONFIG.CLKOUT2_DRIVES {BUFG} \
        CONFIG.USE_LOCKED {true} \
        CONFIG.USE_RESET {false}] $camera_clk_wiz
    set rstcamcfg [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_camera_config]
} else {
    set source [create_bd_cell -type module -reference wp2_wp3_stage5_axis_source wp2_wp3_source_0]
}
set m17 [create_bd_cell -type module -reference rgb_lcd_timing_bd rgb_lcd_timing_0]
set zero32 [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 zero32]
set_property -dict [list CONFIG.CONST_WIDTH {32} CONFIG.CONST_VAL {0}] $zero32
connect_bd_net [get_bd_pins $zero32/dout] [get_bd_pins $live_gpio/gpio2_io_i]

set ui_vdma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 ui_vdma]
set_property -dict [list CONFIG.c_include_mm2s {1} CONFIG.c_include_s2mm {0} CONFIG.c_include_sg {0} CONFIG.c_num_fstores {2} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {16} CONFIG.c_mm2s_linebuffer_depth {1024} CONFIG.c_mm2s_max_burst_length {16} CONFIG.c_include_mm2s_dre {0}] $ui_vdma
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M07_AXI] [get_bd_intf_pins $ui_vdma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ui_vdma/M_AXI_MM2S] [get_bd_intf_pins $mem_ic/S03_AXI]
connect_bd_intf_net [get_bd_intf_pins $ui_vdma/M_AXIS_MM2S] [get_bd_intf_pins $m17/s]

set hdmi_clk_wiz [create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 hdmi_video_clk]
set_property -dict [list CONFIG.PRIM_IN_FREQ {100.000} CONFIG.NUM_OUT_CLKS {2} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.250} CONFIG.CLKOUT1_DRIVES {BUFG} CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {371.250} CONFIG.CLKOUT2_DRIVES {BUFG} CONFIG.USE_LOCKED {true} CONFIG.USE_RESET {false}] $hdmi_clk_wiz
set hdmi_rst [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_hdmi]
set hdmi [create_bd_cell -type module -reference tx2_axis_sink tx2_axis_sink_0]
set hdmi_diag [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 hdmi_diag]
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_ALL_INPUTS {1} CONFIG.C_IS_DUAL {0}] $hdmi_diag
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M08_AXI] [get_bd_intf_pins $hdmi_diag/S_AXI]
connect_bd_net [get_bd_pins $hdmi/status] [get_bd_pins $hdmi_diag/gpio_io_i]
foreach pname {tmds_data_p tmds_data_n tmds_clk_p tmds_clk_n} {
    make_bd_pins_external [get_bd_pins $hdmi/$pname]
    set_property name $pname [get_bd_ports ${pname}_0]
}
if {$stage5b_mode && !$stage6b1_mode} {
    set control_enable [create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 control_enable]
    set_property -dict [list CONFIG.DIN_WIDTH {2} CONFIG.DIN_FROM {0} CONFIG.DIN_TO {0}] $control_enable
    set control_ack [create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 control_ack]
    set_property -dict [list CONFIG.DIN_WIDTH {2} CONFIG.DIN_FROM {1} CONFIG.DIN_TO {1}] $control_ack
}

make_bd_intf_pins_external [get_bd_intf_pins $ps7/DDR]
set_property name DDR [get_bd_intf_ports DDR_0]
make_bd_intf_pins_external [get_bd_intf_pins $ps7/FIXED_IO]
set_property name FIXED_IO [get_bd_intf_ports FIXED_IO_0]

connect_bd_intf_net [get_bd_intf_pins $ps7/M_AXI_GP0] [get_bd_intf_pins $ctrl_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M00_AXI] [get_bd_intf_pins $vdma/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M01_AXI] [get_bd_intf_pins $gpio/S_AXI]
connect_bd_intf_net [get_bd_intf_pins $vdma/M_AXI_MM2S] [get_bd_intf_pins $mem_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins $vdma/M_AXI_S2MM] [get_bd_intf_pins $mem_ic/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins $mem_ic/M00_AXI] [get_bd_intf_pins $ps7/S_AXI_HP0]
connect_bd_intf_net [get_bd_intf_pins $source/m_axis] [get_bd_intf_pins $vdma/S_AXIS_S2MM]
connect_bd_intf_net [get_bd_intf_pins $vdma/M_AXIS_MM2S] [get_bd_intf_pins $hdmi/s]

set clk100 [get_bd_pins $ps7/FCLK_CLK0]
set clk_lcd [get_bd_pins $clk_wiz/clk_out1]
if {!$stage6b1_mode} {
    set clk_cam [get_bd_pins $clk_wiz/clk_out2]
}

foreach pin [list \
    $ps7/M_AXI_GP0_ACLK $ps7/S_AXI_HP0_ACLK \
    $ctrl_ic/ACLK $ctrl_ic/S00_ACLK $ctrl_ic/M00_ACLK $ctrl_ic/M01_ACLK $ctrl_ic/M02_ACLK $ctrl_ic/M03_ACLK $ctrl_ic/M04_ACLK $ctrl_ic/M05_ACLK $ctrl_ic/M06_ACLK $keys/s_axi_aclk $keys_sync/clk $live_gpio/s_axi_aclk $ctrl_ic/M07_ACLK $ui_vdma/s_axi_lite_aclk $ui_vdma/m_axi_mm2s_aclk $hdmi_clk_wiz/clk_in1 $dma/s_axi_lite_aclk $dma/m_axi_mm2s_aclk $control_gpio/s_axi_aclk $flag_gpio/s_axi_aclk $bridge/aclk \
    $mem_ic/ACLK $mem_ic/S00_ACLK $mem_ic/S01_ACLK $mem_ic/S02_ACLK $mem_ic/S03_ACLK $mem_ic/M00_ACLK \
    $vdma/s_axi_lite_aclk $vdma/m_axi_mm2s_aclk $vdma/m_axi_s2mm_aclk \
    $gpio/s_axi_aclk $clk_wiz/clk_in1 $rst100/slowest_sync_clk] {
    connect_bd_net $clk100 [get_bd_pins $pin]
}
foreach pin [list \
    $ui_vdma/m_axis_mm2s_aclk $m17/lcd_pclk $rstlcd/slowest_sync_clk] {
    connect_bd_net $clk_lcd [get_bd_pins $pin]
}
set clk_hdmi [get_bd_pins $hdmi_clk_wiz/clk_out1]
foreach pin [list $vdma/m_axis_mm2s_aclk $hdmi/pixel_clk $hdmi_rst/slowest_sync_clk $hdmi_diag/s_axi_aclk $ctrl_ic/M08_ACLK] {
    connect_bd_net $clk_hdmi [get_bd_pins $pin]
}
connect_bd_net [get_bd_pins $hdmi_clk_wiz/clk_out2] [get_bd_pins $hdmi/serial_clk]
connect_bd_net [get_bd_pins $hdmi_clk_wiz/locked] [get_bd_pins $hdmi_rst/dcm_locked]
connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $hdmi_rst/ext_reset_in]
connect_bd_net [get_bd_pins $hdmi_rst/peripheral_aresetn] [get_bd_pins $hdmi/rst_n] [get_bd_pins $hdmi_diag/s_axi_aresetn] [get_bd_pins $ctrl_ic/M08_ARESETN]
if {$stage6b1_mode} {
    connect_bd_net $clk100 [get_bd_pins $vdma/s_axis_s2mm_aclk]
    connect_bd_net $clk100 [get_bd_pins $source/aclk]
    connect_bd_net $clk100 [get_bd_pins $camera_clk_wiz/clk_in1]
    connect_bd_net [get_bd_pins $camera_clk_wiz/clk_out1] [get_bd_pins $rstcamcfg/slowest_sync_clk]
    connect_bd_net [get_bd_pins $camera_clk_wiz/clk_out1] [get_bd_pins $source/sys_clk50]
    connect_bd_net [get_bd_pins $camera_clk_wiz/clk_out2] [get_bd_pins $source/xclk24]
} else {
    connect_bd_net $clk_lcd [get_bd_pins $vdma/s_axis_s2mm_aclk]
    connect_bd_net $clk_lcd [get_bd_pins $source/aclk]
    connect_bd_net $clk_cam [get_bd_pins $source/cam_pclk]
    connect_bd_net $clk_cam [get_bd_pins $rstcam/slowest_sync_clk]
}

connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $rst100/ext_reset_in]
connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $rstlcd/ext_reset_in]
if {$stage6b1_mode} {
    connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $rstcamcfg/ext_reset_in]
} else {
    connect_bd_net [get_bd_pins $ps7/FCLK_RESET0_N] [get_bd_pins $rstcam/ext_reset_in]
}
connect_bd_net [get_bd_pins $const1/dout] [get_bd_pins $rst100/dcm_locked]
connect_bd_net [get_bd_pins $clk_wiz/locked] [get_bd_pins $rstlcd/dcm_locked]
if {$stage6b1_mode} {
    connect_bd_net [get_bd_pins $camera_clk_wiz/locked] [get_bd_pins $rstcamcfg/dcm_locked]
} else {
    connect_bd_net [get_bd_pins $clk_wiz/locked] [get_bd_pins $rstcam/dcm_locked]
}

set rst100n [get_bd_pins $rst100/peripheral_aresetn]
foreach pin [list \
    $ctrl_ic/ARESETN $ctrl_ic/S00_ARESETN $ctrl_ic/M00_ARESETN $ctrl_ic/M01_ARESETN $ctrl_ic/M02_ARESETN $ctrl_ic/M03_ARESETN $ctrl_ic/M04_ARESETN $ctrl_ic/M05_ARESETN $ctrl_ic/M06_ARESETN $keys/s_axi_aresetn $keys_sync/rst_n $live_gpio/s_axi_aresetn $ctrl_ic/M07_ARESETN $ui_vdma/axi_resetn $dma/axi_resetn $control_gpio/s_axi_aresetn $flag_gpio/s_axi_aresetn $bridge/aresetn \
    $mem_ic/ARESETN $mem_ic/S00_ARESETN $mem_ic/S01_ARESETN $mem_ic/S02_ARESETN $mem_ic/S03_ARESETN $mem_ic/M00_ARESETN \
    $vdma/axi_resetn $gpio/s_axi_aresetn] {
    connect_bd_net $rst100n [get_bd_pins $pin]
}

set rstlcdn [get_bd_pins $rstlcd/peripheral_aresetn]
connect_bd_net $rstlcdn [get_bd_pins $m17/lcd_rst_n]
if {$stage6b1_mode} {
    connect_bd_net $rst100n [get_bd_pins $source/aresetn]
    connect_bd_net [get_bd_pins $rstcamcfg/peripheral_aresetn] [get_bd_pins $source/sys_rst_n]
    connect_bd_net [get_bd_pins $source/status] [get_bd_pins $gpio/gpio_io_i]
    connect_bd_net [get_bd_pins $gpio/gpio2_io_o] [get_bd_pins $source/capture_enable]
} else {
    set rstcamn [get_bd_pins $rstcam/peripheral_aresetn]
    connect_bd_net $rstlcdn [get_bd_pins $source/aresetn]
    connect_bd_net $rstcamn [get_bd_pins $source/cam_rst_n]
}
if {$stage5b_mode && !$stage6b1_mode} {
    connect_bd_net [get_bd_pins $gpio/gpio_io_o] \
        [get_bd_pins $control_enable/Din] [get_bd_pins $control_ack/Din]
    connect_bd_net [get_bd_pins $control_enable/Dout] [get_bd_pins $source/camera_enable]
    connect_bd_net [get_bd_pins $control_ack/Dout] [get_bd_pins $source/recovery_ack_toggle]
    connect_bd_net [get_bd_pins $const1/dout] [get_bd_pins $source/inject_bad_frame_enable]
    connect_bd_net [get_bd_pins $source/recovery_status] [get_bd_pins $gpio/gpio2_io_i]
} elseif {!$stage6b1_mode} {
    connect_bd_net [get_bd_pins $gpio/gpio_io_o] [get_bd_pins $source/camera_enable]
    connect_bd_net [get_bd_pins $const0/dout] [get_bd_pins $source/inject_bad_frame_enable]
    connect_bd_net [get_bd_pins $const0/dout] [get_bd_pins $source/recovery_ack_toggle]
}

foreach {port pin left right} {
    lcd_r     lcd_r      4 0
    lcd_g     lcd_g      5 0
    lcd_b     lcd_b      4 0
    lcd_de    lcd_de     0 0
    lcd_hsync lcd_hsync  0 0
    lcd_vsync lcd_vsync  0 0
    lcd_bl    lcd_bl     0 0
} {
    if {$left == 0} {
        set p [create_bd_port -dir O $port]
    } else {
        set p [create_bd_port -dir O -from $left -to $right $port]
    }
    connect_bd_net $p [get_bd_pins $m17/$pin]
}
set lcd_pclk_port [create_bd_port -dir O -type clk lcd_pclk]
set_property CONFIG.FREQ_HZ {33333333} $lcd_pclk_port
connect_bd_net $lcd_pclk_port $clk_lcd

if {$stage6b1_mode} {
    foreach pin_name {cam_xclk cam_scl cam_sda cam_pclk cam_vsync cam_href cam_data} {
        make_bd_pins_external [get_bd_pins $source/$pin_name]
        set_property name $pin_name [get_bd_ports ${pin_name}_0]
    }
}

create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $vdma/S_AXI_LITE/Reg] SEG_VDMA
create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $gpio/S_AXI/Reg] SEG_CAMERA
create_bd_addr_seg -range 0x10000 -offset 0x40400000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $dma/S_AXI_LITE/Reg] SEG_DMA
create_bd_addr_seg -range 0x10000 -offset 0x41220000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $control_gpio/S_AXI/Reg] SEG_WP4_CONTROL
create_bd_addr_seg -range 0x10000 -offset 0x41230000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $flag_gpio/S_AXI/Reg] SEG_WP4_FLAGS
create_bd_addr_seg -range 0x10000 -offset 0x41240000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $keys/S_AXI/Reg] SEG_KEYS
create_bd_addr_seg -range 0x10000 -offset 0x41250000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $live_gpio/S_AXI/Reg] SEG_LIVE
create_bd_addr_seg -range 0x10000 -offset 0x43010000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $ui_vdma/S_AXI_LITE/Reg] SEG_UI_VDMA
create_bd_addr_seg -range 0x10000 -offset 0x41210000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $hdmi_diag/S_AXI/Reg] SEG_HDMI_DIAG
source [file join $script_dir overlay_extend.tcl]
source [file join $script_dir add_distance_pipeline.tcl]
source [file join $script_dir cnn_extend_c3.tcl]
assign_bd_address
source [file join $script_dir export_addresses.tcl]
validate_bd_design
save_bd_design
source [file join $script_dir export_c3_topology.tcl]

generate_target all [get_ips {axis_fifo_rgb_cdc axis_fifo_gray_cdc axis_fifo_gray_tag_cdc}]
export_ip_user_files -of_objects [get_ips {axis_fifo_rgb_cdc axis_fifo_gray_cdc axis_fifo_gray_tag_cdc}] \
    -no_script -sync -force -quiet

set bd_file [get_files ${bd_name}.bd]
generate_target all $bd_file
make_wrapper -files $bd_file -top
set wrapper [file join $project_dir ${project_name}.srcs sources_1 bd $bd_name hdl ${bd_name}_wrapper.v]
add_files -norecurse $wrapper
set_property top ${bd_name}_wrapper [get_filesets sources_1]
update_compile_order -fileset sources_1

# Full Tcl is required: Vivado 2018.3 read_xdc silently skips proc/foreach.
# The PRE hook runs with the linked top-level netlist before opt/place/route.
foreach script {apply_cdc_constraints.tcl overlay_cdc.tcl vdma_reset_scope.tcl} {
    add_files -fileset utils_1 -norecurse [file join $script_dir $script]
}
set_property STEPS.OPT_DESIGN.TCL.PRE [file join $script_dir apply_cdc_constraints.tcl] [get_runs impl_1]

if {[info exists ::integrated_hardware_entry]} {
    source [file join $overlay_root scripts run_integrated_hardware.tcl]
    close_project
    exit 0
}

if {$stage eq "bd"} {puts "FACEBOX_BD_PASS (not a release)"; close_project; exit 0}

launch_runs synth_1 -jobs 4
wait_on_run synth_1
set synth_status [get_property STATUS [get_runs synth_1]]
puts "${stage_label}_SYNTH_STATUS=$synth_status"
if {![string match "*Complete*" $synth_status]} {
    error "$stage_label synthesis failed: $synth_status"
}

open_run synth_1
report_utilization -file [file join $report_dir post_synth_utilization.rpt]
report_timing_summary -file [file join $report_dir post_synth_timing_summary.rpt]

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
set impl_status [get_property STATUS [get_runs impl_1]]
puts "${stage_label}_IMPL_STATUS=$impl_status"
if {![string match "*Complete*" $impl_status]} {
    error "$stage_label implementation/bitstream failed: $impl_status"
}

open_run impl_1
# CDC exceptions/signoff must be established before release; no inherited blanket exception here.
set setup_paths [get_timing_paths -delay_type max -max_paths 1]
set hold_paths [get_timing_paths -delay_type min -max_paths 1]
set worst_setup [get_property SLACK $setup_paths]
set worst_hold [get_property SLACK $hold_paths]
# Preserve complete failing reports too; never erase a failed timing gate by
# only emitting its scalar slack or by applying a blanket asynchronous group.
report_drc -file [file join $report_dir post_impl_drc.rpt]
report_timing_summary -file [file join $report_dir post_impl_timing_summary.rpt]
report_utilization -file [file join $report_dir post_impl_utilization.rpt]
report_clock_utilization -file [file join $report_dir clock_utilization.rpt]
report_clock_interaction -file [file join $report_dir clock_interaction.rpt]
report_cdc -details -file [file join $report_dir post_impl_cdc.rpt]
report_bus_skew -file [file join $report_dir bus_skew.rpt]
check_timing -verbose -file [file join $report_dir check_timing.rpt]
report_timing -delay_type max -max_paths 10 -file [file join $report_dir worst_setup.rpt]
report_timing -delay_type min -max_paths 10 -file [file join $report_dir worst_hold.rpt]
if {$worst_setup < 0 || $worst_hold < 0} {error "TIMING_GATE_FAILED setup=$worst_setup hold=$worst_hold"}

set bit_file [file join $project_dir ${project_name}.runs impl_1 ${bd_name}_wrapper.bit]
set hdf_file [file join $export_dir joint.hdf]
write_hwdef -force -file $hdf_file

if {![file exists $bit_file]} { error "$stage_label bitstream was not created: $bit_file" }
if {![file exists $hdf_file]} { error "$stage_label HDF was not created: $hdf_file" }

puts "${stage_label}_BITSTREAM=$bit_file"
puts "${stage_label}_HDF=$hdf_file"
if {$stage6b1_mode} {
    puts "FACEBOX_HARDWARE_BUILT_NOT_RELEASED"
} elseif {$stage5b_mode} {
    puts "AC880_WP2_WP3_RECOVERY_M17_BUILD_PASS"
} else {
    puts "AC880_WP2_WP3_VDMA_M17_BUILD_PASS"
}



