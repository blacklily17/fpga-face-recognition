`timescale 1ns/1ps
// Explicit test-only boundary, not a TMDS encoder/serializer model. DUT u_tx
// actual input connections are checked; physical TMDS remains a later gate.
module tx2_video_out(input wire pixel_clk,serial_clk,rst_n,
    input wire [23:0] rgb,input wire de,hs,vs,
    output wire [2:0] tmds_data_p,tmds_data_n,
    output wire tmds_clk_p,tmds_clk_n);
    assign tmds_data_p=0;assign tmds_data_n=0;
    assign tmds_clk_p=0;assign tmds_clk_n=0;
endmodule
