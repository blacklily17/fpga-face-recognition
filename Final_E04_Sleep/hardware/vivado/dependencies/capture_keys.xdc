# Current physical board Bank34=3.3V confirmed by user, 2026-10-03.
set_property PACKAGE_PIN P17 [get_ports {key_n[0]}]
set_property PACKAGE_PIN P18 [get_ports {key_n[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_n[*]}]
set_false_path -from [get_ports {key_n[*]}] -to [get_cells -hier -filter {NAME =~ *capture_key_sync*key_meta_n_reg*}]


