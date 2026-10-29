# AC880 40-pin RGB LCD package pins verified from the project board inventory.
#
# IMPORTANT BLOCKERS:
# - LCD panel model/FPC orientation is not yet frozen.
# - lcd_pclk frequency, porch values, sync polarity and electrical standard are
#   not yet frozen. Do not create a bitstream from this file until those facts
#   are checked against the actual panel manual.
# - No IOSTANDARD is intentionally assigned here.

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

# Add only after panel timing is frozen, for example:
# create_clock -name lcd_pclk -period <FROM_PANEL_MANUAL_NS> [get_ports lcd_pclk]
# set_property IOSTANDARD <VERIFIED_STANDARD> [get_ports {lcd_*}]
