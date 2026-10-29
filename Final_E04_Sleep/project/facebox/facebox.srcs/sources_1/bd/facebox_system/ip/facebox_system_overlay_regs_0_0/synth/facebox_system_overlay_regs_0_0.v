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


// IP VLNV: xilinx.com:module_ref:overlay_regs_bd:1.0
// IP Revision: 1

(* X_CORE_INFO = "overlay_regs_bd,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "facebox_system_overlay_regs_0_0,overlay_regs_bd,{}" *)
(* CORE_GENERATION_INFO = "facebox_system_overlay_regs_0_0,overlay_regs_bd,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=overlay_regs_bd,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_overlay_regs_0_0 (
  aclk,
  aresetn,
  s_axi_awaddr,
  s_axi_araddr,
  s_axi_awvalid,
  s_axi_wvalid,
  s_axi_bready,
  s_axi_arvalid,
  s_axi_rready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_awready,
  s_axi_wready,
  s_axi_bvalid,
  s_axi_arready,
  s_axi_rvalid,
  s_axi_bresp,
  s_axi_rresp,
  s_axi_rdata,
  snap_busy,
  snap_ready,
  snap_error,
  mailbox_busy,
  channel_ready,
  channel_reset_event,
  snap_request_id,
  snap_frame_id,
  snap_epoch,
  snap_error_code,
  box_ack_sequence,
  snap_source_ticks,
  snap_commit_ticks,
  snap_ready_event,
  snap_abort_event,
  format_error_event,
  snap_timeout_event,
  box_expire_event,
  mailbox_timeout_event,
  request,
  release_frame,
  cancel,
  clear_error,
  box_send,
  mailbox_recover,
  epoch_changed,
  request_id,
  epoch,
  box_shadow,
  time_ticks
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [15 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [15 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_\
THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
input wire snap_busy;
input wire snap_ready;
input wire snap_error;
input wire mailbox_busy;
input wire channel_ready;
input wire channel_reset_event;
input wire [31 : 0] snap_request_id;
input wire [31 : 0] snap_frame_id;
input wire [31 : 0] snap_epoch;
input wire [31 : 0] snap_error_code;
input wire [31 : 0] box_ack_sequence;
input wire [63 : 0] snap_source_ticks;
input wire [63 : 0] snap_commit_ticks;
input wire snap_ready_event;
input wire snap_abort_event;
input wire format_error_event;
input wire snap_timeout_event;
input wire box_expire_event;
input wire mailbox_timeout_event;
output wire request;
output wire release_frame;
output wire cancel;
output wire clear_error;
output wire box_send;
output wire mailbox_recover;
output wire epoch_changed;
output wire [31 : 0] request_id;
output wire [31 : 0] epoch;
output wire [447 : 0] box_shadow;
output wire [63 : 0] time_ticks;

  overlay_regs_bd inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_rready(s_axi_rready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_awready(s_axi_awready),
    .s_axi_wready(s_axi_wready),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rdata(s_axi_rdata),
    .snap_busy(snap_busy),
    .snap_ready(snap_ready),
    .snap_error(snap_error),
    .mailbox_busy(mailbox_busy),
    .channel_ready(channel_ready),
    .channel_reset_event(channel_reset_event),
    .snap_request_id(snap_request_id),
    .snap_frame_id(snap_frame_id),
    .snap_epoch(snap_epoch),
    .snap_error_code(snap_error_code),
    .box_ack_sequence(box_ack_sequence),
    .snap_source_ticks(snap_source_ticks),
    .snap_commit_ticks(snap_commit_ticks),
    .snap_ready_event(snap_ready_event),
    .snap_abort_event(snap_abort_event),
    .format_error_event(format_error_event),
    .snap_timeout_event(snap_timeout_event),
    .box_expire_event(box_expire_event),
    .mailbox_timeout_event(mailbox_timeout_event),
    .request(request),
    .release_frame(release_frame),
    .cancel(cancel),
    .clear_error(clear_error),
    .box_send(box_send),
    .mailbox_recover(mailbox_recover),
    .epoch_changed(epoch_changed),
    .request_id(request_id),
    .epoch(epoch),
    .box_shadow(box_shadow),
    .time_ticks(time_ticks)
  );
endmodule
