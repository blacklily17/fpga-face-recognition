# 新增独立控制口，不修改 TFT、HP0/HP1、LBP 或距离核的时钟和复位。
set_property CONFIG.NUM_MI 14 $ctrl_ic
set sleep_gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 sleep_control]
set_property -dict [list CONFIG.C_GPIO_WIDTH 2 CONFIG.C_ALL_OUTPUTS 1 CONFIG.C_IS_DUAL 1 CONFIG.C_GPIO2_WIDTH 32 CONFIG.C_ALL_INPUTS_2 1 CONFIG.C_DOUT_DEFAULT {0x00000000}] $sleep_gpio
connect_bd_intf_net [get_bd_intf_pins $ctrl_ic/M13_AXI] [get_bd_intf_pins $sleep_gpio/S_AXI]
foreach pin [list $ctrl_ic/M13_ACLK $sleep_gpio/s_axi_aclk] {connect_bd_net $clk100 [get_bd_pins $pin]}
foreach pin [list $ctrl_ic/M13_ARESETN $sleep_gpio/s_axi_aresetn] {connect_bd_net $rst100n [get_bd_pins $pin]}
foreach {name bit dest} {sleep_camera_bit 0 sleep_request sleep_hdmi_bit 1 hdmi_disable} {
    set part [create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 $name]
    set_property -dict [list CONFIG.DIN_WIDTH 2 CONFIG.DIN_FROM $bit CONFIG.DIN_TO $bit CONFIG.DOUT_WIDTH 1] $part
    connect_bd_net [get_bd_pins $sleep_gpio/gpio_io_o] [get_bd_pins $part/Din]
    if {$bit == 0} {set sink $source} else {set sink $hdmi}
    connect_bd_net [get_bd_pins $part/Dout] [get_bd_pins $sink/$dest]
}
connect_bd_net [get_bd_pins $source/sleep_status] [get_bd_pins $sleep_gpio/gpio2_io_i]
create_bd_addr_seg -range 0x10000 -offset 0x41290000 [get_bd_addr_spaces $ps7/Data] [get_bd_addr_segs $sleep_gpio/S_AXI/Reg] SEG_SLEEP_CONTROL
