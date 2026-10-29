-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:22:58 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_bram_0_0/facebox_system_gray_snapshot_bram_0_0_sim_netlist.vhdl
-- Design      : facebox_system_gray_snapshot_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram is
  port (
    bram_rddata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_we : in STD_LOGIC;
    aclk : in STD_LOGIC;
    bram_clk : in STD_LOGIC;
    bram_byte_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : in STD_LOGIC;
    bram_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram : entity is "gray_snapshot_bram";
end facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram;

architecture STRUCTURE of facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram is
  signal memory_reg_0_13_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_13_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_16_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_19_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_19_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_23_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_23_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_26_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_29_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_29_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_2_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_3_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_4_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_5_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_6_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_7_n_0 : STD_LOGIC;
  signal memory_reg_0_31_i_8_n_0 : STD_LOGIC;
  signal memory_reg_0_3_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_6_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_9_i_1_n_0 : STD_LOGIC;
  signal memory_reg_0_9_i_2_n_0 : STD_LOGIC;
  signal NLW_memory_reg_0_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_10_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_10_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_10_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_10_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_10_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_10_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_10_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_11_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_11_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_11_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_11_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_11_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_11_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_11_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_12_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_12_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_12_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_12_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_12_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_12_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_12_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_13_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_13_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_13_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_13_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_13_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_13_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_13_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_14_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_14_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_14_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_14_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_14_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_14_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_14_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_15_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_15_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_15_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_15_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_15_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_15_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_15_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_16_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_16_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_16_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_16_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_16_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_16_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_16_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_17_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_17_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_17_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_17_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_17_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_17_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_17_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_18_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_18_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_18_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_18_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_18_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_18_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_18_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_19_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_19_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_19_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_19_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_19_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_19_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_19_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_20_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_20_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_20_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_20_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_20_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_20_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_20_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_21_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_21_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_21_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_21_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_21_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_21_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_21_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_22_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_22_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_22_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_22_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_22_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_22_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_22_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_23_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_23_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_23_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_23_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_23_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_23_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_23_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_24_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_24_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_24_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_24_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_24_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_24_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_24_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_25_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_25_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_25_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_25_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_25_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_25_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_25_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_26_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_26_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_26_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_26_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_26_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_26_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_26_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_27_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_27_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_27_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_27_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_27_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_27_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_27_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_28_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_28_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_28_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_28_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_28_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_28_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_28_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_29_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_29_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_29_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_29_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_29_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_29_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_29_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_30_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_30_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_30_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_30_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_30_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_30_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_30_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_31_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_31_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_31_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_31_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_31_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_31_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_31_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_8_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_8_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_8_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_8_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_8_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_8_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_8_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_memory_reg_0_9_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_9_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memory_reg_0_9_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_memory_reg_0_9_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_9_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memory_reg_0_9_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_memory_reg_0_9_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg_0_0 : label is 768000;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg_0_0 : label is "inst/u_core/memory";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg_0_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg_0_0 : label is 32767;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg_0_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg_0_0 : label is 0;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg_0_0 : label is 32767;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg_0_0 : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_1 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_1 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_1 : label is 0;
  attribute bram_addr_end of memory_reg_0_1 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_1 : label is 1;
  attribute bram_slice_end of memory_reg_0_1 : label is 1;
  attribute ram_addr_begin of memory_reg_0_1 : label is 0;
  attribute ram_addr_end of memory_reg_0_1 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_1 : label is 1;
  attribute ram_slice_end of memory_reg_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_10 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_10 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_10 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_10 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_10 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_10 : label is 0;
  attribute bram_addr_end of memory_reg_0_10 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_10 : label is 10;
  attribute bram_slice_end of memory_reg_0_10 : label is 10;
  attribute ram_addr_begin of memory_reg_0_10 : label is 0;
  attribute ram_addr_end of memory_reg_0_10 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_10 : label is 10;
  attribute ram_slice_end of memory_reg_0_10 : label is 10;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_11 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_11 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_11 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_11 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_11 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_11 : label is 0;
  attribute bram_addr_end of memory_reg_0_11 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_11 : label is 11;
  attribute bram_slice_end of memory_reg_0_11 : label is 11;
  attribute ram_addr_begin of memory_reg_0_11 : label is 0;
  attribute ram_addr_end of memory_reg_0_11 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_11 : label is 11;
  attribute ram_slice_end of memory_reg_0_11 : label is 11;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_12 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_12 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_12 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_12 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_12 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_12 : label is 0;
  attribute bram_addr_end of memory_reg_0_12 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_12 : label is 12;
  attribute bram_slice_end of memory_reg_0_12 : label is 12;
  attribute ram_addr_begin of memory_reg_0_12 : label is 0;
  attribute ram_addr_end of memory_reg_0_12 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_12 : label is 12;
  attribute ram_slice_end of memory_reg_0_12 : label is 12;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_13 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_13 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_13 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_13 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_13 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_13 : label is 0;
  attribute bram_addr_end of memory_reg_0_13 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_13 : label is 13;
  attribute bram_slice_end of memory_reg_0_13 : label is 13;
  attribute ram_addr_begin of memory_reg_0_13 : label is 0;
  attribute ram_addr_end of memory_reg_0_13 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_13 : label is 13;
  attribute ram_slice_end of memory_reg_0_13 : label is 13;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_14 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_14 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_14 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_14 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_14 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_14 : label is 0;
  attribute bram_addr_end of memory_reg_0_14 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_14 : label is 14;
  attribute bram_slice_end of memory_reg_0_14 : label is 14;
  attribute ram_addr_begin of memory_reg_0_14 : label is 0;
  attribute ram_addr_end of memory_reg_0_14 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_14 : label is 14;
  attribute ram_slice_end of memory_reg_0_14 : label is 14;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_15 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_15 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_15 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_15 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_15 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_15 : label is 0;
  attribute bram_addr_end of memory_reg_0_15 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_15 : label is 15;
  attribute bram_slice_end of memory_reg_0_15 : label is 15;
  attribute ram_addr_begin of memory_reg_0_15 : label is 0;
  attribute ram_addr_end of memory_reg_0_15 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_15 : label is 15;
  attribute ram_slice_end of memory_reg_0_15 : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_16 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_16 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_16 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_16 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_16 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_16 : label is 0;
  attribute bram_addr_end of memory_reg_0_16 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_16 : label is 16;
  attribute bram_slice_end of memory_reg_0_16 : label is 16;
  attribute ram_addr_begin of memory_reg_0_16 : label is 0;
  attribute ram_addr_end of memory_reg_0_16 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_16 : label is 16;
  attribute ram_slice_end of memory_reg_0_16 : label is 16;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_17 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_17 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_17 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_17 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_17 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_17 : label is 0;
  attribute bram_addr_end of memory_reg_0_17 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_17 : label is 17;
  attribute bram_slice_end of memory_reg_0_17 : label is 17;
  attribute ram_addr_begin of memory_reg_0_17 : label is 0;
  attribute ram_addr_end of memory_reg_0_17 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_17 : label is 17;
  attribute ram_slice_end of memory_reg_0_17 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_18 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_18 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_18 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_18 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_18 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_18 : label is 0;
  attribute bram_addr_end of memory_reg_0_18 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_18 : label is 18;
  attribute bram_slice_end of memory_reg_0_18 : label is 18;
  attribute ram_addr_begin of memory_reg_0_18 : label is 0;
  attribute ram_addr_end of memory_reg_0_18 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_18 : label is 18;
  attribute ram_slice_end of memory_reg_0_18 : label is 18;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_19 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_19 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_19 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_19 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_19 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_19 : label is 0;
  attribute bram_addr_end of memory_reg_0_19 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_19 : label is 19;
  attribute bram_slice_end of memory_reg_0_19 : label is 19;
  attribute ram_addr_begin of memory_reg_0_19 : label is 0;
  attribute ram_addr_end of memory_reg_0_19 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_19 : label is 19;
  attribute ram_slice_end of memory_reg_0_19 : label is 19;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_2 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_2 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_2 : label is 0;
  attribute bram_addr_end of memory_reg_0_2 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_2 : label is 2;
  attribute bram_slice_end of memory_reg_0_2 : label is 2;
  attribute ram_addr_begin of memory_reg_0_2 : label is 0;
  attribute ram_addr_end of memory_reg_0_2 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_2 : label is 2;
  attribute ram_slice_end of memory_reg_0_2 : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_20 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_20 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_20 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_20 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_20 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_20 : label is 0;
  attribute bram_addr_end of memory_reg_0_20 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_20 : label is 20;
  attribute bram_slice_end of memory_reg_0_20 : label is 20;
  attribute ram_addr_begin of memory_reg_0_20 : label is 0;
  attribute ram_addr_end of memory_reg_0_20 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_20 : label is 20;
  attribute ram_slice_end of memory_reg_0_20 : label is 20;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_21 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_21 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_21 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_21 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_21 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_21 : label is 0;
  attribute bram_addr_end of memory_reg_0_21 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_21 : label is 21;
  attribute bram_slice_end of memory_reg_0_21 : label is 21;
  attribute ram_addr_begin of memory_reg_0_21 : label is 0;
  attribute ram_addr_end of memory_reg_0_21 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_21 : label is 21;
  attribute ram_slice_end of memory_reg_0_21 : label is 21;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_22 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_22 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_22 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_22 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_22 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_22 : label is 0;
  attribute bram_addr_end of memory_reg_0_22 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_22 : label is 22;
  attribute bram_slice_end of memory_reg_0_22 : label is 22;
  attribute ram_addr_begin of memory_reg_0_22 : label is 0;
  attribute ram_addr_end of memory_reg_0_22 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_22 : label is 22;
  attribute ram_slice_end of memory_reg_0_22 : label is 22;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_23 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_23 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_23 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_23 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_23 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_23 : label is 0;
  attribute bram_addr_end of memory_reg_0_23 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_23 : label is 23;
  attribute bram_slice_end of memory_reg_0_23 : label is 23;
  attribute ram_addr_begin of memory_reg_0_23 : label is 0;
  attribute ram_addr_end of memory_reg_0_23 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_23 : label is 23;
  attribute ram_slice_end of memory_reg_0_23 : label is 23;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_24 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_24 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_24 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_24 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_24 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_24 : label is 0;
  attribute bram_addr_end of memory_reg_0_24 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_24 : label is 24;
  attribute bram_slice_end of memory_reg_0_24 : label is 24;
  attribute ram_addr_begin of memory_reg_0_24 : label is 0;
  attribute ram_addr_end of memory_reg_0_24 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_24 : label is 24;
  attribute ram_slice_end of memory_reg_0_24 : label is 24;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_25 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_25 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_25 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_25 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_25 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_25 : label is 0;
  attribute bram_addr_end of memory_reg_0_25 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_25 : label is 25;
  attribute bram_slice_end of memory_reg_0_25 : label is 25;
  attribute ram_addr_begin of memory_reg_0_25 : label is 0;
  attribute ram_addr_end of memory_reg_0_25 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_25 : label is 25;
  attribute ram_slice_end of memory_reg_0_25 : label is 25;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_26 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_26 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_26 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_26 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_26 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_26 : label is 0;
  attribute bram_addr_end of memory_reg_0_26 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_26 : label is 26;
  attribute bram_slice_end of memory_reg_0_26 : label is 26;
  attribute ram_addr_begin of memory_reg_0_26 : label is 0;
  attribute ram_addr_end of memory_reg_0_26 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_26 : label is 26;
  attribute ram_slice_end of memory_reg_0_26 : label is 26;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_27 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_27 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_27 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_27 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_27 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_27 : label is 0;
  attribute bram_addr_end of memory_reg_0_27 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_27 : label is 27;
  attribute bram_slice_end of memory_reg_0_27 : label is 27;
  attribute ram_addr_begin of memory_reg_0_27 : label is 0;
  attribute ram_addr_end of memory_reg_0_27 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_27 : label is 27;
  attribute ram_slice_end of memory_reg_0_27 : label is 27;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_28 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_28 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_28 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_28 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_28 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_28 : label is 0;
  attribute bram_addr_end of memory_reg_0_28 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_28 : label is 28;
  attribute bram_slice_end of memory_reg_0_28 : label is 28;
  attribute ram_addr_begin of memory_reg_0_28 : label is 0;
  attribute ram_addr_end of memory_reg_0_28 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_28 : label is 28;
  attribute ram_slice_end of memory_reg_0_28 : label is 28;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_29 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_29 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_29 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_29 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_29 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_29 : label is 0;
  attribute bram_addr_end of memory_reg_0_29 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_29 : label is 29;
  attribute bram_slice_end of memory_reg_0_29 : label is 29;
  attribute ram_addr_begin of memory_reg_0_29 : label is 0;
  attribute ram_addr_end of memory_reg_0_29 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_29 : label is 29;
  attribute ram_slice_end of memory_reg_0_29 : label is 29;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_3 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_3 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_3 : label is 0;
  attribute bram_addr_end of memory_reg_0_3 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_3 : label is 3;
  attribute bram_slice_end of memory_reg_0_3 : label is 3;
  attribute ram_addr_begin of memory_reg_0_3 : label is 0;
  attribute ram_addr_end of memory_reg_0_3 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_3 : label is 3;
  attribute ram_slice_end of memory_reg_0_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_30 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_30 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_30 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_30 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_30 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_30 : label is 0;
  attribute bram_addr_end of memory_reg_0_30 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_30 : label is 30;
  attribute bram_slice_end of memory_reg_0_30 : label is 30;
  attribute ram_addr_begin of memory_reg_0_30 : label is 0;
  attribute ram_addr_end of memory_reg_0_30 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_30 : label is 30;
  attribute ram_slice_end of memory_reg_0_30 : label is 30;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_31 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_31 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_31 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_31 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_31 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_31 : label is 0;
  attribute bram_addr_end of memory_reg_0_31 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_31 : label is 31;
  attribute bram_slice_end of memory_reg_0_31 : label is 31;
  attribute ram_addr_begin of memory_reg_0_31 : label is 0;
  attribute ram_addr_end of memory_reg_0_31 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_31 : label is 31;
  attribute ram_slice_end of memory_reg_0_31 : label is 31;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_4 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_4 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_4 : label is 0;
  attribute bram_addr_end of memory_reg_0_4 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_4 : label is 4;
  attribute bram_slice_end of memory_reg_0_4 : label is 4;
  attribute ram_addr_begin of memory_reg_0_4 : label is 0;
  attribute ram_addr_end of memory_reg_0_4 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_4 : label is 4;
  attribute ram_slice_end of memory_reg_0_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_5 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_5 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_5 : label is 0;
  attribute bram_addr_end of memory_reg_0_5 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_5 : label is 5;
  attribute bram_slice_end of memory_reg_0_5 : label is 5;
  attribute ram_addr_begin of memory_reg_0_5 : label is 0;
  attribute ram_addr_end of memory_reg_0_5 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_5 : label is 5;
  attribute ram_slice_end of memory_reg_0_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_6 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_6 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_6 : label is 0;
  attribute bram_addr_end of memory_reg_0_6 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_6 : label is 6;
  attribute bram_slice_end of memory_reg_0_6 : label is 6;
  attribute ram_addr_begin of memory_reg_0_6 : label is 0;
  attribute ram_addr_end of memory_reg_0_6 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_6 : label is 6;
  attribute ram_slice_end of memory_reg_0_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_7 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_7 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_7 : label is 0;
  attribute bram_addr_end of memory_reg_0_7 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_7 : label is 7;
  attribute bram_slice_end of memory_reg_0_7 : label is 7;
  attribute ram_addr_begin of memory_reg_0_7 : label is 0;
  attribute ram_addr_end of memory_reg_0_7 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_7 : label is 7;
  attribute ram_slice_end of memory_reg_0_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_8 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_8 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_8 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_8 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_8 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_8 : label is 0;
  attribute bram_addr_end of memory_reg_0_8 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_8 : label is 8;
  attribute bram_slice_end of memory_reg_0_8 : label is 8;
  attribute ram_addr_begin of memory_reg_0_8 : label is 0;
  attribute ram_addr_end of memory_reg_0_8 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_8 : label is 8;
  attribute ram_slice_end of memory_reg_0_8 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg_0_9 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg_0_9 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_9 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of memory_reg_0_9 : label is 768000;
  attribute RTL_RAM_NAME of memory_reg_0_9 : label is "inst/u_core/memory";
  attribute bram_addr_begin of memory_reg_0_9 : label is 0;
  attribute bram_addr_end of memory_reg_0_9 : label is 32767;
  attribute bram_slice_begin of memory_reg_0_9 : label is 9;
  attribute bram_slice_end of memory_reg_0_9 : label is 9;
  attribute ram_addr_begin of memory_reg_0_9 : label is 0;
  attribute ram_addr_end of memory_reg_0_9 : label is 32767;
  attribute ram_slice_begin of memory_reg_0_9 : label is 9;
  attribute ram_slice_end of memory_reg_0_9 : label is 9;
begin
memory_reg_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(0),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_4_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_0_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_3_i_1_n_0,
      WEA(2) => memory_reg_0_3_i_1_n_0,
      WEA(1) => memory_reg_0_3_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(1),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_4_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_1_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_3_i_1_n_0,
      WEA(2) => memory_reg_0_3_i_1_n_0,
      WEA(1) => memory_reg_0_3_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_10: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_10_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_10_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_10_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(10),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_10_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_10_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(10),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_10_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_10_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_10_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_10_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_10_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_10_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_10_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_13_i_2_n_0,
      WEA(2) => memory_reg_0_13_i_2_n_0,
      WEA(1) => memory_reg_0_13_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_11: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_11_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_11_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_11_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(11),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_11_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_11_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(11),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_11_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_11_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_11_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_11_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_11_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_11_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_11_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_13_i_2_n_0,
      WEA(2) => memory_reg_0_13_i_2_n_0,
      WEA(1) => memory_reg_0_13_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_12: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_12_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_12_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_12_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(12),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_12_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_12_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(12),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_12_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_12_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_12_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_12_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_12_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_12_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_12_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_13_i_2_n_0,
      WEA(2) => memory_reg_0_13_i_2_n_0,
      WEA(1) => memory_reg_0_13_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_13: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_13_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_13_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_13_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(13),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_13_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_13_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(13),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_13_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_13_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_13_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_13_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_13_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_13_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_13_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_16_i_1_n_0,
      WEA(2) => memory_reg_0_16_i_1_n_0,
      WEA(1) => memory_reg_0_13_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_13_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_13_i_1_n_0
    );
