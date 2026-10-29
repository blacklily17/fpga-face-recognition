# Offline BSP creation. No target connection commands.
if {[catch {
set work [file normalize [lindex $argv 0]]
set hdf [file normalize [lindex $argv 1]]
set workspace [file join $work workspace]
if {[file exists $workspace]} {error "Fresh SDK workspace required"}
set ::e05_config [file join $work eclipse_config]
file mkdir $::e05_config
rename ::exec ::e05_original_exec
proc ::exec {args} {
 if {[string tolower [file tail [lindex $args 0]]] in {xsdk xsdk.bat}} {
  set index [lsearch -exact $args -vmargs]
  if {$index<0} {set index [llength $args]}
  set args [linsert $args $index -configuration $::e05_config]
 }
 return [uplevel 1 [linsert $args 0 ::e05_original_exec]]
}
set ::env(PATH) "[file join $::env(XILINX_SDK) gnuwin bin];[file join $::env(XILINX_SDK) gnu aarch32 nt gcc-arm-none-eabi bin];$::env(PATH)"
setws $workspace
createhw -name h -hwspec $hdf
createbsp -name bsp -hwproject h -proc ps7_cortexa9_0 -os standalone
setlib -bsp bsp -lib xilffs
regenbsp -bsp bsp
projects -build -type bsp -name bsp
puts "E05_BSP_BUILD_PASS HDF=$hdf BSP=[file join $workspace bsp ps7_cortexa9_0]"
} reason]} {puts stderr $reason;exit 1}
exit 0
