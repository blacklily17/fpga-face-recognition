# Final offline signoff on the completed routed DCP. No active project writer.
set_param general.maxThreads 2
set hw R:/
set build [file join $hw build h e05_04]
set project_dir [file join $build vivado facebox]
set report_dir [file join $build reports facebox]
set backup [file join $build reports pre_abort_scope_post_route]
set export_dir [file join $build export facebox]
if {[file exists $backup]} {error "Preserve prior CDC comparison snapshot"}
file copy $report_dir $backup
open_checkpoint [file join $project_dir facebox.runs impl_1 facebox_system_wrapper_routed.dcp]
report_exceptions -file [file join $backup active_exceptions.rpt]
write_xdc -force [file join $backup active_constraints.xdc]
report_cdc -details -file [file join $backup cdc_before_abort_scope.rpt]
source [file join $hw vivado abort_cdc_scope.tcl]
# Also prove that each local first-Q to second-D path remains timed.
foreach spec $abort_specs {
 lassign $spec label source first second
 set path [get_timing_paths -quiet -from [get_pins "$first/C"] -to [get_pins "$second/D"] -max_paths 1]
 if {[llength $path]!=1} {error "ABORT_CDC_SECOND_STAGE_WAS_CUT $label"}
 report_timing -from [get_pins "$first/C"] -to [get_pins "$second/D"] -max_paths 1 -file [file join $report_dir abort_${label}_second_stage.rpt]
 puts "ABORT_CDC_SECOND_STAGE_TIMED label=$label slack=[get_property SLACK $path]"
}
report_drc -file [file join $report_dir post_impl_drc.rpt]
report_timing_summary -file [file join $report_dir post_impl_timing_summary.rpt]
report_utilization -file [file join $report_dir post_impl_utilization.rpt]
report_clock_utilization -file [file join $report_dir clock_utilization.rpt]
report_clock_interaction -file [file join $report_dir clock_interaction.rpt]
report_cdc -details -file [file join $report_dir post_impl_cdc.rpt]
report_bus_skew -file [file join $report_dir bus_skew.rpt]
check_timing -verbose -file [file join $report_dir check_timing.rpt]
report_timing -delay_type max -max_paths 10 -file [file join $report_dir worst_setup.rpt]
report_timing -delay_type min -max_paths 10 -file [file join $report_dir worst_hold.rpt]
report_exceptions -file [file join $report_dir applied_exceptions.rpt]
write_xdc -force [file join $report_dir applied_constraints.xdc]
set setup [get_property SLACK [get_timing_paths -delay_type max -max_paths 1]]
set hold [get_property SLACK [get_timing_paths -delay_type min -max_paths 1]]
set f [open [file join $report_dir timing_gate.txt] w];puts $f "SETUP=$setup\nHOLD=$hold";close $f
if {$setup eq "" || $hold eq "" || $setup<0 || $hold<0} {error "E05_FINAL_TIMING_FAILED setup=$setup hold=$hold"}
set severe [get_drc_violations -quiet -filter {SEVERITY == Error || SEVERITY == {Critical Warning}}]
if {[llength $severe]} {error "E05_FINAL_DRC_FAILED $severe"}
set f [open [file join $report_dir bus_skew.rpt] r];set skew [read $f];close $f
if {[regexp -nocase {\(VIOLATED\)|Slack[^\n]*-[0-9]} $skew]} {error "E05_FINAL_SKEW_FAILED"}
write_checkpoint -force [file join $export_dir e05_signed_routed.dcp]
write_bitstream -force [file join $export_dir facebox_e05.bit]
puts "E05_ABORT_SCOPE_SIGNOFF_PASS setup=$setup hold=$hold"
puts "INTEGRATED_HARDWARE_PASS offline_only=1 setup=$setup hold=$hold"
close_design
exit 0
