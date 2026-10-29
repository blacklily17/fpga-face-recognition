# SOURCE as Tcl in the opt_design PRE hook, NOT read_xdc (2018.3 rejects proc).
# Only the two NEW bundled-data handshakes. No clock groups, no exceptions on
# domain-local stages or functional reset fanout. Fail closed on topology drift.
proc facebox_cdc_pins {pattern expected} {
    set pins [get_pins -hierarchical -regexp $pattern]
    if {[llength $pins] != $expected} {
        error "FACEBOX_CDC_ENDPOINT_COUNT expected=$expected actual=[llength $pins] pattern=$pattern"
    }
    return $pins
}
set mb {facebox_system_i/tx2_axis_sink_0/inst/u_box_mailbox}
set vd {facebox_system_i/real_camera_source_0/inst/verdict_cdc}
set cam {facebox_system_i/real_camera_source_0/inst}

# Asynchronous assertion enters ONLY local two-flop reset release pipes. Their
# final Q drives functional resets, whose recovery/removal remains timed.
foreach spec [list \
    [list [format {%s/(src_reset_pipe|dst_reset_pipe)_reg\[[01]\]/(CLR|PRE)} $mb] 4] \
    [list [format {%s/(src_release|dst_release)_reg\[[01]\]/(CLR|PRE)} $vd] 4] \
    [list [format {%s/cam_release_reg\[[01]\]/CLR} $cam] 2]] {
    lassign $spec pattern count
    set_false_path -to [facebox_cdc_pins $pattern $count]
}

# Only the asynchronous first D; first-Q -> second-D stays normally timed.
set mb_first [facebox_cdc_pins [format {%s/(ack_s|clear_ack_s|ready_s|expire_s|req_d|clear_d|expire_ack_d)_reg\[0\]/D} $mb] 7]
set vd_first [facebox_cdc_pins [format {%s/(ack_s1|req_s1|fault_s1)_reg/D} $vd] 3]
set_false_path -to $mb_first
set_false_path -to $vd_first
# Only source-registered stable levels and the first receiving D. Camera IOB
# reset fanout and all second stages remain timed on their local clocks.
set cam_first [facebox_cdc_pins [format {%s/(init_meta|capture_cam_meta|good_meta|bad_meta)_reg/D} $cam] 4]
set_false_path -to $cam_first

# Payload is latched with req and held through the returning ACK (timeout keeps
# it locked). Receivers sample only after two receiving edges plus comparison.
# 5ns physical delay/skew is less than either receiver period (10 / 13.468ns),
# providing margin before the earliest capture. Do NOT false-path payload.
# Synthesis drops mailbox words not consumed by the renderer; actual live bits
# are the five 32-bit words valid/x/y/w/h, i.e. bits 0..159 on both endpoints.
set mb_c [facebox_cdc_pins [format {%s/held_payload_reg\[[0-9]+\]/C} $mb] 160]
set mb_d [facebox_cdc_pins [format {%s/pending_payload_reg\[[0-9]+\]/D} $mb] 160]
set vd_c [facebox_cdc_pins [format {%s/bundle_reg\[[0-9]+\]/C} $vd] 33]
set vd_d [facebox_cdc_pins [format {%s/(dst_id_reg\[[0-9]+\]|dst_good_reg)/D} $vd] 33]
# Valid sequential startpoints are C, NOT Q (UG903 Path Segmentation).
# -datapath_only removes inter-clock skew without cutting C->Q timing arcs.
set_max_delay -datapath_only 5.000 -from $mb_c -to $mb_d
set_bus_skew 5.000 -from $mb_c -to $mb_d
set_max_delay -datapath_only 5.000 -from $vd_c -to $vd_d
set_bus_skew 5.000 -from $vd_c -to $vd_d
puts "FACEBOX_CDC_CONSTRAINTS_APPLIED reset_pins=10 first_stage_pins=14 mailbox_bits=160 verdict_bits=33"
