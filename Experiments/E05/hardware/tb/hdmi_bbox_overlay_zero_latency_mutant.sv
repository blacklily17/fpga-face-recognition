`timescale 1ns/1ps
// TEST ONLY: correct color math but intentionally missing the output register.
module hdmi_bbox_overlay_zero_latency_mutant (
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
    integer left,top,right,bottom;
    logic legal,inside_box,border;
    always_comb begin
        left=240+2*int'(box_x); top=120+2*int'(box_y);
        right=left+2*int'(box_w); bottom=top+2*int'(box_h);
        legal=box_valid && box_x<400 && box_y<240 && box_w>0 && box_h>0 && right<=1040 && bottom<=600;
        inside_box=legal && x_i>=left && x_i<right && y_i>=top && y_i<bottom;
        border=inside_box && (x_i-left<2 || right-1-x_i<2 || y_i-top<2 || bottom-1-y_i<2);
        rgb_o=!rst_n?0:((de_i && pixel_ok_i && border)?24'h00ff00:rgb_i);
        de_o=rst_n && de_i; hs_o=rst_n && hs_i; vs_o=rst_n && vs_i;
    end
endmodule
