# Stage-6A OV5640 configuration-only pins. Camera_RST and Camera_PWDN are
# intentionally not PL ports; AC880 carrier resistors hold their fixed levels.

set_property PACKAGE_PIN AA18 [get_ports cam_xclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_xclk]
set_property DRIVE 8 [get_ports cam_xclk]
set_property SLEW FAST [get_ports cam_xclk]

set_property PACKAGE_PIN U22 [get_ports cam_scl]
set_property IOSTANDARD LVCMOS33 [get_ports cam_scl]
set_property DRIVE 8 [get_ports cam_scl]
set_property SLEW SLOW [get_ports cam_scl]
set_property PULLUP true [get_ports cam_scl]

set_property PACKAGE_PIN T22 [get_ports cam_sda]
set_property IOSTANDARD LVCMOS33 [get_ports cam_sda]
set_property PULLUP true [get_ports cam_sda]
