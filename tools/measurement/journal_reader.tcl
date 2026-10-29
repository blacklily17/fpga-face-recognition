# One bounded host invocation reads immutable committed history without stopping
# the CPU, writing target memory, polling a result page, or touching the SD card.
# Parent owns the process deadline. ABI: see retained_e01/login_journal.h.
proc jr_words {address count} {
    set raw [mrd -address-space AP0 -value $address $count]
    if {[llength $raw] != $count} {error SHORT_READ}
    set words {};foreach w $raw {lappend words [expr {wide($w)&0xffffffff}]}
    return $words
}
proc jr_id {address expected} {
    set raw [mrd -address-space AP0 -size b -value $address 32]
    if {[llength $raw] != 32} {error SHORT_ID}
    set id "";foreach b $raw {append id [format %c [expr {$b&255}]]}
    if {[string trimright $id "\x00"] ne $expected} {error RUNTIME_MISMATCH}
}
proc jr_header {address} {
    set h [jr_words $address 16]
    if {[lindex $h 0] != 0x4c4a3031 || [lindex $h 1] != 1 ||
        [lindex $h 2] != 8256 || [lindex $h 3] != 128 || [lindex $h 8] != 16 ||
        [lindex $h 4] > 128 || (![lindex $h 6] && ![lindex $h 7])} {error JOURNAL_ABI}
    return $h
}
proc journal_read {args_list} {
    set connected 0
    set code [catch {
        if {[llength $args_list] ni {4 5}} {error USAGE_ELF_SDK_SERVER_CURSOR}
        lassign $args_list elf sdk server cursor expected
        if {$expected eq ""} {set expected AC880-C1-JOURNAL-20261022}
        if {$expected ni {AC880-C1-JOURNAL-20261022 AC880-C1-JTEST-20261022 AC880-E02-JOURNAL-20261022 AC880-E03-JOURNAL-20261022 AC880-E04-JOURNAL-20261022 AC880-E05-JOURNAL-20261022 AC880-E06-JOURNAL-20261022 AC880-E07-JOURNAL-20261022}} {error INVALID_RUNTIME}
        if {![string is integer -strict $cursor] || $cursor < 0 || $cursor > 128} {error INVALID_CURSOR}
        set nm [file join $sdk gnu aarch32 nt gcc-arm-none-eabi bin arm-none-eabi-nm.exe]
        set symbols [exec $nm -S --defined-only $elf]
        foreach {name size align} {g_live_build_id 32 32 g_login_journal 8256 64 g_ui_diag 112 32} {
            set pat [format {(?m)^([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s+[A-Za-z]\s+%s$} $name]
            if {![regexp $pat $symbols -> address bytes]} {error SYMBOL_MISSING_$name}
            set a [expr 0x$address]
            if {[expr 0x$bytes] != $size || $a%$align || $a < 0x100000 || $a+$size > 0x8000000} {error ELF_ABI_$name}
            set sym($name) $a
        }
        connect -url $server;set connected 1
        # TCP listening precedes USB/JTAG target enumeration in SDK 2018.3.
        set inventory [targets]
        for {set retry 0} {![string match *xc7z020* $inventory] && $retry < 15} {incr retry} {
            after 200
            set inventory [targets]
        }
        if {![string match *xc7z020* $inventory]} {error "NO_DEVICE:$inventory"}
        foreach filter {{name =~ "APU*"} {name =~ "ARM Cortex-A9 MPCore #0*"}} {
            if {[llength [targets -target-properties -filter $filter]] != 1} {error AMBIGUOUS_TARGET}
        }
        targets -set -filter {name =~ "APU*"}
        jr_id $sym(g_live_build_id) $expected
        set ui_before [jr_words $sym(g_ui_diag) 28]
        if {[lindex $ui_before 0] != 0x55494354 || [lindex $ui_before 1] != 3} {error UI_ABI}
        set h [jr_header $sym(g_login_journal)]
        set count [lindex $h 4]
        if {$cursor > $count} {error JOURNAL_ROLLBACK}
        set records {}
        if {$count > $cursor} {
            set records [jr_words [expr {$sym(g_login_journal)+64+$cursor*64}] [expr {($count-$cursor)*16}]]
        }
        set after [jr_header $sym(g_login_journal)]
        foreach offset {0 1 2 3 6 7 8} {
            if {[lindex $h $offset] != [lindex $after $offset]} {error BOOT_OR_ABI_CHANGED}
        }
        if {[lindex $after 4] < $count} {error JOURNAL_ROLLBACK}
        # Catch overflow that occurred while reading, even though newer records wait for next read.
        lset h 5 [lindex $after 5]
        jr_id $sym(g_live_build_id) $expected
        set ui_after [jr_words $sym(g_ui_diag) 28]
        set idle 1
        foreach offset {3 7 8 9 10 11 12} {if {[lindex $ui_after $offset] || [lindex $ui_before $offset]} {set idle 0}}
        foreach offset {16 17} {if {[lindex $ui_before $offset] != [lindex $ui_after $offset]} {set idle 0}}
        puts "JOURNAL_RUNTIME $expected"
        puts "JOURNAL_IDLE $idle"
        puts "JOURNAL_UI_WORDS $ui_after"
        puts "JOURNAL_HEADER $h"
        for {set k 0} {$k < [llength $records]} {incr k 16} {
            puts "JOURNAL_RECORD [lrange $records $k [expr {$k+15}]]"
        }
        disconnect;set connected 0
        puts JOURNAL_PASS;flush stdout
    } why]
    if {$connected} {catch {disconnect}}
    if {$code} {puts stderr "JOURNAL_FAILED $why";return 1}
    return 0
}
if {[info exists argv0] && [file tail $argv0] eq [file tail [info script]]} {exit [journal_read $argv]}