memory_reg_0_13_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_13_i_2_n_0
    );
memory_reg_0_14: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_14_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_14_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_14_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(14),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_14_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_14_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(14),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_14_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_14_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_14_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_14_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_14_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_14_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_14_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_16_i_1_n_0,
      WEA(2) => memory_reg_0_16_i_1_n_0,
      WEA(1) => memory_reg_0_16_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_15: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_15_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_15_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_15_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(15),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_15_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_15_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(15),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_15_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_15_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_15_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_15_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_15_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_15_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_15_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_16_i_1_n_0,
      WEA(2) => memory_reg_0_16_i_1_n_0,
      WEA(1) => memory_reg_0_16_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_16: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_16_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_16_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_16_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(16),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_16_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_16_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(16),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_16_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_16_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_16_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_16_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_16_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_16_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_16_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_19_i_2_n_0,
      WEA(2) => memory_reg_0_16_i_1_n_0,
      WEA(1) => memory_reg_0_16_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_16_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_16_i_1_n_0
    );
memory_reg_0_17: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_17_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_17_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_17_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(17),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_17_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_17_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(17),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_17_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_17_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_17_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_17_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_17_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_17_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_17_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_19_i_2_n_0,
      WEA(2) => memory_reg_0_19_i_2_n_0,
      WEA(1) => memory_reg_0_19_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_18: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_18_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_18_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_18_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(18),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_18_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_18_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(18),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_18_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_18_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_18_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_18_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_18_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_18_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_18_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_19_i_2_n_0,
      WEA(2) => memory_reg_0_19_i_2_n_0,
      WEA(1) => memory_reg_0_19_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_19: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_19_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_19_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_19_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(19),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_19_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_19_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(19),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_19_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_19_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_19_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_19_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_19_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_19_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_19_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_19_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_19_i_2_n_0,
      WEA(2) => memory_reg_0_19_i_2_n_0,
      WEA(1) => memory_reg_0_19_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_19_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => memory_reg_0_31_i_6_n_0,
      I1 => bram_en,
      O => memory_reg_0_19_i_1_n_0
    );
