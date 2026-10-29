-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:20:51 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_regs_0_0/facebox_system_overlay_regs_0_0_stub.vhdl
-- Design      : facebox_system_overlay_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity facebox_system_overlay_regs_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_busy : in STD_LOGIC;
    snap_ready : in STD_LOGIC;
    snap_error : in STD_LOGIC;
    mailbox_busy : in STD_LOGIC;
    channel_ready : in STD_LOGIC;
    channel_reset_event : in STD_LOGIC;
    snap_request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_error_code : in STD_LOGIC_VECTOR ( 31 downto 0 );
    box_ack_sequence : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_source_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_commit_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_ready_event : in STD_LOGIC;
    snap_abort_event : in STD_LOGIC;
    format_error_event : in STD_LOGIC;
    snap_timeout_event : in STD_LOGIC;
    box_expire_event : in STD_LOGIC;
    mailbox_timeout_event : in STD_LOGIC;
    request : out STD_LOGIC;
    release_frame : out STD_LOGIC;
    cancel : out STD_LOGIC;
    clear_error : out STD_LOGIC;
    box_send : out STD_LOGIC;
    mailbox_recover : out STD_LOGIC;
    epoch_changed : out STD_LOGIC;
    request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    epoch : out STD_LOGIC_VECTOR ( 31 downto 0 );
    box_shadow : out STD_LOGIC_VECTOR ( 447 downto 0 );
    time_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end facebox_system_overlay_regs_0_0;

architecture stub of facebox_system_overlay_regs_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awaddr[15:0],s_axi_araddr[15:0],s_axi_awvalid,s_axi_wvalid,s_axi_bready,s_axi_arvalid,s_axi_rready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_awready,s_axi_wready,s_axi_bvalid,s_axi_arready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_rresp[1:0],s_axi_rdata[31:0],snap_busy,snap_ready,snap_error,mailbox_busy,channel_ready,channel_reset_event,snap_request_id[31:0],snap_frame_id[31:0],snap_epoch[31:0],snap_error_code[31:0],box_ack_sequence[31:0],snap_source_ticks[63:0],snap_commit_ticks[63:0],snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event,box_expire_event,mailbox_timeout_event,request,release_frame,cancel,clear_error,box_send,mailbox_recover,epoch_changed,request_id[31:0],epoch[31:0],box_shadow[447:0],time_ticks[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "overlay_regs_bd,Vivado 2018.3";
begin
end;
