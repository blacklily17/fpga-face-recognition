// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:22:58 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_bram_0_0/facebox_system_gray_snapshot_bram_0_0_stub.v
// Design      : facebox_system_gray_snapshot_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gray_snapshot_bram_bd,Vivado 2018.3" *)
module facebox_system_gray_snapshot_bram_0_0(aclk, bram_we, bram_addr, bram_wdata, bram_clk, 
  bram_rst, bram_en, bram_byte_addr, bram_wrdata, bram_wrwe, bram_rddata)
/* synthesis syn_black_box black_box_pad_pin="aclk,bram_we,bram_addr[14:0],bram_wdata[31:0],bram_clk,bram_rst,bram_en,bram_byte_addr[16:0],bram_wrdata[31:0],bram_wrwe[3:0],bram_rddata[31:0]" */;
  input aclk;
  input bram_we;
  input [14:0]bram_addr;
  input [31:0]bram_wdata;
  input bram_clk;
  input bram_rst;
  input bram_en;
  input [16:0]bram_byte_addr;
  input [31:0]bram_wrdata;
  input [3:0]bram_wrwe;
  output [31:0]bram_rddata;
endmodule
