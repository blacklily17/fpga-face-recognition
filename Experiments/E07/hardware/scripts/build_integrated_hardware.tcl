# Offline only. Fresh BD uses the copied local build_overlay.tcl directly.
set hardware_entry_dir [file dirname [file normalize [info script]]]
set overlay_root [file normalize [file join $hardware_entry_dir ..]]
set stage [lindex $argv 0]
set build_dir [file normalize [lindex $argv 1]]
if {$stage ni {bd bit resume}} {error "Expected bd, bit, or resume"}
set allowed_build [file normalize [file join $overlay_root build h]]
if {[info exists ::env(INTEGRATED_BUILD_ROOT)]} {set allowed_build [file normalize $::env(INTEGRATED_BUILD_ROOT)]}
set short_build [file normalize [file join $overlay_root .. .. .. _c3_build]]
if {$allowed_build ne [file normalize [file join $overlay_root build h]] && $allowed_build ne $short_build} {error "Build root outside C3 workspace"}
if {[file dirname $build_dir] ne $allowed_build} {error "Build outside selected C3 root"}
set ::c3_integrated_build_root $allowed_build
set ::integrated_hardware_entry 1
set ::e07_identity_cnn 1
set project_name facebox
set bd_name facebox_system
set project_dir [file join $build_dir vivado $project_name]
set report_dir [file join $build_dir reports $project_name]
set export_dir [file join $build_dir export $project_name]
if {$stage eq "resume"} {
    open_project [file join $project_dir facebox.xpr]
    source [file join $hardware_entry_dir run_integrated_hardware.tcl]
    close_project
    exit 0
}
if {[file exists [file join $project_dir facebox.xpr]]} {error "Existing project: use resume"}
source [file join $overlay_root vivado build_overlay.tcl]
