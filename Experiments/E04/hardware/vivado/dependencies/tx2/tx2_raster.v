`timescale 1ns / 1ps

module tx2_raster #(
    parameter H_ACTIVE=1280, H_FRONT=110, H_SYNC=40, H_BACK=220,
    parameter V_ACTIVE=720, V_FRONT=5, V_SYNC=5, V_BACK=20
) (
    input wire pixel_clk,
    input wire rst_n,
    output reg [11:0] h_count,
    output reg [11:0] v_count,
    output wire active,
    output wire hs,
    output wire vs
);
    localparam H_TOTAL=H_ACTIVE+H_FRONT+H_SYNC+H_BACK;
    localparam V_TOTAL=V_ACTIVE+V_FRONT+V_SYNC+V_BACK;
    assign active = (h_count >= H_SYNC+H_BACK) &&
                    (h_count < H_SYNC+H_BACK+H_ACTIVE) &&
                    (v_count >= V_SYNC+V_BACK) &&
                    (v_count < V_SYNC+V_BACK+V_ACTIVE);
    assign hs = h_count < H_SYNC;
    assign vs = v_count < V_SYNC;
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin
            h_count <= 12'd0;
            v_count <= 12'd0;
        end else if (h_count == H_TOTAL-1) begin
            h_count <= 12'd0;
            if (v_count == V_TOTAL-1) v_count <= 12'd0;
            else v_count <= v_count + 12'd1;
        end else begin
            h_count <= h_count + 12'd1;
        end
    end
endmodule
