// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:19:59 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_rgb_lcd_timing_0_0/facebox_system_rgb_lcd_timing_0_0_stub.v
// Design      : facebox_system_rgb_lcd_timing_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rgb_lcd_timing_bd,Vivado 2018.3" *)
module facebox_system_rgb_lcd_timing_0_0(lcd_pclk, lcd_rst_n, s_tvalid, s_tready, s_tdata, 
  s_tuser, s_tlast, lcd_r, lcd_g, lcd_b, lcd_de, lcd_hsync, lcd_vsync, lcd_bl, lcd_underflow_sticky)
/* synthesis syn_black_box black_box_pad_pin="lcd_pclk,lcd_rst_n,s_tvalid,s_tready,s_tdata[15:0],s_tuser,s_tlast,lcd_r[4:0],lcd_g[5:0],lcd_b[4:0],lcd_de,lcd_hsync,lcd_vsync,lcd_bl,lcd_underflow_sticky" */;
  input lcd_pclk;
  input lcd_rst_n;
  input s_tvalid;
  output s_tready;
  input [15:0]s_tdata;
  input s_tuser;
  input s_tlast;
  output [4:0]lcd_r;
  output [5:0]lcd_g;
  output [4:0]lcd_b;
  output lcd_de;
  output lcd_hsync;
  output lcd_vsync;
  output lcd_bl;
  output lcd_underflow_sticky;
endmodule
