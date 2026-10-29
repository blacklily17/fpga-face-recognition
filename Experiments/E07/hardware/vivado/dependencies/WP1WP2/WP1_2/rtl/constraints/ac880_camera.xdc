# 1. 系统主时钟 (50MHz) 与复位
set_property PACKAGE_PIN Y9 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]

set_property PACKAGE_PIN P17 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]

# 2. 板载 4 颗状态指示 LED
set_property PACKAGE_PIN N22 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN P22 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN R18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN T18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

# 3. 摄像头 SCCB/I2C 控制总线 (开启芯片内部弱上拉)
set_property PACKAGE_PIN U22 [get_ports cam_scl]
set_property IOSTANDARD LVCMOS33 [get_ports cam_scl]
set_property PULLUP true [get_ports cam_scl]

set_property PACKAGE_PIN T22 [get_ports cam_sda]
set_property IOSTANDARD LVCMOS33 [get_ports cam_sda]
set_property PULLUP true [get_ports cam_sda]

# 4. 摄像头时钟与硬件复位输出
set_property PACKAGE_PIN AA18 [get_ports cam_xclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_xclk]

set_property PACKAGE_PIN N20 [get_ports cam_pwdn_n]
set_property IOSTANDARD LVCMOS33 [get_ports cam_pwdn_n]

# 5. 摄像头 DVP 图像输入接口
set_property PACKAGE_PIN Y18 [get_ports cam_pclk]
set_property IOSTANDARD LVCMOS33 [get_ports cam_pclk]

set_property PACKAGE_PIN T21 [get_ports cam_href]
set_property IOSTANDARD LVCMOS33 [get_ports cam_href]

set_property PACKAGE_PIN U21 [get_ports cam_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports cam_vsync]

set_property PACKAGE_PIN U17 [get_ports {cam_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[0]}]

set_property PACKAGE_PIN V17 [get_ports {cam_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[1]}]

set_property PACKAGE_PIN Y20 [get_ports {cam_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[2]}]

set_property PACKAGE_PIN Y21 [get_ports {cam_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[3]}]

set_property PACKAGE_PIN V18 [get_ports {cam_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[4]}]

set_property PACKAGE_PIN V19 [get_ports {cam_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[5]}]

set_property PACKAGE_PIN W20 [get_ports {cam_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[6]}]

set_property PACKAGE_PIN W21 [get_ports {cam_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data[7]}]

# 6. 非专用时钟引脚布线放宽
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
