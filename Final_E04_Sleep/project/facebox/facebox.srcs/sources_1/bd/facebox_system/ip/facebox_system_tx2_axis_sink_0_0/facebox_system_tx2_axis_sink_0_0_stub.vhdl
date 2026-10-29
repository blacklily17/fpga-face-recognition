-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:22:44 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_tx2_axis_sink_0_0/facebox_system_tx2_axis_sink_0_0_stub.vhdl
-- Design      : facebox_system_tx2_axis_sink_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_tx2_axis_sink_0_0 is
  Port ( 
    pixel_clk : in STD_LOGIC;
    serial_clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    s_tready : out STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_tuser : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    box_src_clk : in STD_LOGIC;
    box_src_rst_n : in STD_LOGIC;
    box_send : in STD_LOGIC;
    box_recover : in STD_LOGIC;
    box_invalidate : in STD_LOGIC;
    hdmi_disable : in STD_LOGIC;
    box_payload : in STD_LOGIC_VECTOR ( 447 downto 0 );
    box_busy : out STD_LOGIC;
    box_ack : out STD_LOGIC;
    box_timeout : out STD_LOGIC;
    box_channel_ready : out STD_LOGIC;
    box_reset_event : out STD_LOGIC;
    box_expired : out STD_LOGIC
  );

end facebox_system_tx2_axis_sink_0_0;

architecture stub of facebox_system_tx2_axis_sink_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clk,serial_clk,rst_n,s_tvalid,s_tready,s_tdata[15:0],s_tuser,s_tlast,tmds_data_p[2:0],tmds_data_n[2:0],tmds_clk_p,tmds_clk_n,status[31:0],box_src_clk,box_src_rst_n,box_send,box_recover,box_invalidate,hdmi_disable,box_payload[447:0],box_busy,box_ack,box_timeout,box_channel_ready,box_reset_event,box_expired";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tx2_axis_sink,Vivado 2018.3";
begin
end;