memory_reg_0_19_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_19_i_2_n_0
    );
memory_reg_0_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_2_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(2),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_4_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_2_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_3_i_1_n_0,
      WEA(2) => memory_reg_0_3_i_1_n_0,
      WEA(1) => memory_reg_0_3_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_20: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_20_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_20_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_20_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(20),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_20_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_20_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(20),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_20_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_20_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_20_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_20_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_20_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_20_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_20_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_23_i_2_n_0,
      WEA(2) => memory_reg_0_23_i_2_n_0,
      WEA(1) => memory_reg_0_23_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_21: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_21_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_21_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_21_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(21),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_21_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_21_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(21),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_21_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_21_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_21_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_21_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_21_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_21_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_21_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_23_i_2_n_0,
      WEA(2) => memory_reg_0_23_i_2_n_0,
      WEA(1) => memory_reg_0_23_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_22: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_22_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_22_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_22_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(22),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_22_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_22_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(22),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_22_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_22_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_22_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_22_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_22_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_22_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_22_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_23_i_2_n_0,
      WEA(2) => memory_reg_0_23_i_2_n_0,
      WEA(1) => memory_reg_0_23_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_23: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_23_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_23_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_23_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(23),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_23_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_23_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(23),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_23_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_23_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_23_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_23_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_23_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_23_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_23_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_23_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_26_i_1_n_0,
      WEA(2) => memory_reg_0_26_i_1_n_0,
      WEA(1) => memory_reg_0_23_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_23_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_23_i_1_n_0
    );
