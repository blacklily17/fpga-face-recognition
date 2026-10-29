`timescale 1ns/1ps
// 24000 little-endian words. PS port physically READ ONLY. Fixed one clock
// read latency; bram_rst resets the output, not the RAM contents.
module gray_snapshot_bram(
    input logic aclk,bram_we,
    input logic [14:0] bram_addr,
    input logic [31:0] bram_wdata,
    input logic bram_clk,bram_rst,bram_en,
    input logic [16:0] bram_byte_addr,
    input logic [31:0] bram_wrdata,
    input logic [3:0] bram_wrwe,
    output logic [31:0] bram_rddata
);
    (* ram_style="block" *) logic [31:0] memory[0:23999];
    always_ff @(posedge aclk)
        if(bram_we && bram_addr<24000) memory[bram_addr]<=bram_wdata;
    always_ff @(posedge bram_clk) begin
        if(bram_rst) bram_rddata<=0;
        else if(bram_en) begin
            if(bram_byte_addr[1:0]==0 && bram_byte_addr<96000)
                bram_rddata<=memory[bram_byte_addr[16:2]];
            else bram_rddata<=0;
        end
    end
    // bram_wrdata/bram_wrwe deliberately unused: no PS write process exists.
endmodule
