// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:20:51 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_regs_0_0/facebox_system_overlay_regs_0_0_stub.v
// Design      : facebox_system_overlay_regs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "overlay_regs_bd,Vivado 2018.3" *)
module facebox_system_overlay_regs_0_0(aclk, aresetn, s_axi_awaddr, s_axi_araddr, 
  s_axi_awvalid, s_axi_wvalid, s_axi_bready, s_axi_arvalid, s_axi_rready, s_axi_wdata, 
  s_axi_wstrb, s_axi_awready, s_axi_wready, s_axi_bvalid, s_axi_arready, s_axi_rvalid, 
  s_axi_bresp, s_axi_rresp, s_axi_rdata, snap_busy, snap_ready, snap_error, mailbox_busy, 
  channel_ready, channel_reset_event, snap_request_id, snap_frame_id, snap_epoch, 
  snap_error_code, box_ack_sequence, snap_source_ticks, snap_commit_ticks, 
  snap_ready_event, snap_abort_event, format_error_event, snap_timeout_event, 
  box_expire_event, mailbox_timeout_event, request, release_frame, cancel, clear_error, 
  box_send, mailbox_recover, epoch_changed, request_id, epoch, box_shadow, time_ticks)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[15:0],s_axi_araddr[15:0],s_axi_awvalid,s_axi_wvalid,s_axi_bready,s_axi_arvalid,s_axi_rready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_awready,s_axi_wready,s_axi_bvalid,s_axi_arready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_rresp[1:0],s_axi_rdata[31:0],snap_busy,snap_ready,snap_error,mailbox_busy,channel_ready,channel_reset_event,snap_request_id[31:0],snap_frame_id[31:0],snap_epoch[31:0],snap_error_code[31:0],box_ack_sequence[31:0],snap_source_ticks[63:0],snap_commit_ticks[63:0],snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event,box_expire_event,mailbox_timeout_event,request,release_frame,cancel,clear_error,box_send,mailbox_recover,epoch_changed,request_id[31:0],epoch[31:0],box_shadow[447:0],time_ticks[63:0]" */;
  input aclk;
  input aresetn;
  input [15:0]s_axi_awaddr;
  input [15:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  input snap_busy;
  input snap_ready;
  input snap_error;
  input mailbox_busy;
  input channel_ready;
  input channel_reset_event;
  input [31:0]snap_request_id;
  input [31:0]snap_frame_id;
  input [31:0]snap_epoch;
  input [31:0]snap_error_code;
  input [31:0]box_ack_sequence;
  input [63:0]snap_source_ticks;
  input [63:0]snap_commit_ticks;
  input snap_ready_event;
  input snap_abort_event;
  input format_error_event;
  input snap_timeout_event;
  input box_expire_event;
  input mailbox_timeout_event;
  output request;
  output release_frame;
  output cancel;
  output clear_error;
  output box_send;
  output mailbox_recover;
  output epoch_changed;
  output [31:0]request_id;
  output [31:0]epoch;
  output [447:0]box_shadow;
  output [63:0]time_ticks;
endmodule
