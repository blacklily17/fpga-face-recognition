`timescale 1ns/1ps
// Private Verilog module reference; original M17 is unmodified.
module live_lcd_bd #(
 parameter integer H_ACTIVE=800,H_FRONT=40,H_SYNC=128,H_BACK=88,
 parameter integer V_ACTIVE=480,V_FRONT=10,V_SYNC=2,V_BACK=33
)(
 (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 aclk CLK" *)
 (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *)
 input wire aclk,input wire aresetn,
 input wire [31:0] status_command,output wire [31:0] status_ack,
 (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 lcd_pclk CLK" *)
 (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME lcd_pclk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET lcd_rst_n, FREQ_HZ 33333333" *)
 input wire lcd_pclk,input wire lcd_rst_n,
 input wire s_tvalid,output wire s_tready,
 input wire [15:0] s_tdata,input wire s_tuser,input wire s_tlast,
 output wire [4:0] lcd_r,output wire [5:0] lcd_g,output wire [4:0] lcd_b,
 output wire lcd_de,output wire lcd_hsync,output wire lcd_vsync,output wire lcd_bl,
 output wire lcd_underflow_sticky
);
 localparam HT=H_ACTIVE+H_FRONT+H_SYNC+H_BACK,VT=V_ACTIVE+V_FRONT+V_SYNC+V_BACK;
 localparam HS=H_SYNC+H_BACK,VS=V_SYNC+V_BACK;
 reg [10:0] h=0,v=0,pixel_x=0,pixel_y=0;
 reg locked=0,pixel_ok=0;
 wire active=(h>=HS && h<HS+H_ACTIVE && v>=VS && v<VS+V_ACTIVE);
 wire first=(h==HS && v==VS),last_col=(h==HS+H_ACTIVE-1);
 wire final_pixel=last_col && v==VS+V_ACTIVE-1;
 wire accept=active && s_tvalid && s_tready && s_tlast==last_col &&
             ((first && !locked && s_tuser) || (locked && !s_tuser));
 wire [15:0] active_command;
 wire [4:0] r,b;wire [5:0] g;wire de,hs,vs,bl;
 live_status_cdc status(.aclk(aclk),.aresetn(aresetn),.status_command(status_command),
   .status_ack(status_ack),.lcd_clk(lcd_pclk),.lcd_resetn(lcd_rst_n),
   .frame_boundary(h==0 && v==0),.active_command(active_command));
 rgb_lcd_timing #(.H_ACTIVE(H_ACTIVE),.H_FRONT(H_FRONT),.H_SYNC(H_SYNC),.H_BACK(H_BACK),
   .V_ACTIVE(V_ACTIVE),.V_FRONT(V_FRONT),.V_SYNC(V_SYNC),.V_BACK(V_BACK)) m17(
   .lcd_pclk(lcd_pclk),.lcd_rst_n(lcd_rst_n),.s_tvalid(s_tvalid),.s_tready(s_tready),
   .s_tdata(s_tdata),.s_tuser(s_tuser),.s_tlast(s_tlast),.lcd_r(r),.lcd_g(g),.lcd_b(b),
   .lcd_de(de),.lcd_hsync(hs),.lcd_vsync(vs),.lcd_bl(bl),.lcd_underflow_sticky(lcd_underflow_sticky));
 // M17-identical marker rules; coordinates travel with its registered pixel.
 always @(posedge lcd_pclk) begin
   if(!lcd_rst_n) begin h<=0;v<=0;locked<=0;pixel_ok<=0;pixel_x<=0;pixel_y<=0;end
   else begin
     pixel_ok<=accept;pixel_x<=h-HS;pixel_y<=v-VS;
     if(active) begin
       if(first && !locked) locked<=accept && !final_pixel;
       else if(locked) begin if(!accept || final_pixel) locked<=0;end
     end
     if(h==HT-1) begin h<=0;if(v==VT-1) v<=0;else v<=v+1'b1;end
     else h<=h+1'b1;
   end
 end
 live_lcd_overlay overlay(.clk(lcd_pclk),.rst_n(lcd_rst_n),.pixel_ok(pixel_ok),
   .pixel_x(pixel_x),.pixel_y(pixel_y),.rgb({r,g,b}),.de(de),.hs(hs),.vs(vs),.bl(bl),
   .command(active_command),.out_rgb({lcd_r,lcd_g,lcd_b}),.out_de(lcd_de),
   .out_hs(lcd_hsync),.out_vs(lcd_vsync),.out_bl(lcd_bl));
endmodule


