-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:20:35 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_real_camera_source_0_0/facebox_system_real_camera_source_0_0_stub.vhdl
-- Design      : facebox_system_real_camera_source_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_real_camera_source_0_0 is
  Port ( 
    sys_clk50 : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    xclk24 : in STD_LOGIC;
    cam_xclk : out STD_LOGIC;
    cam_scl : out STD_LOGIC;
    cam_sda : inout STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    capture_enable : in STD_LOGIC;
    sleep_request : in STD_LOGIC;
    sleep_status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_tap_valid : out STD_LOGIC;
    gray_tap_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gray_tap_sof : out STD_LOGIC;
    gray_tap_eol : out STD_LOGIC;
    gray_tap_abort : out STD_LOGIC;
    gray_tap_commit : out STD_LOGIC;
    gray_tap_frame_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_tap_resetn : out STD_LOGIC;
    gray_tap_source_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_tap_verdict_source_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_tap_verdict_valid : out STD_LOGIC;
    gray_tap_verdict_good : out STD_LOGIC;
    gray_tap_provenance_fault : out STD_LOGIC
  );

end facebox_system_real_camera_source_0_0;

architecture stub of facebox_system_real_camera_source_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk50,sys_rst_n,xclk24,cam_xclk,cam_scl,cam_sda,cam_pclk,cam_vsync,cam_href,cam_data[7:0],aclk,aresetn,capture_enable,sleep_request,sleep_status[31:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[15:0],m_axis_tuser,m_axis_tlast,status[31:0],gray_tap_valid,gray_tap_data[7:0],gray_tap_sof,gray_tap_eol,gray_tap_abort,gray_tap_commit,gray_tap_frame_id[31:0],gray_tap_resetn,gray_tap_source_id[31:0],gray_tap_verdict_source_id[31:0],gray_tap_verdict_valid,gray_tap_verdict_good,gray_tap_provenance_fault";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "real_camera_wp2_wp3_axis_source,Vivado 2018.3";
begin
end;