memory_reg_0_23_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_23_i_2_n_0
    );
memory_reg_0_24: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_24_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_24_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_24_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(24),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_24_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_24_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(24),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_24_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_24_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_24_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_24_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_24_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_24_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_24_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_26_i_1_n_0,
      WEA(2) => memory_reg_0_26_i_1_n_0,
      WEA(1) => memory_reg_0_26_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_25: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_25_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_25_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_25_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(25),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_25_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_25_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(25),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_25_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_25_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_25_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_25_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_25_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_25_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_25_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_26_i_1_n_0,
      WEA(2) => memory_reg_0_26_i_1_n_0,
      WEA(1) => memory_reg_0_26_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_26: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_26_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_26_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_26_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(26),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_26_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_26_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(26),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_26_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_26_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_26_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_26_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_26_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_26_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_26_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_29_i_2_n_0,
      WEA(2) => memory_reg_0_26_i_1_n_0,
      WEA(1) => memory_reg_0_26_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_26_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_26_i_1_n_0
    );
memory_reg_0_27: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_27_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_27_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_27_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(27),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_27_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_27_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(27),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_27_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_27_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_27_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_27_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_27_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_27_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_27_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_29_i_2_n_0,
      WEA(2) => memory_reg_0_29_i_2_n_0,
      WEA(1) => memory_reg_0_29_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_28: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_28_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_28_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_28_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(28),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_28_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_28_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(28),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_28_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_28_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_28_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_28_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_28_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_28_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_28_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_29_i_2_n_0,
      WEA(2) => memory_reg_0_29_i_2_n_0,
      WEA(1) => memory_reg_0_29_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_29: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_29_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_29_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_29_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(29),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_29_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_29_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(29),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_29_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_29_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_29_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_29_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_29_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_29_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_29_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_29_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_29_i_2_n_0,
      WEA(2) => memory_reg_0_29_i_2_n_0,
      WEA(1) => memory_reg_0_29_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_29_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => memory_reg_0_31_i_6_n_0,
      I1 => bram_en,
      O => memory_reg_0_29_i_1_n_0
    );
