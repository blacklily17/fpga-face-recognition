`timescale 1ns/1ps

module wp4_board_bridge_m13_bd (
    input  wire        aclk,
    input  wire        aresetn,
    input  wire        dma_tvalid,
    output wire        dma_tready,
    input  wire [7:0]  dma_tdata,
    input  wire        dma_tlast,
    input  wire [29:0] control,
    output wire [31:0] data_status,
    output wire [5:0]  flag_status
);
    wp4_board_bridge_m13 u_bridge (
        .aclk(aclk), .aresetn(aresetn),
        .dma_tvalid(dma_tvalid), .dma_tready(dma_tready),
        .dma_tdata(dma_tdata), .dma_tlast(dma_tlast),
        .control(control), .data_status(data_status), .flag_status(flag_status)
    );
endmodule
