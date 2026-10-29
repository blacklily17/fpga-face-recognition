// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:20:35 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_real_camera_source_0_0/facebox_system_real_camera_source_0_0_stub.v
// Design      : facebox_system_real_camera_source_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "real_camera_wp2_wp3_axis_source,Vivado 2018.3" *)
module facebox_system_real_camera_source_0_0(sys_clk50, sys_rst_n, xclk24, cam_xclk, cam_scl, 
  cam_sda, cam_pclk, cam_vsync, cam_href, cam_data, aclk, aresetn, capture_enable, sleep_request, 
  sleep_status, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tuser, m_axis_tlast, status, 
  gray_tap_valid, gray_tap_data, gray_tap_sof, gray_tap_eol, gray_tap_abort, gray_tap_commit, 
  gray_tap_frame_id, gray_tap_resetn, gray_tap_source_id, gray_tap_verdict_source_id, 
  gray_tap_verdict_valid, gray_tap_verdict_good, gray_tap_provenance_fault)
/* synthesis syn_black_box black_box_pad_pin="sys_clk50,sys_rst_n,xclk24,cam_xclk,cam_scl,cam_sda,cam_pclk,cam_vsync,cam_href,cam_data[7:0],aclk,aresetn,capture_enable,sleep_request,sleep_status[31:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[15:0],m_axis_tuser,m_axis_tlast,status[31:0],gray_tap_valid,gray_tap_data[7:0],gray_tap_sof,gray_tap_eol,gray_tap_abort,gray_tap_commit,gray_tap_frame_id[31:0],gray_tap_resetn,gray_tap_source_id[31:0],gray_tap_verdict_source_id[31:0],gray_tap_verdict_valid,gray_tap_verdict_good,gray_tap_provenance_fault" */;
  input sys_clk50;
  input sys_rst_n;
  input xclk24;
  output cam_xclk;
  output cam_scl;
  inout cam_sda;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  input aclk;
  input aresetn;
  input capture_enable;
  input sleep_request;
  output [31:0]sleep_status;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  output [31:0]status;
  output gray_tap_valid;
  output [7:0]gray_tap_data;
  output gray_tap_sof;
  output gray_tap_eol;
  output gray_tap_abort;
  output gray_tap_commit;
  output [31:0]gray_tap_frame_id;
  output gray_tap_resetn;
  output [31:0]gray_tap_source_id;
  output [31:0]gray_tap_verdict_source_id;
  output gray_tap_verdict_valid;
  output gray_tap_verdict_good;
  output gray_tap_provenance_fault;
endmodule
