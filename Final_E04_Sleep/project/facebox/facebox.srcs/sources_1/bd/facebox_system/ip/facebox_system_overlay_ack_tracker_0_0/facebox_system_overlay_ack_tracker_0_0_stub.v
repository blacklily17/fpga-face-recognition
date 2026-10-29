// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:21:47 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_ack_tracker_0_0/facebox_system_overlay_ack_tracker_0_0_stub.v
// Design      : facebox_system_overlay_ack_tracker_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "overlay_ack_tracker_bd,Vivado 2018.3" *)
module facebox_system_overlay_ack_tracker_0_0(aclk, aresetn, ack, invalidate, sequence_value, 
  acknowledged_sequence)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,ack,invalidate,sequence_value[31:0],acknowledged_sequence[31:0]" */;
  input aclk;
  input aresetn;
  input ack;
  input invalidate;
  input [31:0]sequence_value;
  output [31:0]acknowledged_sequence;
endmodule
