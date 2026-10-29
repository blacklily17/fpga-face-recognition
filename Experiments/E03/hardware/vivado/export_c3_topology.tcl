# Export actual root-level BD nets independently of HWH generation.
proc c3_json_string {s} {
    return "\"[string map [list \\ \\\\ \" \\"] $s]\""
}
set c3_pin_items {}
foreach pin [get_bd_pins -quiet -hierarchical] {
    set cell [get_bd_cells -quiet -of_objects $pin]
    if {[llength $cell]!=1 || [string first / [string trimleft $cell /]]>=0} {continue}
    set nets [get_bd_nets -quiet -of_objects $pin]
    if {[llength $nets]!=1} {continue}
    lappend c3_pin_items "[c3_json_string [string trimleft $pin /]]:[c3_json_string [string trimleft $nets /]]"
}
set c3_bus_items {}
foreach pin [get_bd_intf_pins -quiet -hierarchical] {
    set cell [get_bd_cells -quiet -of_objects $pin]
    if {[llength $cell]!=1 || [string first / [string trimleft $cell /]]>=0} {continue}
    set nets [get_bd_intf_nets -quiet -of_objects $pin]
    if {[llength $nets]!=1} {continue}
    lappend c3_bus_items "[c3_json_string [string trimleft $pin /]]:[c3_json_string [string trimleft $nets /]]"
}
set c3_fd [open [file join $report_dir c3_bd_topology.json] w]
puts $c3_fd "{\"schema\":1,\"pins\":{[join $c3_pin_items ,]},\"interfaces\":{[join $c3_bus_items ,]}}"
close $c3_fd
