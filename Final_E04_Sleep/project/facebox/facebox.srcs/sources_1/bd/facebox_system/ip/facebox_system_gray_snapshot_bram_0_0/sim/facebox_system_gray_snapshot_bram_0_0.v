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


// IP VLNV: xilinx.com:module_ref:gray_snapshot_bram_bd:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_gray_snapshot_bram_0_0 (
  aclk,
  bram_we,
  bram_addr,
  bram_wdata,
  bram_clk,
  bram_rst,
  bram_en,
  bram_byte_addr,
  bram_wrdata,
  bram_wrwe,
  bram_rddata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
input wire bram_we;
input wire [14 : 0] bram_addr;
input wire [31 : 0] bram_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram CLK" *)
input wire bram_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram RST" *)
input wire bram_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram EN" *)
input wire bram_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram ADDR" *)
input wire [16 : 0] bram_byte_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram DIN" *)
input wire [31 : 0] bram_wrdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram WE" *)
input wire [3 : 0] bram_wrwe;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram DOUT" *)
output wire [31 : 0] bram_rddata;

  gray_snapshot_bram_bd inst (
    .aclk(aclk),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .bram_wdata(bram_wdata),
    .bram_clk(bram_clk),
    .bram_rst(bram_rst),
    .bram_en(bram_en),
    .bram_byte_addr(bram_byte_addr),
    .bram_wrdata(bram_wrdata),
    .bram_wrwe(bram_wrwe),
    .bram_rddata(bram_rddata)
  );
endmodule
