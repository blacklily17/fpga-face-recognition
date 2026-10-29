-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:22:58 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_bram_0_0/facebox_system_gray_snapshot_bram_0_0_stub.vhdl
-- Design      : facebox_system_gray_snapshot_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_gray_snapshot_bram_0_0 is
  Port ( 
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

end facebox_system_gray_snapshot_bram_0_0;

architecture stub of facebox_system_gray_snapshot_bram_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,bram_we,bram_addr[14:0],bram_wdata[31:0],bram_clk,bram_rst,bram_en,bram_byte_addr[16:0],bram_wrdata[31:0],bram_wrwe[3:0],bram_rddata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gray_snapshot_bram_bd,Vivado 2018.3";
begin
end;
