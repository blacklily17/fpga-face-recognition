# AC880 stage-1 LCD color-bar bring-up constraints.
# Target: xc7z020clg484-2, 50 MHz PL oscillator, TFT5.0_V3.0 RGB565 port.

# PL reference clock: Y9, 50 MHz.
set_property PACKAGE_PIN Y9 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -name sys_clk -period 20.000 [get_ports sys_clk]

# RGB565 data pins.
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

# LCD control and forwarded pixel clock.
set_property PACKAGE_PIN V22  [get_ports lcd_pclk]
set_property PACKAGE_PIN AB14 [get_ports lcd_hsync]
set_property PACKAGE_PIN U14  [get_ports lcd_vsync]
set_property PACKAGE_PIN AB19 [get_ports lcd_de]
set_property PACKAGE_PIN U19  [get_ports lcd_bl]

set_property IOSTANDARD LVCMOS33 [get_ports {lcd_r[*] lcd_g[*] lcd_b[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_pclk lcd_hsync lcd_vsync lcd_de lcd_bl}]

# Moderate drive and slow edges are sufficient at 33.33 MHz and reduce ringing.
set_property DRIVE 8 [get_ports {lcd_r[*] lcd_g[*] lcd_b[*] lcd_hsync lcd_vsync lcd_de lcd_bl}]
set_property SLEW SLOW [get_ports {lcd_r[*] lcd_g[*] lcd_b[*] lcd_hsync lcd_vsync lcd_de lcd_bl}]
set_property DRIVE 8 [get_ports lcd_pclk]
set_property SLEW FAST [get_ports lcd_pclk]

# Name the forwarded clock for implementation reports.  Pixel data is launched
# on its rising edge and the panel samples on its falling edge.
create_generated_clock -name lcd_pclk_out -source [get_ports sys_clk] \
    -multiply_by 2 -divide_by 3 [get_ports lcd_pclk]
