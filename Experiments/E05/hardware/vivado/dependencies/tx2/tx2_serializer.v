`timescale 1ns / 1ps

module tx2_serializer (
    input wire pixel_clk,
    input wire serial_clk,
    input wire rst_n,
    input wire [9:0] word,
    output wire tx_p,
    output wire tx_n
);
    wire shift1;
    wire shift2;
    wire serial_data;

    // 七系列主从OSERDES实现10:1，串行时钟为像素时钟五倍，双沿发送。
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"), .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10), .SERDES_MODE("MASTER"),
        .TRISTATE_WIDTH(1), .INIT_OQ(1'b0), .SRVAL_OQ(1'b0)
    ) u_master (
        .OQ(serial_data), .OFB(), .TQ(), .TFB(), .TBYTEOUT(),
        .SHIFTOUT1(), .SHIFTOUT2(),
        .CLK(serial_clk), .CLKDIV(pixel_clk), .OCE(1'b1), .RST(!rst_n),
        .D1(word[0]), .D2(word[1]), .D3(word[2]), .D4(word[3]),
        .D5(word[4]), .D6(word[5]), .D7(word[6]), .D8(word[7]),
        .SHIFTIN1(shift1), .SHIFTIN2(shift2),
        .T1(1'b0), .T2(1'b0), .T3(1'b0), .T4(1'b0),
        .TCE(1'b0), .TBYTEIN(1'b0)
    );
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"), .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10), .SERDES_MODE("SLAVE"),
        .TRISTATE_WIDTH(1), .INIT_OQ(1'b0), .SRVAL_OQ(1'b0)
    ) u_slave (
        .OQ(), .OFB(), .TQ(), .TFB(), .TBYTEOUT(),
        .SHIFTOUT1(shift1), .SHIFTOUT2(shift2),
        .CLK(serial_clk), .CLKDIV(pixel_clk), .OCE(1'b1), .RST(!rst_n),
        .D1(1'b0), .D2(1'b0), .D3(word[8]), .D4(word[9]),
        .D5(1'b0), .D6(1'b0), .D7(1'b0), .D8(1'b0),
        .SHIFTIN1(1'b0), .SHIFTIN2(1'b0),
        .T1(1'b0), .T2(1'b0), .T3(1'b0), .T4(1'b0),
        .TCE(1'b0), .TBYTEIN(1'b0)
    );
    OBUFDS #(.IOSTANDARD("TMDS_33")) u_output (
        .I(serial_data), .O(tx_p), .OB(tx_n)
    );
endmodule
