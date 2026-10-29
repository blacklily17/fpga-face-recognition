// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:22:44 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_tx2_axis_sink_0_0/facebox_system_tx2_axis_sink_0_0_stub.v
// Design      : facebox_system_tx2_axis_sink_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tx2_axis_sink,Vivado 2018.3" *)
module facebox_system_tx2_axis_sink_0_0(pixel_clk, serial_clk, rst_n, s_tvalid, s_tready, 
  s_tdata, s_tuser, s_tlast, tmds_data_p, tmds_data_n, tmds_clk_p, tmds_clk_n, status, box_src_clk, 
  box_src_rst_n, box_send, box_recover, box_invalidate, hdmi_disable, box_payload, box_busy, 
  box_ack, box_timeout, box_channel_ready, box_reset_event, box_expired)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,serial_clk,rst_n,s_tvalid,s_tready,s_tdata[15:0],s_tuser,s_tlast,tmds_data_p[2:0],tmds_data_n[2:0],tmds_clk_p,tmds_clk_n,status[31:0],box_src_clk,box_src_rst_n,box_send,box_recover,box_invalidate,hdmi_disable,box_payload[447:0],box_busy,box_ack,box_timeout,box_channel_ready,box_reset_event,box_expired" */;
  input pixel_clk;
  input serial_clk;
  input rst_n;
  input s_tvalid;
  output s_tready;
  input [15:0]s_tdata;
  input s_tuser;
  input s_tlast;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_clk_p;
  output tmds_clk_n;
  output [31:0]status;
  input box_src_clk;
  input box_src_rst_n;
  input box_send;
  input box_recover;
  input box_invalidate;
  input hdmi_disable;
  input [447:0]box_payload;
  output box_busy;
  output box_ack;
  output box_timeout;
  output box_channel_ready;
  output box_reset_event;
  output box_expired;
endmodule
