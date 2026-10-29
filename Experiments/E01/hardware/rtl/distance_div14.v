`timescale 1ns / 1ps

// 十四级局部流水块；串联三个块得到完整的四十二位整数除法。
module distance_div14 (
    input wire clk,
    input wire rst_n,
    input wire advance,
    input wire in_valid,
    input wire in_last,
    input wire [41:0] in_bits,
    input wire [41:0] in_quotient,
    input wire [16:0] in_remainder,
    input wire [16:0] in_divisor,
    output wire out_valid,
    output wire out_last,
    output wire [41:0] out_bits,
    output wire [41:0] out_quotient,
    output wire [16:0] out_remainder,
    output wire [16:0] out_divisor
);
    wire [14:0] valid_pipe;
    wire [14:0] last_pipe;
    wire [41:0] bits_pipe [0:14];
    wire [41:0] quotient_pipe [0:14];
    wire [16:0] remainder_pipe [0:14];
    wire [16:0] divisor_pipe [0:14];
    genvar index;

    assign valid_pipe[0] = in_valid;
    assign last_pipe[0] = in_last;
    assign bits_pipe[0] = in_bits;
    assign quotient_pipe[0] = in_quotient;
    assign remainder_pipe[0] = in_remainder;
    assign divisor_pipe[0] = in_divisor;
    assign out_valid = valid_pipe[14];
    assign out_last = last_pipe[14];
    assign out_bits = bits_pipe[14];
    assign out_quotient = quotient_pipe[14];
    assign out_remainder = remainder_pipe[14];
    assign out_divisor = divisor_pipe[14];

    generate
        for (index = 0; index < 14; index = index + 1) begin : stages
            distance_div_step stage (
                .clk(clk), .rst_n(rst_n), .advance(advance),
                .in_valid(valid_pipe[index]), .in_last(last_pipe[index]),
                .in_bits(bits_pipe[index]), .in_quotient(quotient_pipe[index]),
                .in_remainder(remainder_pipe[index]), .in_divisor(divisor_pipe[index]),
                .out_valid(valid_pipe[index+1]), .out_last(last_pipe[index+1]),
                .out_bits(bits_pipe[index+1]), .out_quotient(quotient_pipe[index+1]),
                .out_remainder(remainder_pipe[index+1]), .out_divisor(divisor_pipe[index+1])
            );
        end
    endgenerate
endmodule
