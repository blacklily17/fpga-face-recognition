// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:17:59 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_capture_key_sync_0_0/facebox_system_capture_key_sync_0_0_sim_netlist.v
// Design      : facebox_system_capture_key_sync_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_capture_key_sync_0_0,capture_key_sync,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "capture_key_sync,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_capture_key_sync_0_0
   (clk,
    rst_n,
    key_n,
    key_sync_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [1:0]key_n;
  output [1:0]key_sync_n;

  wire clk;
  wire [1:0]key_n;
  wire [1:0]key_sync_n;
  wire rst_n;

  facebox_system_capture_key_sync_0_0_capture_key_sync inst
       (.clk(clk),
        .key_n(key_n),
        .key_sync_n(key_sync_n),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "capture_key_sync" *) 
module facebox_system_capture_key_sync_0_0_capture_key_sync
   (key_sync_n,
    key_n,
    clk,
    rst_n);
  output [1:0]key_sync_n;
  input [1:0]key_n;
  input clk;
  input rst_n;

  wire clk;
  (* async_reg = "true" *) wire [1:0]key_meta_n;
  wire [1:0]key_n;
  (* async_reg = "true" *) wire [1:0]key_stable_n;
  wire p_0_in;
  wire rst_n;

  assign key_sync_n[1:0] = key_stable_n;
  LUT1 #(
    .INIT(2'h1)) 
    \key_meta_n[1]_i_1 
       (.I0(rst_n),
        .O(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE \key_meta_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(key_n[0]),
        .Q(key_meta_n[0]),
        .S(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE \key_meta_n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(key_n[1]),
        .Q(key_meta_n[1]),
        .S(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE \key_stable_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(key_meta_n[0]),
        .Q(key_stable_n[0]),
        .S(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE \key_stable_n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(key_meta_n[1]),
        .Q(key_stable_n[1]),
        .S(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