memory_reg_0_29_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_29_i_2_n_0
    );
memory_reg_0_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_3_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(3),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_4_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_3_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_6_i_1_n_0,
      WEA(2) => memory_reg_0_6_i_1_n_0,
      WEA(1) => memory_reg_0_3_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_30: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_30_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_30_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_30_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(30),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_30_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_30_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(30),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_30_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_30_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_30_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_31_i_2_n_0,
      INJECTDBITERR => NLW_memory_reg_0_30_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_30_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_30_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_30_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_31_i_4_n_0,
      WEA(2) => memory_reg_0_31_i_4_n_0,
      WEA(1) => memory_reg_0_31_i_4_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_31: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_31_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_31_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_31_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(31),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_31_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_31_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(31),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_31_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_31_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_31_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_31_i_1_n_0,
      ENBWREN => memory_reg_0_31_i_2_n_0,
      INJECTDBITERR => NLW_memory_reg_0_31_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_31_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_31_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_31_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_31_i_4_n_0,
      WEA(2) => memory_reg_0_31_i_4_n_0,
      WEA(1) => memory_reg_0_31_i_4_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_31_i_1_n_0
    );
memory_reg_0_31_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => memory_reg_0_31_i_6_n_0,
      I1 => bram_en,
      O => memory_reg_0_31_i_2_n_0
    );
