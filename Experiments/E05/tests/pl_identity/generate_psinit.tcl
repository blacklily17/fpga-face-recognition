# PS init generation uses the installed SDK hsi APIs only, never a target.
if {[catch {
set hdf [file normalize [lindex $argv 0]]
set out [file normalize [lindex $argv 1]]
file mkdir $out
hsi open_hw_design $hdf
set ps [hsi get_cells -filter {CONFIGURABLE == true} -hierarchical]
if {$ps eq ""} {error "No configurable PS in final HDF"}
hsi generate_target {psinit} $ps -dir $out
if {![file exists [file join $out ps7_init.tcl]]} {error "PS init Tcl not generated"}
puts "E05_FINAL_HDF_PSINIT_PASS HDF=$hdf INIT=[file join $out ps7_init.tcl]"
} reason]} {puts stderr $reason;exit 1}
exit 0
