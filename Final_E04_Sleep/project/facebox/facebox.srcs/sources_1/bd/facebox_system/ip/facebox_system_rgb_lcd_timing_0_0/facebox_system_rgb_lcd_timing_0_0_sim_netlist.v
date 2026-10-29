// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:19:59 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_rgb_lcd_timing_0_0/facebox_system_rgb_lcd_timing_0_0_sim_netlist.v
// Design      : facebox_system_rgb_lcd_timing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_rgb_lcd_timing_0_0,rgb_lcd_timing_bd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rgb_lcd_timing_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_rgb_lcd_timing_0_0
   (lcd_pclk,
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
    lcd_underflow_sticky);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lcd_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_pclk, ASSOCIATED_RESET lcd_rst_n, ASSOCIATED_BUSIF s, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, INSERT_VIP 0" *) input lcd_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lcd_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input lcd_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *) input s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *) output s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *) input [15:0]s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TUSER" *) input s_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_tlast;
  output [4:0]lcd_r;
  output [5:0]lcd_g;
  output [4:0]lcd_b;
  output lcd_de;
  output lcd_hsync;
  output lcd_vsync;
  output lcd_bl;
  output lcd_underflow_sticky;

  wire [4:0]lcd_b;
  wire lcd_bl;
  wire lcd_de;
  wire [5:0]lcd_g;
  wire lcd_hsync;
  wire lcd_pclk;
  wire [4:0]lcd_r;
  wire lcd_rst_n;
  wire lcd_underflow_sticky;
  wire lcd_vsync;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;

  facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd inst
       (.lcd_b(lcd_b),
        .lcd_bl(lcd_bl),
        .lcd_de(lcd_de),
        .lcd_g(lcd_g),
        .lcd_hsync(lcd_hsync),
        .lcd_pclk(lcd_pclk),
        .lcd_r(lcd_r),
        .lcd_rst_n(lcd_rst_n),
        .lcd_underflow_sticky(lcd_underflow_sticky),
        .lcd_vsync(lcd_vsync),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid));
endmodule

