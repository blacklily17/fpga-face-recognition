`timescale 1ns / 1ps

// 单模板距离内核；保持 PS 的逐项截断、零分母跳过和最终饱和规则。
module lbp_distance_pipeline #(
    parameter [11:0] FEATURE_COUNT = 12'd3776
) (
    input wire clk,
    input wire rst_n,
    input wire s_valid,
    output wire s_ready,
    input wire [15:0] s_feature,
    input wire [15:0] s_template,
    input wire s_last,
    output reg m_valid,
    input wire m_ready,
    output reg [31:0] m_distance,
    output reg protocol_error
);
    reg [11:0] input_count;
    reg valid0;
    reg last0;
    reg [15:0] magnitude0;
    reg [16:0] denominator0;
    reg valid1;
    reg last1;
    reg [31:0] square1;
    reg [16:0] denominator1;
    reg [63:0] total;
    wire advance;
    wire accept;
    wire expected_last;
    wire [41:0] numerator;
    wire [16:0] divisor;
    wire valid_a, valid_b, valid_c;
    wire last_a, last_b, last_c;
    wire [41:0] bits_a, bits_b;
    wire [41:0] quotient_a, quotient_b, quotient_c;
    wire [16:0] remainder_a, remainder_b;
    wire [16:0] divisor_a, divisor_b;
    wire [63:0] next_total;

    assign advance = !protocol_error && (!m_valid || m_ready);
    assign s_ready = rst_n && advance;
    assign accept = s_valid && s_ready;
    assign expected_last = input_count == FEATURE_COUNT - 12'd1;
    assign numerator = denominator1 == 17'd0 ? 42'd0 : {square1, 10'd0};
    assign divisor = denominator1 == 17'd0 ? 17'd1 : denominator1;
    assign next_total = total + {22'd0, quotient_c};

    distance_div14 block_a (
        .clk(clk), .rst_n(rst_n), .advance(advance),
        .in_valid(valid1), .in_last(last1), .in_bits(numerator),
        .in_quotient(42'd0), .in_remainder(17'd0), .in_divisor(divisor),
        .out_valid(valid_a), .out_last(last_a), .out_bits(bits_a),
        .out_quotient(quotient_a), .out_remainder(remainder_a), .out_divisor(divisor_a)
    );
    distance_div14 block_b (
        .clk(clk), .rst_n(rst_n), .advance(advance),
        .in_valid(valid_a), .in_last(last_a), .in_bits(bits_a),
        .in_quotient(quotient_a), .in_remainder(remainder_a), .in_divisor(divisor_a),
        .out_valid(valid_b), .out_last(last_b), .out_bits(bits_b),
        .out_quotient(quotient_b), .out_remainder(remainder_b), .out_divisor(divisor_b)
    );
    distance_div14 block_c (
        .clk(clk), .rst_n(rst_n), .advance(advance),
        .in_valid(valid_b), .in_last(last_b), .in_bits(bits_b),
        .in_quotient(quotient_b), .in_remainder(remainder_b), .in_divisor(divisor_b),
        .out_valid(valid_c), .out_last(last_c), .out_bits(),
        .out_quotient(quotient_c), .out_remainder(), .out_divisor()
    );

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            input_count <= 12'd0;
            valid0 <= 1'b0;
            last0 <= 1'b0;
            magnitude0 <= 16'd0;
            denominator0 <= 17'd0;
            valid1 <= 1'b0;
            last1 <= 1'b0;
            square1 <= 32'd0;
            denominator1 <= 17'd0;
            total <= 64'd0;
            m_valid <= 1'b0;
            m_distance <= 32'd0;
            protocol_error <= 1'b0;
        end else if (accept && (s_last != expected_last)) begin
            // 长度不符立即锁定；复位前不得发布或继续使用部分结果。
            protocol_error <= 1'b1;
            m_valid <= 1'b0;
            valid0 <= 1'b0;
            valid1 <= 1'b0;
        end else if (advance) begin
            valid0 <= accept;
            last0 <= accept && s_last;
            if (accept) begin
                input_count <= s_last ? 12'd0 : input_count + 12'd1;
                magnitude0 <= s_feature >= s_template ?
                    s_feature - s_template : s_template - s_feature;
                denominator0 <= {1'b0, s_feature} + {1'b0, s_template};
            end
            valid1 <= valid0;
            last1 <= valid0 && last0;
            square1 <= magnitude0 * magnitude0;
            denominator1 <= denominator0;
            m_valid <= 1'b0;
            if (valid_c) begin
                if (last_c) begin
                    m_distance <= |next_total[63:32] ? 32'hffffffff : next_total[31:0];
                    m_valid <= 1'b1;
                    total <= 64'd0;
                end else begin
                    total <= next_total;
                end
            end
        end
    end
endmodule
