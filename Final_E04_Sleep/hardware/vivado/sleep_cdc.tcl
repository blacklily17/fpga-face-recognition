# 只豁免新单比特同步器的第一级 D；第二级和真实 OCE/复位端保持正常时序检查。
set sleep_first [facebox_cdc_pins {facebox_system_i/tx2_axis_sink_0/inst/disable_meta_reg/D} 1]
set serial_first [facebox_cdc_pins {facebox_system_i/tx2_axis_sink_0/inst/u_tx/u_[bgrc]/enable_meta_reg/D} 4]
set_false_path -to $sleep_first
set_false_path -to $serial_first
# 仅允许异步复位进入两拍本地释放链；释放链输出到功能复位仍按串行时钟检查。
set serial_reset [facebox_cdc_pins {facebox_system_i/tx2_axis_sink_0/inst/u_tx/u_[bgrc]/serial_release_reg\[[01]\]/CLR} 8]
set_false_path -to $serial_reset
puts "SLEEP_CDC_SCOPED_PASS first_D=5 local_reset_pipe_CLR=8 functional_resets_and_OCE_timed=1"
