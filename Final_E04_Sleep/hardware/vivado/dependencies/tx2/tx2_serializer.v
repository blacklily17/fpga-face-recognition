`timescale 1ns / 1ps

module tx2_serializer (
    input wire pixel_clk,
    input wire serial_clk,
    input wire rst_n,
    input wire [9:0] word,
    output wire tx_p,
    output wire tx_n,
    input wire tx_enable
);
    wire shift1;
    wire shift2;
    wire serial_data;
    wire serial_rst_n;
    // 像素域复位只异步置位本地释放链；功能触发器在串行域同步释放复位。
    (* ASYNC_REG = "TRUE", DONT_TOUCH = "TRUE" *) reg [1:0] serial_release;
    assign serial_rst_n = serial_release[1];
    always @(posedge serial_clk or negedge rst_n) begin
        if (!rst_n) serial_release <= 2'b00;
        else serial_release <= {serial_release[0],1'b1};
    end
    // OCE 在高速串行时钟域使用；每路本地同步，避免像素域直接驱动 371MHz 控制端。
    (* ASYNC_REG = "TRUE", DONT_TOUCH = "TRUE" *) reg enable_meta,enable_sync;
    always @(posedge serial_clk or negedge serial_rst_n) begin
        if (!serial_rst_n) begin enable_meta <= 1'b0; enable_sync <= 1'b0; end
        else begin enable_meta <= tx_enable; enable_sync <= enable_meta; end
    end

    // 七系列主从OSERDES实现10:1，串行时钟为像素时钟五倍，双沿发送。
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"), .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10), .SERDES_MODE("MASTER"),
        .TRISTATE_WIDTH(1), .INIT_OQ(1'b0), .SRVAL_OQ(1'b0)
    ) u_master (
        .OQ(serial_data), .OFB(), .TQ(), .TFB(), .TBYTEOUT(),
        .SHIFTOUT1(), .SHIFTOUT2(),
        .CLK(serial_clk), .CLKDIV(pixel_clk), .OCE(enable_sync), .RST(!rst_n || !tx_enable),
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
        .CLK(serial_clk), .CLKDIV(pixel_clk), .OCE(enable_sync), .RST(!rst_n || !tx_enable),
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