memory_reg_0_31_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAAAAAAA"
    )
        port map (
      I0 => memory_reg_0_31_i_6_n_0,
      I1 => memory_reg_0_31_i_7_n_0,
      I2 => memory_reg_0_31_i_8_n_0,
      I3 => bram_byte_addr(15),
      I4 => bram_en,
      I5 => bram_byte_addr(16),
      O => memory_reg_0_31_i_3_n_0
    );
memory_reg_0_31_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_31_i_4_n_0
    );
memory_reg_0_31_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557FFFFFFFFFFF"
    )
        port map (
      I0 => bram_addr(11),
      I1 => bram_addr(6),
      I2 => bram_addr(8),
      I3 => bram_addr(7),
      I4 => bram_addr(9),
      I5 => bram_addr(12),
      O => memory_reg_0_31_i_5_n_0
    );
memory_reg_0_31_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => bram_rst,
      I1 => bram_byte_addr(1),
      I2 => bram_byte_addr(0),
      I3 => bram_en,
      O => memory_reg_0_31_i_6_n_0
    );
memory_reg_0_31_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => bram_byte_addr(8),
      I1 => bram_byte_addr(9),
      I2 => bram_byte_addr(10),
      I3 => bram_byte_addr(11),
      O => memory_reg_0_31_i_7_n_0
    );
