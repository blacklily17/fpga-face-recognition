-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:21:47 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_ack_tracker_0_0/facebox_system_overlay_ack_tracker_0_0_stub.vhdl
-- Design      : facebox_system_overlay_ack_tracker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_overlay_ack_tracker_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ack : in STD_LOGIC;
    invalidate : in STD_LOGIC;
    sequence_value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    acknowledged_sequence : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end facebox_system_overlay_ack_tracker_0_0;

architecture stub of facebox_system_overlay_ack_tracker_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,ack,invalidate,sequence_value[31:0],acknowledged_sequence[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "overlay_ack_tracker_bd,Vivado 2018.3";
begin
end;
