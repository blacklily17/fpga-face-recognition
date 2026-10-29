`timescale 1ns/1ps
// TEST ONLY: deliberately misalign coordinates and RGB by one cycle.
// The regression must reject this wrapper; it is never added to a hardware build.
module hdmi_bbox_overlay_coordinate_mutant (
    input logic pixel_clk,rst_n,
    input logic [23:0] rgb_i,
    input logic de_i,hs_i,vs_i,pixel_ok_i,
    input logic [10:0] x_i,
    input logic [9:0] y_i,
    input logic box_valid,
    input logic [8:0] box_x,box_y,box_w,box_h,
    output logic [23:0] rgb_o,
    output logic de_o,hs_o,vs_o
);
    logic [10:0] old_x;
    logic [9:0] old_y;
    always_ff @(posedge pixel_clk) begin
        if(!rst_n) begin old_x<=0; old_y<=0; end
        else begin old_x<=x_i; old_y<=y_i; end
    end
    hdmi_bbox_overlay real_dut (
        .pixel_clk(pixel_clk),.rst_n(rst_n),.rgb_i(rgb_i),
        .de_i(de_i),.hs_i(hs_i),.vs_i(vs_i),.pixel_ok_i(pixel_ok_i),
        .x_i(old_x),.y_i(old_y),.box_valid(box_valid),
        .box_x(box_x),.box_y(box_y),.box_w(box_w),.box_h(box_h),
        .rgb_o(rgb_o),.de_o(de_o),.hs_o(hs_o),.vs_o(vs_o)
    );
endmodule