memory_reg_0_31_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => bram_byte_addr(14),
      I1 => bram_byte_addr(13),
      I2 => bram_byte_addr(12),
      O => memory_reg_0_31_i_8_n_0
    );
memory_reg_0_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_3_i_1_n_0
    );
memory_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(4),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_6_i_1_n_0,
      WEA(2) => memory_reg_0_6_i_1_n_0,
      WEA(1) => memory_reg_0_6_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(5),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_6_i_1_n_0,
      WEA(2) => memory_reg_0_6_i_1_n_0,
      WEA(1) => memory_reg_0_6_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(6),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_9_i_2_n_0,
      WEA(2) => memory_reg_0_6_i_1_n_0,
      WEA(1) => memory_reg_0_6_i_1_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_6_i_1_n_0
    );
memory_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(7),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_9_i_2_n_0,
      WEA(2) => memory_reg_0_9_i_2_n_0,
      WEA(1) => memory_reg_0_9_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_8: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_8_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_8_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_8_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(8),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_8_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_8_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(8),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_8_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_8_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_8_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_8_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_8_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_8_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_8_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_9_i_2_n_0,
      WEA(2) => memory_reg_0_9_i_2_n_0,
      WEA(1) => memory_reg_0_9_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_9: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => bram_addr(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => bram_byte_addr(16 downto 2),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_memory_reg_0_9_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_memory_reg_0_9_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => bram_clk,
      DBITERR => NLW_memory_reg_0_9_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => bram_wdata(9),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_memory_reg_0_9_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_memory_reg_0_9_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => bram_rddata(9),
      DOPADOP(3 downto 0) => NLW_memory_reg_0_9_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_memory_reg_0_9_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_memory_reg_0_9_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => memory_reg_0_13_i_1_n_0,
      ENBWREN => memory_reg_0_9_i_1_n_0,
      INJECTDBITERR => NLW_memory_reg_0_9_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_memory_reg_0_9_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_memory_reg_0_9_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => memory_reg_0_31_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_memory_reg_0_9_SBITERR_UNCONNECTED,
      WEA(3) => memory_reg_0_9_i_2_n_0,
      WEA(2) => memory_reg_0_9_i_2_n_0,
      WEA(1) => memory_reg_0_9_i_2_n_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
memory_reg_0_9_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => memory_reg_0_31_i_6_n_0,
      I1 => bram_en,
      O => memory_reg_0_9_i_1_n_0
    );
