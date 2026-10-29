-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:19:59 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_rgb_lcd_timing_0_0/facebox_system_rgb_lcd_timing_0_0_stub.vhdl
-- Design      : facebox_system_rgb_lcd_timing_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_rgb_lcd_timing_0_0 is
  Port ( 
    lcd_pclk : in STD_LOGIC;
    lcd_rst_n : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    s_tready : out STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_tuser : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    lcd_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    lcd_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_de : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_bl : out STD_LOGIC;
    lcd_underflow_sticky : out STD_LOGIC
  );

end facebox_system_rgb_lcd_timing_0_0;

architecture stub of facebox_system_rgb_lcd_timing_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "lcd_pclk,lcd_rst_n,s_tvalid,s_tready,s_tdata[15:0],s_tuser,s_tlast,lcd_r[4:0],lcd_g[5:0],lcd_b[4:0],lcd_de,lcd_hsync,lcd_vsync,lcd_bl,lcd_underflow_sticky";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb_lcd_timing_bd,Vivado 2018.3";
begin
end;
