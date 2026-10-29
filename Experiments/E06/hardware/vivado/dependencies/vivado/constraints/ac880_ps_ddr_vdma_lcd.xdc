# AC880 stage-3 LCD pin constraints.
# PS fixed I/O and PS DDR pins are dedicated Zynq pins and are described by
# the Processing System 7 block, so only the PL-side LCD connector is listed.

set_property PACKAGE_PIN AB21 [get_ports {lcd_r[4]}]
set_property PACKAGE_PIN AA17 [get_ports {lcd_r[3]}]
set_property PACKAGE_PIN AB17 [get_ports {lcd_r[2]}]
set_property PACKAGE_PIN AA16 [get_ports {lcd_r[1]}]
set_property PACKAGE_PIN AB16 [get_ports {lcd_r[0]}]

set_property PACKAGE_PIN Y13  [get_ports {lcd_g[5]}]
set_property PACKAGE_PIN AA13 [get_ports {lcd_g[4]}]
set_property PACKAGE_PIN W22  [get_ports {lcd_g[3]}]
set_property PACKAGE_PIN AA22 [get_ports {lcd_g[2]}]
set_property PACKAGE_PIN AB22 [get_ports {lcd_g[1]}]
set_property PACKAGE_PIN AA21 [get_ports {lcd_g[0]}]

set_property PACKAGE_PIN AB15 [get_ports {lcd_b[4]}]
set_property PACKAGE_PIN W13  [get_ports {lcd_b[3]}]
set_property PACKAGE_PIN V13  [get_ports {lcd_b[2]}]
set_property PACKAGE_PIN V15  [get_ports {lcd_b[1]}]
set_property PACKAGE_PIN V14  [get_ports {lcd_b[0]}]

set_property PACKAGE_PIN V22  [get_ports lcd_pclk]
set_property PACKAGE_PIN AB14 [get_ports lcd_hsync]
set_property PACKAGE_PIN U14  [get_ports lcd_vsync]
set_property PACKAGE_PIN AB19 [get_ports lcd_de]
set_property PACKAGE_PIN U19  [get_ports lcd_bl]

set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[*] lcd_g[*] lcd_b[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_pclk lcd_hsync lcd_vsync lcd_de lcd_bl}]

set_property DRIVE 8 [get_ports {lcd_r[*] lcd_g[*] lcd_b[*] lcd_hsync lcd_vsync lcd_de lcd_bl}]
set_property SLEW SLOW [get_ports {lcd_r[*] lcd_g[*] lcd_b[*] lcd_hsync lcd_vsync lcd_de lcd_bl}]
set_property DRIVE 8 [get_ports lcd_pclk]
set_property SLEW FAST [get_ports lcd_pclk]

