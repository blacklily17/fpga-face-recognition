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


// IP VLNV: xilinx.com:module_ref:rgb_lcd_timing_bd:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module facebox_system_rgb_lcd_timing_0_0 (
  lcd_pclk,
  lcd_rst_n,
  s_tvalid,
  s_tready,
  s_tdata,
  s_tuser,
  s_tlast,
  lcd_r,
  lcd_g,
  lcd_b,
  lcd_de,
  lcd_hsync,
  lcd_vsync,
  lcd_bl,
  lcd_underflow_sticky
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_pclk, ASSOCIATED_RESET lcd_rst_n, ASSOCIATED_BUSIF s, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lcd_pclk CLK" *)
input wire lcd_pclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lcd_rst_n RST" *)
input wire lcd_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *)
input wire s_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *)
output wire s_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *)
input wire [15 : 0] s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TUSER" *)
input wire s_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *)
input wire s_tlast;
output wire [4 : 0] lcd_r;
output wire [5 : 0] lcd_g;
output wire [4 : 0] lcd_b;
output wire lcd_de;
output wire lcd_hsync;
output wire lcd_vsync;
output wire lcd_bl;
output wire lcd_underflow_sticky;

  rgb_lcd_timing_bd inst (
    .lcd_pclk(lcd_pclk),
    .lcd_rst_n(lcd_rst_n),
    .s_tvalid(s_tvalid),
    .s_tready(s_tready),
    .s_tdata(s_tdata),
    .s_tuser(s_tuser),
    .s_tlast(s_tlast),
    .lcd_r(lcd_r),
    .lcd_g(lcd_g),
    .lcd_b(lcd_b),
    .lcd_de(lcd_de),
    .lcd_hsync(lcd_hsync),
    .lcd_vsync(lcd_vsync),
    .lcd_bl(lcd_bl),
    .lcd_underflow_sticky(lcd_underflow_sticky)
  );
endmodule
