//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Oct 29 11:15:07 2026
//Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
//Command     : generate_target facebox_system_wrapper.bd
//Design      : facebox_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module facebox_system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cam_data,
    cam_href,
    cam_pclk,
    cam_scl,
    cam_sda,
    cam_vsync,
    cam_xclk,
    key_n,
    lcd_b,
    lcd_bl,
    lcd_de,
    lcd_g,
    lcd_hsync,
    lcd_pclk,
    lcd_r,
    lcd_vsync,
    tmds_clk_n,
    tmds_clk_p,
    tmds_data_n,
    tmds_data_p,
    touch_gpio_tri_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [7:0]cam_data;
  input cam_href;
  input cam_pclk;
  output cam_scl;
  inout cam_sda;
  input cam_vsync;
  output cam_xclk;
  input [1:0]key_n;
  output [4:0]lcd_b;
  output lcd_bl;
  output lcd_de;
  output [5:0]lcd_g;
  output lcd_hsync;
  output lcd_pclk;
  output [4:0]lcd_r;
  output lcd_vsync;
  output tmds_clk_n;
  output tmds_clk_p;
  output [2:0]tmds_data_n;
  output [2:0]tmds_data_p;
  inout [1:0]touch_gpio_tri_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire cam_xclk;
  wire [1:0]key_n;
  wire [4:0]lcd_b;
  wire lcd_bl;
  wire lcd_de;
  wire [5:0]lcd_g;
  wire lcd_hsync;
  wire lcd_pclk;
  wire [4:0]lcd_r;
  wire lcd_vsync;
  wire tmds_clk_n;
  wire tmds_clk_p;
  wire [2:0]tmds_data_n;
  wire [2:0]tmds_data_p;
  wire [0:0]touch_gpio_tri_i_0;
  wire [1:1]touch_gpio_tri_i_1;
  wire [0:0]touch_gpio_tri_io_0;
  wire [1:1]touch_gpio_tri_io_1;
  wire [0:0]touch_gpio_tri_o_0;
  wire [1:1]touch_gpio_tri_o_1;
  wire [0:0]touch_gpio_tri_t_0;
  wire [1:1]touch_gpio_tri_t_1;

  facebox_system facebox_system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .key_n(key_n),
        .lcd_b(lcd_b),
        .lcd_bl(lcd_bl),
        .lcd_de(lcd_de),
        .lcd_g(lcd_g),
        .lcd_hsync(lcd_hsync),
        .lcd_pclk(lcd_pclk),
        .lcd_r(lcd_r),
        .lcd_vsync(lcd_vsync),
        .tmds_clk_n(tmds_clk_n),
        .tmds_clk_p(tmds_clk_p),
        .tmds_data_n(tmds_data_n),
        .tmds_data_p(tmds_data_p),
        .touch_gpio_tri_i({touch_gpio_tri_i_1,touch_gpio_tri_i_0}),
        .touch_gpio_tri_o({touch_gpio_tri_o_1,touch_gpio_tri_o_0}),
        .touch_gpio_tri_t({touch_gpio_tri_t_1,touch_gpio_tri_t_0}));
  IOBUF touch_gpio_tri_iobuf_0
       (.I(touch_gpio_tri_o_0),
        .IO(touch_gpio_tri_io[0]),
        .O(touch_gpio_tri_i_0),
        .T(touch_gpio_tri_t_0));
  IOBUF touch_gpio_tri_iobuf_1
       (.I(touch_gpio_tri_o_1),
        .IO(touch_gpio_tri_io[1]),
        .O(touch_gpio_tri_i_1),
        .T(touch_gpio_tri_t_1));
endmodule