(* ORIG_REF_NAME = "rgb_lcd_timing" *) 
module facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing
   (lcd_r,
    lcd_g,
    lcd_b,
    lcd_de,
    lcd_hsync,
    lcd_vsync,
    lcd_bl,
    s_tready,
    lcd_underflow_sticky,
    s_tlast,
    s_tuser,
    s_tvalid,
    lcd_pclk,
    lcd_rst_n,
    s_tdata);
  output [4:0]lcd_r;
  output [5:0]lcd_g;
  output [4:0]lcd_b;
  output lcd_de;
  output lcd_hsync;
  output lcd_vsync;
  output lcd_bl;
  output s_tready;
  output lcd_underflow_sticky;
  input s_tlast;
  input s_tuser;
  input s_tvalid;
  input lcd_pclk;
  input lcd_rst_n;
  input [15:0]s_tdata;

  wire [10:0]h_count;
  wire \h_count[10]_i_2_n_0 ;
  wire \h_count[6]_i_1_n_0 ;
  wire \h_count[7]_i_2_n_0 ;
  wire \h_count[9]_i_2_n_0 ;
  wire \h_count_reg_n_0_[0] ;
  wire \h_count_reg_n_0_[10] ;
  wire \h_count_reg_n_0_[1] ;
  wire \h_count_reg_n_0_[2] ;
  wire \h_count_reg_n_0_[3] ;
  wire \h_count_reg_n_0_[4] ;
  wire \h_count_reg_n_0_[5] ;
  wire \h_count_reg_n_0_[6] ;
  wire \h_count_reg_n_0_[7] ;
  wire \h_count_reg_n_0_[8] ;
  wire \h_count_reg_n_0_[9] ;
  wire [4:0]lcd_b;
  wire \lcd_b[0]_i_1_n_0 ;
  wire \lcd_b[1]_i_1_n_0 ;
  wire \lcd_b[2]_i_1_n_0 ;
  wire \lcd_b[3]_i_1_n_0 ;
  wire \lcd_b[4]_i_1_n_0 ;
  wire lcd_bl;
  wire lcd_de;
  wire [5:0]lcd_g;
  wire \lcd_g[0]_i_1_n_0 ;
  wire \lcd_g[1]_i_1_n_0 ;
  wire \lcd_g[2]_i_1_n_0 ;
  wire \lcd_g[3]_i_1_n_0 ;
  wire \lcd_g[4]_i_1_n_0 ;
  wire \lcd_g[5]_i_1_n_0 ;
  wire lcd_hsync;
  wire lcd_pclk;
  wire [4:0]lcd_r;
  wire \lcd_r[0]_i_1_n_0 ;
  wire \lcd_r[1]_i_1_n_0 ;
  wire \lcd_r[2]_i_1_n_0 ;
  wire \lcd_r[3]_i_1_n_0 ;
  wire \lcd_r[4]_i_2_n_0 ;
  wire \lcd_r[4]_i_3_n_0 ;
  wire \lcd_r[4]_i_4_n_0 ;
  wire lcd_rst_n;
  wire lcd_underflow_sticky;
  wire lcd_underflow_sticky_i_1_n_0;
  wire lcd_underflow_sticky_i_2_n_0;
  wire lcd_underflow_sticky_i_3_n_0;
  wire lcd_underflow_sticky_i_4_n_0;
  wire lcd_underflow_sticky_i_5_n_0;
  wire lcd_vsync;
  wire lcd_vsync_i_1_n_0;
  wire lcd_vsync_i_2_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_23_in;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tready_INST_0_i_10_n_0;
  wire s_tready_INST_0_i_11_n_0;
  wire s_tready_INST_0_i_12_n_0;
  wire s_tready_INST_0_i_1_n_0;
  wire s_tready_INST_0_i_3_n_0;
  wire s_tready_INST_0_i_4_n_0;
  wire s_tready_INST_0_i_5_n_0;
  wire s_tready_INST_0_i_6_n_0;
  wire s_tready_INST_0_i_7_n_0;
  wire s_tready_INST_0_i_8_n_0;
  wire s_tready_INST_0_i_9_n_0;
  wire s_tuser;
  wire s_tvalid;
  wire stream_locked;
  wire stream_locked5_out;
  wire stream_locked_i_1_n_0;
  wire stream_locked_i_2_n_0;
  wire stream_locked_i_3_n_0;
  wire stream_locked_i_4_n_0;
  wire v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[6]_i_2_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[8]_i_2_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count_reg_n_0_[0] ;
  wire \v_count_reg_n_0_[1] ;
  wire \v_count_reg_n_0_[2] ;
  wire \v_count_reg_n_0_[3] ;
  wire \v_count_reg_n_0_[4] ;
  wire \v_count_reg_n_0_[5] ;
  wire \v_count_reg_n_0_[6] ;
  wire \v_count_reg_n_0_[7] ;
  wire \v_count_reg_n_0_[8] ;
  wire \v_count_reg_n_0_[9] ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .O(h_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \h_count[10]_i_1 
       (.I0(\h_count_reg_n_0_[9] ),
        .I1(\h_count[10]_i_2_n_0 ),
        .I2(\h_count_reg_n_0_[8] ),
        .I3(\h_count_reg_n_0_[10] ),
        .I4(v_count),
        .O(h_count[10]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \h_count[10]_i_2 
       (.I0(\h_count_reg_n_0_[7] ),
        .I1(\h_count_reg_n_0_[6] ),
        .I2(\h_count[7]_i_2_n_0 ),
        .I3(\h_count_reg_n_0_[4] ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\h_count_reg_n_0_[5] ),
        .O(\h_count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(\h_count_reg_n_0_[1] ),
        .I1(\h_count_reg_n_0_[0] ),
        .O(h_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[2]_i_1 
       (.I0(\h_count_reg_n_0_[2] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[0] ),
        .O(h_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[2] ),
        .I3(\h_count_reg_n_0_[3] ),
        .O(h_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[0] ),
        .I2(\h_count_reg_n_0_[1] ),
        .I3(\h_count_reg_n_0_[2] ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(h_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000F708)) 
    \h_count[5]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[4] ),
        .I2(\h_count[7]_i_2_n_0 ),
        .I3(\h_count_reg_n_0_[5] ),
        .I4(v_count),
        .O(h_count[5]));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \h_count[6]_i_1 
       (.I0(\h_count_reg_n_0_[6] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[3] ),
        .I3(\h_count_reg_n_0_[4] ),
        .I4(\h_count[7]_i_2_n_0 ),
        .O(\h_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \h_count[7]_i_1 
       (.I0(\h_count_reg_n_0_[7] ),
        .I1(\h_count_reg_n_0_[6] ),
        .I2(\h_count_reg_n_0_[4] ),
        .I3(\h_count_reg_n_0_[5] ),
        .I4(\h_count[7]_i_2_n_0 ),
        .I5(\h_count_reg_n_0_[3] ),
        .O(h_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \h_count[7]_i_2 
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[2] ),
        .O(\h_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \h_count[8]_i_1 
       (.I0(\h_count_reg_n_0_[8] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count[9]_i_2_n_0 ),
        .I3(\h_count_reg_n_0_[6] ),
        .I4(\h_count_reg_n_0_[7] ),
        .O(h_count[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \h_count[9]_i_1 
       (.I0(\h_count_reg_n_0_[9] ),
        .I1(\h_count_reg_n_0_[7] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count[9]_i_2_n_0 ),
        .I4(\h_count_reg_n_0_[5] ),
        .I5(\h_count_reg_n_0_[8] ),
        .O(h_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count[9]_i_2 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[4] ),
        .I2(\h_count_reg_n_0_[2] ),
        .I3(\h_count_reg_n_0_[1] ),
        .I4(\h_count_reg_n_0_[0] ),
        .O(\h_count[9]_i_2_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[0]),
        .Q(\h_count_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \h_count_reg[10] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[10]),
        .Q(\h_count_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \h_count_reg[1] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[1]),
        .Q(\h_count_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \h_count_reg[2] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[2]),
        .Q(\h_count_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \h_count_reg[3] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[3]),
        .Q(\h_count_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \h_count_reg[4] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[4]),
        .Q(\h_count_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \h_count_reg[5] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[5]),
        .Q(\h_count_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \h_count_reg[6] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\h_count[6]_i_1_n_0 ),
        .Q(\h_count_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \h_count_reg[7] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[7]),
        .Q(\h_count_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \h_count_reg[8] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[8]),
        .Q(\h_count_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \h_count_reg[9] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(h_count[9]),
        .Q(\h_count_reg_n_0_[9] ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_b[0]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[0]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_b[1]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[1]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_b[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_b[2]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[2]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_b[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_b[3]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[3]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_b[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_b[4]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[4]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_b[4]_i_1_n_0 ));
  FDRE \lcd_b_reg[0] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_b[0]_i_1_n_0 ),
        .Q(lcd_b[0]),
        .R(p_0_in));
  FDRE \lcd_b_reg[1] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_b[1]_i_1_n_0 ),
        .Q(lcd_b[1]),
        .R(p_0_in));
  FDRE \lcd_b_reg[2] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_b[2]_i_1_n_0 ),
        .Q(lcd_b[2]),
        .R(p_0_in));
  FDRE \lcd_b_reg[3] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_b[3]_i_1_n_0 ),
        .Q(lcd_b[3]),
        .R(p_0_in));
  FDRE \lcd_b_reg[4] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_b[4]_i_1_n_0 ),
        .Q(lcd_b[4]),
        .R(p_0_in));
  FDRE lcd_bl_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(lcd_rst_n),
        .Q(lcd_bl),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    lcd_de_i_1
       (.I0(s_tready_INST_0_i_1_n_0),
        .O(p_23_in));
  FDRE lcd_de_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(p_23_in),
        .Q(lcd_de),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[0]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[5]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[1]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[6]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[2]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[7]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[3]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[8]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[4]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[9]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_g[5]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[10]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_g[5]_i_1_n_0 ));
  FDRE \lcd_g_reg[0] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[0]_i_1_n_0 ),
        .Q(lcd_g[0]),
        .R(p_0_in));
  FDRE \lcd_g_reg[1] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[1]_i_1_n_0 ),
        .Q(lcd_g[1]),
        .R(p_0_in));
  FDRE \lcd_g_reg[2] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[2]_i_1_n_0 ),
        .Q(lcd_g[2]),
        .R(p_0_in));
  FDRE \lcd_g_reg[3] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[3]_i_1_n_0 ),
        .Q(lcd_g[3]),
        .R(p_0_in));
  FDRE \lcd_g_reg[4] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[4]_i_1_n_0 ),
        .Q(lcd_g[4]),
        .R(p_0_in));
  FDRE \lcd_g_reg[5] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_g[5]_i_1_n_0 ),
        .Q(lcd_g[5]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    lcd_hsync_i_1
       (.I0(\h_count_reg_n_0_[7] ),
        .I1(\h_count_reg_n_0_[9] ),
        .I2(\h_count_reg_n_0_[10] ),
        .I3(\h_count_reg_n_0_[8] ),
        .O(p_1_in));
  FDSE lcd_hsync_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(lcd_hsync),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_r[0]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[11]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_r[1]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[12]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_r[2]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[13]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_r[3]_i_1 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[14]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_r[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lcd_r[4]_i_1 
       (.I0(lcd_rst_n),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lcd_r[4]_i_2 
       (.I0(\lcd_r[4]_i_3_n_0 ),
        .I1(s_tdata[15]),
        .I2(s_tready_INST_0_i_1_n_0),
        .O(\lcd_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0A000000020000)) 
    \lcd_r[4]_i_3 
       (.I0(stream_locked),
        .I1(s_tready_INST_0_i_1_n_0),
        .I2(\lcd_r[4]_i_4_n_0 ),
        .I3(s_tuser),
        .I4(s_tvalid),
        .I5(stream_locked5_out),
        .O(\lcd_r[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lcd_r[4]_i_4 
       (.I0(s_tlast),
        .I1(lcd_underflow_sticky_i_4_n_0),
        .O(\lcd_r[4]_i_4_n_0 ));
  FDRE \lcd_r_reg[0] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_r[0]_i_1_n_0 ),
        .Q(lcd_r[0]),
        .R(p_0_in));
  FDRE \lcd_r_reg[1] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_r[1]_i_1_n_0 ),
        .Q(lcd_r[1]),
        .R(p_0_in));
  FDRE \lcd_r_reg[2] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_r[2]_i_1_n_0 ),
        .Q(lcd_r[2]),
        .R(p_0_in));
  FDRE \lcd_r_reg[3] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_r[3]_i_1_n_0 ),
        .Q(lcd_r[3]),
        .R(p_0_in));
  FDRE \lcd_r_reg[4] 
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(\lcd_r[4]_i_2_n_0 ),
        .Q(lcd_r[4]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    lcd_underflow_sticky_i_1
       (.I0(lcd_underflow_sticky_i_2_n_0),
        .I1(s_tready_INST_0_i_1_n_0),
        .I2(stream_locked),
        .I3(lcd_underflow_sticky_i_3_n_0),
        .I4(lcd_underflow_sticky),
        .O(lcd_underflow_sticky_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6FFF0000)) 
    lcd_underflow_sticky_i_2
       (.I0(lcd_underflow_sticky_i_4_n_0),
        .I1(s_tlast),
        .I2(s_tuser),
        .I3(s_tvalid),
        .I4(stream_locked5_out),
        .O(lcd_underflow_sticky_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDFFD)) 
    lcd_underflow_sticky_i_3
       (.I0(s_tvalid),
        .I1(s_tuser),
        .I2(lcd_underflow_sticky_i_4_n_0),
        .I3(s_tlast),
        .O(lcd_underflow_sticky_i_3_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    lcd_underflow_sticky_i_4
       (.I0(lcd_underflow_sticky_i_5_n_0),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[10] ),
        .I3(\h_count_reg_n_0_[9] ),
        .I4(\h_count_reg_n_0_[8] ),
        .I5(\h_count_reg_n_0_[7] ),
        .O(lcd_underflow_sticky_i_4_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    lcd_underflow_sticky_i_5
       (.I0(\h_count_reg_n_0_[6] ),
        .I1(\h_count_reg_n_0_[4] ),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[2] ),
        .I4(\h_count_reg_n_0_[1] ),
        .I5(\h_count_reg_n_0_[0] ),
        .O(lcd_underflow_sticky_i_5_n_0));
  FDRE lcd_underflow_sticky_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(lcd_underflow_sticky_i_1_n_0),
        .Q(lcd_underflow_sticky),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    lcd_vsync_i_1
       (.I0(lcd_vsync_i_2_n_0),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\v_count_reg_n_0_[3] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count_reg_n_0_[4] ),
        .I5(\v_count_reg_n_0_[1] ),
        .O(lcd_vsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    lcd_vsync_i_2
       (.I0(\v_count_reg_n_0_[9] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(\v_count_reg_n_0_[7] ),
        .I3(\v_count_reg_n_0_[8] ),
        .O(lcd_vsync_i_2_n_0));
  FDSE lcd_vsync_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(lcd_vsync_i_1_n_0),
        .Q(lcd_vsync),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDCDCDFDC)) 
    s_tready_INST_0
       (.I0(s_tready_INST_0_i_1_n_0),
        .I1(stream_locked5_out),
        .I2(stream_locked),
        .I3(s_tvalid),
        .I4(s_tuser),
        .O(s_tready));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEFEEEFF)) 
    s_tready_INST_0_i_1
       (.I0(s_tready_INST_0_i_3_n_0),
        .I1(s_tready_INST_0_i_4_n_0),
        .I2(s_tready_INST_0_i_5_n_0),
        .I3(s_tready_INST_0_i_6_n_0),
        .I4(\v_count_reg_n_0_[5] ),
        .I5(\v_count_reg_n_0_[9] ),
        .O(s_tready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_tready_INST_0_i_10
       (.I0(\h_count_reg_n_0_[8] ),
        .I1(\h_count_reg_n_0_[10] ),
        .I2(\h_count_reg_n_0_[9] ),
        .O(s_tready_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_tready_INST_0_i_11
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[3] ),
        .O(s_tready_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_tready_INST_0_i_12
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[8] ),
        .I3(\h_count_reg_n_0_[5] ),
        .O(s_tready_INST_0_i_12_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    s_tready_INST_0_i_2
       (.I0(s_tready_INST_0_i_7_n_0),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[3] ),
        .I4(s_tready_INST_0_i_8_n_0),
        .O(stream_locked5_out));
  LUT5 #(
    .INIT(32'h20000000)) 
    s_tready_INST_0_i_3
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(s_tready_INST_0_i_9_n_0),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[4] ),
        .I4(\h_count_reg_n_0_[6] ),
        .O(s_tready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hABAABBBBBBBBBBBB)) 
    s_tready_INST_0_i_4
       (.I0(\h_count_reg_n_0_[10] ),
        .I1(s_tready_INST_0_i_10_n_0),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(s_tready_INST_0_i_11_n_0),
        .I4(\h_count_reg_n_0_[7] ),
        .I5(\h_count_reg_n_0_[6] ),
        .O(s_tready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    s_tready_INST_0_i_5
       (.I0(\v_count_reg_n_0_[1] ),
        .I1(\v_count_reg_n_0_[0] ),
        .I2(\v_count_reg_n_0_[3] ),
        .I3(\v_count_reg_n_0_[2] ),
        .I4(\v_count_reg_n_0_[4] ),
        .O(s_tready_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_tready_INST_0_i_6
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[7] ),
        .I2(\v_count_reg_n_0_[6] ),
        .O(s_tready_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    s_tready_INST_0_i_7
       (.I0(stream_locked),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[2] ),
        .I3(\h_count_reg_n_0_[4] ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\v_count[6]_i_2_n_0 ),
        .O(s_tready_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    s_tready_INST_0_i_8
       (.I0(lcd_vsync_i_2_n_0),
        .I1(s_tready_INST_0_i_12_n_0),
        .I2(\h_count_reg_n_0_[7] ),
        .I3(\h_count_reg_n_0_[6] ),
        .I4(\h_count_reg_n_0_[10] ),
        .I5(\h_count_reg_n_0_[9] ),
        .O(s_tready_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    s_tready_INST_0_i_9
       (.I0(\h_count_reg_n_0_[9] ),
        .I1(\h_count_reg_n_0_[8] ),
        .I2(\h_count_reg_n_0_[7] ),
        .O(s_tready_INST_0_i_9_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    stream_locked_i_1
       (.I0(lcd_rst_n),
        .I1(stream_locked_i_2_n_0),
        .I2(lcd_underflow_sticky_i_2_n_0),
        .O(stream_locked_i_1_n_0));
  LUT5 #(
    .INIT(32'hFCF0FEF0)) 
    stream_locked_i_2
       (.I0(stream_locked_i_3_n_0),
        .I1(s_tready_INST_0_i_1_n_0),
        .I2(stream_locked5_out),
        .I3(stream_locked),
        .I4(lcd_underflow_sticky_i_3_n_0),
        .O(stream_locked_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    stream_locked_i_3
       (.I0(stream_locked_i_4_n_0),
        .I1(s_tready_INST_0_i_6_n_0),
        .I2(\v_count_reg_n_0_[9] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[1] ),
        .I5(lcd_underflow_sticky_i_4_n_0),
        .O(stream_locked_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    stream_locked_i_4
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[4] ),
        .O(stream_locked_i_4_n_0));
  FDRE stream_locked_reg
       (.C(lcd_pclk),
        .CE(1'b1),
        .D(stream_locked_i_1_n_0),
        .Q(stream_locked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \v_count[0]_i_1 
       (.I0(\v_count[9]_i_5_n_0 ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[9] ),
        .I4(\v_count_reg_n_0_[0] ),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0FF7F000)) 
    \v_count[2]_i_1 
       (.I0(\v_count_reg_n_0_[9] ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[2] ),
        .O(\v_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5AA25AAAAAAAAAAA)) 
    \v_count[3]_i_1 
       (.I0(\v_count_reg_n_0_[3] ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[9] ),
        .I5(\v_count_reg_n_0_[2] ),
        .O(\v_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[3] ),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[1] ),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[2] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(\v_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \v_count[6]_i_1 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count[6]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[5] ),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[6]_i_2 
       (.I0(\v_count_reg_n_0_[0] ),
        .I1(\v_count_reg_n_0_[1] ),
        .O(\v_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \v_count[7]_i_1 
       (.I0(\v_count_reg_n_0_[7] ),
        .I1(\v_count[8]_i_2_n_0 ),
        .I2(\v_count_reg_n_0_[6] ),
        .O(\v_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \v_count[8]_i_1 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(\v_count[8]_i_2_n_0 ),
        .I3(\v_count_reg_n_0_[7] ),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_count[8]_i_2 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[5] ),
        .O(\v_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \v_count[9]_i_1 
       (.I0(\h_count[9]_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[7] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[10] ),
        .I4(\h_count_reg_n_0_[9] ),
        .I5(\v_count[9]_i_3_n_0 ),
        .O(v_count));
  LUT6 #(
    .INIT(64'h9999991999999999)) 
    \v_count[9]_i_2 
       (.I0(\v_count_reg_n_0_[9] ),
        .I1(\v_count[9]_i_4_n_0 ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\v_count_reg_n_0_[0] ),
        .I5(\v_count[9]_i_5_n_0 ),
        .O(\v_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \v_count[9]_i_3 
       (.I0(\h_count_reg_n_0_[5] ),
        .I1(\h_count_reg_n_0_[8] ),
        .O(\v_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \v_count[9]_i_4 
       (.I0(\v_count_reg_n_0_[7] ),
        .I1(\v_count[8]_i_2_n_0 ),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(\v_count_reg_n_0_[8] ),
        .O(\v_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \v_count[9]_i_5 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[7] ),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(\v_count_reg_n_0_[5] ),
        .I4(\v_count_reg_n_0_[3] ),
        .I5(\v_count_reg_n_0_[4] ),
        .O(\v_count[9]_i_5_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \v_count_reg[1] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \v_count_reg[2] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \v_count_reg[3] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \v_count_reg[4] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \v_count_reg[5] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \v_count_reg[6] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \v_count_reg[7] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \v_count_reg[8] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \v_count_reg[9] 
       (.C(lcd_pclk),
        .CE(v_count),
        .D(\v_count[9]_i_2_n_0 ),
        .Q(\v_count_reg_n_0_[9] ),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "rgb_lcd_timing_bd" *) 
module facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd
   (lcd_r,
    lcd_g,
    lcd_b,
    lcd_de,
    lcd_hsync,
    lcd_vsync,
    lcd_bl,
    s_tready,
    lcd_underflow_sticky,
    s_tlast,
    s_tuser,
    s_tvalid,
    lcd_pclk,
    lcd_rst_n,
    s_tdata);
  output [4:0]lcd_r;
  output [5:0]lcd_g;
  output [4:0]lcd_b;
  output lcd_de;
  output lcd_hsync;
  output lcd_vsync;
  output lcd_bl;
  output s_tready;
  output lcd_underflow_sticky;
  input s_tlast;
  input s_tuser;
  input s_tvalid;
  input lcd_pclk;
  input lcd_rst_n;
  input [15:0]s_tdata;

  wire [4:0]lcd_b;
  wire lcd_bl;
  wire lcd_de;
  wire [5:0]lcd_g;
  wire lcd_hsync;
  wire lcd_pclk;
  wire [4:0]lcd_r;
  wire lcd_rst_n;
  wire lcd_underflow_sticky;
  wire lcd_vsync;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;

  facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing u_m17
       (.lcd_b(lcd_b),
        .lcd_bl(lcd_bl),
        .lcd_de(lcd_de),
        .lcd_g(lcd_g),
        .lcd_hsync(lcd_hsync),
        .lcd_pclk(lcd_pclk),
        .lcd_r(lcd_r),
        .lcd_rst_n(lcd_rst_n),
        .lcd_underflow_sticky(lcd_underflow_sticky),
        .lcd_vsync(lcd_vsync),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
