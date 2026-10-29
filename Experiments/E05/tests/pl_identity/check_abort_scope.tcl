# Read-only diagnostic on a completed synthesis checkpoint; no project writes.
set_param general.maxThreads 2
set hw R:/
set root E:/3FALL/FPGA_programme/face_recognition/_idp/E05
open_checkpoint [file join $hw build h e05_04 vivado facebox facebox.runs impl_1 facebox_system_wrapper_opt.dcp]
source [file join $hw vivado abort_cdc_scope.tcl]
set p {facebox_system_i/real_camera_source_0/inst/u_wp3/bridge/abort_ack_sync_1_reg}
set_property ASYNC_REG FALSE [get_cells $p]
if {![catch {source [file join $hw vivado abort_cdc_scope.tcl]} reason]} {error "Mutation incorrectly accepted missing ASYNC_REG"}
if {![string match "*ABORT_CDC_ASYNC_REG_REQUIRED*" $reason]} {error "Unexpected mutation rejection $reason"}
puts "ABORT_CDC_MUTATION_REJECTED $reason"
set_property ASYNC_REG TRUE [get_cells $p]
source [file join $hw vivado abort_cdc_scope.tcl]
report_exceptions -file [file join $root offline_kernel abort_scope_synth_exceptions.rpt]
puts "ABORT_CDC_REAL_DCP_VALIDATION_PASS"
close_design
exit 0
