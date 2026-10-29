`timescale 1ns/1ps
// HDMI active coordinates, not total-raster counters (porch excluded).
module hdmi_bbox_overlay (
    input logic pixel_clk, rst_n,
    input logic [23:0] rgb_i,
    input logic de_i, hs_i, vs_i, pixel_ok_i,
    input logic [10:0] x_i,
    input logic [9:0] y_i,
    input logic box_valid,
    input logic [8:0] box_x, box_y, box_w, box_h,
    output logic [23:0] rgb_o,
    output logic de_o, hs_o, vs_o
);
    logic [11:0] x_end, y_end, left, right, top, bottom;
    logic [11:0] px, py;
    logic legal, inside_box, border;
    always_comb begin
        // Extend BEFORE adding/shifting: illegal 511+511 must not wrap to legal.
        x_end={3'b0,box_x}+{3'b0,box_w};
        y_end={3'b0,box_y}+{3'b0,box_h};
        left=12'd240+({3'b0,box_x}<<1);
        right=12'd240+(x_end<<1);
        top=12'd120+({3'b0,box_y}<<1);
        bottom=12'd120+(y_end<<1);
        px={1'b0,x_i}; py={2'b0,y_i};
        legal=box_valid && box_x<400 && box_y<240 && box_w!=0 && box_h!=0
              && x_end<=400 && y_end<=240;
        inside_box=legal && px>=left && px<right && py>=top && py<bottom;
        border=inside_box && ((px-left<2) || (right-1-px<2) ||
                             (py-top<2) || (bottom-1-py<2));
    end
    always_ff @(posedge pixel_clk) begin
        if (!rst_n) begin
            rgb_o<=0; de_o<=0; hs_o<=0; vs_o<=0;
        end else begin
            rgb_o <= (de_i && pixel_ok_i && border) ? 24'h00ff00 : rgb_i;
            de_o<=de_i; hs_o<=hs_i; vs_o<=vs_i;
        end
    end
endmodule
