`timescale 1ns / 1ps

module tx2_tmds_encoder (
    input wire pixel_clk,
    input wire rst_n,
    input wire [7:0] data,
    input wire de,
    input wire c0,
    input wire c1,
    output reg [9:0] symbol
);
    wire [3:0] data_ones;
    wire use_xnor;
    wire [8:0] qm;
    wire [3:0] qm_ones;
    reg [8:0] qm_q;
    reg [3:0] ones_q;
    reg de_q;
    reg c0_q;
    reg c1_q;
    reg signed [5:0] disparity;
    wire signed [5:0] balance;
    genvar k;

    // 显式扩展位宽，最多统计八个比特，避免隐式截断。
    assign data_ones = {3'd0,data[0]} + {3'd0,data[1]} +
                       {3'd0,data[2]} + {3'd0,data[3]} +
                       {3'd0,data[4]} + {3'd0,data[5]} +
                       {3'd0,data[6]} + {3'd0,data[7]};
    assign use_xnor = (data_ones > 4'd4) ||
                     ((data_ones == 4'd4) && !data[0]);
    assign qm[0] = data[0];
    generate
        for (k=1; k<8; k=k+1) begin : g_transition
            assign qm[k] = qm[k-1] ^ data[k] ^ use_xnor;
        end
    endgenerate
    assign qm[8] = !use_xnor;
    assign qm_ones = {3'd0,qm[0]} + {3'd0,qm[1]} +
                     {3'd0,qm[2]} + {3'd0,qm[3]} +
                     {3'd0,qm[4]} + {3'd0,qm[5]} +
                     {3'd0,qm[6]} + {3'd0,qm[7]};
    assign balance = $signed({1'b0,ones_q,1'b0}) - 6'sd8;

    // 第一级降低跳变次数；第二级选择极性并维护直流平衡。
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin
            qm_q <= 9'd0;
            ones_q <= 4'd0;
            de_q <= 1'b0;
            c0_q <= 1'b0;
            c1_q <= 1'b0;
            disparity <= 6'sd0;
            symbol <= 10'b1101010100;
        end else begin
            qm_q <= qm;
            ones_q <= qm_ones;
            de_q <= de;
            c0_q <= c0;
            c1_q <= c1;
            if (!de_q) begin
                disparity <= 6'sd0;
                case ({c1_q,c0_q})
                    2'b00: symbol <= 10'b1101010100;
                    2'b01: symbol <= 10'b0010101011;
                    2'b10: symbol <= 10'b0101010100;
                    2'b11: symbol <= 10'b1010101011;
                    default: symbol <= 10'b1101010100;
                endcase
            end else if ((disparity == 6'sd0) || (ones_q == 4'd4)) begin
                symbol <= {!qm_q[8],qm_q[8],
                           (qm_q[8] ? qm_q[7:0] : ~qm_q[7:0])};
                disparity <= disparity + (qm_q[8] ? balance : -balance);
            end else if (((disparity > 6'sd0) && (balance > 6'sd0)) ||
                         ((disparity < 6'sd0) && (balance < 6'sd0))) begin
                symbol <= {1'b1,qm_q[8],~qm_q[7:0]};
                disparity <= disparity - balance + (qm_q[8] ? 6'sd2 : 6'sd0);
            end else begin
                symbol <= {1'b0,qm_q[8],qm_q[7:0]};
                disparity <= disparity + balance - (qm_q[8] ? 6'sd0 : 6'sd2);
            end
        end
    end
endmodule
