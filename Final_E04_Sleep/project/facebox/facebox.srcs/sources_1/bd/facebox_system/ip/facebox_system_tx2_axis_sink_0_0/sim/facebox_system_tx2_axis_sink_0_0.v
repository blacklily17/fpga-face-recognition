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


// IP VLNV: xilinx.com:module_ref:tx2_axis_sink:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_tx2_axis_sink_0_0 (
  pixel_clk,
  serial_clk,
  rst_n,
  s_tvalid,
  s_tready,
  s_tdata,
  s_tuser,
  s_tlast,
  tmds_data_p,
  tmds_data_n,
  tmds_clk_p,
  tmds_clk_n,
  status,
  box_src_clk,
  box_src_rst_n,
  box_send,
  box_recover,
  box_invalidate,
  hdmi_disable,
  box_payload,
  box_busy,
  box_ack,
  box_timeout,
  box_channel_ready,
  box_reset_event,
  box_expired
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET rst_n, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *)
input wire pixel_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME serial_clk, FREQ_HZ 371250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 serial_clk CLK" *)
input wire serial_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *)
input wire s_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *)
output wire s_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *)
input wire [15 : 0] s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TUSER" *)
input wire s_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *)
input wire s_tlast;
output wire [2 : 0] tmds_data_p;
output wire [2 : 0] tmds_data_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tmds_clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_p, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tmds_clk_p CLK" *)
output wire tmds_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tmds_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tmds_clk_n CLK" *)
output wire tmds_clk_n;
output wire [31 : 0] status;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME box_src_clk, ASSOCIATED_RESET box_src_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 box_src_clk CLK" *)
input wire box_src_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME box_src_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 box_src_rst_n RST" *)
input wire box_src_rst_n;
input wire box_send;
input wire box_recover;
input wire box_invalidate;
input wire hdmi_disable;
input wire [447 : 0] box_payload;
output wire box_busy;
output wire box_ack;
output wire box_timeout;
output wire box_channel_ready;
output wire box_reset_event;
output wire box_expired;

  tx2_axis_sink inst (
    .pixel_clk(pixel_clk),
    .serial_clk(serial_clk),
    .rst_n(rst_n),
    .s_tvalid(s_tvalid),
    .s_tready(s_tready),
    .s_tdata(s_tdata),
    .s_tuser(s_tuser),
    .s_tlast(s_tlast),
    .tmds_data_p(tmds_data_p),
    .tmds_data_n(tmds_data_n),
    .tmds_clk_p(tmds_clk_p),
    .tmds_clk_n(tmds_clk_n),
    .status(status),
    .box_src_clk(box_src_clk),
    .box_src_rst_n(box_src_rst_n),
    .box_send(box_send),
    .box_recover(box_recover),
    .box_invalidate(box_invalidate),
    .hdmi_disable(hdmi_disable),
    .box_payload(box_payload),
    .box_busy(box_busy),
    .box_ack(box_ack),
    .box_timeout(box_timeout),
    .box_channel_ready(box_channel_ready),
    .box_reset_event(box_reset_event),
    .box_expired(box_expired)
  );
endmodule
