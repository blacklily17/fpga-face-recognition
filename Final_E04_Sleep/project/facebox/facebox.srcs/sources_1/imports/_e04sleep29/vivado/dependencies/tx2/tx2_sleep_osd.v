`timescale 1ns/1ps
// 六个16×16固定汉字，只有1536位字形数据，不使用整屏位图或运行时字库。
module tx2_sleep_osd (
    input wire pixel_clk, rst_n, sleep_mode,
    input wire [23:0] rgb_i,
    input wire de_i, hs_i, vs_i,
    input wire [10:0] x_i,
    input wire [9:0] y_i,
    output reg [23:0] rgb_o,
    output reg de_o, hs_o, vs_o
);
    wire sleep_text, work_text, work_badge;
    wire [6:0] work_x;
    wire [1:0] character;
    wire [3:0] column, row;
    wire [2:0] glyph;
    reg [15:0] row_s1;
    reg [3:0] column_s1;
    reg text_s1, de_s1, hs_s1, vs_s1;
    reg [23:0] base_s1;
    assign work_x = x_i[6:0] - 7'd32;
    assign sleep_text = sleep_mode && x_i>=11'd512 && x_i<11'd768 && y_i>=10'd320 && y_i<10'd384;
    assign work_text = !sleep_mode && x_i>=11'd32 && x_i<11'd160 && y_i>=10'd32 && y_i<10'd64;
    assign work_badge = !sleep_mode && x_i>=11'd16 && x_i<11'd176 && y_i>=10'd16 && y_i<10'd80;
    assign character = sleep_mode ? x_i[7:6] : work_x[6:5];
    assign column = sleep_mode ? x_i[5:2] : work_x[4:1];
    assign row = sleep_mode ? y_i[5:2] : y_i[4:1];
    assign glyph = sleep_mode && !character[1] ? {2'b10,character[0]} : {1'b0,character};
    function [15:0] glyph_row;
        input [2:0] code;
        input [3:0] y;
        begin
            case ({code,y})
                7'd2: glyph_row = 16'h3ffc;
                7'd3: glyph_row = 16'h0180;
                7'd4: glyph_row = 16'h0180;
                7'd5: glyph_row = 16'h0180;
                7'd6: glyph_row = 16'h0180;
                7'd7: glyph_row = 16'h0180;
                7'd8: glyph_row = 16'h0180;
                7'd9: glyph_row = 16'h0180;
                7'd10: glyph_row = 16'h0180;
                7'd11: glyph_row = 16'h0180;
                7'd12: glyph_row = 16'h0180;
                7'd13: glyph_row = 16'h7ffe;
                7'd16: glyph_row = 16'h0cc0;
                7'd17: glyph_row = 16'h0880;
                7'd18: glyph_row = 16'h1980;
                7'd19: glyph_row = 16'h11fe;
                7'd20: glyph_row = 16'h3340;
                7'd21: glyph_row = 16'h3640;
                7'd22: glyph_row = 16'h507c;
                7'd23: glyph_row = 16'h5040;
                7'd24: glyph_row = 16'h1040;
                7'd25: glyph_row = 16'h1040;
                7'd26: glyph_row = 16'h107e;
                7'd27: glyph_row = 16'h1040;
                7'd28: glyph_row = 16'h1040;
                7'd29: glyph_row = 16'h1040;
                7'd30: glyph_row = 16'h1040;
                7'd32: glyph_row = 16'h10d8;
                7'd33: glyph_row = 16'h13fe;
                7'd34: glyph_row = 16'h10d8;
                7'd35: glyph_row = 16'h7c00;
                7'd36: glyph_row = 16'h11fc;
                7'd37: glyph_row = 16'h1104;
                7'd38: glyph_row = 16'h39fc;
                7'd39: glyph_row = 16'h3504;
                7'd40: glyph_row = 16'h75fc;
                7'd41: glyph_row = 16'h5020;
                7'd42: glyph_row = 16'h13fe;
                7'd43: glyph_row = 16'h1050;
                7'd44: glyph_row = 16'h10c8;
                7'd45: glyph_row = 16'h1707;
                7'd46: glyph_row = 16'h0002;
                7'd48: glyph_row = 16'h00c0;
                7'd49: glyph_row = 16'h00d8;
                7'd50: glyph_row = 16'h00c8;
                7'd51: glyph_row = 16'h7ffe;
                7'd52: glyph_row = 16'h00c0;
                7'd53: glyph_row = 16'h0040;
                7'd54: glyph_row = 16'h0040;
                7'd55: glyph_row = 16'h3f40;
                7'd56: glyph_row = 16'h0c60;
                7'd57: glyph_row = 16'h0c20;
                7'd58: glyph_row = 16'h0c20;
                7'd59: glyph_row = 16'h0fb2;
                7'd60: glyph_row = 16'h7c1a;
                7'd61: glyph_row = 16'h200e;
                7'd65: glyph_row = 16'h1840;
                7'd66: glyph_row = 16'h1840;
                7'd67: glyph_row = 16'h1040;
                7'd68: glyph_row = 16'h3040;
                7'd69: glyph_row = 16'h37fe;
                7'd70: glyph_row = 16'h70e0;
                7'd71: glyph_row = 16'h50e0;
                7'd72: glyph_row = 16'h51d0;
                7'd73: glyph_row = 16'h1158;
                7'd74: glyph_row = 16'h1348;
                7'd75: glyph_row = 16'h124c;
                7'd76: glyph_row = 16'h1646;
                7'd77: glyph_row = 16'h1040;
                7'd78: glyph_row = 16'h1040;
                7'd81: glyph_row = 16'h03fc;
                7'd82: glyph_row = 16'h7b04;
                7'd83: glyph_row = 16'h4b04;
                7'd84: glyph_row = 16'h4b04;
                7'd85: glyph_row = 16'h7bfc;
                7'd86: glyph_row = 16'h4b20;
                7'd87: glyph_row = 16'h4b20;
                7'd88: glyph_row = 16'h7bfe;
                7'd89: glyph_row = 16'h4b22;
                7'd90: glyph_row = 16'h4b10;
                7'd91: glyph_row = 16'h4b10;
                7'd92: glyph_row = 16'h7b50;
                7'd93: glyph_row = 16'h4bca;
                7'd94: glyph_row = 16'h030e;
                default: glyph_row = 16'd0;
            endcase
        end
    endfunction
    // 第一级寄存字形行、列和底色；第二级只做位选与颜色选择，视频同步等延迟。
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin
            row_s1<=16'd0; column_s1<=4'd0; text_s1<=1'b0;
            base_s1<=24'd0; de_s1<=1'b0; hs_s1<=1'b0; vs_s1<=1'b0;
            rgb_o<=24'd0; de_o<=1'b0; hs_o<=1'b0; vs_o<=1'b0;
        end else begin
            row_s1<=glyph_row(glyph,row); column_s1<=column;
            text_s1<=de_i && (sleep_text || work_text);
            base_s1<=sleep_mode ? 24'h101820 : work_badge ? 24'h12332a : rgb_i;
            de_s1<=de_i; hs_s1<=hs_i; vs_s1<=vs_i;
            rgb_o<=text_s1 && row_s1[~column_s1] ? 24'h80d8e8 : base_s1;
            de_o<=de_s1; hs_o<=hs_s1; vs_o<=vs_s1;
        end
    end
endmodule

