// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:real_camera_wp2_wp3_axis_source:1.0
// IP Revision: 1

(* X_CORE_INFO = "real_camera_wp2_wp3_axis_source,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "facebox_system_real_camera_source_0_0,real_camera_wp2_wp3_axis_source,{}" *)
(* CORE_GENERATION_INFO = "facebox_system_real_camera_source_0_0,real_camera_wp2_wp3_axis_source,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=real_camera_wp2_wp3_axis_source,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_real_camera_source_0_0 (
  sys_clk50,
  sys_rst_n,
  xclk24,
  cam_xclk,
  cam_scl,
  cam_sda,
  cam_pclk,
  cam_vsync,
  cam_href,
  cam_data,
  aclk,
  aresetn,
  capture_enable,
  sleep_request,
  sleep_status,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tuser,
  m_axis_tlast,
  status,
  gray_tap_valid,
  gray_tap_data,
  gray_tap_sof,
  gray_tap_eol,
  gray_tap_abort,
  gray_tap_commit,
  gray_tap_frame_id,
  gray_tap_resetn,
  gray_tap_source_id,
  gray_tap_verdict_source_id,
  gray_tap_verdict_valid,
  gray_tap_verdict_good,
  gray_tap_provenance_fault
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk50, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /camera_clk_wiz_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk50 CLK" *)
input wire sys_clk50;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *)
input wire sys_rst_n;
input wire xclk24;
output wire cam_xclk;
output wire cam_scl;
inout wire cam_sda;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN facebox_system_cam_pclk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *)
input wire cam_pclk;
input wire cam_vsync;
input wire cam_href;
input wire [7 : 0] cam_data;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire capture_enable;
input wire sleep_request;
output wire [31 : 0] sleep_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [15 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
output wire m_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
output wire [31 : 0] status;
output wire gray_tap_valid;
output wire [7 : 0] gray_tap_data;
output wire gray_tap_sof;
output wire gray_tap_eol;
output wire gray_tap_abort;
output wire gray_tap_commit;
output wire [31 : 0] gray_tap_frame_id;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gray_tap_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 gray_tap_resetn RST" *)
output wire gray_tap_resetn;
output wire [31 : 0] gray_tap_source_id;
output wire [31 : 0] gray_tap_verdict_source_id;
output wire gray_tap_verdict_valid;
output wire gray_tap_verdict_good;
output wire gray_tap_provenance_fault;

  real_camera_wp2_wp3_axis_source inst (
    .sys_clk50(sys_clk50),
    .sys_rst_n(sys_rst_n),
    .xclk24(xclk24),
    .cam_xclk(cam_xclk),
    .cam_scl(cam_scl),
    .cam_sda(cam_sda),
    .cam_pclk(cam_pclk),
    .cam_vsync(cam_vsync),
    .cam_href(cam_href),
    .cam_data(cam_data),
    .aclk(aclk),
    .aresetn(aresetn),
    .capture_enable(capture_enable),
    .sleep_request(sleep_request),
    .sleep_status(sleep_status),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tuser(m_axis_tuser),
    .m_axis_tlast(m_axis_tlast),
    .status(status),
    .gray_tap_valid(gray_tap_valid),
    .gray_tap_data(gray_tap_data),
    .gray_tap_sof(gray_tap_sof),
    .gray_tap_eol(gray_tap_eol),
    .gray_tap_abort(gray_tap_abort),
    .gray_tap_commit(gray_tap_commit),
    .gray_tap_frame_id(gray_tap_frame_id),
    .gray_tap_resetn(gray_tap_resetn),
    .gray_tap_source_id(gray_tap_source_id),
    .gray_tap_verdict_source_id(gray_tap_verdict_source_id),
    .gray_tap_verdict_valid(gray_tap_verdict_valid),
    .gray_tap_verdict_good(gray_tap_verdict_good),
    .gray_tap_provenance_fault(gray_tap_provenance_fault)
  );
endmodule
