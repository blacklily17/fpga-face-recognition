# SOURCE as Tcl in opt_design PRE, NOT read_xdc (2018.3 rejects foreach).
# Vivado 2018.3 VDMA v6.3 does not emit its optional FIFO reset XDC block
# (installed ttcl/xdc.ttcl: enable_fifo_xdc=0). Constrain ONLY the verified
# MM2S reset endpoints of the two actual dual-clock built-in FIFOs.
# UG953 FIFO18E1: EN_SYN=FALSE RST is asynchronous; hold >=5 WRCLK/RDCLK cycles.
# https://docs.amd.com/r/2021.1-English/ug953-vivado-7series-libraries/FIFO18E1
# No data/clock/functional logic exceptions. INIT+shift topology is verified
# below; on-board clock/startup/pulse behavior remains a separate acceptance.
foreach instance {axi_vdma_0 ui_vdma} {
    set prefix "facebox_system_i/$instance/U0/GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_LINEBUFFER.GEN_ASYNC_FIFO.LB_BUILT_IN.I_LINEBUFFER_FIFO"
    # Literal dots in the IP generate hierarchy, not regex wildcards.
    set prefix [string map {. \\.} $prefix]
    set fifo [get_cells -hier -regexp "$prefix/.*sngfifo18e1"]
    if {[llength $fifo]!=1 || [get_property REF_NAME $fifo] ne "FIFO18E1" || [get_property EN_SYN $fifo]!=0} {
        error "VDMA_RESET_TOPOLOGY_CHANGED: $instance is not the verified asynchronous FIFO18E1"
    }
    set stages [get_cells -hier -regexp [format {%s/.*rstbt/rsync\.ric\.power_on_rd_rst_reg\[[0-5]\]} $prefix]]
    if {[llength $stages]!=6} {error "VDMA_RESET_STRETCH_CHANGED: $instance"}
    foreach c $stages {
        if {[get_property INIT $c] ne "1'b1"} {error "VDMA_RESET_INIT_CHANGED: $c"}
    }
    set rst [get_pins -of_objects $fifo -filter {REF_PIN_NAME == RST}]
    set pre [get_pins -hier -regexp [format {%s/.*rstbt/rsync\.ric\.rd_rst_reg[12]_reg/PRE} $prefix]]
    if {[llength $rst]!=1 || [llength $pre]!=2} {error "VDMA_RESET_ENDPOINT_CHANGED: $instance"}
    # FIFO's asynchronous reset and the two release pipe async presets only.
    # rd_rst_reg1/Q -> rd_rst_reg2/D and the six-stage shift remain timed.
    set_false_path -to $rst
    set_false_path -to $pre
    puts "VDMA_ASYNC_RESET_SCOPE instance=$instance rst=1 presets=2 stretch_stages=6"
}
