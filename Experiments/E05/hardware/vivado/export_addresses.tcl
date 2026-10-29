# Export ACTUAL PS Data mappings, including automatically assigned segments.
set ranges {}
set items {}
foreach seg [get_bd_addr_segs -of_objects [get_bd_addr_spaces $ps7/Data]] {
    set a [get_property OFFSET $seg]
    set n [get_property RANGE $seg]
    if {$a eq "" || $n eq ""} {error "Missing address range: $seg"}
    # Vivado commonly reports RANGE as 64K/128K/1G.
    if {[regexp {^([0-9]+)([KMG])$} $n -> num suffix]} {
        set power [dict get {K 1024 M 1048576 G 1073741824} $suffix]
        set n [expr {$num*$power}]
    }
    set n [expr {$n}]; set a [expr {$a}]
    foreach other $ranges {
        lassign $other b bn bseg
        if {$a<$b+$bn && $b<$a+$n} {error "address overlap: $seg / $bseg"}
    }
    lappend ranges [list $a $n $seg]
    set name [file tail $seg]
    if {$name eq "SEG_OVERLAY"} {set name overlay}
    if {$name eq "SEG_SNAPSHOT"} {set name snapshot}
    lappend items [format { {"name":"%s","base":"0x%08X","size":"0x%X"}} $name $a $n]
}
set output_name address_map.json
if {[llength [get_bd_cells -quiet cnn_core]] == 1} {
    set output_name address_map_cnn_pl.json
}
set fd [open [file join $report_dir $output_name] w]
puts $fd "\[\n[join $items ,\n]\n\]"; close $fd
puts "FACEBOX_ADDRESS_EXPORT count=[llength $ranges] file=$output_name"
