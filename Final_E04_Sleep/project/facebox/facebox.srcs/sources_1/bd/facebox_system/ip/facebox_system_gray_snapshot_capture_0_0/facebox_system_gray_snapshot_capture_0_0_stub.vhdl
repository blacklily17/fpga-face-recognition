-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:21:45 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_capture_0_0/facebox_system_gray_snapshot_capture_0_0_stub.vhdl
-- Design      : facebox_system_gray_snapshot_capture_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_gray_snapshot_capture_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    gray_valid : in STD_LOGIC;
    gray_sof : in STD_LOGIC;
    gray_eol : in STD_LOGIC;
    gray_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_abort : in STD_LOGIC;
    frame_commit : in STD_LOGIC;
    request : in STD_LOGIC;
    release_frame : in STD_LOGIC;
    cancel : in STD_LOGIC;
    clear_error : in STD_LOGIC;
    committed_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    verdict_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    verdict_valid : in STD_LOGIC;
    verdict_good : in STD_LOGIC;
    provenance_fault : in STD_LOGIC;
    time_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    busy : out STD_LOGIC;
    ready : out STD_LOGIC;
    error : out STD_LOGIC;
    snap_request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_frame_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_epoch : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_error_code : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_source_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_commit_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_we : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_ready_event : out STD_LOGIC;
    snap_abort_event : out STD_LOGIC;
    format_error_event : out STD_LOGIC;
    snap_timeout_event : out STD_LOGIC
  );

end facebox_system_gray_snapshot_capture_0_0;

architecture stub of facebox_system_gray_snapshot_capture_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,gray_valid,gray_sof,gray_eol,gray_data[7:0],frame_abort,frame_commit,request,release_frame,cancel,clear_error,committed_frame_id[31:0],request_id[31:0],epoch[31:0],gray_source_id[31:0],verdict_source_id[31:0],verdict_valid,verdict_good,provenance_fault,time_ticks[63:0],busy,ready,error,snap_request_id[31:0],snap_frame_id[31:0],snap_epoch[31:0],snap_error_code[31:0],snap_source_ticks[63:0],snap_commit_ticks[63:0],bram_we,bram_addr[14:0],bram_wdata[31:0],snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gray_snapshot_capture_bd,Vivado 2018.3";
begin
end;
