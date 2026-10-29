// Vivado 2018.3 module-reference boundary; real implementation remains SV.
module gray_snapshot_bram_bd(
    input wire aclk,bram_we,
    input wire [14:0] bram_addr,
    input wire [31:0] bram_wdata,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram CLK", X_INTERFACE_PARAMETER="XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE" *)
    input wire bram_clk,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram RST" *) input wire bram_rst,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram EN" *) input wire bram_en,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram ADDR" *) input wire [16:0] bram_byte_addr,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram DIN" *) input wire [31:0] bram_wrdata,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram WE" *) input wire [3:0] bram_wrwe,
    (* X_INTERFACE_INFO="xilinx.com:interface:bram:1.0 bram DOUT" *) output wire [31:0] bram_rddata
);
    gray_snapshot_bram u_core(
        .aclk(aclk),
        .bram_we(bram_we),
        .bram_addr(bram_addr),
        .bram_wdata(bram_wdata),
        .bram_clk(bram_clk),
        .bram_rst(bram_rst),
        .bram_en(bram_en),
        .bram_byte_addr(bram_byte_addr),
        .bram_wrdata(bram_wrdata),
        .bram_wrwe(bram_wrwe),
        .bram_rddata(bram_rddata)
    );
endmodule

