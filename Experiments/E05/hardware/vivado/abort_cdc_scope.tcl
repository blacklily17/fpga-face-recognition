# Proven two-flop toggle/ACK CDC. Constrain only each asynchronous first D.
# Source RTL: wp3_dual_fifo_frame_bridge.sv, toggle_event_cdc.sv,
# camera_dual_axis_guard.sv. The guard holds req until the returned ACK matches.
proc facebox_abort_one {path} {
 set c [get_cells -quiet $path]
 if {[llength $c]!=1} {error "ABORT_CDC_CELL_COUNT $path actual=[llength $c]"}
 return $c
}
proc facebox_abort_pin {path} {
 set p [get_pins -quiet $path]
 if {[llength $p]!=1} {error "ABORT_CDC_PIN_COUNT $path actual=[llength $p]"}
 return $p
}
proc facebox_abort_direct {a b} {
 set an [get_nets -quiet -segments -of_objects $a]
 set bn [get_nets -quiet -segments -of_objects $b]
 set matched 0
 foreach net $an {if {[lsearch -exact $bn $net]>=0} {set matched 1}}
 if {!$matched} {error "ABORT_CDC_NOT_DIRECT $a -> $b"}
}
set abort_prefix {facebox_system_i/real_camera_source_0/inst/u_wp3/bridge}
set abort_specs [list \
 [list request "$abort_prefix/ingress_guard/abort_req_toggle_reg" "$abort_prefix/abort_event_cdc/toggle_sync_1_reg" "$abort_prefix/abort_event_cdc/toggle_sync_2_reg"] \
 [list acknowledge "$abort_prefix/abort_event_cdc/toggle_seen_reg" "$abort_prefix/abort_ack_sync_1_reg" "$abort_prefix/abort_ack_sync_2_reg"]]
foreach spec $abort_specs {
 lassign $spec label source first second
 facebox_abort_one $source
 foreach cell [list $first $second] {
  set c [facebox_abort_one $cell]
  if {[string toupper [get_property ASYNC_REG $c]] ni {TRUE 1 YES}} {error "ABORT_CDC_ASYNC_REG_REQUIRED $cell"}
 }
 set sq [facebox_abort_pin "$source/Q"]
 set fd [facebox_abort_pin "$first/D"]
 set fq [facebox_abort_pin "$first/Q"]
 set sd [facebox_abort_pin "$second/D"]
 facebox_abort_direct $sq $fd
 facebox_abort_direct $fq $sd
 set loads [lsort -unique [get_pins -quiet -leaf -of_objects [get_nets -quiet -segments -of_objects $fq] -filter {DIRECTION == IN}]]
 if {[llength $loads]!=1 || [lindex $loads 0] ne [lindex $sd 0]} {
  error "ABORT_CDC_FIRST_STAGE_FUNCTIONAL_FANOUT $label loads=$loads expected_only=$sd"
 }
 set sc [get_clocks -quiet -of_objects [facebox_abort_pin "$source/C"]]
 set fc [get_clocks -quiet -of_objects [facebox_abort_pin "$first/C"]]
 set dc [get_clocks -quiet -of_objects [facebox_abort_pin "$second/C"]]
 if {[llength $sc]!=1 || [llength $fc]!=1 || [llength $dc]!=1 || $fc ne $dc || $sc eq $fc} {
  error "ABORT_CDC_CLOCK_TOPOLOGY_CHANGED $label source=$sc first=$fc second=$dc"
 }
 set_false_path -to $fd
 puts "ABORT_CDC_EXACT_FIRST_D label=$label source=$sq first=$fd second=$sd source_clock=$sc destination_clock=$fc"
}
puts "ABORT_CDC_SCOPE_PASS first_D_pins=2 second_stages_timed=1"
