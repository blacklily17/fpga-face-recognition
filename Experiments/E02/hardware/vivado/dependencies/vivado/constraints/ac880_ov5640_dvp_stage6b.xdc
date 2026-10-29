# OV5640 control pins already proven in stage 6A.
set_property PACKAGE_PIN AA18 [get_ports cam_xclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_xclk]
set_property DRIVE 8 [get_ports cam_xclk]
set_property SLEW FAST [get_ports cam_xclk]

set_property PACKAGE_PIN U22 [get_ports cam_scl]
set_property IOSTANDARD LVCMOS33 [get_ports cam_scl]
set_property PULLUP true [get_ports cam_scl]

set_property PACKAGE_PIN T22 [get_ports cam_sda]
set_property IOSTANDARD LVCMOS33 [get_ports cam_sda]
set_property PULLUP true [get_ports cam_sda]

# DVP input bus.
set_property PACKAGE_PIN Y18 [get_ports cam_pclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_pclk]
set_property PACKAGE_PIN T21 [get_ports cam_href]
set_property IOSTANDARD LVCMOS33 [get_ports cam_href]
set_property PACKAGE_PIN U21 [get_ports cam_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports cam_vsync]

set_property PACKAGE_PIN U17 [get_ports {cam_data[0]}]
set_property PACKAGE_PIN V17 [get_ports {cam_data[1]}]
set_property PACKAGE_PIN Y20 [get_ports {cam_data[2]}]
set_property PACKAGE_PIN Y21 [get_ports {cam_data[3]}]
set_property PACKAGE_PIN V18 [get_ports {cam_data[4]}]
set_property PACKAGE_PIN V19 [get_ports {cam_data[5]}]
set_property PACKAGE_PIN W20 [get_ports {cam_data[6]}]
set_property PACKAGE_PIN W21 [get_ports {cam_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[*]}]

# WP1 delivery did not freeze the exact sensor PCLK/input-delay numbers.
# Constrain conservatively at 50 MHz and capture all DVP inputs in IOB FFs.
create_clock -name cam_pclk_in -period 20.000 [get_ports cam_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets -of_objects [get_ports cam_pclk]]

