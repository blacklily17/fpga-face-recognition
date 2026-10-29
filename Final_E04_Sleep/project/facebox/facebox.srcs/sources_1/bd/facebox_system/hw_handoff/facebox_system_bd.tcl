
################################################################
# This is a generated script based on design: facebox_system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source facebox_system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# capture_key_sync, gray_snapshot_bram_bd, gray_snapshot_capture_bd, axis_lbp_distance, overlay_ack_tracker_bd, overlay_regs_bd, real_camera_wp2_wp3_axis_source, rgb_lcd_timing_bd, tx2_axis_sink, wp4_board_bridge_m13_bd

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name facebox_system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set touch_gpio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 touch_gpio ]

  # Create ports
  set cam_data [ create_bd_port -dir I -from 7 -to 0 cam_data ]
  set cam_href [ create_bd_port -dir I cam_href ]
  set cam_pclk [ create_bd_port -dir I -type clk cam_pclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $cam_pclk
  set cam_scl [ create_bd_port -dir O cam_scl ]
  set cam_sda [ create_bd_port -dir IO cam_sda ]
  set cam_vsync [ create_bd_port -dir I cam_vsync ]
  set cam_xclk [ create_bd_port -dir O cam_xclk ]
  set key_n [ create_bd_port -dir I -from 1 -to 0 key_n ]
  set lcd_b [ create_bd_port -dir O -from 4 -to 0 lcd_b ]
  set lcd_bl [ create_bd_port -dir O lcd_bl ]
  set lcd_de [ create_bd_port -dir O lcd_de ]
  set lcd_g [ create_bd_port -dir O -from 5 -to 0 lcd_g ]
  set lcd_hsync [ create_bd_port -dir O lcd_hsync ]
  set lcd_pclk [ create_bd_port -dir O -type clk lcd_pclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {33333333} \
 ] $lcd_pclk
  set lcd_r [ create_bd_port -dir O -from 4 -to 0 lcd_r ]
  set lcd_vsync [ create_bd_port -dir O lcd_vsync ]
  set tmds_clk_n [ create_bd_port -dir O -type clk tmds_clk_n ]
  set tmds_clk_p [ create_bd_port -dir O -type clk tmds_clk_p ]
  set tmds_data_n [ create_bd_port -dir O -from 2 -to 0 tmds_data_n ]
  set tmds_data_p [ create_bd_port -dir O -from 2 -to 0 tmds_data_p ]

  # Create instance: axi_ctrl_interconnect, and set properties
  set axi_ctrl_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ctrl_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {14} \
   CONFIG.NUM_SI {1} \
 ] $axi_ctrl_interconnect

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {1} \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {8} \
   CONFIG.c_mm2s_burst_size {16} \
   CONFIG.c_sg_length_width {23} \
 ] $axi_dma_0

  # Create instance: axi_mem_interconnect, and set properties
  set axi_mem_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
 ] $axi_mem_interconnect

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_enable_mm2s_delay_counter {0} \
   CONFIG.c_enable_mm2s_frm_counter {0} \
   CONFIG.c_enable_s2mm_delay_counter {0} \
   CONFIG.c_enable_s2mm_frm_counter {1} \
   CONFIG.c_include_mm2s {1} \
   CONFIG.c_include_mm2s_dre {0} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_include_s2mm_dre {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axi_s2mm_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {16} \
   CONFIG.c_mm2s_linebuffer_depth {1024} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_num_fstores {3} \
   CONFIG.c_s2mm_linebuffer_depth {1024} \
   CONFIG.c_s2mm_max_burst_length {16} \
 ] $axi_vdma_0

  # Create instance: box_sequence_slice, and set properties
  set box_sequence_slice [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 box_sequence_slice ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {447} \
   CONFIG.DIN_TO {416} \
   CONFIG.DIN_WIDTH {448} \
   CONFIG.DOUT_WIDTH {1} \
 ] $box_sequence_slice

  # Create instance: camera_clk_wiz, and set properties
  set camera_clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 camera_clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {24.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {100.000} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $camera_clk_wiz

  # Create instance: camera_start_gpio, and set properties
  set camera_start_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 camera_start_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $camera_start_gpio

  # Create instance: capture_key_sync_0, and set properties
  set block_name capture_key_sync
  set block_cell_name capture_key_sync_0
  if { [catch {set capture_key_sync_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $capture_key_sync_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: capture_keys, and set properties
  set capture_keys [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 capture_keys ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {0} \
 ] $capture_keys

  # Create instance: constant_0, and set properties
  set constant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $constant_0

  # Create instance: constant_1, and set properties
  set constant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $constant_1

  # Create instance: gray_snapshot_bram_0, and set properties
  set block_name gray_snapshot_bram_bd
  set block_cell_name gray_snapshot_bram_0
  if { [catch {set gray_snapshot_bram_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gray_snapshot_bram_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: gray_snapshot_capture_0, and set properties
  set block_name gray_snapshot_capture_bd
  set block_cell_name gray_snapshot_capture_0
  if { [catch {set gray_snapshot_capture_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gray_snapshot_capture_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hdmi_diag, and set properties
  set hdmi_diag [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 hdmi_diag ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {0} \
 ] $hdmi_diag

  # Create instance: hdmi_video_clk, and set properties
  set hdmi_video_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 hdmi_video_clk ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {74.250} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {371.250} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {100.000} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $hdmi_video_clk

  # Create instance: live_status_gpio, and set properties
  set live_status_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 live_status_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $live_status_gpio

  # Create instance: match_control, and set properties
  set match_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 match_control ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $match_control

  # Create instance: match_core, and set properties
  set block_name axis_lbp_distance
  set block_cell_name match_core
  if { [catch {set match_core [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $match_core eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: match_dma, and set properties
  set match_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 match_dma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {1} \
   CONFIG.c_include_mm2s_dre {0} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_include_s2mm_dre {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axi_s2mm_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {32} \
   CONFIG.c_mm2s_burst_size {16} \
   CONFIG.c_s2mm_burst_size {16} \
   CONFIG.c_sg_length_width {23} \
 ] $match_dma

  # Create instance: match_mem, and set properties
  set match_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 match_mem ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $match_mem

  # Create instance: match_reset, and set properties
  set match_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 match_reset ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $match_reset

  # Create instance: overlay_ack_tracker_0, and set properties
  set block_name overlay_ack_tracker_bd
  set block_cell_name overlay_ack_tracker_0
  if { [catch {set overlay_ack_tracker_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $overlay_ack_tracker_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: overlay_regs_0, and set properties
  set block_name overlay_regs_bd
  set block_cell_name overlay_regs_0
  if { [catch {set overlay_regs_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $overlay_regs_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {6} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {3} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {2} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {2} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {54} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1800.000} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {inout} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {inout} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {inout} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {inout} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {inout} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {inout} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {inout} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {inout} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {inout} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {inout} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {inout} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {inout} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {inout} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {inout} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {inout} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {inout} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {inout} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {inout} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {inout} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {inout} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#GPIO#GPIO#GPIO#I2C 0#I2C 0#GPIO#GPIO} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#gpio[1]#gpio[2]#gpio[3]#gpio[4]#gpio[5]#gpio[6]#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#gpio[24]#gpio[25]#gpio[26]#gpio[27]#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#scl#sda#gpio[52]#gpio[53]} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {9} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {36} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {1} \
 ] $processing_system7_0

  # Create instance: real_camera_source_0, and set properties
  set block_name real_camera_wp2_wp3_axis_source
  set block_cell_name real_camera_source_0
  if { [catch {set real_camera_source_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $real_camera_source_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reset_100m, and set properties
  set reset_100m [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_100m ]

  # Create instance: reset_camera_config, and set properties
  set reset_camera_config [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_camera_config ]

  # Create instance: reset_hdmi, and set properties
  set reset_hdmi [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_hdmi ]

  # Create instance: reset_lcd, and set properties
  set reset_lcd [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_lcd ]

  # Create instance: rgb_lcd_timing_0, and set properties
  set block_name rgb_lcd_timing_bd
  set block_cell_name rgb_lcd_timing_0
  if { [catch {set rgb_lcd_timing_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rgb_lcd_timing_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sleep_camera_bit, and set properties
  set sleep_camera_bit [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sleep_camera_bit ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $sleep_camera_bit

  # Create instance: sleep_control, and set properties
  set sleep_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 sleep_control ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
 ] $sleep_control

  # Create instance: sleep_hdmi_bit, and set properties
  set sleep_hdmi_bit [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sleep_hdmi_bit ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $sleep_hdmi_bit

  # Create instance: snapshot_bram_ctrl, and set properties
  set snapshot_bram_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 snapshot_bram_ctrl ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $snapshot_bram_ctrl

  # Create instance: tx2_axis_sink_0, and set properties
  set block_name tx2_axis_sink
  set block_cell_name tx2_axis_sink_0
  if { [catch {set tx2_axis_sink_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tx2_axis_sink_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ui_vdma, and set properties
  set ui_vdma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 ui_vdma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {1} \
   CONFIG.c_include_mm2s_dre {0} \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {16} \
   CONFIG.c_mm2s_linebuffer_depth {1024} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_num_fstores {2} \
 ] $ui_vdma

  # Create instance: video_clk_wiz, and set properties
  set video_clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 video_clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.333} \
   CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {33.333} \
   CONFIG.CLKOUT2_REQUESTED_PHASE {90.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {100.000} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $video_clk_wiz

  # Create instance: wp4_board_bridge_0, and set properties
  set block_name wp4_board_bridge_m13_bd
  set block_cell_name wp4_board_bridge_0
  if { [catch {set wp4_board_bridge_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wp4_board_bridge_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wp4_control_gpio, and set properties
  set wp4_control_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 wp4_control_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {30} \
   CONFIG.C_IS_DUAL {1} \
 ] $wp4_control_gpio

  # Create instance: wp4_flag_gpio, and set properties
  set wp4_flag_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 wp4_flag_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {6} \
   CONFIG.C_IS_DUAL {0} \
 ] $wp4_flag_gpio

  # Create instance: zero32, and set properties
  set zero32 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 zero32 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $zero32

  # Create interface connections
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M00_AXI [get_bd_intf_pins axi_ctrl_interconnect/M00_AXI] [get_bd_intf_pins axi_vdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M01_AXI [get_bd_intf_pins axi_ctrl_interconnect/M01_AXI] [get_bd_intf_pins camera_start_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M02_AXI [get_bd_intf_pins axi_ctrl_interconnect/M02_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M03_AXI [get_bd_intf_pins axi_ctrl_interconnect/M03_AXI] [get_bd_intf_pins wp4_control_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M04_AXI [get_bd_intf_pins axi_ctrl_interconnect/M04_AXI] [get_bd_intf_pins wp4_flag_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M05_AXI [get_bd_intf_pins axi_ctrl_interconnect/M05_AXI] [get_bd_intf_pins capture_keys/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M06_AXI [get_bd_intf_pins axi_ctrl_interconnect/M06_AXI] [get_bd_intf_pins live_status_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M07_AXI [get_bd_intf_pins axi_ctrl_interconnect/M07_AXI] [get_bd_intf_pins ui_vdma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M08_AXI [get_bd_intf_pins axi_ctrl_interconnect/M08_AXI] [get_bd_intf_pins hdmi_diag/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M09_AXI [get_bd_intf_pins axi_ctrl_interconnect/M09_AXI] [get_bd_intf_pins overlay_regs_0/s_axi]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M10_AXI [get_bd_intf_pins axi_ctrl_interconnect/M10_AXI] [get_bd_intf_pins snapshot_bram_ctrl/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M11_AXI [get_bd_intf_pins axi_ctrl_interconnect/M11_AXI] [get_bd_intf_pins match_dma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M12_AXI [get_bd_intf_pins axi_ctrl_interconnect/M12_AXI] [get_bd_intf_pins match_control/S_AXI]
  connect_bd_intf_net -intf_net axi_ctrl_interconnect_M13_AXI [get_bd_intf_pins axi_ctrl_interconnect/M13_AXI] [get_bd_intf_pins sleep_control/S_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins wp4_board_bridge_0/dma]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_mem_interconnect/S02_AXI]
  connect_bd_intf_net -intf_net axi_mem_interconnect_M00_AXI [get_bd_intf_pins axi_mem_interconnect/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins tx2_axis_sink_0/s]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_interconnect/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_mem_interconnect/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net match_core_M_AXIS [get_bd_intf_pins match_core/M_AXIS] [get_bd_intf_pins match_dma/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net match_dma_M_AXIS_MM2S [get_bd_intf_pins match_core/S_AXIS] [get_bd_intf_pins match_dma/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net match_dma_M_AXI_MM2S [get_bd_intf_pins match_dma/M_AXI_MM2S] [get_bd_intf_pins match_mem/S00_AXI]
  connect_bd_intf_net -intf_net match_dma_M_AXI_S2MM [get_bd_intf_pins match_dma/M_AXI_S2MM] [get_bd_intf_pins match_mem/S01_AXI]
  connect_bd_intf_net -intf_net match_mem_M00_AXI [get_bd_intf_pins match_mem/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_GPIO_0 [get_bd_intf_ports touch_gpio] [get_bd_intf_pins processing_system7_0/GPIO_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_ctrl_interconnect/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net real_camera_source_0_m_axis [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins real_camera_source_0/m_axis]
  connect_bd_intf_net -intf_net snapshot_bram_ctrl_BRAM_PORTA [get_bd_intf_pins gray_snapshot_bram_0/bram] [get_bd_intf_pins snapshot_bram_ctrl/BRAM_PORTA]
  connect_bd_intf_net -intf_net ui_vdma_M_AXIS_MM2S [get_bd_intf_pins rgb_lcd_timing_0/s] [get_bd_intf_pins ui_vdma/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net ui_vdma_M_AXI_MM2S [get_bd_intf_pins axi_mem_interconnect/S03_AXI] [get_bd_intf_pins ui_vdma/M_AXI_MM2S]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports cam_sda] [get_bd_pins real_camera_source_0/cam_sda]
  connect_bd_net -net box_sequence_slice_Dout [get_bd_pins box_sequence_slice/Dout] [get_bd_pins overlay_ack_tracker_0/sequence_value]
  connect_bd_net -net cam_data_0_1 [get_bd_ports cam_data] [get_bd_pins real_camera_source_0/cam_data]
  connect_bd_net -net cam_href_0_1 [get_bd_ports cam_href] [get_bd_pins real_camera_source_0/cam_href]
  connect_bd_net -net cam_pclk_0_1 [get_bd_ports cam_pclk] [get_bd_pins real_camera_source_0/cam_pclk]
  connect_bd_net -net cam_vsync_0_1 [get_bd_ports cam_vsync] [get_bd_pins real_camera_source_0/cam_vsync]
  connect_bd_net -net camera_clk_wiz_clk_out1 [get_bd_pins camera_clk_wiz/clk_out1] [get_bd_pins real_camera_source_0/sys_clk50] [get_bd_pins reset_camera_config/slowest_sync_clk]
  connect_bd_net -net camera_clk_wiz_clk_out2 [get_bd_pins camera_clk_wiz/clk_out2] [get_bd_pins real_camera_source_0/xclk24]
  connect_bd_net -net camera_clk_wiz_locked [get_bd_pins camera_clk_wiz/locked] [get_bd_pins reset_camera_config/dcm_locked]
  connect_bd_net -net camera_start_gpio_gpio2_io_o [get_bd_pins camera_start_gpio/gpio2_io_o] [get_bd_pins real_camera_source_0/capture_enable]
  connect_bd_net -net capture_key_sync_0_key_sync_n [get_bd_pins capture_key_sync_0/key_sync_n] [get_bd_pins capture_keys/gpio_io_i]
  connect_bd_net -net constant_1_dout [get_bd_pins constant_1/dout] [get_bd_pins reset_100m/dcm_locked]
  connect_bd_net -net gray_snapshot_capture_0_bram_addr [get_bd_pins gray_snapshot_bram_0/bram_addr] [get_bd_pins gray_snapshot_capture_0/bram_addr]
  connect_bd_net -net gray_snapshot_capture_0_bram_wdata [get_bd_pins gray_snapshot_bram_0/bram_wdata] [get_bd_pins gray_snapshot_capture_0/bram_wdata]
  connect_bd_net -net gray_snapshot_capture_0_bram_we [get_bd_pins gray_snapshot_bram_0/bram_we] [get_bd_pins gray_snapshot_capture_0/bram_we]
  connect_bd_net -net gray_snapshot_capture_0_busy [get_bd_pins gray_snapshot_capture_0/busy] [get_bd_pins overlay_regs_0/snap_busy]
  connect_bd_net -net gray_snapshot_capture_0_error [get_bd_pins gray_snapshot_capture_0/error] [get_bd_pins overlay_regs_0/snap_error]
  connect_bd_net -net gray_snapshot_capture_0_format_error_event [get_bd_pins gray_snapshot_capture_0/format_error_event] [get_bd_pins overlay_regs_0/format_error_event]
  connect_bd_net -net gray_snapshot_capture_0_ready [get_bd_pins gray_snapshot_capture_0/ready] [get_bd_pins overlay_regs_0/snap_ready]
  connect_bd_net -net gray_snapshot_capture_0_snap_abort_event [get_bd_pins gray_snapshot_capture_0/snap_abort_event] [get_bd_pins overlay_regs_0/snap_abort_event]
  connect_bd_net -net gray_snapshot_capture_0_snap_commit_ticks [get_bd_pins gray_snapshot_capture_0/snap_commit_ticks] [get_bd_pins overlay_regs_0/snap_commit_ticks]
  connect_bd_net -net gray_snapshot_capture_0_snap_epoch [get_bd_pins gray_snapshot_capture_0/snap_epoch] [get_bd_pins overlay_regs_0/snap_epoch]
  connect_bd_net -net gray_snapshot_capture_0_snap_error_code [get_bd_pins gray_snapshot_capture_0/snap_error_code] [get_bd_pins overlay_regs_0/snap_error_code]
  connect_bd_net -net gray_snapshot_capture_0_snap_frame_id [get_bd_pins gray_snapshot_capture_0/snap_frame_id] [get_bd_pins overlay_regs_0/snap_frame_id]
  connect_bd_net -net gray_snapshot_capture_0_snap_ready_event [get_bd_pins gray_snapshot_capture_0/snap_ready_event] [get_bd_pins overlay_regs_0/snap_ready_event]
  connect_bd_net -net gray_snapshot_capture_0_snap_request_id [get_bd_pins gray_snapshot_capture_0/snap_request_id] [get_bd_pins overlay_regs_0/snap_request_id]
  connect_bd_net -net gray_snapshot_capture_0_snap_source_ticks [get_bd_pins gray_snapshot_capture_0/snap_source_ticks] [get_bd_pins overlay_regs_0/snap_source_ticks]
  connect_bd_net -net gray_snapshot_capture_0_snap_timeout_event [get_bd_pins gray_snapshot_capture_0/snap_timeout_event] [get_bd_pins overlay_regs_0/snap_timeout_event]
  connect_bd_net -net hdmi_video_clk_clk_out1 [get_bd_pins axi_ctrl_interconnect/M08_ACLK] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins hdmi_diag/s_axi_aclk] [get_bd_pins hdmi_video_clk/clk_out1] [get_bd_pins reset_hdmi/slowest_sync_clk] [get_bd_pins tx2_axis_sink_0/pixel_clk]
  connect_bd_net -net hdmi_video_clk_clk_out2 [get_bd_pins hdmi_video_clk/clk_out2] [get_bd_pins tx2_axis_sink_0/serial_clk]
  connect_bd_net -net hdmi_video_clk_locked [get_bd_pins hdmi_video_clk/locked] [get_bd_pins reset_hdmi/dcm_locked]
  connect_bd_net -net key_n_1 [get_bd_ports key_n] [get_bd_pins capture_key_sync_0/key_n]
  connect_bd_net -net match_control_gpio_io_o [get_bd_pins match_control/gpio_io_o] [get_bd_pins match_reset/Op1]
  connect_bd_net -net match_core_protocol_error [get_bd_pins match_control/gpio2_io_i] [get_bd_pins match_core/protocol_error]
  connect_bd_net -net match_reset_Res [get_bd_pins match_core/aresetn] [get_bd_pins match_reset/Res]
  connect_bd_net -net overlay_ack_tracker_0_acknowledged_sequence [get_bd_pins overlay_ack_tracker_0/acknowledged_sequence] [get_bd_pins overlay_regs_0/box_ack_sequence]
  connect_bd_net -net overlay_regs_0_box_send [get_bd_pins overlay_regs_0/box_send] [get_bd_pins tx2_axis_sink_0/box_send]
  connect_bd_net -net overlay_regs_0_box_shadow [get_bd_pins box_sequence_slice/Din] [get_bd_pins overlay_regs_0/box_shadow] [get_bd_pins tx2_axis_sink_0/box_payload]
  connect_bd_net -net overlay_regs_0_cancel [get_bd_pins gray_snapshot_capture_0/cancel] [get_bd_pins overlay_regs_0/cancel]
  connect_bd_net -net overlay_regs_0_clear_error [get_bd_pins gray_snapshot_capture_0/clear_error] [get_bd_pins overlay_regs_0/clear_error]
  connect_bd_net -net overlay_regs_0_epoch [get_bd_pins gray_snapshot_capture_0/epoch] [get_bd_pins overlay_regs_0/epoch]
  connect_bd_net -net overlay_regs_0_epoch_changed [get_bd_pins overlay_ack_tracker_0/invalidate] [get_bd_pins overlay_regs_0/epoch_changed] [get_bd_pins tx2_axis_sink_0/box_invalidate]
  connect_bd_net -net overlay_regs_0_mailbox_recover [get_bd_pins overlay_regs_0/mailbox_recover] [get_bd_pins tx2_axis_sink_0/box_recover]
  connect_bd_net -net overlay_regs_0_release_frame [get_bd_pins gray_snapshot_capture_0/release_frame] [get_bd_pins overlay_regs_0/release_frame]
  connect_bd_net -net overlay_regs_0_request [get_bd_pins gray_snapshot_capture_0/request] [get_bd_pins overlay_regs_0/request]
  connect_bd_net -net overlay_regs_0_request_id [get_bd_pins gray_snapshot_capture_0/request_id] [get_bd_pins overlay_regs_0/request_id]
  connect_bd_net -net overlay_regs_0_time_ticks [get_bd_pins gray_snapshot_capture_0/time_ticks] [get_bd_pins overlay_regs_0/time_ticks]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_ctrl_interconnect/ACLK] [get_bd_pins axi_ctrl_interconnect/M00_ACLK] [get_bd_pins axi_ctrl_interconnect/M01_ACLK] [get_bd_pins axi_ctrl_interconnect/M02_ACLK] [get_bd_pins axi_ctrl_interconnect/M03_ACLK] [get_bd_pins axi_ctrl_interconnect/M04_ACLK] [get_bd_pins axi_ctrl_interconnect/M05_ACLK] [get_bd_pins axi_ctrl_interconnect/M06_ACLK] [get_bd_pins axi_ctrl_interconnect/M07_ACLK] [get_bd_pins axi_ctrl_interconnect/M09_ACLK] [get_bd_pins axi_ctrl_interconnect/M10_ACLK] [get_bd_pins axi_ctrl_interconnect/M11_ACLK] [get_bd_pins axi_ctrl_interconnect/M12_ACLK] [get_bd_pins axi_ctrl_interconnect/M13_ACLK] [get_bd_pins axi_ctrl_interconnect/S00_ACLK] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_mem_interconnect/ACLK] [get_bd_pins axi_mem_interconnect/M00_ACLK] [get_bd_pins axi_mem_interconnect/S00_ACLK] [get_bd_pins axi_mem_interconnect/S01_ACLK] [get_bd_pins axi_mem_interconnect/S02_ACLK] [get_bd_pins axi_mem_interconnect/S03_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins camera_clk_wiz/clk_in1] [get_bd_pins camera_start_gpio/s_axi_aclk] [get_bd_pins capture_key_sync_0/clk] [get_bd_pins capture_keys/s_axi_aclk] [get_bd_pins gray_snapshot_bram_0/aclk] [get_bd_pins gray_snapshot_capture_0/aclk] [get_bd_pins hdmi_video_clk/clk_in1] [get_bd_pins live_status_gpio/s_axi_aclk] [get_bd_pins match_control/s_axi_aclk] [get_bd_pins match_core/aclk] [get_bd_pins match_dma/m_axi_mm2s_aclk] [get_bd_pins match_dma/m_axi_s2mm_aclk] [get_bd_pins match_dma/s_axi_lite_aclk] [get_bd_pins match_mem/ACLK] [get_bd_pins match_mem/M00_ACLK] [get_bd_pins match_mem/S00_ACLK] [get_bd_pins match_mem/S01_ACLK] [get_bd_pins overlay_ack_tracker_0/aclk] [get_bd_pins overlay_regs_0/aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins real_camera_source_0/aclk] [get_bd_pins reset_100m/slowest_sync_clk] [get_bd_pins sleep_control/s_axi_aclk] [get_bd_pins snapshot_bram_ctrl/s_axi_aclk] [get_bd_pins tx2_axis_sink_0/box_src_clk] [get_bd_pins ui_vdma/m_axi_mm2s_aclk] [get_bd_pins ui_vdma/s_axi_lite_aclk] [get_bd_pins video_clk_wiz/clk_in1] [get_bd_pins wp4_board_bridge_0/aclk] [get_bd_pins wp4_control_gpio/s_axi_aclk] [get_bd_pins wp4_flag_gpio/s_axi_aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins reset_100m/ext_reset_in] [get_bd_pins reset_camera_config/ext_reset_in] [get_bd_pins reset_hdmi/ext_reset_in] [get_bd_pins reset_lcd/ext_reset_in]
  connect_bd_net -net real_camera_source_0_cam_scl [get_bd_ports cam_scl] [get_bd_pins real_camera_source_0/cam_scl]
  connect_bd_net -net real_camera_source_0_cam_xclk [get_bd_ports cam_xclk] [get_bd_pins real_camera_source_0/cam_xclk]
  connect_bd_net -net real_camera_source_0_gray_tap_abort [get_bd_pins gray_snapshot_capture_0/frame_abort] [get_bd_pins real_camera_source_0/gray_tap_abort]
  connect_bd_net -net real_camera_source_0_gray_tap_commit [get_bd_pins gray_snapshot_capture_0/frame_commit] [get_bd_pins real_camera_source_0/gray_tap_commit]
  connect_bd_net -net real_camera_source_0_gray_tap_data [get_bd_pins gray_snapshot_capture_0/gray_data] [get_bd_pins real_camera_source_0/gray_tap_data]
  connect_bd_net -net real_camera_source_0_gray_tap_eol [get_bd_pins gray_snapshot_capture_0/gray_eol] [get_bd_pins real_camera_source_0/gray_tap_eol]
  connect_bd_net -net real_camera_source_0_gray_tap_frame_id [get_bd_pins gray_snapshot_capture_0/committed_frame_id] [get_bd_pins real_camera_source_0/gray_tap_frame_id]
  connect_bd_net -net real_camera_source_0_gray_tap_provenance_fault [get_bd_pins gray_snapshot_capture_0/provenance_fault] [get_bd_pins real_camera_source_0/gray_tap_provenance_fault]
  connect_bd_net -net real_camera_source_0_gray_tap_resetn [get_bd_pins gray_snapshot_capture_0/aresetn] [get_bd_pins real_camera_source_0/gray_tap_resetn]
  connect_bd_net -net real_camera_source_0_gray_tap_sof [get_bd_pins gray_snapshot_capture_0/gray_sof] [get_bd_pins real_camera_source_0/gray_tap_sof]
  connect_bd_net -net real_camera_source_0_gray_tap_source_id [get_bd_pins gray_snapshot_capture_0/gray_source_id] [get_bd_pins real_camera_source_0/gray_tap_source_id]
  connect_bd_net -net real_camera_source_0_gray_tap_valid [get_bd_pins gray_snapshot_capture_0/gray_valid] [get_bd_pins real_camera_source_0/gray_tap_valid]
  connect_bd_net -net real_camera_source_0_gray_tap_verdict_good [get_bd_pins gray_snapshot_capture_0/verdict_good] [get_bd_pins real_camera_source_0/gray_tap_verdict_good]
  connect_bd_net -net real_camera_source_0_gray_tap_verdict_source_id [get_bd_pins gray_snapshot_capture_0/verdict_source_id] [get_bd_pins real_camera_source_0/gray_tap_verdict_source_id]
  connect_bd_net -net real_camera_source_0_gray_tap_verdict_valid [get_bd_pins gray_snapshot_capture_0/verdict_valid] [get_bd_pins real_camera_source_0/gray_tap_verdict_valid]
  connect_bd_net -net real_camera_source_0_sleep_status [get_bd_pins real_camera_source_0/sleep_status] [get_bd_pins sleep_control/gpio2_io_i]
  connect_bd_net -net real_camera_source_0_status [get_bd_pins camera_start_gpio/gpio_io_i] [get_bd_pins real_camera_source_0/status]
  connect_bd_net -net reset_100m_peripheral_aresetn [get_bd_pins axi_ctrl_interconnect/ARESETN] [get_bd_pins axi_ctrl_interconnect/M00_ARESETN] [get_bd_pins axi_ctrl_interconnect/M01_ARESETN] [get_bd_pins axi_ctrl_interconnect/M02_ARESETN] [get_bd_pins axi_ctrl_interconnect/M03_ARESETN] [get_bd_pins axi_ctrl_interconnect/M04_ARESETN] [get_bd_pins axi_ctrl_interconnect/M05_ARESETN] [get_bd_pins axi_ctrl_interconnect/M06_ARESETN] [get_bd_pins axi_ctrl_interconnect/M07_ARESETN] [get_bd_pins axi_ctrl_interconnect/M09_ARESETN] [get_bd_pins axi_ctrl_interconnect/M10_ARESETN] [get_bd_pins axi_ctrl_interconnect/M11_ARESETN] [get_bd_pins axi_ctrl_interconnect/M12_ARESETN] [get_bd_pins axi_ctrl_interconnect/M13_ARESETN] [get_bd_pins axi_ctrl_interconnect/S00_ARESETN] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_mem_interconnect/ARESETN] [get_bd_pins axi_mem_interconnect/M00_ARESETN] [get_bd_pins axi_mem_interconnect/S00_ARESETN] [get_bd_pins axi_mem_interconnect/S01_ARESETN] [get_bd_pins axi_mem_interconnect/S02_ARESETN] [get_bd_pins axi_mem_interconnect/S03_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins camera_start_gpio/s_axi_aresetn] [get_bd_pins capture_key_sync_0/rst_n] [get_bd_pins capture_keys/s_axi_aresetn] [get_bd_pins live_status_gpio/s_axi_aresetn] [get_bd_pins match_control/s_axi_aresetn] [get_bd_pins match_dma/axi_resetn] [get_bd_pins match_mem/ARESETN] [get_bd_pins match_mem/M00_ARESETN] [get_bd_pins match_mem/S00_ARESETN] [get_bd_pins match_mem/S01_ARESETN] [get_bd_pins match_reset/Op2] [get_bd_pins overlay_ack_tracker_0/aresetn] [get_bd_pins overlay_regs_0/aresetn] [get_bd_pins real_camera_source_0/aresetn] [get_bd_pins reset_100m/peripheral_aresetn] [get_bd_pins sleep_control/s_axi_aresetn] [get_bd_pins snapshot_bram_ctrl/s_axi_aresetn] [get_bd_pins tx2_axis_sink_0/box_src_rst_n] [get_bd_pins ui_vdma/axi_resetn] [get_bd_pins wp4_board_bridge_0/aresetn] [get_bd_pins wp4_control_gpio/s_axi_aresetn] [get_bd_pins wp4_flag_gpio/s_axi_aresetn]
  connect_bd_net -net reset_camera_config_peripheral_aresetn [get_bd_pins real_camera_source_0/sys_rst_n] [get_bd_pins reset_camera_config/peripheral_aresetn]
  connect_bd_net -net reset_hdmi_peripheral_aresetn [get_bd_pins axi_ctrl_interconnect/M08_ARESETN] [get_bd_pins hdmi_diag/s_axi_aresetn] [get_bd_pins reset_hdmi/peripheral_aresetn] [get_bd_pins tx2_axis_sink_0/rst_n]
  connect_bd_net -net reset_lcd_peripheral_aresetn [get_bd_pins reset_lcd/peripheral_aresetn] [get_bd_pins rgb_lcd_timing_0/lcd_rst_n]
  connect_bd_net -net rgb_lcd_timing_0_lcd_b [get_bd_ports lcd_b] [get_bd_pins rgb_lcd_timing_0/lcd_b]
  connect_bd_net -net rgb_lcd_timing_0_lcd_bl [get_bd_ports lcd_bl] [get_bd_pins rgb_lcd_timing_0/lcd_bl]
  connect_bd_net -net rgb_lcd_timing_0_lcd_de [get_bd_ports lcd_de] [get_bd_pins rgb_lcd_timing_0/lcd_de]
  connect_bd_net -net rgb_lcd_timing_0_lcd_g [get_bd_ports lcd_g] [get_bd_pins rgb_lcd_timing_0/lcd_g]
  connect_bd_net -net rgb_lcd_timing_0_lcd_hsync [get_bd_ports lcd_hsync] [get_bd_pins rgb_lcd_timing_0/lcd_hsync]
  connect_bd_net -net rgb_lcd_timing_0_lcd_r [get_bd_ports lcd_r] [get_bd_pins rgb_lcd_timing_0/lcd_r]
  connect_bd_net -net rgb_lcd_timing_0_lcd_vsync [get_bd_ports lcd_vsync] [get_bd_pins rgb_lcd_timing_0/lcd_vsync]
  connect_bd_net -net sleep_camera_bit_Dout [get_bd_pins real_camera_source_0/sleep_request] [get_bd_pins sleep_camera_bit/Dout]
  connect_bd_net -net sleep_control_gpio_io_o [get_bd_pins sleep_camera_bit/Din] [get_bd_pins sleep_control/gpio_io_o] [get_bd_pins sleep_hdmi_bit/Din]
  connect_bd_net -net sleep_hdmi_bit_Dout [get_bd_pins sleep_hdmi_bit/Dout] [get_bd_pins tx2_axis_sink_0/hdmi_disable]
  connect_bd_net -net tx2_axis_sink_0_box_ack [get_bd_pins overlay_ack_tracker_0/ack] [get_bd_pins tx2_axis_sink_0/box_ack]
  connect_bd_net -net tx2_axis_sink_0_box_busy [get_bd_pins overlay_regs_0/mailbox_busy] [get_bd_pins tx2_axis_sink_0/box_busy]
  connect_bd_net -net tx2_axis_sink_0_box_channel_ready [get_bd_pins overlay_regs_0/channel_ready] [get_bd_pins tx2_axis_sink_0/box_channel_ready]
  connect_bd_net -net tx2_axis_sink_0_box_expired [get_bd_pins overlay_regs_0/box_expire_event] [get_bd_pins tx2_axis_sink_0/box_expired]
  connect_bd_net -net tx2_axis_sink_0_box_reset_event [get_bd_pins overlay_regs_0/channel_reset_event] [get_bd_pins tx2_axis_sink_0/box_reset_event]
  connect_bd_net -net tx2_axis_sink_0_box_timeout [get_bd_pins overlay_regs_0/mailbox_timeout_event] [get_bd_pins tx2_axis_sink_0/box_timeout]
  connect_bd_net -net tx2_axis_sink_0_status [get_bd_pins hdmi_diag/gpio_io_i] [get_bd_pins tx2_axis_sink_0/status]
  connect_bd_net -net tx2_axis_sink_0_tmds_clk_n [get_bd_ports tmds_clk_n] [get_bd_pins tx2_axis_sink_0/tmds_clk_n]
  connect_bd_net -net tx2_axis_sink_0_tmds_clk_p [get_bd_ports tmds_clk_p] [get_bd_pins tx2_axis_sink_0/tmds_clk_p]
  connect_bd_net -net tx2_axis_sink_0_tmds_data_n [get_bd_ports tmds_data_n] [get_bd_pins tx2_axis_sink_0/tmds_data_n]
  connect_bd_net -net tx2_axis_sink_0_tmds_data_p [get_bd_ports tmds_data_p] [get_bd_pins tx2_axis_sink_0/tmds_data_p]
  connect_bd_net -net video_clk_wiz_clk_out1 [get_bd_ports lcd_pclk] [get_bd_pins reset_lcd/slowest_sync_clk] [get_bd_pins rgb_lcd_timing_0/lcd_pclk] [get_bd_pins ui_vdma/m_axis_mm2s_aclk] [get_bd_pins video_clk_wiz/clk_out1]
  connect_bd_net -net video_clk_wiz_locked [get_bd_pins reset_lcd/dcm_locked] [get_bd_pins video_clk_wiz/locked]
  connect_bd_net -net wp4_board_bridge_0_data_status [get_bd_pins wp4_board_bridge_0/data_status] [get_bd_pins wp4_control_gpio/gpio2_io_i]
  connect_bd_net -net wp4_board_bridge_0_flag_status [get_bd_pins wp4_board_bridge_0/flag_status] [get_bd_pins wp4_flag_gpio/gpio_io_i]
  connect_bd_net -net wp4_control_gpio_gpio_io_o [get_bd_pins wp4_board_bridge_0/control] [get_bd_pins wp4_control_gpio/gpio_io_o]
  connect_bd_net -net zero32_dout [get_bd_pins live_status_gpio/gpio2_io_i] [get_bd_pins zero32/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces match_dma/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces match_dma/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs camera_start_gpio/S_AXI/Reg] SEG_CAMERA
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_DMA
  create_bd_addr_seg -range 0x00010000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs hdmi_diag/S_AXI/Reg] SEG_HDMI_DIAG
  create_bd_addr_seg -range 0x00010000 -offset 0x41240000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs capture_keys/S_AXI/Reg] SEG_KEYS
  create_bd_addr_seg -range 0x00010000 -offset 0x41250000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs live_status_gpio/S_AXI/Reg] SEG_LIVE
  create_bd_addr_seg -range 0x00010000 -offset 0x41280000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs match_control/S_AXI/Reg] SEG_MATCH_CONTROL
  create_bd_addr_seg -range 0x00010000 -offset 0x40410000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs match_dma/S_AXI_LITE/Reg] SEG_MATCH_DMA
  create_bd_addr_seg -range 0x00010000 -offset 0x41260000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs overlay_regs_0/s_axi/reg0] SEG_OVERLAY
  create_bd_addr_seg -range 0x00010000 -offset 0x41290000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs sleep_control/S_AXI/Reg] SEG_SLEEP_CONTROL
  create_bd_addr_seg -range 0x00020000 -offset 0x42000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs snapshot_bram_ctrl/S_AXI/Mem0] SEG_SNAPSHOT
  create_bd_addr_seg -range 0x00010000 -offset 0x43010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs ui_vdma/S_AXI_LITE/Reg] SEG_UI_VDMA
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_VDMA
  create_bd_addr_seg -range 0x00010000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs wp4_control_gpio/S_AXI/Reg] SEG_WP4_CONTROL
  create_bd_addr_seg -range 0x00010000 -offset 0x41230000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs wp4_flag_gpio/S_AXI/Reg] SEG_WP4_FLAGS
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces ui_vdma/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


