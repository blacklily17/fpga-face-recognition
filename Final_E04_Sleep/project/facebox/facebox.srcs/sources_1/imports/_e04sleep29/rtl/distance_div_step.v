`timescale 1ns / 1ps

// 无符号恢复除法的一级；每拍只执行一次比较和减法。
module distance_div_step (
    input wire clk,
    input wire rst_n,
    input wire advance,
    input wire in_valid,
    input wire in_last,
    input wire [41:0] in_bits,
    input wire [41:0] in_quotient,
    input wire [16:0] in_remainder,
    input wire [16:0] in_divisor,
    output reg out_valid,
    output reg out_last,
    output reg [41:0] out_bits,
    output reg [41:0] out_quotient,
    output reg [16:0] out_remainder,
    output reg [16:0] out_divisor
);
    wire [17:0] shifted;
    wire [17:0] divisor;
    wire subtract_enable;
    wire [17:0] remainder_next;

    assign shifted = {in_remainder, in_bits[41]};
    assign divisor = {1'b0, in_divisor};
    assign subtract_enable = shifted >= divisor;
    assign remainder_next = subtract_enable ? shifted - divisor : shifted;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid <= 1'b0;
            out_last <= 1'b0;
            out_bits <= 42'd0;
            out_quotient <= 42'd0;
            out_remainder <= 17'd0;
            out_divisor <= 17'd1;
        end else if (advance) begin
            out_valid <= in_valid;
            out_last <= in_valid && in_last;
            out_bits <= {in_bits[40:0], 1'b0};
            out_quotient <= {in_quotient[40:0], subtract_enable};
            out_remainder <= remainder_next[16:0];
            out_divisor <= in_divisor;
        end
    end
endmodule
