`timescale 1ns / 1ps

// Vivado 2018.3 block designs cannot use a SystemVerilog source directly as
// a module reference.  This zero-logic Verilog wrapper keeps the verified M17
// implementation intact while presenting a Verilog top to the block design.
module rgb_lcd_timing_bd (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lcd_pclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_pclk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET lcd_rst_n, FREQ_HZ 33333333" *)
    input  wire        lcd_pclk,
    input  wire        lcd_rst_n,
    input  wire        s_tvalid,
    output wire        s_tready,
    input  wire [15:0] s_tdata,
    input  wire        s_tuser,
    input  wire        s_tlast,
    output wire [4:0]  lcd_r,
    output wire [5:0]  lcd_g,
    output wire [4:0]  lcd_b,
    output wire        lcd_de,
    output wire        lcd_hsync,
    output wire        lcd_vsync,
    output wire        lcd_bl,
    output wire        lcd_underflow_sticky
);

    rgb_lcd_timing u_m17 (
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

