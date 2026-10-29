# SDK 2018.3. Rebuild BSP from the explicitly selected local HDF.
if {[catch {
    set workspace [file normalize [lindex $argv 0]]
    set hdf [file normalize [lindex $argv 1]]
    if {[file exists $workspace]} {error "BSP workspace already exists: $workspace"}
    if {![file isfile $hdf]} {error "Missing HDF: $hdf"}
    file mkdir $workspace
    set ::delivery_eclipse_config [file join $workspace eclipse_config]
    file mkdir $::delivery_eclipse_config
    rename ::exec ::delivery_original_exec
    proc ::exec {args} {
        if {[string tolower [file tail [lindex $args 0]]] in {xsdk xsdk.bat}} {
            set index [lsearch -exact $args -vmargs]
            if {$index < 0} {set index [llength $args]}
            set args [linsert $args $index -configuration $::delivery_eclipse_config]
        }
        return [uplevel 1 [linsert $args 0 ::delivery_original_exec]]
    }
    set ::env(PATH) "[file join $::env(XILINX_SDK) gnuwin bin];[file join $::env(XILINX_SDK) gnu aarch32 nt gcc-arm-none-eabi bin];$::env(PATH)"
    setws $workspace
    createhw -name hardware -hwspec $hdf
    createbsp -name bsp -hwproject hardware -proc ps7_cortexa9_0 -os standalone
    setlib -bsp bsp -lib xilffs
    regenbsp -bsp bsp
    projects -build -type bsp -name bsp
    foreach lib {libxil.a libxilffs.a} {
        if {![file isfile [file join $workspace bsp ps7_cortexa9_0 lib $lib]]} {error "Missing $lib"}
    }
    puts "DELIVERY_BSP_PASS"
} message options]} {puts stderr $message; puts stderr [dict get $options -errorinfo]; exit 1}
exit 0
