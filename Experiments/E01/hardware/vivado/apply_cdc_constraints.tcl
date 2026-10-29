# Runs in the actual implementation process with its linked synthesized netlist.
# Preserve the fail-closed topology checks and exact endpoint scope as full Tcl.
set facebox_constraint_dir [file dirname [file normalize [info script]]]
source [file join $facebox_constraint_dir overlay_cdc.tcl]
source [file join $facebox_constraint_dir vdma_reset_scope.tcl]
puts "FACEBOX_IMPLEMENTATION_CDC_HOOK_PASS"
