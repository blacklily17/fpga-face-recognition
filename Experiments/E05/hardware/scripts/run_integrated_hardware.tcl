# Called only after fresh BD generation or opening the same isolated project.
set_param general.maxThreads 2
file mkdir $report_dir $export_dir
set hwh_file [file join $project_dir facebox.srcs sources_1 bd $bd_name hw_handoff ${bd_name}.hwh]
puts "INTEGRATED_HWH=$hwh_file"
puts [exec $::env(INTEGRATED_PYTHON) -B [file join $overlay_root scripts check_integrated_hardware.py] hwh $hwh_file --addresses [file join $report_dir address_map_cnn_pl.json] --output [file join $report_dir integrated_hwh_check.json]]
if {$stage eq "bd"} {
    puts "INTEGRATED_BD_PASS offline_only=1"
    return
}
proc integrated_wait {run} {
    wait_on_run $run
    set status [get_property STATUS [get_runs $run]]
    puts "INTEGRATED_RUN_STATUS $run=$status"
    if {![string match "*Complete*" $status]} {error "INTEGRATED_RUN_FAILED $run=$status"}
}
set synth_status [get_property STATUS [get_runs synth_1]]
if {![string match "*Complete*" $synth_status]} {
    if {[get_property PROGRESS [get_runs synth_1]] ne "0%"} {
        error "Synthesis is partial/failed; inspect logs and explicitly reset the affected run"
    }
    launch_runs synth_1 -jobs 2
    integrated_wait synth_1
}
open_run synth_1
report_utilization -file [file join $report_dir post_synth_utilization.rpt]
report_timing_summary -file [file join $report_dir post_synth_timing_summary.rpt]
# First HDF lets the parent build BSP while implementation runs. It is not a
# signoff/bitstream artifact; final joint.hdf is written only after route gates.
set early_hdf [file join $export_dir joint_synth.hdf]
if {![file exists $early_hdf]} {write_hwdef -file $early_hdf}
puts "INTEGRATED_BSP_HDF=$early_hdf"
set fd [open [file join $report_dir bsp_ready.txt] w]
puts $fd "HDF=$early_hdf\nHWH=$hwh_file\nSTAGE=synthesis_only_not_release"
close $fd
set impl_status [get_property STATUS [get_runs impl_1]]
if {![string match "*write_bitstream Complete*" $impl_status]} {
    if {[string match "*ERROR*" $impl_status] || [string match "*Failed*" $impl_status]} {
        error "Implementation failed; preserve reports and explicitly reset affected run"
    }
    launch_runs impl_1 -to_step write_bitstream -jobs 2
    integrated_wait impl_1
}
open_run impl_1
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
set worst_setup [get_property SLACK [get_timing_paths -delay_type max -max_paths 1]]
set worst_hold [get_property SLACK [get_timing_paths -delay_type min -max_paths 1]]
set fd [open [file join $report_dir timing_gate.txt] w]
puts $fd "SETUP=$worst_setup\nHOLD=$worst_hold"
close $fd
if {$worst_setup eq "" || $worst_hold eq "" || $worst_setup < 0 || $worst_hold < 0} {
    error "INTEGRATED_TIMING_GATE_FAILED setup=$worst_setup hold=$worst_hold"
}
set severe [get_drc_violations -quiet -filter {SEVERITY == Error || SEVERITY == {Critical Warning}}]
if {[llength $severe]} {error "INTEGRATED_DRC_GATE_FAILED: $severe"}
# Explicitly inspect skew report too; no new asynchronous clock exceptions.
set fd [open [file join $report_dir bus_skew.rpt] r]
set skew_report [read $fd]
close $fd
if {[regexp -nocase {\(VIOLATED\)|Slack[^\n]*-[0-9]} $skew_report]} {
    error "INTEGRATED_BUS_SKEW_GATE_FAILED"
}
set hdf_file [file join $export_dir joint.hdf]
if {![file exists $hdf_file]} {write_hwdef -file $hdf_file}
set bit_file [file join $project_dir facebox.runs impl_1 ${bd_name}_wrapper.bit]
if {![file exists $bit_file]} {error "Missing bitstream $bit_file"}
puts "INTEGRATED_BITSTREAM=$bit_file"
puts "INTEGRATED_HDF=$hdf_file"
puts "INTEGRATED_HARDWARE_PASS offline_only=1 setup=$worst_setup hold=$worst_hold"
