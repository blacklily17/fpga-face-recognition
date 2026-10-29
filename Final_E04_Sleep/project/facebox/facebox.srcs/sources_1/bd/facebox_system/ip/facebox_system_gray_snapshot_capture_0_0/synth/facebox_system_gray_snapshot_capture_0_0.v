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


// IP VLNV: xilinx.com:module_ref:gray_snapshot_capture_bd:1.0
// IP Revision: 1

(* X_CORE_INFO = "gray_snapshot_capture_bd,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "facebox_system_gray_snapshot_capture_0_0,gray_snapshot_capture_bd,{}" *)
(* CORE_GENERATION_INFO = "facebox_system_gray_snapshot_capture_0_0,gray_snapshot_capture_bd,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=gray_snapshot_capture_bd,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=400,HEIGHT=240,TIMEOUT_TICKS=0x0000000005F5E100}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_gray_snapshot_capture_0_0 (
  aclk,
  aresetn,
  gray_valid,
  gray_sof,
  gray_eol,
  gray_data,
  frame_abort,
  frame_commit,
  request,
  release_frame,
  cancel,
  clear_error,
  committed_frame_id,
  request_id,
  epoch,
  gray_source_id,
  verdict_source_id,
  verdict_valid,
  verdict_good,
  provenance_fault,
  time_ticks,
  busy,
  ready,
  error,
  snap_request_id,
  snap_frame_id,
  snap_epoch,
  snap_error_code,
  snap_source_ticks,
  snap_commit_ticks,
  bram_we,
  bram_addr,
  bram_wdata,
  snap_ready_event,
  snap_abort_event,
  format_error_event,
  snap_timeout_event
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire gray_valid;
input wire gray_sof;
input wire gray_eol;
input wire [7 : 0] gray_data;
input wire frame_abort;
input wire frame_commit;
input wire request;
input wire release_frame;
input wire cancel;
input wire clear_error;
input wire [31 : 0] committed_frame_id;
input wire [31 : 0] request_id;
input wire [31 : 0] epoch;
input wire [31 : 0] gray_source_id;
input wire [31 : 0] verdict_source_id;
input wire verdict_valid;
input wire verdict_good;
input wire provenance_fault;
input wire [63 : 0] time_ticks;
output wire busy;
output wire ready;
output wire error;
output wire [31 : 0] snap_request_id;
output wire [31 : 0] snap_frame_id;
output wire [31 : 0] snap_epoch;
output wire [31 : 0] snap_error_code;
output wire [63 : 0] snap_source_ticks;
output wire [63 : 0] snap_commit_ticks;
output wire bram_we;
output wire [14 : 0] bram_addr;
output wire [31 : 0] bram_wdata;
output wire snap_ready_event;
output wire snap_abort_event;
output wire format_error_event;
output wire snap_timeout_event;

  gray_snapshot_capture_bd #(
    .WIDTH(400),
    .HEIGHT(240),
    .TIMEOUT_TICKS(64'H0000000005F5E100)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .gray_valid(gray_valid),
    .gray_sof(gray_sof),
    .gray_eol(gray_eol),
    .gray_data(gray_data),
    .frame_abort(frame_abort),
    .frame_commit(frame_commit),
    .request(request),
    .release_frame(release_frame),
    .cancel(cancel),
    .clear_error(clear_error),
    .committed_frame_id(committed_frame_id),
    .request_id(request_id),
    .epoch(epoch),
    .gray_source_id(gray_source_id),
    .verdict_source_id(verdict_source_id),
    .verdict_valid(verdict_valid),
    .verdict_good(verdict_good),
    .provenance_fault(provenance_fault),
    .time_ticks(time_ticks),
    .busy(busy),
    .ready(ready),
    .error(error),
    .snap_request_id(snap_request_id),
    .snap_frame_id(snap_frame_id),
    .snap_epoch(snap_epoch),
    .snap_error_code(snap_error_code),
    .snap_source_ticks(snap_source_ticks),
    .snap_commit_ticks(snap_commit_ticks),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .bram_wdata(bram_wdata),
    .snap_ready_event(snap_ready_event),
    .snap_abort_event(snap_abort_event),
    .format_error_event(format_error_event),
    .snap_timeout_event(snap_timeout_event)
  );
endmodule
