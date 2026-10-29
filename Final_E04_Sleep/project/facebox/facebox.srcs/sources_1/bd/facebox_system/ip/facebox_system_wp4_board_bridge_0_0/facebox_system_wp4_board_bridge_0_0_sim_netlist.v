// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:18:54 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_wp4_board_bridge_0_0/facebox_system_wp4_board_bridge_0_0_sim_netlist.v
// Design      : facebox_system_wp4_board_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_wp4_board_bridge_0_0,wp4_board_bridge_m13_bd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "wp4_board_bridge_m13_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_wp4_board_bridge_0_0
   (aclk,
    aresetn,
    dma_tvalid,
    dma_tready,
    dma_tdata,
    dma_tlast,
    control,
    data_status,
    flag_status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF dma, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma TVALID" *) input dma_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma TREADY" *) output dma_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma TDATA" *) input [7:0]dma_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input dma_tlast;
  input [29:0]control;
  output [31:0]data_status;
  output [5:0]flag_status;

  wire aclk;
  wire aresetn;
  wire [29:0]control;
  wire [31:0]data_status;
  wire [7:0]dma_tdata;
  wire dma_tlast;
  wire dma_tready;
  wire dma_tvalid;
  wire [5:0]flag_status;
  wire inst_n_16;
  wire inst_n_17;
  wire inst_n_18;
  wire inst_n_19;
  wire \m_tdata_reg[7]_i_5_n_0 ;
  wire vertical_delta_carry_i_9_n_0;
  wire vertical_mix_next_i_2_n_0;

  facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd inst
       (.OPMODE(vertical_mix_next_i_2_n_0),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(inst_n_19),
        .control(control),
        .data_status(data_status[31:16]),
        .dma_tdata(dma_tdata),
        .dma_tlast(dma_tlast),
        .dma_tready(dma_tready),
        .dma_tvalid(dma_tvalid),
        .flag_status(flag_status),
        .hist_mem_reg_1(data_status[15:0]),
        .\m_tdata_reg[7]_i_5 (\m_tdata_reg[7]_i_5_n_0 ),
        .\state_reg[0] (inst_n_18),
        .\state_reg[2] (inst_n_16),
        .\state_reg[3] (inst_n_17),
        .vertical_delta_carry_i_9(vertical_delta_carry_i_9_n_0));
  FDCE \m_tdata_reg[7]_i_5 
       (.C(aclk),
        .CE(1'b1),
        .CLR(inst_n_19),
        .D(inst_n_17),
        .Q(\m_tdata_reg[7]_i_5_n_0 ));
  FDCE vertical_delta_carry_i_9
       (.C(aclk),
        .CE(1'b1),
        .CLR(inst_n_19),
        .D(inst_n_16),
        .Q(vertical_delta_carry_i_9_n_0));
  FDCE vertical_mix_next_i_2
       (.C(aclk),
        .CE(1'b1),
        .CLR(inst_n_19),
        .D(inst_n_18),
        .Q(vertical_mix_next_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "lbp_core" *) 
module facebox_system_wp4_board_bridge_0_0_lbp_core
   (D,
    DI,
    S,
    \sample_code_reg[1] ,
    \sample_code_reg[1]_0 ,
    \sample_code_reg[2] ,
    \sample_code_reg[2]_0 ,
    \sample_code_reg[3] ,
    \sample_code_reg[3]_0 ,
    \sample_code_reg[4] ,
    \sample_code_reg[4]_0 ,
    \sample_code_reg[5] ,
    \sample_code_reg[5]_0 ,
    \sample_code_reg[6] ,
    \sample_code_reg[6]_0 ,
    \sample_code_reg[7] ,
    \sample_code_reg[7]_0 );
  output [7:0]D;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\sample_code_reg[1] ;
  input [3:0]\sample_code_reg[1]_0 ;
  input [3:0]\sample_code_reg[2] ;
  input [3:0]\sample_code_reg[2]_0 ;
  input [3:0]\sample_code_reg[3] ;
  input [3:0]\sample_code_reg[3]_0 ;
  input [3:0]\sample_code_reg[4] ;
  input [3:0]\sample_code_reg[4]_0 ;
  input [3:0]\sample_code_reg[5] ;
  input [3:0]\sample_code_reg[5]_0 ;
  input [3:0]\sample_code_reg[6] ;
  input [3:0]\sample_code_reg[6]_0 ;
  input [3:0]\sample_code_reg[7] ;
  input [3:0]\sample_code_reg[7]_0 ;

  wire [7:0]D;
  wire [3:0]DI;
  wire [3:0]S;
  wire lbp_code0_carry_n_1;
  wire lbp_code0_carry_n_2;
  wire lbp_code0_carry_n_3;
  wire \lbp_code0_inferred__0/i__carry_n_1 ;
  wire \lbp_code0_inferred__0/i__carry_n_2 ;
  wire \lbp_code0_inferred__0/i__carry_n_3 ;
  wire \lbp_code0_inferred__1/i__carry_n_1 ;
  wire \lbp_code0_inferred__1/i__carry_n_2 ;
  wire \lbp_code0_inferred__1/i__carry_n_3 ;
  wire \lbp_code0_inferred__2/i__carry_n_1 ;
  wire \lbp_code0_inferred__2/i__carry_n_2 ;
  wire \lbp_code0_inferred__2/i__carry_n_3 ;
  wire \lbp_code0_inferred__3/i__carry_n_1 ;
  wire \lbp_code0_inferred__3/i__carry_n_2 ;
  wire \lbp_code0_inferred__3/i__carry_n_3 ;
  wire \lbp_code0_inferred__4/i__carry_n_1 ;
  wire \lbp_code0_inferred__4/i__carry_n_2 ;
  wire \lbp_code0_inferred__4/i__carry_n_3 ;
  wire \lbp_code0_inferred__5/i__carry_n_1 ;
  wire \lbp_code0_inferred__5/i__carry_n_2 ;
  wire \lbp_code0_inferred__5/i__carry_n_3 ;
  wire \lbp_code0_inferred__6/i__carry_n_1 ;
  wire \lbp_code0_inferred__6/i__carry_n_2 ;
  wire \lbp_code0_inferred__6/i__carry_n_3 ;
  wire [3:0]\sample_code_reg[1] ;
  wire [3:0]\sample_code_reg[1]_0 ;
  wire [3:0]\sample_code_reg[2] ;
  wire [3:0]\sample_code_reg[2]_0 ;
  wire [3:0]\sample_code_reg[3] ;
  wire [3:0]\sample_code_reg[3]_0 ;
  wire [3:0]\sample_code_reg[4] ;
  wire [3:0]\sample_code_reg[4]_0 ;
  wire [3:0]\sample_code_reg[5] ;
  wire [3:0]\sample_code_reg[5]_0 ;
  wire [3:0]\sample_code_reg[6] ;
  wire [3:0]\sample_code_reg[6]_0 ;
  wire [3:0]\sample_code_reg[7] ;
  wire [3:0]\sample_code_reg[7]_0 ;
  wire [3:0]NLW_lbp_code0_carry_O_UNCONNECTED;
  wire [3:0]\NLW_lbp_code0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_lbp_code0_inferred__6/i__carry_O_UNCONNECTED ;

  CARRY4 lbp_code0_carry
       (.CI(1'b0),
        .CO({D[0],lbp_code0_carry_n_1,lbp_code0_carry_n_2,lbp_code0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_lbp_code0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 \lbp_code0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({D[1],\lbp_code0_inferred__0/i__carry_n_1 ,\lbp_code0_inferred__0/i__carry_n_2 ,\lbp_code0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[1] ),
        .O(\NLW_lbp_code0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[1]_0 ));
  CARRY4 \lbp_code0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({D[2],\lbp_code0_inferred__1/i__carry_n_1 ,\lbp_code0_inferred__1/i__carry_n_2 ,\lbp_code0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[2] ),
        .O(\NLW_lbp_code0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[2]_0 ));
  CARRY4 \lbp_code0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({D[3],\lbp_code0_inferred__2/i__carry_n_1 ,\lbp_code0_inferred__2/i__carry_n_2 ,\lbp_code0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[3] ),
        .O(\NLW_lbp_code0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[3]_0 ));
  CARRY4 \lbp_code0_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({D[4],\lbp_code0_inferred__3/i__carry_n_1 ,\lbp_code0_inferred__3/i__carry_n_2 ,\lbp_code0_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[4] ),
        .O(\NLW_lbp_code0_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[4]_0 ));
  CARRY4 \lbp_code0_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({D[5],\lbp_code0_inferred__4/i__carry_n_1 ,\lbp_code0_inferred__4/i__carry_n_2 ,\lbp_code0_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[5] ),
        .O(\NLW_lbp_code0_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[5]_0 ));
  CARRY4 \lbp_code0_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({D[6],\lbp_code0_inferred__5/i__carry_n_1 ,\lbp_code0_inferred__5/i__carry_n_2 ,\lbp_code0_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[6] ),
        .O(\NLW_lbp_code0_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[6]_0 ));
  CARRY4 \lbp_code0_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({D[7],\lbp_code0_inferred__6/i__carry_n_1 ,\lbp_code0_inferred__6/i__carry_n_2 ,\lbp_code0_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\sample_code_reg[7] ),
        .O(\NLW_lbp_code0_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S(\sample_code_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "lbp_histogram" *) 
module facebox_system_wp4_board_bridge_0_0_lbp_histogram
   (clear_done,
    win_valid_reg,
    aresetn_0,
    hist_done,
    clearing_reg_0,
    flag_status,
    \hist_total_reg[0]_0 ,
    S,
    \hist_total_reg[8]_0 ,
    \hist_total_reg[12]_0 ,
    \hist_total_reg[15]_0 ,
    control_clear_d_reg,
    p_0_in7_out__0,
    \state_reg[2]_0 ,
    E,
    clearing_reg_1,
    sample_counted_reg_0,
    control_7_sp_1,
    hist_mem_reg_1_0,
    aclk,
    \base_addr_reg[0]_0 ,
    win_last,
    hist_done_reg_0,
    hist_total_error_reg_0,
    control,
    \bucket_reg_reg[0]_0 ,
    aresetn,
    win_valid,
    resize_valid,
    Q,
    \sample_x_reg[6]_0 ,
    D);
  output clear_done;
  output win_valid_reg;
  output aresetn_0;
  output hist_done;
  output clearing_reg_0;
  output [0:0]flag_status;
  output \hist_total_reg[0]_0 ;
  output [3:0]S;
  output [3:0]\hist_total_reg[8]_0 ;
  output [3:0]\hist_total_reg[12]_0 ;
  output [2:0]\hist_total_reg[15]_0 ;
  output control_clear_d_reg;
  output p_0_in7_out__0;
  output \state_reg[2]_0 ;
  output [0:0]E;
  output clearing_reg_1;
  output sample_counted_reg_0;
  output control_7_sp_1;
  output [15:0]hist_mem_reg_1_0;
  input aclk;
  input \base_addr_reg[0]_0 ;
  input win_last;
  input hist_done_reg_0;
  input hist_total_error_reg_0;
  input [12:0]control;
  input \bucket_reg_reg[0]_0 ;
  input aresetn;
  input win_valid;
  input resize_valid;
  input [6:0]Q;
  input [6:0]\sample_x_reg[6]_0 ;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [3:0]S;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__0_n_4;
  wire _carry__0_n_5;
  wire _carry__0_n_6;
  wire _carry__0_n_7;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__1_n_4;
  wire _carry__1_n_5;
  wire _carry__1_n_6;
  wire _carry__1_n_7;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__2_n_5;
  wire _carry__2_n_6;
  wire _carry__2_n_7;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire _carry_n_4;
  wire _carry_n_5;
  wire _carry_n_6;
  wire _carry_n_7;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire [11:0]base_addr;
  wire base_addr_1;
  wire \base_addr_reg[0]_0 ;
  wire [5:0]bucket_reg;
  wire \bucket_reg[0]_i_4_n_0 ;
  wire \bucket_reg[0]_i_5_n_0 ;
  wire \bucket_reg[0]_i_6_n_0 ;
  wire \bucket_reg[0]_i_7_n_0 ;
  wire \bucket_reg[1]_i_4_n_0 ;
  wire \bucket_reg[1]_i_5_n_0 ;
  wire \bucket_reg[1]_i_6_n_0 ;
  wire \bucket_reg[1]_i_7_n_0 ;
  wire \bucket_reg[2]_i_4_n_0 ;
  wire \bucket_reg[2]_i_5_n_0 ;
  wire \bucket_reg[2]_i_6_n_0 ;
  wire \bucket_reg[2]_i_7_n_0 ;
  wire \bucket_reg[3]_i_4_n_0 ;
  wire \bucket_reg[3]_i_5_n_0 ;
  wire \bucket_reg[3]_i_6_n_0 ;
  wire \bucket_reg[3]_i_7_n_0 ;
  wire \bucket_reg[4]_i_4_n_0 ;
  wire \bucket_reg[4]_i_5_n_0 ;
  wire \bucket_reg[4]_i_6_n_0 ;
  wire \bucket_reg[4]_i_7_n_0 ;
  wire \bucket_reg[5]_i_1_n_0 ;
  wire \bucket_reg[5]_i_5_n_0 ;
  wire \bucket_reg[5]_i_6_n_0 ;
  wire \bucket_reg[5]_i_7_n_0 ;
  wire \bucket_reg[5]_i_8_n_0 ;
  wire \bucket_reg_reg[0]_0 ;
  wire \bucket_reg_reg[0]_i_1_n_0 ;
  wire \bucket_reg_reg[0]_i_2_n_0 ;
  wire \bucket_reg_reg[0]_i_3_n_0 ;
  wire \bucket_reg_reg[1]_i_1_n_0 ;
  wire \bucket_reg_reg[1]_i_2_n_0 ;
  wire \bucket_reg_reg[1]_i_3_n_0 ;
  wire \bucket_reg_reg[2]_i_1_n_0 ;
  wire \bucket_reg_reg[2]_i_2_n_0 ;
  wire \bucket_reg_reg[2]_i_3_n_0 ;
  wire \bucket_reg_reg[3]_i_1_n_0 ;
  wire \bucket_reg_reg[3]_i_2_n_0 ;
  wire \bucket_reg_reg[3]_i_3_n_0 ;
  wire \bucket_reg_reg[4]_i_1_n_0 ;
  wire \bucket_reg_reg[4]_i_2_n_0 ;
  wire \bucket_reg_reg[4]_i_3_n_0 ;
  wire \bucket_reg_reg[5]_i_2_n_0 ;
  wire \bucket_reg_reg[5]_i_3_n_0 ;
  wire \bucket_reg_reg[5]_i_4_n_0 ;
  wire \cell_x_reg[0]_i_2_n_0 ;
  wire \cell_x_reg[0]_i_3_n_0 ;
  wire \cell_x_reg[1]_i_2_n_0 ;
  wire \cell_x_reg[1]_i_3_n_0 ;
  wire \cell_x_reg[2]_i_1_n_0 ;
  wire \cell_x_reg[2]_i_2_n_0 ;
  wire \cell_x_reg_reg[0]_i_1_n_0 ;
  wire \cell_x_reg_reg[1]_i_1_n_0 ;
  wire \cell_y_reg[0]_i_2_n_0 ;
  wire \cell_y_reg[0]_i_3_n_0 ;
  wire \cell_y_reg[1]_i_2_n_0 ;
  wire \cell_y_reg[1]_i_3_n_0 ;
  wire \cell_y_reg[2]_i_1_n_0 ;
  wire \cell_y_reg[2]_i_2_n_0 ;
  wire \cell_y_reg_reg[0]_i_1_n_0 ;
  wire \cell_y_reg_reg[1]_i_1_n_0 ;
  wire [11:0]clear_addr;
  wire clear_addr0_carry__0_n_0;
  wire clear_addr0_carry__0_n_1;
  wire clear_addr0_carry__0_n_2;
  wire clear_addr0_carry__0_n_3;
  wire clear_addr0_carry__0_n_4;
  wire clear_addr0_carry__0_n_5;
  wire clear_addr0_carry__0_n_6;
  wire clear_addr0_carry__0_n_7;
  wire clear_addr0_carry__1_n_2;
  wire clear_addr0_carry__1_n_3;
  wire clear_addr0_carry__1_n_5;
  wire clear_addr0_carry__1_n_6;
  wire clear_addr0_carry__1_n_7;
  wire clear_addr0_carry_n_0;
  wire clear_addr0_carry_n_1;
  wire clear_addr0_carry_n_2;
  wire clear_addr0_carry_n_3;
  wire clear_addr0_carry_n_4;
  wire clear_addr0_carry_n_5;
  wire clear_addr0_carry_n_6;
  wire clear_addr0_carry_n_7;
  wire \clear_addr[0]_i_1_n_0 ;
  wire \clear_addr[11]_i_1_n_0 ;
  wire \clear_addr[11]_i_3_n_0 ;
  wire \clear_addr[11]_i_4_n_0 ;
  wire \clear_addr[11]_i_5_n_0 ;
  wire clear_done;
  wire clear_done_i_1_n_0;
  wire clearing_i_1_n_0;
  wire clearing_reg_0;
  wire clearing_reg_1;
  wire [12:0]control;
  wire control_7_sn_1;
  wire control_clear_d_reg;
  wire [0:0]flag_status;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire hist_done;
  wire hist_done_i_1_n_0;
  wire hist_done_reg_0;
  wire hist_mem_reg_0_i_13_n_0;
  wire hist_mem_reg_0_i_14_n_0;
  wire hist_mem_reg_0_i_15_n_0;
  wire hist_mem_reg_0_i_16_n_0;
  wire hist_mem_reg_0_i_17_n_0;
  wire hist_mem_reg_0_i_18_n_0;
  wire hist_mem_reg_0_i_19_n_0;
  wire hist_mem_reg_0_i_20_n_0;
  wire hist_mem_reg_0_i_21_n_0;
  wire hist_mem_reg_0_i_22_n_0;
  wire hist_mem_reg_0_i_23_n_0;
  wire hist_mem_reg_0_i_24_n_0;
  wire [15:0]hist_mem_reg_1_0;
  wire \hist_total[11]_i_2_n_0 ;
  wire \hist_total[11]_i_3_n_0 ;
  wire \hist_total[11]_i_4_n_0 ;
  wire \hist_total[11]_i_5_n_0 ;
  wire \hist_total[15]_i_1_n_0 ;
  wire \hist_total[15]_i_4_n_0 ;
  wire \hist_total[15]_i_5_n_0 ;
  wire \hist_total[15]_i_6_n_0 ;
  wire \hist_total[15]_i_7_n_0 ;
  wire \hist_total[15]_i_8_n_0 ;
  wire \hist_total[3]_i_2_n_0 ;
  wire \hist_total[3]_i_3_n_0 ;
  wire \hist_total[3]_i_4_n_0 ;
  wire \hist_total[3]_i_5_n_0 ;
  wire \hist_total[3]_i_6_n_0 ;
  wire \hist_total[7]_i_2_n_0 ;
  wire \hist_total[7]_i_3_n_0 ;
  wire \hist_total[7]_i_4_n_0 ;
  wire \hist_total[7]_i_5_n_0 ;
  wire [16:1]hist_total_error1;
  wire hist_total_error1_carry__0_n_0;
  wire hist_total_error1_carry__0_n_1;
  wire hist_total_error1_carry__0_n_2;
  wire hist_total_error1_carry__0_n_3;
  wire hist_total_error1_carry__1_n_0;
  wire hist_total_error1_carry__1_n_1;
  wire hist_total_error1_carry__1_n_2;
  wire hist_total_error1_carry__1_n_3;
  wire hist_total_error1_carry__2_n_2;
  wire hist_total_error1_carry__2_n_3;
  wire hist_total_error1_carry_n_0;
  wire hist_total_error1_carry_n_1;
  wire hist_total_error1_carry_n_2;
  wire hist_total_error1_carry_n_3;
  wire hist_total_error_i_10_n_0;
  wire hist_total_error_i_11_n_0;
  wire hist_total_error_i_4_n_0;
  wire hist_total_error_i_5_n_0;
  wire hist_total_error_i_6_n_0;
  wire hist_total_error_i_7_n_0;
  wire hist_total_error_i_8_n_0;
  wire hist_total_error_i_9_n_0;
  wire hist_total_error_reg_0;
  wire \hist_total_reg[0]_0 ;
  wire \hist_total_reg[11]_i_1_n_0 ;
  wire \hist_total_reg[11]_i_1_n_1 ;
  wire \hist_total_reg[11]_i_1_n_2 ;
  wire \hist_total_reg[11]_i_1_n_3 ;
  wire \hist_total_reg[11]_i_1_n_4 ;
  wire \hist_total_reg[11]_i_1_n_5 ;
  wire \hist_total_reg[11]_i_1_n_6 ;
  wire \hist_total_reg[11]_i_1_n_7 ;
  wire [3:0]\hist_total_reg[12]_0 ;
  wire [2:0]\hist_total_reg[15]_0 ;
  wire \hist_total_reg[15]_i_2_n_1 ;
  wire \hist_total_reg[15]_i_2_n_2 ;
  wire \hist_total_reg[15]_i_2_n_3 ;
  wire \hist_total_reg[15]_i_2_n_4 ;
  wire \hist_total_reg[15]_i_2_n_5 ;
  wire \hist_total_reg[15]_i_2_n_6 ;
  wire \hist_total_reg[15]_i_2_n_7 ;
  wire \hist_total_reg[3]_i_1_n_0 ;
  wire \hist_total_reg[3]_i_1_n_1 ;
  wire \hist_total_reg[3]_i_1_n_2 ;
  wire \hist_total_reg[3]_i_1_n_3 ;
  wire \hist_total_reg[3]_i_1_n_4 ;
  wire \hist_total_reg[3]_i_1_n_5 ;
  wire \hist_total_reg[3]_i_1_n_6 ;
  wire \hist_total_reg[3]_i_1_n_7 ;
  wire \hist_total_reg[7]_i_1_n_0 ;
  wire \hist_total_reg[7]_i_1_n_1 ;
  wire \hist_total_reg[7]_i_1_n_2 ;
  wire \hist_total_reg[7]_i_1_n_3 ;
  wire \hist_total_reg[7]_i_1_n_4 ;
  wire \hist_total_reg[7]_i_1_n_5 ;
  wire \hist_total_reg[7]_i_1_n_6 ;
  wire \hist_total_reg[7]_i_1_n_7 ;
  wire [3:0]\hist_total_reg[8]_0 ;
  wire input_counted__0;
  wire p_0_in7_out__0;
  wire [11:1]p_1_in;
  wire [11:0]ram_a_addr;
  wire [15:0]ram_a_wdata;
  wire ram_a_we;
  wire [15:0]ram_read_data;
  wire [15:0]rd_data;
  wire resize_valid;
  wire [11:0]rmw_addr;
  wire \rmw_addr[3]_i_2_n_0 ;
  wire \rmw_addr[3]_i_3_n_0 ;
  wire \rmw_addr[3]_i_4_n_0 ;
  wire \rmw_addr[3]_i_5_n_0 ;
  wire \rmw_addr[7]_i_2_n_0 ;
  wire \rmw_addr[7]_i_3_n_0 ;
  wire rmw_addr_0;
  wire \rmw_addr_reg[11]_i_2_n_1 ;
  wire \rmw_addr_reg[11]_i_2_n_2 ;
  wire \rmw_addr_reg[11]_i_2_n_3 ;
  wire \rmw_addr_reg[11]_i_2_n_4 ;
  wire \rmw_addr_reg[11]_i_2_n_5 ;
  wire \rmw_addr_reg[11]_i_2_n_6 ;
  wire \rmw_addr_reg[11]_i_2_n_7 ;
  wire \rmw_addr_reg[3]_i_1_n_0 ;
  wire \rmw_addr_reg[3]_i_1_n_1 ;
  wire \rmw_addr_reg[3]_i_1_n_2 ;
  wire \rmw_addr_reg[3]_i_1_n_3 ;
  wire \rmw_addr_reg[3]_i_1_n_4 ;
  wire \rmw_addr_reg[3]_i_1_n_5 ;
  wire \rmw_addr_reg[3]_i_1_n_6 ;
  wire \rmw_addr_reg[3]_i_1_n_7 ;
  wire \rmw_addr_reg[7]_i_1_n_0 ;
  wire \rmw_addr_reg[7]_i_1_n_1 ;
  wire \rmw_addr_reg[7]_i_1_n_2 ;
  wire \rmw_addr_reg[7]_i_1_n_3 ;
  wire \rmw_addr_reg[7]_i_1_n_4 ;
  wire \rmw_addr_reg[7]_i_1_n_5 ;
  wire \rmw_addr_reg[7]_i_1_n_6 ;
  wire \rmw_addr_reg[7]_i_1_n_7 ;
  wire [7:0]sample_code;
  wire sample_counted_i_2_n_0;
  wire sample_counted_i_3_n_0;
  wire sample_counted_i_4_n_0;
  wire sample_counted_i_5_n_0;
  wire sample_counted_reg_0;
  wire sample_counted_reg_n_0;
  wire sample_last_reg_n_0;
  wire [6:0]sample_x;
  wire [6:0]\sample_x_reg[6]_0 ;
  wire [6:0]sample_y;
  wire [5:0]sel;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire win_last;
  wire win_valid;
  wire win_valid_reg;
  wire [3:2]NLW__carry__2_CO_UNCONNECTED;
  wire [3:3]NLW__carry__2_O_UNCONNECTED;
  wire [3:2]NLW_clear_addr0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_clear_addr0_carry__1_O_UNCONNECTED;
  wire NLW_hist_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_hist_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_hist_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_hist_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_hist_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:1]NLW_hist_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_hist_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_hist_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_hist_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_hist_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_hist_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_hist_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_hist_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:7]NLW_hist_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:7]NLW_hist_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_hist_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_hist_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_hist_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_hist_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire [2:2]NLW_hist_total_error1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_hist_total_error1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_hist_total_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_rmw_addr_reg[11]_i_2_CO_UNCONNECTED ;

  assign control_7_sp_1 = control_7_sn_1;
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(ram_read_data[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({_carry_n_4,_carry_n_5,_carry_n_6,_carry_n_7}),
        .S(ram_read_data[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({_carry__0_n_4,_carry__0_n_5,_carry__0_n_6,_carry__0_n_7}),
        .S(ram_read_data[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({_carry__1_n_4,_carry__1_n_5,_carry__1_n_6,_carry__1_n_7}),
        .S(ram_read_data[12:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({NLW__carry__2_CO_UNCONNECTED[3:2],_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW__carry__2_O_UNCONNECTED[3],_carry__2_n_5,_carry__2_n_6,_carry__2_n_7}),
        .S({1'b0,ram_read_data[15:13]}));
  LUT6 #(
    .INIT(64'h0000000010001010)) 
    \base_addr[11]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\bucket_reg_reg[0]_0 ),
        .I4(control[12]),
        .I5(clearing_reg_0),
        .O(base_addr_1));
  FDCE \base_addr_reg[0] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(sel[0]),
        .Q(base_addr[0]));
  FDCE \base_addr_reg[10] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(aresetn_0),
        .D(g0_b10_n_0),
        .Q(base_addr[10]));
  FDCE \base_addr_reg[11] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(aresetn_0),
        .D(g0_b11_n_0),
        .Q(base_addr[11]));
  FDCE \base_addr_reg[1] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b1_n_0),
        .Q(base_addr[1]));
  FDCE \base_addr_reg[2] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b2_n_0),
        .Q(base_addr[2]));
  FDCE \base_addr_reg[3] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b3_n_0),
        .Q(base_addr[3]));
  FDCE \base_addr_reg[4] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b4_n_0),
        .Q(base_addr[4]));
  FDCE \base_addr_reg[5] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b5_n_0),
        .Q(base_addr[5]));
  FDCE \base_addr_reg[6] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b6_n_0),
        .Q(base_addr[6]));
  FDCE \base_addr_reg[7] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(g0_b7_n_0),
        .Q(base_addr[7]));
  FDCE \base_addr_reg[8] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(aresetn_0),
        .D(g0_b8_n_0),
        .Q(base_addr[8]));
  FDCE \base_addr_reg[9] 
       (.C(aclk),
        .CE(base_addr_1),
        .CLR(aresetn_0),
        .D(g0_b9_n_0),
        .Q(base_addr[9]));
  LUT6 #(
    .INIT(64'h0001000000009412)) 
    \bucket_reg[0]_i_4 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[4]),
        .I3(sample_code[5]),
        .I4(sample_code[2]),
        .I5(sample_code[1]),
        .O(\bucket_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080884040000000B)) 
    \bucket_reg[0]_i_5 
       (.I0(sample_code[1]),
        .I1(sample_code[7]),
        .I2(sample_code[4]),
        .I3(sample_code[5]),
        .I4(sample_code[2]),
        .I5(sample_code[6]),
        .O(\bucket_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4010011000C00001)) 
    \bucket_reg[0]_i_6 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[5]),
        .I5(sample_code[2]),
        .O(\bucket_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0808000B4000000)) 
    \bucket_reg[0]_i_7 
       (.I0(sample_code[5]),
        .I1(sample_code[7]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[2]),
        .I5(sample_code[6]),
        .O(\bucket_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFEFEFFF4)) 
    \bucket_reg[1]_i_4 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[2]),
        .I5(sample_code[5]),
        .O(\bucket_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDF5FFF7DFDFFFFFE)) 
    \bucket_reg[1]_i_5 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[5]),
        .I3(sample_code[2]),
        .I4(sample_code[1]),
        .I5(sample_code[6]),
        .O(\bucket_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFEEEFBFFFEFF)) 
    \bucket_reg[1]_i_6 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[1]),
        .I3(sample_code[4]),
        .I4(sample_code[5]),
        .I5(sample_code[2]),
        .O(\bucket_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F7F77FFFF3FFFFF)) 
    \bucket_reg[1]_i_7 
       (.I0(sample_code[6]),
        .I1(sample_code[7]),
        .I2(sample_code[1]),
        .I3(sample_code[5]),
        .I4(sample_code[2]),
        .I5(sample_code[4]),
        .O(\bucket_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000051032)) 
    \bucket_reg[2]_i_4 
       (.I0(sample_code[7]),
        .I1(sample_code[1]),
        .I2(sample_code[6]),
        .I3(sample_code[5]),
        .I4(sample_code[2]),
        .I5(sample_code[4]),
        .O(\bucket_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2222000201020002)) 
    \bucket_reg[2]_i_5 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[5]),
        .I3(sample_code[2]),
        .I4(sample_code[1]),
        .I5(sample_code[6]),
        .O(\bucket_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000045010001)) 
    \bucket_reg[2]_i_6 
       (.I0(sample_code[7]),
        .I1(sample_code[1]),
        .I2(sample_code[5]),
        .I3(sample_code[2]),
        .I4(sample_code[4]),
        .I5(sample_code[6]),
        .O(\bucket_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4580808080000000)) 
    \bucket_reg[2]_i_7 
       (.I0(sample_code[7]),
        .I1(sample_code[5]),
        .I2(sample_code[6]),
        .I3(sample_code[2]),
        .I4(sample_code[1]),
        .I5(sample_code[4]),
        .O(\bucket_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFEFEFEF2)) 
    \bucket_reg[3]_i_4 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[2]),
        .I5(sample_code[5]),
        .O(\bucket_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F77DFDDFFFFCFEE)) 
    \bucket_reg[3]_i_5 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[1]),
        .I3(sample_code[2]),
        .I4(sample_code[5]),
        .I5(sample_code[6]),
        .O(\bucket_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDFFFFFFAEFFFFFE)) 
    \bucket_reg[3]_i_6 
       (.I0(sample_code[7]),
        .I1(sample_code[1]),
        .I2(sample_code[2]),
        .I3(sample_code[5]),
        .I4(sample_code[4]),
        .I5(sample_code[6]),
        .O(\bucket_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF77FF3F5FFFFF)) 
    \bucket_reg[3]_i_7 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[2]),
        .I3(sample_code[5]),
        .I4(sample_code[1]),
        .I5(sample_code[6]),
        .O(\bucket_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF75FEFEFEEE)) 
    \bucket_reg[4]_i_4 
       (.I0(sample_code[7]),
        .I1(sample_code[5]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[2]),
        .I5(sample_code[6]),
        .O(\bucket_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFDDFFFFCFEE)) 
    \bucket_reg[4]_i_5 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[1]),
        .I3(sample_code[2]),
        .I4(sample_code[5]),
        .I5(sample_code[6]),
        .O(\bucket_reg[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \bucket_reg[4]_i_6 
       (.I0(sample_code[6]),
        .I1(sample_code[2]),
        .I2(sample_code[1]),
        .I3(sample_code[5]),
        .I4(sample_code[7]),
        .O(\bucket_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF3FFFFF7F0FFFFF)) 
    \bucket_reg[4]_i_7 
       (.I0(sample_code[4]),
        .I1(sample_code[7]),
        .I2(sample_code[1]),
        .I3(sample_code[5]),
        .I4(sample_code[2]),
        .I5(sample_code[6]),
        .O(\bucket_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000510000)) 
    \bucket_reg[5]_i_1 
       (.I0(clearing_reg_0),
        .I1(control[12]),
        .I2(\bucket_reg_reg[0]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\bucket_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAFEFEFEE8)) 
    \bucket_reg[5]_i_5 
       (.I0(sample_code[7]),
        .I1(sample_code[6]),
        .I2(sample_code[4]),
        .I3(sample_code[1]),
        .I4(sample_code[2]),
        .I5(sample_code[5]),
        .O(\bucket_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFCC)) 
    \bucket_reg[5]_i_6 
       (.I0(sample_code[7]),
        .I1(sample_code[4]),
        .I2(sample_code[1]),
        .I3(sample_code[2]),
        .I4(sample_code[5]),
        .I5(sample_code[6]),
        .O(\bucket_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5DFF0CAE)) 
    \bucket_reg[5]_i_7 
       (.I0(sample_code[5]),
        .I1(sample_code[1]),
        .I2(sample_code[2]),
        .I3(sample_code[4]),
        .I4(sample_code[6]),
        .I5(sample_code[7]),
        .O(\bucket_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF5FDF)) 
    \bucket_reg[5]_i_8 
       (.I0(sample_code[1]),
        .I1(sample_code[5]),
        .I2(sample_code[2]),
        .I3(sample_code[4]),
        .I4(sample_code[6]),
        .I5(sample_code[7]),
        .O(\bucket_reg[5]_i_8_n_0 ));
  FDCE \bucket_reg_reg[0] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[0]_i_1_n_0 ),
        .Q(bucket_reg[0]));
  MUXF8 \bucket_reg_reg[0]_i_1 
       (.I0(\bucket_reg_reg[0]_i_2_n_0 ),
        .I1(\bucket_reg_reg[0]_i_3_n_0 ),
        .O(\bucket_reg_reg[0]_i_1_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[0]_i_2 
       (.I0(\bucket_reg[0]_i_4_n_0 ),
        .I1(\bucket_reg[0]_i_5_n_0 ),
        .O(\bucket_reg_reg[0]_i_2_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[0]_i_3 
       (.I0(\bucket_reg[0]_i_6_n_0 ),
        .I1(\bucket_reg[0]_i_7_n_0 ),
        .O(\bucket_reg_reg[0]_i_3_n_0 ),
        .S(sample_code[0]));
  FDCE \bucket_reg_reg[1] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[1]_i_1_n_0 ),
        .Q(bucket_reg[1]));
  MUXF8 \bucket_reg_reg[1]_i_1 
       (.I0(\bucket_reg_reg[1]_i_2_n_0 ),
        .I1(\bucket_reg_reg[1]_i_3_n_0 ),
        .O(\bucket_reg_reg[1]_i_1_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[1]_i_2 
       (.I0(\bucket_reg[1]_i_4_n_0 ),
        .I1(\bucket_reg[1]_i_5_n_0 ),
        .O(\bucket_reg_reg[1]_i_2_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[1]_i_3 
       (.I0(\bucket_reg[1]_i_6_n_0 ),
        .I1(\bucket_reg[1]_i_7_n_0 ),
        .O(\bucket_reg_reg[1]_i_3_n_0 ),
        .S(sample_code[0]));
  FDCE \bucket_reg_reg[2] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[2]_i_1_n_0 ),
        .Q(bucket_reg[2]));
  MUXF8 \bucket_reg_reg[2]_i_1 
       (.I0(\bucket_reg_reg[2]_i_2_n_0 ),
        .I1(\bucket_reg_reg[2]_i_3_n_0 ),
        .O(\bucket_reg_reg[2]_i_1_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[2]_i_2 
       (.I0(\bucket_reg[2]_i_4_n_0 ),
        .I1(\bucket_reg[2]_i_5_n_0 ),
        .O(\bucket_reg_reg[2]_i_2_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[2]_i_3 
       (.I0(\bucket_reg[2]_i_6_n_0 ),
        .I1(\bucket_reg[2]_i_7_n_0 ),
        .O(\bucket_reg_reg[2]_i_3_n_0 ),
        .S(sample_code[0]));
  FDCE \bucket_reg_reg[3] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[3]_i_1_n_0 ),
        .Q(bucket_reg[3]));
  MUXF8 \bucket_reg_reg[3]_i_1 
       (.I0(\bucket_reg_reg[3]_i_2_n_0 ),
        .I1(\bucket_reg_reg[3]_i_3_n_0 ),
        .O(\bucket_reg_reg[3]_i_1_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[3]_i_2 
       (.I0(\bucket_reg[3]_i_4_n_0 ),
        .I1(\bucket_reg[3]_i_5_n_0 ),
        .O(\bucket_reg_reg[3]_i_2_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[3]_i_3 
       (.I0(\bucket_reg[3]_i_6_n_0 ),
        .I1(\bucket_reg[3]_i_7_n_0 ),
        .O(\bucket_reg_reg[3]_i_3_n_0 ),
        .S(sample_code[0]));
  FDCE \bucket_reg_reg[4] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[4]_i_1_n_0 ),
        .Q(bucket_reg[4]));
  MUXF8 \bucket_reg_reg[4]_i_1 
       (.I0(\bucket_reg_reg[4]_i_2_n_0 ),
        .I1(\bucket_reg_reg[4]_i_3_n_0 ),
        .O(\bucket_reg_reg[4]_i_1_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[4]_i_2 
       (.I0(\bucket_reg[4]_i_4_n_0 ),
        .I1(\bucket_reg[4]_i_5_n_0 ),
        .O(\bucket_reg_reg[4]_i_2_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[4]_i_3 
       (.I0(\bucket_reg[4]_i_6_n_0 ),
        .I1(\bucket_reg[4]_i_7_n_0 ),
        .O(\bucket_reg_reg[4]_i_3_n_0 ),
        .S(sample_code[0]));
  FDCE \bucket_reg_reg[5] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\bucket_reg_reg[5]_i_2_n_0 ),
        .Q(bucket_reg[5]));
  MUXF8 \bucket_reg_reg[5]_i_2 
       (.I0(\bucket_reg_reg[5]_i_3_n_0 ),
        .I1(\bucket_reg_reg[5]_i_4_n_0 ),
        .O(\bucket_reg_reg[5]_i_2_n_0 ),
        .S(sample_code[3]));
  MUXF7 \bucket_reg_reg[5]_i_3 
       (.I0(\bucket_reg[5]_i_5_n_0 ),
        .I1(\bucket_reg[5]_i_6_n_0 ),
        .O(\bucket_reg_reg[5]_i_3_n_0 ),
        .S(sample_code[0]));
  MUXF7 \bucket_reg_reg[5]_i_4 
       (.I0(\bucket_reg[5]_i_7_n_0 ),
        .I1(\bucket_reg[5]_i_8_n_0 ),
        .O(\bucket_reg_reg[5]_i_4_n_0 ),
        .S(sample_code[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFC00000004)) 
    \cell_x_reg[0]_i_2 
       (.I0(sample_x[0]),
        .I1(sample_x[5]),
        .I2(sample_x[1]),
        .I3(sample_x[2]),
        .I4(sample_x[3]),
        .I5(sample_x[4]),
        .O(\cell_x_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFF0F0F0BAF0F0F0)) 
    \cell_x_reg[0]_i_3 
       (.I0(sample_x[5]),
        .I1(sample_x[0]),
        .I2(sample_x[4]),
        .I3(sample_x[2]),
        .I4(sample_x[3]),
        .I5(sample_x[1]),
        .O(\cell_x_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFE00000000)) 
    \cell_x_reg[1]_i_2 
       (.I0(sample_x[0]),
        .I1(sample_x[3]),
        .I2(sample_x[2]),
        .I3(sample_x[1]),
        .I4(sample_x[4]),
        .I5(sample_x[5]),
        .O(\cell_x_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0008000)) 
    \cell_x_reg[1]_i_3 
       (.I0(sample_x[4]),
        .I1(sample_x[0]),
        .I2(sample_x[2]),
        .I3(sample_x[3]),
        .I4(sample_x[1]),
        .I5(sample_x[5]),
        .O(\cell_x_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \cell_x_reg[2]_i_1 
       (.I0(sample_x[5]),
        .I1(sample_x[0]),
        .I2(\cell_x_reg[2]_i_2_n_0 ),
        .I3(sample_x[4]),
        .I4(sample_x[6]),
        .O(\cell_x_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cell_x_reg[2]_i_2 
       (.I0(sample_x[2]),
        .I1(sample_x[3]),
        .I2(sample_x[1]),
        .O(\cell_x_reg[2]_i_2_n_0 ));
  FDCE \cell_x_reg_reg[0] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_x_reg_reg[0]_i_1_n_0 ),
        .Q(sel[0]));
  MUXF7 \cell_x_reg_reg[0]_i_1 
       (.I0(\cell_x_reg[0]_i_2_n_0 ),
        .I1(\cell_x_reg[0]_i_3_n_0 ),
        .O(\cell_x_reg_reg[0]_i_1_n_0 ),
        .S(sample_x[6]));
  FDCE \cell_x_reg_reg[1] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_x_reg_reg[1]_i_1_n_0 ),
        .Q(sel[1]));
  MUXF7 \cell_x_reg_reg[1]_i_1 
       (.I0(\cell_x_reg[1]_i_2_n_0 ),
        .I1(\cell_x_reg[1]_i_3_n_0 ),
        .O(\cell_x_reg_reg[1]_i_1_n_0 ),
        .S(sample_x[6]));
  FDCE \cell_x_reg_reg[2] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_x_reg[2]_i_1_n_0 ),
        .Q(sel[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFC00000004)) 
    \cell_y_reg[0]_i_2 
       (.I0(sample_y[0]),
        .I1(sample_y[5]),
        .I2(sample_y[1]),
        .I3(sample_y[2]),
        .I4(sample_y[3]),
        .I5(sample_y[4]),
        .O(\cell_y_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFF0F0F0BAF0F0F0)) 
    \cell_y_reg[0]_i_3 
       (.I0(sample_y[5]),
        .I1(sample_y[0]),
        .I2(sample_y[4]),
        .I3(sample_y[2]),
        .I4(sample_y[3]),
        .I5(sample_y[1]),
        .O(\cell_y_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFE00000000)) 
    \cell_y_reg[1]_i_2 
       (.I0(sample_y[0]),
        .I1(sample_y[3]),
        .I2(sample_y[2]),
        .I3(sample_y[1]),
        .I4(sample_y[4]),
        .I5(sample_y[5]),
        .O(\cell_y_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0008000)) 
    \cell_y_reg[1]_i_3 
       (.I0(sample_y[4]),
        .I1(sample_y[0]),
        .I2(sample_y[2]),
        .I3(sample_y[3]),
        .I4(sample_y[1]),
        .I5(sample_y[5]),
        .O(\cell_y_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \cell_y_reg[2]_i_1 
       (.I0(sample_y[5]),
        .I1(sample_y[0]),
        .I2(\cell_y_reg[2]_i_2_n_0 ),
        .I3(sample_y[4]),
        .I4(sample_y[6]),
        .O(\cell_y_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cell_y_reg[2]_i_2 
       (.I0(sample_y[2]),
        .I1(sample_y[3]),
        .I2(sample_y[1]),
        .O(\cell_y_reg[2]_i_2_n_0 ));
  FDCE \cell_y_reg_reg[0] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_y_reg_reg[0]_i_1_n_0 ),
        .Q(sel[3]));
  MUXF7 \cell_y_reg_reg[0]_i_1 
       (.I0(\cell_y_reg[0]_i_2_n_0 ),
        .I1(\cell_y_reg[0]_i_3_n_0 ),
        .O(\cell_y_reg_reg[0]_i_1_n_0 ),
        .S(sample_y[6]));
  FDCE \cell_y_reg_reg[1] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_y_reg_reg[1]_i_1_n_0 ),
        .Q(sel[4]));
  MUXF7 \cell_y_reg_reg[1]_i_1 
       (.I0(\cell_y_reg[1]_i_2_n_0 ),
        .I1(\cell_y_reg[1]_i_3_n_0 ),
        .O(\cell_y_reg_reg[1]_i_1_n_0 ),
        .S(sample_y[6]));
  FDCE \cell_y_reg_reg[2] 
       (.C(aclk),
        .CE(\bucket_reg[5]_i_1_n_0 ),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\cell_y_reg[2]_i_1_n_0 ),
        .Q(sel[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 clear_addr0_carry
       (.CI(1'b0),
        .CO({clear_addr0_carry_n_0,clear_addr0_carry_n_1,clear_addr0_carry_n_2,clear_addr0_carry_n_3}),
        .CYINIT(clear_addr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clear_addr0_carry_n_4,clear_addr0_carry_n_5,clear_addr0_carry_n_6,clear_addr0_carry_n_7}),
        .S(clear_addr[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 clear_addr0_carry__0
       (.CI(clear_addr0_carry_n_0),
        .CO({clear_addr0_carry__0_n_0,clear_addr0_carry__0_n_1,clear_addr0_carry__0_n_2,clear_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clear_addr0_carry__0_n_4,clear_addr0_carry__0_n_5,clear_addr0_carry__0_n_6,clear_addr0_carry__0_n_7}),
        .S(clear_addr[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 clear_addr0_carry__1
       (.CI(clear_addr0_carry__0_n_0),
        .CO({NLW_clear_addr0_carry__1_CO_UNCONNECTED[3:2],clear_addr0_carry__1_n_2,clear_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clear_addr0_carry__1_O_UNCONNECTED[3],clear_addr0_carry__1_n_5,clear_addr0_carry__1_n_6,clear_addr0_carry__1_n_7}),
        .S({1'b0,clear_addr[11:9]}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \clear_addr[0]_i_1 
       (.I0(clear_addr[0]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\clear_addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[10]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__1_n_6),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hAE)) 
    \clear_addr[11]_i_1 
       (.I0(clearing_reg_0),
        .I1(control[12]),
        .I2(\bucket_reg_reg[0]_0 ),
        .O(\clear_addr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[11]_i_2 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__1_n_5),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \clear_addr[11]_i_3 
       (.I0(clear_addr[2]),
        .I1(clear_addr[10]),
        .I2(clear_addr[3]),
        .I3(\clear_addr[11]_i_4_n_0 ),
        .I4(\clear_addr[11]_i_5_n_0 ),
        .O(\clear_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clear_addr[11]_i_4 
       (.I0(clear_addr[5]),
        .I1(clear_addr[4]),
        .I2(clear_addr[11]),
        .I3(clear_addr[8]),
        .O(\clear_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \clear_addr[11]_i_5 
       (.I0(clear_addr[9]),
        .I1(clear_addr[1]),
        .I2(clear_addr[7]),
        .I3(clear_addr[6]),
        .O(\clear_addr[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[1]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry_n_7),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[2]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry_n_6),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[3]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry_n_5),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[4]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry_n_4),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[5]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__0_n_7),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[6]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__0_n_6),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[7]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__0_n_5),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[8]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__0_n_4),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hB0B0B0B0B000B0B0)) 
    \clear_addr[9]_i_1 
       (.I0(\clear_addr[11]_i_3_n_0 ),
        .I1(clear_addr[0]),
        .I2(clear_addr0_carry__1_n_7),
        .I3(clearing_reg_0),
        .I4(control[12]),
        .I5(\bucket_reg_reg[0]_0 ),
        .O(p_1_in[9]));
  FDCE \clear_addr_reg[0] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\clear_addr[0]_i_1_n_0 ),
        .Q(clear_addr[0]));
  FDCE \clear_addr_reg[10] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[10]),
        .Q(clear_addr[10]));
  FDCE \clear_addr_reg[11] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[11]),
        .Q(clear_addr[11]));
  FDCE \clear_addr_reg[1] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[1]),
        .Q(clear_addr[1]));
  FDCE \clear_addr_reg[2] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[2]),
        .Q(clear_addr[2]));
  FDCE \clear_addr_reg[3] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[3]),
        .Q(clear_addr[3]));
  FDCE \clear_addr_reg[4] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[4]),
        .Q(clear_addr[4]));
  FDCE \clear_addr_reg[5] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[5]),
        .Q(clear_addr[5]));
  FDCE \clear_addr_reg[6] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[6]),
        .Q(clear_addr[6]));
  FDCE \clear_addr_reg[7] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[7]),
        .Q(clear_addr[7]));
  FDCE \clear_addr_reg[8] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[8]),
        .Q(clear_addr[8]));
  FDCE \clear_addr_reg[9] 
       (.C(aclk),
        .CE(\clear_addr[11]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[9]),
        .Q(clear_addr[9]));
  LUT3 #(
    .INIT(8'h08)) 
    clear_done_i_1
       (.I0(clear_addr[0]),
        .I1(clearing_reg_0),
        .I2(\clear_addr[11]_i_3_n_0 ),
        .O(clear_done_i_1_n_0));
  FDCE clear_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\base_addr_reg[0]_0 ),
        .D(clear_done_i_1_n_0),
        .Q(clear_done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC4F7C4C4)) 
    clearing_i_1
       (.I0(clear_addr[0]),
        .I1(clearing_reg_0),
        .I2(\clear_addr[11]_i_3_n_0 ),
        .I3(\bucket_reg_reg[0]_0 ),
        .I4(control[12]),
        .O(clearing_i_1_n_0));
  FDCE clearing_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(clearing_i_1_n_0),
        .Q(clearing_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[0]_INST_0 
       (.I0(rd_data[0]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[10]_INST_0 
       (.I0(rd_data[10]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[11]_INST_0 
       (.I0(rd_data[11]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[12]_INST_0 
       (.I0(rd_data[12]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[13]_INST_0 
       (.I0(rd_data[13]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[14]_INST_0 
       (.I0(rd_data[14]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[15]_INST_0 
       (.I0(rd_data[15]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[15]));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \data_status[15]_INST_0_i_1 
       (.I0(control[7]),
        .I1(control[6]),
        .I2(control[8]),
        .I3(control[11]),
        .I4(control[9]),
        .I5(control[10]),
        .O(control_7_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[1]_INST_0 
       (.I0(rd_data[1]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[2]_INST_0 
       (.I0(rd_data[2]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[3]_INST_0 
       (.I0(rd_data[3]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[4]_INST_0 
       (.I0(rd_data[4]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[5]_INST_0 
       (.I0(rd_data[5]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[6]_INST_0 
       (.I0(rd_data[6]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[7]_INST_0 
       (.I0(rd_data[7]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[8]_INST_0 
       (.I0(rd_data[8]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_status[9]_INST_0 
       (.I0(rd_data[9]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_1_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    g0_b1
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'hFFE00007FFFC0000)) 
    g0_b10
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF800000000)) 
    g0_b11
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    g0_b2
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6D92)) 
    g0_b3
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1C71E38E)) 
    g0_b4
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h03F01F81FC0FE07E)) 
    g0_b5
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h555AAAD556AAB554)) 
    g0_b6
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h999CCCE667333998)) 
    g0_b7
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h1E1F0F0787C3C1E0)) 
    g0_b8
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b8_n_0));
  LUT6 #(
    .INIT(64'hE01FF007F803FE00)) 
    g0_b9
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(g0_b9_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    hist_done_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(sample_last_reg_n_0),
        .I4(clearing_reg_0),
        .I5(control_clear_d_reg),
        .O(hist_done_i_1_n_0));
  FDCE hist_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(hist_done_reg_0),
        .D(hist_done_i_1_n_0),
        .Q(hist_done));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "60416" *) 
  (* RTL_RAM_NAME = "hist_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    hist_mem_reg_0
       (.ADDRARDADDR({1'b1,ram_a_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,hist_mem_reg_0_i_13_n_0,hist_mem_reg_0_i_14_n_0,hist_mem_reg_0_i_15_n_0,hist_mem_reg_0_i_16_n_0,hist_mem_reg_0_i_17_n_0,hist_mem_reg_0_i_18_n_0,hist_mem_reg_0_i_19_n_0,hist_mem_reg_0_i_20_n_0,hist_mem_reg_0_i_21_n_0,hist_mem_reg_0_i_22_n_0,hist_mem_reg_0_i_23_n_0,hist_mem_reg_0_i_24_n_0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_hist_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_hist_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_hist_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_a_wdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,ram_a_wdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO({NLW_hist_mem_reg_0_DOADO_UNCONNECTED[31:8],ram_read_data[7:0]}),
        .DOBDO({NLW_hist_mem_reg_0_DOBDO_UNCONNECTED[31:8],rd_data[7:0]}),
        .DOPADOP({NLW_hist_mem_reg_0_DOPADOP_UNCONNECTED[3:1],ram_read_data[8]}),
        .DOPBDOP({NLW_hist_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],rd_data[8]}),
        .ECCPARITY(NLW_hist_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_hist_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_hist_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_hist_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_hist_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({ram_a_we,ram_a_we,ram_a_we,ram_a_we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_1
       (.I0(clear_addr[11]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[11]),
        .O(ram_a_addr[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_10
       (.I0(clear_addr[2]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[2]),
        .O(ram_a_addr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_11
       (.I0(clear_addr[1]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[1]),
        .O(ram_a_addr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_12
       (.I0(clear_addr[0]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[0]),
        .O(ram_a_addr[0]));
  LUT6 #(
    .INIT(64'h707070F070F070F0)) 
    hist_mem_reg_0_i_13
       (.I0(control[10]),
        .I1(control[9]),
        .I2(control[11]),
        .I3(control[8]),
        .I4(control[6]),
        .I5(control[7]),
        .O(hist_mem_reg_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h2A2A2AAA2AAA2AAA)) 
    hist_mem_reg_0_i_14
       (.I0(control[10]),
        .I1(control[9]),
        .I2(control[11]),
        .I3(control[8]),
        .I4(control[6]),
        .I5(control[7]),
        .O(hist_mem_reg_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h4C4C4CCC4CCC4CCC)) 
    hist_mem_reg_0_i_15
       (.I0(control[10]),
        .I1(control[9]),
        .I2(control[11]),
        .I3(control[8]),
        .I4(control[6]),
        .I5(control[7]),
        .O(hist_mem_reg_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h2AAA)) 
    hist_mem_reg_0_i_16
       (.I0(control[8]),
        .I1(control[11]),
        .I2(control[9]),
        .I3(control[10]),
        .O(hist_mem_reg_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h7F7F7FFF00000000)) 
    hist_mem_reg_0_i_17
       (.I0(control[10]),
        .I1(control[9]),
        .I2(control[11]),
        .I3(control[8]),
        .I4(control[6]),
        .I5(control[7]),
        .O(hist_mem_reg_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h7F7F00007FFF0000)) 
    hist_mem_reg_0_i_18
       (.I0(control[10]),
        .I1(control[9]),
        .I2(control[11]),
        .I3(control[8]),
        .I4(control[6]),
        .I5(control[7]),
        .O(hist_mem_reg_0_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_19
       (.I0(control[5]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_2
       (.I0(clear_addr[10]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[10]),
        .O(ram_a_addr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_20
       (.I0(control[4]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_21
       (.I0(control[3]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_21_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_22
       (.I0(control[2]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_22_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_23
       (.I0(control[1]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_23_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_24
       (.I0(control[0]),
        .I1(control_7_sn_1),
        .O(hist_mem_reg_0_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_25
       (.I0(_carry__0_n_5),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[7]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_26
       (.I0(_carry__0_n_6),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[6]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_27
       (.I0(_carry__0_n_7),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[5]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_28
       (.I0(_carry_n_4),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[4]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_29
       (.I0(_carry_n_5),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_3
       (.I0(clear_addr[9]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[9]),
        .O(ram_a_addr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_30
       (.I0(_carry_n_6),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_31
       (.I0(_carry_n_7),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[1]));
  LUT2 #(
    .INIT(4'h1)) 
    hist_mem_reg_0_i_32
       (.I0(clearing_reg_0),
        .I1(ram_read_data[0]),
        .O(ram_a_wdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_0_i_33
       (.I0(_carry__0_n_4),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[8]));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    hist_mem_reg_0_i_34
       (.I0(clearing_reg_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(sample_counted_reg_n_0),
        .O(ram_a_we));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_4
       (.I0(clear_addr[8]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[8]),
        .O(ram_a_addr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_5
       (.I0(clear_addr[7]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[7]),
        .O(ram_a_addr[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_6
       (.I0(clear_addr[6]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[6]),
        .O(ram_a_addr[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_7
       (.I0(clear_addr[5]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[5]),
        .O(ram_a_addr[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_8
       (.I0(clear_addr[4]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[4]),
        .O(ram_a_addr[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    hist_mem_reg_0_i_9
       (.I0(clear_addr[3]),
        .I1(clearing_reg_0),
        .I2(rmw_addr[3]),
        .O(ram_a_addr[3]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "60416" *) 
  (* RTL_RAM_NAME = "hist_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    hist_mem_reg_1
       (.ADDRARDADDR({1'b1,ram_a_addr,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,hist_mem_reg_0_i_13_n_0,hist_mem_reg_0_i_14_n_0,hist_mem_reg_0_i_15_n_0,hist_mem_reg_0_i_16_n_0,hist_mem_reg_0_i_17_n_0,hist_mem_reg_0_i_18_n_0,hist_mem_reg_0_i_19_n_0,hist_mem_reg_0_i_20_n_0,hist_mem_reg_0_i_21_n_0,hist_mem_reg_0_i_22_n_0,hist_mem_reg_0_i_23_n_0,hist_mem_reg_0_i_24_n_0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_hist_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_hist_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_hist_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_a_wdata[15:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_hist_mem_reg_1_DOADO_UNCONNECTED[31:7],ram_read_data[15:9]}),
        .DOBDO({NLW_hist_mem_reg_1_DOBDO_UNCONNECTED[31:7],rd_data[15:9]}),
        .DOPADOP(NLW_hist_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_hist_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_hist_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_hist_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_hist_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_hist_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_hist_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({ram_a_we,ram_a_we,ram_a_we,ram_a_we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_1
       (.I0(_carry__2_n_5),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[15]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_2
       (.I0(_carry__2_n_6),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[14]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_3
       (.I0(_carry__2_n_7),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[13]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_4
       (.I0(_carry__1_n_4),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[12]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_5
       (.I0(_carry__1_n_5),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[11]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_6
       (.I0(_carry__1_n_6),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[10]));
  LUT2 #(
    .INIT(4'h2)) 
    hist_mem_reg_1_i_7
       (.I0(_carry__1_n_7),
        .I1(clearing_reg_0),
        .O(ram_a_wdata[9]));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[11]_i_2 
       (.I0(\hist_total_reg[12]_0 [2]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[11]_i_3 
       (.I0(\hist_total_reg[12]_0 [1]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[11]_i_4 
       (.I0(\hist_total_reg[12]_0 [0]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[11]_i_5 
       (.I0(\hist_total_reg[8]_0 [3]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \hist_total[15]_i_1 
       (.I0(\hist_total[15]_i_4_n_0 ),
        .I1(clearing_reg_0),
        .I2(sample_counted_reg_n_0),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\hist_total[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hist_total[15]_i_3 
       (.I0(aresetn),
        .O(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \hist_total[15]_i_4 
       (.I0(clearing_reg_0),
        .I1(control[12]),
        .I2(\bucket_reg_reg[0]_0 ),
        .O(\hist_total[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[15]_i_5 
       (.I0(\hist_total_reg[15]_0 [2]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[15]_i_6 
       (.I0(\hist_total_reg[15]_0 [1]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[15]_i_7 
       (.I0(\hist_total_reg[15]_0 [0]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[15]_i_8 
       (.I0(\hist_total_reg[12]_0 [3]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \hist_total[3]_i_2 
       (.I0(\bucket_reg_reg[0]_0 ),
        .I1(control[12]),
        .I2(clearing_reg_0),
        .O(\hist_total[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[3]_i_3 
       (.I0(S[2]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[3]_i_4 
       (.I0(S[1]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[3]_i_5 
       (.I0(S[0]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \hist_total[3]_i_6 
       (.I0(\hist_total_reg[0]_0 ),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[7]_i_2 
       (.I0(\hist_total_reg[8]_0 [2]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[7]_i_3 
       (.I0(\hist_total_reg[8]_0 [1]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[7]_i_4 
       (.I0(\hist_total_reg[8]_0 [0]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \hist_total[7]_i_5 
       (.I0(S[3]),
        .I1(\bucket_reg_reg[0]_0 ),
        .I2(control[12]),
        .I3(clearing_reg_0),
        .O(\hist_total[7]_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 hist_total_error1_carry
       (.CI(1'b0),
        .CO({hist_total_error1_carry_n_0,hist_total_error1_carry_n_1,hist_total_error1_carry_n_2,hist_total_error1_carry_n_3}),
        .CYINIT(\hist_total_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(hist_total_error1[4:1]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 hist_total_error1_carry__0
       (.CI(hist_total_error1_carry_n_0),
        .CO({hist_total_error1_carry__0_n_0,hist_total_error1_carry__0_n_1,hist_total_error1_carry__0_n_2,hist_total_error1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(hist_total_error1[8:5]),
        .S(\hist_total_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 hist_total_error1_carry__1
       (.CI(hist_total_error1_carry__0_n_0),
        .CO({hist_total_error1_carry__1_n_0,hist_total_error1_carry__1_n_1,hist_total_error1_carry__1_n_2,hist_total_error1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(hist_total_error1[12:9]),
        .S(\hist_total_reg[12]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 hist_total_error1_carry__2
       (.CI(hist_total_error1_carry__1_n_0),
        .CO({hist_total_error1[16],NLW_hist_total_error1_carry__2_CO_UNCONNECTED[2],hist_total_error1_carry__2_n_2,hist_total_error1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_hist_total_error1_carry__2_O_UNCONNECTED[3],hist_total_error1[15:13]}),
        .S({1'b1,\hist_total_reg[15]_0 }));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    hist_total_error_i_10
       (.I0(\hist_total_reg[8]_0 [3]),
        .I1(S[3]),
        .I2(\hist_total_reg[8]_0 [2]),
        .I3(\hist_total_reg[8]_0 [0]),
        .I4(hist_total_error_i_11_n_0),
        .O(hist_total_error_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hist_total_error_i_11
       (.I0(\hist_total_reg[12]_0 [0]),
        .I1(\hist_total_reg[12]_0 [1]),
        .I2(\hist_total_reg[15]_0 [1]),
        .I3(\hist_total_reg[15]_0 [2]),
        .O(hist_total_error_i_11_n_0));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    hist_total_error_i_2
       (.I0(hist_total_error_i_4_n_0),
        .I1(hist_total_error_i_5_n_0),
        .I2(hist_total_error_i_6_n_0),
        .I3(hist_total_error_i_7_n_0),
        .I4(sample_counted_reg_n_0),
        .I5(hist_total_error_i_8_n_0),
        .O(sample_counted_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    hist_total_error_i_3
       (.I0(clearing_reg_0),
        .I1(sample_last_reg_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(clearing_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hist_total_error_i_4
       (.I0(hist_total_error1[10]),
        .I1(hist_total_error1[14]),
        .I2(hist_total_error1[16]),
        .I3(hist_total_error1[15]),
        .O(hist_total_error_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    hist_total_error_i_5
       (.I0(hist_total_error1[8]),
        .I1(hist_total_error1[9]),
        .I2(hist_total_error1[5]),
        .I3(hist_total_error1[7]),
        .O(hist_total_error_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hist_total_error_i_6
       (.I0(hist_total_error1[3]),
        .I1(hist_total_error1[4]),
        .I2(hist_total_error1[1]),
        .I3(hist_total_error1[2]),
        .O(hist_total_error_i_6_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    hist_total_error_i_7
       (.I0(hist_total_error1[13]),
        .I1(\hist_total_reg[0]_0 ),
        .I2(hist_total_error1[11]),
        .I3(hist_total_error1[6]),
        .I4(hist_total_error1[12]),
        .O(hist_total_error_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    hist_total_error_i_8
       (.I0(hist_total_error_i_9_n_0),
        .I1(\hist_total_reg[12]_0 [2]),
        .I2(\hist_total_reg[12]_0 [3]),
        .I3(\hist_total_reg[8]_0 [1]),
        .I4(\hist_total_reg[15]_0 [0]),
        .I5(hist_total_error_i_10_n_0),
        .O(hist_total_error_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    hist_total_error_i_9
       (.I0(S[0]),
        .I1(S[1]),
        .I2(\hist_total_reg[0]_0 ),
        .I3(S[2]),
        .O(hist_total_error_i_9_n_0));
  FDCE hist_total_error_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(hist_total_error_reg_0),
        .Q(flag_status));
  FDCE \hist_total_reg[0] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[3]_i_1_n_7 ),
        .Q(\hist_total_reg[0]_0 ));
  FDCE \hist_total_reg[10] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[11]_i_1_n_5 ),
        .Q(\hist_total_reg[12]_0 [1]));
  FDCE \hist_total_reg[11] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[11]_i_1_n_4 ),
        .Q(\hist_total_reg[12]_0 [2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_total_reg[11]_i_1 
       (.CI(\hist_total_reg[7]_i_1_n_0 ),
        .CO({\hist_total_reg[11]_i_1_n_0 ,\hist_total_reg[11]_i_1_n_1 ,\hist_total_reg[11]_i_1_n_2 ,\hist_total_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_total_reg[11]_i_1_n_4 ,\hist_total_reg[11]_i_1_n_5 ,\hist_total_reg[11]_i_1_n_6 ,\hist_total_reg[11]_i_1_n_7 }),
        .S({\hist_total[11]_i_2_n_0 ,\hist_total[11]_i_3_n_0 ,\hist_total[11]_i_4_n_0 ,\hist_total[11]_i_5_n_0 }));
  FDCE \hist_total_reg[12] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[15]_i_2_n_7 ),
        .Q(\hist_total_reg[12]_0 [3]));
  FDCE \hist_total_reg[13] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[15]_i_2_n_6 ),
        .Q(\hist_total_reg[15]_0 [0]));
  FDCE \hist_total_reg[14] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[15]_i_2_n_5 ),
        .Q(\hist_total_reg[15]_0 [1]));
  FDCE \hist_total_reg[15] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[15]_i_2_n_4 ),
        .Q(\hist_total_reg[15]_0 [2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_total_reg[15]_i_2 
       (.CI(\hist_total_reg[11]_i_1_n_0 ),
        .CO({\NLW_hist_total_reg[15]_i_2_CO_UNCONNECTED [3],\hist_total_reg[15]_i_2_n_1 ,\hist_total_reg[15]_i_2_n_2 ,\hist_total_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_total_reg[15]_i_2_n_4 ,\hist_total_reg[15]_i_2_n_5 ,\hist_total_reg[15]_i_2_n_6 ,\hist_total_reg[15]_i_2_n_7 }),
        .S({\hist_total[15]_i_5_n_0 ,\hist_total[15]_i_6_n_0 ,\hist_total[15]_i_7_n_0 ,\hist_total[15]_i_8_n_0 }));
  FDCE \hist_total_reg[1] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[3]_i_1_n_6 ),
        .Q(S[0]));
  FDCE \hist_total_reg[2] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[3]_i_1_n_5 ),
        .Q(S[1]));
  FDCE \hist_total_reg[3] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[3]_i_1_n_4 ),
        .Q(S[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_total_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\hist_total_reg[3]_i_1_n_0 ,\hist_total_reg[3]_i_1_n_1 ,\hist_total_reg[3]_i_1_n_2 ,\hist_total_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\hist_total[3]_i_2_n_0 }),
        .O({\hist_total_reg[3]_i_1_n_4 ,\hist_total_reg[3]_i_1_n_5 ,\hist_total_reg[3]_i_1_n_6 ,\hist_total_reg[3]_i_1_n_7 }),
        .S({\hist_total[3]_i_3_n_0 ,\hist_total[3]_i_4_n_0 ,\hist_total[3]_i_5_n_0 ,\hist_total[3]_i_6_n_0 }));
  FDCE \hist_total_reg[4] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[7]_i_1_n_7 ),
        .Q(S[3]));
  FDCE \hist_total_reg[5] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[7]_i_1_n_6 ),
        .Q(\hist_total_reg[8]_0 [0]));
  FDCE \hist_total_reg[6] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[7]_i_1_n_5 ),
        .Q(\hist_total_reg[8]_0 [1]));
  FDCE \hist_total_reg[7] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[7]_i_1_n_4 ),
        .Q(\hist_total_reg[8]_0 [2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \hist_total_reg[7]_i_1 
       (.CI(\hist_total_reg[3]_i_1_n_0 ),
        .CO({\hist_total_reg[7]_i_1_n_0 ,\hist_total_reg[7]_i_1_n_1 ,\hist_total_reg[7]_i_1_n_2 ,\hist_total_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hist_total_reg[7]_i_1_n_4 ,\hist_total_reg[7]_i_1_n_5 ,\hist_total_reg[7]_i_1_n_6 ,\hist_total_reg[7]_i_1_n_7 }),
        .S({\hist_total[7]_i_2_n_0 ,\hist_total[7]_i_3_n_0 ,\hist_total[7]_i_4_n_0 ,\hist_total[7]_i_5_n_0 }));
  FDCE \hist_total_reg[8] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[11]_i_1_n_7 ),
        .Q(\hist_total_reg[8]_0 [3]));
  FDCE \hist_total_reg[9] 
       (.C(aclk),
        .CE(\hist_total[15]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\hist_total_reg[11]_i_1_n_6 ),
        .Q(\hist_total_reg[12]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_1
       (.I0(aresetn),
        .I1(\state_reg[2]_0 ),
        .O(p_0_in7_out__0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    protocol_error_sticky_i_4
       (.I0(\bucket_reg_reg[0]_0 ),
        .I1(control[12]),
        .O(control_clear_d_reg));
  LUT6 #(
    .INIT(64'h0051000000000000)) 
    \rmw_addr[11]_i_1 
       (.I0(clearing_reg_0),
        .I1(control[12]),
        .I2(\bucket_reg_reg[0]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(rmw_addr_0));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[3]_i_2 
       (.I0(base_addr[3]),
        .I1(bucket_reg[3]),
        .O(\rmw_addr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[3]_i_3 
       (.I0(base_addr[2]),
        .I1(bucket_reg[2]),
        .O(\rmw_addr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[3]_i_4 
       (.I0(base_addr[1]),
        .I1(bucket_reg[1]),
        .O(\rmw_addr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[3]_i_5 
       (.I0(base_addr[0]),
        .I1(bucket_reg[0]),
        .O(\rmw_addr[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[7]_i_2 
       (.I0(base_addr[5]),
        .I1(bucket_reg[5]),
        .O(\rmw_addr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rmw_addr[7]_i_3 
       (.I0(base_addr[4]),
        .I1(bucket_reg[4]),
        .O(\rmw_addr[7]_i_3_n_0 ));
  FDCE \rmw_addr_reg[0] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[3]_i_1_n_7 ),
        .Q(rmw_addr[0]));
  FDCE \rmw_addr_reg[10] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[11]_i_2_n_5 ),
        .Q(rmw_addr[10]));
  FDCE \rmw_addr_reg[11] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[11]_i_2_n_4 ),
        .Q(rmw_addr[11]));
  CARRY4 \rmw_addr_reg[11]_i_2 
       (.CI(\rmw_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_rmw_addr_reg[11]_i_2_CO_UNCONNECTED [3],\rmw_addr_reg[11]_i_2_n_1 ,\rmw_addr_reg[11]_i_2_n_2 ,\rmw_addr_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rmw_addr_reg[11]_i_2_n_4 ,\rmw_addr_reg[11]_i_2_n_5 ,\rmw_addr_reg[11]_i_2_n_6 ,\rmw_addr_reg[11]_i_2_n_7 }),
        .S(base_addr[11:8]));
  FDCE \rmw_addr_reg[1] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[3]_i_1_n_6 ),
        .Q(rmw_addr[1]));
  FDCE \rmw_addr_reg[2] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[3]_i_1_n_5 ),
        .Q(rmw_addr[2]));
  FDCE \rmw_addr_reg[3] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[3]_i_1_n_4 ),
        .Q(rmw_addr[3]));
  CARRY4 \rmw_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rmw_addr_reg[3]_i_1_n_0 ,\rmw_addr_reg[3]_i_1_n_1 ,\rmw_addr_reg[3]_i_1_n_2 ,\rmw_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(base_addr[3:0]),
        .O({\rmw_addr_reg[3]_i_1_n_4 ,\rmw_addr_reg[3]_i_1_n_5 ,\rmw_addr_reg[3]_i_1_n_6 ,\rmw_addr_reg[3]_i_1_n_7 }),
        .S({\rmw_addr[3]_i_2_n_0 ,\rmw_addr[3]_i_3_n_0 ,\rmw_addr[3]_i_4_n_0 ,\rmw_addr[3]_i_5_n_0 }));
  FDCE \rmw_addr_reg[4] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[7]_i_1_n_7 ),
        .Q(rmw_addr[4]));
  FDCE \rmw_addr_reg[5] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[7]_i_1_n_6 ),
        .Q(rmw_addr[5]));
  FDCE \rmw_addr_reg[6] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[7]_i_1_n_5 ),
        .Q(rmw_addr[6]));
  FDCE \rmw_addr_reg[7] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[7]_i_1_n_4 ),
        .Q(rmw_addr[7]));
  CARRY4 \rmw_addr_reg[7]_i_1 
       (.CI(\rmw_addr_reg[3]_i_1_n_0 ),
        .CO({\rmw_addr_reg[7]_i_1_n_0 ,\rmw_addr_reg[7]_i_1_n_1 ,\rmw_addr_reg[7]_i_1_n_2 ,\rmw_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,base_addr[5:4]}),
        .O({\rmw_addr_reg[7]_i_1_n_4 ,\rmw_addr_reg[7]_i_1_n_5 ,\rmw_addr_reg[7]_i_1_n_6 ,\rmw_addr_reg[7]_i_1_n_7 }),
        .S({base_addr[7:6],\rmw_addr[7]_i_2_n_0 ,\rmw_addr[7]_i_3_n_0 }));
  FDCE \rmw_addr_reg[8] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[11]_i_2_n_7 ),
        .Q(rmw_addr[8]));
  FDCE \rmw_addr_reg[9] 
       (.C(aclk),
        .CE(rmw_addr_0),
        .CLR(aresetn_0),
        .D(\rmw_addr_reg[11]_i_2_n_6 ),
        .Q(rmw_addr[9]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \sample_code[7]_i_1 
       (.I0(win_valid),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(aresetn),
        .I4(\state_reg_n_0_[2] ),
        .I5(\clear_addr[11]_i_1_n_0 ),
        .O(win_valid_reg));
  FDCE \sample_code_reg[0] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[0]),
        .Q(sample_code[0]));
  FDCE \sample_code_reg[1] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[1]),
        .Q(sample_code[1]));
  FDCE \sample_code_reg[2] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[2]),
        .Q(sample_code[2]));
  FDCE \sample_code_reg[3] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[3]),
        .Q(sample_code[3]));
  FDCE \sample_code_reg[4] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[4]),
        .Q(sample_code[4]));
  FDCE \sample_code_reg[5] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[5]),
        .Q(sample_code[5]));
  FDCE \sample_code_reg[6] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[6]),
        .Q(sample_code[6]));
  FDCE \sample_code_reg[7] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(D[7]),
        .Q(sample_code[7]));
  LUT6 #(
    .INIT(64'hFF2AFFAAFFAAFEAA)) 
    sample_counted_i_1
       (.I0(sample_counted_i_2_n_0),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(sample_counted_i_3_n_0),
        .I4(sample_counted_i_4_n_0),
        .I5(Q[3]),
        .O(input_counted__0));
  LUT6 #(
    .INIT(64'h7FFFFFFE00000000)) 
    sample_counted_i_2
       (.I0(\sample_x_reg[6]_0 [5]),
        .I1(\sample_x_reg[6]_0 [6]),
        .I2(sample_counted_i_5_n_0),
        .I3(\sample_x_reg[6]_0 [3]),
        .I4(\sample_x_reg[6]_0 [4]),
        .I5(Q[6]),
        .O(sample_counted_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFE)) 
    sample_counted_i_3
       (.I0(\sample_x_reg[6]_0 [5]),
        .I1(\sample_x_reg[6]_0 [6]),
        .I2(sample_counted_i_5_n_0),
        .I3(\sample_x_reg[6]_0 [3]),
        .I4(\sample_x_reg[6]_0 [4]),
        .I5(Q[6]),
        .O(sample_counted_i_3_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    sample_counted_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(sample_counted_i_4_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    sample_counted_i_5
       (.I0(\sample_x_reg[6]_0 [2]),
        .I1(\sample_x_reg[6]_0 [1]),
        .I2(\sample_x_reg[6]_0 [0]),
        .O(sample_counted_i_5_n_0));
  FDCE sample_counted_reg
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(aresetn_0),
        .D(input_counted__0),
        .Q(sample_counted_reg_n_0));
  FDCE sample_last_reg
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(aresetn_0),
        .D(win_last),
        .Q(sample_last_reg_n_0));
  FDCE \sample_x_reg[0] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [0]),
        .Q(sample_x[0]));
  FDCE \sample_x_reg[1] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [1]),
        .Q(sample_x[1]));
  FDCE \sample_x_reg[2] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [2]),
        .Q(sample_x[2]));
  FDCE \sample_x_reg[3] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [3]),
        .Q(sample_x[3]));
  FDCE \sample_x_reg[4] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [4]),
        .Q(sample_x[4]));
  FDCE \sample_x_reg[5] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [5]),
        .Q(sample_x[5]));
  FDCE \sample_x_reg[6] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(\sample_x_reg[6]_0 [6]),
        .Q(sample_x[6]));
  FDCE \sample_y_reg[0] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[0]),
        .Q(sample_y[0]));
  FDCE \sample_y_reg[1] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[1]),
        .Q(sample_y[1]));
  FDCE \sample_y_reg[2] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[2]),
        .Q(sample_y[2]));
  FDCE \sample_y_reg[3] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[3]),
        .Q(sample_y[3]));
  FDCE \sample_y_reg[4] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[4]),
        .Q(sample_y[4]));
  FDCE \sample_y_reg[5] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[5]),
        .Q(sample_y[5]));
  FDCE \sample_y_reg[6] 
       (.C(aclk),
        .CE(win_valid_reg),
        .CLR(\base_addr_reg[0]_0 ),
        .D(Q[6]),
        .Q(sample_y[6]));
  LUT6 #(
    .INIT(64'h00000000404B4B4A)) 
    \state[0]_i_1 
       (.I0(win_valid_reg),
        .I1(clearing_reg_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\hist_total[15]_i_4_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044004FB0)) 
    \state[1]_i_1 
       (.I0(win_valid_reg),
        .I1(clearing_reg_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\hist_total[15]_i_4_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000444FB000)) 
    \state[2]_i_1 
       (.I0(win_valid_reg),
        .I1(clearing_reg_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\hist_total[15]_i_4_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF0000FFFFFFFF)) 
    \state[3]_i_4 
       (.I0(\clear_addr[11]_i_1_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(aresetn),
        .I3(\state[3]_i_6_n_0 ),
        .I4(win_valid),
        .I5(resize_valid),
        .O(\state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[3]_i_6_n_0 ));
  FDCE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_count[6]_i_1 
       (.I0(\state_reg[2]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "roi_resize_128" *) 
module facebox_system_wp4_board_bridge_0_0_roi_resize_128
   (resize_user,
    resize_last,
    resize_done,
    aresetn_0,
    resize_valid,
    resize_size_error,
    E,
    \state_reg[2]_0 ,
    Q,
    D,
    dma_tvalid_0,
    m_tlast_reg_0,
    \state_reg[2]_1 ,
    \control[28] ,
    \control[20] ,
    \state_reg[3]_0 ,
    \state_reg[0]_0 ,
    m_tlast_reg_1,
    control_clear_d_reg,
    control_clear_d_reg_0,
    \state_reg[1]_0 ,
    dma_tready,
    \input_y_reg[8]_0 ,
    \control[29] ,
    dma_tlast_0,
    \input_x_reg[1]_0 ,
    m_tuser_reg_0,
    m_tuser_reg_1,
    S,
    m_tuser_reg_2,
    \m_tdata_reg[7]_0 ,
    aclk,
    OPMODE,
    m_tuser_reg_3,
    m_tvalid_reg_0,
    size_error_reg_0,
    control,
    \input_y_reg[0]_0 ,
    control_cfg_d,
    \input_x_reg[8]_0 ,
    CO,
    \x_count_reg[5] ,
    \x_count_reg[5]_0 ,
    vertical_delta_carry_i_9,
    input_row_last_carry_i_1_0,
    \m_tdata_reg[7]_i_5 ,
    \win_y_reg[1] ,
    aresetn,
    dma_tvalid,
    \input_x_reg[5]_0 ,
    \input_x_reg[6]_0 ,
    \input_y_reg[8]_1 ,
    \input_y_reg[8]_2 ,
    \input_y_reg[0]_1 ,
    \input_y_reg[5]_0 ,
    done_reg_0,
    dma_tlast,
    dma_tdata,
    \sample_fraction_x_reg[4]_0 ,
    \m_tdata_reg[3]_0 );
  output resize_user;
  output resize_last;
  output resize_done;
  output aresetn_0;
  output resize_valid;
  output resize_size_error;
  output [0:0]E;
  output [0:0]\state_reg[2]_0 ;
  output [3:0]Q;
  output [8:0]D;
  output dma_tvalid_0;
  output [2:0]m_tlast_reg_0;
  output \state_reg[2]_1 ;
  output [8:0]\control[28] ;
  output [8:0]\control[20] ;
  output \state_reg[3]_0 ;
  output \state_reg[0]_0 ;
  output [0:0]m_tlast_reg_1;
  output [0:0]control_clear_d_reg;
  output [0:0]control_clear_d_reg_0;
  output \state_reg[1]_0 ;
  output dma_tready;
  output [8:0]\input_y_reg[8]_0 ;
  output \control[29] ;
  output dma_tlast_0;
  output \input_x_reg[1]_0 ;
  output [0:0]m_tuser_reg_0;
  output [0:0]m_tuser_reg_1;
  output [2:0]S;
  output m_tuser_reg_2;
  output [7:0]\m_tdata_reg[7]_0 ;
  input aclk;
  input [0:0]OPMODE;
  input m_tuser_reg_3;
  input m_tvalid_reg_0;
  input size_error_reg_0;
  input [17:0]control;
  input \input_y_reg[0]_0 ;
  input control_cfg_d;
  input [8:0]\input_x_reg[8]_0 ;
  input [0:0]CO;
  input \x_count_reg[5] ;
  input [2:0]\x_count_reg[5]_0 ;
  input vertical_delta_carry_i_9;
  input [8:0]input_row_last_carry_i_1_0;
  input \m_tdata_reg[7]_i_5 ;
  input [1:0]\win_y_reg[1] ;
  input aresetn;
  input dma_tvalid;
  input \input_x_reg[5]_0 ;
  input \input_x_reg[6]_0 ;
  input [8:0]\input_y_reg[8]_1 ;
  input \input_y_reg[8]_2 ;
  input [0:0]\input_y_reg[0]_1 ;
  input \input_y_reg[5]_0 ;
  input done_reg_0;
  input dma_tlast;
  input [7:0]dma_tdata;
  input \sample_fraction_x_reg[4]_0 ;
  input \m_tdata_reg[3]_0 ;

  wire [8:0]A;
  wire [6:0]C;
  wire [0:0]CO;
  wire [8:7]C__0;
  wire [8:0]D;
  wire [0:0]E;
  wire [0:0]OPMODE;
  wire [3:0]Q;
  wire [2:0]S;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire bottom_delta_carry__0_i_1_n_0;
  wire bottom_delta_carry__0_i_2_n_0;
  wire bottom_delta_carry__0_i_3_n_0;
  wire bottom_delta_carry__0_i_4_n_0;
  wire bottom_delta_carry__0_n_0;
  wire bottom_delta_carry__0_n_1;
  wire bottom_delta_carry__0_n_2;
  wire bottom_delta_carry__0_n_3;
  wire bottom_delta_carry__0_n_4;
  wire bottom_delta_carry__0_n_5;
  wire bottom_delta_carry__0_n_6;
  wire bottom_delta_carry__0_n_7;
  wire bottom_delta_carry__1_n_7;
  wire bottom_delta_carry_i_1_n_0;
  wire bottom_delta_carry_i_2_n_0;
  wire bottom_delta_carry_i_3_n_0;
  wire bottom_delta_carry_i_4_n_0;
  wire bottom_delta_carry_n_0;
  wire bottom_delta_carry_n_1;
  wire bottom_delta_carry_n_2;
  wire bottom_delta_carry_n_3;
  wire bottom_delta_carry_n_4;
  wire bottom_delta_carry_n_5;
  wire bottom_delta_carry_n_6;
  wire bottom_delta_carry_n_7;
  wire [15:0]bottom_mix;
  wire [15:0]bottom_mix_next__0;
  wire bottom_mix_next_i_1_n_0;
  wire [17:0]control;
  wire [8:0]\control[20] ;
  wire [8:0]\control[28] ;
  wire \control[29] ;
  wire control_cfg_d;
  wire [0:0]control_clear_d_reg;
  wire [0:0]control_clear_d_reg_0;
  wire [5:0]coordinate_x0;
  wire coordinate_x01_carry__0_i_10_n_0;
  wire coordinate_x01_carry__0_i_1_n_0;
  wire coordinate_x01_carry__0_i_2_n_0;
  wire coordinate_x01_carry__0_i_3_n_0;
  wire coordinate_x01_carry__0_i_4_n_0;
  wire coordinate_x01_carry__0_i_5_n_0;
  wire coordinate_x01_carry__0_i_6_n_0;
  wire coordinate_x01_carry__0_i_7_n_0;
  wire coordinate_x01_carry__0_i_8_n_0;
  wire coordinate_x01_carry__0_i_9_n_0;
  wire coordinate_x01_carry__0_n_0;
  wire coordinate_x01_carry__0_n_1;
  wire coordinate_x01_carry__0_n_2;
  wire coordinate_x01_carry__0_n_3;
  wire coordinate_x01_carry__1_i_1_n_0;
  wire coordinate_x01_carry__1_i_2_n_0;
  wire coordinate_x01_carry__1_i_3_n_0;
  wire coordinate_x01_carry__1_i_4_n_0;
  wire coordinate_x01_carry__1_i_5_n_0;
  wire coordinate_x01_carry__1_i_6_n_0;
  wire coordinate_x01_carry__1_i_7_n_0;
  wire coordinate_x01_carry__1_i_8_n_0;
  wire coordinate_x01_carry__1_n_0;
  wire coordinate_x01_carry__1_n_1;
  wire coordinate_x01_carry__1_n_2;
  wire coordinate_x01_carry__1_n_3;
  wire coordinate_x01_carry__2_i_1_n_0;
  wire coordinate_x01_carry__2_i_2_n_0;
  wire coordinate_x01_carry__2_i_3_n_0;
  wire coordinate_x01_carry__2_i_4_n_0;
  wire coordinate_x01_carry__2_i_5_n_0;
  wire coordinate_x01_carry__2_i_6_n_0;
  wire coordinate_x01_carry__2_i_7_n_0;
  wire coordinate_x01_carry__2_i_8_n_0;
  wire coordinate_x01_carry__2_n_0;
  wire coordinate_x01_carry__2_n_1;
  wire coordinate_x01_carry__2_n_2;
  wire coordinate_x01_carry__2_n_3;
  wire coordinate_x01_carry_i_1_n_0;
  wire coordinate_x01_carry_i_2_n_0;
  wire coordinate_x01_carry_i_3_n_0;
  wire coordinate_x01_carry_i_4_n_0;
  wire coordinate_x01_carry_i_5_n_0;
  wire coordinate_x01_carry_i_6_n_0;
  wire coordinate_x01_carry_i_7_n_0;
  wire coordinate_x01_carry_i_8_n_0;
  wire coordinate_x01_carry_n_0;
  wire coordinate_x01_carry_n_1;
  wire coordinate_x01_carry_n_2;
  wire coordinate_x01_carry_n_3;
  wire \coordinate_x01_inferred__0/i__carry__0_n_0 ;
  wire \coordinate_x01_inferred__0/i__carry__0_n_1 ;
  wire \coordinate_x01_inferred__0/i__carry__0_n_2 ;
  wire \coordinate_x01_inferred__0/i__carry__0_n_3 ;
  wire \coordinate_x01_inferred__0/i__carry__1_n_0 ;
  wire \coordinate_x01_inferred__0/i__carry__1_n_1 ;
  wire \coordinate_x01_inferred__0/i__carry__1_n_2 ;
  wire \coordinate_x01_inferred__0/i__carry__1_n_3 ;
  wire \coordinate_x01_inferred__0/i__carry__2_n_1 ;
  wire \coordinate_x01_inferred__0/i__carry__2_n_2 ;
  wire \coordinate_x01_inferred__0/i__carry__2_n_3 ;
  wire \coordinate_x01_inferred__0/i__carry_n_0 ;
  wire \coordinate_x01_inferred__0/i__carry_n_1 ;
  wire \coordinate_x01_inferred__0/i__carry_n_2 ;
  wire \coordinate_x01_inferred__0/i__carry_n_3 ;
  wire coordinate_x02_n_100;
  wire coordinate_x02_n_101;
  wire coordinate_x02_n_102;
  wire coordinate_x02_n_103;
  wire coordinate_x02_n_104;
  wire coordinate_x02_n_105;
  wire coordinate_x02_n_74;
  wire coordinate_x02_n_75;
  wire coordinate_x02_n_76;
  wire coordinate_x02_n_77;
  wire coordinate_x02_n_78;
  wire coordinate_x02_n_79;
  wire coordinate_x02_n_80;
  wire coordinate_x02_n_81;
  wire coordinate_x02_n_82;
  wire coordinate_x02_n_83;
  wire coordinate_x02_n_84;
  wire coordinate_x02_n_85;
  wire coordinate_x02_n_86;
  wire coordinate_x02_n_87;
  wire coordinate_x02_n_88;
  wire coordinate_x02_n_98;
  wire coordinate_x02_n_99;
  wire [5:0]coordinate_x1;
  wire [6:0]coordinate_y0;
  wire coordinate_y01_carry__0_i_1_n_0;
  wire coordinate_y01_carry__0_i_2_n_0;
  wire coordinate_y01_carry__0_i_3_n_0;
  wire coordinate_y01_carry__0_i_4_n_0;
  wire coordinate_y01_carry__0_i_5_n_0;
  wire coordinate_y01_carry__0_i_6_n_0;
  wire coordinate_y01_carry__0_i_7_n_0;
  wire coordinate_y01_carry__0_i_8_n_0;
  wire coordinate_y01_carry__0_i_9_n_0;
  wire coordinate_y01_carry__0_n_0;
  wire coordinate_y01_carry__0_n_1;
  wire coordinate_y01_carry__0_n_2;
  wire coordinate_y01_carry__0_n_3;
  wire coordinate_y01_carry__1_i_1_n_0;
  wire coordinate_y01_carry__1_i_2_n_0;
  wire coordinate_y01_carry__1_i_3_n_0;
  wire coordinate_y01_carry__1_i_4_n_0;
  wire coordinate_y01_carry__1_i_5_n_0;
  wire coordinate_y01_carry__1_i_6_n_0;
  wire coordinate_y01_carry__1_i_7_n_0;
  wire coordinate_y01_carry__1_i_8_n_0;
  wire coordinate_y01_carry__1_n_0;
  wire coordinate_y01_carry__1_n_1;
  wire coordinate_y01_carry__1_n_2;
  wire coordinate_y01_carry__1_n_3;
  wire coordinate_y01_carry__2_i_1_n_0;
  wire coordinate_y01_carry__2_i_2_n_0;
  wire coordinate_y01_carry__2_i_3_n_0;
  wire coordinate_y01_carry__2_i_4_n_0;
  wire coordinate_y01_carry__2_i_5_n_0;
  wire coordinate_y01_carry__2_i_6_n_0;
  wire coordinate_y01_carry__2_i_7_n_0;
  wire coordinate_y01_carry__2_i_8_n_0;
  wire coordinate_y01_carry__2_n_0;
  wire coordinate_y01_carry__2_n_1;
  wire coordinate_y01_carry__2_n_2;
  wire coordinate_y01_carry__2_n_3;
  wire coordinate_y01_carry_i_1_n_0;
  wire coordinate_y01_carry_i_2_n_0;
  wire coordinate_y01_carry_i_3_n_0;
  wire coordinate_y01_carry_i_4_n_0;
  wire coordinate_y01_carry_i_5_n_0;
  wire coordinate_y01_carry_i_6_n_0;
  wire coordinate_y01_carry_i_7_n_0;
  wire coordinate_y01_carry_i_8_n_0;
  wire coordinate_y01_carry_n_0;
  wire coordinate_y01_carry_n_1;
  wire coordinate_y01_carry_n_2;
  wire coordinate_y01_carry_n_3;
  wire \coordinate_y01_inferred__0/i__carry__0_n_0 ;
  wire \coordinate_y01_inferred__0/i__carry__0_n_1 ;
  wire \coordinate_y01_inferred__0/i__carry__0_n_2 ;
  wire \coordinate_y01_inferred__0/i__carry__0_n_3 ;
  wire \coordinate_y01_inferred__0/i__carry__1_n_0 ;
  wire \coordinate_y01_inferred__0/i__carry__1_n_1 ;
  wire \coordinate_y01_inferred__0/i__carry__1_n_2 ;
  wire \coordinate_y01_inferred__0/i__carry__1_n_3 ;
  wire \coordinate_y01_inferred__0/i__carry__2_n_0 ;
  wire \coordinate_y01_inferred__0/i__carry__2_n_1 ;
  wire \coordinate_y01_inferred__0/i__carry__2_n_2 ;
  wire \coordinate_y01_inferred__0/i__carry__2_n_3 ;
  wire \coordinate_y01_inferred__0/i__carry_n_0 ;
  wire \coordinate_y01_inferred__0/i__carry_n_1 ;
  wire \coordinate_y01_inferred__0/i__carry_n_2 ;
  wire \coordinate_y01_inferred__0/i__carry_n_3 ;
  wire coordinate_y02_n_100;
  wire coordinate_y02_n_101;
  wire coordinate_y02_n_102;
  wire coordinate_y02_n_103;
  wire coordinate_y02_n_104;
  wire coordinate_y02_n_105;
  wire coordinate_y02_n_74;
  wire coordinate_y02_n_75;
  wire coordinate_y02_n_76;
  wire coordinate_y02_n_77;
  wire coordinate_y02_n_78;
  wire coordinate_y02_n_79;
  wire coordinate_y02_n_80;
  wire coordinate_y02_n_81;
  wire coordinate_y02_n_82;
  wire coordinate_y02_n_83;
  wire coordinate_y02_n_84;
  wire coordinate_y02_n_85;
  wire coordinate_y02_n_86;
  wire coordinate_y02_n_87;
  wire coordinate_y02_n_88;
  wire coordinate_y02_n_89;
  wire coordinate_y02_n_90;
  wire coordinate_y02_n_91;
  wire coordinate_y02_n_92;
  wire coordinate_y02_n_93;
  wire coordinate_y02_n_94;
  wire coordinate_y02_n_95;
  wire coordinate_y02_n_96;
  wire coordinate_y02_n_97;
  wire coordinate_y02_n_98;
  wire coordinate_y02_n_99;
  wire [6:0]coordinate_y1;
  wire [7:0]dma_tdata;
  wire dma_tlast;
  wire dma_tlast_0;
  wire dma_tready;
  wire dma_tvalid;
  wire dma_tvalid_0;
  wire done_i_1_n_0;
  wire done_reg_0;
  wire frame_mem_reg_0_0_i_14_n_0;
  wire frame_mem_reg_0_0_i_15_n_0;
  wire frame_mem_reg_0_0_i_16_n_0;
  wire frame_mem_reg_0_0_i_17_n_0;
  wire frame_mem_reg_0_0_i_18_n_0;
  wire frame_mem_reg_0_0_i_19_n_0;
  wire frame_mem_reg_0_0_i_20_n_0;
  wire frame_mem_reg_0_0_i_21_n_0;
  wire frame_mem_reg_0_0_i_22_n_0;
  wire frame_mem_reg_0_0_i_24_n_0;
  wire frame_mem_reg_0_0_i_25_n_0;
  wire frame_mem_reg_0_0_i_26_n_0;
  wire frame_mem_reg_0_0_i_28_n_0;
  wire frame_mem_reg_0_0_i_29_n_0;
  wire frame_mem_reg_0_0_i_2_n_0;
  wire frame_mem_reg_0_0_i_2_n_1;
  wire frame_mem_reg_0_0_i_2_n_2;
  wire frame_mem_reg_0_0_i_2_n_3;
  wire frame_mem_reg_0_0_i_3_n_0;
  wire frame_mem_reg_0_0_i_3_n_1;
  wire frame_mem_reg_0_0_i_3_n_2;
  wire frame_mem_reg_0_0_i_3_n_3;
  wire frame_mem_reg_0_0_i_4_n_7;
  wire frame_mem_reg_0_0_i_5_n_0;
  wire frame_mem_reg_0_0_i_5_n_1;
  wire frame_mem_reg_0_0_i_5_n_2;
  wire frame_mem_reg_0_0_i_5_n_3;
  wire frame_mem_reg_0_0_i_5_n_4;
  wire frame_mem_reg_0_0_i_5_n_5;
  wire frame_mem_reg_0_0_i_5_n_6;
  wire frame_mem_reg_0_0_i_5_n_7;
  wire frame_mem_reg_0_0_i_6_n_0;
  wire frame_mem_reg_0_0_i_6_n_1;
  wire frame_mem_reg_0_0_i_6_n_2;
  wire frame_mem_reg_0_0_i_6_n_3;
  wire frame_mem_reg_0_0_i_6_n_4;
  wire frame_mem_reg_0_0_i_6_n_5;
  wire frame_mem_reg_0_0_i_6_n_6;
  wire frame_mem_reg_0_0_i_6_n_7;
  wire frame_mem_reg_0_0_n_0;
  wire frame_mem_reg_0_0_n_1;
  wire frame_mem_reg_0_1_i_1_n_0;
  wire frame_mem_reg_0_1_n_0;
  wire frame_mem_reg_0_1_n_1;
  wire frame_mem_reg_0_2_n_0;
  wire frame_mem_reg_0_2_n_1;
  wire frame_mem_reg_0_3_n_0;
  wire frame_mem_reg_0_3_n_1;
  wire frame_mem_reg_0_4_n_0;
  wire frame_mem_reg_0_4_n_1;
  wire frame_mem_reg_0_5_i_1_n_0;
  wire frame_mem_reg_0_5_n_0;
  wire frame_mem_reg_0_5_n_1;
  wire frame_mem_reg_0_6_i_1_n_0;
  wire frame_mem_reg_0_6_n_0;
  wire frame_mem_reg_0_6_n_1;
  wire frame_mem_reg_0_7_n_0;
  wire frame_mem_reg_0_7_n_1;
  wire frame_mem_reg_1_2_i_1_n_0;
  wire frame_mem_reg_1_3_i_1_n_0;
  wire frame_mem_reg_1_7_i_1_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire input_final0;
  wire input_final0_carry_i_1_n_0;
  wire input_final0_carry_i_2_n_0;
  wire input_final0_carry_i_3_n_0;
  wire input_final0_carry_i_4_n_0;
  wire input_final0_carry_i_5_n_0;
  wire input_final0_carry_n_1;
  wire input_final0_carry_n_2;
  wire input_final0_carry_n_3;
  wire \input_final0_inferred__0/i__carry_n_0 ;
  wire \input_final0_inferred__0/i__carry_n_1 ;
  wire \input_final0_inferred__0/i__carry_n_2 ;
  wire \input_final0_inferred__0/i__carry_n_3 ;
  wire \input_height[8]_i_2_n_0 ;
  wire \input_height_reg_n_0_[0] ;
  wire \input_height_reg_n_0_[1] ;
  wire \input_height_reg_n_0_[2] ;
  wire \input_height_reg_n_0_[3] ;
  wire \input_height_reg_n_0_[4] ;
  wire \input_height_reg_n_0_[5] ;
  wire \input_height_reg_n_0_[6] ;
  wire \input_height_reg_n_0_[7] ;
  wire \input_height_reg_n_0_[8] ;
  wire [8:0]input_row_last_carry_i_1_0;
  wire input_row_last_carry_i_4_n_0;
  wire input_row_last_carry_i_5_n_0;
  wire input_row_last_carry_i_6_n_0;
  wire input_row_last_carry_i_7_n_0;
  wire [8:0]input_width;
  wire \input_width[8]_i_3_n_0 ;
  wire [10:0]input_x;
  wire \input_x[10]_i_1_n_0 ;
  wire \input_x[10]_i_3_n_0 ;
  wire \input_x[4]_i_2_n_0 ;
  wire \input_x[5]_i_2_n_0 ;
  wire \input_x[8]_i_2__0_n_0 ;
  wire \input_x[8]_i_4_n_0 ;
  wire \input_x_reg[1]_0 ;
  wire \input_x_reg[5]_0 ;
  wire \input_x_reg[6]_0 ;
  wire [8:0]\input_x_reg[8]_0 ;
  wire \input_y[0]_i_1__0_n_0 ;
  wire \input_y[1]_i_1__0_n_0 ;
  wire \input_y[2]_i_1__0_n_0 ;
  wire \input_y[3]_i_1__0_n_0 ;
  wire \input_y[3]_i_2_n_0 ;
  wire \input_y[4]_i_1__0_n_0 ;
  wire \input_y[4]_i_2_n_0 ;
  wire \input_y[5]_i_1__0_n_0 ;
  wire \input_y[5]_i_2_n_0 ;
  wire \input_y[6]_i_1__0_n_0 ;
  wire \input_y[7]_i_1__0_n_0 ;
  wire \input_y[7]_i_2_n_0 ;
  wire \input_y[8]_i_1__0_n_0 ;
  wire \input_y[8]_i_3_n_0 ;
  wire \input_y[9]_i_1_n_0 ;
  wire \input_y[9]_i_2_n_0 ;
  wire \input_y[9]_i_4_n_0 ;
  wire \input_y_reg[0]_0 ;
  wire [0:0]\input_y_reg[0]_1 ;
  wire \input_y_reg[5]_0 ;
  wire [8:0]\input_y_reg[8]_0 ;
  wire [8:0]\input_y_reg[8]_1 ;
  wire \input_y_reg[8]_2 ;
  wire \input_y_reg_n_0_[0] ;
  wire \input_y_reg_n_0_[1] ;
  wire \input_y_reg_n_0_[2] ;
  wire \input_y_reg_n_0_[3] ;
  wire \input_y_reg_n_0_[4] ;
  wire \input_y_reg_n_0_[5] ;
  wire \input_y_reg_n_0_[6] ;
  wire \input_y_reg_n_0_[7] ;
  wire \input_y_reg_n_0_[8] ;
  wire \input_y_reg_n_0_[9] ;
  wire [23:16]m_tdata1;
  wire \m_tdata[1]_i_5_n_0 ;
  wire \m_tdata[7]_i_1_n_0 ;
  wire \m_tdata_reg[1]_i_1_n_0 ;
  wire \m_tdata_reg[1]_i_1_n_1 ;
  wire \m_tdata_reg[1]_i_1_n_2 ;
  wire \m_tdata_reg[1]_i_1_n_3 ;
  wire \m_tdata_reg[3]_0 ;
  wire \m_tdata_reg[5]_i_1_n_0 ;
  wire \m_tdata_reg[5]_i_1_n_1 ;
  wire \m_tdata_reg[5]_i_1_n_2 ;
  wire \m_tdata_reg[5]_i_1_n_3 ;
  wire [7:0]\m_tdata_reg[7]_0 ;
  wire \m_tdata_reg[7]_i_2_n_3 ;
  wire \m_tdata_reg[7]_i_5 ;
  wire [2:0]m_tlast_reg_0;
  wire [0:0]m_tlast_reg_1;
  wire m_tuser0;
  wire m_tuser_i_2_n_0;
  wire m_tuser_i_3_n_0;
  wire [0:0]m_tuser_reg_0;
  wire [0:0]m_tuser_reg_1;
  wire m_tuser_reg_2;
  wire m_tuser_reg_3;
  wire m_tvalid_reg_0;
  wire output_final010_in;
  wire \output_x[0]_i_1_n_0 ;
  wire \output_x[1]_i_1_n_0 ;
  wire \output_x[2]_i_1_n_0 ;
  wire \output_x[3]_i_1_n_0 ;
  wire \output_x[4]_i_1_n_0 ;
  wire \output_x[5]_i_1_n_0 ;
  wire \output_x[5]_i_2_n_0 ;
  wire \output_x[6]_i_1_n_0 ;
  wire \output_x[6]_i_2_n_0 ;
  wire \output_x[6]_i_3_n_0 ;
  wire \output_x[6]_i_4_n_0 ;
  wire \output_x_reg_n_0_[0] ;
  wire \output_x_reg_n_0_[1] ;
  wire \output_x_reg_n_0_[2] ;
  wire \output_x_reg_n_0_[3] ;
  wire \output_x_reg_n_0_[4] ;
  wire \output_x_reg_n_0_[5] ;
  wire \output_x_reg_n_0_[6] ;
  wire \output_y[0]_i_1_n_0 ;
  wire \output_y[1]_i_1_n_0 ;
  wire \output_y[2]_i_1_n_0 ;
  wire \output_y[3]_i_1_n_0 ;
  wire \output_y[4]_i_1_n_0 ;
  wire \output_y[5]_i_1_n_0 ;
  wire \output_y[5]_i_2_n_0 ;
  wire \output_y[6]_i_1_n_0 ;
  wire \output_y[6]_i_2_n_0 ;
  wire \output_y[6]_i_3_n_0 ;
  wire \output_y_reg_n_0_[0] ;
  wire \output_y_reg_n_0_[1] ;
  wire \output_y_reg_n_0_[2] ;
  wire \output_y_reg_n_0_[3] ;
  wire \output_y_reg_n_0_[4] ;
  wire \output_y_reg_n_0_[5] ;
  wire \output_y_reg_n_0_[6] ;
  wire [7:0]p00;
  wire \p00[7]_i_1_n_0 ;
  wire [7:0]p01;
  wire \p01[7]_i_1_n_0 ;
  wire [7:0]p10;
  wire \p10[7]_i_1_n_0 ;
  wire [7:0]p11;
  wire \p11[7]_i_1_n_0 ;
  wire [8:0]p_0_in;
  wire [10:0]p_1_in;
  wire p_2_in;
  wire [7:0]ram_read_data;
  wire resize_done;
  wire resize_last;
  wire resize_size_error;
  wire resize_user;
  wire resize_valid;
  wire [7:0]sample_fraction_x;
  wire \sample_fraction_x[0]_i_1_n_0 ;
  wire \sample_fraction_x[1]_i_1_n_0 ;
  wire \sample_fraction_x[2]_i_1_n_0 ;
  wire \sample_fraction_x[3]_i_1_n_0 ;
  wire \sample_fraction_x[4]_i_1_n_0 ;
  wire \sample_fraction_x[5]_i_1_n_0 ;
  wire \sample_fraction_x[6]_i_1_n_0 ;
  wire \sample_fraction_x[7]_i_1_n_0 ;
  wire \sample_fraction_x_reg[4]_0 ;
  wire sample_fraction_y;
  wire \sample_fraction_y[0]_i_1_n_0 ;
  wire \sample_fraction_y[1]_i_1_n_0 ;
  wire \sample_fraction_y[2]_i_1_n_0 ;
  wire \sample_fraction_y[3]_i_1_n_0 ;
  wire \sample_fraction_y[4]_i_1_n_0 ;
  wire \sample_fraction_y[5]_i_1_n_0 ;
  wire \sample_fraction_y[6]_i_1_n_0 ;
  wire \sample_fraction_y[7]_i_1_n_0 ;
  wire \sample_fraction_y_reg_n_0_[0] ;
  wire \sample_fraction_y_reg_n_0_[1] ;
  wire \sample_fraction_y_reg_n_0_[2] ;
  wire \sample_fraction_y_reg_n_0_[3] ;
  wire \sample_fraction_y_reg_n_0_[4] ;
  wire \sample_fraction_y_reg_n_0_[5] ;
  wire \sample_fraction_y_reg_n_0_[6] ;
  wire \sample_fraction_y_reg_n_0_[7] ;
  wire [8:0]sample_x0;
  wire \sample_x0[1]_i_1_n_0 ;
  wire \sample_x0[2]_i_1_n_0 ;
  wire \sample_x0[3]_i_1_n_0 ;
  wire \sample_x0[4]_i_1_n_0 ;
  wire \sample_x0[6]_i_1_n_0 ;
  wire \sample_x0[7]_i_1_n_0 ;
  wire \sample_x0[8]_i_1_n_0 ;
  wire [8:0]sample_x1;
  wire \sample_x1[0]_i_2_n_0 ;
  wire \sample_x1[0]_i_3_n_0 ;
  wire \sample_x1[1]_i_1_n_0 ;
  wire \sample_x1[2]_i_1_n_0 ;
  wire \sample_x1[2]_i_2_n_0 ;
  wire \sample_x1[3]_i_1_n_0 ;
  wire \sample_x1[3]_i_2_n_0 ;
  wire \sample_x1[3]_i_3_n_0 ;
  wire \sample_x1[4]_i_1_n_0 ;
  wire \sample_x1[4]_i_2_n_0 ;
  wire \sample_x1[4]_i_3_n_0 ;
  wire \sample_x1[5]_i_2_n_0 ;
  wire \sample_x1[5]_i_3_n_0 ;
  wire \sample_x1[6]_i_1_n_0 ;
  wire \sample_x1[6]_i_2_n_0 ;
  wire \sample_x1[7]_i_1_n_0 ;
  wire \sample_x1[7]_i_2_n_0 ;
  wire \sample_x1[7]_i_3_n_0 ;
  wire \sample_x1[8]_i_1_n_0 ;
  wire \sample_x1[8]_i_2_n_0 ;
  wire \sample_x1[8]_i_3_n_0 ;
  wire [7:0]sample_y0;
  wire \sample_y0[1]_i_1_n_0 ;
  wire \sample_y0[2]_i_1_n_0 ;
  wire \sample_y0[3]_i_1_n_0 ;
  wire \sample_y0[4]_i_1_n_0 ;
  wire \sample_y0[5]_i_1_n_0 ;
  wire \sample_y0[7]_i_1_n_0 ;
  wire [7:0]sample_y1;
  wire \sample_y1[0]_i_2_n_0 ;
  wire \sample_y1[0]_i_3_n_0 ;
  wire \sample_y1[1]_i_1_n_0 ;
  wire \sample_y1[2]_i_1_n_0 ;
  wire \sample_y1[2]_i_2_n_0 ;
  wire \sample_y1[3]_i_1_n_0 ;
  wire \sample_y1[3]_i_2_n_0 ;
  wire \sample_y1[3]_i_3_n_0 ;
  wire \sample_y1[4]_i_1_n_0 ;
  wire \sample_y1[4]_i_2_n_0 ;
  wire \sample_y1[4]_i_3_n_0 ;
  wire \sample_y1[5]_i_1_n_0 ;
  wire \sample_y1[5]_i_2_n_0 ;
  wire \sample_y1[5]_i_3_n_0 ;
  wire \sample_y1[6]_i_2_n_0 ;
  wire \sample_y1[7]_i_2_n_0 ;
  wire \sample_y1[7]_i_3_n_0 ;
  wire \sample_y1[7]_i_4_n_0 ;
  wire size_error_i_10_n_0;
  wire size_error_i_11_n_0;
  wire size_error_i_3_n_0;
  wire size_error_i_4_n_0;
  wire size_error_i_5_n_0;
  wire size_error_i_6_n_0;
  wire size_error_i_7_n_0;
  wire size_error_i_8_n_0;
  wire size_error_i_9_n_0;
  wire size_error_reg_0;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire [0:0]\state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire \state_reg[3]_0 ;
  wire top_delta_carry__0_i_1_n_0;
  wire top_delta_carry__0_i_2_n_0;
  wire top_delta_carry__0_i_3_n_0;
  wire top_delta_carry__0_i_4_n_0;
  wire top_delta_carry__0_n_0;
  wire top_delta_carry__0_n_1;
  wire top_delta_carry__0_n_2;
  wire top_delta_carry__0_n_3;
  wire top_delta_carry_i_1_n_0;
  wire top_delta_carry_i_2_n_0;
  wire top_delta_carry_i_3_n_0;
  wire top_delta_carry_i_4_n_0;
  wire top_delta_carry_n_0;
  wire top_delta_carry_n_1;
  wire top_delta_carry_n_2;
  wire top_delta_carry_n_3;
  wire [15:0]top_mix_next__0;
  wire top_mix_next_i_1_n_0;
  wire vertical_delta_carry__0_i_5_n_0;
  wire vertical_delta_carry__0_i_6_n_0;
  wire vertical_delta_carry__0_i_7_n_0;
  wire vertical_delta_carry__0_i_8_n_0;
  wire vertical_delta_carry__0_n_0;
  wire vertical_delta_carry__0_n_1;
  wire vertical_delta_carry__0_n_2;
  wire vertical_delta_carry__0_n_3;
  wire vertical_delta_carry__0_n_4;
  wire vertical_delta_carry__0_n_5;
  wire vertical_delta_carry__0_n_6;
  wire vertical_delta_carry__0_n_7;
  wire vertical_delta_carry__1_i_5_n_0;
  wire vertical_delta_carry__1_i_6_n_0;
  wire vertical_delta_carry__1_i_7_n_0;
  wire vertical_delta_carry__1_i_8_n_0;
  wire vertical_delta_carry__1_n_0;
  wire vertical_delta_carry__1_n_1;
  wire vertical_delta_carry__1_n_2;
  wire vertical_delta_carry__1_n_3;
  wire vertical_delta_carry__1_n_4;
  wire vertical_delta_carry__1_n_5;
  wire vertical_delta_carry__1_n_6;
  wire vertical_delta_carry__1_n_7;
  wire vertical_delta_carry__2_i_5_n_0;
  wire vertical_delta_carry__2_i_6_n_0;
  wire vertical_delta_carry__2_i_7_n_0;
  wire vertical_delta_carry__2_i_8_n_0;
  wire vertical_delta_carry__2_n_0;
  wire vertical_delta_carry__2_n_1;
  wire vertical_delta_carry__2_n_2;
  wire vertical_delta_carry__2_n_3;
  wire vertical_delta_carry__2_n_4;
  wire vertical_delta_carry__2_n_5;
  wire vertical_delta_carry__2_n_6;
  wire vertical_delta_carry__2_n_7;
  wire vertical_delta_carry__3_n_7;
  wire vertical_delta_carry_i_5_n_0;
  wire vertical_delta_carry_i_6_n_0;
  wire vertical_delta_carry_i_7_n_0;
  wire vertical_delta_carry_i_8_n_0;
  wire vertical_delta_carry_i_9;
  wire vertical_delta_carry_n_0;
  wire vertical_delta_carry_n_1;
  wire vertical_delta_carry_n_2;
  wire vertical_delta_carry_n_3;
  wire vertical_delta_carry_n_4;
  wire vertical_delta_carry_n_5;
  wire vertical_delta_carry_n_6;
  wire vertical_delta_carry_n_7;
  wire [23:14]vertical_mix;
  wire [23:14]vertical_mix_next__0;
  wire vertical_mix_next_i_1_n_0;
  wire vertical_mix_next_n_100;
  wire vertical_mix_next_n_101;
  wire vertical_mix_next_n_102;
  wire vertical_mix_next_n_103;
  wire vertical_mix_next_n_104;
  wire vertical_mix_next_n_105;
  wire vertical_mix_next_n_92;
  wire vertical_mix_next_n_93;
  wire vertical_mix_next_n_94;
  wire vertical_mix_next_n_95;
  wire vertical_mix_next_n_96;
  wire vertical_mix_next_n_97;
  wire vertical_mix_next_n_98;
  wire vertical_mix_next_n_99;
  wire [1:0]\win_y_reg[1] ;
  wire [15:7]write_address__0;
  wire \x_count_reg[5] ;
  wire [2:0]\x_count_reg[5]_0 ;
  wire [3:0]NLW_bottom_delta_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_bottom_delta_carry__1_O_UNCONNECTED;
  wire NLW_bottom_mix_next_CARRYCASCOUT_UNCONNECTED;
  wire NLW_bottom_mix_next_MULTSIGNOUT_UNCONNECTED;
  wire NLW_bottom_mix_next_OVERFLOW_UNCONNECTED;
  wire NLW_bottom_mix_next_PATTERNBDETECT_UNCONNECTED;
  wire NLW_bottom_mix_next_PATTERNDETECT_UNCONNECTED;
  wire NLW_bottom_mix_next_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_bottom_mix_next_ACOUT_UNCONNECTED;
  wire [17:0]NLW_bottom_mix_next_BCOUT_UNCONNECTED;
  wire [3:0]NLW_bottom_mix_next_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_bottom_mix_next_P_UNCONNECTED;
  wire [47:0]NLW_bottom_mix_next_PCOUT_UNCONNECTED;
  wire [3:0]NLW_coordinate_x01_carry_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_x01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_x01_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_x01_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_coordinate_x01_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_x01_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_x01_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_x01_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire NLW_coordinate_x02_CARRYCASCOUT_UNCONNECTED;
  wire NLW_coordinate_x02_MULTSIGNOUT_UNCONNECTED;
  wire NLW_coordinate_x02_OVERFLOW_UNCONNECTED;
  wire NLW_coordinate_x02_PATTERNBDETECT_UNCONNECTED;
  wire NLW_coordinate_x02_PATTERNDETECT_UNCONNECTED;
  wire NLW_coordinate_x02_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_coordinate_x02_ACOUT_UNCONNECTED;
  wire [17:0]NLW_coordinate_x02_BCOUT_UNCONNECTED;
  wire [3:0]NLW_coordinate_x02_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_coordinate_x02_P_UNCONNECTED;
  wire [47:0]NLW_coordinate_x02_PCOUT_UNCONNECTED;
  wire [3:0]NLW_coordinate_y01_carry_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_y01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_y01_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_coordinate_y01_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_coordinate_y01_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_y01_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_y01_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_coordinate_y01_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire NLW_coordinate_y02_CARRYCASCOUT_UNCONNECTED;
  wire NLW_coordinate_y02_MULTSIGNOUT_UNCONNECTED;
  wire NLW_coordinate_y02_OVERFLOW_UNCONNECTED;
  wire NLW_coordinate_y02_PATTERNBDETECT_UNCONNECTED;
  wire NLW_coordinate_y02_PATTERNDETECT_UNCONNECTED;
  wire NLW_coordinate_y02_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_coordinate_y02_ACOUT_UNCONNECTED;
  wire [17:0]NLW_coordinate_y02_BCOUT_UNCONNECTED;
  wire [3:0]NLW_coordinate_y02_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_coordinate_y02_P_UNCONNECTED;
  wire [47:0]NLW_coordinate_y02_PCOUT_UNCONNECTED;
  wire NLW_frame_mem_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_0_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_0_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_frame_mem_reg_0_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_0_i_4_CO_UNCONNECTED;
  wire [3:1]NLW_frame_mem_reg_0_0_i_4_O_UNCONNECTED;
  wire NLW_frame_mem_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_mem_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_mem_reg_1_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_mem_reg_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_mem_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_mem_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_mem_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_mem_reg_1_7_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_input_final0_carry_O_UNCONNECTED;
  wire [3:0]\NLW_input_final0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [1:0]\NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_top_delta_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_top_delta_carry__1_O_UNCONNECTED;
  wire NLW_top_mix_next_CARRYCASCOUT_UNCONNECTED;
  wire NLW_top_mix_next_MULTSIGNOUT_UNCONNECTED;
  wire NLW_top_mix_next_OVERFLOW_UNCONNECTED;
  wire NLW_top_mix_next_PATTERNBDETECT_UNCONNECTED;
  wire NLW_top_mix_next_PATTERNDETECT_UNCONNECTED;
  wire NLW_top_mix_next_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_top_mix_next_ACOUT_UNCONNECTED;
  wire [17:0]NLW_top_mix_next_BCOUT_UNCONNECTED;
  wire [3:0]NLW_top_mix_next_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_top_mix_next_P_UNCONNECTED;
  wire [47:0]NLW_top_mix_next_PCOUT_UNCONNECTED;
  wire [3:0]NLW_vertical_delta_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_vertical_delta_carry__3_O_UNCONNECTED;
  wire NLW_vertical_mix_next_CARRYCASCOUT_UNCONNECTED;
  wire NLW_vertical_mix_next_MULTSIGNOUT_UNCONNECTED;
  wire NLW_vertical_mix_next_OVERFLOW_UNCONNECTED;
  wire NLW_vertical_mix_next_PATTERNBDETECT_UNCONNECTED;
  wire NLW_vertical_mix_next_PATTERNDETECT_UNCONNECTED;
  wire NLW_vertical_mix_next_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_vertical_mix_next_ACOUT_UNCONNECTED;
  wire [17:0]NLW_vertical_mix_next_BCOUT_UNCONNECTED;
  wire [3:0]NLW_vertical_mix_next_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_vertical_mix_next_P_UNCONNECTED;
  wire [47:0]NLW_vertical_mix_next_PCOUT_UNCONNECTED;

  CARRY4 bottom_delta_carry
       (.CI(1'b0),
        .CO({bottom_delta_carry_n_0,bottom_delta_carry_n_1,bottom_delta_carry_n_2,bottom_delta_carry_n_3}),
        .CYINIT(1'b1),
        .DI(p11[3:0]),
        .O({bottom_delta_carry_n_4,bottom_delta_carry_n_5,bottom_delta_carry_n_6,bottom_delta_carry_n_7}),
        .S({bottom_delta_carry_i_1_n_0,bottom_delta_carry_i_2_n_0,bottom_delta_carry_i_3_n_0,bottom_delta_carry_i_4_n_0}));
  CARRY4 bottom_delta_carry__0
       (.CI(bottom_delta_carry_n_0),
        .CO({bottom_delta_carry__0_n_0,bottom_delta_carry__0_n_1,bottom_delta_carry__0_n_2,bottom_delta_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p11[7:4]),
        .O({bottom_delta_carry__0_n_4,bottom_delta_carry__0_n_5,bottom_delta_carry__0_n_6,bottom_delta_carry__0_n_7}),
        .S({bottom_delta_carry__0_i_1_n_0,bottom_delta_carry__0_i_2_n_0,bottom_delta_carry__0_i_3_n_0,bottom_delta_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry__0_i_1
       (.I0(p11[7]),
        .I1(p01[7]),
        .O(bottom_delta_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry__0_i_2
       (.I0(p11[6]),
        .I1(p01[6]),
        .O(bottom_delta_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry__0_i_3
       (.I0(p11[5]),
        .I1(p01[5]),
        .O(bottom_delta_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry__0_i_4
       (.I0(p11[4]),
        .I1(p01[4]),
        .O(bottom_delta_carry__0_i_4_n_0));
  CARRY4 bottom_delta_carry__1
       (.CI(bottom_delta_carry__0_n_0),
        .CO(NLW_bottom_delta_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bottom_delta_carry__1_O_UNCONNECTED[3:1],bottom_delta_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry_i_1
       (.I0(p11[3]),
        .I1(p01[3]),
        .O(bottom_delta_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry_i_2
       (.I0(p11[2]),
        .I1(p01[2]),
        .O(bottom_delta_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry_i_3
       (.I0(p11[1]),
        .I1(p01[1]),
        .O(bottom_delta_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bottom_delta_carry_i_4
       (.I0(p11[0]),
        .I1(p01[0]),
        .O(bottom_delta_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    bottom_mix_next
       (.A({bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__1_n_7,bottom_delta_carry__0_n_4,bottom_delta_carry__0_n_5,bottom_delta_carry__0_n_6,bottom_delta_carry__0_n_7,bottom_delta_carry_n_4,bottom_delta_carry_n_5,bottom_delta_carry_n_6,bottom_delta_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_bottom_mix_next_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sample_fraction_x}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_bottom_mix_next_BCOUT_UNCONNECTED[17:0]),
        .C({p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01[7],p01,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_bottom_mix_next_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_bottom_mix_next_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(bottom_mix_next_i_1_n_0),
        .CLK(aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_bottom_mix_next_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_bottom_mix_next_OVERFLOW_UNCONNECTED),
        .P({NLW_bottom_mix_next_P_UNCONNECTED[47:16],bottom_mix_next__0}),
        .PATTERNBDETECT(NLW_bottom_mix_next_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_bottom_mix_next_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_bottom_mix_next_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_bottom_mix_next_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h1000)) 
    bottom_mix_next_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(bottom_mix_next_i_1_n_0));
  CARRY4 coordinate_x01_carry
       (.CI(1'b0),
        .CO({coordinate_x01_carry_n_0,coordinate_x01_carry_n_1,coordinate_x01_carry_n_2,coordinate_x01_carry_n_3}),
        .CYINIT(1'b1),
        .DI({coordinate_x01_carry_i_1_n_0,coordinate_x01_carry_i_2_n_0,coordinate_x01_carry_i_3_n_0,coordinate_x01_carry_i_4_n_0}),
        .O(NLW_coordinate_x01_carry_O_UNCONNECTED[3:0]),
        .S({coordinate_x01_carry_i_5_n_0,coordinate_x01_carry_i_6_n_0,coordinate_x01_carry_i_7_n_0,coordinate_x01_carry_i_8_n_0}));
  CARRY4 coordinate_x01_carry__0
       (.CI(coordinate_x01_carry_n_0),
        .CO({coordinate_x01_carry__0_n_0,coordinate_x01_carry__0_n_1,coordinate_x01_carry__0_n_2,coordinate_x01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_x01_carry__0_i_1_n_0,coordinate_x01_carry__0_i_2_n_0,coordinate_x01_carry__0_i_3_n_0,coordinate_x01_carry__0_i_4_n_0}),
        .O(NLW_coordinate_x01_carry__0_O_UNCONNECTED[3:0]),
        .S({coordinate_x01_carry__0_i_5_n_0,coordinate_x01_carry__0_i_6_n_0,coordinate_x01_carry__0_i_7_n_0,coordinate_x01_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h2BB822BB22282222)) 
    coordinate_x01_carry__0_i_1
       (.I0(p_0_in[7]),
        .I1(input_width[7]),
        .I2(input_width[5]),
        .I3(input_width[6]),
        .I4(coordinate_x01_carry__0_i_9_n_0),
        .I5(p_0_in[6]),
        .O(coordinate_x01_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    coordinate_x01_carry__0_i_10
       (.I0(input_width[2]),
        .I1(input_width[1]),
        .I2(input_width[0]),
        .O(coordinate_x01_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0A2AAFBC0002AAA8)) 
    coordinate_x01_carry__0_i_2
       (.I0(p_0_in[5]),
        .I1(coordinate_x01_carry__0_i_10_n_0),
        .I2(input_width[4]),
        .I3(input_width[3]),
        .I4(input_width[5]),
        .I5(p_0_in[4]),
        .O(coordinate_x01_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    coordinate_x01_carry__0_i_3
       (.I0(p_0_in[3]),
        .I1(input_width[2]),
        .I2(input_width[1]),
        .I3(input_width[0]),
        .I4(input_width[3]),
        .I5(p_0_in[2]),
        .O(coordinate_x01_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    coordinate_x01_carry__0_i_4
       (.I0(p_0_in[1]),
        .I1(input_width[1]),
        .I2(input_width[0]),
        .I3(p_0_in[0]),
        .O(coordinate_x01_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9090069009099009)) 
    coordinate_x01_carry__0_i_5
       (.I0(input_width[7]),
        .I1(p_0_in[7]),
        .I2(input_width[6]),
        .I3(coordinate_x01_carry__0_i_9_n_0),
        .I4(input_width[5]),
        .I5(p_0_in[6]),
        .O(coordinate_x01_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    coordinate_x01_carry__0_i_6
       (.I0(input_width[5]),
        .I1(p_0_in[5]),
        .I2(input_width[4]),
        .I3(coordinate_x01_carry__0_i_10_n_0),
        .I4(input_width[3]),
        .I5(p_0_in[4]),
        .O(coordinate_x01_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    coordinate_x01_carry__0_i_7
       (.I0(input_width[3]),
        .I1(p_0_in[3]),
        .I2(input_width[2]),
        .I3(input_width[1]),
        .I4(input_width[0]),
        .I5(p_0_in[2]),
        .O(coordinate_x01_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0960)) 
    coordinate_x01_carry__0_i_8
       (.I0(input_width[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(input_width[0]),
        .O(coordinate_x01_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    coordinate_x01_carry__0_i_9
       (.I0(input_width[0]),
        .I1(input_width[1]),
        .I2(input_width[2]),
        .I3(input_width[4]),
        .I4(input_width[3]),
        .O(coordinate_x01_carry__0_i_9_n_0));
  CARRY4 coordinate_x01_carry__1
       (.CI(coordinate_x01_carry__0_n_0),
        .CO({coordinate_x01_carry__1_n_0,coordinate_x01_carry__1_n_1,coordinate_x01_carry__1_n_2,coordinate_x01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_x01_carry__1_i_1_n_0,coordinate_x01_carry__1_i_2_n_0,coordinate_x01_carry__1_i_3_n_0,coordinate_x01_carry__1_i_4_n_0}),
        .O(NLW_coordinate_x01_carry__1_O_UNCONNECTED[3:0]),
        .S({coordinate_x01_carry__1_i_5_n_0,coordinate_x01_carry__1_i_6_n_0,coordinate_x01_carry__1_i_7_n_0,coordinate_x01_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__1_i_1
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_82),
        .I2(coordinate_x02_n_83),
        .O(coordinate_x01_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__1_i_2
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_84),
        .I2(coordinate_x02_n_85),
        .O(coordinate_x01_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__1_i_3
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_86),
        .I2(coordinate_x02_n_87),
        .O(coordinate_x01_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    coordinate_x01_carry__1_i_4
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_88),
        .I2(\sample_x1[8]_i_2_n_0 ),
        .I3(p_0_in[8]),
        .O(coordinate_x01_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__1_i_5
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_83),
        .I2(coordinate_x02_n_82),
        .O(coordinate_x01_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__1_i_6
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_85),
        .I2(coordinate_x02_n_84),
        .O(coordinate_x01_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__1_i_7
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_87),
        .I2(coordinate_x02_n_86),
        .O(coordinate_x01_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    coordinate_x01_carry__1_i_8
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_88),
        .I2(\sample_x1[8]_i_2_n_0 ),
        .I3(p_0_in[8]),
        .O(coordinate_x01_carry__1_i_8_n_0));
  CARRY4 coordinate_x01_carry__2
       (.CI(coordinate_x01_carry__1_n_0),
        .CO({coordinate_x01_carry__2_n_0,coordinate_x01_carry__2_n_1,coordinate_x01_carry__2_n_2,coordinate_x01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_x01_carry__2_i_1_n_0,coordinate_x01_carry__2_i_2_n_0,coordinate_x01_carry__2_i_3_n_0,coordinate_x01_carry__2_i_4_n_0}),
        .O(NLW_coordinate_x01_carry__2_O_UNCONNECTED[3:0]),
        .S({coordinate_x01_carry__2_i_5_n_0,coordinate_x01_carry__2_i_6_n_0,coordinate_x01_carry__2_i_7_n_0,coordinate_x01_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__2_i_1
       (.I0(coordinate_x02_n_74),
        .I1(input_final0_carry_i_5_n_0),
        .I2(coordinate_x02_n_75),
        .O(coordinate_x01_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__2_i_2
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_76),
        .I2(coordinate_x02_n_77),
        .O(coordinate_x01_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__2_i_3
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_78),
        .I2(coordinate_x02_n_79),
        .O(coordinate_x01_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    coordinate_x01_carry__2_i_4
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_80),
        .I2(coordinate_x02_n_81),
        .O(coordinate_x01_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__2_i_5
       (.I0(coordinate_x02_n_74),
        .I1(input_final0_carry_i_5_n_0),
        .I2(coordinate_x02_n_75),
        .O(coordinate_x01_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__2_i_6
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_77),
        .I2(coordinate_x02_n_76),
        .O(coordinate_x01_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__2_i_7
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_79),
        .I2(coordinate_x02_n_78),
        .O(coordinate_x01_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    coordinate_x01_carry__2_i_8
       (.I0(input_final0_carry_i_5_n_0),
        .I1(coordinate_x02_n_81),
        .I2(coordinate_x02_n_80),
        .O(coordinate_x01_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_x01_carry_i_1
       (.I0(coordinate_x02_n_98),
        .I1(coordinate_x02_n_99),
        .O(coordinate_x01_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_x01_carry_i_2
       (.I0(coordinate_x02_n_100),
        .I1(coordinate_x02_n_101),
        .O(coordinate_x01_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_x01_carry_i_3
       (.I0(coordinate_x02_n_102),
        .I1(coordinate_x02_n_103),
        .O(coordinate_x01_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_x01_carry_i_4
       (.I0(coordinate_x02_n_104),
        .I1(coordinate_x02_n_105),
        .O(coordinate_x01_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_x01_carry_i_5
       (.I0(coordinate_x02_n_99),
        .I1(coordinate_x02_n_98),
        .O(coordinate_x01_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_x01_carry_i_6
       (.I0(coordinate_x02_n_101),
        .I1(coordinate_x02_n_100),
        .O(coordinate_x01_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_x01_carry_i_7
       (.I0(coordinate_x02_n_103),
        .I1(coordinate_x02_n_102),
        .O(coordinate_x01_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_x01_carry_i_8
       (.I0(coordinate_x02_n_105),
        .I1(coordinate_x02_n_104),
        .O(coordinate_x01_carry_i_8_n_0));
  CARRY4 \coordinate_x01_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\coordinate_x01_inferred__0/i__carry_n_0 ,\coordinate_x01_inferred__0/i__carry_n_1 ,\coordinate_x01_inferred__0/i__carry_n_2 ,\coordinate_x01_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_x01_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \coordinate_x01_inferred__0/i__carry__0 
       (.CI(\coordinate_x01_inferred__0/i__carry_n_0 ),
        .CO({\coordinate_x01_inferred__0/i__carry__0_n_0 ,\coordinate_x01_inferred__0/i__carry__0_n_1 ,\coordinate_x01_inferred__0/i__carry__0_n_2 ,\coordinate_x01_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_x01_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \coordinate_x01_inferred__0/i__carry__1 
       (.CI(\coordinate_x01_inferred__0/i__carry__0_n_0 ),
        .CO({\coordinate_x01_inferred__0/i__carry__1_n_0 ,\coordinate_x01_inferred__0/i__carry__1_n_1 ,\coordinate_x01_inferred__0/i__carry__1_n_2 ,\coordinate_x01_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_x01_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \coordinate_x01_inferred__0/i__carry__2 
       (.CI(\coordinate_x01_inferred__0/i__carry__1_n_0 ),
        .CO({p_2_in,\coordinate_x01_inferred__0/i__carry__2_n_1 ,\coordinate_x01_inferred__0/i__carry__2_n_2 ,\coordinate_x01_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({coordinate_x02_n_74,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_x01_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    coordinate_x02
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_coordinate_x02_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_width}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_coordinate_x02_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_coordinate_x02_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_coordinate_x02_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\output_x_reg_n_0_[6] ,\output_x_reg_n_0_[5] ,\output_x_reg_n_0_[4] ,\output_x_reg_n_0_[3] ,\output_x_reg_n_0_[2] ,\output_x_reg_n_0_[1] ,\output_x_reg_n_0_[0] ,1'b0}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_coordinate_x02_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_coordinate_x02_OVERFLOW_UNCONNECTED),
        .P({NLW_coordinate_x02_P_UNCONNECTED[47:32],coordinate_x02_n_74,coordinate_x02_n_75,coordinate_x02_n_76,coordinate_x02_n_77,coordinate_x02_n_78,coordinate_x02_n_79,coordinate_x02_n_80,coordinate_x02_n_81,coordinate_x02_n_82,coordinate_x02_n_83,coordinate_x02_n_84,coordinate_x02_n_85,coordinate_x02_n_86,coordinate_x02_n_87,coordinate_x02_n_88,p_0_in,coordinate_x02_n_98,coordinate_x02_n_99,coordinate_x02_n_100,coordinate_x02_n_101,coordinate_x02_n_102,coordinate_x02_n_103,coordinate_x02_n_104,coordinate_x02_n_105}),
        .PATTERNBDETECT(NLW_coordinate_x02_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_coordinate_x02_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_coordinate_x02_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_coordinate_x02_UNDERFLOW_UNCONNECTED));
  CARRY4 coordinate_y01_carry
       (.CI(1'b0),
        .CO({coordinate_y01_carry_n_0,coordinate_y01_carry_n_1,coordinate_y01_carry_n_2,coordinate_y01_carry_n_3}),
        .CYINIT(1'b1),
        .DI({coordinate_y01_carry_i_1_n_0,coordinate_y01_carry_i_2_n_0,coordinate_y01_carry_i_3_n_0,coordinate_y01_carry_i_4_n_0}),
        .O(NLW_coordinate_y01_carry_O_UNCONNECTED[3:0]),
        .S({coordinate_y01_carry_i_5_n_0,coordinate_y01_carry_i_6_n_0,coordinate_y01_carry_i_7_n_0,coordinate_y01_carry_i_8_n_0}));
  CARRY4 coordinate_y01_carry__0
       (.CI(coordinate_y01_carry_n_0),
        .CO({coordinate_y01_carry__0_n_0,coordinate_y01_carry__0_n_1,coordinate_y01_carry__0_n_2,coordinate_y01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_y01_carry__0_i_1_n_0,coordinate_y01_carry__0_i_2_n_0,coordinate_y01_carry__0_i_3_n_0,coordinate_y01_carry__0_i_4_n_0}),
        .O(NLW_coordinate_y01_carry__0_O_UNCONNECTED[3:0]),
        .S({coordinate_y01_carry__0_i_5_n_0,coordinate_y01_carry__0_i_6_n_0,coordinate_y01_carry__0_i_7_n_0,coordinate_y01_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hA2CB208A)) 
    coordinate_y01_carry__0_i_1
       (.I0(coordinate_y02_n_90),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(i__carry_i_5_n_0),
        .I3(\input_height_reg_n_0_[7] ),
        .I4(coordinate_y02_n_91),
        .O(coordinate_y01_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0A2AAFBC0002AAA8)) 
    coordinate_y01_carry__0_i_2
       (.I0(coordinate_y02_n_92),
        .I1(coordinate_y01_carry__0_i_9_n_0),
        .I2(\input_height_reg_n_0_[4] ),
        .I3(\input_height_reg_n_0_[3] ),
        .I4(\input_height_reg_n_0_[5] ),
        .I5(coordinate_y02_n_93),
        .O(coordinate_y01_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    coordinate_y01_carry__0_i_3
       (.I0(coordinate_y02_n_94),
        .I1(\input_height_reg_n_0_[2] ),
        .I2(\input_height_reg_n_0_[1] ),
        .I3(\input_height_reg_n_0_[0] ),
        .I4(\input_height_reg_n_0_[3] ),
        .I5(coordinate_y02_n_95),
        .O(coordinate_y01_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hB828)) 
    coordinate_y01_carry__0_i_4
       (.I0(coordinate_y02_n_96),
        .I1(\input_height_reg_n_0_[1] ),
        .I2(\input_height_reg_n_0_[0] ),
        .I3(coordinate_y02_n_97),
        .O(coordinate_y01_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h06909009)) 
    coordinate_y01_carry__0_i_5
       (.I0(\input_height_reg_n_0_[7] ),
        .I1(coordinate_y02_n_90),
        .I2(\input_height_reg_n_0_[6] ),
        .I3(i__carry_i_5_n_0),
        .I4(coordinate_y02_n_91),
        .O(coordinate_y01_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    coordinate_y01_carry__0_i_6
       (.I0(\input_height_reg_n_0_[5] ),
        .I1(coordinate_y02_n_92),
        .I2(\input_height_reg_n_0_[4] ),
        .I3(coordinate_y01_carry__0_i_9_n_0),
        .I4(\input_height_reg_n_0_[3] ),
        .I5(coordinate_y02_n_93),
        .O(coordinate_y01_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    coordinate_y01_carry__0_i_7
       (.I0(\input_height_reg_n_0_[3] ),
        .I1(coordinate_y02_n_94),
        .I2(\input_height_reg_n_0_[2] ),
        .I3(\input_height_reg_n_0_[1] ),
        .I4(\input_height_reg_n_0_[0] ),
        .I5(coordinate_y02_n_95),
        .O(coordinate_y01_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0960)) 
    coordinate_y01_carry__0_i_8
       (.I0(\input_height_reg_n_0_[1] ),
        .I1(coordinate_y02_n_96),
        .I2(coordinate_y02_n_97),
        .I3(\input_height_reg_n_0_[0] ),
        .O(coordinate_y01_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    coordinate_y01_carry__0_i_9
       (.I0(\input_height_reg_n_0_[2] ),
        .I1(\input_height_reg_n_0_[1] ),
        .I2(\input_height_reg_n_0_[0] ),
        .O(coordinate_y01_carry__0_i_9_n_0));
  CARRY4 coordinate_y01_carry__1
       (.CI(coordinate_y01_carry__0_n_0),
        .CO({coordinate_y01_carry__1_n_0,coordinate_y01_carry__1_n_1,coordinate_y01_carry__1_n_2,coordinate_y01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_y01_carry__1_i_1_n_0,coordinate_y01_carry__1_i_2_n_0,coordinate_y01_carry__1_i_3_n_0,coordinate_y01_carry__1_i_4_n_0}),
        .O(NLW_coordinate_y01_carry__1_O_UNCONNECTED[3:0]),
        .S({coordinate_y01_carry__1_i_5_n_0,coordinate_y01_carry__1_i_6_n_0,coordinate_y01_carry__1_i_7_n_0,coordinate_y01_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__1_i_1
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_82),
        .I5(coordinate_y02_n_83),
        .O(coordinate_y01_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__1_i_2
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_84),
        .I5(coordinate_y02_n_85),
        .O(coordinate_y01_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__1_i_3
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_86),
        .I5(coordinate_y02_n_87),
        .O(coordinate_y01_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEE0AE)) 
    coordinate_y01_carry__1_i_4
       (.I0(coordinate_y02_n_88),
        .I1(coordinate_y02_n_89),
        .I2(\input_height_reg_n_0_[8] ),
        .I3(i__carry_i_5_n_0),
        .I4(\input_height_reg_n_0_[6] ),
        .I5(\input_height_reg_n_0_[7] ),
        .O(coordinate_y01_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__1_i_5
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_83),
        .I5(coordinate_y02_n_82),
        .O(coordinate_y01_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__1_i_6
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_85),
        .I5(coordinate_y02_n_84),
        .O(coordinate_y01_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__1_i_7
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_87),
        .I5(coordinate_y02_n_86),
        .O(coordinate_y01_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h4444442411111141)) 
    coordinate_y01_carry__1_i_8
       (.I0(coordinate_y02_n_88),
        .I1(\input_height_reg_n_0_[8] ),
        .I2(i__carry_i_5_n_0),
        .I3(\input_height_reg_n_0_[6] ),
        .I4(\input_height_reg_n_0_[7] ),
        .I5(coordinate_y02_n_89),
        .O(coordinate_y01_carry__1_i_8_n_0));
  CARRY4 coordinate_y01_carry__2
       (.CI(coordinate_y01_carry__1_n_0),
        .CO({coordinate_y01_carry__2_n_0,coordinate_y01_carry__2_n_1,coordinate_y01_carry__2_n_2,coordinate_y01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({coordinate_y01_carry__2_i_1_n_0,coordinate_y01_carry__2_i_2_n_0,coordinate_y01_carry__2_i_3_n_0,coordinate_y01_carry__2_i_4_n_0}),
        .O(NLW_coordinate_y01_carry__2_O_UNCONNECTED[3:0]),
        .S({coordinate_y01_carry__2_i_5_n_0,coordinate_y01_carry__2_i_6_n_0,coordinate_y01_carry__2_i_7_n_0,coordinate_y01_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000FFFF00000002)) 
    coordinate_y01_carry__2_i_1
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_74),
        .I5(coordinate_y02_n_75),
        .O(coordinate_y01_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__2_i_2
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_76),
        .I5(coordinate_y02_n_77),
        .O(coordinate_y01_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__2_i_3
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_78),
        .I5(coordinate_y02_n_79),
        .O(coordinate_y01_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    coordinate_y01_carry__2_i_4
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_80),
        .I5(coordinate_y02_n_81),
        .O(coordinate_y01_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__2_i_5
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_74),
        .I5(coordinate_y02_n_75),
        .O(coordinate_y01_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__2_i_6
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_77),
        .I5(coordinate_y02_n_76),
        .O(coordinate_y01_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__2_i_7
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_79),
        .I5(coordinate_y02_n_78),
        .O(coordinate_y01_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h000200000000FFFD)) 
    coordinate_y01_carry__2_i_8
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(coordinate_y02_n_81),
        .I5(coordinate_y02_n_80),
        .O(coordinate_y01_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_y01_carry_i_1
       (.I0(coordinate_y02_n_98),
        .I1(coordinate_y02_n_99),
        .O(coordinate_y01_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_y01_carry_i_2
       (.I0(coordinate_y02_n_100),
        .I1(coordinate_y02_n_101),
        .O(coordinate_y01_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_y01_carry_i_3
       (.I0(coordinate_y02_n_102),
        .I1(coordinate_y02_n_103),
        .O(coordinate_y01_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    coordinate_y01_carry_i_4
       (.I0(coordinate_y02_n_104),
        .I1(coordinate_y02_n_105),
        .O(coordinate_y01_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_y01_carry_i_5
       (.I0(coordinate_y02_n_99),
        .I1(coordinate_y02_n_98),
        .O(coordinate_y01_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_y01_carry_i_6
       (.I0(coordinate_y02_n_101),
        .I1(coordinate_y02_n_100),
        .O(coordinate_y01_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_y01_carry_i_7
       (.I0(coordinate_y02_n_103),
        .I1(coordinate_y02_n_102),
        .O(coordinate_y01_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    coordinate_y01_carry_i_8
       (.I0(coordinate_y02_n_105),
        .I1(coordinate_y02_n_104),
        .O(coordinate_y01_carry_i_8_n_0));
  CARRY4 \coordinate_y01_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\coordinate_y01_inferred__0/i__carry_n_0 ,\coordinate_y01_inferred__0/i__carry_n_1 ,\coordinate_y01_inferred__0/i__carry_n_2 ,\coordinate_y01_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_y01_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \coordinate_y01_inferred__0/i__carry__0 
       (.CI(\coordinate_y01_inferred__0/i__carry_n_0 ),
        .CO({\coordinate_y01_inferred__0/i__carry__0_n_0 ,\coordinate_y01_inferred__0/i__carry__0_n_1 ,\coordinate_y01_inferred__0/i__carry__0_n_2 ,\coordinate_y01_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_y01_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \coordinate_y01_inferred__0/i__carry__1 
       (.CI(\coordinate_y01_inferred__0/i__carry__0_n_0 ),
        .CO({\coordinate_y01_inferred__0/i__carry__1_n_0 ,\coordinate_y01_inferred__0/i__carry__1_n_1 ,\coordinate_y01_inferred__0/i__carry__1_n_2 ,\coordinate_y01_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_y01_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \coordinate_y01_inferred__0/i__carry__2 
       (.CI(\coordinate_y01_inferred__0/i__carry__1_n_0 ),
        .CO({\coordinate_y01_inferred__0/i__carry__2_n_0 ,\coordinate_y01_inferred__0/i__carry__2_n_1 ,\coordinate_y01_inferred__0/i__carry__2_n_2 ,\coordinate_y01_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({coordinate_y02_n_74,1'b0,1'b0,1'b0}),
        .O(\NLW_coordinate_y01_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    coordinate_y02
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_coordinate_y02_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\input_height_reg_n_0_[8] ,\input_height_reg_n_0_[7] ,\input_height_reg_n_0_[6] ,\input_height_reg_n_0_[5] ,\input_height_reg_n_0_[4] ,\input_height_reg_n_0_[3] ,\input_height_reg_n_0_[2] ,\input_height_reg_n_0_[1] ,\input_height_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_coordinate_y02_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_coordinate_y02_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_coordinate_y02_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\output_y_reg_n_0_[6] ,\output_y_reg_n_0_[5] ,\output_y_reg_n_0_[4] ,\output_y_reg_n_0_[3] ,\output_y_reg_n_0_[2] ,\output_y_reg_n_0_[1] ,\output_y_reg_n_0_[0] ,1'b0}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_coordinate_y02_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_coordinate_y02_OVERFLOW_UNCONNECTED),
        .P({NLW_coordinate_y02_P_UNCONNECTED[47:32],coordinate_y02_n_74,coordinate_y02_n_75,coordinate_y02_n_76,coordinate_y02_n_77,coordinate_y02_n_78,coordinate_y02_n_79,coordinate_y02_n_80,coordinate_y02_n_81,coordinate_y02_n_82,coordinate_y02_n_83,coordinate_y02_n_84,coordinate_y02_n_85,coordinate_y02_n_86,coordinate_y02_n_87,coordinate_y02_n_88,coordinate_y02_n_89,coordinate_y02_n_90,coordinate_y02_n_91,coordinate_y02_n_92,coordinate_y02_n_93,coordinate_y02_n_94,coordinate_y02_n_95,coordinate_y02_n_96,coordinate_y02_n_97,coordinate_y02_n_98,coordinate_y02_n_99,coordinate_y02_n_100,coordinate_y02_n_101,coordinate_y02_n_102,coordinate_y02_n_103,coordinate_y02_n_104,coordinate_y02_n_105}),
        .PATTERNBDETECT(NLW_coordinate_y02_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_coordinate_y02_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_coordinate_y02_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_coordinate_y02_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    dma_tready_INST_0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(dma_tready));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    done_i_1
       (.I0(done_reg_0),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\state[1]_i_2_n_0 ),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(done_i_1_n_0),
        .Q(resize_done));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_0
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_0_n_0),
        .CASCADEOUTB(frame_mem_reg_0_0_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  CARRY4 frame_mem_reg_0_0_i_1
       (.CI(frame_mem_reg_0_0_i_2_n_0),
        .CO(NLW_frame_mem_reg_0_0_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_mem_reg_0_0_i_1_O_UNCONNECTED[3:1],write_address__0[15]}),
        .S({1'b0,1'b0,1'b0,\input_y_reg_n_0_[7] }));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_10
       (.I0(sample_x0[3]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[3]),
        .O(C[3]));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_11
       (.I0(sample_x0[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[2]),
        .O(C[2]));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_12
       (.I0(sample_x0[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[1]),
        .O(C[1]));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_13
       (.I0(sample_x0[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[0]),
        .O(C[0]));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_0_0_i_14
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_0_0_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_mem_reg_0_0_i_15
       (.I0(\input_y_reg_n_0_[2] ),
        .I1(input_x[10]),
        .O(frame_mem_reg_0_0_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_mem_reg_0_0_i_16
       (.I0(\input_y_reg_n_0_[1] ),
        .I1(input_x[9]),
        .O(frame_mem_reg_0_0_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_mem_reg_0_0_i_17
       (.I0(\input_y_reg_n_0_[0] ),
        .I1(input_x[8]),
        .O(frame_mem_reg_0_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_18
       (.I0(sample_y0[7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[7]),
        .O(frame_mem_reg_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_19
       (.I0(sample_y0[6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[6]),
        .O(frame_mem_reg_0_0_i_19_n_0));
  CARRY4 frame_mem_reg_0_0_i_2
       (.CI(frame_mem_reg_0_0_i_3_n_0),
        .CO({frame_mem_reg_0_0_i_2_n_0,frame_mem_reg_0_0_i_2_n_1,frame_mem_reg_0_0_i_2_n_2,frame_mem_reg_0_0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(write_address__0[14:11]),
        .S({\input_y_reg_n_0_[6] ,\input_y_reg_n_0_[5] ,\input_y_reg_n_0_[4] ,\input_y_reg_n_0_[3] }));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_20
       (.I0(sample_y0[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[5]),
        .O(frame_mem_reg_0_0_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_21
       (.I0(sample_y0[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[4]),
        .O(frame_mem_reg_0_0_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_22
       (.I0(sample_y0[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[3]),
        .O(frame_mem_reg_0_0_i_22_n_0));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_23
       (.I0(sample_x0[8]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[8]),
        .O(C__0[8]));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_24
       (.I0(sample_y0[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[2]),
        .O(frame_mem_reg_0_0_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFEABF00002A80)) 
    frame_mem_reg_0_0_i_25
       (.I0(sample_y0[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sample_y1[1]),
        .O(frame_mem_reg_0_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    frame_mem_reg_0_0_i_26
       (.I0(sample_x1[8]),
        .I1(frame_mem_reg_0_0_i_28_n_0),
        .I2(sample_x0[8]),
        .I3(sample_y1[0]),
        .I4(frame_mem_reg_0_0_i_29_n_0),
        .I5(sample_y0[0]),
        .O(frame_mem_reg_0_0_i_26_n_0));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_27
       (.I0(sample_x0[7]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[7]),
        .O(C__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h3006)) 
    frame_mem_reg_0_0_i_28
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(frame_mem_reg_0_0_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    frame_mem_reg_0_0_i_29
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(frame_mem_reg_0_0_i_29_n_0));
  CARRY4 frame_mem_reg_0_0_i_3
       (.CI(1'b0),
        .CO({frame_mem_reg_0_0_i_3_n_0,frame_mem_reg_0_0_i_3_n_1,frame_mem_reg_0_0_i_3_n_2,frame_mem_reg_0_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({\input_y_reg_n_0_[2] ,\input_y_reg_n_0_[1] ,\input_y_reg_n_0_[0] ,1'b0}),
        .O(write_address__0[10:7]),
        .S({frame_mem_reg_0_0_i_15_n_0,frame_mem_reg_0_0_i_16_n_0,frame_mem_reg_0_0_i_17_n_0,input_x[7]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 frame_mem_reg_0_0_i_4
       (.CI(frame_mem_reg_0_0_i_5_n_0),
        .CO(NLW_frame_mem_reg_0_0_i_4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_mem_reg_0_0_i_4_O_UNCONNECTED[3:1],frame_mem_reg_0_0_i_4_n_7}),
        .S({1'b0,1'b0,1'b0,frame_mem_reg_0_0_i_18_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 frame_mem_reg_0_0_i_5
       (.CI(frame_mem_reg_0_0_i_6_n_0),
        .CO({frame_mem_reg_0_0_i_5_n_0,frame_mem_reg_0_0_i_5_n_1,frame_mem_reg_0_0_i_5_n_2,frame_mem_reg_0_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7}),
        .S({frame_mem_reg_0_0_i_19_n_0,frame_mem_reg_0_0_i_20_n_0,frame_mem_reg_0_0_i_21_n_0,frame_mem_reg_0_0_i_22_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 frame_mem_reg_0_0_i_6
       (.CI(1'b0),
        .CO({frame_mem_reg_0_0_i_6_n_0,frame_mem_reg_0_0_i_6_n_1,frame_mem_reg_0_0_i_6_n_2,frame_mem_reg_0_0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,C__0[8],1'b0}),
        .O({frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7}),
        .S({frame_mem_reg_0_0_i_24_n_0,frame_mem_reg_0_0_i_25_n_0,frame_mem_reg_0_0_i_26_n_0,C__0[7]}));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_7
       (.I0(sample_x0[6]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[6]),
        .O(C[6]));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_8
       (.I0(sample_x0[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[5]),
        .O(C[5]));
  LUT6 #(
    .INIT(64'hFAFFFFEB0A000028)) 
    frame_mem_reg_0_0_i_9
       (.I0(sample_x0[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sample_x1[4]),
        .O(C[4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_1
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_1_n_0),
        .CASCADEOUTB(frame_mem_reg_0_1_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_0_1_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_0_1_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_2
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_2_n_0),
        .CASCADEOUTB(frame_mem_reg_0_2_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_3
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_3_n_0),
        .CASCADEOUTB(frame_mem_reg_0_3_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_4
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_4_n_0),
        .CASCADEOUTB(frame_mem_reg_0_4_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_5
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_5_n_0),
        .CASCADEOUTB(frame_mem_reg_0_5_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_0_5_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_0_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_6
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_6_n_0),
        .CASCADEOUTB(frame_mem_reg_0_6_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_0_6_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_0_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_0_7
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_mem_reg_0_7_n_0),
        .CASCADEOUTB(frame_mem_reg_0_7_n_1),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_mem_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_mem_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_0
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_0_n_0),
        .CASCADEINB(frame_mem_reg_0_0_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_0_DOBDO_UNCONNECTED[31:1],ram_read_data[0]}),
        .DOPADOP(NLW_frame_mem_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0,frame_mem_reg_0_0_i_14_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_1
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_1_n_0),
        .CASCADEINB(frame_mem_reg_0_1_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_1_DOBDO_UNCONNECTED[31:1],ram_read_data[1]}),
        .DOPADOP(NLW_frame_mem_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0,frame_mem_reg_0_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_2
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_2_n_0),
        .CASCADEINB(frame_mem_reg_0_2_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_2_DOBDO_UNCONNECTED[31:1],ram_read_data[2]}),
        .DOPADOP(NLW_frame_mem_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_1_2_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_1_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_3
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_3_n_0),
        .CASCADEINB(frame_mem_reg_0_3_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_3_DOBDO_UNCONNECTED[31:1],ram_read_data[3]}),
        .DOPADOP(NLW_frame_mem_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_2_i_1_n_0,frame_mem_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_1_3_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_1_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_4
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_4_n_0),
        .CASCADEINB(frame_mem_reg_0_4_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_4_DOBDO_UNCONNECTED[31:1],ram_read_data[4]}),
        .DOPADOP(NLW_frame_mem_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0,frame_mem_reg_1_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_5
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_5_n_0),
        .CASCADEINB(frame_mem_reg_0_5_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_5_DOBDO_UNCONNECTED[31:1],ram_read_data[5]}),
        .DOPADOP(NLW_frame_mem_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0,frame_mem_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_6
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_6_n_0),
        .CASCADEINB(frame_mem_reg_0_6_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_6_DOBDO_UNCONNECTED[31:1],ram_read_data[6]}),
        .DOPADOP(NLW_frame_mem_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0,frame_mem_reg_0_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "frame_mem" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_mem_reg_1_7
       (.ADDRARDADDR({write_address__0,input_x[6:0]}),
        .ADDRBWRADDR({frame_mem_reg_0_0_i_4_n_7,frame_mem_reg_0_0_i_5_n_4,frame_mem_reg_0_0_i_5_n_5,frame_mem_reg_0_0_i_5_n_6,frame_mem_reg_0_0_i_5_n_7,frame_mem_reg_0_0_i_6_n_4,frame_mem_reg_0_0_i_6_n_5,frame_mem_reg_0_0_i_6_n_6,frame_mem_reg_0_0_i_6_n_7,C}),
        .CASCADEINA(frame_mem_reg_0_7_n_0),
        .CASCADEINB(frame_mem_reg_0_7_n_1),
        .CASCADEOUTA(NLW_frame_mem_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_mem_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_frame_mem_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dma_tdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_mem_reg_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_mem_reg_1_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_mem_reg_1_7_DOBDO_UNCONNECTED[31:1],ram_read_data[7]}),
        .DOPADOP(NLW_frame_mem_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_mem_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_mem_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(dma_tvalid),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_frame_mem_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_mem_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_mem_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_mem_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({frame_mem_reg_1_7_i_1_n_0,frame_mem_reg_1_7_i_1_n_0,frame_mem_reg_1_7_i_1_n_0,frame_mem_reg_1_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0002)) 
    frame_mem_reg_1_7_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(frame_mem_reg_1_7_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(coordinate_y02_n_91),
        .I1(coordinate_y02_n_90),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1__0
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(coordinate_y02_n_93),
        .I1(coordinate_y02_n_92),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__0
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(coordinate_y02_n_95),
        .I1(coordinate_y02_n_94),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__0
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(coordinate_y02_n_97),
        .I1(coordinate_y02_n_96),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4__0
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(coordinate_y02_n_83),
        .I1(coordinate_y02_n_82),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__0
       (.I0(coordinate_x02_n_83),
        .I1(coordinate_x02_n_82),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(coordinate_y02_n_85),
        .I1(coordinate_y02_n_84),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2__0
       (.I0(coordinate_x02_n_85),
        .I1(coordinate_x02_n_84),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(coordinate_y02_n_87),
        .I1(coordinate_y02_n_86),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3__0
       (.I0(coordinate_x02_n_87),
        .I1(coordinate_x02_n_86),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(coordinate_y02_n_89),
        .I1(coordinate_y02_n_88),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4__0
       (.I0(p_0_in[8]),
        .I1(coordinate_x02_n_88),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(coordinate_y02_n_75),
        .I1(coordinate_y02_n_74),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1__0
       (.I0(coordinate_x02_n_75),
        .I1(coordinate_x02_n_74),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(coordinate_y02_n_77),
        .I1(coordinate_y02_n_76),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2__0
       (.I0(coordinate_x02_n_77),
        .I1(coordinate_x02_n_76),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3
       (.I0(coordinate_y02_n_79),
        .I1(coordinate_y02_n_78),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3__0
       (.I0(coordinate_x02_n_79),
        .I1(coordinate_x02_n_78),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(coordinate_y02_n_81),
        .I1(coordinate_y02_n_80),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4__0
       (.I0(coordinate_x02_n_81),
        .I1(coordinate_x02_n_80),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(coordinate_y02_n_99),
        .I1(coordinate_y02_n_98),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__0
       (.I0(coordinate_x02_n_99),
        .I1(coordinate_x02_n_98),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h0002FFFD)) 
    i__carry_i_1__8
       (.I0(i__carry_i_5_n_0),
        .I1(\input_height_reg_n_0_[6] ),
        .I2(\input_height_reg_n_0_[7] ),
        .I3(\input_height_reg_n_0_[8] ),
        .I4(\input_y_reg_n_0_[9] ),
        .O(i__carry_i_1__8_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    i__carry_i_2
       (.I0(\sample_y1[6]_i_2_n_0 ),
        .I1(\input_y_reg_n_0_[6] ),
        .I2(\input_y_reg_n_0_[7] ),
        .I3(\sample_y1[7]_i_4_n_0 ),
        .I4(\input_y_reg_n_0_[8] ),
        .I5(i__carry_i_6_n_0),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__0
       (.I0(coordinate_y02_n_101),
        .I1(coordinate_y02_n_100),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__1
       (.I0(coordinate_x02_n_101),
        .I1(coordinate_x02_n_100),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry_i_3
       (.I0(\sample_y1[3]_i_3_n_0 ),
        .I1(\input_y_reg_n_0_[3] ),
        .I2(\input_y_reg_n_0_[5] ),
        .I3(\sample_y1[5]_i_3_n_0 ),
        .I4(\input_y_reg_n_0_[4] ),
        .I5(\sample_y1[4]_i_3_n_0 ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__0
       (.I0(coordinate_y02_n_103),
        .I1(coordinate_y02_n_102),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__1
       (.I0(coordinate_x02_n_103),
        .I1(coordinate_x02_n_102),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0000096090090000)) 
    i__carry_i_4
       (.I0(\input_height_reg_n_0_[2] ),
        .I1(\input_y_reg_n_0_[2] ),
        .I2(\input_y_reg_n_0_[1] ),
        .I3(\input_height_reg_n_0_[1] ),
        .I4(\input_height_reg_n_0_[0] ),
        .I5(\input_y_reg_n_0_[0] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__0
       (.I0(coordinate_y02_n_105),
        .I1(coordinate_y02_n_104),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__1
       (.I0(coordinate_x02_n_105),
        .I1(coordinate_x02_n_104),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_5
       (.I0(\input_height_reg_n_0_[1] ),
        .I1(\input_height_reg_n_0_[0] ),
        .I2(\input_height_reg_n_0_[2] ),
        .I3(\input_height_reg_n_0_[5] ),
        .I4(\input_height_reg_n_0_[3] ),
        .I5(\input_height_reg_n_0_[4] ),
        .O(i__carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h5559)) 
    i__carry_i_6
       (.I0(\input_height_reg_n_0_[8] ),
        .I1(i__carry_i_5_n_0),
        .I2(\input_height_reg_n_0_[6] ),
        .I3(\input_height_reg_n_0_[7] ),
        .O(i__carry_i_6_n_0));
  CARRY4 input_final0_carry
       (.CI(1'b0),
        .CO({input_final0,input_final0_carry_n_1,input_final0_carry_n_2,input_final0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_input_final0_carry_O_UNCONNECTED[3:0]),
        .S({input_final0_carry_i_1_n_0,input_final0_carry_i_2_n_0,input_final0_carry_i_3_n_0,input_final0_carry_i_4_n_0}));
  LUT3 #(
    .INIT(8'h81)) 
    input_final0_carry_i_1
       (.I0(input_final0_carry_i_5_n_0),
        .I1(input_x[9]),
        .I2(input_x[10]),
        .O(input_final0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    input_final0_carry_i_2
       (.I0(\sample_x1[8]_i_2_n_0 ),
        .I1(input_x[8]),
        .I2(input_x[7]),
        .I3(\sample_x1[7]_i_3_n_0 ),
        .I4(input_x[6]),
        .I5(\sample_x1[6]_i_2_n_0 ),
        .O(input_final0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    input_final0_carry_i_3
       (.I0(\sample_x1[5]_i_3_n_0 ),
        .I1(input_x[5]),
        .I2(input_x[3]),
        .I3(\sample_x1[3]_i_3_n_0 ),
        .I4(input_x[4]),
        .I5(\sample_x1[4]_i_3_n_0 ),
        .O(input_final0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000096090090000)) 
    input_final0_carry_i_4
       (.I0(input_width[2]),
        .I1(input_x[2]),
        .I2(input_x[1]),
        .I3(input_width[1]),
        .I4(input_width[0]),
        .I5(input_x[0]),
        .O(input_final0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    input_final0_carry_i_5
       (.I0(input_width[0]),
        .I1(input_width[1]),
        .I2(input_width[2]),
        .I3(\sample_x1[0]_i_3_n_0 ),
        .O(input_final0_carry_i_5_n_0));
  CARRY4 \input_final0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\input_final0_inferred__0/i__carry_n_0 ,\input_final0_inferred__0/i__carry_n_1 ,\input_final0_inferred__0/i__carry_n_2 ,\input_final0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_input_final0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__8_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \input_height[0]_i_1 
       (.I0(control[9]),
        .O(\control[28] [0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \input_height[1]_i_1 
       (.I0(control[9]),
        .I1(control[10]),
        .O(\control[28] [1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \input_height[2]_i_1 
       (.I0(control[11]),
        .I1(control[9]),
        .I2(control[10]),
        .O(\control[28] [2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \input_height[3]_i_1 
       (.I0(control[12]),
        .I1(control[11]),
        .I2(control[9]),
        .I3(control[10]),
        .O(\control[28] [3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \input_height[4]_i_1 
       (.I0(control[13]),
        .I1(control[10]),
        .I2(control[9]),
        .I3(control[11]),
        .I4(control[12]),
        .O(\control[28] [4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \input_height[5]_i_1 
       (.I0(control[14]),
        .I1(control[12]),
        .I2(control[11]),
        .I3(control[9]),
        .I4(control[10]),
        .I5(control[13]),
        .O(\control[28] [5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \input_height[6]_i_1 
       (.I0(control[15]),
        .I1(control[13]),
        .I2(\input_height[8]_i_2_n_0 ),
        .I3(control[14]),
        .O(\control[28] [6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \input_height[7]_i_1 
       (.I0(control[16]),
        .I1(control[14]),
        .I2(\input_height[8]_i_2_n_0 ),
        .I3(control[13]),
        .I4(control[15]),
        .O(\control[28] [7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \input_height[8]_i_1 
       (.I0(control[16]),
        .I1(control[14]),
        .I2(\input_height[8]_i_2_n_0 ),
        .I3(control[13]),
        .I4(control[15]),
        .O(\control[28] [8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \input_height[8]_i_2 
       (.I0(control[12]),
        .I1(control[11]),
        .I2(control[9]),
        .I3(control[10]),
        .O(\input_height[8]_i_2_n_0 ));
  FDPE \input_height_reg[0] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .D(\control[28] [0]),
        .PRE(aresetn_0),
        .Q(\input_height_reg_n_0_[0] ));
  FDCE \input_height_reg[1] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [1]),
        .Q(\input_height_reg_n_0_[1] ));
  FDCE \input_height_reg[2] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [2]),
        .Q(\input_height_reg_n_0_[2] ));
  FDCE \input_height_reg[3] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [3]),
        .Q(\input_height_reg_n_0_[3] ));
  FDCE \input_height_reg[4] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [4]),
        .Q(\input_height_reg_n_0_[4] ));
  FDCE \input_height_reg[5] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [5]),
        .Q(\input_height_reg_n_0_[5] ));
  FDCE \input_height_reg[6] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [6]),
        .Q(\input_height_reg_n_0_[6] ));
  FDCE \input_height_reg[7] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [7]),
        .Q(\input_height_reg_n_0_[7] ));
  FDCE \input_height_reg[8] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[28] [8]),
        .Q(\input_height_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'h8140000228140000)) 
    input_row_last_carry_i_1
       (.I0(\input_x_reg[8]_0 [7]),
        .I1(input_row_last_carry_i_1_0[6]),
        .I2(input_row_last_carry_i_4_n_0),
        .I3(input_row_last_carry_i_1_0[7]),
        .I4(input_row_last_carry_i_5_n_0),
        .I5(\input_x_reg[8]_0 [6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0000000090090960)) 
    input_row_last_carry_i_2
       (.I0(input_row_last_carry_i_1_0[5]),
        .I1(\input_x_reg[8]_0 [5]),
        .I2(\input_x_reg[8]_0 [4]),
        .I3(input_row_last_carry_i_6_n_0),
        .I4(input_row_last_carry_i_1_0[4]),
        .I5(input_row_last_carry_i_7_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0000422490090000)) 
    input_row_last_carry_i_3
       (.I0(\input_x_reg[8]_0 [1]),
        .I1(input_row_last_carry_i_1_0[1]),
        .I2(\input_x_reg[8]_0 [2]),
        .I3(input_row_last_carry_i_1_0[2]),
        .I4(input_row_last_carry_i_1_0[0]),
        .I5(\input_x_reg[8]_0 [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    input_row_last_carry_i_4
       (.I0(input_row_last_carry_i_1_0[5]),
        .I1(input_row_last_carry_i_1_0[3]),
        .I2(input_row_last_carry_i_1_0[0]),
        .I3(input_row_last_carry_i_1_0[1]),
        .I4(input_row_last_carry_i_1_0[2]),
        .I5(input_row_last_carry_i_1_0[4]),
        .O(input_row_last_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    input_row_last_carry_i_5
       (.I0(\input_x_reg[8]_0 [8]),
        .I1(input_row_last_carry_i_1_0[8]),
        .O(input_row_last_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    input_row_last_carry_i_6
       (.I0(input_row_last_carry_i_1_0[3]),
        .I1(input_row_last_carry_i_1_0[0]),
        .I2(input_row_last_carry_i_1_0[1]),
        .I3(input_row_last_carry_i_1_0[2]),
        .O(input_row_last_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    input_row_last_carry_i_7
       (.I0(\input_x_reg[8]_0 [3]),
        .I1(input_row_last_carry_i_1_0[2]),
        .I2(input_row_last_carry_i_1_0[1]),
        .I3(input_row_last_carry_i_1_0[0]),
        .I4(input_row_last_carry_i_1_0[3]),
        .O(input_row_last_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \input_width[0]_i_1 
       (.I0(control[1]),
        .O(\control[20] [0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \input_width[1]_i_1 
       (.I0(control[1]),
        .I1(control[2]),
        .O(\control[20] [1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \input_width[2]_i_1 
       (.I0(control[3]),
        .I1(control[1]),
        .I2(control[2]),
        .O(\control[20] [2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \input_width[3]_i_1 
       (.I0(control[4]),
        .I1(control[3]),
        .I2(control[1]),
        .I3(control[2]),
        .O(\control[20] [3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \input_width[4]_i_1 
       (.I0(control[5]),
        .I1(control[3]),
        .I2(control[1]),
        .I3(control[2]),
        .I4(control[4]),
        .O(\control[20] [4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \input_width[5]_i_1 
       (.I0(control[6]),
        .I1(control[4]),
        .I2(control[2]),
        .I3(control[1]),
        .I4(control[3]),
        .I5(control[5]),
        .O(\control[20] [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \input_width[6]_i_1 
       (.I0(\input_width[8]_i_3_n_0 ),
        .I1(control[7]),
        .O(\control[20] [6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \input_width[7]_i_1 
       (.I0(control[8]),
        .I1(\input_width[8]_i_3_n_0 ),
        .I2(control[7]),
        .O(\control[20] [7]));
  LUT3 #(
    .INIT(8'hA2)) 
    \input_width[8]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(control[0]),
        .I2(\input_y_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \input_width[8]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(control_cfg_d),
        .I5(control[17]),
        .O(\state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \input_width[8]_i_2 
       (.I0(control[8]),
        .I1(\input_width[8]_i_3_n_0 ),
        .I2(control[7]),
        .O(\control[20] [8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \input_width[8]_i_3 
       (.I0(control[5]),
        .I1(control[3]),
        .I2(control[1]),
        .I3(control[2]),
        .I4(control[4]),
        .I5(control[6]),
        .O(\input_width[8]_i_3_n_0 ));
  FDPE \input_width_reg[0] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .D(\control[20] [0]),
        .PRE(aresetn_0),
        .Q(input_width[0]));
  FDCE \input_width_reg[1] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [1]),
        .Q(input_width[1]));
  FDCE \input_width_reg[2] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [2]),
        .Q(input_width[2]));
  FDCE \input_width_reg[3] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [3]),
        .Q(input_width[3]));
  FDCE \input_width_reg[4] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [4]),
        .Q(input_width[4]));
  FDCE \input_width_reg[5] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [5]),
        .Q(input_width[5]));
  FDCE \input_width_reg[6] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [6]),
        .Q(input_width[6]));
  FDCE \input_width_reg[7] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [7]),
        .Q(input_width[7]));
  FDCE \input_width_reg[8] 
       (.C(aclk),
        .CE(\state_reg[2]_0 ),
        .CLR(aresetn_0),
        .D(\control[20] [8]),
        .Q(input_width[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \input_x[0]_i_1 
       (.I0(input_x[0]),
        .I1(Q[0]),
        .I2(input_final0),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00510000)) 
    \input_x[0]_i_1__0 
       (.I0(\input_x_reg[8]_0 [0]),
        .I1(control[0]),
        .I2(\input_y_reg[0]_0 ),
        .I3(CO),
        .I4(dma_tvalid_0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \input_x[10]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(dma_tvalid),
        .O(\input_x[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h08040C00)) 
    \input_x[10]_i_2 
       (.I0(\input_x[10]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(input_final0),
        .I3(input_x[10]),
        .I4(input_x[9]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \input_x[10]_i_3 
       (.I0(input_x[7]),
        .I1(\input_x[8]_i_2__0_n_0 ),
        .I2(input_x[6]),
        .I3(input_x[8]),
        .O(\input_x[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000660600000000)) 
    \input_x[1]_i_1 
       (.I0(\input_x_reg[8]_0 [1]),
        .I1(\input_x_reg[8]_0 [0]),
        .I2(control[0]),
        .I3(\input_y_reg[0]_0 ),
        .I4(CO),
        .I5(dma_tvalid_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \input_x[1]_i_1__0 
       (.I0(input_final0),
        .I1(Q[0]),
        .I2(input_x[1]),
        .I3(input_x[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \input_x[2]_i_1 
       (.I0(\input_x_reg[8]_0 [0]),
        .I1(\input_x_reg[8]_0 [1]),
        .I2(\input_x_reg[8]_0 [2]),
        .I3(\input_x[8]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00002888)) 
    \input_x[2]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[2]),
        .I2(input_x[1]),
        .I3(input_x[0]),
        .I4(input_final0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \input_x[3]_i_1 
       (.I0(\input_x_reg[8]_0 [1]),
        .I1(\input_x_reg[8]_0 [0]),
        .I2(\input_x_reg[8]_0 [2]),
        .I3(\input_x_reg[8]_0 [3]),
        .I4(\input_x[8]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \input_x[3]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[3]),
        .I2(input_x[2]),
        .I3(input_x[0]),
        .I4(input_x[1]),
        .I5(input_final0),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \input_x[4]_i_1 
       (.I0(\input_x_reg[8]_0 [2]),
        .I1(\input_x_reg[8]_0 [0]),
        .I2(\input_x_reg[8]_0 [1]),
        .I3(\input_x_reg[8]_0 [3]),
        .I4(\input_x_reg[8]_0 [4]),
        .I5(\input_x[8]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000088288888)) 
    \input_x[4]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[4]),
        .I2(input_x[3]),
        .I3(\input_x[4]_i_2_n_0 ),
        .I4(input_x[2]),
        .I5(input_final0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \input_x[4]_i_2 
       (.I0(input_x[0]),
        .I1(input_x[1]),
        .O(\input_x[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0090000000900090)) 
    \input_x[5]_i_1 
       (.I0(\input_x_reg[5]_0 ),
        .I1(\input_x_reg[8]_0 [5]),
        .I2(dma_tvalid_0),
        .I3(CO),
        .I4(\input_y_reg[0]_0 ),
        .I5(control[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \input_x[5]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[5]),
        .I2(\input_x[5]_i_2_n_0 ),
        .I3(input_final0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \input_x[5]_i_2 
       (.I0(input_x[3]),
        .I1(input_x[1]),
        .I2(input_x[0]),
        .I3(input_x[2]),
        .I4(input_x[4]),
        .O(\input_x[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0090000000900090)) 
    \input_x[6]_i_1 
       (.I0(\input_x_reg[6]_0 ),
        .I1(\input_x_reg[8]_0 [6]),
        .I2(dma_tvalid_0),
        .I3(CO),
        .I4(\input_y_reg[0]_0 ),
        .I5(control[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \input_x[6]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[6]),
        .I2(\input_x[8]_i_2__0_n_0 ),
        .I3(input_final0),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4414)) 
    \input_x[7]_i_1 
       (.I0(\input_x[8]_i_4_n_0 ),
        .I1(\input_x_reg[8]_0 [7]),
        .I2(\input_x_reg[8]_0 [6]),
        .I3(\input_x_reg[6]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00008828)) 
    \input_x[7]_i_1__0 
       (.I0(Q[0]),
        .I1(input_x[7]),
        .I2(input_x[6]),
        .I3(\input_x[8]_i_2__0_n_0 ),
        .I4(input_final0),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFBA)) 
    \input_x[8]_i_1 
       (.I0(dma_tvalid_0),
        .I1(\input_y_reg[0]_0 ),
        .I2(control[0]),
        .I3(\state_reg[2]_0 ),
        .O(control_clear_d_reg));
  LUT6 #(
    .INIT(64'h4040044040404040)) 
    \input_x[8]_i_1__0 
       (.I0(input_final0),
        .I1(Q[0]),
        .I2(input_x[8]),
        .I3(input_x[6]),
        .I4(\input_x[8]_i_2__0_n_0 ),
        .I5(input_x[7]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \input_x[8]_i_2 
       (.I0(\input_x_reg[8]_0 [8]),
        .I1(\input_x_reg[6]_0 ),
        .I2(\input_x_reg[8]_0 [6]),
        .I3(\input_x_reg[8]_0 [7]),
        .I4(\input_x[8]_i_4_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \input_x[8]_i_2__0 
       (.I0(input_x[4]),
        .I1(input_x[2]),
        .I2(input_x[0]),
        .I3(input_x[1]),
        .I4(input_x[3]),
        .I5(input_x[5]),
        .O(\input_x[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \input_x[8]_i_4 
       (.I0(dma_tvalid_0),
        .I1(CO),
        .I2(\input_y_reg[0]_0 ),
        .I3(control[0]),
        .O(\input_x[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \input_x[9]_i_1 
       (.I0(Q[0]),
        .I1(input_x[9]),
        .I2(\input_x[10]_i_3_n_0 ),
        .I3(input_final0),
        .O(p_1_in[9]));
  FDCE \input_x_reg[0] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[0]),
        .Q(input_x[0]));
  FDCE \input_x_reg[10] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[10]),
        .Q(input_x[10]));
  FDCE \input_x_reg[1] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[1]),
        .Q(input_x[1]));
  FDCE \input_x_reg[2] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[2]),
        .Q(input_x[2]));
  FDCE \input_x_reg[3] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[3]),
        .Q(input_x[3]));
  FDCE \input_x_reg[4] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[4]),
        .Q(input_x[4]));
  FDCE \input_x_reg[5] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[5]),
        .Q(input_x[5]));
  FDCE \input_x_reg[6] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[6]),
        .Q(input_x[6]));
  FDCE \input_x_reg[7] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[7]),
        .Q(input_x[7]));
  FDCE \input_x_reg[8] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[8]),
        .Q(input_x[8]));
  FDCE \input_x_reg[9] 
       (.C(aclk),
        .CE(\input_x[10]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(p_1_in[9]),
        .Q(input_x[9]));
  LUT6 #(
    .INIT(64'h0000000051000000)) 
    \input_y[0]_i_1 
       (.I0(\input_y_reg[0]_1 ),
        .I1(control[0]),
        .I2(\input_y_reg[0]_0 ),
        .I3(CO),
        .I4(dma_tvalid_0),
        .I5(\input_y_reg[8]_1 [0]),
        .O(\input_y_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \input_y[0]_i_1__0 
       (.I0(\input_y_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(input_final0),
        .I3(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \input_y[1]_i_1 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [1]),
        .I2(\input_y_reg[8]_1 [0]),
        .O(\input_y_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00606060)) 
    \input_y[1]_i_1__0 
       (.I0(\input_y_reg_n_0_[1] ),
        .I1(\input_y_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(input_final0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \input_y[2]_i_1 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [0]),
        .I2(\input_y_reg[8]_1 [1]),
        .I3(\input_y_reg[8]_1 [2]),
        .O(\input_y_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'h0000780078007800)) 
    \input_y[2]_i_1__0 
       (.I0(\input_y_reg_n_0_[0] ),
        .I1(\input_y_reg_n_0_[1] ),
        .I2(\input_y_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(input_final0),
        .I5(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \input_y[3]_i_1 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [1]),
        .I2(\input_y_reg[8]_1 [0]),
        .I3(\input_y_reg[8]_1 [2]),
        .I4(\input_y_reg[8]_1 [3]),
        .O(\input_y_reg[8]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \input_y[3]_i_1__0 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[3] ),
        .I2(\input_y_reg_n_0_[2] ),
        .I3(\input_y_reg_n_0_[0] ),
        .I4(\input_y_reg_n_0_[1] ),
        .I5(\input_y[3]_i_2_n_0 ),
        .O(\input_y[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \input_y[3]_i_2 
       (.I0(input_final0),
        .I1(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \input_y[4]_i_1 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [2]),
        .I2(\input_y_reg[8]_1 [0]),
        .I3(\input_y_reg[8]_1 [1]),
        .I4(\input_y_reg[8]_1 [3]),
        .I5(\input_y_reg[8]_1 [4]),
        .O(\input_y_reg[8]_0 [4]));
  LUT5 #(
    .INIT(32'h00828282)) 
    \input_y[4]_i_1__0 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[4] ),
        .I2(\input_y[4]_i_2_n_0 ),
        .I3(input_final0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \input_y[4]_i_2 
       (.I0(\input_y_reg_n_0_[2] ),
        .I1(\input_y_reg_n_0_[0] ),
        .I2(\input_y_reg_n_0_[1] ),
        .I3(\input_y_reg_n_0_[3] ),
        .O(\input_y[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \input_y[5]_i_1 
       (.I0(\input_y_reg[8]_1 [5]),
        .I1(\input_y_reg[5]_0 ),
        .I2(\input_y[8]_i_3_n_0 ),
        .O(\input_y_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00828282)) 
    \input_y[5]_i_1__0 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[5] ),
        .I2(\input_y[5]_i_2_n_0 ),
        .I3(input_final0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \input_y[5]_i_2 
       (.I0(\input_y_reg_n_0_[3] ),
        .I1(\input_y_reg_n_0_[1] ),
        .I2(\input_y_reg_n_0_[0] ),
        .I3(\input_y_reg_n_0_[2] ),
        .I4(\input_y_reg_n_0_[4] ),
        .O(\input_y[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \input_y[6]_i_1 
       (.I0(\input_y_reg[8]_1 [6]),
        .I1(\input_y_reg[8]_2 ),
        .I2(\input_y[8]_i_3_n_0 ),
        .O(\input_y_reg[8]_0 [6]));
  LUT5 #(
    .INIT(32'h00828282)) 
    \input_y[6]_i_1__0 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[6] ),
        .I2(\input_y[7]_i_2_n_0 ),
        .I3(input_final0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \input_y[7]_i_1 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [7]),
        .I2(\input_y_reg[8]_1 [6]),
        .I3(\input_y_reg[8]_2 ),
        .O(\input_y_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'h7000700000707000)) 
    \input_y[7]_i_1__0 
       (.I0(\input_final0_inferred__0/i__carry_n_0 ),
        .I1(input_final0),
        .I2(Q[0]),
        .I3(\input_y_reg_n_0_[7] ),
        .I4(\input_y_reg_n_0_[6] ),
        .I5(\input_y[7]_i_2_n_0 ),
        .O(\input_y[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \input_y[7]_i_2 
       (.I0(\input_y_reg_n_0_[4] ),
        .I1(\input_y_reg_n_0_[2] ),
        .I2(\input_y_reg_n_0_[0] ),
        .I3(\input_y_reg_n_0_[1] ),
        .I4(\input_y_reg_n_0_[3] ),
        .I5(\input_y_reg_n_0_[5] ),
        .O(\input_y[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \input_y[8]_i_1 
       (.I0(\input_y_reg[0]_0 ),
        .I1(control[0]),
        .I2(\state_reg[2]_0 ),
        .I3(dma_tvalid_0),
        .I4(CO),
        .O(control_clear_d_reg_0));
  LUT5 #(
    .INIT(32'h00282828)) 
    \input_y[8]_i_1__0 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[8] ),
        .I2(\input_y[9]_i_4_n_0 ),
        .I3(input_final0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h82888888)) 
    \input_y[8]_i_2 
       (.I0(\input_y[8]_i_3_n_0 ),
        .I1(\input_y_reg[8]_1 [8]),
        .I2(\input_y_reg[8]_2 ),
        .I3(\input_y_reg[8]_1 [6]),
        .I4(\input_y_reg[8]_1 [7]),
        .O(\input_y_reg[8]_0 [8]));
  LUT5 #(
    .INIT(32'h00008088)) 
    \input_y[8]_i_3 
       (.I0(dma_tvalid_0),
        .I1(CO),
        .I2(\input_y_reg[0]_0 ),
        .I3(control[0]),
        .I4(\input_y_reg[0]_1 ),
        .O(\input_y[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \input_y[9]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(dma_tvalid_0),
        .I2(input_final0),
        .O(\input_y[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000288828882888)) 
    \input_y[9]_i_2 
       (.I0(Q[0]),
        .I1(\input_y_reg_n_0_[9] ),
        .I2(\input_y_reg_n_0_[8] ),
        .I3(\input_y[9]_i_4_n_0 ),
        .I4(input_final0),
        .I5(\input_final0_inferred__0/i__carry_n_0 ),
        .O(\input_y[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \input_y[9]_i_3 
       (.I0(dma_tvalid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(dma_tvalid_0));
  LUT3 #(
    .INIT(8'h08)) 
    \input_y[9]_i_4 
       (.I0(\input_y_reg_n_0_[7] ),
        .I1(\input_y_reg_n_0_[6] ),
        .I2(\input_y[7]_i_2_n_0 ),
        .O(\input_y[9]_i_4_n_0 ));
  FDCE \input_y_reg[0] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[0]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[0] ));
  FDCE \input_y_reg[1] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[1]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[1] ));
  FDCE \input_y_reg[2] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[2]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[2] ));
  FDCE \input_y_reg[3] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[3]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[3] ));
  FDCE \input_y_reg[4] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[4]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[4] ));
  FDCE \input_y_reg[5] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[5]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[5] ));
  FDCE \input_y_reg[6] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[6]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[6] ));
  FDCE \input_y_reg[7] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[7]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[7] ));
  FDCE \input_y_reg[8] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[8]_i_1__0_n_0 ),
        .Q(\input_y_reg_n_0_[8] ));
  FDCE \input_y_reg[9] 
       (.C(aclk),
        .CE(\input_y[9]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\input_y[9]_i_2_n_0 ),
        .Q(\input_y_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[1]_i_2 
       (.I0(vertical_mix_next__0[15]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[1]_i_3 
       (.I0(vertical_mix_next__0[17]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[1]_i_4 
       (.I0(vertical_mix_next__0[16]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[16]));
  LUT2 #(
    .INIT(4'h7)) 
    \m_tdata[1]_i_5 
       (.I0(\m_tdata_reg[7]_i_5 ),
        .I1(vertical_mix_next__0[15]),
        .O(\m_tdata[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[1]_i_6 
       (.I0(vertical_mix_next__0[14]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[5]_i_2 
       (.I0(vertical_mix_next__0[21]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[5]_i_3 
       (.I0(vertical_mix_next__0[20]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[5]_i_4 
       (.I0(vertical_mix_next__0[19]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[5]_i_5 
       (.I0(vertical_mix_next__0[18]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[18]));
  LUT4 #(
    .INIT(16'h4000)) 
    \m_tdata[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\m_tdata[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[7]_i_3 
       (.I0(vertical_mix_next__0[23]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_tdata[7]_i_4 
       (.I0(vertical_mix_next__0[22]),
        .I1(\m_tdata_reg[7]_i_5 ),
        .O(vertical_mix[22]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \m_tdata[7]_i_6 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\m_tdata_reg[7]_i_5 ),
        .O(\state_reg[3]_0 ));
  FDCE \m_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(m_tuser_reg_3),
        .D(m_tdata1[16]),
        .Q(\m_tdata_reg[7]_0 [0]));
  FDCE \m_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(m_tuser_reg_3),
        .D(m_tdata1[17]),
        .Q(\m_tdata_reg[7]_0 [1]));
  CARRY4 \m_tdata_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\m_tdata_reg[1]_i_1_n_0 ,\m_tdata_reg[1]_i_1_n_1 ,\m_tdata_reg[1]_i_1_n_2 ,\m_tdata_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,vertical_mix[15],1'b0}),
        .O({m_tdata1[17:16],\NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({vertical_mix[17:16],\m_tdata[1]_i_5_n_0 ,vertical_mix[14]}));
  FDCE \m_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[18]),
        .Q(\m_tdata_reg[7]_0 [2]));
  FDCE \m_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[19]),
        .Q(\m_tdata_reg[7]_0 [3]));
  FDCE \m_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[20]),
        .Q(\m_tdata_reg[7]_0 [4]));
  FDCE \m_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[21]),
        .Q(\m_tdata_reg[7]_0 [5]));
  CARRY4 \m_tdata_reg[5]_i_1 
       (.CI(\m_tdata_reg[1]_i_1_n_0 ),
        .CO({\m_tdata_reg[5]_i_1_n_0 ,\m_tdata_reg[5]_i_1_n_1 ,\m_tdata_reg[5]_i_1_n_2 ,\m_tdata_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_tdata1[21:18]),
        .S(vertical_mix[21:18]));
  FDCE \m_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[22]),
        .Q(\m_tdata_reg[7]_0 [6]));
  FDCE \m_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(m_tdata1[23]),
        .Q(\m_tdata_reg[7]_0 [7]));
  CARRY4 \m_tdata_reg[7]_i_2 
       (.CI(\m_tdata_reg[5]_i_1_n_0 ),
        .CO({\NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED [3:1],\m_tdata_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED [3:2],m_tdata1[23:22]}),
        .S({1'b0,1'b0,vertical_mix[23:22]}));
  LUT2 #(
    .INIT(4'h2)) 
    m_tlast_i_1
       (.I0(\output_x_reg_n_0_[6] ),
        .I1(\output_x[6]_i_4_n_0 ),
        .O(output_final010_in));
  FDCE m_tlast_reg
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(m_tuser_reg_3),
        .D(output_final010_in),
        .Q(resize_last));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    m_tuser_i_1
       (.I0(m_tuser_i_2_n_0),
        .I1(m_tuser_i_3_n_0),
        .I2(\output_x_reg_n_0_[6] ),
        .I3(\output_x_reg_n_0_[4] ),
        .I4(\output_x_reg_n_0_[3] ),
        .I5(\output_y_reg_n_0_[4] ),
        .O(m_tuser0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_tuser_i_2
       (.I0(\output_y_reg_n_0_[1] ),
        .I1(\output_y_reg_n_0_[0] ),
        .I2(\output_y_reg_n_0_[6] ),
        .I3(\output_x_reg_n_0_[5] ),
        .I4(\output_x_reg_n_0_[1] ),
        .I5(\output_x_reg_n_0_[0] ),
        .O(m_tuser_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_tuser_i_3
       (.I0(\output_y_reg_n_0_[3] ),
        .I1(\output_y_reg_n_0_[2] ),
        .I2(\output_x_reg_n_0_[2] ),
        .I3(\output_y_reg_n_0_[5] ),
        .O(m_tuser_i_3_n_0));
  FDCE m_tuser_reg
       (.C(aclk),
        .CE(\m_tdata[7]_i_1_n_0 ),
        .CLR(m_tuser_reg_3),
        .D(m_tuser0),
        .Q(resize_user));
  FDCE m_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(m_tvalid_reg_0),
        .Q(resize_valid));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_x[0]_i_1 
       (.I0(Q[3]),
        .I1(\output_x_reg_n_0_[0] ),
        .O(\output_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \output_x[1]_i_1 
       (.I0(\output_x_reg_n_0_[0] ),
        .I1(\output_x_reg_n_0_[1] ),
        .I2(Q[3]),
        .O(\output_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \output_x[2]_i_1 
       (.I0(Q[3]),
        .I1(\output_x_reg_n_0_[1] ),
        .I2(\output_x_reg_n_0_[0] ),
        .I3(\output_x_reg_n_0_[2] ),
        .O(\output_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \output_x[3]_i_1 
       (.I0(Q[3]),
        .I1(\output_x_reg_n_0_[0] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(\output_x_reg_n_0_[2] ),
        .I4(\output_x_reg_n_0_[3] ),
        .O(\output_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \output_x[4]_i_1 
       (.I0(Q[3]),
        .I1(\output_x_reg_n_0_[2] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(\output_x_reg_n_0_[0] ),
        .I4(\output_x_reg_n_0_[3] ),
        .I5(\output_x_reg_n_0_[4] ),
        .O(\output_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \output_x[5]_i_1 
       (.I0(Q[3]),
        .I1(\output_x[5]_i_2_n_0 ),
        .I2(\output_x_reg_n_0_[5] ),
        .O(\output_x[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \output_x[5]_i_2 
       (.I0(\output_x_reg_n_0_[3] ),
        .I1(\output_x_reg_n_0_[0] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(\output_x_reg_n_0_[2] ),
        .I4(\output_x_reg_n_0_[4] ),
        .O(\output_x[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \output_x[6]_i_1 
       (.I0(input_final0),
        .I1(\input_final0_inferred__0/i__carry_n_0 ),
        .I2(dma_tvalid_0),
        .I3(\output_x[6]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(done_reg_0),
        .O(\output_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \output_x[6]_i_2 
       (.I0(Q[3]),
        .I1(\output_x[6]_i_4_n_0 ),
        .I2(\output_x_reg_n_0_[6] ),
        .O(\output_x[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \output_x[6]_i_3 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\output_x[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \output_x[6]_i_4 
       (.I0(\output_x_reg_n_0_[4] ),
        .I1(\output_x_reg_n_0_[2] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(\output_x_reg_n_0_[0] ),
        .I4(\output_x_reg_n_0_[3] ),
        .I5(\output_x_reg_n_0_[5] ),
        .O(\output_x[6]_i_4_n_0 ));
  FDCE \output_x_reg[0] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[0]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[0] ));
  FDCE \output_x_reg[1] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[1]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[1] ));
  FDCE \output_x_reg[2] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[2]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[2] ));
  FDCE \output_x_reg[3] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[3]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[3] ));
  FDCE \output_x_reg[4] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[4]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[4] ));
  FDCE \output_x_reg[5] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[5]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[5] ));
  FDCE \output_x_reg[6] 
       (.C(aclk),
        .CE(\output_x[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_x[6]_i_2_n_0 ),
        .Q(\output_x_reg_n_0_[6] ));
  LUT2 #(
    .INIT(4'h2)) 
    \output_y[0]_i_1 
       (.I0(Q[3]),
        .I1(\output_y_reg_n_0_[0] ),
        .O(\output_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \output_y[1]_i_1 
       (.I0(\output_y_reg_n_0_[1] ),
        .I1(\output_y_reg_n_0_[0] ),
        .I2(Q[3]),
        .O(\output_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \output_y[2]_i_1 
       (.I0(Q[3]),
        .I1(\output_y_reg_n_0_[0] ),
        .I2(\output_y_reg_n_0_[1] ),
        .I3(\output_y_reg_n_0_[2] ),
        .O(\output_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \output_y[3]_i_1 
       (.I0(Q[3]),
        .I1(\output_y_reg_n_0_[1] ),
        .I2(\output_y_reg_n_0_[0] ),
        .I3(\output_y_reg_n_0_[2] ),
        .I4(\output_y_reg_n_0_[3] ),
        .O(\output_y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \output_y[4]_i_1 
       (.I0(Q[3]),
        .I1(\output_y_reg_n_0_[2] ),
        .I2(\output_y_reg_n_0_[0] ),
        .I3(\output_y_reg_n_0_[1] ),
        .I4(\output_y_reg_n_0_[3] ),
        .I5(\output_y_reg_n_0_[4] ),
        .O(\output_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \output_y[5]_i_1 
       (.I0(Q[3]),
        .I1(\output_y[5]_i_2_n_0 ),
        .I2(\output_y_reg_n_0_[5] ),
        .O(\output_y[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \output_y[5]_i_2 
       (.I0(\output_y_reg_n_0_[3] ),
        .I1(\output_y_reg_n_0_[1] ),
        .I2(\output_y_reg_n_0_[0] ),
        .I3(\output_y_reg_n_0_[2] ),
        .I4(\output_y_reg_n_0_[4] ),
        .O(\output_y[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF040404040404040)) 
    \output_y[6]_i_1 
       (.I0(\output_x[6]_i_4_n_0 ),
        .I1(\output_x_reg_n_0_[6] ),
        .I2(\output_x[6]_i_1_n_0 ),
        .I3(dma_tvalid_0),
        .I4(\input_final0_inferred__0/i__carry_n_0 ),
        .I5(input_final0),
        .O(\output_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \output_y[6]_i_2 
       (.I0(\output_y[6]_i_3_n_0 ),
        .I1(\output_y_reg_n_0_[6] ),
        .I2(Q[3]),
        .O(\output_y[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \output_y[6]_i_3 
       (.I0(\output_y_reg_n_0_[5] ),
        .I1(\output_y_reg_n_0_[4] ),
        .I2(\output_y_reg_n_0_[2] ),
        .I3(\output_y_reg_n_0_[0] ),
        .I4(\output_y_reg_n_0_[1] ),
        .I5(\output_y_reg_n_0_[3] ),
        .O(\output_y[6]_i_3_n_0 ));
  FDCE \output_y_reg[0] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[0]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[0] ));
  FDCE \output_y_reg[1] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[1]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[1] ));
  FDCE \output_y_reg[2] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[2]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[2] ));
  FDCE \output_y_reg[3] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[3]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[3] ));
  FDCE \output_y_reg[4] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[4]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[4] ));
  FDCE \output_y_reg[5] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[5]_i_1_n_0 ),
        .Q(\output_y_reg_n_0_[5] ));
  FDCE \output_y_reg[6] 
       (.C(aclk),
        .CE(\output_y[6]_i_1_n_0 ),
        .CLR(aresetn_0),
        .D(\output_y[6]_i_2_n_0 ),
        .Q(\output_y_reg_n_0_[6] ));
  LUT4 #(
    .INIT(16'h0100)) 
    \p00[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\p00[7]_i_1_n_0 ));
  FDCE \p00_reg[0] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[0]),
        .Q(p00[0]));
  FDCE \p00_reg[1] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[1]),
        .Q(p00[1]));
  FDCE \p00_reg[2] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[2]),
        .Q(p00[2]));
  FDCE \p00_reg[3] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[3]),
        .Q(p00[3]));
  FDCE \p00_reg[4] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[4]),
        .Q(p00[4]));
  FDCE \p00_reg[5] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[5]),
        .Q(p00[5]));
  FDCE \p00_reg[6] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[6]),
        .Q(p00[6]));
  FDCE \p00_reg[7] 
       (.C(aclk),
        .CE(\p00[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[7]),
        .Q(p00[7]));
  LUT4 #(
    .INIT(16'h0100)) 
    \p01[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\p01[7]_i_1_n_0 ));
  FDCE \p01_reg[0] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[0]),
        .Q(p01[0]));
  FDCE \p01_reg[1] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[1]),
        .Q(p01[1]));
  FDCE \p01_reg[2] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[2]),
        .Q(p01[2]));
  FDCE \p01_reg[3] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[3]),
        .Q(p01[3]));
  FDCE \p01_reg[4] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[4]),
        .Q(p01[4]));
  FDCE \p01_reg[5] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[5]),
        .Q(p01[5]));
  FDCE \p01_reg[6] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[6]),
        .Q(p01[6]));
  FDCE \p01_reg[7] 
       (.C(aclk),
        .CE(\p01[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[7]),
        .Q(p01[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \p10[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\p10[7]_i_1_n_0 ));
  FDCE \p10_reg[0] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[0]),
        .Q(p10[0]));
  FDCE \p10_reg[1] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[1]),
        .Q(p10[1]));
  FDCE \p10_reg[2] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[2]),
        .Q(p10[2]));
  FDCE \p10_reg[3] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[3]),
        .Q(p10[3]));
  FDCE \p10_reg[4] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[4]),
        .Q(p10[4]));
  FDCE \p10_reg[5] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[5]),
        .Q(p10[5]));
  FDCE \p10_reg[6] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[6]),
        .Q(p10[6]));
  FDCE \p10_reg[7] 
       (.C(aclk),
        .CE(\p10[7]_i_1_n_0 ),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(ram_read_data[7]),
        .Q(p10[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \p11[7]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\p11[7]_i_1_n_0 ));
  FDCE \p11_reg[0] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[0]),
        .Q(p11[0]));
  FDCE \p11_reg[1] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[1]),
        .Q(p11[1]));
  FDCE \p11_reg[2] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[2]),
        .Q(p11[2]));
  FDCE \p11_reg[3] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[3]),
        .Q(p11[3]));
  FDCE \p11_reg[4] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[4]),
        .Q(p11[4]));
  FDCE \p11_reg[5] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[5]),
        .Q(p11[5]));
  FDCE \p11_reg[6] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[6]),
        .Q(p11[6]));
  FDCE \p11_reg[7] 
       (.C(aclk),
        .CE(\p11[7]_i_1_n_0 ),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(ram_read_data[7]),
        .Q(p11[7]));
  LUT4 #(
    .INIT(16'h2A80)) 
    protocol_error_sticky_i_3
       (.I0(dma_tvalid_0),
        .I1(CO),
        .I2(\input_y_reg[0]_1 ),
        .I3(dma_tlast),
        .O(dma_tlast_0));
  LUT2 #(
    .INIT(4'h2)) 
    protocol_error_sticky_i_5
       (.I0(control[17]),
        .I1(control_cfg_d),
        .O(\control[29] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    protocol_error_sticky_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\state_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    resize_error_sticky_i_2
       (.I0(aresetn),
        .O(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[0]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_105),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[1]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_104),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[2]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_103),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[3]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_102),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[4]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_101),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[5]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_100),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[6]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_99),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_x[7]_i_1 
       (.I0(p_2_in),
        .I1(coordinate_x02_n_98),
        .I2(coordinate_x01_carry__2_n_0),
        .O(\sample_fraction_x[7]_i_1_n_0 ));
  FDCE \sample_fraction_x_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(\sample_fraction_x[0]_i_1_n_0 ),
        .Q(sample_fraction_x[0]));
  FDCE \sample_fraction_x_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(\sample_fraction_x[1]_i_1_n_0 ),
        .Q(sample_fraction_x[1]));
  FDCE \sample_fraction_x_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(\sample_fraction_x[2]_i_1_n_0 ),
        .Q(sample_fraction_x[2]));
  FDCE \sample_fraction_x_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\m_tdata_reg[3]_0 ),
        .D(\sample_fraction_x[3]_i_1_n_0 ),
        .Q(sample_fraction_x[3]));
  FDCE \sample_fraction_x_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_fraction_x[4]_i_1_n_0 ),
        .Q(sample_fraction_x[4]));
  FDCE \sample_fraction_x_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_fraction_x[5]_i_1_n_0 ),
        .Q(sample_fraction_x[5]));
  FDCE \sample_fraction_x_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_fraction_x[6]_i_1_n_0 ),
        .Q(sample_fraction_x[6]));
  FDCE \sample_fraction_x_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_fraction_x[7]_i_1_n_0 ),
        .Q(sample_fraction_x[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[0]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_105),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[1]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_104),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[2]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_103),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[3]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_102),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[4]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_101),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[5]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_100),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[6]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_99),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sample_fraction_y[7]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_98),
        .I2(coordinate_y01_carry__2_n_0),
        .O(\sample_fraction_y[7]_i_1_n_0 ));
  FDCE \sample_fraction_y_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[0]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[0] ));
  FDCE \sample_fraction_y_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[1]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[1] ));
  FDCE \sample_fraction_y_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[2]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[2] ));
  FDCE \sample_fraction_y_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[3]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[3] ));
  FDCE \sample_fraction_y_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[4]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[4] ));
  FDCE \sample_fraction_y_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[5]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[5] ));
  FDCE \sample_fraction_y_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[6]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[6] ));
  FDCE \sample_fraction_y_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_fraction_y[7]_i_1_n_0 ),
        .Q(\sample_fraction_y_reg_n_0_[7] ));
  LUT4 #(
    .INIT(16'h1310)) 
    \sample_x0[0]_i_1 
       (.I0(input_width[0]),
        .I1(p_2_in),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(p_0_in[0]),
        .O(coordinate_x0[0]));
  LUT5 #(
    .INIT(32'h54040454)) 
    \sample_x0[1]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[1]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(input_width[1]),
        .I4(input_width[0]),
        .O(\sample_x0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404040454)) 
    \sample_x0[2]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[2]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(input_width[0]),
        .I4(input_width[1]),
        .I5(input_width[2]),
        .O(\sample_x0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_x0[3]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[3]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[3]_i_3_n_0 ),
        .O(\sample_x0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_x0[4]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[4]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[4]_i_3_n_0 ),
        .O(\sample_x0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \sample_x0[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(coordinate_x01_carry__2_n_0),
        .I2(\sample_x1[5]_i_3_n_0 ),
        .I3(p_2_in),
        .O(coordinate_x0[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_x0[6]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[6]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[6]_i_2_n_0 ),
        .O(\sample_x0[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_x0[7]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[7]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[7]_i_3_n_0 ),
        .O(\sample_x0[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4540)) 
    \sample_x0[8]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[8]_i_2_n_0 ),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(p_0_in[8]),
        .O(\sample_x0[8]_i_1_n_0 ));
  FDCE \sample_x0_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_x0[0]),
        .Q(sample_x0[0]));
  FDCE \sample_x0_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[1]_i_1_n_0 ),
        .Q(sample_x0[1]));
  FDCE \sample_x0_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[2]_i_1_n_0 ),
        .Q(sample_x0[2]));
  FDCE \sample_x0_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[3]_i_1_n_0 ),
        .Q(sample_x0[3]));
  FDCE \sample_x0_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[4]_i_1_n_0 ),
        .Q(sample_x0[4]));
  FDCE \sample_x0_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_x0[5]),
        .Q(sample_x0[5]));
  FDCE \sample_x0_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[6]_i_1_n_0 ),
        .Q(sample_x0[6]));
  FDCE \sample_x0_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[7]_i_1_n_0 ),
        .Q(sample_x0[7]));
  FDCE \sample_x0_reg[8] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x0[8]_i_1_n_0 ),
        .Q(sample_x0[8]));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \sample_x1[0]_i_1 
       (.I0(\sample_x1[0]_i_2_n_0 ),
        .I1(p_2_in),
        .I2(p_0_in[0]),
        .I3(coordinate_x01_carry__2_n_0),
        .I4(input_width[0]),
        .O(coordinate_x1[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_x1[0]_i_2 
       (.I0(input_width[2]),
        .I1(input_width[1]),
        .I2(\sample_x1[0]_i_3_n_0 ),
        .O(\sample_x1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sample_x1[0]_i_3 
       (.I0(input_width[6]),
        .I1(input_width[5]),
        .I2(input_width[7]),
        .I3(input_width[8]),
        .I4(input_width[3]),
        .I5(input_width[4]),
        .O(\sample_x1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5514001400145514)) 
    \sample_x1[1]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(coordinate_x01_carry__2_n_0),
        .I4(input_width[1]),
        .I5(input_width[0]),
        .O(\sample_x1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000154055551540)) 
    \sample_x1[2]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(coordinate_x01_carry__2_n_0),
        .I5(\sample_x1[2]_i_2_n_0 ),
        .O(\sample_x1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \sample_x1[2]_i_2 
       (.I0(input_width[2]),
        .I1(input_width[1]),
        .I2(input_width[0]),
        .O(\sample_x1[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_x1[3]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[3]_i_2_n_0 ),
        .I2(p_0_in[3]),
        .I3(coordinate_x01_carry__2_n_0),
        .I4(\sample_x1[3]_i_3_n_0 ),
        .O(\sample_x1[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_x1[3]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(\sample_x1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sample_x1[3]_i_3 
       (.I0(input_width[3]),
        .I1(input_width[0]),
        .I2(input_width[1]),
        .I3(input_width[2]),
        .O(\sample_x1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_x1[4]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[4]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(coordinate_x01_carry__2_n_0),
        .I4(\sample_x1[4]_i_3_n_0 ),
        .O(\sample_x1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sample_x1[4]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .O(\sample_x1[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \sample_x1[4]_i_3 
       (.I0(input_width[4]),
        .I1(input_width[2]),
        .I2(input_width[1]),
        .I3(input_width[0]),
        .I4(input_width[3]),
        .O(\sample_x1[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0000F909)) 
    \sample_x1[5]_i_1 
       (.I0(\sample_x1[5]_i_2_n_0 ),
        .I1(p_0_in[5]),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[5]_i_3_n_0 ),
        .I4(p_2_in),
        .O(coordinate_x1[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample_x1[5]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .O(\sample_x1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sample_x1[5]_i_3 
       (.I0(input_width[5]),
        .I1(input_width[3]),
        .I2(input_width[4]),
        .I3(input_width[2]),
        .I4(input_width[1]),
        .I5(input_width[0]),
        .O(\sample_x1[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_x1[6]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[7]_i_2_n_0 ),
        .I2(p_0_in[6]),
        .I3(coordinate_x01_carry__2_n_0),
        .I4(\sample_x1[6]_i_2_n_0 ),
        .O(\sample_x1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55555556)) 
    \sample_x1[6]_i_2 
       (.I0(input_width[6]),
        .I1(coordinate_x01_carry__0_i_10_n_0),
        .I2(input_width[4]),
        .I3(input_width[3]),
        .I4(input_width[5]),
        .O(\sample_x1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000451055554510)) 
    \sample_x1[7]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[7]_i_2_n_0 ),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .I4(coordinate_x01_carry__2_n_0),
        .I5(\sample_x1[7]_i_3_n_0 ),
        .O(\sample_x1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample_x1[7]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(\sample_x1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \sample_x1[7]_i_3 
       (.I0(input_width[3]),
        .I1(input_width[4]),
        .I2(coordinate_x01_carry__0_i_10_n_0),
        .I3(input_width[6]),
        .I4(input_width[5]),
        .I5(input_width[7]),
        .O(\sample_x1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4540454540454040)) 
    \sample_x1[8]_i_1 
       (.I0(p_2_in),
        .I1(\sample_x1[8]_i_2_n_0 ),
        .I2(coordinate_x01_carry__2_n_0),
        .I3(\sample_x1[8]_i_3_n_0 ),
        .I4(p_0_in[7]),
        .I5(p_0_in[8]),
        .O(\sample_x1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA9A)) 
    \sample_x1[8]_i_2 
       (.I0(input_width[8]),
        .I1(input_width[7]),
        .I2(coordinate_x01_carry__0_i_9_n_0),
        .I3(input_width[6]),
        .I4(input_width[5]),
        .O(\sample_x1[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sample_x1[8]_i_3 
       (.I0(\sample_x1[7]_i_2_n_0 ),
        .I1(p_0_in[6]),
        .O(\sample_x1[8]_i_3_n_0 ));
  FDCE \sample_x1_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(coordinate_x1[0]),
        .Q(sample_x1[0]));
  FDCE \sample_x1_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_x1[1]_i_1_n_0 ),
        .Q(sample_x1[1]));
  FDCE \sample_x1_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(\sample_fraction_x_reg[4]_0 ),
        .D(\sample_x1[2]_i_1_n_0 ),
        .Q(sample_x1[2]));
  FDCE \sample_x1_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x1[3]_i_1_n_0 ),
        .Q(sample_x1[3]));
  FDCE \sample_x1_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x1[4]_i_1_n_0 ),
        .Q(sample_x1[4]));
  FDCE \sample_x1_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_x1[5]),
        .Q(sample_x1[5]));
  FDCE \sample_x1_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x1[6]_i_1_n_0 ),
        .Q(sample_x1[6]));
  FDCE \sample_x1_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x1[7]_i_1_n_0 ),
        .Q(sample_x1[7]));
  FDCE \sample_x1_reg[8] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_x1[8]_i_1_n_0 ),
        .Q(sample_x1[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h1310)) 
    \sample_y0[0]_i_1 
       (.I0(\input_height_reg_n_0_[0] ),
        .I1(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(coordinate_y02_n_97),
        .O(coordinate_y0[0]));
  LUT5 #(
    .INIT(32'h54040454)) 
    \sample_y0[1]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_96),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\input_height_reg_n_0_[1] ),
        .I4(\input_height_reg_n_0_[0] ),
        .O(\sample_y0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404040454)) 
    \sample_y0[2]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_95),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\input_height_reg_n_0_[0] ),
        .I4(\input_height_reg_n_0_[1] ),
        .I5(\input_height_reg_n_0_[2] ),
        .O(\sample_y0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_y0[3]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_94),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\sample_y1[3]_i_3_n_0 ),
        .O(\sample_y0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_y0[4]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_93),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\sample_y1[4]_i_3_n_0 ),
        .O(\sample_y0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_y0[5]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_92),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\sample_y1[5]_i_3_n_0 ),
        .O(\sample_y0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \sample_y0[6]_i_1 
       (.I0(coordinate_y02_n_91),
        .I1(coordinate_y01_carry__2_n_0),
        .I2(\sample_y1[6]_i_2_n_0 ),
        .I3(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .O(coordinate_y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \sample_y0[7]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_90),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\sample_y1[7]_i_4_n_0 ),
        .O(\sample_y0[7]_i_1_n_0 ));
  FDCE \sample_y0_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_y0[0]),
        .Q(sample_y0[0]));
  FDCE \sample_y0_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[1]_i_1_n_0 ),
        .Q(sample_y0[1]));
  FDCE \sample_y0_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[2]_i_1_n_0 ),
        .Q(sample_y0[2]));
  FDCE \sample_y0_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[3]_i_1_n_0 ),
        .Q(sample_y0[3]));
  FDCE \sample_y0_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[4]_i_1_n_0 ),
        .Q(sample_y0[4]));
  FDCE \sample_y0_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[5]_i_1_n_0 ),
        .Q(sample_y0[5]));
  FDCE \sample_y0_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_y0[6]),
        .Q(sample_y0[6]));
  FDCE \sample_y0_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y0[7]_i_1_n_0 ),
        .Q(sample_y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \sample_y1[0]_i_1 
       (.I0(\sample_y1[0]_i_2_n_0 ),
        .I1(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I2(coordinate_y02_n_97),
        .I3(coordinate_y01_carry__2_n_0),
        .I4(\input_height_reg_n_0_[0] ),
        .O(coordinate_y1[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_y1[0]_i_2 
       (.I0(\input_height_reg_n_0_[6] ),
        .I1(\input_height_reg_n_0_[7] ),
        .I2(\input_height_reg_n_0_[8] ),
        .I3(\sample_y1[0]_i_3_n_0 ),
        .I4(\input_height_reg_n_0_[1] ),
        .O(\sample_y1[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_y1[0]_i_3 
       (.I0(\input_height_reg_n_0_[4] ),
        .I1(\input_height_reg_n_0_[3] ),
        .I2(\input_height_reg_n_0_[5] ),
        .I3(\input_height_reg_n_0_[2] ),
        .O(\sample_y1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5514001400145514)) 
    \sample_y1[1]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_96),
        .I2(coordinate_y02_n_97),
        .I3(coordinate_y01_carry__2_n_0),
        .I4(\input_height_reg_n_0_[1] ),
        .I5(\input_height_reg_n_0_[0] ),
        .O(\sample_y1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000154055551540)) 
    \sample_y1[2]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(coordinate_y02_n_97),
        .I2(coordinate_y02_n_96),
        .I3(coordinate_y02_n_95),
        .I4(coordinate_y01_carry__2_n_0),
        .I5(\sample_y1[2]_i_2_n_0 ),
        .O(\sample_y1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sample_y1[2]_i_2 
       (.I0(\input_height_reg_n_0_[2] ),
        .I1(\input_height_reg_n_0_[1] ),
        .I2(\input_height_reg_n_0_[0] ),
        .O(\sample_y1[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_y1[3]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(\sample_y1[3]_i_2_n_0 ),
        .I2(coordinate_y02_n_94),
        .I3(coordinate_y01_carry__2_n_0),
        .I4(\sample_y1[3]_i_3_n_0 ),
        .O(\sample_y1[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_y1[3]_i_2 
       (.I0(coordinate_y02_n_96),
        .I1(coordinate_y02_n_97),
        .I2(coordinate_y02_n_95),
        .O(\sample_y1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \sample_y1[3]_i_3 
       (.I0(\input_height_reg_n_0_[3] ),
        .I1(\input_height_reg_n_0_[0] ),
        .I2(\input_height_reg_n_0_[1] ),
        .I3(\input_height_reg_n_0_[2] ),
        .O(\sample_y1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_y1[4]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(\sample_y1[4]_i_2_n_0 ),
        .I2(coordinate_y02_n_93),
        .I3(coordinate_y01_carry__2_n_0),
        .I4(\sample_y1[4]_i_3_n_0 ),
        .O(\sample_y1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sample_y1[4]_i_2 
       (.I0(coordinate_y02_n_95),
        .I1(coordinate_y02_n_97),
        .I2(coordinate_y02_n_96),
        .I3(coordinate_y02_n_94),
        .O(\sample_y1[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \sample_y1[4]_i_3 
       (.I0(\input_height_reg_n_0_[4] ),
        .I1(\input_height_reg_n_0_[2] ),
        .I2(\input_height_reg_n_0_[1] ),
        .I3(\input_height_reg_n_0_[0] ),
        .I4(\input_height_reg_n_0_[3] ),
        .O(\sample_y1[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00415541)) 
    \sample_y1[5]_i_1 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(\sample_y1[5]_i_2_n_0 ),
        .I2(coordinate_y02_n_92),
        .I3(coordinate_y01_carry__2_n_0),
        .I4(\sample_y1[5]_i_3_n_0 ),
        .O(\sample_y1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sample_y1[5]_i_2 
       (.I0(coordinate_y02_n_94),
        .I1(coordinate_y02_n_96),
        .I2(coordinate_y02_n_97),
        .I3(coordinate_y02_n_95),
        .I4(coordinate_y02_n_93),
        .O(\sample_y1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sample_y1[5]_i_3 
       (.I0(\input_height_reg_n_0_[5] ),
        .I1(\input_height_reg_n_0_[3] ),
        .I2(\input_height_reg_n_0_[4] ),
        .I3(\input_height_reg_n_0_[2] ),
        .I4(\input_height_reg_n_0_[1] ),
        .I5(\input_height_reg_n_0_[0] ),
        .O(\sample_y1[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0000F606)) 
    \sample_y1[6]_i_1 
       (.I0(\sample_y1[7]_i_3_n_0 ),
        .I1(coordinate_y02_n_91),
        .I2(coordinate_y01_carry__2_n_0),
        .I3(\sample_y1[6]_i_2_n_0 ),
        .I4(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .O(coordinate_y1[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \sample_y1[6]_i_2 
       (.I0(\input_height_reg_n_0_[6] ),
        .I1(i__carry_i_5_n_0),
        .O(\sample_y1[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \sample_y1[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(sample_fraction_y));
  LUT6 #(
    .INIT(64'h0000154055551540)) 
    \sample_y1[7]_i_2 
       (.I0(\coordinate_y01_inferred__0/i__carry__2_n_0 ),
        .I1(\sample_y1[7]_i_3_n_0 ),
        .I2(coordinate_y02_n_91),
        .I3(coordinate_y02_n_90),
        .I4(coordinate_y01_carry__2_n_0),
        .I5(\sample_y1[7]_i_4_n_0 ),
        .O(\sample_y1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sample_y1[7]_i_3 
       (.I0(coordinate_y02_n_92),
        .I1(coordinate_y02_n_93),
        .I2(coordinate_y02_n_95),
        .I3(coordinate_y02_n_97),
        .I4(coordinate_y02_n_96),
        .I5(coordinate_y02_n_94),
        .O(\sample_y1[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \sample_y1[7]_i_4 
       (.I0(\input_height_reg_n_0_[7] ),
        .I1(i__carry_i_5_n_0),
        .I2(\input_height_reg_n_0_[6] ),
        .O(\sample_y1[7]_i_4_n_0 ));
  FDCE \sample_y1_reg[0] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_y1[0]),
        .Q(sample_y1[0]));
  FDCE \sample_y1_reg[1] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[1]_i_1_n_0 ),
        .Q(sample_y1[1]));
  FDCE \sample_y1_reg[2] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[2]_i_1_n_0 ),
        .Q(sample_y1[2]));
  FDCE \sample_y1_reg[3] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[3]_i_1_n_0 ),
        .Q(sample_y1[3]));
  FDCE \sample_y1_reg[4] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[4]_i_1_n_0 ),
        .Q(sample_y1[4]));
  FDCE \sample_y1_reg[5] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[5]_i_1_n_0 ),
        .Q(sample_y1[5]));
  FDCE \sample_y1_reg[6] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(coordinate_y1[6]),
        .Q(sample_y1[6]));
  FDCE \sample_y1_reg[7] 
       (.C(aclk),
        .CE(sample_fraction_y),
        .CLR(aresetn_0),
        .D(\sample_y1[7]_i_2_n_0 ),
        .Q(sample_y1[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    size_error_i_10
       (.I0(\input_y_reg[8]_1 [5]),
        .I1(\input_y_reg[8]_1 [4]),
        .I2(\input_y_reg[8]_1 [2]),
        .I3(\input_x_reg[8]_0 [6]),
        .O(size_error_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    size_error_i_11
       (.I0(\input_y_reg[8]_1 [6]),
        .I1(\input_x_reg[8]_0 [7]),
        .I2(\input_y_reg[8]_1 [8]),
        .I3(\input_x_reg[8]_0 [2]),
        .O(size_error_i_11_n_0));
  LUT6 #(
    .INIT(64'h66F666F6FF6F66F6)) 
    size_error_i_2
       (.I0(CO),
        .I1(input_final0),
        .I2(size_error_i_3_n_0),
        .I3(size_error_i_4_n_0),
        .I4(size_error_i_5_n_0),
        .I5(size_error_i_6_n_0),
        .O(\input_x_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    size_error_i_3
       (.I0(input_x[1]),
        .I1(input_x[0]),
        .I2(\input_y_reg_n_0_[5] ),
        .I3(\input_y_reg_n_0_[6] ),
        .I4(\input_y_reg_n_0_[0] ),
        .I5(\input_y_reg_n_0_[1] ),
        .O(size_error_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    size_error_i_4
       (.I0(size_error_i_7_n_0),
        .I1(size_error_i_8_n_0),
        .I2(size_error_i_9_n_0),
        .I3(input_x[7]),
        .I4(\input_y_reg_n_0_[3] ),
        .I5(input_x[2]),
        .O(size_error_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    size_error_i_5
       (.I0(\input_x_reg[8]_0 [1]),
        .I1(\input_x_reg[8]_0 [0]),
        .I2(\input_x_reg[8]_0 [5]),
        .I3(\input_y_reg[8]_1 [3]),
        .I4(\input_y_reg[8]_1 [0]),
        .I5(\input_y_reg[8]_1 [1]),
        .O(size_error_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    size_error_i_6
       (.I0(\input_x_reg[8]_0 [8]),
        .I1(\input_y_reg[8]_1 [7]),
        .I2(\input_x_reg[8]_0 [3]),
        .I3(\input_x_reg[8]_0 [4]),
        .I4(size_error_i_10_n_0),
        .I5(size_error_i_11_n_0),
        .O(size_error_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    size_error_i_7
       (.I0(\input_y_reg_n_0_[2] ),
        .I1(input_x[4]),
        .I2(\input_y_reg_n_0_[7] ),
        .I3(\input_y_reg_n_0_[4] ),
        .O(size_error_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    size_error_i_8
       (.I0(input_x[10]),
        .I1(input_x[8]),
        .I2(\input_y_reg_n_0_[9] ),
        .I3(input_x[6]),
        .O(size_error_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    size_error_i_9
       (.I0(input_x[9]),
        .I1(input_x[3]),
        .I2(\input_y_reg_n_0_[8] ),
        .I3(input_x[5]),
        .O(size_error_i_9_n_0));
  FDCE size_error_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(size_error_reg_0),
        .Q(resize_size_error));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(Q[0]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \state[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\state[1]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \state[1]_i_2 
       (.I0(\output_y[6]_i_3_n_0 ),
        .I1(\output_y_reg_n_0_[6] ),
        .I2(\output_x_reg_n_0_[6] ),
        .I3(\output_x[6]_i_4_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \state[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCFAFCFA)) 
    \state[3]_i_1 
       (.I0(\control[29] ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(done_reg_0),
        .I5(\state[3]_i_5_n_0 ),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \state[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\state[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \state[3]_i_3 
       (.I0(dma_tvalid_0),
        .I1(\input_final0_inferred__0/i__carry_n_0 ),
        .I2(input_final0),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \state[3]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\state[3]_i_5_n_0 ));
  FDCE \state_reg[0] 
       (.C(aclk),
        .CE(state),
        .CLR(aresetn_0),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \state_reg[1] 
       (.C(aclk),
        .CE(state),
        .CLR(aresetn_0),
        .D(\state[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \state_reg[2] 
       (.C(aclk),
        .CE(state),
        .CLR(aresetn_0),
        .D(\state[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \state_reg[3] 
       (.C(aclk),
        .CE(state),
        .CLR(aresetn_0),
        .D(\state[3]_i_2_n_0 ),
        .Q(Q[3]));
  CARRY4 top_delta_carry
       (.CI(1'b0),
        .CO({top_delta_carry_n_0,top_delta_carry_n_1,top_delta_carry_n_2,top_delta_carry_n_3}),
        .CYINIT(1'b1),
        .DI(p10[3:0]),
        .O(A[3:0]),
        .S({top_delta_carry_i_1_n_0,top_delta_carry_i_2_n_0,top_delta_carry_i_3_n_0,top_delta_carry_i_4_n_0}));
  CARRY4 top_delta_carry__0
       (.CI(top_delta_carry_n_0),
        .CO({top_delta_carry__0_n_0,top_delta_carry__0_n_1,top_delta_carry__0_n_2,top_delta_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p10[7:4]),
        .O(A[7:4]),
        .S({top_delta_carry__0_i_1_n_0,top_delta_carry__0_i_2_n_0,top_delta_carry__0_i_3_n_0,top_delta_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry__0_i_1
       (.I0(p10[7]),
        .I1(p00[7]),
        .O(top_delta_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry__0_i_2
       (.I0(p10[6]),
        .I1(p00[6]),
        .O(top_delta_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry__0_i_3
       (.I0(p10[5]),
        .I1(p00[5]),
        .O(top_delta_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry__0_i_4
       (.I0(p10[4]),
        .I1(p00[4]),
        .O(top_delta_carry__0_i_4_n_0));
  CARRY4 top_delta_carry__1
       (.CI(top_delta_carry__0_n_0),
        .CO(NLW_top_delta_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_top_delta_carry__1_O_UNCONNECTED[3:1],A[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry_i_1
       (.I0(p10[3]),
        .I1(p00[3]),
        .O(top_delta_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry_i_2
       (.I0(p10[2]),
        .I1(p00[2]),
        .O(top_delta_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry_i_3
       (.I0(p10[1]),
        .I1(p00[1]),
        .O(top_delta_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    top_delta_carry_i_4
       (.I0(p10[0]),
        .I1(p00[0]),
        .O(top_delta_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    top_mix_next
       (.A({A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_top_mix_next_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sample_fraction_x}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_top_mix_next_BCOUT_UNCONNECTED[17:0]),
        .C({p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00[7],p00,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_top_mix_next_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_top_mix_next_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(top_mix_next_i_1_n_0),
        .CLK(aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_top_mix_next_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_top_mix_next_OVERFLOW_UNCONNECTED),
        .P({NLW_top_mix_next_P_UNCONNECTED[47:16],top_mix_next__0}),
        .PATTERNBDETECT(NLW_top_mix_next_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_top_mix_next_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_top_mix_next_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_top_mix_next_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h4000)) 
    top_mix_next_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(top_mix_next_i_1_n_0));
  CARRY4 vertical_delta_carry
       (.CI(1'b0),
        .CO({vertical_delta_carry_n_0,vertical_delta_carry_n_1,vertical_delta_carry_n_2,vertical_delta_carry_n_3}),
        .CYINIT(1'b1),
        .DI(bottom_mix[3:0]),
        .O({vertical_delta_carry_n_4,vertical_delta_carry_n_5,vertical_delta_carry_n_6,vertical_delta_carry_n_7}),
        .S({vertical_delta_carry_i_5_n_0,vertical_delta_carry_i_6_n_0,vertical_delta_carry_i_7_n_0,vertical_delta_carry_i_8_n_0}));
  CARRY4 vertical_delta_carry__0
       (.CI(vertical_delta_carry_n_0),
        .CO({vertical_delta_carry__0_n_0,vertical_delta_carry__0_n_1,vertical_delta_carry__0_n_2,vertical_delta_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(bottom_mix[7:4]),
        .O({vertical_delta_carry__0_n_4,vertical_delta_carry__0_n_5,vertical_delta_carry__0_n_6,vertical_delta_carry__0_n_7}),
        .S({vertical_delta_carry__0_i_5_n_0,vertical_delta_carry__0_i_6_n_0,vertical_delta_carry__0_i_7_n_0,vertical_delta_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__0_i_1
       (.I0(bottom_mix_next__0[7]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[7]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__0_i_2
       (.I0(bottom_mix_next__0[6]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[6]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__0_i_3
       (.I0(bottom_mix_next__0[5]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[5]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__0_i_4
       (.I0(bottom_mix_next__0[4]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[4]));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__0_i_5
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[7]),
        .I2(OPMODE),
        .I3(top_mix_next__0[7]),
        .O(vertical_delta_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__0_i_6
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[6]),
        .I2(OPMODE),
        .I3(top_mix_next__0[6]),
        .O(vertical_delta_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__0_i_7
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[5]),
        .I2(OPMODE),
        .I3(top_mix_next__0[5]),
        .O(vertical_delta_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__0_i_8
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[4]),
        .I2(OPMODE),
        .I3(top_mix_next__0[4]),
        .O(vertical_delta_carry__0_i_8_n_0));
  CARRY4 vertical_delta_carry__1
       (.CI(vertical_delta_carry__0_n_0),
        .CO({vertical_delta_carry__1_n_0,vertical_delta_carry__1_n_1,vertical_delta_carry__1_n_2,vertical_delta_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(bottom_mix[11:8]),
        .O({vertical_delta_carry__1_n_4,vertical_delta_carry__1_n_5,vertical_delta_carry__1_n_6,vertical_delta_carry__1_n_7}),
        .S({vertical_delta_carry__1_i_5_n_0,vertical_delta_carry__1_i_6_n_0,vertical_delta_carry__1_i_7_n_0,vertical_delta_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__1_i_1
       (.I0(bottom_mix_next__0[11]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[11]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__1_i_2
       (.I0(bottom_mix_next__0[10]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[10]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__1_i_3
       (.I0(bottom_mix_next__0[9]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[9]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__1_i_4
       (.I0(bottom_mix_next__0[8]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[8]));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__1_i_5
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[11]),
        .I2(OPMODE),
        .I3(top_mix_next__0[11]),
        .O(vertical_delta_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__1_i_6
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[10]),
        .I2(OPMODE),
        .I3(top_mix_next__0[10]),
        .O(vertical_delta_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__1_i_7
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[9]),
        .I2(OPMODE),
        .I3(top_mix_next__0[9]),
        .O(vertical_delta_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__1_i_8
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[8]),
        .I2(OPMODE),
        .I3(top_mix_next__0[8]),
        .O(vertical_delta_carry__1_i_8_n_0));
  CARRY4 vertical_delta_carry__2
       (.CI(vertical_delta_carry__1_n_0),
        .CO({vertical_delta_carry__2_n_0,vertical_delta_carry__2_n_1,vertical_delta_carry__2_n_2,vertical_delta_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(bottom_mix[15:12]),
        .O({vertical_delta_carry__2_n_4,vertical_delta_carry__2_n_5,vertical_delta_carry__2_n_6,vertical_delta_carry__2_n_7}),
        .S({vertical_delta_carry__2_i_5_n_0,vertical_delta_carry__2_i_6_n_0,vertical_delta_carry__2_i_7_n_0,vertical_delta_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__2_i_1
       (.I0(bottom_mix_next__0[15]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[15]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__2_i_2
       (.I0(bottom_mix_next__0[14]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[14]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__2_i_3
       (.I0(bottom_mix_next__0[13]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[13]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry__2_i_4
       (.I0(bottom_mix_next__0[12]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[12]));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__2_i_5
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[15]),
        .I2(OPMODE),
        .I3(top_mix_next__0[15]),
        .O(vertical_delta_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__2_i_6
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[14]),
        .I2(OPMODE),
        .I3(top_mix_next__0[14]),
        .O(vertical_delta_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__2_i_7
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[13]),
        .I2(OPMODE),
        .I3(top_mix_next__0[13]),
        .O(vertical_delta_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry__2_i_8
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[12]),
        .I2(OPMODE),
        .I3(top_mix_next__0[12]),
        .O(vertical_delta_carry__2_i_8_n_0));
  CARRY4 vertical_delta_carry__3
       (.CI(vertical_delta_carry__2_n_0),
        .CO(NLW_vertical_delta_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_vertical_delta_carry__3_O_UNCONNECTED[3:1],vertical_delta_carry__3_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry_i_1
       (.I0(bottom_mix_next__0[3]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    vertical_delta_carry_i_10
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(vertical_delta_carry_i_9),
        .O(\state_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry_i_2
       (.I0(bottom_mix_next__0[2]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[2]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry_i_3
       (.I0(bottom_mix_next__0[1]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[1]));
  LUT2 #(
    .INIT(4'h8)) 
    vertical_delta_carry_i_4
       (.I0(bottom_mix_next__0[0]),
        .I1(vertical_delta_carry_i_9),
        .O(bottom_mix[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry_i_5
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[3]),
        .I2(OPMODE),
        .I3(top_mix_next__0[3]),
        .O(vertical_delta_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry_i_6
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[2]),
        .I2(OPMODE),
        .I3(top_mix_next__0[2]),
        .O(vertical_delta_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry_i_7
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[1]),
        .I2(OPMODE),
        .I3(top_mix_next__0[1]),
        .O(vertical_delta_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    vertical_delta_carry_i_8
       (.I0(vertical_delta_carry_i_9),
        .I1(bottom_mix_next__0[0]),
        .I2(OPMODE),
        .I3(top_mix_next__0[0]),
        .O(vertical_delta_carry_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    vertical_mix_next
       (.A({vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__3_n_7,vertical_delta_carry__2_n_4,vertical_delta_carry__2_n_5,vertical_delta_carry__2_n_6,vertical_delta_carry__2_n_7,vertical_delta_carry__1_n_4,vertical_delta_carry__1_n_5,vertical_delta_carry__1_n_6,vertical_delta_carry__1_n_7,vertical_delta_carry__0_n_4,vertical_delta_carry__0_n_5,vertical_delta_carry__0_n_6,vertical_delta_carry__0_n_7,vertical_delta_carry_n_4,vertical_delta_carry_n_5,vertical_delta_carry_n_6,vertical_delta_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_vertical_mix_next_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\sample_fraction_y_reg_n_0_[7] ,\sample_fraction_y_reg_n_0_[6] ,\sample_fraction_y_reg_n_0_[5] ,\sample_fraction_y_reg_n_0_[4] ,\sample_fraction_y_reg_n_0_[3] ,\sample_fraction_y_reg_n_0_[2] ,\sample_fraction_y_reg_n_0_[1] ,\sample_fraction_y_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_vertical_mix_next_BCOUT_UNCONNECTED[17:0]),
        .C({top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0[15],top_mix_next__0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_vertical_mix_next_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_vertical_mix_next_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(vertical_mix_next_i_1_n_0),
        .CLK(aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_vertical_mix_next_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,OPMODE,OPMODE,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_vertical_mix_next_OVERFLOW_UNCONNECTED),
        .P({NLW_vertical_mix_next_P_UNCONNECTED[47:24],vertical_mix_next__0,vertical_mix_next_n_92,vertical_mix_next_n_93,vertical_mix_next_n_94,vertical_mix_next_n_95,vertical_mix_next_n_96,vertical_mix_next_n_97,vertical_mix_next_n_98,vertical_mix_next_n_99,vertical_mix_next_n_100,vertical_mix_next_n_101,vertical_mix_next_n_102,vertical_mix_next_n_103,vertical_mix_next_n_104,vertical_mix_next_n_105}),
        .PATTERNBDETECT(NLW_vertical_mix_next_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_vertical_mix_next_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_vertical_mix_next_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_vertical_mix_next_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h4000)) 
    vertical_mix_next_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(vertical_mix_next_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    vertical_mix_next_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(OPMODE),
        .O(\state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \win_x[1]_i_1 
       (.I0(resize_user),
        .I1(\x_count_reg[5]_0 [1]),
        .O(m_tuser_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \win_y[1]_i_1 
       (.I0(resize_user),
        .I1(\win_y_reg[1] [1]),
        .O(m_tuser_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \x_count[0]_i_1 
       (.I0(\x_count_reg[5]_0 [0]),
        .I1(resize_user),
        .I2(resize_last),
        .O(m_tlast_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \x_count[1]_i_1 
       (.I0(resize_last),
        .I1(resize_user),
        .I2(\x_count_reg[5]_0 [0]),
        .I3(\x_count_reg[5]_0 [1]),
        .O(m_tlast_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \x_count[4]_i_2 
       (.I0(resize_user),
        .I1(\x_count_reg[5]_0 [0]),
        .O(m_tuser_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h1141)) 
    \x_count[5]_i_1 
       (.I0(resize_last),
        .I1(\x_count_reg[5] ),
        .I2(\x_count_reg[5]_0 [2]),
        .I3(resize_user),
        .O(m_tlast_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \y_count[0]_i_1 
       (.I0(resize_last),
        .I1(\win_y_reg[1] [0]),
        .I2(resize_user),
        .O(m_tlast_reg_1));
endmodule

(* ORIG_REF_NAME = "window3x3" *) 
module facebox_system_wp4_board_bridge_0_0_window3x3
   (win_last,
    E,
    win_valid,
    \y_count_reg[1]_0 ,
    \x_count_reg[5]_0 ,
    \x_count_reg[3]_0 ,
    aresetn_0,
    aresetn_1,
    S,
    DI,
    \win_p_reg[1][6]_0 ,
    \win_p_reg[1][6]_1 ,
    \win_p_reg[2][6]_0 ,
    \win_p_reg[2][6]_1 ,
    \win_p_reg[3][6]_0 ,
    \win_p_reg[3][6]_1 ,
    \win_p_reg[4][6]_0 ,
    \win_p_reg[4][6]_1 ,
    \win_p_reg[5][6]_0 ,
    \win_p_reg[5][6]_1 ,
    \win_p_reg[6][6]_0 ,
    \win_p_reg[6][6]_1 ,
    \win_p_reg[7][6]_0 ,
    \win_p_reg[7][6]_1 ,
    \win_x_reg[6]_0 ,
    \win_y_reg[6]_0 ,
    aclk,
    win_valid_reg_0,
    win_valid_reg_1,
    Q,
    p_0_in7_out__0,
    win_last_reg_0,
    resize_user,
    resize_last,
    \x_count_reg[4]_0 ,
    aresetn,
    \y_count_reg[6]_0 ,
    \y_count_reg[0]_0 ,
    \x_count_reg[5]_1 ,
    \win_x_reg[1]_0 ,
    D);
  output win_last;
  output [0:0]E;
  output win_valid;
  output [1:0]\y_count_reg[1]_0 ;
  output [2:0]\x_count_reg[5]_0 ;
  output \x_count_reg[3]_0 ;
  output aresetn_0;
  output aresetn_1;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\win_p_reg[1][6]_0 ;
  output [3:0]\win_p_reg[1][6]_1 ;
  output [3:0]\win_p_reg[2][6]_0 ;
  output [3:0]\win_p_reg[2][6]_1 ;
  output [3:0]\win_p_reg[3][6]_0 ;
  output [3:0]\win_p_reg[3][6]_1 ;
  output [3:0]\win_p_reg[4][6]_0 ;
  output [3:0]\win_p_reg[4][6]_1 ;
  output [3:0]\win_p_reg[5][6]_0 ;
  output [3:0]\win_p_reg[5][6]_1 ;
  output [3:0]\win_p_reg[6][6]_0 ;
  output [3:0]\win_p_reg[6][6]_1 ;
  output [3:0]\win_p_reg[7][6]_0 ;
  output [3:0]\win_p_reg[7][6]_1 ;
  output [6:0]\win_x_reg[6]_0 ;
  output [6:0]\win_y_reg[6]_0 ;
  input aclk;
  input win_valid_reg_0;
  input win_valid_reg_1;
  input [7:0]Q;
  input p_0_in7_out__0;
  input win_last_reg_0;
  input resize_user;
  input resize_last;
  input \x_count_reg[4]_0 ;
  input aresetn;
  input [0:0]\y_count_reg[6]_0 ;
  input [0:0]\y_count_reg[0]_0 ;
  input [2:0]\x_count_reg[5]_1 ;
  input [0:0]\win_x_reg[1]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire aresetn_1;
  wire [7:0]bot_m1;
  wire [7:0]bot_m2;
  wire [6:0]cur_x;
  wire [0:0]cur_y;
  wire [7:0]mid_m1;
  wire [7:0]mid_m2;
  wire [6:1]p_0_in;
  wire p_0_in7_out__0;
  wire prev_row_reg_0_127_0_0_n_0;
  wire prev_row_reg_0_127_1_1_n_0;
  wire prev_row_reg_0_127_2_2_n_0;
  wire prev_row_reg_0_127_3_3_n_0;
  wire prev_row_reg_0_127_4_4_n_0;
  wire prev_row_reg_0_127_5_5_n_0;
  wire prev_row_reg_0_127_6_6_n_0;
  wire prev_row_reg_0_127_7_7_n_0;
  wire resize_last;
  wire resize_user;
  wire [7:0]top_m1;
  wire [7:0]top_m10;
  wire [7:0]top_m2;
  wire win_last;
  wire win_last0;
  wire win_last_i_2_n_0;
  wire win_last_reg_0;
  wire [7:0]\win_p_reg[0]_3 ;
  wire [3:0]\win_p_reg[1][6]_0 ;
  wire [3:0]\win_p_reg[1][6]_1 ;
  wire [7:0]\win_p_reg[1]_4 ;
  wire [3:0]\win_p_reg[2][6]_0 ;
  wire [3:0]\win_p_reg[2][6]_1 ;
  wire [7:0]\win_p_reg[2]_2 ;
  wire [3:0]\win_p_reg[3][6]_0 ;
  wire [3:0]\win_p_reg[3][6]_1 ;
  wire [7:0]\win_p_reg[3]_0 ;
  wire [3:0]\win_p_reg[4][6]_0 ;
  wire [3:0]\win_p_reg[4][6]_1 ;
  wire [7:0]\win_p_reg[4]_5 ;
  wire [3:0]\win_p_reg[5][6]_0 ;
  wire [3:0]\win_p_reg[5][6]_1 ;
  wire [7:0]\win_p_reg[5]_6 ;
  wire [3:0]\win_p_reg[6][6]_0 ;
  wire [3:0]\win_p_reg[6][6]_1 ;
  wire [7:0]\win_p_reg[6]_7 ;
  wire [3:0]\win_p_reg[7][6]_0 ;
  wire [3:0]\win_p_reg[7][6]_1 ;
  wire [7:0]\win_p_reg[7]_8 ;
  wire [7:0]\win_p_reg[8]_1 ;
  wire win_valid;
  wire win_valid_reg_0;
  wire win_valid_reg_1;
  wire [5:4]win_x0;
  wire \win_x[2]_i_1_n_0 ;
  wire \win_x[3]_i_1_n_0 ;
  wire \win_x[6]_i_2_n_0 ;
  wire \win_x[6]_i_3_n_0 ;
  wire \win_x[6]_i_4_n_0 ;
  wire [0:0]\win_x_reg[1]_0 ;
  wire [6:0]\win_x_reg[6]_0 ;
  wire [6:3]win_y0;
  wire \win_y[2]_i_1_n_0 ;
  wire \win_y[6]_i_2_n_0 ;
  wire [6:0]\win_y_reg[6]_0 ;
  wire [6:2]x_count;
  wire \x_count[2]_i_1_n_0 ;
  wire \x_count[3]_i_1_n_0 ;
  wire \x_count[4]_i_1_n_0 ;
  wire \x_count[6]_i_1_n_0 ;
  wire \x_count_reg[3]_0 ;
  wire \x_count_reg[4]_0 ;
  wire [2:0]\x_count_reg[5]_0 ;
  wire [2:0]\x_count_reg[5]_1 ;
  wire \y_count[4]_i_2_n_0 ;
  wire \y_count[6]_i_3_n_0 ;
  wire [0:0]\y_count_reg[0]_0 ;
  wire [1:0]\y_count_reg[1]_0 ;
  wire [0:0]\y_count_reg[6]_0 ;
  wire \y_count_reg_n_0_[2] ;
  wire \y_count_reg_n_0_[3] ;
  wire \y_count_reg_n_0_[4] ;
  wire \y_count_reg_n_0_[5] ;
  wire \y_count_reg_n_0_[6] ;

  FDCE \bot_m1_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(Q[0]),
        .Q(bot_m1[0]));
  FDCE \bot_m1_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(Q[1]),
        .Q(bot_m1[1]));
  FDCE \bot_m1_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[2]),
        .Q(bot_m1[2]));
  FDCE \bot_m1_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[3]),
        .Q(bot_m1[3]));
  FDCE \bot_m1_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[4]),
        .Q(bot_m1[4]));
  FDCE \bot_m1_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[5]),
        .Q(bot_m1[5]));
  FDCE \bot_m1_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[6]),
        .Q(bot_m1[6]));
  FDCE \bot_m1_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(Q[7]),
        .Q(bot_m1[7]));
  FDCE \bot_m2_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(bot_m1[0]),
        .Q(bot_m2[0]));
  FDCE \bot_m2_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(bot_m1[1]),
        .Q(bot_m2[1]));
  FDCE \bot_m2_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[2]),
        .Q(bot_m2[2]));
  FDCE \bot_m2_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[3]),
        .Q(bot_m2[3]));
  FDCE \bot_m2_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[4]),
        .Q(bot_m2[4]));
  FDCE \bot_m2_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[5]),
        .Q(bot_m2[5]));
  FDCE \bot_m2_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[6]),
        .Q(bot_m2[6]));
  FDCE \bot_m2_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(bot_m1[7]),
        .Q(bot_m2[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(\win_p_reg[1]_4 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[1]_4 [7]),
        .O(\win_p_reg[1][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(\win_p_reg[2]_2 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[2]_2 [7]),
        .O(\win_p_reg[2][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__3
       (.I0(\win_p_reg[3]_0 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[3]_0 [7]),
        .O(\win_p_reg[3][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__4
       (.I0(\win_p_reg[4]_5 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[4]_5 [7]),
        .O(\win_p_reg[4][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__5
       (.I0(\win_p_reg[5]_6 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[5]_6 [7]),
        .O(\win_p_reg[5][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__6
       (.I0(\win_p_reg[6]_7 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[6]_7 [7]),
        .O(\win_p_reg[6][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__7
       (.I0(\win_p_reg[7]_8 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[7]_8 [7]),
        .O(\win_p_reg[7][6]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(\win_p_reg[1]_4 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[1]_4 [5]),
        .O(\win_p_reg[1][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__3
       (.I0(\win_p_reg[2]_2 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[2]_2 [5]),
        .O(\win_p_reg[2][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__4
       (.I0(\win_p_reg[3]_0 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[3]_0 [5]),
        .O(\win_p_reg[3][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__5
       (.I0(\win_p_reg[4]_5 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[4]_5 [5]),
        .O(\win_p_reg[4][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__6
       (.I0(\win_p_reg[5]_6 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[5]_6 [5]),
        .O(\win_p_reg[5][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__7
       (.I0(\win_p_reg[6]_7 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[6]_7 [5]),
        .O(\win_p_reg[6][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__8
       (.I0(\win_p_reg[7]_8 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[7]_8 [5]),
        .O(\win_p_reg[7][6]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(\win_p_reg[1]_4 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[1]_4 [3]),
        .O(\win_p_reg[1][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__3
       (.I0(\win_p_reg[2]_2 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[2]_2 [3]),
        .O(\win_p_reg[2][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__4
       (.I0(\win_p_reg[3]_0 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[3]_0 [3]),
        .O(\win_p_reg[3][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__5
       (.I0(\win_p_reg[4]_5 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[4]_5 [3]),
        .O(\win_p_reg[4][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__6
       (.I0(\win_p_reg[5]_6 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[5]_6 [3]),
        .O(\win_p_reg[5][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__7
       (.I0(\win_p_reg[6]_7 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[6]_7 [3]),
        .O(\win_p_reg[6][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__8
       (.I0(\win_p_reg[7]_8 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[7]_8 [3]),
        .O(\win_p_reg[7][6]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__2
       (.I0(\win_p_reg[1]_4 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[1]_4 [1]),
        .O(\win_p_reg[1][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__3
       (.I0(\win_p_reg[2]_2 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[2]_2 [1]),
        .O(\win_p_reg[2][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__4
       (.I0(\win_p_reg[3]_0 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[3]_0 [1]),
        .O(\win_p_reg[3][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__5
       (.I0(\win_p_reg[4]_5 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[4]_5 [1]),
        .O(\win_p_reg[4][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__6
       (.I0(\win_p_reg[5]_6 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[5]_6 [1]),
        .O(\win_p_reg[5][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__7
       (.I0(\win_p_reg[6]_7 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[6]_7 [1]),
        .O(\win_p_reg[6][6]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__8
       (.I0(\win_p_reg[7]_8 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[7]_8 [1]),
        .O(\win_p_reg[7][6]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\win_p_reg[1]_4 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[1]_4 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[1][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(\win_p_reg[2]_2 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[2]_2 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[2][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(\win_p_reg[3]_0 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[3]_0 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[3][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__3
       (.I0(\win_p_reg[4]_5 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[4]_5 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[4][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__4
       (.I0(\win_p_reg[5]_6 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[5]_6 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[5][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__5
       (.I0(\win_p_reg[6]_7 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[6]_7 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[6][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__6
       (.I0(\win_p_reg[7]_8 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[7]_8 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(\win_p_reg[7][6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\win_p_reg[1]_4 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[1]_4 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[1][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(\win_p_reg[2]_2 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[2]_2 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[2][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(\win_p_reg[3]_0 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[3]_0 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[3][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__3
       (.I0(\win_p_reg[4]_5 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[4]_5 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[4][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__4
       (.I0(\win_p_reg[5]_6 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[5]_6 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[5][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__5
       (.I0(\win_p_reg[6]_7 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[6]_7 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[6][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__6
       (.I0(\win_p_reg[7]_8 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[7]_8 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(\win_p_reg[7][6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\win_p_reg[1]_4 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[1]_4 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[1][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\win_p_reg[2]_2 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[2]_2 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[2][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(\win_p_reg[3]_0 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[3]_0 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[3][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(\win_p_reg[4]_5 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[4]_5 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[4][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__3
       (.I0(\win_p_reg[5]_6 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[5]_6 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[5][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__4
       (.I0(\win_p_reg[6]_7 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[6]_7 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[6][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__5
       (.I0(\win_p_reg[7]_8 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[7]_8 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(\win_p_reg[7][6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\win_p_reg[1]_4 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[1]_4 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[1][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\win_p_reg[2]_2 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[2]_2 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[2][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(\win_p_reg[3]_0 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[3]_0 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[3][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(\win_p_reg[4]_5 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[4]_5 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[4][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__3
       (.I0(\win_p_reg[5]_6 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[5]_6 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[5][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__4
       (.I0(\win_p_reg[6]_7 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[6]_7 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[6][6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__5
       (.I0(\win_p_reg[7]_8 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[7]_8 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(\win_p_reg[7][6]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lbp_code0_carry_i_1
       (.I0(\win_p_reg[0]_3 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[8]_1 [7]),
        .I3(\win_p_reg[0]_3 [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lbp_code0_carry_i_2
       (.I0(\win_p_reg[0]_3 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[8]_1 [5]),
        .I3(\win_p_reg[0]_3 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lbp_code0_carry_i_3
       (.I0(\win_p_reg[0]_3 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[8]_1 [3]),
        .I3(\win_p_reg[0]_3 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    lbp_code0_carry_i_4
       (.I0(\win_p_reg[0]_3 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[8]_1 [1]),
        .I3(\win_p_reg[0]_3 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    lbp_code0_carry_i_5
       (.I0(\win_p_reg[0]_3 [6]),
        .I1(\win_p_reg[8]_1 [6]),
        .I2(\win_p_reg[0]_3 [7]),
        .I3(\win_p_reg[8]_1 [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    lbp_code0_carry_i_6
       (.I0(\win_p_reg[0]_3 [4]),
        .I1(\win_p_reg[8]_1 [4]),
        .I2(\win_p_reg[0]_3 [5]),
        .I3(\win_p_reg[8]_1 [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    lbp_code0_carry_i_7
       (.I0(\win_p_reg[0]_3 [2]),
        .I1(\win_p_reg[8]_1 [2]),
        .I2(\win_p_reg[0]_3 [3]),
        .I3(\win_p_reg[8]_1 [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    lbp_code0_carry_i_8
       (.I0(\win_p_reg[0]_3 [0]),
        .I1(\win_p_reg[8]_1 [0]),
        .I2(\win_p_reg[0]_3 [1]),
        .I3(\win_p_reg[8]_1 [1]),
        .O(S[0]));
  FDCE \mid_m1_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_0_0_n_0),
        .Q(mid_m1[0]));
  FDCE \mid_m1_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_1_1_n_0),
        .Q(mid_m1[1]));
  FDCE \mid_m1_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_2_2_n_0),
        .Q(mid_m1[2]));
  FDCE \mid_m1_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_3_3_n_0),
        .Q(mid_m1[3]));
  FDCE \mid_m1_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_4_4_n_0),
        .Q(mid_m1[4]));
  FDCE \mid_m1_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_5_5_n_0),
        .Q(mid_m1[5]));
  FDCE \mid_m1_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_6_6_n_0),
        .Q(mid_m1[6]));
  FDCE \mid_m1_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_7_7_n_0),
        .Q(mid_m1[7]));
  FDCE \mid_m2_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(mid_m1[0]),
        .Q(mid_m2[0]));
  FDCE \mid_m2_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(mid_m1[1]),
        .Q(mid_m2[1]));
  FDCE \mid_m2_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[2]),
        .Q(mid_m2[2]));
  FDCE \mid_m2_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[3]),
        .Q(mid_m2[3]));
  FDCE \mid_m2_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[4]),
        .Q(mid_m2[4]));
  FDCE \mid_m2_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[5]),
        .Q(mid_m2[5]));
  FDCE \mid_m2_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[6]),
        .Q(mid_m2[6]));
  FDCE \mid_m2_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(mid_m1[7]),
        .Q(mid_m2[7]));
  RAM128X1S prev2_row_reg_0_127_0_0
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_0_0_n_0),
        .O(top_m10[0]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_1_1
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_1_1_n_0),
        .O(top_m10[1]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_2_2
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_2_2_n_0),
        .O(top_m10[2]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_3_3
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_3_3_n_0),
        .O(top_m10[3]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_4_4
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_4_4_n_0),
        .O(top_m10[4]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_5_5
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_5_5_n_0),
        .O(top_m10[5]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_6_6
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_6_6_n_0),
        .O(top_m10[6]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev2_row_reg_0_127_7_7
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(prev_row_reg_0_127_7_7_n_0),
        .O(top_m10[7]),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_0_0
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[0]),
        .O(prev_row_reg_0_127_0_0_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_2
       (.I0(\x_count_reg[5]_0 [1]),
        .I1(resize_user),
        .O(cur_x[1]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_3
       (.I0(x_count[2]),
        .I1(resize_user),
        .O(cur_x[2]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_4
       (.I0(x_count[3]),
        .I1(resize_user),
        .O(cur_x[3]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_5
       (.I0(x_count[4]),
        .I1(resize_user),
        .O(cur_x[4]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_6
       (.I0(\x_count_reg[5]_0 [2]),
        .I1(resize_user),
        .O(cur_x[5]));
  LUT2 #(
    .INIT(4'h2)) 
    prev_row_reg_0_127_0_0_i_7
       (.I0(x_count[6]),
        .I1(resize_user),
        .O(cur_x[6]));
  RAM128X1S prev_row_reg_0_127_1_1
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[1]),
        .O(prev_row_reg_0_127_1_1_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_2_2
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[2]),
        .O(prev_row_reg_0_127_2_2_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_3_3
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[3]),
        .O(prev_row_reg_0_127_3_3_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_4_4
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[4]),
        .O(prev_row_reg_0_127_4_4_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_5_5
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[5]),
        .O(prev_row_reg_0_127_5_5_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_6_6
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[6]),
        .O(prev_row_reg_0_127_6_6_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  RAM128X1S prev_row_reg_0_127_7_7
       (.A0(cur_x[0]),
        .A1(cur_x[1]),
        .A2(cur_x[2]),
        .A3(cur_x[3]),
        .A4(cur_x[4]),
        .A5(cur_x[5]),
        .A6(cur_x[6]),
        .D(Q[7]),
        .O(prev_row_reg_0_127_7_7_n_0),
        .WCLK(aclk),
        .WE(p_0_in7_out__0));
  LUT1 #(
    .INIT(2'h1)) 
    protocol_error_sticky_i_2
       (.I0(aresetn),
        .O(aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_fraction_x[3]_i_2 
       (.I0(aresetn),
        .O(aresetn_1));
  FDCE \top_m1_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(top_m10[0]),
        .Q(top_m1[0]));
  FDCE \top_m1_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(top_m10[1]),
        .Q(top_m1[1]));
  FDCE \top_m1_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[2]),
        .Q(top_m1[2]));
  FDCE \top_m1_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[3]),
        .Q(top_m1[3]));
  FDCE \top_m1_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[4]),
        .Q(top_m1[4]));
  FDCE \top_m1_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[5]),
        .Q(top_m1[5]));
  FDCE \top_m1_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[6]),
        .Q(top_m1[6]));
  FDCE \top_m1_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m10[7]),
        .Q(top_m1[7]));
  FDCE \top_m2_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(top_m1[0]),
        .Q(top_m2[0]));
  FDCE \top_m2_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(top_m1[1]),
        .Q(top_m2[1]));
  FDCE \top_m2_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[2]),
        .Q(top_m2[2]));
  FDCE \top_m2_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[3]),
        .Q(top_m2[3]));
  FDCE \top_m2_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[4]),
        .Q(top_m2[4]));
  FDCE \top_m2_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[5]),
        .Q(top_m2[5]));
  FDCE \top_m2_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[6]),
        .Q(top_m2[6]));
  FDCE \top_m2_reg[7] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_1),
        .D(top_m1[7]),
        .Q(top_m2[7]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    win_last_i_1
       (.I0(win_last_i_2_n_0),
        .I1(x_count[6]),
        .I2(resize_user),
        .I3(\y_count_reg_n_0_[5] ),
        .I4(\y_count[6]_i_3_n_0 ),
        .I5(\y_count_reg_n_0_[6] ),
        .O(win_last0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    win_last_i_2
       (.I0(cur_x[5]),
        .I1(x_count[4]),
        .I2(cur_x[2]),
        .I3(\x_count_reg[4]_0 ),
        .I4(cur_x[1]),
        .I5(cur_x[3]),
        .O(win_last_i_2_n_0));
  FDCE win_last_reg
       (.C(aclk),
        .CE(E),
        .CLR(win_valid_reg_0),
        .D(win_last0),
        .Q(win_last));
  FDCE \win_p_reg[0][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m2[0]),
        .Q(\win_p_reg[0]_3 [0]));
  FDCE \win_p_reg[0][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m2[1]),
        .Q(\win_p_reg[0]_3 [1]));
  FDCE \win_p_reg[0][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[2]),
        .Q(\win_p_reg[0]_3 [2]));
  FDCE \win_p_reg[0][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[3]),
        .Q(\win_p_reg[0]_3 [3]));
  FDCE \win_p_reg[0][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[4]),
        .Q(\win_p_reg[0]_3 [4]));
  FDCE \win_p_reg[0][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[5]),
        .Q(\win_p_reg[0]_3 [5]));
  FDCE \win_p_reg[0][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[6]),
        .Q(\win_p_reg[0]_3 [6]));
  FDCE \win_p_reg[0][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m2[7]),
        .Q(\win_p_reg[0]_3 [7]));
  FDCE \win_p_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m1[0]),
        .Q(\win_p_reg[1]_4 [0]));
  FDCE \win_p_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m1[1]),
        .Q(\win_p_reg[1]_4 [1]));
  FDCE \win_p_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[2]),
        .Q(\win_p_reg[1]_4 [2]));
  FDCE \win_p_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[3]),
        .Q(\win_p_reg[1]_4 [3]));
  FDCE \win_p_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[4]),
        .Q(\win_p_reg[1]_4 [4]));
  FDCE \win_p_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[5]),
        .Q(\win_p_reg[1]_4 [5]));
  FDCE \win_p_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[6]),
        .Q(\win_p_reg[1]_4 [6]));
  FDCE \win_p_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m1[7]),
        .Q(\win_p_reg[1]_4 [7]));
  FDCE \win_p_reg[2][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m10[0]),
        .Q(\win_p_reg[2]_2 [0]));
  FDCE \win_p_reg[2][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m10[1]),
        .Q(\win_p_reg[2]_2 [1]));
  FDCE \win_p_reg[2][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m10[2]),
        .Q(\win_p_reg[2]_2 [2]));
  FDCE \win_p_reg[2][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(top_m10[3]),
        .Q(\win_p_reg[2]_2 [3]));
  FDCE \win_p_reg[2][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m10[4]),
        .Q(\win_p_reg[2]_2 [4]));
  FDCE \win_p_reg[2][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m10[5]),
        .Q(\win_p_reg[2]_2 [5]));
  FDCE \win_p_reg[2][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m10[6]),
        .Q(\win_p_reg[2]_2 [6]));
  FDCE \win_p_reg[2][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(top_m10[7]),
        .Q(\win_p_reg[2]_2 [7]));
  FDCE \win_p_reg[3][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_0_0_n_0),
        .Q(\win_p_reg[3]_0 [0]));
  FDCE \win_p_reg[3][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_1_1_n_0),
        .Q(\win_p_reg[3]_0 [1]));
  FDCE \win_p_reg[3][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_2_2_n_0),
        .Q(\win_p_reg[3]_0 [2]));
  FDCE \win_p_reg[3][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(prev_row_reg_0_127_3_3_n_0),
        .Q(\win_p_reg[3]_0 [3]));
  FDCE \win_p_reg[3][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_4_4_n_0),
        .Q(\win_p_reg[3]_0 [4]));
  FDCE \win_p_reg[3][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_5_5_n_0),
        .Q(\win_p_reg[3]_0 [5]));
  FDCE \win_p_reg[3][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_6_6_n_0),
        .Q(\win_p_reg[3]_0 [6]));
  FDCE \win_p_reg[3][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(prev_row_reg_0_127_7_7_n_0),
        .Q(\win_p_reg[3]_0 [7]));
  FDCE \win_p_reg[4][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(Q[0]),
        .Q(\win_p_reg[4]_5 [0]));
  FDCE \win_p_reg[4][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(Q[1]),
        .Q(\win_p_reg[4]_5 [1]));
  FDCE \win_p_reg[4][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[2]),
        .Q(\win_p_reg[4]_5 [2]));
  FDCE \win_p_reg[4][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[3]),
        .Q(\win_p_reg[4]_5 [3]));
  FDCE \win_p_reg[4][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[4]),
        .Q(\win_p_reg[4]_5 [4]));
  FDCE \win_p_reg[4][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[5]),
        .Q(\win_p_reg[4]_5 [5]));
  FDCE \win_p_reg[4][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[6]),
        .Q(\win_p_reg[4]_5 [6]));
  FDCE \win_p_reg[4][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(Q[7]),
        .Q(\win_p_reg[4]_5 [7]));
  FDCE \win_p_reg[5][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(bot_m1[0]),
        .Q(\win_p_reg[5]_6 [0]));
  FDCE \win_p_reg[5][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(bot_m1[1]),
        .Q(\win_p_reg[5]_6 [1]));
  FDCE \win_p_reg[5][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[2]),
        .Q(\win_p_reg[5]_6 [2]));
  FDCE \win_p_reg[5][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[3]),
        .Q(\win_p_reg[5]_6 [3]));
  FDCE \win_p_reg[5][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[4]),
        .Q(\win_p_reg[5]_6 [4]));
  FDCE \win_p_reg[5][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[5]),
        .Q(\win_p_reg[5]_6 [5]));
  FDCE \win_p_reg[5][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[6]),
        .Q(\win_p_reg[5]_6 [6]));
  FDCE \win_p_reg[5][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m1[7]),
        .Q(\win_p_reg[5]_6 [7]));
  FDCE \win_p_reg[6][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(bot_m2[0]),
        .Q(\win_p_reg[6]_7 [0]));
  FDCE \win_p_reg[6][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(bot_m2[1]),
        .Q(\win_p_reg[6]_7 [1]));
  FDCE \win_p_reg[6][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[2]),
        .Q(\win_p_reg[6]_7 [2]));
  FDCE \win_p_reg[6][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[3]),
        .Q(\win_p_reg[6]_7 [3]));
  FDCE \win_p_reg[6][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[4]),
        .Q(\win_p_reg[6]_7 [4]));
  FDCE \win_p_reg[6][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[5]),
        .Q(\win_p_reg[6]_7 [5]));
  FDCE \win_p_reg[6][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[6]),
        .Q(\win_p_reg[6]_7 [6]));
  FDCE \win_p_reg[6][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(bot_m2[7]),
        .Q(\win_p_reg[6]_7 [7]));
  FDCE \win_p_reg[7][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(mid_m2[0]),
        .Q(\win_p_reg[7]_8 [0]));
  FDCE \win_p_reg[7][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(mid_m2[1]),
        .Q(\win_p_reg[7]_8 [1]));
  FDCE \win_p_reg[7][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[2]),
        .Q(\win_p_reg[7]_8 [2]));
  FDCE \win_p_reg[7][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[3]),
        .Q(\win_p_reg[7]_8 [3]));
  FDCE \win_p_reg[7][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[4]),
        .Q(\win_p_reg[7]_8 [4]));
  FDCE \win_p_reg[7][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[5]),
        .Q(\win_p_reg[7]_8 [5]));
  FDCE \win_p_reg[7][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[6]),
        .Q(\win_p_reg[7]_8 [6]));
  FDCE \win_p_reg[7][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m2[7]),
        .Q(\win_p_reg[7]_8 [7]));
  FDCE \win_p_reg[8][0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(mid_m1[0]),
        .Q(\win_p_reg[8]_1 [0]));
  FDCE \win_p_reg[8][1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(mid_m1[1]),
        .Q(\win_p_reg[8]_1 [1]));
  FDCE \win_p_reg[8][2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[2]),
        .Q(\win_p_reg[8]_1 [2]));
  FDCE \win_p_reg[8][3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[3]),
        .Q(\win_p_reg[8]_1 [3]));
  FDCE \win_p_reg[8][4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[4]),
        .Q(\win_p_reg[8]_1 [4]));
  FDCE \win_p_reg[8][5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[5]),
        .Q(\win_p_reg[8]_1 [5]));
  FDCE \win_p_reg[8][6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[6]),
        .Q(\win_p_reg[8]_1 [6]));
  FDCE \win_p_reg[8][7] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_1),
        .D(mid_m1[7]),
        .Q(\win_p_reg[8]_1 [7]));
  FDCE win_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(win_valid_reg_0),
        .D(win_valid_reg_1),
        .Q(win_valid));
  LUT2 #(
    .INIT(4'h2)) 
    \win_x[0]_i_1 
       (.I0(\x_count_reg[5]_0 [0]),
        .I1(resize_user),
        .O(cur_x[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \win_x[2]_i_1 
       (.I0(\x_count_reg[5]_0 [1]),
        .I1(resize_user),
        .I2(x_count[2]),
        .O(\win_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFAF9)) 
    \win_x[3]_i_1 
       (.I0(x_count[3]),
        .I1(x_count[2]),
        .I2(resize_user),
        .I3(\x_count_reg[5]_0 [1]),
        .O(\win_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFEF0F1)) 
    \win_x[4]_i_1 
       (.I0(x_count[3]),
        .I1(x_count[2]),
        .I2(resize_user),
        .I3(\x_count_reg[5]_0 [1]),
        .I4(x_count[4]),
        .O(win_x0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFEF0F0F0F1)) 
    \win_x[5]_i_1 
       (.I0(x_count[4]),
        .I1(\x_count_reg[5]_0 [1]),
        .I2(resize_user),
        .I3(x_count[2]),
        .I4(x_count[3]),
        .I5(\x_count_reg[5]_0 [2]),
        .O(win_x0[5]));
  LUT6 #(
    .INIT(64'h5510551011100000)) 
    \win_x[6]_i_1 
       (.I0(win_last_reg_0),
        .I1(resize_user),
        .I2(\y_count_reg_n_0_[6] ),
        .I3(\win_x[6]_i_3_n_0 ),
        .I4(x_count[6]),
        .I5(\win_x[6]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \win_x[6]_i_2 
       (.I0(cur_x[6]),
        .I1(cur_x[4]),
        .I2(cur_x[1]),
        .I3(cur_x[2]),
        .I4(cur_x[3]),
        .I5(cur_x[5]),
        .O(\win_x[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \win_x[6]_i_3 
       (.I0(\y_count_reg_n_0_[5] ),
        .I1(\y_count_reg_n_0_[3] ),
        .I2(\y_count_reg[1]_0 [1]),
        .I3(resize_user),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(\y_count_reg_n_0_[4] ),
        .O(\win_x[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \win_x[6]_i_4 
       (.I0(\x_count_reg[5]_0 [2]),
        .I1(x_count[3]),
        .I2(x_count[2]),
        .I3(resize_user),
        .I4(\x_count_reg[5]_0 [1]),
        .I5(x_count[4]),
        .O(\win_x[6]_i_4_n_0 ));
  FDCE \win_x_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(cur_x[0]),
        .Q(\win_x_reg[6]_0 [0]));
  FDCE \win_x_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(\win_x_reg[1]_0 ),
        .Q(\win_x_reg[6]_0 [1]));
  FDCE \win_x_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(\win_x[2]_i_1_n_0 ),
        .Q(\win_x_reg[6]_0 [2]));
  FDCE \win_x_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(\win_x[3]_i_1_n_0 ),
        .Q(\win_x_reg[6]_0 [3]));
  FDCE \win_x_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_x0[4]),
        .Q(\win_x_reg[6]_0 [4]));
  FDCE \win_x_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_x0[5]),
        .Q(\win_x_reg[6]_0 [5]));
  FDCE \win_x_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(\win_x[6]_i_2_n_0 ),
        .Q(\win_x_reg[6]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \win_y[0]_i_1 
       (.I0(\y_count_reg[1]_0 [0]),
        .I1(resize_user),
        .O(cur_y));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \win_y[2]_i_1 
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(resize_user),
        .I2(\y_count_reg[1]_0 [1]),
        .O(\win_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFECD)) 
    \win_y[3]_i_1 
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(resize_user),
        .I2(\y_count_reg[1]_0 [1]),
        .I3(\y_count_reg_n_0_[3] ),
        .O(win_y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFAFAFAF9)) 
    \win_y[4]_i_1 
       (.I0(\y_count_reg_n_0_[4] ),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(resize_user),
        .I3(\y_count_reg[1]_0 [1]),
        .I4(\y_count_reg_n_0_[3] ),
        .O(win_y0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0001)) 
    \win_y[5]_i_1 
       (.I0(\y_count_reg_n_0_[3] ),
        .I1(\y_count_reg[1]_0 [1]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[4] ),
        .I4(resize_user),
        .I5(\y_count_reg_n_0_[5] ),
        .O(win_y0[5]));
  LUT5 #(
    .INIT(32'h3F3E3031)) 
    \win_y[6]_i_1 
       (.I0(\y_count_reg_n_0_[5] ),
        .I1(\win_y[6]_i_2_n_0 ),
        .I2(resize_user),
        .I3(\y_count_reg_n_0_[4] ),
        .I4(\y_count_reg_n_0_[6] ),
        .O(win_y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \win_y[6]_i_2 
       (.I0(\y_count_reg_n_0_[3] ),
        .I1(\y_count_reg[1]_0 [1]),
        .I2(resize_user),
        .I3(\y_count_reg_n_0_[2] ),
        .O(\win_y[6]_i_2_n_0 ));
  FDCE \win_y_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(cur_y),
        .Q(\win_y_reg[6]_0 [0]));
  FDCE \win_y_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(D),
        .Q(\win_y_reg[6]_0 [1]));
  FDCE \win_y_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(\win_y[2]_i_1_n_0 ),
        .Q(\win_y_reg[6]_0 [2]));
  FDCE \win_y_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_y0[3]),
        .Q(\win_y_reg[6]_0 [3]));
  FDCE \win_y_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_y0[4]),
        .Q(\win_y_reg[6]_0 [4]));
  FDCE \win_y_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_y0[5]),
        .Q(\win_y_reg[6]_0 [5]));
  FDCE \win_y_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(aresetn_0),
        .D(win_y0[6]),
        .Q(\win_y_reg[6]_0 [6]));
  LUT5 #(
    .INIT(32'h01050400)) 
    \x_count[2]_i_1 
       (.I0(resize_last),
        .I1(\x_count_reg[5]_0 [0]),
        .I2(resize_user),
        .I3(\x_count_reg[5]_0 [1]),
        .I4(x_count[2]),
        .O(\x_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015005500400000)) 
    \x_count[3]_i_1 
       (.I0(resize_last),
        .I1(\x_count_reg[5]_0 [1]),
        .I2(\x_count_reg[5]_0 [0]),
        .I3(resize_user),
        .I4(x_count[2]),
        .I5(x_count[3]),
        .O(\x_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \x_count[4]_i_1 
       (.I0(resize_last),
        .I1(cur_x[2]),
        .I2(\x_count_reg[4]_0 ),
        .I3(cur_x[1]),
        .I4(cur_x[3]),
        .I5(cur_x[4]),
        .O(\x_count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11010010)) 
    \x_count[6]_i_1 
       (.I0(resize_last),
        .I1(resize_user),
        .I2(\x_count_reg[5]_0 [2]),
        .I3(\x_count_reg[3]_0 ),
        .I4(x_count[6]),
        .O(\x_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \x_count[6]_i_2 
       (.I0(x_count[3]),
        .I1(resize_user),
        .I2(\x_count_reg[5]_0 [1]),
        .I3(\x_count_reg[5]_0 [0]),
        .I4(x_count[2]),
        .I5(x_count[4]),
        .O(\x_count_reg[3]_0 ));
  FDCE \x_count_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count_reg[5]_1 [0]),
        .Q(\x_count_reg[5]_0 [0]));
  FDCE \x_count_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count_reg[5]_1 [1]),
        .Q(\x_count_reg[5]_0 [1]));
  FDCE \x_count_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count[2]_i_1_n_0 ),
        .Q(x_count[2]));
  FDCE \x_count_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count[3]_i_1_n_0 ),
        .Q(x_count[3]));
  FDCE \x_count_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count[4]_i_1_n_0 ),
        .Q(x_count[4]));
  FDCE \x_count_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count_reg[5]_1 [2]),
        .Q(\x_count_reg[5]_0 [2]));
  FDCE \x_count_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\x_count[6]_i_1_n_0 ),
        .Q(x_count[6]));
  LUT4 #(
    .INIT(16'h0078)) 
    \y_count[1]_i_1 
       (.I0(\y_count_reg[1]_0 [0]),
        .I1(resize_last),
        .I2(\y_count_reg[1]_0 [1]),
        .I3(resize_user),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \y_count[2]_i_1 
       (.I0(\y_count_reg[1]_0 [1]),
        .I1(\y_count_reg[1]_0 [0]),
        .I2(resize_last),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(resize_user),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \y_count[3]_i_1 
       (.I0(\y_count_reg_n_0_[3] ),
        .I1(\y_count_reg[1]_0 [1]),
        .I2(\y_count_reg[1]_0 [0]),
        .I3(resize_user),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(resize_last),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h1540)) 
    \y_count[4]_i_1 
       (.I0(resize_user),
        .I1(\y_count_reg_n_0_[3] ),
        .I2(\y_count[4]_i_2_n_0 ),
        .I3(\y_count_reg_n_0_[4] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \y_count[4]_i_2 
       (.I0(resize_last),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(resize_user),
        .I3(\y_count_reg[1]_0 [0]),
        .I4(\y_count_reg[1]_0 [1]),
        .O(\y_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8878)) 
    \y_count[5]_i_1 
       (.I0(\y_count[6]_i_3_n_0 ),
        .I1(resize_last),
        .I2(\y_count_reg_n_0_[5] ),
        .I3(resize_user),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \y_count[6]_i_2 
       (.I0(\y_count[6]_i_3_n_0 ),
        .I1(\y_count_reg_n_0_[5] ),
        .I2(resize_last),
        .I3(\y_count_reg_n_0_[6] ),
        .I4(resize_user),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \y_count[6]_i_3 
       (.I0(\y_count_reg_n_0_[4] ),
        .I1(\y_count_reg_n_0_[3] ),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(resize_user),
        .I4(\y_count_reg[1]_0 [0]),
        .I5(\y_count_reg[1]_0 [1]),
        .O(\y_count[6]_i_3_n_0 ));
  FDCE \y_count_reg[0] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(\y_count_reg[0]_0 ),
        .Q(\y_count_reg[1]_0 [0]));
  FDCE \y_count_reg[1] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[1]),
        .Q(\y_count_reg[1]_0 [1]));
  FDCE \y_count_reg[2] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[2]),
        .Q(\y_count_reg_n_0_[2] ));
  FDCE \y_count_reg[3] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[3]),
        .Q(\y_count_reg_n_0_[3] ));
  FDCE \y_count_reg[4] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[4]),
        .Q(\y_count_reg_n_0_[4] ));
  FDCE \y_count_reg[5] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[5]),
        .Q(\y_count_reg_n_0_[5] ));
  FDCE \y_count_reg[6] 
       (.C(aclk),
        .CE(\y_count_reg[6]_0 ),
        .CLR(aresetn_0),
        .D(p_0_in[6]),
        .Q(\y_count_reg_n_0_[6] ));
endmodule

(* ORIG_REF_NAME = "wp4_board_bridge_m13" *) 
module facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13
   (resize_done,
    aresetn_0,
    clear_done,
    sample_counted,
    hist_done,
    control_clear_d,
    E,
    resize_valid,
    resize_size_error,
    win_valid,
    clearing_reg,
    flag_status,
    \state_reg[2] ,
    Q,
    dma_tvalid_0,
    \state_reg[2]_0 ,
    control_clear_d_reg_0,
    data_status,
    \state_reg[2]_1 ,
    \state_reg[3] ,
    \state_reg[0] ,
    \state_reg[1] ,
    dma_tready,
    control_29_sp_1,
    dma_tlast_0,
    \input_x_reg[1]_0 ,
    clearing_reg_0,
    sample_counted_reg,
    control_7_sp_1,
    hist_mem_reg_1,
    aclk,
    OPMODE,
    control,
    m_tvalid_reg,
    size_error_reg,
    win_valid_reg,
    hist_total_error_reg,
    clear_done_sticky_reg_0,
    hist_done_sticky_reg_0,
    protocol_error_sticky_reg_0,
    resize_done_sticky_reg_0,
    resize_error_sticky_reg_0,
    vertical_delta_carry_i_9,
    \m_tdata_reg[7]_i_5 ,
    dma_tvalid,
    dma_tdata,
    aresetn,
    dma_tlast);
  output resize_done;
  output aresetn_0;
  output clear_done;
  output sample_counted;
  output hist_done;
  output control_clear_d;
  output [0:0]E;
  output resize_valid;
  output resize_size_error;
  output win_valid;
  output clearing_reg;
  output [5:0]flag_status;
  output \state_reg[2] ;
  output [3:0]Q;
  output dma_tvalid_0;
  output \state_reg[2]_0 ;
  output control_clear_d_reg_0;
  output [15:0]data_status;
  output \state_reg[2]_1 ;
  output \state_reg[3] ;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output dma_tready;
  output control_29_sp_1;
  output dma_tlast_0;
  output \input_x_reg[1]_0 ;
  output clearing_reg_0;
  output sample_counted_reg;
  output control_7_sp_1;
  output [15:0]hist_mem_reg_1;
  input aclk;
  input [0:0]OPMODE;
  input [29:0]control;
  input m_tvalid_reg;
  input size_error_reg;
  input win_valid_reg;
  input hist_total_error_reg;
  input clear_done_sticky_reg_0;
  input hist_done_sticky_reg_0;
  input protocol_error_sticky_reg_0;
  input resize_done_sticky_reg_0;
  input resize_error_sticky_reg_0;
  input vertical_delta_carry_i_9;
  input \m_tdata_reg[7]_i_5 ;
  input dma_tvalid;
  input [7:0]dma_tdata;
  input aresetn;
  input dma_tlast;

  wire [0:0]E;
  wire [0:0]OPMODE;
  wire [3:0]Q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire clear_done;
  wire clear_done_sticky_reg_0;
  wire clearing_reg;
  wire clearing_reg_0;
  wire [29:0]control;
  wire control_29_sn_1;
  wire control_7_sn_1;
  wire control_cfg_d;
  wire control_clear_d;
  wire control_clear_d_reg_0;
  wire [15:0]data_status;
  wire [7:0]dma_tdata;
  wire dma_tlast;
  wire dma_tlast_0;
  wire dma_tready;
  wire dma_tvalid;
  wire dma_tvalid_0;
  wire [5:0]flag_status;
  wire hist_done;
  wire hist_done_sticky_reg_0;
  wire [15:0]hist_mem_reg_1;
  wire hist_total_error_reg;
  wire input_final0;
  wire input_final0_carry_i_1__0_n_0;
  wire input_final0_carry_i_2__0_n_0;
  wire input_final0_carry_i_3__0_n_0;
  wire input_final0_carry_i_4__0_n_0;
  wire input_final0_carry_i_5__0_n_0;
  wire input_final0_carry_i_6_n_0;
  wire input_final0_carry_i_7_n_0;
  wire input_final0_carry_n_2;
  wire input_final0_carry_n_3;
  wire [8:0]input_height;
  wire input_row_last;
  wire input_row_last_carry_n_2;
  wire input_row_last_carry_n_3;
  wire \input_width_reg_n_0_[0] ;
  wire \input_width_reg_n_0_[1] ;
  wire \input_width_reg_n_0_[2] ;
  wire \input_width_reg_n_0_[3] ;
  wire \input_width_reg_n_0_[4] ;
  wire \input_width_reg_n_0_[5] ;
  wire \input_width_reg_n_0_[6] ;
  wire \input_width_reg_n_0_[7] ;
  wire \input_width_reg_n_0_[8] ;
  wire [8:0]input_x;
  wire \input_x[5]_i_2__0_n_0 ;
  wire \input_x[8]_i_3_n_0 ;
  wire \input_x_reg[1]_0 ;
  wire [8:0]input_y;
  wire \input_y[5]_i_2__0_n_0 ;
  wire \input_y[8]_i_4_n_0 ;
  wire \m_tdata_reg[7]_i_5 ;
  wire m_tvalid_reg;
  wire [8:1]p_1_in;
  wire protocol_error_sticky_reg_0;
  wire [7:0]resize_data;
  wire resize_done;
  wire resize_done_sticky_reg_0;
  wire resize_error_sticky_reg_0;
  wire resize_last;
  wire resize_size_error;
  wire resize_user;
  wire resize_valid;
  wire sample_counted;
  wire sample_counted_reg;
  wire size_error_reg;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire \state_reg[3] ;
  wire u_pipeline_n_1;
  wire u_pipeline_n_3;
  wire u_pipeline_n_30;
  wire u_pipeline_n_31;
  wire u_pipeline_n_32;
  wire u_pipeline_n_33;
  wire u_resize_n_20;
  wire u_resize_n_22;
  wire u_resize_n_23;
  wire u_resize_n_24;
  wire u_resize_n_26;
  wire u_resize_n_27;
  wire u_resize_n_28;
  wire u_resize_n_29;
  wire u_resize_n_30;
  wire u_resize_n_31;
  wire u_resize_n_32;
  wire u_resize_n_33;
  wire u_resize_n_34;
  wire u_resize_n_35;
  wire u_resize_n_36;
  wire u_resize_n_37;
  wire u_resize_n_38;
  wire u_resize_n_39;
  wire u_resize_n_40;
  wire u_resize_n_41;
  wire u_resize_n_42;
  wire u_resize_n_43;
  wire u_resize_n_46;
  wire u_resize_n_47;
  wire u_resize_n_48;
  wire u_resize_n_51;
  wire u_resize_n_52;
  wire u_resize_n_53;
  wire u_resize_n_54;
  wire u_resize_n_55;
  wire u_resize_n_56;
  wire u_resize_n_57;
  wire u_resize_n_58;
  wire u_resize_n_59;
  wire u_resize_n_6;
  wire u_resize_n_65;
  wire u_resize_n_66;
  wire u_resize_n_67;
  wire u_resize_n_68;
  wire [5:0]\u_window/x_count ;
  wire vertical_delta_carry_i_9;
  wire win_valid;
  wire win_valid_reg;
  wire [1:1]win_x0;
  wire [1:1]win_y0;
  wire [3:3]NLW_input_final0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_input_final0_carry_O_UNCONNECTED;
  wire [3:3]NLW_input_row_last_carry_CO_UNCONNECTED;
  wire [3:0]NLW_input_row_last_carry_O_UNCONNECTED;

  assign control_29_sp_1 = control_29_sn_1;
  assign control_7_sp_1 = control_7_sn_1;
  FDCE clear_done_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_1),
        .D(clear_done_sticky_reg_0),
        .Q(flag_status[0]));
  FDCE control_cfg_d_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_3),
        .D(control[29]),
        .Q(control_cfg_d));
  FDCE control_clear_d_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_3),
        .D(control[12]),
        .Q(control_clear_d));
  FDCE hist_done_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_3),
        .D(hist_done_sticky_reg_0),
        .Q(flag_status[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 input_final0_carry
       (.CI(1'b0),
        .CO({NLW_input_final0_carry_CO_UNCONNECTED[3],input_final0,input_final0_carry_n_2,input_final0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_input_final0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,input_final0_carry_i_1__0_n_0,input_final0_carry_i_2__0_n_0,input_final0_carry_i_3__0_n_0}));
  LUT6 #(
    .INIT(64'h8140000228140000)) 
    input_final0_carry_i_1__0
       (.I0(input_y[7]),
        .I1(input_height[6]),
        .I2(input_final0_carry_i_4__0_n_0),
        .I3(input_height[7]),
        .I4(input_final0_carry_i_5__0_n_0),
        .I5(input_y[6]),
        .O(input_final0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000090090960)) 
    input_final0_carry_i_2__0
       (.I0(input_height[5]),
        .I1(input_y[5]),
        .I2(input_y[4]),
        .I3(input_final0_carry_i_6_n_0),
        .I4(input_height[4]),
        .I5(input_final0_carry_i_7_n_0),
        .O(input_final0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000422490090000)) 
    input_final0_carry_i_3__0
       (.I0(input_y[1]),
        .I1(input_height[1]),
        .I2(input_y[2]),
        .I3(input_height[2]),
        .I4(input_height[0]),
        .I5(input_y[0]),
        .O(input_final0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    input_final0_carry_i_4__0
       (.I0(input_height[5]),
        .I1(input_height[3]),
        .I2(input_height[0]),
        .I3(input_height[1]),
        .I4(input_height[2]),
        .I5(input_height[4]),
        .O(input_final0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    input_final0_carry_i_5__0
       (.I0(input_y[8]),
        .I1(input_height[8]),
        .O(input_final0_carry_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    input_final0_carry_i_6
       (.I0(input_height[3]),
        .I1(input_height[0]),
        .I2(input_height[1]),
        .I3(input_height[2]),
        .O(input_final0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    input_final0_carry_i_7
       (.I0(input_y[3]),
        .I1(input_height[2]),
        .I2(input_height[1]),
        .I3(input_height[0]),
        .I4(input_height[3]),
        .O(input_final0_carry_i_7_n_0));
  FDPE \input_height_reg[0] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .D(u_resize_n_34),
        .PRE(u_pipeline_n_3),
        .Q(input_height[0]));
  FDCE \input_height_reg[1] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_33),
        .Q(input_height[1]));
  FDCE \input_height_reg[2] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_32),
        .Q(input_height[2]));
  FDCE \input_height_reg[3] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_31),
        .Q(input_height[3]));
  FDCE \input_height_reg[4] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_30),
        .Q(input_height[4]));
  FDCE \input_height_reg[5] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_29),
        .Q(input_height[5]));
  FDCE \input_height_reg[6] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_28),
        .Q(input_height[6]));
  FDCE \input_height_reg[7] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_27),
        .Q(input_height[7]));
  FDCE \input_height_reg[8] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_26),
        .Q(input_height[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 input_row_last_carry
       (.CI(1'b0),
        .CO({NLW_input_row_last_carry_CO_UNCONNECTED[3],input_row_last,input_row_last_carry_n_2,input_row_last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_input_row_last_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,u_resize_n_65,u_resize_n_66,u_resize_n_67}));
  FDPE \input_width_reg[0] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .D(u_resize_n_43),
        .PRE(u_pipeline_n_3),
        .Q(\input_width_reg_n_0_[0] ));
  FDCE \input_width_reg[1] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_42),
        .Q(\input_width_reg_n_0_[1] ));
  FDCE \input_width_reg[2] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_41),
        .Q(\input_width_reg_n_0_[2] ));
  FDCE \input_width_reg[3] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_40),
        .Q(\input_width_reg_n_0_[3] ));
  FDCE \input_width_reg[4] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_39),
        .Q(\input_width_reg_n_0_[4] ));
  FDCE \input_width_reg[5] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_38),
        .Q(\input_width_reg_n_0_[5] ));
  FDCE \input_width_reg[6] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_37),
        .Q(\input_width_reg_n_0_[6] ));
  FDCE \input_width_reg[7] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_36),
        .Q(\input_width_reg_n_0_[7] ));
  FDCE \input_width_reg[8] 
       (.C(aclk),
        .CE(u_resize_n_6),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_35),
        .Q(\input_width_reg_n_0_[8] ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \input_x[5]_i_2__0 
       (.I0(input_x[3]),
        .I1(input_x[1]),
        .I2(input_x[0]),
        .I3(input_x[2]),
        .I4(input_x[4]),
        .O(\input_x[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \input_x[8]_i_3 
       (.I0(input_x[4]),
        .I1(input_x[2]),
        .I2(input_x[0]),
        .I3(input_x[1]),
        .I4(input_x[3]),
        .I5(input_x[5]),
        .O(\input_x[8]_i_3_n_0 ));
  FDCE \input_x_reg[0] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_20),
        .Q(input_x[0]));
  FDCE \input_x_reg[1] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[1]),
        .Q(input_x[1]));
  FDCE \input_x_reg[2] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[2]),
        .Q(input_x[2]));
  FDCE \input_x_reg[3] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[3]),
        .Q(input_x[3]));
  FDCE \input_x_reg[4] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[4]),
        .Q(input_x[4]));
  FDCE \input_x_reg[5] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[5]),
        .Q(input_x[5]));
  FDCE \input_x_reg[6] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[6]),
        .Q(input_x[6]));
  FDCE \input_x_reg[7] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[7]),
        .Q(input_x[7]));
  FDCE \input_x_reg[8] 
       (.C(aclk),
        .CE(u_resize_n_47),
        .CLR(u_pipeline_n_3),
        .D(p_1_in[8]),
        .Q(input_x[8]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \input_y[5]_i_2__0 
       (.I0(input_y[3]),
        .I1(input_y[1]),
        .I2(input_y[0]),
        .I3(input_y[2]),
        .I4(input_y[4]),
        .O(\input_y[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \input_y[8]_i_4 
       (.I0(input_y[4]),
        .I1(input_y[2]),
        .I2(input_y[0]),
        .I3(input_y[1]),
        .I4(input_y[3]),
        .I5(input_y[5]),
        .O(\input_y[8]_i_4_n_0 ));
  FDCE \input_y_reg[0] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_59),
        .Q(input_y[0]));
  FDCE \input_y_reg[1] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_58),
        .Q(input_y[1]));
  FDCE \input_y_reg[2] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_57),
        .Q(input_y[2]));
  FDCE \input_y_reg[3] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_56),
        .Q(input_y[3]));
  FDCE \input_y_reg[4] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_55),
        .Q(input_y[4]));
  FDCE \input_y_reg[5] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(aresetn_0),
        .D(u_resize_n_54),
        .Q(input_y[5]));
  FDCE \input_y_reg[6] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_53),
        .Q(input_y[6]));
  FDCE \input_y_reg[7] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_52),
        .Q(input_y[7]));
  FDCE \input_y_reg[8] 
       (.C(aclk),
        .CE(u_resize_n_48),
        .CLR(u_pipeline_n_3),
        .D(u_resize_n_51),
        .Q(input_y[8]));
  FDCE protocol_error_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_1),
        .D(protocol_error_sticky_reg_0),
        .Q(flag_status[3]));
  FDCE resize_done_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_pipeline_n_3),
        .D(resize_done_sticky_reg_0),
        .Q(flag_status[4]));
  FDCE resize_error_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(resize_error_sticky_reg_0),
        .Q(flag_status[5]));
  facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline u_pipeline
       (.D(win_y0),
        .E(sample_counted),
        .Q(resize_data),
        .S(data_status[4:1]),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(u_pipeline_n_1),
        .aresetn_1(u_pipeline_n_3),
        .aresetn_2(u_pipeline_n_33),
        .\bucket_reg_reg[0] (control_clear_d),
        .clear_done(clear_done),
        .clearing_reg(clearing_reg),
        .clearing_reg_0(clearing_reg_0),
        .control(control[12:0]),
        .control_7_sp_1(control_7_sn_1),
        .control_clear_d_reg(control_clear_d_reg_0),
        .flag_status(flag_status[2]),
        .hist_done(hist_done),
        .hist_done_reg(aresetn_0),
        .hist_mem_reg_1(hist_mem_reg_1),
        .hist_total_error_reg(hist_total_error_reg),
        .\hist_total_reg[0] (data_status[0]),
        .\hist_total_reg[12] (data_status[12:9]),
        .\hist_total_reg[15] (data_status[15:13]),
        .\hist_total_reg[8] (data_status[8:5]),
        .m_tuser_reg(E),
        .resize_last(resize_last),
        .resize_user(resize_user),
        .resize_valid(resize_valid),
        .sample_counted_reg(sample_counted_reg),
        .\state_reg[2] (\state_reg[2]_0 ),
        .win_valid(win_valid),
        .win_valid_reg(win_valid_reg),
        .\win_x_reg[1] (win_x0),
        .\x_count_reg[3] (u_pipeline_n_32),
        .\x_count_reg[4] (u_resize_n_68),
        .\x_count_reg[5] ({\u_window/x_count [5],\u_window/x_count [1:0]}),
        .\x_count_reg[5]_0 ({u_resize_n_22,u_resize_n_23,u_resize_n_24}),
        .\y_count_reg[0] (u_resize_n_46),
        .\y_count_reg[1] ({u_pipeline_n_30,u_pipeline_n_31}));
  facebox_system_wp4_board_bridge_0_0_roi_resize_128 u_resize
       (.CO(input_row_last),
        .D({p_1_in,u_resize_n_20}),
        .E(u_resize_n_6),
        .OPMODE(OPMODE),
        .Q(Q),
        .S({u_resize_n_65,u_resize_n_66,u_resize_n_67}),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .control(control[29:12]),
        .\control[20] ({u_resize_n_35,u_resize_n_36,u_resize_n_37,u_resize_n_38,u_resize_n_39,u_resize_n_40,u_resize_n_41,u_resize_n_42,u_resize_n_43}),
        .\control[28] ({u_resize_n_26,u_resize_n_27,u_resize_n_28,u_resize_n_29,u_resize_n_30,u_resize_n_31,u_resize_n_32,u_resize_n_33,u_resize_n_34}),
        .\control[29] (control_29_sn_1),
        .control_cfg_d(control_cfg_d),
        .control_clear_d_reg(u_resize_n_47),
        .control_clear_d_reg_0(u_resize_n_48),
        .dma_tdata(dma_tdata),
        .dma_tlast(dma_tlast),
        .dma_tlast_0(dma_tlast_0),
        .dma_tready(dma_tready),
        .dma_tvalid(dma_tvalid),
        .dma_tvalid_0(dma_tvalid_0),
        .done_reg_0(\state_reg[2]_0 ),
        .input_row_last_carry_i_1_0({\input_width_reg_n_0_[8] ,\input_width_reg_n_0_[7] ,\input_width_reg_n_0_[6] ,\input_width_reg_n_0_[5] ,\input_width_reg_n_0_[4] ,\input_width_reg_n_0_[3] ,\input_width_reg_n_0_[2] ,\input_width_reg_n_0_[1] ,\input_width_reg_n_0_[0] }),
        .\input_x_reg[1]_0 (\input_x_reg[1]_0 ),
        .\input_x_reg[5]_0 (\input_x[5]_i_2__0_n_0 ),
        .\input_x_reg[6]_0 (\input_x[8]_i_3_n_0 ),
        .\input_x_reg[8]_0 (input_x),
        .\input_y_reg[0]_0 (control_clear_d),
        .\input_y_reg[0]_1 (input_final0),
        .\input_y_reg[5]_0 (\input_y[5]_i_2__0_n_0 ),
        .\input_y_reg[8]_0 ({u_resize_n_51,u_resize_n_52,u_resize_n_53,u_resize_n_54,u_resize_n_55,u_resize_n_56,u_resize_n_57,u_resize_n_58,u_resize_n_59}),
        .\input_y_reg[8]_1 (input_y),
        .\input_y_reg[8]_2 (\input_y[8]_i_4_n_0 ),
        .\m_tdata_reg[3]_0 (u_pipeline_n_33),
        .\m_tdata_reg[7]_0 (resize_data),
        .\m_tdata_reg[7]_i_5 (\m_tdata_reg[7]_i_5 ),
        .m_tlast_reg_0({u_resize_n_22,u_resize_n_23,u_resize_n_24}),
        .m_tlast_reg_1(u_resize_n_46),
        .m_tuser_reg_0(win_y0),
        .m_tuser_reg_1(win_x0),
        .m_tuser_reg_2(u_resize_n_68),
        .m_tuser_reg_3(u_pipeline_n_1),
        .m_tvalid_reg_0(m_tvalid_reg),
        .resize_done(resize_done),
        .resize_last(resize_last),
        .resize_size_error(resize_size_error),
        .resize_user(resize_user),
        .resize_valid(resize_valid),
        .\sample_fraction_x_reg[4]_0 (u_pipeline_n_3),
        .size_error_reg_0(size_error_reg),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[2]_0 (\state_reg[2] ),
        .\state_reg[2]_1 (\state_reg[2]_1 ),
        .\state_reg[3]_0 (\state_reg[3] ),
        .vertical_delta_carry_i_9(vertical_delta_carry_i_9),
        .\win_y_reg[1] ({u_pipeline_n_30,u_pipeline_n_31}),
        .\x_count_reg[5] (u_pipeline_n_32),
        .\x_count_reg[5]_0 ({\u_window/x_count [5],\u_window/x_count [1:0]}));
endmodule

(* ORIG_REF_NAME = "wp4_board_bridge_m13_bd" *) 
module facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd
   (data_status,
    \state_reg[2] ,
    \state_reg[3] ,
    \state_reg[0] ,
    aresetn_0,
    dma_tready,
    hist_mem_reg_1,
    flag_status,
    control,
    vertical_delta_carry_i_9,
    \m_tdata_reg[7]_i_5 ,
    OPMODE,
    aclk,
    dma_tvalid,
    dma_tdata,
    aresetn,
    dma_tlast);
  output [15:0]data_status;
  output \state_reg[2] ;
  output \state_reg[3] ;
  output \state_reg[0] ;
  output aresetn_0;
  output dma_tready;
  output [15:0]hist_mem_reg_1;
  output [5:0]flag_status;
  input [29:0]control;
  input vertical_delta_carry_i_9;
  input \m_tdata_reg[7]_i_5 ;
  input [0:0]OPMODE;
  input aclk;
  input dma_tvalid;
  input [7:0]dma_tdata;
  input aresetn;
  input dma_tlast;

  wire [0:0]OPMODE;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire clear_done;
  wire clear_done_sticky_i_1_n_0;
  wire [29:0]control;
  wire control_clear_d;
  wire [15:0]data_status;
  wire [7:0]dma_tdata;
  wire dma_tlast;
  wire dma_tready;
  wire dma_tvalid;
  wire [5:0]flag_status;
  wire hist_done;
  wire hist_done_sticky_i_1_n_0;
  wire [15:0]hist_mem_reg_1;
  wire hist_total_error_i_1_n_0;
  wire \m_tdata_reg[7]_i_5 ;
  wire m_tvalid_i_1_n_0;
  wire protocol_error_sticky_i_1_n_0;
  wire resize_done;
  wire resize_done_sticky_i_1_n_0;
  wire resize_error_sticky_i_1_n_0;
  wire resize_size_error;
  wire resize_valid;
  wire size_error_i_1_n_0;
  wire \state_reg[0] ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire u_bridge_n_10;
  wire u_bridge_n_17;
  wire u_bridge_n_18;
  wire u_bridge_n_19;
  wire u_bridge_n_20;
  wire u_bridge_n_21;
  wire u_bridge_n_22;
  wire u_bridge_n_23;
  wire u_bridge_n_24;
  wire u_bridge_n_44;
  wire u_bridge_n_46;
  wire u_bridge_n_47;
  wire u_bridge_n_48;
  wire u_bridge_n_49;
  wire u_bridge_n_50;
  wire u_bridge_n_51;
  wire u_bridge_n_6;
  wire \u_pipeline/u_histogram/sample_counted ;
  wire \u_pipeline/win_valid ;
  wire vertical_delta_carry_i_9;
  wire win_valid_i_1_n_0;

  LUT4 #(
    .INIT(16'hF3A2)) 
    clear_done_sticky_i_1
       (.I0(clear_done),
        .I1(control[12]),
        .I2(control_clear_d),
        .I3(flag_status[0]),
        .O(clear_done_sticky_i_1_n_0));
  LUT4 #(
    .INIT(16'hF3A2)) 
    hist_done_sticky_i_1
       (.I0(hist_done),
        .I1(control[12]),
        .I2(control_clear_d),
        .I3(flag_status[1]),
        .O(hist_done_sticky_i_1_n_0));
  LUT6 #(
    .INIT(64'h5545FFCF55450000)) 
    hist_total_error_i_1
       (.I0(u_bridge_n_50),
        .I1(control_clear_d),
        .I2(control[12]),
        .I3(u_bridge_n_10),
        .I4(u_bridge_n_49),
        .I5(flag_status[2]),
        .O(hist_total_error_i_1_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFA50000000)) 
    m_tvalid_i_1
       (.I0(u_bridge_n_21),
        .I1(u_bridge_n_23),
        .I2(u_bridge_n_18),
        .I3(u_bridge_n_19),
        .I4(u_bridge_n_20),
        .I5(resize_valid),
        .O(m_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0E0E0F0E0)) 
    protocol_error_sticky_i_1
       (.I0(u_bridge_n_47),
        .I1(u_bridge_n_51),
        .I2(u_bridge_n_24),
        .I3(u_bridge_n_46),
        .I4(u_bridge_n_44),
        .I5(flag_status[3]),
        .O(protocol_error_sticky_i_1_n_0));
  LUT4 #(
    .INIT(16'hF3A2)) 
    resize_done_sticky_i_1
       (.I0(resize_done),
        .I1(control[12]),
        .I2(control_clear_d),
        .I3(flag_status[4]),
        .O(resize_done_sticky_i_1_n_0));
  LUT4 #(
    .INIT(16'hF3A2)) 
    resize_error_sticky_i_1
       (.I0(resize_size_error),
        .I1(control[12]),
        .I2(control_clear_d),
        .I3(flag_status[5]),
        .O(resize_error_sticky_i_1_n_0));
  LUT5 #(
    .INIT(32'hAB33A800)) 
    size_error_i_1
       (.I0(u_bridge_n_21),
        .I1(u_bridge_n_17),
        .I2(u_bridge_n_22),
        .I3(u_bridge_n_48),
        .I4(resize_size_error),
        .O(size_error_i_1_n_0));
  facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13 u_bridge
       (.E(u_bridge_n_6),
        .OPMODE(OPMODE),
        .Q({u_bridge_n_18,u_bridge_n_19,u_bridge_n_20,u_bridge_n_21}),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .clear_done(clear_done),
        .clear_done_sticky_reg_0(clear_done_sticky_i_1_n_0),
        .clearing_reg(u_bridge_n_10),
        .clearing_reg_0(u_bridge_n_49),
        .control(control),
        .control_29_sp_1(u_bridge_n_46),
        .control_7_sp_1(u_bridge_n_51),
        .control_clear_d(control_clear_d),
        .control_clear_d_reg_0(u_bridge_n_24),
        .data_status(data_status),
        .dma_tdata(dma_tdata),
        .dma_tlast(dma_tlast),
        .dma_tlast_0(u_bridge_n_47),
        .dma_tready(dma_tready),
        .dma_tvalid(dma_tvalid),
        .dma_tvalid_0(u_bridge_n_22),
        .flag_status(flag_status),
        .hist_done(hist_done),
        .hist_done_sticky_reg_0(hist_done_sticky_i_1_n_0),
        .hist_mem_reg_1(hist_mem_reg_1),
        .hist_total_error_reg(hist_total_error_i_1_n_0),
        .\input_x_reg[1]_0 (u_bridge_n_48),
        .\m_tdata_reg[7]_i_5 (\m_tdata_reg[7]_i_5 ),
        .m_tvalid_reg(m_tvalid_i_1_n_0),
        .protocol_error_sticky_reg_0(protocol_error_sticky_i_1_n_0),
        .resize_done(resize_done),
        .resize_done_sticky_reg_0(resize_done_sticky_i_1_n_0),
        .resize_error_sticky_reg_0(resize_error_sticky_i_1_n_0),
        .resize_size_error(resize_size_error),
        .resize_valid(resize_valid),
        .sample_counted(\u_pipeline/u_histogram/sample_counted ),
        .sample_counted_reg(u_bridge_n_50),
        .size_error_reg(size_error_i_1_n_0),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[1] (u_bridge_n_44),
        .\state_reg[2] (u_bridge_n_17),
        .\state_reg[2]_0 (u_bridge_n_23),
        .\state_reg[2]_1 (\state_reg[2] ),
        .\state_reg[3] (\state_reg[3] ),
        .vertical_delta_carry_i_9(vertical_delta_carry_i_9),
        .win_valid(\u_pipeline/win_valid ),
        .win_valid_reg(win_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    win_valid_i_1
       (.I0(u_bridge_n_6),
        .I1(\u_pipeline/u_histogram/sample_counted ),
        .I2(\u_pipeline/win_valid ),
        .O(win_valid_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "wp4_lbp_pipeline" *) 
module facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline
   (clear_done,
    aresetn_0,
    E,
    aresetn_1,
    hist_done,
    m_tuser_reg,
    win_valid,
    clearing_reg,
    flag_status,
    \hist_total_reg[0] ,
    S,
    \hist_total_reg[8] ,
    \hist_total_reg[12] ,
    \hist_total_reg[15] ,
    \state_reg[2] ,
    \x_count_reg[5] ,
    control_clear_d_reg,
    \y_count_reg[1] ,
    \x_count_reg[3] ,
    aresetn_2,
    clearing_reg_0,
    sample_counted_reg,
    control_7_sp_1,
    hist_mem_reg_1,
    aclk,
    hist_done_reg,
    win_valid_reg,
    hist_total_error_reg,
    Q,
    resize_user,
    control,
    \bucket_reg_reg[0] ,
    resize_last,
    \x_count_reg[4] ,
    aresetn,
    resize_valid,
    D,
    \win_x_reg[1] ,
    \y_count_reg[0] ,
    \x_count_reg[5]_0 );
  output clear_done;
  output aresetn_0;
  output [0:0]E;
  output aresetn_1;
  output hist_done;
  output [0:0]m_tuser_reg;
  output win_valid;
  output clearing_reg;
  output [0:0]flag_status;
  output \hist_total_reg[0] ;
  output [3:0]S;
  output [3:0]\hist_total_reg[8] ;
  output [3:0]\hist_total_reg[12] ;
  output [2:0]\hist_total_reg[15] ;
  output \state_reg[2] ;
  output [2:0]\x_count_reg[5] ;
  output control_clear_d_reg;
  output [1:0]\y_count_reg[1] ;
  output \x_count_reg[3] ;
  output aresetn_2;
  output clearing_reg_0;
  output sample_counted_reg;
  output control_7_sp_1;
  output [15:0]hist_mem_reg_1;
  input aclk;
  input hist_done_reg;
  input win_valid_reg;
  input hist_total_error_reg;
  input [7:0]Q;
  input resize_user;
  input [12:0]control;
  input \bucket_reg_reg[0] ;
  input resize_last;
  input \x_count_reg[4] ;
  input aresetn;
  input resize_valid;
  input [0:0]D;
  input [0:0]\win_x_reg[1] ;
  input [0:0]\y_count_reg[0] ;
  input [2:0]\x_count_reg[5]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire aresetn_1;
  wire aresetn_2;
  wire \bucket_reg_reg[0] ;
  wire clear_done;
  wire clearing_reg;
  wire clearing_reg_0;
  wire [12:0]control;
  wire control_7_sn_1;
  wire control_clear_d_reg;
  wire [0:0]flag_status;
  wire hist_done;
  wire hist_done_reg;
  wire [15:0]hist_mem_reg_1;
  wire hist_total_error_reg;
  wire \hist_total_reg[0] ;
  wire [3:0]\hist_total_reg[12] ;
  wire [2:0]\hist_total_reg[15] ;
  wire [3:0]\hist_total_reg[8] ;
  wire [7:0]lbp_code;
  wire [0:0]m_tuser_reg;
  wire p_0_in7_out__0;
  wire p_6_in;
  wire resize_last;
  wire resize_user;
  wire resize_valid;
  wire sample_counted_reg;
  wire \state_reg[2] ;
  wire u_window_n_11;
  wire u_window_n_12;
  wire u_window_n_13;
  wire u_window_n_14;
  wire u_window_n_15;
  wire u_window_n_16;
  wire u_window_n_17;
  wire u_window_n_18;
  wire u_window_n_19;
  wire u_window_n_20;
  wire u_window_n_21;
  wire u_window_n_22;
  wire u_window_n_23;
  wire u_window_n_24;
  wire u_window_n_25;
  wire u_window_n_26;
  wire u_window_n_27;
  wire u_window_n_28;
  wire u_window_n_29;
  wire u_window_n_30;
  wire u_window_n_31;
  wire u_window_n_32;
  wire u_window_n_33;
  wire u_window_n_34;
  wire u_window_n_35;
  wire u_window_n_36;
  wire u_window_n_37;
  wire u_window_n_38;
  wire u_window_n_39;
  wire u_window_n_40;
  wire u_window_n_41;
  wire u_window_n_42;
  wire u_window_n_43;
  wire u_window_n_44;
  wire u_window_n_45;
  wire u_window_n_46;
  wire u_window_n_47;
  wire u_window_n_48;
  wire u_window_n_49;
  wire u_window_n_50;
  wire u_window_n_51;
  wire u_window_n_52;
  wire u_window_n_53;
  wire u_window_n_54;
  wire u_window_n_55;
  wire u_window_n_56;
  wire u_window_n_57;
  wire u_window_n_58;
  wire u_window_n_59;
  wire u_window_n_60;
  wire u_window_n_61;
  wire u_window_n_62;
  wire u_window_n_63;
  wire u_window_n_64;
  wire u_window_n_65;
  wire u_window_n_66;
  wire u_window_n_67;
  wire u_window_n_68;
  wire u_window_n_69;
  wire u_window_n_70;
  wire u_window_n_71;
  wire u_window_n_72;
  wire u_window_n_73;
  wire u_window_n_74;
  wire win_last;
  wire win_valid;
  wire win_valid_reg;
  wire [6:0]win_x;
  wire [0:0]\win_x_reg[1] ;
  wire [6:0]win_y;
  wire \x_count_reg[3] ;
  wire \x_count_reg[4] ;
  wire [2:0]\x_count_reg[5] ;
  wire [2:0]\x_count_reg[5]_0 ;
  wire [0:0]\y_count_reg[0] ;
  wire [1:0]\y_count_reg[1] ;

  assign control_7_sp_1 = control_7_sn_1;
  facebox_system_wp4_board_bridge_0_0_lbp_histogram u_histogram
       (.D(lbp_code),
        .E(p_6_in),
        .Q(win_y),
        .S(S),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_1),
        .\base_addr_reg[0]_0 (aresetn_0),
        .\bucket_reg_reg[0]_0 (\bucket_reg_reg[0] ),
        .clear_done(clear_done),
        .clearing_reg_0(clearing_reg),
        .clearing_reg_1(clearing_reg_0),
        .control(control),
        .control_7_sp_1(control_7_sn_1),
        .control_clear_d_reg(control_clear_d_reg),
        .flag_status(flag_status),
        .hist_done(hist_done),
        .hist_done_reg_0(hist_done_reg),
        .hist_mem_reg_1_0(hist_mem_reg_1),
        .hist_total_error_reg_0(hist_total_error_reg),
        .\hist_total_reg[0]_0 (\hist_total_reg[0] ),
        .\hist_total_reg[12]_0 (\hist_total_reg[12] ),
        .\hist_total_reg[15]_0 (\hist_total_reg[15] ),
        .\hist_total_reg[8]_0 (\hist_total_reg[8] ),
        .p_0_in7_out__0(p_0_in7_out__0),
        .resize_valid(resize_valid),
        .sample_counted_reg_0(sample_counted_reg),
        .\sample_x_reg[6]_0 (win_x),
        .\state_reg[2]_0 (\state_reg[2] ),
        .win_last(win_last),
        .win_valid(win_valid),
        .win_valid_reg(E));
  facebox_system_wp4_board_bridge_0_0_lbp_core u_lbp
       (.D(lbp_code),
        .DI({u_window_n_15,u_window_n_16,u_window_n_17,u_window_n_18}),
        .S({u_window_n_11,u_window_n_12,u_window_n_13,u_window_n_14}),
        .\sample_code_reg[1] ({u_window_n_23,u_window_n_24,u_window_n_25,u_window_n_26}),
        .\sample_code_reg[1]_0 ({u_window_n_19,u_window_n_20,u_window_n_21,u_window_n_22}),
        .\sample_code_reg[2] ({u_window_n_31,u_window_n_32,u_window_n_33,u_window_n_34}),
        .\sample_code_reg[2]_0 ({u_window_n_27,u_window_n_28,u_window_n_29,u_window_n_30}),
        .\sample_code_reg[3] ({u_window_n_39,u_window_n_40,u_window_n_41,u_window_n_42}),
        .\sample_code_reg[3]_0 ({u_window_n_35,u_window_n_36,u_window_n_37,u_window_n_38}),
        .\sample_code_reg[4] ({u_window_n_47,u_window_n_48,u_window_n_49,u_window_n_50}),
        .\sample_code_reg[4]_0 ({u_window_n_43,u_window_n_44,u_window_n_45,u_window_n_46}),
        .\sample_code_reg[5] ({u_window_n_55,u_window_n_56,u_window_n_57,u_window_n_58}),
        .\sample_code_reg[5]_0 ({u_window_n_51,u_window_n_52,u_window_n_53,u_window_n_54}),
        .\sample_code_reg[6] ({u_window_n_63,u_window_n_64,u_window_n_65,u_window_n_66}),
        .\sample_code_reg[6]_0 ({u_window_n_59,u_window_n_60,u_window_n_61,u_window_n_62}),
        .\sample_code_reg[7] ({u_window_n_71,u_window_n_72,u_window_n_73,u_window_n_74}),
        .\sample_code_reg[7]_0 ({u_window_n_67,u_window_n_68,u_window_n_69,u_window_n_70}));
  facebox_system_wp4_board_bridge_0_0_window3x3 u_window
       (.D(D),
        .DI({u_window_n_15,u_window_n_16,u_window_n_17,u_window_n_18}),
        .E(m_tuser_reg),
        .Q(Q),
        .S({u_window_n_11,u_window_n_12,u_window_n_13,u_window_n_14}),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .aresetn_1(aresetn_2),
        .p_0_in7_out__0(p_0_in7_out__0),
        .resize_last(resize_last),
        .resize_user(resize_user),
        .win_last(win_last),
        .win_last_reg_0(\state_reg[2] ),
        .\win_p_reg[1][6]_0 ({u_window_n_19,u_window_n_20,u_window_n_21,u_window_n_22}),
        .\win_p_reg[1][6]_1 ({u_window_n_23,u_window_n_24,u_window_n_25,u_window_n_26}),
        .\win_p_reg[2][6]_0 ({u_window_n_27,u_window_n_28,u_window_n_29,u_window_n_30}),
        .\win_p_reg[2][6]_1 ({u_window_n_31,u_window_n_32,u_window_n_33,u_window_n_34}),
        .\win_p_reg[3][6]_0 ({u_window_n_35,u_window_n_36,u_window_n_37,u_window_n_38}),
        .\win_p_reg[3][6]_1 ({u_window_n_39,u_window_n_40,u_window_n_41,u_window_n_42}),
        .\win_p_reg[4][6]_0 ({u_window_n_43,u_window_n_44,u_window_n_45,u_window_n_46}),
        .\win_p_reg[4][6]_1 ({u_window_n_47,u_window_n_48,u_window_n_49,u_window_n_50}),
        .\win_p_reg[5][6]_0 ({u_window_n_51,u_window_n_52,u_window_n_53,u_window_n_54}),
        .\win_p_reg[5][6]_1 ({u_window_n_55,u_window_n_56,u_window_n_57,u_window_n_58}),
        .\win_p_reg[6][6]_0 ({u_window_n_59,u_window_n_60,u_window_n_61,u_window_n_62}),
        .\win_p_reg[6][6]_1 ({u_window_n_63,u_window_n_64,u_window_n_65,u_window_n_66}),
        .\win_p_reg[7][6]_0 ({u_window_n_67,u_window_n_68,u_window_n_69,u_window_n_70}),
        .\win_p_reg[7][6]_1 ({u_window_n_71,u_window_n_72,u_window_n_73,u_window_n_74}),
        .win_valid(win_valid),
        .win_valid_reg_0(aresetn_1),
        .win_valid_reg_1(win_valid_reg),
        .\win_x_reg[1]_0 (\win_x_reg[1] ),
        .\win_x_reg[6]_0 (win_x),
        .\win_y_reg[6]_0 (win_y),
        .\x_count_reg[3]_0 (\x_count_reg[3] ),
        .\x_count_reg[4]_0 (\x_count_reg[4] ),
        .\x_count_reg[5]_0 (\x_count_reg[5] ),
        .\x_count_reg[5]_1 (\x_count_reg[5]_0 ),
        .\y_count_reg[0]_0 (\y_count_reg[0] ),
        .\y_count_reg[1]_0 (\y_count_reg[1] ),
        .\y_count_reg[6]_0 (p_6_in));
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
