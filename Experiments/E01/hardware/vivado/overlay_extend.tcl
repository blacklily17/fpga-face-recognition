# Extend only the derived BD, before address assignment/validation.
set_property CONFIG.NUM_MI 11 $ctrl_ic
set regs [create_bd_cell -type module -reference overlay_regs_bd overlay_regs_0]
set capture [create_bd_cell -type module -reference gray_snapshot_capture_bd gray_snapshot_capture_0]
set ram [create_bd_cell -type module -reference gray_snapshot_bram_bd gray_snapshot_bram_0]
set tracker [create_bd_cell -type module -reference overlay_ack_tracker_bd overlay_ack_tracker_0]
set bramctrl [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 snapshot_bram_ctrl]
set_property -dict [list CONFIG.DATA_WIDTH 32 CONFIG.SINGLE_PORT_BRAM 1] $bramctrl
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M09_AXI] [get_bd_intf_pins $regs/s_axi]
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M10_AXI] [get_bd_intf_pins $bramctrl/S_AXI]
foreach pin [list $ctrl_ic/M09_ACLK $ctrl_ic/M10_ACLK $regs/aclk $capture/aclk $ram/aclk $tracker/aclk $bramctrl/s_axi_aclk $hdmi/box_src_clk] {
    connect_bd_net $clk100 [get_bd_pins $pin]
}
foreach pin [list $ctrl_ic/M09_ARESETN $ctrl_ic/M10_ARESETN $regs/aresetn $tracker/aresetn $bramctrl/s_axi_aresetn $hdmi/box_src_rst_n] {
    connect_bd_net $rst100n [get_bd_pins $pin]
}
# This source reset already includes AXI reset and local synchronized release.
# Resetting the camera path must invalidate a held/partial snapshot too.
connect_bd_net [get_bd_pins $source/gray_tap_resetn] [get_bd_pins $capture/aresetn]
foreach {tap cap} {
    valid gray_valid data gray_data sof gray_sof eol gray_eol
    abort frame_abort commit frame_commit frame_id committed_frame_id
    source_id gray_source_id verdict_source_id verdict_source_id
    verdict_valid verdict_valid verdict_good verdict_good provenance_fault provenance_fault
} {
    connect_bd_net [get_bd_pins $source/gray_tap_$tap] [get_bd_pins $capture/$cap]
}
foreach name {request release_frame cancel clear_error request_id epoch time_ticks} {
    connect_bd_net [get_bd_pins $regs/$name] [get_bd_pins $capture/$name]
}
foreach name {busy ready error} {
    connect_bd_net [get_bd_pins $capture/$name] [get_bd_pins $regs/snap_$name]
}
foreach name {snap_request_id snap_frame_id snap_epoch snap_error_code snap_source_ticks snap_commit_ticks snap_ready_event snap_abort_event format_error_event snap_timeout_event} {
    connect_bd_net [get_bd_pins $capture/$name] [get_bd_pins $regs/$name]
}
foreach name {bram_we bram_addr bram_wdata} {
    connect_bd_net [get_bd_pins $capture/$name] [get_bd_pins $ram/$name]
}
connect_bd_intf_net [get_bd_intf_pins $bramctrl/BRAM_PORTA] [get_bd_intf_pins $ram/bram]
foreach {reg box} {box_send box_send mailbox_recover box_recover epoch_changed box_invalidate box_shadow box_payload} {
    connect_bd_net [get_bd_pins $regs/$reg] [get_bd_pins $hdmi/$box]
}
foreach {box reg} {box_busy mailbox_busy box_timeout mailbox_timeout_event box_channel_ready channel_ready box_reset_event channel_reset_event box_expired box_expire_event} {
    connect_bd_net [get_bd_pins $hdmi/$box] [get_bd_pins $regs/$reg]
}
connect_bd_net [get_bd_pins $hdmi/box_ack] [get_bd_pins $tracker/ack]
connect_bd_net [get_bd_pins $regs/epoch_changed] [get_bd_pins $tracker/invalidate]
set seq_slice [create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 box_sequence_slice]
set_property -dict [list CONFIG.DIN_WIDTH 448 CONFIG.DIN_FROM 447 CONFIG.DIN_TO 416 CONFIG.DOUT_WIDTH 32] $seq_slice
connect_bd_net [get_bd_pins $regs/box_shadow] [get_bd_pins $seq_slice/Din]
connect_bd_net [get_bd_pins $seq_slice/Dout] [get_bd_pins $tracker/sequence_value]
connect_bd_net [get_bd_pins $tracker/acknowledged_sequence] [get_bd_pins $regs/box_ack_sequence]
create_bd_addr_seg -range 0x10000 -offset 0x41260000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $regs/s_axi/reg0] SEG_OVERLAY
create_bd_addr_seg -range 0x20000 -offset 0x42000000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $bramctrl/S_AXI/Mem0] SEG_SNAPSHOT
