// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:21:45 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_capture_0_0/facebox_system_gray_snapshot_capture_0_0_stub.v
// Design      : facebox_system_gray_snapshot_capture_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gray_snapshot_capture_bd,Vivado 2018.3" *)
module facebox_system_gray_snapshot_capture_0_0(aclk, aresetn, gray_valid, gray_sof, gray_eol, 
  gray_data, frame_abort, frame_commit, request, release_frame, cancel, clear_error, 
  committed_frame_id, request_id, epoch, gray_source_id, verdict_source_id, verdict_valid, 
  verdict_good, provenance_fault, time_ticks, busy, ready, error, snap_request_id, snap_frame_id, 
  snap_epoch, snap_error_code, snap_source_ticks, snap_commit_ticks, bram_we, bram_addr, 
  bram_wdata, snap_ready_event, snap_abort_event, format_error_event, snap_timeout_event)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,gray_valid,gray_sof,gray_eol,gray_data[7:0],frame_abort,frame_commit,request,release_frame,cancel,clear_error,committed_frame_id[31:0],request_id[31:0],epoch[31:0],gray_source_id[31:0],verdict_source_id[31:0],verdict_valid,verdict_good,provenance_fault,time_ticks[63:0],busy,ready,error,snap_request_id[31:0],snap_frame_id[31:0],snap_epoch[31:0],snap_error_code[31:0],snap_source_ticks[63:0],snap_commit_ticks[63:0],bram_we,bram_addr[14:0],bram_wdata[31:0],snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event" */;
  input aclk;
  input aresetn;
  input gray_valid;
  input gray_sof;
  input gray_eol;
  input [7:0]gray_data;
  input frame_abort;
  input frame_commit;
  input request;
  input release_frame;
  input cancel;
  input clear_error;
  input [31:0]committed_frame_id;
  input [31:0]request_id;
  input [31:0]epoch;
  input [31:0]gray_source_id;
  input [31:0]verdict_source_id;
  input verdict_valid;
  input verdict_good;
  input provenance_fault;
  input [63:0]time_ticks;
  output busy;
  output ready;
  output error;
  output [31:0]snap_request_id;
  output [31:0]snap_frame_id;
  output [31:0]snap_epoch;
  output [31:0]snap_error_code;
  output [63:0]snap_source_ticks;
  output [63:0]snap_commit_ticks;
  output bram_we;
  output [14:0]bram_addr;
  output [31:0]bram_wdata;
  output snap_ready_event;
  output snap_abort_event;
  output format_error_event;
  output snap_timeout_event;
endmodule