memory_reg_0_9_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55F70000"
    )
        port map (
      I0 => bram_addr(14),
      I1 => bram_addr(10),
      I2 => memory_reg_0_31_i_5_n_0,
      I3 => bram_addr(13),
      I4 => bram_we,
      O => memory_reg_0_9_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd is
  port (
    bram_rddata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_we : in STD_LOGIC;
    aclk : in STD_LOGIC;
    bram_clk : in STD_LOGIC;
    bram_byte_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : in STD_LOGIC;
    bram_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd : entity is "gray_snapshot_bram_bd";
end facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd;

architecture STRUCTURE of facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd is
begin
u_core: entity work.facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram
     port map (
      aclk => aclk,
      bram_addr(14 downto 0) => bram_addr(14 downto 0),
      bram_byte_addr(16 downto 0) => bram_byte_addr(16 downto 0),
      bram_clk => bram_clk,
      bram_en => bram_en,
      bram_rddata(31 downto 0) => bram_rddata(31 downto 0),
      bram_rst => bram_rst,
      bram_wdata(31 downto 0) => bram_wdata(31 downto 0),
      bram_we => bram_we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_bram_0_0 is
  port (
    aclk : in STD_LOGIC;
    bram_we : in STD_LOGIC;
    bram_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clk : in STD_LOGIC;
    bram_rst : in STD_LOGIC;
    bram_en : in STD_LOGIC;
    bram_byte_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrwe : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_rddata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_gray_snapshot_bram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_gray_snapshot_bram_0_0 : entity is "facebox_system_gray_snapshot_bram_0_0,gray_snapshot_bram_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_gray_snapshot_bram_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_gray_snapshot_bram_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_gray_snapshot_bram_0_0 : entity is "gray_snapshot_bram_bd,Vivado 2018.3";
end facebox_system_gray_snapshot_bram_0_0;

architecture STRUCTURE of facebox_system_gray_snapshot_bram_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_clk : signal is "xilinx.com:interface:bram:1.0 bram CLK";
  attribute X_INTERFACE_PARAMETER of bram_clk : signal is "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of bram_en : signal is "xilinx.com:interface:bram:1.0 bram EN";
  attribute X_INTERFACE_INFO of bram_rst : signal is "xilinx.com:interface:bram:1.0 bram RST";
  attribute X_INTERFACE_INFO of bram_byte_addr : signal is "xilinx.com:interface:bram:1.0 bram ADDR";
  attribute X_INTERFACE_INFO of bram_rddata : signal is "xilinx.com:interface:bram:1.0 bram DOUT";
  attribute X_INTERFACE_PARAMETER of bram_rddata : signal is "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_WIDTH 32, MEM_SIZE 131072, READ_LATENCY 1, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of bram_wrdata : signal is "xilinx.com:interface:bram:1.0 bram DIN";
  attribute X_INTERFACE_INFO of bram_wrwe : signal is "xilinx.com:interface:bram:1.0 bram WE";
begin
inst: entity work.facebox_system_gray_snapshot_bram_0_0_gray_snapshot_bram_bd
     port map (
      aclk => aclk,
      bram_addr(14 downto 0) => bram_addr(14 downto 0),
      bram_byte_addr(16 downto 0) => bram_byte_addr(16 downto 0),
      bram_clk => bram_clk,
      bram_en => bram_en,
      bram_rddata(31 downto 0) => bram_rddata(31 downto 0),
      bram_rst => bram_rst,
      bram_wdata(31 downto 0) => bram_wdata(31 downto 0),
      bram_we => bram_we
    );
end STRUCTURE;
