// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:22:58 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_bram_0_0/facebox_system_gray_snapshot_bram_0_0_sim_netlist.v
// Design      : facebox_system_gray_snapshot_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_gray_snapshot_bram_0_0,gray_snapshot_bram_bd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gray_snapshot_bram_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_gray_snapshot_bram_0_0
   (aclk,
    bram_we,
    bram_addr,
    bram_wdata,
    bram_clk,
    bram_rst,
    bram_en,
    bram_byte_addr,
    bram_wrdata,
    bram_wrwe,
    bram_rddata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  input bram_we;
  input [14:0]bram_addr;
  input [31:0]bram_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE" *) input bram_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram RST" *) input bram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram EN" *) input bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram ADDR" *) input [16:0]bram_byte_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram DIN" *) input [31:0]bram_wrdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram WE" *) input [3:0]bram_wrwe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE" *) output [31:0]bram_rddata;

  wire aclk;
  wire [14:0]bram_addr;
  wire [16:0]bram_byte_addr;
  wire bram_clk;
  wire bram_en;
  wire [31:0]bram_rddata;
  wire bram_rst;
  wire [31:0]bram_wdata;
  wire bram_we;

  facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd inst
       (.aclk(aclk),
        .bram_addr(bram_addr),
        .bram_byte_addr(bram_byte_addr),
        .bram_clk(bram_clk),
        .bram_en(bram_en),
        .bram_rddata(bram_rddata),
        .bram_rst(bram_rst),
        .bram_wdata(bram_wdata),
        .bram_we(bram_we));
endmodule

