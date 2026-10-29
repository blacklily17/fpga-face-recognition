`timescale 1ns / 1ps

module tx2_video_out (
    input wire pixel_clk,
    input wire serial_clk,
    input wire rst_n,
    input wire [23:0] rgb,
    input wire de,
    input wire hs,
    input wire vs,
    output wire [2:0] tmds_data_p,
    output wire [2:0] tmds_data_n,
    output wire tmds_clk_p,
    output wire tmds_clk_n,
    input wire tx_enable
);
    wire [9:0] blue_word;
    wire [9:0] green_word;
    wire [9:0] red_word;

    // 通道0传蓝色和同步控制，通道1传绿色，通道2传红色。
    tx2_tmds_encoder u_blue(pixel_clk,rst_n,rgb[7:0],de,hs,vs,blue_word);
    tx2_tmds_encoder u_green(pixel_clk,rst_n,rgb[15:8],de,1'b0,1'b0,green_word);
    tx2_tmds_encoder u_red(pixel_clk,rst_n,rgb[23:16],de,1'b0,1'b0,red_word);
    tx2_serializer u_b(pixel_clk,serial_clk,rst_n,blue_word,tmds_data_p[0],tmds_data_n[0],tx_enable);
    tx2_serializer u_g(pixel_clk,serial_clk,rst_n,green_word,tmds_data_p[1],tmds_data_n[1],tx_enable);
    tx2_serializer u_r(pixel_clk,serial_clk,rst_n,red_word,tmds_data_p[2],tmds_data_n[2],tx_enable);
    tx2_serializer u_c(pixel_clk,serial_clk,rst_n,10'b1111100000,tmds_clk_p,tmds_clk_n,tx_enable);
endmodule
