`timescale 1ns/1ps
// One common pipeline stage after M17's registered RGB and controls.
module live_lcd_overlay(
 input logic clk,rst_n,pixel_ok,
 input logic [10:0] pixel_x,pixel_y,
 input logic [15:0] rgb,
 input logic de,hs,vs,bl,
 input logic [15:0] command,
 output logic [15:0] out_rgb,
 output logic out_de,out_hs,out_vs,out_bl
);
 function automatic [7:0] text_char(input [15:0] cmd,input integer index);
   reg [127:0] text;
   begin
     case(cmd[7:0])
       0:text="READY           ";
       1:text="RECOGNIZING     ";
       2:if(cmd[15:8]==1) text="KNOWN WJX       ";
         else if(cmd[15:8]==2) text="KNOWN LYL       ";
         else if(cmd[15:8]==3) text="KNOWN LHJ       ";
         else text="KNOWN PERSON    ";
       3:text="UNKNOWN         ";
       4:text="NO FACE         ";
       default:text="ERROR           ";
     endcase
     text_char=(text >> ((15-index)*8)) & 8'hff;
   end
 endfunction
 function automatic [34:0] glyph(input [7:0] ch);
   begin case(ch)
      8'd65: glyph=35'b01110100011000111111100011000110001;
      8'd67: glyph=35'b01111100001000010000100001000001111;
      8'd68: glyph=35'b11110100011000110001100011000111110;
      8'd69: glyph=35'b11111100001000011110100001000011111;
      8'd70: glyph=35'b11111100001000011110100001000010000;
      8'd71: glyph=35'b01111100001000010111100011000101111;
      8'd72: glyph=35'b10001100011000111111100011000110001;
      8'd73: glyph=35'b11111001000010000100001000010011111;
      8'd74: glyph=35'b00111000100001000010100101001001100;
      8'd75: glyph=35'b10001100101010011000101001001010001;
      8'd76: glyph=35'b10000100001000010000100001000011111;
      8'd78: glyph=35'b10001110011010110011100011000110001;
      8'd79: glyph=35'b01110100011000110001100011000101110;
      8'd80: glyph=35'b11110100011000111110100001000010000;
      8'd82: glyph=35'b11110100011000111110101001001010001;
      8'd83: glyph=35'b01111100001000001110000010000111110;
      8'd85: glyph=35'b10001100011000110001100011000101110;
      8'd87: glyph=35'b10001100011000110101101011010101010;
      8'd88: glyph=35'b10001100010101000100010101000110001;
      8'd89: glyph=35'b10001100010101000100001000010000100;
      8'd90: glyph=35'b11111000010001000100010001000011111;
      default:glyph=0;
   endcase end
 endfunction
 logic [15:0] painted;
 logic [34:0] bits;
 integer column,row,index,bit_column;
 always_comb begin
   painted=rgb;bits=0;column=0;row=0;index=0;bit_column=0;
   if(de && pixel_ok && pixel_x<196 && pixel_y<18) begin
     painted=0;
     if(pixel_x>=8 && pixel_x<188 && pixel_y>=2 && pixel_y<16) begin
       column=(pixel_x-8)>>1;row=(pixel_y-2)>>1;
       index=column/6;bit_column=column%6;bits=glyph(text_char(command,index));
       if(bit_column<5 && bits[34-row*5-bit_column]) painted=16'hffff;
     end
   end
   if(!pixel_ok) painted=0;
 end
 always_ff @(posedge clk) begin
   if(!rst_n) begin out_rgb<=0;out_de<=0;out_hs<=1;out_vs<=1;out_bl<=0;end
   else begin out_rgb<=painted;out_de<=de;out_hs<=hs;out_vs<=vs;out_bl<=bl;end
 end
endmodule