(* ORIG_REF_NAME = "gray_snapshot_bram" *) 
module facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram
   (bram_rddata,
    bram_addr,
    bram_we,
    aclk,
    bram_clk,
    bram_byte_addr,
    bram_wdata,
    bram_en,
    bram_rst);
  output [31:0]bram_rddata;
  input [14:0]bram_addr;
  input bram_we;
  input aclk;
  input bram_clk;
  input [16:0]bram_byte_addr;
  input [31:0]bram_wdata;
  input bram_en;
  input bram_rst;

  wire aclk;
  wire [14:0]bram_addr;
  wire [16:0]bram_byte_addr;
  wire bram_clk;
  wire bram_en;
  wire [31:0]bram_rddata;
  wire bram_rst;
  wire [31:0]bram_wdata;
  wire bram_we;
  wire memory_reg_0_13_i_1_n_0;
  wire memory_reg_0_13_i_2_n_0;
  wire memory_reg_0_16_i_1_n_0;
  wire memory_reg_0_19_i_1_n_0;
  wire memory_reg_0_19_i_2_n_0;
  wire memory_reg_0_23_i_1_n_0;
  wire memory_reg_0_23_i_2_n_0;
  wire memory_reg_0_26_i_1_n_0;
  wire memory_reg_0_29_i_1_n_0;
  wire memory_reg_0_29_i_2_n_0;
  wire memory_reg_0_31_i_1_n_0;
  wire memory_reg_0_31_i_2_n_0;
  wire memory_reg_0_31_i_3_n_0;
  wire memory_reg_0_31_i_4_n_0;
  wire memory_reg_0_31_i_5_n_0;
  wire memory_reg_0_31_i_6_n_0;
  wire memory_reg_0_31_i_7_n_0;
  wire memory_reg_0_31_i_8_n_0;
  wire memory_reg_0_3_i_1_n_0;
  wire memory_reg_0_6_i_1_n_0;
  wire memory_reg_0_9_i_1_n_0;
  wire memory_reg_0_9_i_2_n_0;
  wire NLW_memory_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_10_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_10_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_10_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_12_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_12_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_12_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_13_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_13_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_13_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_15_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_15_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_15_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_16_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_16_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_16_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_16_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_16_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_16_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_17_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_17_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_17_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_17_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_17_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_17_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_17_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_17_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_17_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_17_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_17_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_17_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_18_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_18_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_18_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_18_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_18_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_18_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_18_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_18_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_18_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_18_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_18_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_18_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_19_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_19_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_19_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_19_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_19_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_19_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_19_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_19_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_19_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_19_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_19_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_19_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_20_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_20_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_20_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_20_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_20_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_20_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_20_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_20_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_20_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_20_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_20_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_20_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_21_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_21_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_21_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_21_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_21_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_21_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_21_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_21_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_21_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_21_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_21_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_21_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_22_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_22_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_22_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_22_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_22_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_22_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_22_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_22_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_22_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_22_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_22_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_22_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_23_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_23_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_23_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_23_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_23_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_23_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_23_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_23_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_23_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_23_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_23_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_23_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_24_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_24_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_24_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_24_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_24_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_24_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_24_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_24_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_24_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_24_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_24_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_24_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_25_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_25_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_25_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_25_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_25_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_25_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_25_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_25_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_25_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_25_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_25_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_25_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_26_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_26_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_26_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_26_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_26_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_26_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_26_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_26_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_26_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_26_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_26_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_26_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_27_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_27_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_27_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_27_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_27_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_27_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_27_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_27_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_27_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_27_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_27_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_27_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_28_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_28_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_28_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_28_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_28_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_28_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_28_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_28_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_28_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_28_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_28_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_28_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_29_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_29_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_29_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_29_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_29_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_29_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_29_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_29_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_29_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_29_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_29_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_29_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_30_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_30_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_30_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_30_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_30_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_30_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_30_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_30_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_30_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_30_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_30_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_30_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_31_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_31_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_31_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_31_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_31_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_31_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_31_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_31_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_31_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_31_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_31_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_31_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_8_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_8_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_8_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_0_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_9_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_0
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_0_DOBDO_UNCONNECTED[31:1],bram_rddata[0]}),
        .DOPADOP(NLW_memory_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_4_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_1
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_1_DOBDO_UNCONNECTED[31:1],bram_rddata[1]}),
        .DOPADOP(NLW_memory_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_4_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "10" *) 
  (* bram_slice_end = "10" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_10
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_10_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_10_DOBDO_UNCONNECTED[31:1],bram_rddata[10]}),
        .DOPADOP(NLW_memory_reg_0_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_10_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "11" *) 
  (* bram_slice_end = "11" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_11
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_11_DOBDO_UNCONNECTED[31:1],bram_rddata[11]}),
        .DOPADOP(NLW_memory_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "12" *) 
  (* bram_slice_end = "12" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_12
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_12_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_12_DOBDO_UNCONNECTED[31:1],bram_rddata[12]}),
        .DOPADOP(NLW_memory_reg_0_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_12_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,memory_reg_0_13_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "13" *) 
  (* bram_slice_end = "13" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_13
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_13_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_13_DOBDO_UNCONNECTED[31:1],bram_rddata[13]}),
        .DOPADOP(NLW_memory_reg_0_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_13_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,memory_reg_0_13_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_13_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_13_i_1_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_13_i_2
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_13_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "14" *) 
  (* bram_slice_end = "14" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_14
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_14_DOBDO_UNCONNECTED[31:1],bram_rddata[14]}),
        .DOPADOP(NLW_memory_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "15" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "15" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_15
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_15_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_15_DOBDO_UNCONNECTED[31:1],bram_rddata[15]}),
        .DOPADOP(NLW_memory_reg_0_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_15_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "16" *) 
  (* bram_slice_end = "16" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_16
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_16_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_16_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_16_DOBDO_UNCONNECTED[31:1],bram_rddata[16]}),
        .DOPADOP(NLW_memory_reg_0_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_16_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_19_i_2_n_0,memory_reg_0_16_i_1_n_0,memory_reg_0_16_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_16_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_16_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "17" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_17
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_17_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_17_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_17_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[17]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_17_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_17_DOBDO_UNCONNECTED[31:1],bram_rddata[17]}),
        .DOPADOP(NLW_memory_reg_0_17_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_17_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_17_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_17_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_17_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_17_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_17_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "18" *) 
  (* bram_slice_end = "18" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_18
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_18_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_18_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_18_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_18_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_18_DOBDO_UNCONNECTED[31:1],bram_rddata[18]}),
        .DOPADOP(NLW_memory_reg_0_18_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_18_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_18_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_18_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_18_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_18_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_18_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "19" *) 
  (* bram_slice_end = "19" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_19
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_19_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_19_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_19_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[19]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_19_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_19_DOBDO_UNCONNECTED[31:1],bram_rddata[19]}),
        .DOPADOP(NLW_memory_reg_0_19_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_19_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_19_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_19_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_19_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_19_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_19_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_19_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,memory_reg_0_19_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    memory_reg_0_19_i_1
       (.I0(memory_reg_0_31_i_6_n_0),
        .I1(bram_en),
        .O(memory_reg_0_19_i_1_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_19_i_2
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_19_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_2
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_2_DOBDO_UNCONNECTED[31:1],bram_rddata[2]}),
        .DOPADOP(NLW_memory_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_4_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,memory_reg_0_3_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "20" *) 
  (* bram_slice_end = "20" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_20
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_20_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_20_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_20_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_20_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_20_DOBDO_UNCONNECTED[31:1],bram_rddata[20]}),
        .DOPADOP(NLW_memory_reg_0_20_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_20_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_20_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_20_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_20_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_20_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_20_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "21" *) 
  (* bram_slice_end = "21" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_21
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_21_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_21_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_21_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[21]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_21_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_21_DOBDO_UNCONNECTED[31:1],bram_rddata[21]}),
        .DOPADOP(NLW_memory_reg_0_21_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_21_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_21_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_21_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_21_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_21_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_21_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "22" *) 
  (* bram_slice_end = "22" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_22
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_22_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_22_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_22_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_22_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_22_DOBDO_UNCONNECTED[31:1],bram_rddata[22]}),
        .DOPADOP(NLW_memory_reg_0_22_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_22_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_22_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_22_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_22_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_22_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_22_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,memory_reg_0_23_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "23" *) 
  (* bram_slice_end = "23" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_23
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_23_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_23_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_23_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[23]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_23_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_23_DOBDO_UNCONNECTED[31:1],bram_rddata[23]}),
        .DOPADOP(NLW_memory_reg_0_23_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_23_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_23_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_23_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_23_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_23_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_23_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_23_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,memory_reg_0_23_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_23_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_23_i_1_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_23_i_2
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_23_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "24" *) 
  (* bram_slice_end = "24" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_24
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_24_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_24_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_24_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_24_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_24_DOBDO_UNCONNECTED[31:1],bram_rddata[24]}),
        .DOPADOP(NLW_memory_reg_0_24_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_24_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_24_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_24_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_24_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_24_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_24_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "25" *) 
  (* bram_slice_end = "25" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_25
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_25_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_25_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_25_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[25]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_25_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_25_DOBDO_UNCONNECTED[31:1],bram_rddata[25]}),
        .DOPADOP(NLW_memory_reg_0_25_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_25_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_25_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_25_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_25_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_25_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_25_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "26" *) 
  (* bram_slice_end = "26" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_26
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_26_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_26_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_26_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_26_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_26_DOBDO_UNCONNECTED[31:1],bram_rddata[26]}),
        .DOPADOP(NLW_memory_reg_0_26_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_26_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_26_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_26_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_26_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_26_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_26_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_29_i_2_n_0,memory_reg_0_26_i_1_n_0,memory_reg_0_26_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_26_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_26_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "27" *) 
  (* bram_slice_end = "27" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_27
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_27_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_27_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_27_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_27_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_27_DOBDO_UNCONNECTED[31:1],bram_rddata[27]}),
        .DOPADOP(NLW_memory_reg_0_27_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_27_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_27_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_27_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_27_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_27_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_27_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "28" *) 
  (* bram_slice_end = "28" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_28
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_28_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_28_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_28_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_28_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_28_DOBDO_UNCONNECTED[31:1],bram_rddata[28]}),
        .DOPADOP(NLW_memory_reg_0_28_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_28_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_28_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_28_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_28_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_28_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_28_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "29" *) 
  (* bram_slice_end = "29" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_29
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_29_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_29_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_29_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[29]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_29_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_29_DOBDO_UNCONNECTED[31:1],bram_rddata[29]}),
        .DOPADOP(NLW_memory_reg_0_29_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_29_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_29_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_29_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_29_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_29_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_29_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_29_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,memory_reg_0_29_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    memory_reg_0_29_i_1
       (.I0(memory_reg_0_31_i_6_n_0),
        .I1(bram_en),
        .O(memory_reg_0_29_i_1_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_29_i_2
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_29_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_3
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_3_DOBDO_UNCONNECTED[31:1],bram_rddata[3]}),
        .DOPADOP(NLW_memory_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_4_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,memory_reg_0_3_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "30" *) 
  (* bram_slice_end = "30" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_30
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_30_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_30_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_30_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_30_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_30_DOBDO_UNCONNECTED[31:1],bram_rddata[30]}),
        .DOPADOP(NLW_memory_reg_0_30_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_30_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_30_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_31_i_2_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_30_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_30_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_30_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_30_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_31_i_4_n_0,memory_reg_0_31_i_4_n_0,memory_reg_0_31_i_4_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "31" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_31
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_31_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_31_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_31_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_31_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_31_DOBDO_UNCONNECTED[31:1],bram_rddata[31]}),
        .DOPADOP(NLW_memory_reg_0_31_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_31_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_31_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_31_i_1_n_0),
        .ENBWREN(memory_reg_0_31_i_2_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_31_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_31_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_31_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_31_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_31_i_4_n_0,memory_reg_0_31_i_4_n_0,memory_reg_0_31_i_4_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_31_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_31_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    memory_reg_0_31_i_2
       (.I0(memory_reg_0_31_i_6_n_0),
        .I1(bram_en),
        .O(memory_reg_0_31_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAAAAAAA)) 
    memory_reg_0_31_i_3
       (.I0(memory_reg_0_31_i_6_n_0),
        .I1(memory_reg_0_31_i_7_n_0),
        .I2(memory_reg_0_31_i_8_n_0),
        .I3(bram_byte_addr[15]),
        .I4(bram_en),
        .I5(bram_byte_addr[16]),
        .O(memory_reg_0_31_i_3_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_31_i_4
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_31_i_4_n_0));
  LUT6 #(
    .INIT(64'h55557FFFFFFFFFFF)) 
    memory_reg_0_31_i_5
       (.I0(bram_addr[11]),
        .I1(bram_addr[6]),
        .I2(bram_addr[8]),
        .I3(bram_addr[7]),
        .I4(bram_addr[9]),
        .I5(bram_addr[12]),
        .O(memory_reg_0_31_i_5_n_0));
  LUT4 #(
    .INIT(16'hFEAA)) 
    memory_reg_0_31_i_6
       (.I0(bram_rst),
        .I1(bram_byte_addr[1]),
        .I2(bram_byte_addr[0]),
        .I3(bram_en),
        .O(memory_reg_0_31_i_6_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    memory_reg_0_31_i_7
       (.I0(bram_byte_addr[8]),
        .I1(bram_byte_addr[9]),
        .I2(bram_byte_addr[10]),
        .I3(bram_byte_addr[11]),
        .O(memory_reg_0_31_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_0_31_i_8
       (.I0(bram_byte_addr[14]),
        .I1(bram_byte_addr[13]),
        .I2(bram_byte_addr[12]),
        .O(memory_reg_0_31_i_8_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_3_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_4
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_4_DOBDO_UNCONNECTED[31:1],bram_rddata[4]}),
        .DOPADOP(NLW_memory_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_5
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_5_DOBDO_UNCONNECTED[31:1],bram_rddata[5]}),
        .DOPADOP(NLW_memory_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_6
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_6_DOBDO_UNCONNECTED[31:1],bram_rddata[6]}),
        .DOPADOP(NLW_memory_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_9_i_2_n_0,memory_reg_0_6_i_1_n_0,memory_reg_0_6_i_1_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_6_i_1
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
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
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
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
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_7
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_7_DOBDO_UNCONNECTED[31:1],bram_rddata[7]}),
        .DOPADOP(NLW_memory_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "8" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "8" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_8
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_8_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_8_DOBDO_UNCONNECTED[31:1],bram_rddata[8]}),
        .DOPADOP(NLW_memory_reg_0_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_8_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "768000" *) 
  (* RTL_RAM_NAME = "inst/u_core/memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "9" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_reg_0_9
       (.ADDRARDADDR({1'b1,bram_addr}),
        .ADDRBWRADDR({1'b1,bram_byte_addr[16:2]}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(bram_clk),
        .DBITERR(NLW_memory_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_wdata[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_memory_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_9_DOBDO_UNCONNECTED[31:1],bram_rddata[9]}),
        .DOPADOP(NLW_memory_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_0_13_i_1_n_0),
        .ENBWREN(memory_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_memory_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(memory_reg_0_31_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,memory_reg_0_9_i_2_n_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    memory_reg_0_9_i_1
       (.I0(memory_reg_0_31_i_6_n_0),
        .I1(bram_en),
        .O(memory_reg_0_9_i_1_n_0));
  LUT5 #(
    .INIT(32'h55F70000)) 
    memory_reg_0_9_i_2
       (.I0(bram_addr[14]),
        .I1(bram_addr[10]),
        .I2(memory_reg_0_31_i_5_n_0),
        .I3(bram_addr[13]),
        .I4(bram_we),
        .O(memory_reg_0_9_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gray_snapshot_bram_bd" *) 
module facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd
   (bram_rddata,
    bram_addr,
    bram_we,
    aclk,
    bram_clk,
    bram_byte_addr,
    bram_wdata,
    bram_en,
    bram_rst);
  output [31:0]bram_rddata;
  input [14:0]bram_addr;
  input bram_we;
  input aclk;
  input bram_clk;
  input [16:0]bram_byte_addr;
  input [31:0]bram_wdata;
  input bram_en;
  input bram_rst;

  wire aclk;
  wire [14:0]bram_addr;
  wire [16:0]bram_byte_addr;
  wire bram_clk;
  wire bram_en;
  wire [31:0]bram_rddata;
  wire bram_rst;
  wire [31:0]bram_wdata;
  wire bram_we;

  facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram u_core
       (.aclk(aclk),
        .bram_addr(bram_addr),
        .bram_byte_addr(bram_byte_addr),
        .bram_clk(bram_clk),
        .bram_en(bram_en),
        .bram_rddata(bram_rddata),
        .bram_rst(bram_rst),
        .bram_wdata(bram_wdata),
        .bram_we(bram_we));
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
