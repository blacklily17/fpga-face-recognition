// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:21:47 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_ack_tracker_0_0/facebox_system_overlay_ack_tracker_0_0_sim_netlist.v
// Design      : facebox_system_overlay_ack_tracker_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_overlay_ack_tracker_0_0,overlay_ack_tracker_bd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "overlay_ack_tracker_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_overlay_ack_tracker_0_0
   (aclk,
    aresetn,
    ack,
    invalidate,
    sequence_value,
    acknowledged_sequence);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input ack;
  input invalidate;
  input [31:0]sequence_value;
  output [31:0]acknowledged_sequence;

  wire ack;
  wire [31:0]acknowledged_sequence;
  wire aclk;
  wire aresetn;
  wire invalidate;
  wire [31:0]sequence_value;

  facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd inst
       (.ack(ack),
        .acknowledged_sequence(acknowledged_sequence),
        .aclk(aclk),
        .aresetn(aresetn),
        .invalidate(invalidate),
        .sequence_value(sequence_value));
endmodule

(* ORIG_REF_NAME = "overlay_ack_tracker" *) 
module facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker
   (acknowledged_sequence,
    ack,
    sequence_value,
    aclk,
    invalidate,
    aresetn);
  output [31:0]acknowledged_sequence;
  input ack;
  input [31:0]sequence_value;
  input aclk;
  input invalidate;
  input aresetn;

  wire ack;
  wire [31:0]acknowledged_sequence;
  wire \acknowledged_sequence[31]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire invalidate;
  wire [31:0]sequence_value;

  LUT2 #(
    .INIT(4'hB)) 
    \acknowledged_sequence[31]_i_1 
       (.I0(invalidate),
        .I1(aresetn),
        .O(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[0] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[0]),
        .Q(acknowledged_sequence[0]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[10] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[10]),
        .Q(acknowledged_sequence[10]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[11] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[11]),
        .Q(acknowledged_sequence[11]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[12] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[12]),
        .Q(acknowledged_sequence[12]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[13] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[13]),
        .Q(acknowledged_sequence[13]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[14] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[14]),
        .Q(acknowledged_sequence[14]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[15] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[15]),
        .Q(acknowledged_sequence[15]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[16] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[16]),
        .Q(acknowledged_sequence[16]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[17] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[17]),
        .Q(acknowledged_sequence[17]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[18] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[18]),
        .Q(acknowledged_sequence[18]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[19] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[19]),
        .Q(acknowledged_sequence[19]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[1] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[1]),
        .Q(acknowledged_sequence[1]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[20] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[20]),
        .Q(acknowledged_sequence[20]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[21] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[21]),
        .Q(acknowledged_sequence[21]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[22] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[22]),
        .Q(acknowledged_sequence[22]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[23] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[23]),
        .Q(acknowledged_sequence[23]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[24] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[24]),
        .Q(acknowledged_sequence[24]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[25] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[25]),
        .Q(acknowledged_sequence[25]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[26] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[26]),
        .Q(acknowledged_sequence[26]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[27] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[27]),
        .Q(acknowledged_sequence[27]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[28] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[28]),
        .Q(acknowledged_sequence[28]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[29] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[29]),
        .Q(acknowledged_sequence[29]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[2] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[2]),
        .Q(acknowledged_sequence[2]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[30] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[30]),
        .Q(acknowledged_sequence[30]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[31] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[31]),
        .Q(acknowledged_sequence[31]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[3] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[3]),
        .Q(acknowledged_sequence[3]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[4] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[4]),
        .Q(acknowledged_sequence[4]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[5] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[5]),
        .Q(acknowledged_sequence[5]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[6] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[6]),
        .Q(acknowledged_sequence[6]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[7] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[7]),
        .Q(acknowledged_sequence[7]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[8] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[8]),
        .Q(acknowledged_sequence[8]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
  FDRE \acknowledged_sequence_reg[9] 
       (.C(aclk),
        .CE(ack),
        .D(sequence_value[9]),
        .Q(acknowledged_sequence[9]),
        .R(\acknowledged_sequence[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "overlay_ack_tracker_bd" *) 
module facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd
   (acknowledged_sequence,
    ack,
    sequence_value,
    aclk,
    invalidate,
    aresetn);
  output [31:0]acknowledged_sequence;
  input ack;
  input [31:0]sequence_value;
  input aclk;
  input invalidate;
  input aresetn;

  wire ack;
  wire [31:0]acknowledged_sequence;
  wire aclk;
  wire aresetn;
  wire invalidate;
  wire [31:0]sequence_value;

  facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker u_core
       (.ack(ack),
        .acknowledged_sequence(acknowledged_sequence),
        .aclk(aclk),
        .aresetn(aresetn),
        .invalidate(invalidate),
        .sequence_value(sequence_value));
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
