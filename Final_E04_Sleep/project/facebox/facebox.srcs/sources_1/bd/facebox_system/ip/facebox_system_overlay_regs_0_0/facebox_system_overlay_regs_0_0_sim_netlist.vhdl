-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:20:51 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_regs_0_0/facebox_system_overlay_regs_0_0_sim_netlist.vhdl
-- Design      : facebox_system_overlay_regs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_regs_0_0_overlay_regs is
  port (
    request : out STD_LOGIC;
    release_frame : out STD_LOGIC;
    cancel : out STD_LOGIC;
    clear_error : out STD_LOGIC;
    box_send : out STD_LOGIC;
    mailbox_recover : out STD_LOGIC;
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    w_full_reg_0 : out STD_LOGIC;
    aw_full : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    \epoch_refresh_phase_reg[0]_0\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    epoch_changed : out STD_LOGIC;
    snap_error_0 : out STD_LOGIC;
    \aw_addr_reg[1]_0\ : out STD_LOGIC;
    \aw_addr_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \aw_addr_reg[4]_0\ : out STD_LOGIC;
    box_shadow : out STD_LOGIC_VECTOR ( 447 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    time_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    channel_reset_event_0 : out STD_LOGIC;
    channel_ready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bvalid_reg_1 : in STD_LOGIC;
    w_full_reg_1 : in STD_LOGIC;
    aw_full_reg_0 : in STD_LOGIC;
    s_axi_rvalid_reg_1 : in STD_LOGIC;
    \epoch_refresh_phase_reg[0]_1\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    snap_ready_event : in STD_LOGIC;
    snap_abort_event : in STD_LOGIC;
    format_error_event : in STD_LOGIC;
    snap_timeout_event : in STD_LOGIC;
    box_expire_event : in STD_LOGIC;
    mailbox_timeout_event : in STD_LOGIC;
    channel_reset_event : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    snap_request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mailbox_busy : in STD_LOGIC;
    snap_ready : in STD_LOGIC;
    snap_busy : in STD_LOGIC;
    snap_error : in STD_LOGIC;
    snap_epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_commit_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_source_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    box_ack_sequence : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_error_code : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_overlay_regs_0_0_overlay_regs : entity is "overlay_regs";
end facebox_system_overlay_regs_0_0_overlay_regs;

architecture STRUCTURE of facebox_system_overlay_regs_0_0_overlay_regs is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \abort_count[0]_i_2_n_0\ : STD_LOGIC;
  signal abort_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \abort_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \abort_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal aw_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^aw_addr_reg[1]_0\ : STD_LOGIC;
  signal \^aw_addr_reg[2]_0\ : STD_LOGIC;
  signal \^aw_addr_reg[4]_0\ : STD_LOGIC;
  signal \^aw_full\ : STD_LOGIC;
  signal aw_full0 : STD_LOGIC;
  signal aw_full012_out : STD_LOGIC;
  signal box_commits : STD_LOGIC;
  signal \box_commits[0]_i_3_n_0\ : STD_LOGIC;
  signal box_commits_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \box_commits_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \box_commits_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \box_commits_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires[0]_i_2_n_0\ : STD_LOGIC;
  signal box_expires_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \box_expires_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \box_expires_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal box_send_i_1_n_0 : STD_LOGIC;
  signal \^box_shadow\ : STD_LOGIC_VECTOR ( 447 downto 0 );
  signal byte_merge1_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal byte_merge_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cancel_i_1_n_0 : STD_LOGIC;
  signal cancel_i_2_n_0 : STD_LOGIC;
  signal channel_ready_q : STD_LOGIC;
  signal clear_error_i_1_n_0 : STD_LOGIC;
  signal command_legal10_out : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \command_legal1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal command_legal_n_0 : STD_LOGIC;
  signal \epoch[31]_i_1_n_0\ : STD_LOGIC;
  signal \epoch[31]_i_3_n_0\ : STD_LOGIC;
  signal \epoch[31]_i_4_n_0\ : STD_LOGIC;
  signal \epoch[31]_i_5_n_0\ : STD_LOGIC;
  signal \epoch[31]_i_6_n_0\ : STD_LOGIC;
  signal epoch_changed_i_1_n_0 : STD_LOGIC;
  signal epoch_changed_i_2_n_0 : STD_LOGIC;
  signal \epoch_refresh_phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \epoch_refresh_phase[1]_i_2_n_0\ : STD_LOGIC;
  signal \^epoch_refresh_phase_reg[0]_0\ : STD_LOGIC;
  signal \epoch_refresh_phase_reg_n_0_[1]\ : STD_LOGIC;
  signal epoch_refresh_required_i_1_n_0 : STD_LOGIC;
  signal epoch_refresh_required_i_2_n_0 : STD_LOGIC;
  signal epoch_refresh_required_reg_n_0 : STD_LOGIC;
  signal \format_errors[0]_i_2_n_0\ : STD_LOGIC;
  signal format_errors_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \format_errors_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \format_errors_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal mailbox_recover_i_1_n_0 : STD_LOGIC;
  signal \mailbox_timeouts[0]_i_2_n_0\ : STD_LOGIC;
  signal mailbox_timeouts_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mailbox_timeouts_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \mailbox_timeouts_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \p_0_out_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ready_count[0]_i_2_n_0\ : STD_LOGIC;
  signal ready_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ready_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ready_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal release_frame_i_1_n_0 : STD_LOGIC;
  signal request_i_10_n_0 : STD_LOGIC;
  signal request_i_11_n_0 : STD_LOGIC;
  signal request_i_12_n_0 : STD_LOGIC;
  signal request_i_1_n_0 : STD_LOGIC;
  signal request_i_2_n_0 : STD_LOGIC;
  signal request_i_4_n_0 : STD_LOGIC;
  signal request_i_5_n_0 : STD_LOGIC;
  signal request_i_6_n_0 : STD_LOGIC;
  signal request_i_7_n_0 : STD_LOGIC;
  signal request_i_8_n_0 : STD_LOGIC;
  signal request_i_9_n_0 : STD_LOGIC;
  signal \^request_id\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \request_id[15]_i_1_n_0\ : STD_LOGIC;
  signal \request_id[23]_i_1_n_0\ : STD_LOGIC;
  signal \request_id[31]_i_1_n_0\ : STD_LOGIC;
  signal \request_id[31]_i_2_n_0\ : STD_LOGIC;
  signal \request_id[7]_i_1_n_0\ : STD_LOGIC;
  signal requests : STD_LOGIC;
  signal \requests[0]_i_3_n_0\ : STD_LOGIC;
  signal requests_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \requests_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \requests_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \requests_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_18_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_19_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_20_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_21_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_22_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_23_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_24_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_25_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_26_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_27_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_28_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_29_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_30_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_31_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_32_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_33_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_34_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_35_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_36_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_37_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_38_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_39_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_40_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_41_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_42_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_43_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_9_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_18_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_15_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_16_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_17_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_13_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_14_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[28]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_8_n_0\ : STD_LOGIC;
  signal s_axi_rvalid09_out : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \shadow[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[10][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[10][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[11][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[11][31]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[11][31]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[12][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[12][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][0]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][0]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][0]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][0]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][10]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][10]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][10]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][10]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][10]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][11]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][11]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][11]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][11]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][11]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][12]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][12]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][12]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][12]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][12]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][13]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][13]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][13]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][13]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][14]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][14]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][14]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][14]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][14]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][15]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][15]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][15]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][15]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][15]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][16]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][16]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][16]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][16]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][16]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][17]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][17]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][17]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][17]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][17]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][18]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][18]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][18]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][18]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][18]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][19]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][19]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][19]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][19]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][19]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][1]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][1]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][1]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][1]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][1]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][20]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][20]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][20]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][20]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][20]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][21]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][21]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][21]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][21]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][21]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][22]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][22]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][22]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][22]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][22]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][23]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][23]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][23]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][23]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][23]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][24]_i_7_n_0\ : STD_LOGIC;
  signal \shadow[13][25]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][25]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][25]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][25]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][25]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][26]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][26]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][26]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][26]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][26]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][27]_i_7_n_0\ : STD_LOGIC;
  signal \shadow[13][28]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][28]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][28]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][28]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][28]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][29]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][29]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][29]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][29]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][29]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][2]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][2]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][2]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][2]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][2]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][30]_i_7_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_10_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_11_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_12_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_13_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_14_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_15_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_16_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_17_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_7_n_0\ : STD_LOGIC;
  signal \shadow[13][31]_i_9_n_0\ : STD_LOGIC;
  signal \shadow[13][3]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][3]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][3]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][3]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][3]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][4]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][4]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][4]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][4]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][4]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][5]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][5]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][5]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][5]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][5]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][6]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][6]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][6]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][6]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][6]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][7]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][7]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][7]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][8]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][8]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][8]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][8]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][8]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[13][9]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[13][9]_i_3_n_0\ : STD_LOGIC;
  signal \shadow[13][9]_i_4_n_0\ : STD_LOGIC;
  signal \shadow[13][9]_i_5_n_0\ : STD_LOGIC;
  signal \shadow[13][9]_i_6_n_0\ : STD_LOGIC;
  signal \shadow[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[3][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[7][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow[8][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[9][31]_i_1_n_0\ : STD_LOGIC;
  signal \shadow[9][31]_i_2_n_0\ : STD_LOGIC;
  signal \shadow_reg[13][0]_i_3_n_0\ : STD_LOGIC;
  signal \shadow_reg[13][13]_i_3_n_0\ : STD_LOGIC;
  signal \shadow_reg[13][31]_i_8_n_0\ : STD_LOGIC;
  signal \shadow_reg[13][7]_i_3_n_0\ : STD_LOGIC;
  signal \^snap_error_0\ : STD_LOGIC;
  signal \snap_timeouts[0]_i_2_n_0\ : STD_LOGIC;
  signal snap_timeouts_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \snap_timeouts_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \snap_timeouts_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^time_ticks\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \time_ticks[3]_i_2_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[63]_i_1_n_7\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \time_ticks_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \w_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \w_data_reg_n_0_[7]\ : STD_LOGIC;
  signal w_full0 : STD_LOGIC;
  signal \^w_full_reg_0\ : STD_LOGIC;
  signal \w_strobe_reg_n_0_[0]\ : STD_LOGIC;
  signal \w_strobe_reg_n_0_[2]\ : STD_LOGIC;
  signal \w_strobe_reg_n_0_[3]\ : STD_LOGIC;
  signal write_legal2 : STD_LOGIC;
  signal \write_legal2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__0_n_1\ : STD_LOGIC;
  signal \write_legal2_carry__0_n_2\ : STD_LOGIC;
  signal \write_legal2_carry__0_n_3\ : STD_LOGIC;
  signal \write_legal2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \write_legal2_carry__1_n_2\ : STD_LOGIC;
  signal \write_legal2_carry__1_n_3\ : STD_LOGIC;
  signal write_legal2_carry_i_1_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_2_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_3_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_4_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_5_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_6_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_7_n_0 : STD_LOGIC;
  signal write_legal2_carry_i_8_n_0 : STD_LOGIC;
  signal write_legal2_carry_n_0 : STD_LOGIC;
  signal write_legal2_carry_n_1 : STD_LOGIC;
  signal write_legal2_carry_n_2 : STD_LOGIC;
  signal write_legal2_carry_n_3 : STD_LOGIC;
  signal \NLW_abort_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_box_commits_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_box_expires_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_command_legal1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_legal1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_legal1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_command_legal1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_legal1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_legal1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_legal1_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_command_legal1_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_format_errors_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mailbox_timeouts_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_0_out_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_p_0_out_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ready_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_requests_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_snap_timeouts_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_ticks_reg[63]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_write_legal2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_legal2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_legal2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_legal2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \epoch[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \epoch[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \epoch[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \epoch[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \epoch[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \epoch[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \epoch[15]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \epoch[16]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \epoch[17]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \epoch[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \epoch[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \epoch[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \epoch[20]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \epoch[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \epoch[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \epoch[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \epoch[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \epoch[26]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \epoch[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \epoch[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \epoch[29]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \epoch[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \epoch[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \epoch[31]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \epoch[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \epoch[31]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \epoch[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \epoch[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \epoch[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \epoch[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \epoch[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \epoch[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \epoch[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of epoch_changed_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \epoch_refresh_phase[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \epoch_refresh_phase[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of epoch_refresh_required_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of request_i_3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of request_i_6 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_20\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_25\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_26\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_33\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_37\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_38\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_39\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_40\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_41\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_42\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_15\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_i_15\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_i_15\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_16\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_i_14\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_i_15\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_i_16\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_i_14\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_i_15\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_16\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_i_16\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_i_16\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \shadow[10][31]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \shadow[11][31]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \shadow[12][31]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \shadow[13][24]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shadow[13][26]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shadow[13][27]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shadow[13][27]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shadow[13][28]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shadow[13][29]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shadow[13][30]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shadow[13][31]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \shadow[13][31]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shadow[9][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_legal2_carry__0_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \write_legal2_carry__0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_legal2_carry__0_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \write_legal2_carry__1_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_legal2_carry__1_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of write_legal2_carry_i_5 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of write_legal2_carry_i_6 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of write_legal2_carry_i_7 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of write_legal2_carry_i_8 : label is "soft_lutpair28";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  \aw_addr_reg[1]_0\ <= \^aw_addr_reg[1]_0\;
  \aw_addr_reg[2]_0\ <= \^aw_addr_reg[2]_0\;
  \aw_addr_reg[4]_0\ <= \^aw_addr_reg[4]_0\;
  aw_full <= \^aw_full\;
  box_shadow(447 downto 0) <= \^box_shadow\(447 downto 0);
  \epoch_refresh_phase_reg[0]_0\ <= \^epoch_refresh_phase_reg[0]_0\;
  request_id(31 downto 0) <= \^request_id\(31 downto 0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rresp(0) <= \^s_axi_rresp\(0);
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  snap_error_0 <= \^snap_error_0\;
  time_ticks(63 downto 0) <= \^time_ticks\(63 downto 0);
  w_full_reg_0 <= \^w_full_reg_0\;
\abort_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abort_count_reg(0),
      O => \abort_count[0]_i_2_n_0\
    );
\abort_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[0]_i_1_n_7\,
      Q => abort_count_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \abort_count_reg[0]_i_1_n_0\,
      CO(2) => \abort_count_reg[0]_i_1_n_1\,
      CO(1) => \abort_count_reg[0]_i_1_n_2\,
      CO(0) => \abort_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \abort_count_reg[0]_i_1_n_4\,
      O(2) => \abort_count_reg[0]_i_1_n_5\,
      O(1) => \abort_count_reg[0]_i_1_n_6\,
      O(0) => \abort_count_reg[0]_i_1_n_7\,
      S(3 downto 1) => abort_count_reg(3 downto 1),
      S(0) => \abort_count[0]_i_2_n_0\
    );
\abort_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[8]_i_1_n_5\,
      Q => abort_count_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[8]_i_1_n_4\,
      Q => abort_count_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[12]_i_1_n_7\,
      Q => abort_count_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[8]_i_1_n_0\,
      CO(3) => \abort_count_reg[12]_i_1_n_0\,
      CO(2) => \abort_count_reg[12]_i_1_n_1\,
      CO(1) => \abort_count_reg[12]_i_1_n_2\,
      CO(0) => \abort_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[12]_i_1_n_4\,
      O(2) => \abort_count_reg[12]_i_1_n_5\,
      O(1) => \abort_count_reg[12]_i_1_n_6\,
      O(0) => \abort_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(15 downto 12)
    );
\abort_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[12]_i_1_n_6\,
      Q => abort_count_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[12]_i_1_n_5\,
      Q => abort_count_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[12]_i_1_n_4\,
      Q => abort_count_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[16]_i_1_n_7\,
      Q => abort_count_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[12]_i_1_n_0\,
      CO(3) => \abort_count_reg[16]_i_1_n_0\,
      CO(2) => \abort_count_reg[16]_i_1_n_1\,
      CO(1) => \abort_count_reg[16]_i_1_n_2\,
      CO(0) => \abort_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[16]_i_1_n_4\,
      O(2) => \abort_count_reg[16]_i_1_n_5\,
      O(1) => \abort_count_reg[16]_i_1_n_6\,
      O(0) => \abort_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(19 downto 16)
    );
\abort_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[16]_i_1_n_6\,
      Q => abort_count_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[16]_i_1_n_5\,
      Q => abort_count_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[16]_i_1_n_4\,
      Q => abort_count_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[0]_i_1_n_6\,
      Q => abort_count_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[20]_i_1_n_7\,
      Q => abort_count_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[16]_i_1_n_0\,
      CO(3) => \abort_count_reg[20]_i_1_n_0\,
      CO(2) => \abort_count_reg[20]_i_1_n_1\,
      CO(1) => \abort_count_reg[20]_i_1_n_2\,
      CO(0) => \abort_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[20]_i_1_n_4\,
      O(2) => \abort_count_reg[20]_i_1_n_5\,
      O(1) => \abort_count_reg[20]_i_1_n_6\,
      O(0) => \abort_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(23 downto 20)
    );
\abort_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[20]_i_1_n_6\,
      Q => abort_count_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[20]_i_1_n_5\,
      Q => abort_count_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[20]_i_1_n_4\,
      Q => abort_count_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[24]_i_1_n_7\,
      Q => abort_count_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[20]_i_1_n_0\,
      CO(3) => \abort_count_reg[24]_i_1_n_0\,
      CO(2) => \abort_count_reg[24]_i_1_n_1\,
      CO(1) => \abort_count_reg[24]_i_1_n_2\,
      CO(0) => \abort_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[24]_i_1_n_4\,
      O(2) => \abort_count_reg[24]_i_1_n_5\,
      O(1) => \abort_count_reg[24]_i_1_n_6\,
      O(0) => \abort_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(27 downto 24)
    );
\abort_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[24]_i_1_n_6\,
      Q => abort_count_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[24]_i_1_n_5\,
      Q => abort_count_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[24]_i_1_n_4\,
      Q => abort_count_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[28]_i_1_n_7\,
      Q => abort_count_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_abort_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \abort_count_reg[28]_i_1_n_1\,
      CO(1) => \abort_count_reg[28]_i_1_n_2\,
      CO(0) => \abort_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[28]_i_1_n_4\,
      O(2) => \abort_count_reg[28]_i_1_n_5\,
      O(1) => \abort_count_reg[28]_i_1_n_6\,
      O(0) => \abort_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(31 downto 28)
    );
\abort_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[28]_i_1_n_6\,
      Q => abort_count_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[0]_i_1_n_5\,
      Q => abort_count_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[28]_i_1_n_5\,
      Q => abort_count_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[28]_i_1_n_4\,
      Q => abort_count_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[0]_i_1_n_4\,
      Q => abort_count_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[4]_i_1_n_7\,
      Q => abort_count_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[0]_i_1_n_0\,
      CO(3) => \abort_count_reg[4]_i_1_n_0\,
      CO(2) => \abort_count_reg[4]_i_1_n_1\,
      CO(1) => \abort_count_reg[4]_i_1_n_2\,
      CO(0) => \abort_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[4]_i_1_n_4\,
      O(2) => \abort_count_reg[4]_i_1_n_5\,
      O(1) => \abort_count_reg[4]_i_1_n_6\,
      O(0) => \abort_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(7 downto 4)
    );
\abort_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[4]_i_1_n_6\,
      Q => abort_count_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[4]_i_1_n_5\,
      Q => abort_count_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[4]_i_1_n_4\,
      Q => abort_count_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[8]_i_1_n_7\,
      Q => abort_count_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\abort_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \abort_count_reg[4]_i_1_n_0\,
      CO(3) => \abort_count_reg[8]_i_1_n_0\,
      CO(2) => \abort_count_reg[8]_i_1_n_1\,
      CO(1) => \abort_count_reg[8]_i_1_n_2\,
      CO(0) => \abort_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \abort_count_reg[8]_i_1_n_4\,
      O(2) => \abort_count_reg[8]_i_1_n_5\,
      O(1) => \abort_count_reg[8]_i_1_n_6\,
      O(0) => \abort_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => abort_count_reg(11 downto 8)
    );
\abort_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_abort_event,
      D => \abort_count_reg[8]_i_1_n_6\,
      Q => abort_count_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => \^aw_full\,
      O => aw_full0
    );
\aw_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(0),
      Q => aw_addr(0),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(10),
      Q => aw_addr(10),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(11),
      Q => aw_addr(11),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(12),
      Q => aw_addr(12),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(13),
      Q => aw_addr(13),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(14),
      Q => aw_addr(14),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(15),
      Q => aw_addr(15),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(1),
      Q => aw_addr(1),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(2),
      Q => aw_addr(2),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(3),
      Q => aw_addr(3),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(4),
      Q => aw_addr(4),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(5),
      Q => aw_addr(5),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(6),
      Q => aw_addr(6),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(7),
      Q => aw_addr(7),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(8),
      Q => aw_addr(8),
      R => s_axi_bvalid_i_1_n_0
    );
\aw_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_full0,
      D => s_axi_awaddr(9),
      Q => aw_addr(9),
      R => s_axi_bvalid_i_1_n_0
    );
aw_full_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => aw_full_reg_0,
      Q => \^aw_full\,
      R => '0'
    );
\box_commits[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222202"
    )
        port map (
      I0 => box_send_i_1_n_0,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => request_i_4_n_0,
      O => box_commits
    );
\box_commits[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => box_commits_reg(0),
      O => \box_commits[0]_i_3_n_0\
    );
\box_commits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[0]_i_2_n_7\,
      Q => box_commits_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \box_commits_reg[0]_i_2_n_0\,
      CO(2) => \box_commits_reg[0]_i_2_n_1\,
      CO(1) => \box_commits_reg[0]_i_2_n_2\,
      CO(0) => \box_commits_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \box_commits_reg[0]_i_2_n_4\,
      O(2) => \box_commits_reg[0]_i_2_n_5\,
      O(1) => \box_commits_reg[0]_i_2_n_6\,
      O(0) => \box_commits_reg[0]_i_2_n_7\,
      S(3 downto 1) => box_commits_reg(3 downto 1),
      S(0) => \box_commits[0]_i_3_n_0\
    );
\box_commits_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[8]_i_1_n_5\,
      Q => box_commits_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[8]_i_1_n_4\,
      Q => box_commits_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[12]_i_1_n_7\,
      Q => box_commits_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[8]_i_1_n_0\,
      CO(3) => \box_commits_reg[12]_i_1_n_0\,
      CO(2) => \box_commits_reg[12]_i_1_n_1\,
      CO(1) => \box_commits_reg[12]_i_1_n_2\,
      CO(0) => \box_commits_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[12]_i_1_n_4\,
      O(2) => \box_commits_reg[12]_i_1_n_5\,
      O(1) => \box_commits_reg[12]_i_1_n_6\,
      O(0) => \box_commits_reg[12]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(15 downto 12)
    );
\box_commits_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[12]_i_1_n_6\,
      Q => box_commits_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[12]_i_1_n_5\,
      Q => box_commits_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[12]_i_1_n_4\,
      Q => box_commits_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[16]_i_1_n_7\,
      Q => box_commits_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[12]_i_1_n_0\,
      CO(3) => \box_commits_reg[16]_i_1_n_0\,
      CO(2) => \box_commits_reg[16]_i_1_n_1\,
      CO(1) => \box_commits_reg[16]_i_1_n_2\,
      CO(0) => \box_commits_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[16]_i_1_n_4\,
      O(2) => \box_commits_reg[16]_i_1_n_5\,
      O(1) => \box_commits_reg[16]_i_1_n_6\,
      O(0) => \box_commits_reg[16]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(19 downto 16)
    );
\box_commits_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[16]_i_1_n_6\,
      Q => box_commits_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[16]_i_1_n_5\,
      Q => box_commits_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[16]_i_1_n_4\,
      Q => box_commits_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[0]_i_2_n_6\,
      Q => box_commits_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[20]_i_1_n_7\,
      Q => box_commits_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[16]_i_1_n_0\,
      CO(3) => \box_commits_reg[20]_i_1_n_0\,
      CO(2) => \box_commits_reg[20]_i_1_n_1\,
      CO(1) => \box_commits_reg[20]_i_1_n_2\,
      CO(0) => \box_commits_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[20]_i_1_n_4\,
      O(2) => \box_commits_reg[20]_i_1_n_5\,
      O(1) => \box_commits_reg[20]_i_1_n_6\,
      O(0) => \box_commits_reg[20]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(23 downto 20)
    );
\box_commits_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[20]_i_1_n_6\,
      Q => box_commits_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[20]_i_1_n_5\,
      Q => box_commits_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[20]_i_1_n_4\,
      Q => box_commits_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[24]_i_1_n_7\,
      Q => box_commits_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[20]_i_1_n_0\,
      CO(3) => \box_commits_reg[24]_i_1_n_0\,
      CO(2) => \box_commits_reg[24]_i_1_n_1\,
      CO(1) => \box_commits_reg[24]_i_1_n_2\,
      CO(0) => \box_commits_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[24]_i_1_n_4\,
      O(2) => \box_commits_reg[24]_i_1_n_5\,
      O(1) => \box_commits_reg[24]_i_1_n_6\,
      O(0) => \box_commits_reg[24]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(27 downto 24)
    );
\box_commits_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[24]_i_1_n_6\,
      Q => box_commits_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[24]_i_1_n_5\,
      Q => box_commits_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[24]_i_1_n_4\,
      Q => box_commits_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[28]_i_1_n_7\,
      Q => box_commits_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[24]_i_1_n_0\,
      CO(3) => \NLW_box_commits_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \box_commits_reg[28]_i_1_n_1\,
      CO(1) => \box_commits_reg[28]_i_1_n_2\,
      CO(0) => \box_commits_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[28]_i_1_n_4\,
      O(2) => \box_commits_reg[28]_i_1_n_5\,
      O(1) => \box_commits_reg[28]_i_1_n_6\,
      O(0) => \box_commits_reg[28]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(31 downto 28)
    );
\box_commits_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[28]_i_1_n_6\,
      Q => box_commits_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[0]_i_2_n_5\,
      Q => box_commits_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[28]_i_1_n_5\,
      Q => box_commits_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[28]_i_1_n_4\,
      Q => box_commits_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[0]_i_2_n_4\,
      Q => box_commits_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[4]_i_1_n_7\,
      Q => box_commits_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[0]_i_2_n_0\,
      CO(3) => \box_commits_reg[4]_i_1_n_0\,
      CO(2) => \box_commits_reg[4]_i_1_n_1\,
      CO(1) => \box_commits_reg[4]_i_1_n_2\,
      CO(0) => \box_commits_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[4]_i_1_n_4\,
      O(2) => \box_commits_reg[4]_i_1_n_5\,
      O(1) => \box_commits_reg[4]_i_1_n_6\,
      O(0) => \box_commits_reg[4]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(7 downto 4)
    );
\box_commits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[4]_i_1_n_6\,
      Q => box_commits_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[4]_i_1_n_5\,
      Q => box_commits_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[4]_i_1_n_4\,
      Q => box_commits_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[8]_i_1_n_7\,
      Q => box_commits_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\box_commits_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_commits_reg[4]_i_1_n_0\,
      CO(3) => \box_commits_reg[8]_i_1_n_0\,
      CO(2) => \box_commits_reg[8]_i_1_n_1\,
      CO(1) => \box_commits_reg[8]_i_1_n_2\,
      CO(0) => \box_commits_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_commits_reg[8]_i_1_n_4\,
      O(2) => \box_commits_reg[8]_i_1_n_5\,
      O(1) => \box_commits_reg[8]_i_1_n_6\,
      O(0) => \box_commits_reg[8]_i_1_n_7\,
      S(3 downto 0) => box_commits_reg(11 downto 8)
    );
\box_commits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_commits,
      D => \box_commits_reg[8]_i_1_n_6\,
      Q => box_commits_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => box_expires_reg(0),
      O => \box_expires[0]_i_2_n_0\
    );
\box_expires_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[0]_i_1_n_7\,
      Q => box_expires_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \box_expires_reg[0]_i_1_n_0\,
      CO(2) => \box_expires_reg[0]_i_1_n_1\,
      CO(1) => \box_expires_reg[0]_i_1_n_2\,
      CO(0) => \box_expires_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \box_expires_reg[0]_i_1_n_4\,
      O(2) => \box_expires_reg[0]_i_1_n_5\,
      O(1) => \box_expires_reg[0]_i_1_n_6\,
      O(0) => \box_expires_reg[0]_i_1_n_7\,
      S(3 downto 1) => box_expires_reg(3 downto 1),
      S(0) => \box_expires[0]_i_2_n_0\
    );
\box_expires_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[8]_i_1_n_5\,
      Q => box_expires_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[8]_i_1_n_4\,
      Q => box_expires_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[12]_i_1_n_7\,
      Q => box_expires_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[8]_i_1_n_0\,
      CO(3) => \box_expires_reg[12]_i_1_n_0\,
      CO(2) => \box_expires_reg[12]_i_1_n_1\,
      CO(1) => \box_expires_reg[12]_i_1_n_2\,
      CO(0) => \box_expires_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[12]_i_1_n_4\,
      O(2) => \box_expires_reg[12]_i_1_n_5\,
      O(1) => \box_expires_reg[12]_i_1_n_6\,
      O(0) => \box_expires_reg[12]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(15 downto 12)
    );
\box_expires_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[12]_i_1_n_6\,
      Q => box_expires_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[12]_i_1_n_5\,
      Q => box_expires_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[12]_i_1_n_4\,
      Q => box_expires_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[16]_i_1_n_7\,
      Q => box_expires_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[12]_i_1_n_0\,
      CO(3) => \box_expires_reg[16]_i_1_n_0\,
      CO(2) => \box_expires_reg[16]_i_1_n_1\,
      CO(1) => \box_expires_reg[16]_i_1_n_2\,
      CO(0) => \box_expires_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[16]_i_1_n_4\,
      O(2) => \box_expires_reg[16]_i_1_n_5\,
      O(1) => \box_expires_reg[16]_i_1_n_6\,
      O(0) => \box_expires_reg[16]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(19 downto 16)
    );
\box_expires_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[16]_i_1_n_6\,
      Q => box_expires_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[16]_i_1_n_5\,
      Q => box_expires_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[16]_i_1_n_4\,
      Q => box_expires_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[0]_i_1_n_6\,
      Q => box_expires_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[20]_i_1_n_7\,
      Q => box_expires_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[16]_i_1_n_0\,
      CO(3) => \box_expires_reg[20]_i_1_n_0\,
      CO(2) => \box_expires_reg[20]_i_1_n_1\,
      CO(1) => \box_expires_reg[20]_i_1_n_2\,
      CO(0) => \box_expires_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[20]_i_1_n_4\,
      O(2) => \box_expires_reg[20]_i_1_n_5\,
      O(1) => \box_expires_reg[20]_i_1_n_6\,
      O(0) => \box_expires_reg[20]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(23 downto 20)
    );
\box_expires_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[20]_i_1_n_6\,
      Q => box_expires_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[20]_i_1_n_5\,
      Q => box_expires_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[20]_i_1_n_4\,
      Q => box_expires_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[24]_i_1_n_7\,
      Q => box_expires_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[20]_i_1_n_0\,
      CO(3) => \box_expires_reg[24]_i_1_n_0\,
      CO(2) => \box_expires_reg[24]_i_1_n_1\,
      CO(1) => \box_expires_reg[24]_i_1_n_2\,
      CO(0) => \box_expires_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[24]_i_1_n_4\,
      O(2) => \box_expires_reg[24]_i_1_n_5\,
      O(1) => \box_expires_reg[24]_i_1_n_6\,
      O(0) => \box_expires_reg[24]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(27 downto 24)
    );
\box_expires_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[24]_i_1_n_6\,
      Q => box_expires_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[24]_i_1_n_5\,
      Q => box_expires_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[24]_i_1_n_4\,
      Q => box_expires_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[28]_i_1_n_7\,
      Q => box_expires_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[24]_i_1_n_0\,
      CO(3) => \NLW_box_expires_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \box_expires_reg[28]_i_1_n_1\,
      CO(1) => \box_expires_reg[28]_i_1_n_2\,
      CO(0) => \box_expires_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[28]_i_1_n_4\,
      O(2) => \box_expires_reg[28]_i_1_n_5\,
      O(1) => \box_expires_reg[28]_i_1_n_6\,
      O(0) => \box_expires_reg[28]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(31 downto 28)
    );
\box_expires_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[28]_i_1_n_6\,
      Q => box_expires_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[0]_i_1_n_5\,
      Q => box_expires_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[28]_i_1_n_5\,
      Q => box_expires_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[28]_i_1_n_4\,
      Q => box_expires_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[0]_i_1_n_4\,
      Q => box_expires_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[4]_i_1_n_7\,
      Q => box_expires_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[0]_i_1_n_0\,
      CO(3) => \box_expires_reg[4]_i_1_n_0\,
      CO(2) => \box_expires_reg[4]_i_1_n_1\,
      CO(1) => \box_expires_reg[4]_i_1_n_2\,
      CO(0) => \box_expires_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[4]_i_1_n_4\,
      O(2) => \box_expires_reg[4]_i_1_n_5\,
      O(1) => \box_expires_reg[4]_i_1_n_6\,
      O(0) => \box_expires_reg[4]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(7 downto 4)
    );
\box_expires_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[4]_i_1_n_6\,
      Q => box_expires_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[4]_i_1_n_5\,
      Q => box_expires_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[4]_i_1_n_4\,
      Q => box_expires_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[8]_i_1_n_7\,
      Q => box_expires_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\box_expires_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \box_expires_reg[4]_i_1_n_0\,
      CO(3) => \box_expires_reg[8]_i_1_n_0\,
      CO(2) => \box_expires_reg[8]_i_1_n_1\,
      CO(1) => \box_expires_reg[8]_i_1_n_2\,
      CO(0) => \box_expires_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \box_expires_reg[8]_i_1_n_4\,
      O(2) => \box_expires_reg[8]_i_1_n_5\,
      O(1) => \box_expires_reg[8]_i_1_n_6\,
      O(0) => \box_expires_reg[8]_i_1_n_7\,
      S(3 downto 0) => box_expires_reg(11 downto 8)
    );
\box_expires_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => box_expire_event,
      D => \box_expires_reg[8]_i_1_n_6\,
      Q => box_expires_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
box_send_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => \w_data_reg_n_0_[1]\,
      I2 => \w_data_reg_n_0_[0]\,
      I3 => \w_data_reg_n_0_[4]\,
      I4 => \w_data_reg_n_0_[5]\,
      I5 => request_i_6_n_0,
      O => box_send_i_1_n_0
    );
box_send_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => box_send_i_1_n_0,
      Q => box_send,
      R => request_i_1_n_0
    );
cancel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => \w_data_reg_n_0_[3]\,
      I2 => \w_data_reg_n_0_[2]\,
      I3 => \w_data_reg_n_0_[5]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => cancel_i_2_n_0,
      O => cancel_i_1_n_0
    );
cancel_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w_data_reg_n_0_[0]\,
      I1 => \w_data_reg_n_0_[1]\,
      O => cancel_i_2_n_0
    );
cancel_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cancel_i_1_n_0,
      Q => cancel,
      R => request_i_1_n_0
    );
channel_ready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => channel_ready,
      Q => channel_ready_q,
      R => s_axi_bvalid_i_1_n_0
    );
clear_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => \w_data_reg_n_0_[2]\,
      I2 => \w_data_reg_n_0_[3]\,
      I3 => \w_data_reg_n_0_[5]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => cancel_i_2_n_0,
      O => clear_error_i_1_n_0
    );
clear_error_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => clear_error_i_1_n_0,
      Q => clear_error,
      R => request_i_1_n_0
    );
command_legal: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => \w_data_reg_n_0_[0]\,
      I1 => \w_data_reg_n_0_[1]\,
      I2 => \w_data_reg_n_0_[2]\,
      I3 => \w_data_reg_n_0_[3]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => \w_data_reg_n_0_[5]\,
      O => command_legal_n_0
    );
\command_legal1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \command_legal1_inferred__0/i__carry_n_0\,
      CO(2) => \command_legal1_inferred__0/i__carry_n_1\,
      CO(1) => \command_legal1_inferred__0/i__carry_n_2\,
      CO(0) => \command_legal1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\command_legal1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_legal1_inferred__0/i__carry_n_0\,
      CO(3) => \command_legal1_inferred__0/i__carry__0_n_0\,
      CO(2) => \command_legal1_inferred__0/i__carry__0_n_1\,
      CO(1) => \command_legal1_inferred__0/i__carry__0_n_2\,
      CO(0) => \command_legal1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\command_legal1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_legal1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_command_legal1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => command_legal10_out,
      CO(1) => \command_legal1_inferred__0/i__carry__1_n_2\,
      CO(0) => \command_legal1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\command_legal1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \command_legal1_inferred__1/i__carry_n_0\,
      CO(2) => \command_legal1_inferred__1/i__carry_n_1\,
      CO(1) => \command_legal1_inferred__1/i__carry_n_2\,
      CO(0) => \command_legal1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\command_legal1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_legal1_inferred__1/i__carry_n_0\,
      CO(3) => \command_legal1_inferred__1/i__carry__0_n_0\,
      CO(2) => \command_legal1_inferred__1/i__carry__0_n_1\,
      CO(1) => \command_legal1_inferred__1/i__carry__0_n_2\,
      CO(0) => \command_legal1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\command_legal1_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_legal1_inferred__1/i__carry__0_n_0\,
      CO(3) => \NLW_command_legal1_inferred__1/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \command_legal1_inferred__1/i__carry__1_n_1\,
      CO(1) => \command_legal1_inferred__1/i__carry__1_n_2\,
      CO(0) => \command_legal1_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_legal1_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__1_n_0\,
      S(1) => \i__carry__1_i_2__1_n_0\,
      S(0) => \i__carry__1_i_3__1_n_0\
    );
\epoch[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[0]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(0),
      O => byte_merge_return(0)
    );
\epoch[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(2),
      I1 => p_0_in,
      I2 => \^q\(10),
      O => byte_merge_return(10)
    );
\epoch[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(3),
      I1 => p_0_in,
      I2 => \^q\(11),
      O => byte_merge_return(11)
    );
\epoch[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(4),
      I1 => p_0_in,
      I2 => \^q\(12),
      O => byte_merge_return(12)
    );
\epoch[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(5),
      I1 => p_0_in,
      I2 => \^q\(13),
      O => byte_merge_return(13)
    );
\epoch[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(6),
      I1 => p_0_in,
      I2 => \^q\(14),
      O => byte_merge_return(14)
    );
\epoch[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(7),
      I1 => p_0_in,
      I2 => \^q\(15),
      O => byte_merge_return(15)
    );
\epoch[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[16]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(16),
      O => byte_merge_return(16)
    );
\epoch[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[17]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(17),
      O => byte_merge_return(17)
    );
\epoch[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[18]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(18),
      O => byte_merge_return(18)
    );
\epoch[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[19]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(19),
      O => byte_merge_return(19)
    );
\epoch[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[1]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(1),
      O => byte_merge_return(1)
    );
\epoch[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[20]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(20),
      O => byte_merge_return(20)
    );
\epoch[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[21]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(21),
      O => byte_merge_return(21)
    );
\epoch[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[22]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(22),
      O => byte_merge_return(22)
    );
\epoch[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[23]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(23),
      O => byte_merge_return(23)
    );
\epoch[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[24]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(24),
      O => byte_merge_return(24)
    );
\epoch[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[25]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(25),
      O => byte_merge_return(25)
    );
\epoch[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[26]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(26),
      O => byte_merge_return(26)
    );
\epoch[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[27]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(27),
      O => byte_merge_return(27)
    );
\epoch[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[28]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(28),
      O => byte_merge_return(28)
    );
\epoch[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[29]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(29),
      O => byte_merge_return(29)
    );
\epoch[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[2]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(2),
      O => byte_merge_return(2)
    );
\epoch[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[30]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(30),
      O => byte_merge_return(30)
    );
\epoch[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000EF"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[1]_0\,
      I4 => \epoch[31]_i_3_n_0\,
      I5 => \epoch[31]_i_4_n_0\,
      O => \epoch[31]_i_1_n_0\
    );
\epoch[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[31]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(31),
      O => byte_merge_return(31)
    );
\epoch[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \epoch[31]_i_5_n_0\,
      I1 => \epoch[31]_i_6_n_0\,
      I2 => aw_addr(6),
      I3 => aw_addr(5),
      I4 => aw_addr(7),
      O => \epoch[31]_i_3_n_0\
    );
\epoch[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => aw_addr(2),
      I1 => aw_addr(3),
      I2 => aw_addr(0),
      I3 => aw_addr(1),
      I4 => aw_addr(4),
      O => \epoch[31]_i_4_n_0\
    );
\epoch[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => aw_addr(13),
      I1 => aw_addr(12),
      I2 => aw_addr(9),
      I3 => aw_addr(8),
      O => \epoch[31]_i_5_n_0\
    );
\epoch[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => aw_addr(11),
      I1 => aw_addr(10),
      I2 => aw_addr(15),
      I3 => aw_addr(14),
      O => \epoch[31]_i_6_n_0\
    );
\epoch[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[3]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(3),
      O => byte_merge_return(3)
    );
\epoch[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[4]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(4),
      O => byte_merge_return(4)
    );
\epoch[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[5]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(5),
      O => byte_merge_return(5)
    );
\epoch[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[6]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(6),
      O => byte_merge_return(6)
    );
\epoch[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \w_data_reg_n_0_[7]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(7),
      O => byte_merge_return(7)
    );
\epoch[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_0_in,
      I2 => \^q\(8),
      O => byte_merge_return(8)
    );
\epoch[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_0_in,
      I2 => \^q\(9),
      O => byte_merge_return(9)
    );
epoch_changed_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_5_n_0\,
      I4 => aw_full012_out,
      I5 => epoch_changed_i_2_n_0,
      O => epoch_changed_i_1_n_0
    );
epoch_changed_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \epoch[31]_i_3_n_0\,
      I1 => aresetn,
      I2 => write_legal2,
      I3 => \epoch[31]_i_4_n_0\,
      O => epoch_changed_i_2_n_0
    );
epoch_changed_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => epoch_changed_i_1_n_0,
      Q => epoch_changed,
      R => '0'
    );
\epoch_refresh_phase[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAE"
    )
        port map (
      I0 => channel_reset_event,
      I1 => \^epoch_refresh_phase_reg[0]_0\,
      I2 => channel_ready,
      I3 => \epoch_refresh_phase_reg_n_0_[1]\,
      O => channel_reset_event_0
    );
\epoch_refresh_phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEFE"
    )
        port map (
      I0 => \^aw_addr_reg[4]_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \epoch_refresh_phase[1]_i_2_n_0\,
      O => \epoch_refresh_phase[1]_i_1_n_0\
    );
\epoch_refresh_phase[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF75F7"
    )
        port map (
      I0 => aresetn,
      I1 => \epoch_refresh_phase_reg_n_0_[1]\,
      I2 => channel_ready,
      I3 => \^epoch_refresh_phase_reg[0]_0\,
      I4 => channel_reset_event,
      O => \epoch_refresh_phase[1]_i_2_n_0\
    );
\epoch_refresh_phase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \epoch_refresh_phase_reg[0]_1\,
      Q => \^epoch_refresh_phase_reg[0]_0\,
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_refresh_phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \epoch_refresh_phase[1]_i_1_n_0\,
      Q => \epoch_refresh_phase_reg_n_0_[1]\,
      R => '0'
    );
epoch_refresh_required_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFFFCA8A8AAA8"
    )
        port map (
      I0 => epoch_refresh_required_i_2_n_0,
      I1 => \^aw_addr_reg[4]_0\,
      I2 => \^aw_addr_reg[1]_0\,
      I3 => \^snap_error_0\,
      I4 => \^aw_addr_reg[2]_0\,
      I5 => epoch_refresh_required_reg_n_0,
      O => epoch_refresh_required_i_1_n_0
    );
epoch_refresh_required_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => channel_reset_event,
      I1 => channel_ready,
      I2 => \epoch_refresh_phase_reg_n_0_[1]\,
      I3 => channel_ready_q,
      I4 => \^epoch_refresh_phase_reg[0]_0\,
      O => epoch_refresh_required_i_2_n_0
    );
epoch_refresh_required_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \epoch[31]_i_3_n_0\,
      I1 => write_legal2,
      I2 => aw_addr(4),
      I3 => aw_addr(2),
      I4 => aw_addr(3),
      O => \^aw_addr_reg[4]_0\
    );
epoch_refresh_required_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => epoch_refresh_required_i_1_n_0,
      Q => epoch_refresh_required_reg_n_0,
      S => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(0),
      Q => \^q\(0),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(10),
      Q => \^q\(10),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(11),
      Q => \^q\(11),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(12),
      Q => \^q\(12),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(13),
      Q => \^q\(13),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(14),
      Q => \^q\(14),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(15),
      Q => \^q\(15),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(16),
      Q => \^q\(16),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(17),
      Q => \^q\(17),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(18),
      Q => \^q\(18),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(19),
      Q => \^q\(19),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(1),
      Q => \^q\(1),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(20),
      Q => \^q\(20),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(21),
      Q => \^q\(21),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(22),
      Q => \^q\(22),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(23),
      Q => \^q\(23),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(24),
      Q => \^q\(24),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(25),
      Q => \^q\(25),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(26),
      Q => \^q\(26),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(27),
      Q => \^q\(27),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(28),
      Q => \^q\(28),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(29),
      Q => \^q\(29),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(2),
      Q => \^q\(2),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(30),
      Q => \^q\(30),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(31),
      Q => \^q\(31),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(3),
      Q => \^q\(3),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(4),
      Q => \^q\(4),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(5),
      Q => \^q\(5),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(6),
      Q => \^q\(6),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(7),
      Q => \^q\(7),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(8),
      Q => \^q\(8),
      R => s_axi_bvalid_i_1_n_0
    );
\epoch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \epoch[31]_i_1_n_0\,
      D => byte_merge_return(9),
      Q => \^q\(9),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => format_errors_reg(0),
      O => \format_errors[0]_i_2_n_0\
    );
\format_errors_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[0]_i_1_n_7\,
      Q => format_errors_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \format_errors_reg[0]_i_1_n_0\,
      CO(2) => \format_errors_reg[0]_i_1_n_1\,
      CO(1) => \format_errors_reg[0]_i_1_n_2\,
      CO(0) => \format_errors_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \format_errors_reg[0]_i_1_n_4\,
      O(2) => \format_errors_reg[0]_i_1_n_5\,
      O(1) => \format_errors_reg[0]_i_1_n_6\,
      O(0) => \format_errors_reg[0]_i_1_n_7\,
      S(3 downto 1) => format_errors_reg(3 downto 1),
      S(0) => \format_errors[0]_i_2_n_0\
    );
\format_errors_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[8]_i_1_n_5\,
      Q => format_errors_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[8]_i_1_n_4\,
      Q => format_errors_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[12]_i_1_n_7\,
      Q => format_errors_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[8]_i_1_n_0\,
      CO(3) => \format_errors_reg[12]_i_1_n_0\,
      CO(2) => \format_errors_reg[12]_i_1_n_1\,
      CO(1) => \format_errors_reg[12]_i_1_n_2\,
      CO(0) => \format_errors_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[12]_i_1_n_4\,
      O(2) => \format_errors_reg[12]_i_1_n_5\,
      O(1) => \format_errors_reg[12]_i_1_n_6\,
      O(0) => \format_errors_reg[12]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(15 downto 12)
    );
\format_errors_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[12]_i_1_n_6\,
      Q => format_errors_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[12]_i_1_n_5\,
      Q => format_errors_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[12]_i_1_n_4\,
      Q => format_errors_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[16]_i_1_n_7\,
      Q => format_errors_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[12]_i_1_n_0\,
      CO(3) => \format_errors_reg[16]_i_1_n_0\,
      CO(2) => \format_errors_reg[16]_i_1_n_1\,
      CO(1) => \format_errors_reg[16]_i_1_n_2\,
      CO(0) => \format_errors_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[16]_i_1_n_4\,
      O(2) => \format_errors_reg[16]_i_1_n_5\,
      O(1) => \format_errors_reg[16]_i_1_n_6\,
      O(0) => \format_errors_reg[16]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(19 downto 16)
    );
\format_errors_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[16]_i_1_n_6\,
      Q => format_errors_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[16]_i_1_n_5\,
      Q => format_errors_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[16]_i_1_n_4\,
      Q => format_errors_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[0]_i_1_n_6\,
      Q => format_errors_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[20]_i_1_n_7\,
      Q => format_errors_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[16]_i_1_n_0\,
      CO(3) => \format_errors_reg[20]_i_1_n_0\,
      CO(2) => \format_errors_reg[20]_i_1_n_1\,
      CO(1) => \format_errors_reg[20]_i_1_n_2\,
      CO(0) => \format_errors_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[20]_i_1_n_4\,
      O(2) => \format_errors_reg[20]_i_1_n_5\,
      O(1) => \format_errors_reg[20]_i_1_n_6\,
      O(0) => \format_errors_reg[20]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(23 downto 20)
    );
\format_errors_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[20]_i_1_n_6\,
      Q => format_errors_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[20]_i_1_n_5\,
      Q => format_errors_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[20]_i_1_n_4\,
      Q => format_errors_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[24]_i_1_n_7\,
      Q => format_errors_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[20]_i_1_n_0\,
      CO(3) => \format_errors_reg[24]_i_1_n_0\,
      CO(2) => \format_errors_reg[24]_i_1_n_1\,
      CO(1) => \format_errors_reg[24]_i_1_n_2\,
      CO(0) => \format_errors_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[24]_i_1_n_4\,
      O(2) => \format_errors_reg[24]_i_1_n_5\,
      O(1) => \format_errors_reg[24]_i_1_n_6\,
      O(0) => \format_errors_reg[24]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(27 downto 24)
    );
\format_errors_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[24]_i_1_n_6\,
      Q => format_errors_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[24]_i_1_n_5\,
      Q => format_errors_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[24]_i_1_n_4\,
      Q => format_errors_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[28]_i_1_n_7\,
      Q => format_errors_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[24]_i_1_n_0\,
      CO(3) => \NLW_format_errors_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \format_errors_reg[28]_i_1_n_1\,
      CO(1) => \format_errors_reg[28]_i_1_n_2\,
      CO(0) => \format_errors_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[28]_i_1_n_4\,
      O(2) => \format_errors_reg[28]_i_1_n_5\,
      O(1) => \format_errors_reg[28]_i_1_n_6\,
      O(0) => \format_errors_reg[28]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(31 downto 28)
    );
\format_errors_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[28]_i_1_n_6\,
      Q => format_errors_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[0]_i_1_n_5\,
      Q => format_errors_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[28]_i_1_n_5\,
      Q => format_errors_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[28]_i_1_n_4\,
      Q => format_errors_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[0]_i_1_n_4\,
      Q => format_errors_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[4]_i_1_n_7\,
      Q => format_errors_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[0]_i_1_n_0\,
      CO(3) => \format_errors_reg[4]_i_1_n_0\,
      CO(2) => \format_errors_reg[4]_i_1_n_1\,
      CO(1) => \format_errors_reg[4]_i_1_n_2\,
      CO(0) => \format_errors_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[4]_i_1_n_4\,
      O(2) => \format_errors_reg[4]_i_1_n_5\,
      O(1) => \format_errors_reg[4]_i_1_n_6\,
      O(0) => \format_errors_reg[4]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(7 downto 4)
    );
\format_errors_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[4]_i_1_n_6\,
      Q => format_errors_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[4]_i_1_n_5\,
      Q => format_errors_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[4]_i_1_n_4\,
      Q => format_errors_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[8]_i_1_n_7\,
      Q => format_errors_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\format_errors_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \format_errors_reg[4]_i_1_n_0\,
      CO(3) => \format_errors_reg[8]_i_1_n_0\,
      CO(2) => \format_errors_reg[8]_i_1_n_1\,
      CO(1) => \format_errors_reg[8]_i_1_n_2\,
      CO(0) => \format_errors_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \format_errors_reg[8]_i_1_n_4\,
      O(2) => \format_errors_reg[8]_i_1_n_5\,
      O(1) => \format_errors_reg[8]_i_1_n_6\,
      O(0) => \format_errors_reg[8]_i_1_n_7\,
      S(3 downto 0) => format_errors_reg(11 downto 8)
    );
\format_errors_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => format_error_event,
      D => \format_errors_reg[8]_i_1_n_6\,
      Q => format_errors_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(21),
      I1 => snap_request_id(21),
      I2 => \^request_id\(22),
      I3 => snap_request_id(22),
      I4 => snap_request_id(23),
      I5 => \^request_id\(23),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(12),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(247),
      I1 => \^q\(23),
      I2 => \^box_shadow\(245),
      I3 => \^q\(21),
      I4 => \^q\(22),
      I5 => \^box_shadow\(246),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(18),
      I1 => snap_request_id(18),
      I2 => \^request_id\(19),
      I3 => snap_request_id(19),
      I4 => snap_request_id(20),
      I5 => \^request_id\(20),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(11),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(244),
      I1 => \^q\(20),
      I2 => \^box_shadow\(242),
      I3 => \^q\(18),
      I4 => \^q\(19),
      I5 => \^box_shadow\(243),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(15),
      I1 => snap_request_id(15),
      I2 => \^request_id\(16),
      I3 => snap_request_id(16),
      I4 => snap_request_id(17),
      I5 => \^request_id\(17),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(10),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(241),
      I1 => \^q\(17),
      I2 => \^box_shadow\(239),
      I3 => \^q\(15),
      I4 => \^q\(16),
      I5 => \^box_shadow\(240),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(12),
      I1 => snap_request_id(12),
      I2 => \^request_id\(13),
      I3 => snap_request_id(13),
      I4 => snap_request_id(14),
      I5 => \^request_id\(14),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(238),
      I1 => \^q\(14),
      I2 => \^box_shadow\(237),
      I3 => \^q\(13),
      I4 => \^q\(12),
      I5 => \^box_shadow\(236),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => snap_request_id(31),
      I1 => \^request_id\(31),
      I2 => snap_request_id(30),
      I3 => \^request_id\(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(15),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^box_shadow\(254),
      I2 => \^q\(31),
      I3 => \^box_shadow\(255),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(27),
      I1 => snap_request_id(27),
      I2 => \^request_id\(28),
      I3 => snap_request_id(28),
      I4 => snap_request_id(29),
      I5 => \^request_id\(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(14),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(253),
      I1 => \^q\(29),
      I2 => \^box_shadow\(252),
      I3 => \^q\(28),
      I4 => \^q\(27),
      I5 => \^box_shadow\(251),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(24),
      I1 => snap_request_id(24),
      I2 => \^request_id\(25),
      I3 => snap_request_id(25),
      I4 => snap_request_id(26),
      I5 => \^request_id\(26),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(13),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(250),
      I1 => \^q\(26),
      I2 => \^box_shadow\(248),
      I3 => \^q\(24),
      I4 => \^q\(25),
      I5 => \^box_shadow\(249),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(10),
      I1 => snap_request_id(10),
      I2 => \^request_id\(9),
      I3 => snap_request_id(9),
      I4 => snap_request_id(11),
      I5 => \^request_id\(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(8),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(235),
      I1 => \^q\(11),
      I2 => \^box_shadow\(233),
      I3 => \^q\(9),
      I4 => \^q\(10),
      I5 => \^box_shadow\(234),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(7),
      I1 => snap_request_id(7),
      I2 => \^request_id\(6),
      I3 => snap_request_id(6),
      I4 => snap_request_id(8),
      I5 => \^request_id\(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(232),
      I1 => \^q\(8),
      I2 => \^box_shadow\(230),
      I3 => \^q\(6),
      I4 => \^q\(7),
      I5 => \^box_shadow\(231),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(5),
      I1 => snap_request_id(5),
      I2 => \^request_id\(3),
      I3 => snap_request_id(3),
      I4 => snap_request_id(4),
      I5 => \^request_id\(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(229),
      I1 => \^q\(5),
      I2 => \^box_shadow\(228),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^box_shadow\(227),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^request_id\(0),
      I1 => snap_request_id(0),
      I2 => \^request_id\(1),
      I3 => snap_request_id(1),
      I4 => snap_request_id(2),
      I5 => \^request_id\(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^box_shadow\(226),
      I1 => \^q\(2),
      I2 => \^box_shadow\(224),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^box_shadow\(225),
      O => \i__carry_i_4__0_n_0\
    );
mailbox_recover_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => \w_data_reg_n_0_[1]\,
      I2 => \w_data_reg_n_0_[0]\,
      I3 => \w_data_reg_n_0_[5]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => request_i_6_n_0,
      O => mailbox_recover_i_1_n_0
    );
mailbox_recover_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mailbox_recover_i_1_n_0,
      Q => mailbox_recover,
      R => request_i_1_n_0
    );
\mailbox_timeouts[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mailbox_timeouts_reg(0),
      O => \mailbox_timeouts[0]_i_2_n_0\
    );
\mailbox_timeouts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[0]_i_1_n_7\,
      Q => mailbox_timeouts_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mailbox_timeouts_reg[0]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[0]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[0]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \mailbox_timeouts_reg[0]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[0]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[0]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[0]_i_1_n_7\,
      S(3 downto 1) => mailbox_timeouts_reg(3 downto 1),
      S(0) => \mailbox_timeouts[0]_i_2_n_0\
    );
\mailbox_timeouts_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[8]_i_1_n_5\,
      Q => mailbox_timeouts_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[8]_i_1_n_4\,
      Q => mailbox_timeouts_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[12]_i_1_n_7\,
      Q => mailbox_timeouts_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[8]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[12]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[12]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[12]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[12]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[12]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[12]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[12]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(15 downto 12)
    );
\mailbox_timeouts_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[12]_i_1_n_6\,
      Q => mailbox_timeouts_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[12]_i_1_n_5\,
      Q => mailbox_timeouts_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[12]_i_1_n_4\,
      Q => mailbox_timeouts_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[16]_i_1_n_7\,
      Q => mailbox_timeouts_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[12]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[16]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[16]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[16]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[16]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[16]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[16]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[16]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(19 downto 16)
    );
\mailbox_timeouts_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[16]_i_1_n_6\,
      Q => mailbox_timeouts_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[16]_i_1_n_5\,
      Q => mailbox_timeouts_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[16]_i_1_n_4\,
      Q => mailbox_timeouts_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[0]_i_1_n_6\,
      Q => mailbox_timeouts_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[20]_i_1_n_7\,
      Q => mailbox_timeouts_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[16]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[20]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[20]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[20]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[20]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[20]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[20]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[20]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(23 downto 20)
    );
\mailbox_timeouts_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[20]_i_1_n_6\,
      Q => mailbox_timeouts_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[20]_i_1_n_5\,
      Q => mailbox_timeouts_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[20]_i_1_n_4\,
      Q => mailbox_timeouts_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[24]_i_1_n_7\,
      Q => mailbox_timeouts_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[20]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[24]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[24]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[24]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[24]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[24]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[24]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[24]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(27 downto 24)
    );
\mailbox_timeouts_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[24]_i_1_n_6\,
      Q => mailbox_timeouts_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[24]_i_1_n_5\,
      Q => mailbox_timeouts_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[24]_i_1_n_4\,
      Q => mailbox_timeouts_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[28]_i_1_n_7\,
      Q => mailbox_timeouts_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[24]_i_1_n_0\,
      CO(3) => \NLW_mailbox_timeouts_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mailbox_timeouts_reg[28]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[28]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[28]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[28]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[28]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[28]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(31 downto 28)
    );
\mailbox_timeouts_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[28]_i_1_n_6\,
      Q => mailbox_timeouts_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[0]_i_1_n_5\,
      Q => mailbox_timeouts_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[28]_i_1_n_5\,
      Q => mailbox_timeouts_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[28]_i_1_n_4\,
      Q => mailbox_timeouts_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[0]_i_1_n_4\,
      Q => mailbox_timeouts_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[4]_i_1_n_7\,
      Q => mailbox_timeouts_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[0]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[4]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[4]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[4]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[4]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[4]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[4]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[4]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(7 downto 4)
    );
\mailbox_timeouts_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[4]_i_1_n_6\,
      Q => mailbox_timeouts_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[4]_i_1_n_5\,
      Q => mailbox_timeouts_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[4]_i_1_n_4\,
      Q => mailbox_timeouts_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[8]_i_1_n_7\,
      Q => mailbox_timeouts_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\mailbox_timeouts_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mailbox_timeouts_reg[4]_i_1_n_0\,
      CO(3) => \mailbox_timeouts_reg[8]_i_1_n_0\,
      CO(2) => \mailbox_timeouts_reg[8]_i_1_n_1\,
      CO(1) => \mailbox_timeouts_reg[8]_i_1_n_2\,
      CO(0) => \mailbox_timeouts_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mailbox_timeouts_reg[8]_i_1_n_4\,
      O(2) => \mailbox_timeouts_reg[8]_i_1_n_5\,
      O(1) => \mailbox_timeouts_reg[8]_i_1_n_6\,
      O(0) => \mailbox_timeouts_reg[8]_i_1_n_7\,
      S(3 downto 0) => mailbox_timeouts_reg(11 downto 8)
    );
\mailbox_timeouts_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mailbox_timeout_event,
      D => \mailbox_timeouts_reg[8]_i_1_n_6\,
      Q => mailbox_timeouts_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
\p_0_out_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out_inferred__1/i__carry_n_0\,
      CO(2) => \p_0_out_inferred__1/i__carry_n_1\,
      CO(1) => \p_0_out_inferred__1/i__carry_n_2\,
      CO(0) => \p_0_out_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => aw_addr(8 downto 6),
      DI(0) => '0',
      O(3) => \p_0_out_inferred__1/i__carry_n_4\,
      O(2) => \p_0_out_inferred__1/i__carry_n_5\,
      O(1) => \p_0_out_inferred__1/i__carry_n_6\,
      O(0) => \p_0_out_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => aw_addr(5)
    );
\p_0_out_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__1/i__carry_n_0\,
      CO(3) => \p_0_out_inferred__1/i__carry__0_n_0\,
      CO(2) => \p_0_out_inferred__1/i__carry__0_n_1\,
      CO(1) => \p_0_out_inferred__1/i__carry__0_n_2\,
      CO(0) => \p_0_out_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => aw_addr(12 downto 9),
      O(3) => \p_0_out_inferred__1/i__carry__0_n_4\,
      O(2) => \p_0_out_inferred__1/i__carry__0_n_5\,
      O(1) => \p_0_out_inferred__1/i__carry__0_n_6\,
      O(0) => \p_0_out_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\p_0_out_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__1/i__carry__0_n_0\,
      CO(3) => \p_0_out_inferred__1/i__carry__1_n_0\,
      CO(2) => \NLW_p_0_out_inferred__1/i__carry__1_CO_UNCONNECTED\(2),
      CO(1) => \p_0_out_inferred__1/i__carry__1_n_2\,
      CO(0) => \p_0_out_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => aw_addr(15 downto 13),
      O(3) => \NLW_p_0_out_inferred__1/i__carry__1_O_UNCONNECTED\(3),
      O(2) => \p_0_out_inferred__1/i__carry__1_n_5\,
      O(1) => \p_0_out_inferred__1/i__carry__1_n_6\,
      O(0) => \p_0_out_inferred__1/i__carry__1_n_7\,
      S(3) => '1',
      S(2) => \i__carry__1_i_1__0_n_0\,
      S(1) => \i__carry__1_i_2__0_n_0\,
      S(0) => \i__carry__1_i_3__0_n_0\
    );
\ready_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ready_count_reg(0),
      O => \ready_count[0]_i_2_n_0\
    );
\ready_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[0]_i_1_n_7\,
      Q => ready_count_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ready_count_reg[0]_i_1_n_0\,
      CO(2) => \ready_count_reg[0]_i_1_n_1\,
      CO(1) => \ready_count_reg[0]_i_1_n_2\,
      CO(0) => \ready_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ready_count_reg[0]_i_1_n_4\,
      O(2) => \ready_count_reg[0]_i_1_n_5\,
      O(1) => \ready_count_reg[0]_i_1_n_6\,
      O(0) => \ready_count_reg[0]_i_1_n_7\,
      S(3 downto 1) => ready_count_reg(3 downto 1),
      S(0) => \ready_count[0]_i_2_n_0\
    );
\ready_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[8]_i_1_n_5\,
      Q => ready_count_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[8]_i_1_n_4\,
      Q => ready_count_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[12]_i_1_n_7\,
      Q => ready_count_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[8]_i_1_n_0\,
      CO(3) => \ready_count_reg[12]_i_1_n_0\,
      CO(2) => \ready_count_reg[12]_i_1_n_1\,
      CO(1) => \ready_count_reg[12]_i_1_n_2\,
      CO(0) => \ready_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[12]_i_1_n_4\,
      O(2) => \ready_count_reg[12]_i_1_n_5\,
      O(1) => \ready_count_reg[12]_i_1_n_6\,
      O(0) => \ready_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(15 downto 12)
    );
\ready_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[12]_i_1_n_6\,
      Q => ready_count_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[12]_i_1_n_5\,
      Q => ready_count_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[12]_i_1_n_4\,
      Q => ready_count_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[16]_i_1_n_7\,
      Q => ready_count_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[12]_i_1_n_0\,
      CO(3) => \ready_count_reg[16]_i_1_n_0\,
      CO(2) => \ready_count_reg[16]_i_1_n_1\,
      CO(1) => \ready_count_reg[16]_i_1_n_2\,
      CO(0) => \ready_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[16]_i_1_n_4\,
      O(2) => \ready_count_reg[16]_i_1_n_5\,
      O(1) => \ready_count_reg[16]_i_1_n_6\,
      O(0) => \ready_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(19 downto 16)
    );
\ready_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[16]_i_1_n_6\,
      Q => ready_count_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[16]_i_1_n_5\,
      Q => ready_count_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[16]_i_1_n_4\,
      Q => ready_count_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[0]_i_1_n_6\,
      Q => ready_count_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[20]_i_1_n_7\,
      Q => ready_count_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[16]_i_1_n_0\,
      CO(3) => \ready_count_reg[20]_i_1_n_0\,
      CO(2) => \ready_count_reg[20]_i_1_n_1\,
      CO(1) => \ready_count_reg[20]_i_1_n_2\,
      CO(0) => \ready_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[20]_i_1_n_4\,
      O(2) => \ready_count_reg[20]_i_1_n_5\,
      O(1) => \ready_count_reg[20]_i_1_n_6\,
      O(0) => \ready_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(23 downto 20)
    );
\ready_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[20]_i_1_n_6\,
      Q => ready_count_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[20]_i_1_n_5\,
      Q => ready_count_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[20]_i_1_n_4\,
      Q => ready_count_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[24]_i_1_n_7\,
      Q => ready_count_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[20]_i_1_n_0\,
      CO(3) => \ready_count_reg[24]_i_1_n_0\,
      CO(2) => \ready_count_reg[24]_i_1_n_1\,
      CO(1) => \ready_count_reg[24]_i_1_n_2\,
      CO(0) => \ready_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[24]_i_1_n_4\,
      O(2) => \ready_count_reg[24]_i_1_n_5\,
      O(1) => \ready_count_reg[24]_i_1_n_6\,
      O(0) => \ready_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(27 downto 24)
    );
\ready_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[24]_i_1_n_6\,
      Q => ready_count_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[24]_i_1_n_5\,
      Q => ready_count_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[24]_i_1_n_4\,
      Q => ready_count_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[28]_i_1_n_7\,
      Q => ready_count_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_ready_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ready_count_reg[28]_i_1_n_1\,
      CO(1) => \ready_count_reg[28]_i_1_n_2\,
      CO(0) => \ready_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[28]_i_1_n_4\,
      O(2) => \ready_count_reg[28]_i_1_n_5\,
      O(1) => \ready_count_reg[28]_i_1_n_6\,
      O(0) => \ready_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(31 downto 28)
    );
\ready_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[28]_i_1_n_6\,
      Q => ready_count_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[0]_i_1_n_5\,
      Q => ready_count_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[28]_i_1_n_5\,
      Q => ready_count_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[28]_i_1_n_4\,
      Q => ready_count_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[0]_i_1_n_4\,
      Q => ready_count_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[4]_i_1_n_7\,
      Q => ready_count_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[0]_i_1_n_0\,
      CO(3) => \ready_count_reg[4]_i_1_n_0\,
      CO(2) => \ready_count_reg[4]_i_1_n_1\,
      CO(1) => \ready_count_reg[4]_i_1_n_2\,
      CO(0) => \ready_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[4]_i_1_n_4\,
      O(2) => \ready_count_reg[4]_i_1_n_5\,
      O(1) => \ready_count_reg[4]_i_1_n_6\,
      O(0) => \ready_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(7 downto 4)
    );
\ready_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[4]_i_1_n_6\,
      Q => ready_count_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[4]_i_1_n_5\,
      Q => ready_count_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[4]_i_1_n_4\,
      Q => ready_count_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[8]_i_1_n_7\,
      Q => ready_count_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\ready_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ready_count_reg[4]_i_1_n_0\,
      CO(3) => \ready_count_reg[8]_i_1_n_0\,
      CO(2) => \ready_count_reg[8]_i_1_n_1\,
      CO(1) => \ready_count_reg[8]_i_1_n_2\,
      CO(0) => \ready_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ready_count_reg[8]_i_1_n_4\,
      O(2) => \ready_count_reg[8]_i_1_n_5\,
      O(1) => \ready_count_reg[8]_i_1_n_6\,
      O(0) => \ready_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => ready_count_reg(11 downto 8)
    );
\ready_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_ready_event,
      D => \ready_count_reg[8]_i_1_n_6\,
      Q => ready_count_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
release_frame_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => request_i_6_n_0,
      I2 => \w_data_reg_n_0_[1]\,
      I3 => \w_data_reg_n_0_[0]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => \w_data_reg_n_0_[5]\,
      O => release_frame_i_1_n_0
    );
release_frame_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => release_frame_i_1_n_0,
      Q => release_frame,
      R => request_i_1_n_0
    );
request_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAEFFFFFFFF"
    )
        port map (
      I0 => \^aw_addr_reg[1]_0\,
      I1 => \^snap_error_0\,
      I2 => \s_axi_bresp[1]_i_3_n_0\,
      I3 => \s_axi_bresp[1]_i_2_n_0\,
      I4 => request_i_4_n_0,
      I5 => aresetn,
      O => request_i_1_n_0
    );
request_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \w_data_reg_n_0_[31]\,
      I1 => \w_data_reg_n_0_[16]\,
      I2 => \w_data_reg_n_0_[30]\,
      I3 => p_2_in(7),
      O => request_i_10_n_0
    );
request_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \w_data_reg_n_0_[28]\,
      I1 => \w_data_reg_n_0_[27]\,
      I2 => \w_data_reg_n_0_[20]\,
      I3 => p_2_in(1),
      O => request_i_11_n_0
    );
request_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \w_data_reg_n_0_[21]\,
      I1 => p_2_in(6),
      I2 => p_2_in(5),
      I3 => \w_data_reg_n_0_[17]\,
      I4 => \w_data_reg_n_0_[19]\,
      I5 => \w_data_reg_n_0_[25]\,
      O => request_i_12_n_0
    );
request_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => request_i_5_n_0,
      I1 => request_i_6_n_0,
      I2 => \w_data_reg_n_0_[0]\,
      I3 => \w_data_reg_n_0_[1]\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => \w_data_reg_n_0_[5]\,
      O => request_i_2_n_0
    );
request_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => aw_addr(1),
      I1 => aw_addr(0),
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => \^w_full_reg_0\,
      I4 => \^aw_full\,
      O => \^aw_addr_reg[1]_0\
    );
request_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \epoch[31]_i_3_n_0\,
      I1 => aw_addr(2),
      I2 => aw_addr(3),
      I3 => aw_addr(4),
      I4 => aw_addr(1),
      I5 => aw_addr(0),
      O => request_i_4_n_0
    );
request_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => request_i_7_n_0,
      I1 => request_i_8_n_0,
      I2 => request_i_9_n_0,
      I3 => request_i_10_n_0,
      I4 => request_i_11_n_0,
      I5 => request_i_12_n_0,
      O => request_i_5_n_0
    );
request_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w_data_reg_n_0_[2]\,
      I1 => \w_data_reg_n_0_[3]\,
      O => request_i_6_n_0
    );
request_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \w_data_reg_n_0_[22]\,
      I1 => p_2_in(2),
      I2 => \w_data_reg_n_0_[26]\,
      I3 => \w_data_reg_n_0_[24]\,
      O => request_i_7_n_0
    );
request_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \w_data_reg_n_0_[29]\,
      I1 => p_2_in(3),
      I2 => \w_data_reg_n_0_[23]\,
      I3 => p_2_in(4),
      O => request_i_8_n_0
    );
request_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \w_data_reg_n_0_[6]\,
      I1 => \w_data_reg_n_0_[7]\,
      I2 => \w_data_reg_n_0_[18]\,
      I3 => p_2_in(0),
      O => request_i_9_n_0
    );
\request_id[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[1]_0\,
      I4 => p_0_in,
      I5 => \request_id[31]_i_2_n_0\,
      O => \request_id[15]_i_1_n_0\
    );
\request_id[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[1]_0\,
      I4 => \w_strobe_reg_n_0_[2]\,
      I5 => \request_id[31]_i_2_n_0\,
      O => \request_id[23]_i_1_n_0\
    );
\request_id[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[1]_0\,
      I4 => \w_strobe_reg_n_0_[3]\,
      I5 => \request_id[31]_i_2_n_0\,
      O => \request_id[31]_i_1_n_0\
    );
\request_id[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => aw_addr(4),
      I1 => aw_addr(2),
      I2 => aw_addr(3),
      I3 => aw_addr(0),
      I4 => aw_addr(1),
      I5 => \epoch[31]_i_3_n_0\,
      O => \request_id[31]_i_2_n_0\
    );
\request_id[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EF0000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[1]_0\,
      I4 => \w_strobe_reg_n_0_[0]\,
      I5 => \request_id[31]_i_2_n_0\,
      O => \request_id[7]_i_1_n_0\
    );
\request_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[0]\,
      Q => \^request_id\(0),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^request_id\(10),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^request_id\(11),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^request_id\(12),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^request_id\(13),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^request_id\(14),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^request_id\(15),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[16]\,
      Q => \^request_id\(16),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[17]\,
      Q => \^request_id\(17),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[18]\,
      Q => \^request_id\(18),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[19]\,
      Q => \^request_id\(19),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[1]\,
      Q => \^request_id\(1),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[20]\,
      Q => \^request_id\(20),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[21]\,
      Q => \^request_id\(21),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[22]\,
      Q => \^request_id\(22),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[23]_i_1_n_0\,
      D => \w_data_reg_n_0_[23]\,
      Q => \^request_id\(23),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[24]\,
      Q => \^request_id\(24),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[25]\,
      Q => \^request_id\(25),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[26]\,
      Q => \^request_id\(26),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[27]\,
      Q => \^request_id\(27),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[28]\,
      Q => \^request_id\(28),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[29]\,
      Q => \^request_id\(29),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[2]\,
      Q => \^request_id\(2),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[30]\,
      Q => \^request_id\(30),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[31]_i_1_n_0\,
      D => \w_data_reg_n_0_[31]\,
      Q => \^request_id\(31),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[3]\,
      Q => \^request_id\(3),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[4]\,
      Q => \^request_id\(4),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[5]\,
      Q => \^request_id\(5),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[6]\,
      Q => \^request_id\(6),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[7]_i_1_n_0\,
      D => \w_data_reg_n_0_[7]\,
      Q => \^request_id\(7),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(0),
      Q => \^request_id\(8),
      R => s_axi_bvalid_i_1_n_0
    );
\request_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \request_id[15]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^request_id\(9),
      R => s_axi_bvalid_i_1_n_0
    );
request_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => request_i_2_n_0,
      Q => request,
      R => request_i_1_n_0
    );
\requests[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222202"
    )
        port map (
      I0 => request_i_2_n_0,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => request_i_4_n_0,
      O => requests
    );
\requests[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => requests_reg(0),
      O => \requests[0]_i_3_n_0\
    );
\requests_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[0]_i_2_n_7\,
      Q => requests_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \requests_reg[0]_i_2_n_0\,
      CO(2) => \requests_reg[0]_i_2_n_1\,
      CO(1) => \requests_reg[0]_i_2_n_2\,
      CO(0) => \requests_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \requests_reg[0]_i_2_n_4\,
      O(2) => \requests_reg[0]_i_2_n_5\,
      O(1) => \requests_reg[0]_i_2_n_6\,
      O(0) => \requests_reg[0]_i_2_n_7\,
      S(3 downto 1) => requests_reg(3 downto 1),
      S(0) => \requests[0]_i_3_n_0\
    );
\requests_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[8]_i_1_n_5\,
      Q => requests_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[8]_i_1_n_4\,
      Q => requests_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[12]_i_1_n_7\,
      Q => requests_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[8]_i_1_n_0\,
      CO(3) => \requests_reg[12]_i_1_n_0\,
      CO(2) => \requests_reg[12]_i_1_n_1\,
      CO(1) => \requests_reg[12]_i_1_n_2\,
      CO(0) => \requests_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[12]_i_1_n_4\,
      O(2) => \requests_reg[12]_i_1_n_5\,
      O(1) => \requests_reg[12]_i_1_n_6\,
      O(0) => \requests_reg[12]_i_1_n_7\,
      S(3 downto 0) => requests_reg(15 downto 12)
    );
\requests_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[12]_i_1_n_6\,
      Q => requests_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[12]_i_1_n_5\,
      Q => requests_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[12]_i_1_n_4\,
      Q => requests_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[16]_i_1_n_7\,
      Q => requests_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[12]_i_1_n_0\,
      CO(3) => \requests_reg[16]_i_1_n_0\,
      CO(2) => \requests_reg[16]_i_1_n_1\,
      CO(1) => \requests_reg[16]_i_1_n_2\,
      CO(0) => \requests_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[16]_i_1_n_4\,
      O(2) => \requests_reg[16]_i_1_n_5\,
      O(1) => \requests_reg[16]_i_1_n_6\,
      O(0) => \requests_reg[16]_i_1_n_7\,
      S(3 downto 0) => requests_reg(19 downto 16)
    );
\requests_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[16]_i_1_n_6\,
      Q => requests_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[16]_i_1_n_5\,
      Q => requests_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[16]_i_1_n_4\,
      Q => requests_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[0]_i_2_n_6\,
      Q => requests_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[20]_i_1_n_7\,
      Q => requests_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[16]_i_1_n_0\,
      CO(3) => \requests_reg[20]_i_1_n_0\,
      CO(2) => \requests_reg[20]_i_1_n_1\,
      CO(1) => \requests_reg[20]_i_1_n_2\,
      CO(0) => \requests_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[20]_i_1_n_4\,
      O(2) => \requests_reg[20]_i_1_n_5\,
      O(1) => \requests_reg[20]_i_1_n_6\,
      O(0) => \requests_reg[20]_i_1_n_7\,
      S(3 downto 0) => requests_reg(23 downto 20)
    );
\requests_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[20]_i_1_n_6\,
      Q => requests_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[20]_i_1_n_5\,
      Q => requests_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[20]_i_1_n_4\,
      Q => requests_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[24]_i_1_n_7\,
      Q => requests_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[20]_i_1_n_0\,
      CO(3) => \requests_reg[24]_i_1_n_0\,
      CO(2) => \requests_reg[24]_i_1_n_1\,
      CO(1) => \requests_reg[24]_i_1_n_2\,
      CO(0) => \requests_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[24]_i_1_n_4\,
      O(2) => \requests_reg[24]_i_1_n_5\,
      O(1) => \requests_reg[24]_i_1_n_6\,
      O(0) => \requests_reg[24]_i_1_n_7\,
      S(3 downto 0) => requests_reg(27 downto 24)
    );
\requests_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[24]_i_1_n_6\,
      Q => requests_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[24]_i_1_n_5\,
      Q => requests_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[24]_i_1_n_4\,
      Q => requests_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[28]_i_1_n_7\,
      Q => requests_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[24]_i_1_n_0\,
      CO(3) => \NLW_requests_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \requests_reg[28]_i_1_n_1\,
      CO(1) => \requests_reg[28]_i_1_n_2\,
      CO(0) => \requests_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[28]_i_1_n_4\,
      O(2) => \requests_reg[28]_i_1_n_5\,
      O(1) => \requests_reg[28]_i_1_n_6\,
      O(0) => \requests_reg[28]_i_1_n_7\,
      S(3 downto 0) => requests_reg(31 downto 28)
    );
\requests_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[28]_i_1_n_6\,
      Q => requests_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[0]_i_2_n_5\,
      Q => requests_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[28]_i_1_n_5\,
      Q => requests_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[28]_i_1_n_4\,
      Q => requests_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[0]_i_2_n_4\,
      Q => requests_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[4]_i_1_n_7\,
      Q => requests_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[0]_i_2_n_0\,
      CO(3) => \requests_reg[4]_i_1_n_0\,
      CO(2) => \requests_reg[4]_i_1_n_1\,
      CO(1) => \requests_reg[4]_i_1_n_2\,
      CO(0) => \requests_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[4]_i_1_n_4\,
      O(2) => \requests_reg[4]_i_1_n_5\,
      O(1) => \requests_reg[4]_i_1_n_6\,
      O(0) => \requests_reg[4]_i_1_n_7\,
      S(3 downto 0) => requests_reg(7 downto 4)
    );
\requests_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[4]_i_1_n_6\,
      Q => requests_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[4]_i_1_n_5\,
      Q => requests_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[4]_i_1_n_4\,
      Q => requests_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[8]_i_1_n_7\,
      Q => requests_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\requests_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \requests_reg[4]_i_1_n_0\,
      CO(3) => \requests_reg[8]_i_1_n_0\,
      CO(2) => \requests_reg[8]_i_1_n_1\,
      CO(1) => \requests_reg[8]_i_1_n_2\,
      CO(0) => \requests_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \requests_reg[8]_i_1_n_4\,
      O(2) => \requests_reg[8]_i_1_n_5\,
      O(1) => \requests_reg[8]_i_1_n_6\,
      O(0) => \requests_reg[8]_i_1_n_7\,
      S(3 downto 0) => requests_reg(11 downto 8)
    );
\requests_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => requests,
      D => \requests_reg[8]_i_1_n_6\,
      Q => requests_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aresetn,
      I1 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^aw_full\,
      I1 => aresetn,
      I2 => \^s_axi_bvalid_reg_0\,
      O => s_axi_awready
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF10FFFF"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_2_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_5_n_0\,
      I4 => aw_full012_out,
      I5 => \s_axi_bresp[1]_i_7_n_0\,
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF830"
    )
        port map (
      I0 => \w_data_reg_n_0_[1]\,
      I1 => snap_ready,
      I2 => \w_data_reg_n_0_[2]\,
      I3 => command_legal10_out,
      I4 => \s_axi_bresp[1]_i_20_n_0\,
      O => \s_axi_bresp[1]_i_10_n_0\
    );
\s_axi_bresp[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_21_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(11),
      I3 => \^q\(9),
      I4 => \^q\(10),
      I5 => \s_axi_bresp[1]_i_22_n_0\,
      O => \s_axi_bresp[1]_i_11_n_0\
    );
\s_axi_bresp[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_23_n_0\,
      I1 => \^q\(21),
      I2 => \^q\(22),
      I3 => \^q\(20),
      I4 => \^q\(23),
      I5 => \s_axi_bresp[1]_i_24_n_0\,
      O => \s_axi_bresp[1]_i_12_n_0\
    );
\s_axi_bresp[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_25_n_0\,
      I1 => \^epoch_refresh_phase_reg[0]_0\,
      I2 => mailbox_busy,
      I3 => \command_legal1_inferred__1/i__carry__1_n_1\,
      I4 => \epoch_refresh_phase_reg_n_0_[1]\,
      I5 => \s_axi_bresp[1]_i_26_n_0\,
      O => \s_axi_bresp[1]_i_13_n_0\
    );
\s_axi_bresp[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \w_strobe_reg_n_0_[2]\,
      I3 => command_legal_n_0,
      I4 => \w_strobe_reg_n_0_[3]\,
      I5 => request_i_5_n_0,
      O => \s_axi_bresp[1]_i_14_n_0\
    );
\s_axi_bresp[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => snap_error,
      I1 => snap_busy,
      I2 => snap_ready,
      O => \s_axi_bresp[1]_i_15_n_0\
    );
\s_axi_bresp[1]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => aw_addr(1),
      I1 => aw_addr(0),
      I2 => aw_addr(3),
      I3 => aw_addr(2),
      I4 => aw_addr(4),
      O => \s_axi_bresp[1]_i_16_n_0\
    );
\s_axi_bresp[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_27_n_0\,
      I1 => \s_axi_bresp[1]_i_28_n_0\,
      I2 => \s_axi_bresp[1]_i_29_n_0\,
      I3 => \s_axi_bresp[1]_i_30_n_0\,
      O => \s_axi_bresp[1]_i_17_n_0\
    );
\s_axi_bresp[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_31_n_0\,
      I1 => \s_axi_bresp[1]_i_32_n_0\,
      I2 => \s_axi_bresp[1]_i_33_n_0\,
      I3 => byte_merge_return(28),
      I4 => byte_merge_return(31),
      I5 => \s_axi_bresp[1]_i_34_n_0\,
      O => \s_axi_bresp[1]_i_18_n_0\
    );
\s_axi_bresp[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \epoch[31]_i_4_n_0\,
      I1 => epoch_refresh_required_reg_n_0,
      I2 => write_legal2,
      I3 => mailbox_busy,
      O => \s_axi_bresp[1]_i_19_n_0\
    );
\s_axi_bresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020200"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_8_n_0\,
      I1 => aw_addr(7),
      I2 => mailbox_busy,
      I3 => aw_addr(8),
      I4 => aw_addr(6),
      I5 => \s_axi_bresp[1]_i_9_n_0\,
      O => \s_axi_bresp[1]_i_2_n_0\
    );
\s_axi_bresp[1]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \w_data_reg_n_0_[5]\,
      I1 => snap_busy,
      I2 => \w_data_reg_n_0_[3]\,
      O => \s_axi_bresp[1]_i_20_n_0\
    );
\s_axi_bresp[1]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(14),
      I2 => \^q\(12),
      I3 => \^q\(15),
      O => \s_axi_bresp[1]_i_21_n_0\
    );
\s_axi_bresp[1]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \s_axi_bresp[1]_i_35_n_0\,
      O => \s_axi_bresp[1]_i_22_n_0\
    );
\s_axi_bresp[1]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(17),
      I2 => \^q\(18),
      I3 => \^q\(19),
      O => \s_axi_bresp[1]_i_23_n_0\
    );
\s_axi_bresp[1]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(24),
      I2 => \^q\(26),
      I3 => \^q\(25),
      I4 => \s_axi_bresp[1]_i_36_n_0\,
      O => \s_axi_bresp[1]_i_24_n_0\
    );
\s_axi_bresp[1]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => snap_ready,
      I1 => snap_busy,
      I2 => snap_error,
      I3 => \w_data_reg_n_0_[0]\,
      O => \s_axi_bresp[1]_i_25_n_0\
    );
\s_axi_bresp[1]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \w_data_reg_n_0_[4]\,
      I1 => channel_ready,
      I2 => epoch_refresh_required_reg_n_0,
      O => \s_axi_bresp[1]_i_26_n_0\
    );
\s_axi_bresp[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => p_2_in(5),
      I1 => p_0_in,
      I2 => \^q\(13),
      I3 => p_2_in(6),
      I4 => \^q\(14),
      I5 => \s_axi_bresp[1]_i_37_n_0\,
      O => \s_axi_bresp[1]_i_27_n_0\
    );
\s_axi_bresp[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_0_in,
      I2 => \^q\(9),
      I3 => p_2_in(2),
      I4 => \^q\(10),
      I5 => \s_axi_bresp[1]_i_38_n_0\,
      O => \s_axi_bresp[1]_i_28_n_0\
    );
\s_axi_bresp[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \w_data_reg_n_0_[4]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(4),
      I3 => \w_data_reg_n_0_[5]\,
      I4 => \^q\(5),
      I5 => \s_axi_bresp[1]_i_39_n_0\,
      O => \s_axi_bresp[1]_i_29_n_0\
    );
\s_axi_bresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_10_n_0\,
      I1 => \s_axi_bresp[1]_i_11_n_0\,
      I2 => \s_axi_bresp[1]_i_12_n_0\,
      I3 => \s_axi_bresp[1]_i_13_n_0\,
      I4 => \s_axi_bresp[1]_i_14_n_0\,
      I5 => request_i_4_n_0,
      O => \s_axi_bresp[1]_i_3_n_0\
    );
\s_axi_bresp[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \w_data_reg_n_0_[1]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \^q\(1),
      I3 => \w_data_reg_n_0_[2]\,
      I4 => \^q\(2),
      I5 => \s_axi_bresp[1]_i_40_n_0\,
      O => \s_axi_bresp[1]_i_30_n_0\
    );
\s_axi_bresp[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \w_data_reg_n_0_[20]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(20),
      I3 => \w_data_reg_n_0_[21]\,
      I4 => \^q\(21),
      I5 => \s_axi_bresp[1]_i_41_n_0\,
      O => \s_axi_bresp[1]_i_31_n_0\
    );
\s_axi_bresp[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \w_data_reg_n_0_[17]\,
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \^q\(17),
      I3 => \w_data_reg_n_0_[18]\,
      I4 => \^q\(18),
      I5 => \s_axi_bresp[1]_i_42_n_0\,
      O => \s_axi_bresp[1]_i_32_n_0\
    );
\s_axi_bresp[1]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(30),
      I1 => \w_data_reg_n_0_[30]\,
      I2 => \^q\(29),
      I3 => \w_strobe_reg_n_0_[3]\,
      I4 => \w_data_reg_n_0_[29]\,
      O => \s_axi_bresp[1]_i_33_n_0\
    );
\s_axi_bresp[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \w_data_reg_n_0_[25]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \^q\(25),
      I3 => \w_data_reg_n_0_[26]\,
      I4 => \^q\(26),
      I5 => \s_axi_bresp[1]_i_43_n_0\,
      O => \s_axi_bresp[1]_i_34_n_0\
    );
\s_axi_bresp[1]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \s_axi_bresp[1]_i_35_n_0\
    );
\s_axi_bresp[1]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(31),
      I2 => \^q\(28),
      I3 => \^q\(29),
      O => \s_axi_bresp[1]_i_36_n_0\
    );
\s_axi_bresp[1]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(15),
      I1 => p_2_in(7),
      I2 => \^q\(12),
      I3 => p_0_in,
      I4 => p_2_in(4),
      O => \s_axi_bresp[1]_i_37_n_0\
    );
\s_axi_bresp[1]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(11),
      I1 => p_2_in(3),
      I2 => \^q\(8),
      I3 => p_0_in,
      I4 => p_2_in(0),
      O => \s_axi_bresp[1]_i_38_n_0\
    );
\s_axi_bresp[1]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \w_data_reg_n_0_[7]\,
      I2 => \^q\(6),
      I3 => \w_strobe_reg_n_0_[0]\,
      I4 => \w_data_reg_n_0_[6]\,
      O => \s_axi_bresp[1]_i_39_n_0\
    );
\s_axi_bresp[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEEEEEEEFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_15_n_0\,
      I1 => \epoch[31]_i_3_n_0\,
      I2 => \s_axi_bresp[1]_i_16_n_0\,
      I3 => \s_axi_bresp[1]_i_17_n_0\,
      I4 => \s_axi_bresp[1]_i_18_n_0\,
      I5 => \s_axi_bresp[1]_i_19_n_0\,
      O => \^snap_error_0\
    );
\s_axi_bresp[1]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \w_data_reg_n_0_[3]\,
      I2 => \^q\(0),
      I3 => \w_strobe_reg_n_0_[0]\,
      I4 => \w_data_reg_n_0_[0]\,
      O => \s_axi_bresp[1]_i_40_n_0\
    );
\s_axi_bresp[1]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(23),
      I1 => \w_data_reg_n_0_[23]\,
      I2 => \^q\(22),
      I3 => \w_strobe_reg_n_0_[2]\,
      I4 => \w_data_reg_n_0_[22]\,
      O => \s_axi_bresp[1]_i_41_n_0\
    );
\s_axi_bresp[1]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(19),
      I1 => \w_data_reg_n_0_[19]\,
      I2 => \^q\(16),
      I3 => \w_strobe_reg_n_0_[2]\,
      I4 => \w_data_reg_n_0_[16]\,
      O => \s_axi_bresp[1]_i_42_n_0\
    );
\s_axi_bresp[1]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q\(27),
      I1 => \w_data_reg_n_0_[27]\,
      I2 => \^q\(24),
      I3 => \w_strobe_reg_n_0_[3]\,
      I4 => \w_data_reg_n_0_[24]\,
      O => \s_axi_bresp[1]_i_43_n_0\
    );
\s_axi_bresp[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => aw_addr(0),
      I1 => aw_addr(1),
      O => \s_axi_bresp[1]_i_5_n_0\
    );
\s_axi_bresp[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^aw_full\,
      I1 => \^w_full_reg_0\,
      I2 => \^s_axi_bvalid_reg_0\,
      O => aw_full012_out
    );
\s_axi_bresp[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77775777"
    )
        port map (
      I0 => aresetn,
      I1 => \^s_axi_bresp\(0),
      I2 => \^aw_full\,
      I3 => \^w_full_reg_0\,
      I4 => \^s_axi_bvalid_reg_0\,
      O => \s_axi_bresp[1]_i_7_n_0\
    );
\s_axi_bresp[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F7FFFFFFF"
    )
        port map (
      I0 => aw_addr(4),
      I1 => aw_addr(6),
      I2 => aw_addr(5),
      I3 => aw_addr(2),
      I4 => \s_axi_bresp[1]_i_5_n_0\,
      I5 => aw_addr(3),
      O => \s_axi_bresp[1]_i_8_n_0\
    );
\s_axi_bresp[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => aw_addr(14),
      I1 => aw_addr(15),
      I2 => aw_addr(10),
      I3 => aw_addr(11),
      I4 => \epoch[31]_i_5_n_0\,
      O => \s_axi_bresp[1]_i_9_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_bvalid_reg_1,
      Q => \^s_axi_bvalid_reg_0\,
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5F5C5C5C5F5C5F5"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => \s_axi_rdata[0]_i_3_n_0\,
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => s_axi_araddr(7),
      I4 => \s_axi_rdata[0]_i_4_n_0\,
      I5 => \s_axi_rdata[0]_i_5_n_0\,
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(0),
      I1 => abort_count_reg(0),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(0),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(0),
      O => \s_axi_rdata[0]_i_10_n_0\
    );
\s_axi_rdata[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(0),
      I1 => snap_error_code(0),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(32),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(0),
      O => \s_axi_rdata[0]_i_11_n_0\
    );
\s_axi_rdata[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(32),
      I1 => snap_commit_ticks(0),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(32),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(0),
      O => \s_axi_rdata[0]_i_12_n_0\
    );
\s_axi_rdata[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCA0F"
    )
        port map (
      I0 => \^q\(0),
      I1 => snap_busy,
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(4),
      O => \s_axi_rdata[0]_i_13_n_0\
    );
\s_axi_rdata[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5511050055110555"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_17_n_0\,
      I1 => \s_axi_rdata[0]_i_16_n_0\,
      I2 => \s_axi_rdata[0]_i_7_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[0]_i_6_n_0\,
      O => \s_axi_rdata[0]_i_14_n_0\
    );
\s_axi_rdata[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[0]_i_18_n_0\,
      I2 => s_axi_araddr(4),
      O => \s_axi_rdata[0]_i_15_n_0\
    );
\s_axi_rdata[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(352),
      I1 => \^box_shadow\(320),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(288),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(256),
      O => \s_axi_rdata[0]_i_16_n_0\
    );
\s_axi_rdata[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA000000"
    )
        port map (
      I0 => \^box_shadow\(384),
      I1 => \^box_shadow\(416),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(4),
      O => \s_axi_rdata[0]_i_17_n_0\
    );
\s_axi_rdata[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(0),
      I1 => snap_frame_id(0),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(0),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(0),
      O => \s_axi_rdata[0]_i_18_n_0\
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDFD0000FFFFFFFF"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_6_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => \s_axi_rdata[0]_i_7_n_0\,
      I4 => \s_axi_rdata[0]_i_8_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_9_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[0]_i_10_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C80"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_11_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => \s_axi_rdata[0]_i_12_n_0\,
      O => \s_axi_rdata[0]_i_4_n_0\
    );
\s_axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555155"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_13_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rresp[1]_i_4_n_0\,
      I4 => \s_axi_rdata[0]_i_14_n_0\,
      I5 => \s_axi_rdata[0]_i_15_n_0\,
      O => \s_axi_rdata[0]_i_5_n_0\
    );
\s_axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(96),
      I1 => \^box_shadow\(64),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(32),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(0),
      O => \s_axi_rdata[0]_i_6_n_0\
    );
\s_axi_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(224),
      I1 => \^box_shadow\(192),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(160),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(128),
      O => \s_axi_rdata[0]_i_7_n_0\
    );
\s_axi_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1FDF1F1FDFDFDF"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_16_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(2),
      I4 => \^box_shadow\(416),
      I5 => \^box_shadow\(384),
      O => \s_axi_rdata[0]_i_8_n_0\
    );
\s_axi_rdata[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(0),
      I1 => box_expires_reg(0),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(0),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(0),
      O => \s_axi_rdata[0]_i_9_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[10]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[10]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[10]_i_4_n_0\,
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(106),
      I1 => \^box_shadow\(74),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(42),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(10),
      O => \s_axi_rdata[10]_i_10_n_0\
    );
\s_axi_rdata[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(234),
      I1 => \^box_shadow\(202),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(170),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(138),
      O => \s_axi_rdata[10]_i_11_n_0\
    );
\s_axi_rdata[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[10]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(394),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(426),
      O => \s_axi_rdata[10]_i_12_n_0\
    );
\s_axi_rdata[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(10),
      I1 => snap_error_code(10),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(42),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(10),
      O => \s_axi_rdata[10]_i_13_n_0\
    );
\s_axi_rdata[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(362),
      I1 => \^box_shadow\(330),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(298),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(266),
      O => \s_axi_rdata[10]_i_14_n_0\
    );
\s_axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0540004055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[10]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[10]_i_8_n_0\,
      I5 => \s_axi_rdata[10]_i_9_n_0\,
      O => \s_axi_rdata[10]_i_3_n_0\
    );
\s_axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[10]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[10]_i_11_n_0\,
      I5 => \s_axi_rdata[10]_i_12_n_0\,
      O => \s_axi_rdata[10]_i_4_n_0\
    );
\s_axi_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(10),
      I1 => box_expires_reg(10),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(10),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(10),
      O => \s_axi_rdata[10]_i_5_n_0\
    );
\s_axi_rdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(10),
      I1 => abort_count_reg(10),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(10),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(10),
      O => \s_axi_rdata[10]_i_6_n_0\
    );
\s_axi_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(42),
      I1 => snap_commit_ticks(10),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(42),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(10),
      O => \s_axi_rdata[10]_i_7_n_0\
    );
\s_axi_rdata[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(10),
      I1 => snap_frame_id(10),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(10),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(10),
      O => \s_axi_rdata[10]_i_8_n_0\
    );
\s_axi_rdata[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7C7F7F7F7F7F"
    )
        port map (
      I0 => \s_axi_rdata[10]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(10),
      O => \s_axi_rdata[10]_i_9_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[11]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[11]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[11]_i_4_n_0\,
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(235),
      I1 => \^box_shadow\(203),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(171),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(139),
      O => \s_axi_rdata[11]_i_10_n_0\
    );
\s_axi_rdata[11]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(11),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[11]_i_11_n_0\
    );
\s_axi_rdata[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(43),
      I1 => snap_commit_ticks(11),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(43),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(11),
      O => \s_axi_rdata[11]_i_12_n_0\
    );
\s_axi_rdata[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(11),
      I1 => snap_frame_id(11),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(11),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(11),
      O => \s_axi_rdata[11]_i_13_n_0\
    );
\s_axi_rdata[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(11),
      I1 => snap_error_code(11),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(43),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(11),
      O => \s_axi_rdata[11]_i_14_n_0\
    );
\s_axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[11]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[11]_i_6_n_0\,
      I4 => \s_axi_rdata[11]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[11]_i_2_n_0\
    );
\s_axi_rdata[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(427),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(395),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[11]_i_8_n_0\,
      O => \s_axi_rdata[11]_i_3_n_0\
    );
\s_axi_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(11),
      I1 => abort_count_reg(11),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(11),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(11),
      O => \s_axi_rdata[11]_i_5_n_0\
    );
\s_axi_rdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(11),
      I1 => box_expires_reg(11),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(11),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(11),
      O => \s_axi_rdata[11]_i_6_n_0\
    );
\s_axi_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[11]_i_11_n_0\,
      I1 => \s_axi_rdata[11]_i_12_n_0\,
      I2 => \s_axi_rdata[11]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[11]_i_14_n_0\,
      O => \s_axi_rdata[11]_i_7_n_0\
    );
\s_axi_rdata[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(363),
      I1 => \^box_shadow\(331),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(299),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(267),
      O => \s_axi_rdata[11]_i_8_n_0\
    );
\s_axi_rdata[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(107),
      I1 => \^box_shadow\(75),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(43),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(11),
      O => \s_axi_rdata[11]_i_9_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[12]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[12]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[12]_i_4_n_0\,
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(236),
      I1 => \^box_shadow\(204),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(172),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(140),
      O => \s_axi_rdata[12]_i_10_n_0\
    );
\s_axi_rdata[12]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(12),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[12]_i_11_n_0\
    );
\s_axi_rdata[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(44),
      I1 => snap_commit_ticks(12),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(44),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(12),
      O => \s_axi_rdata[12]_i_12_n_0\
    );
\s_axi_rdata[12]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(12),
      I1 => snap_frame_id(12),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(12),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(12),
      O => \s_axi_rdata[12]_i_13_n_0\
    );
\s_axi_rdata[12]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(12),
      I1 => snap_error_code(12),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(44),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(12),
      O => \s_axi_rdata[12]_i_14_n_0\
    );
\s_axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[12]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[12]_i_6_n_0\,
      I4 => \s_axi_rdata[12]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[12]_i_2_n_0\
    );
\s_axi_rdata[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(428),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(396),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[12]_i_8_n_0\,
      O => \s_axi_rdata[12]_i_3_n_0\
    );
\s_axi_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(12),
      I1 => abort_count_reg(12),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(12),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(12),
      O => \s_axi_rdata[12]_i_5_n_0\
    );
\s_axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(12),
      I1 => box_expires_reg(12),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(12),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(12),
      O => \s_axi_rdata[12]_i_6_n_0\
    );
\s_axi_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[12]_i_11_n_0\,
      I1 => \s_axi_rdata[12]_i_12_n_0\,
      I2 => \s_axi_rdata[12]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[12]_i_14_n_0\,
      O => \s_axi_rdata[12]_i_7_n_0\
    );
\s_axi_rdata[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(364),
      I1 => \^box_shadow\(332),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(300),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(268),
      O => \s_axi_rdata[12]_i_8_n_0\
    );
\s_axi_rdata[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(108),
      I1 => \^box_shadow\(76),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(44),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(12),
      O => \s_axi_rdata[12]_i_9_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[13]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[13]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[13]_i_4_n_0\,
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(109),
      I1 => \^box_shadow\(77),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(45),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(13),
      O => \s_axi_rdata[13]_i_10_n_0\
    );
\s_axi_rdata[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(237),
      I1 => \^box_shadow\(205),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(173),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(141),
      O => \s_axi_rdata[13]_i_11_n_0\
    );
\s_axi_rdata[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[13]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(397),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(429),
      O => \s_axi_rdata[13]_i_12_n_0\
    );
\s_axi_rdata[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(45),
      I1 => snap_commit_ticks(13),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(45),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(13),
      O => \s_axi_rdata[13]_i_13_n_0\
    );
\s_axi_rdata[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(365),
      I1 => \^box_shadow\(333),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(301),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(269),
      O => \s_axi_rdata[13]_i_14_n_0\
    );
\s_axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500400055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[13]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[13]_i_8_n_0\,
      I5 => \s_axi_rdata[13]_i_9_n_0\,
      O => \s_axi_rdata[13]_i_3_n_0\
    );
\s_axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[13]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[13]_i_11_n_0\,
      I5 => \s_axi_rdata[13]_i_12_n_0\,
      O => \s_axi_rdata[13]_i_4_n_0\
    );
\s_axi_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(13),
      I1 => box_expires_reg(13),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(13),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(13),
      O => \s_axi_rdata[13]_i_5_n_0\
    );
\s_axi_rdata[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(13),
      I1 => abort_count_reg(13),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(13),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(13),
      O => \s_axi_rdata[13]_i_6_n_0\
    );
\s_axi_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(13),
      I1 => snap_error_code(13),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(45),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(13),
      O => \s_axi_rdata[13]_i_7_n_0\
    );
\s_axi_rdata[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(13),
      I1 => snap_frame_id(13),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(13),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(13),
      O => \s_axi_rdata[13]_i_8_n_0\
    );
\s_axi_rdata[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F4F7F7F7F7F7"
    )
        port map (
      I0 => \s_axi_rdata[13]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(13),
      O => \s_axi_rdata[13]_i_9_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[14]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[14]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[14]_i_4_n_0\,
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(238),
      I1 => \^box_shadow\(206),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(174),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(142),
      O => \s_axi_rdata[14]_i_10_n_0\
    );
\s_axi_rdata[14]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(14),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[14]_i_11_n_0\
    );
\s_axi_rdata[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(46),
      I1 => snap_commit_ticks(14),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(46),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(14),
      O => \s_axi_rdata[14]_i_12_n_0\
    );
\s_axi_rdata[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(14),
      I1 => snap_frame_id(14),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(14),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(14),
      O => \s_axi_rdata[14]_i_13_n_0\
    );
\s_axi_rdata[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(14),
      I1 => snap_error_code(14),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(46),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(14),
      O => \s_axi_rdata[14]_i_14_n_0\
    );
\s_axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[14]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[14]_i_6_n_0\,
      I4 => \s_axi_rdata[14]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[14]_i_2_n_0\
    );
\s_axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(430),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(398),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[14]_i_8_n_0\,
      O => \s_axi_rdata[14]_i_3_n_0\
    );
\s_axi_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(14),
      I1 => abort_count_reg(14),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(14),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(14),
      O => \s_axi_rdata[14]_i_5_n_0\
    );
\s_axi_rdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(14),
      I1 => box_expires_reg(14),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(14),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(14),
      O => \s_axi_rdata[14]_i_6_n_0\
    );
\s_axi_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[14]_i_11_n_0\,
      I1 => \s_axi_rdata[14]_i_12_n_0\,
      I2 => \s_axi_rdata[14]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[14]_i_14_n_0\,
      O => \s_axi_rdata[14]_i_7_n_0\
    );
\s_axi_rdata[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(366),
      I1 => \^box_shadow\(334),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(302),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(270),
      O => \s_axi_rdata[14]_i_8_n_0\
    );
\s_axi_rdata[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(110),
      I1 => \^box_shadow\(78),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(46),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(14),
      O => \s_axi_rdata[14]_i_9_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[15]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[15]_i_4_n_0\,
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(239),
      I1 => \^box_shadow\(207),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(175),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(143),
      O => \s_axi_rdata[15]_i_10_n_0\
    );
\s_axi_rdata[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(15),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[15]_i_11_n_0\
    );
\s_axi_rdata[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(47),
      I1 => snap_commit_ticks(15),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(47),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(15),
      O => \s_axi_rdata[15]_i_12_n_0\
    );
\s_axi_rdata[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(15),
      I1 => snap_frame_id(15),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(15),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(15),
      O => \s_axi_rdata[15]_i_13_n_0\
    );
\s_axi_rdata[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(15),
      I1 => snap_error_code(15),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(47),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(15),
      O => \s_axi_rdata[15]_i_14_n_0\
    );
\s_axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[15]_i_6_n_0\,
      I4 => \s_axi_rdata[15]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[15]_i_2_n_0\
    );
\s_axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(431),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(399),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[15]_i_8_n_0\,
      O => \s_axi_rdata[15]_i_3_n_0\
    );
\s_axi_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(15),
      I1 => abort_count_reg(15),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(15),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(15),
      O => \s_axi_rdata[15]_i_5_n_0\
    );
\s_axi_rdata[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(15),
      I1 => box_expires_reg(15),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(15),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(15),
      O => \s_axi_rdata[15]_i_6_n_0\
    );
\s_axi_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_11_n_0\,
      I1 => \s_axi_rdata[15]_i_12_n_0\,
      I2 => \s_axi_rdata[15]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[15]_i_14_n_0\,
      O => \s_axi_rdata[15]_i_7_n_0\
    );
\s_axi_rdata[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(367),
      I1 => \^box_shadow\(335),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(303),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(271),
      O => \s_axi_rdata[15]_i_8_n_0\
    );
\s_axi_rdata[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(111),
      I1 => \^box_shadow\(79),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(47),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(15),
      O => \s_axi_rdata[15]_i_9_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[16]_i_3_n_0\,
      I3 => \s_axi_rdata[16]_i_4_n_0\,
      I4 => \s_axi_rdata[16]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(48),
      I1 => snap_commit_ticks(16),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(48),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(16),
      O => \s_axi_rdata[16]_i_10_n_0\
    );
\s_axi_rdata[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_15_n_0\,
      I1 => \s_axi_rdata[16]_i_16_n_0\,
      I2 => \s_axi_rdata[16]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[16]_i_12_n_0\,
      O => \s_axi_rdata[16]_i_11_n_0\
    );
\s_axi_rdata[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(112),
      I1 => \^box_shadow\(80),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(48),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(16),
      O => \s_axi_rdata[16]_i_12_n_0\
    );
\s_axi_rdata[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(240),
      I1 => \^box_shadow\(208),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(176),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(144),
      O => \s_axi_rdata[16]_i_13_n_0\
    );
\s_axi_rdata[16]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[16]_i_16_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(400),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(432),
      O => \s_axi_rdata[16]_i_14_n_0\
    );
\s_axi_rdata[16]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(432),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(400),
      O => \s_axi_rdata[16]_i_15_n_0\
    );
\s_axi_rdata[16]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(368),
      I1 => \^box_shadow\(336),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(304),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(272),
      O => \s_axi_rdata[16]_i_16_n_0\
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[16]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[16]_i_2_n_0\
    );
\s_axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFF0CCEECCF0CC"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_8_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[16]_i_9_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[16]_i_10_n_0\,
      O => \s_axi_rdata[16]_i_3_n_0\
    );
\s_axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFDFFFF00F0"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[16]_i_11_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(16),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[16]_i_4_n_0\
    );
\s_axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[16]_i_12_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[16]_i_13_n_0\,
      I5 => \s_axi_rdata[16]_i_14_n_0\,
      O => \s_axi_rdata[16]_i_5_n_0\
    );
\s_axi_rdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(16),
      I1 => box_expires_reg(16),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(16),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(16),
      O => \s_axi_rdata[16]_i_6_n_0\
    );
\s_axi_rdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(16),
      I1 => abort_count_reg(16),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(16),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(16),
      O => \s_axi_rdata[16]_i_7_n_0\
    );
\s_axi_rdata[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(16),
      I1 => snap_error_code(16),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(48),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(16),
      O => \s_axi_rdata[16]_i_8_n_0\
    );
\s_axi_rdata[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(16),
      I1 => snap_frame_id(16),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(16),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(16),
      O => \s_axi_rdata[16]_i_9_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[17]_i_3_n_0\,
      I3 => \s_axi_rdata[17]_i_4_n_0\,
      I4 => \s_axi_rdata[17]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(17),
      I1 => snap_error_code(17),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(49),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(17),
      O => \s_axi_rdata[17]_i_10_n_0\
    );
\s_axi_rdata[17]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_15_n_0\,
      I1 => \s_axi_rdata[17]_i_16_n_0\,
      I2 => \s_axi_rdata[17]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[17]_i_12_n_0\,
      O => \s_axi_rdata[17]_i_11_n_0\
    );
\s_axi_rdata[17]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(113),
      I1 => \^box_shadow\(81),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(49),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(17),
      O => \s_axi_rdata[17]_i_12_n_0\
    );
\s_axi_rdata[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(241),
      I1 => \^box_shadow\(209),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(177),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(145),
      O => \s_axi_rdata[17]_i_13_n_0\
    );
\s_axi_rdata[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[17]_i_16_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(401),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(433),
      O => \s_axi_rdata[17]_i_14_n_0\
    );
\s_axi_rdata[17]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(433),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(401),
      O => \s_axi_rdata[17]_i_15_n_0\
    );
\s_axi_rdata[17]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(369),
      I1 => \^box_shadow\(337),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(305),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(273),
      O => \s_axi_rdata[17]_i_16_n_0\
    );
\s_axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[17]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[17]_i_2_n_0\
    );
\s_axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF0CCCCEEF0CC"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_8_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[17]_i_9_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[17]_i_10_n_0\,
      O => \s_axi_rdata[17]_i_3_n_0\
    );
\s_axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFDFFFF00F0"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[17]_i_11_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(17),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[17]_i_4_n_0\
    );
\s_axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[17]_i_12_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[17]_i_13_n_0\,
      I5 => \s_axi_rdata[17]_i_14_n_0\,
      O => \s_axi_rdata[17]_i_5_n_0\
    );
\s_axi_rdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(17),
      I1 => box_expires_reg(17),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(17),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(17),
      O => \s_axi_rdata[17]_i_6_n_0\
    );
\s_axi_rdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(17),
      I1 => abort_count_reg(17),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(17),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(17),
      O => \s_axi_rdata[17]_i_7_n_0\
    );
\s_axi_rdata[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(49),
      I1 => snap_commit_ticks(17),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(49),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(17),
      O => \s_axi_rdata[17]_i_8_n_0\
    );
\s_axi_rdata[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(17),
      I1 => snap_frame_id(17),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(17),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(17),
      O => \s_axi_rdata[17]_i_9_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFACACACAFACAFA"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_2_n_0\,
      I1 => \s_axi_rdata[18]_i_3_n_0\,
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => s_axi_araddr(7),
      I4 => \s_axi_rdata[18]_i_4_n_0\,
      I5 => \s_axi_rdata[18]_i_5_n_0\,
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(18),
      I1 => abort_count_reg(18),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(18),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(18),
      O => \s_axi_rdata[18]_i_10_n_0\
    );
\s_axi_rdata[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(50),
      I1 => snap_commit_ticks(18),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(50),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(18),
      O => \s_axi_rdata[18]_i_11_n_0\
    );
\s_axi_rdata[18]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(18),
      I1 => snap_frame_id(18),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(18),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(18),
      O => \s_axi_rdata[18]_i_12_n_0\
    );
\s_axi_rdata[18]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(18),
      I1 => snap_error_code(18),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(50),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(18),
      O => \s_axi_rdata[18]_i_13_n_0\
    );
\s_axi_rdata[18]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_16_n_0\,
      I1 => \s_axi_rdata[18]_i_15_n_0\,
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[18]_i_7_n_0\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[18]_i_6_n_0\,
      O => \s_axi_rdata[18]_i_14_n_0\
    );
\s_axi_rdata[18]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(370),
      I1 => \^box_shadow\(338),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(306),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(274),
      O => \s_axi_rdata[18]_i_15_n_0\
    );
\s_axi_rdata[18]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(434),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(402),
      O => \s_axi_rdata[18]_i_16_n_0\
    );
\s_axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[18]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[18]_i_8_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[18]_i_2_n_0\
    );
\s_axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_9_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[18]_i_10_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[18]_i_3_n_0\
    );
\s_axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF0CCCCEEF0CC"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_11_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[18]_i_12_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[18]_i_13_n_0\,
      O => \s_axi_rdata[18]_i_4_n_0\
    );
\s_axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7F7FFFF00F0"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_14_n_0\,
      I1 => \s_axi_rresp[1]_i_4_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(18),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[18]_i_5_n_0\
    );
\s_axi_rdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(114),
      I1 => \^box_shadow\(82),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(50),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(18),
      O => \s_axi_rdata[18]_i_6_n_0\
    );
\s_axi_rdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(242),
      I1 => \^box_shadow\(210),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(178),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(146),
      O => \s_axi_rdata[18]_i_7_n_0\
    );
\s_axi_rdata[18]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(434),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(402),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[18]_i_15_n_0\,
      O => \s_axi_rdata[18]_i_8_n_0\
    );
\s_axi_rdata[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(18),
      I1 => box_expires_reg(18),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(18),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(18),
      O => \s_axi_rdata[18]_i_9_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[19]_i_3_n_0\,
      I3 => \s_axi_rdata[19]_i_4_n_0\,
      I4 => \s_axi_rdata[19]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(19),
      I1 => snap_error_code(19),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(51),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(19),
      O => \s_axi_rdata[19]_i_10_n_0\
    );
\s_axi_rdata[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_15_n_0\,
      I1 => \s_axi_rdata[19]_i_16_n_0\,
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[19]_i_13_n_0\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[19]_i_12_n_0\,
      O => \s_axi_rdata[19]_i_11_n_0\
    );
\s_axi_rdata[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(115),
      I1 => \^box_shadow\(83),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(51),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(19),
      O => \s_axi_rdata[19]_i_12_n_0\
    );
\s_axi_rdata[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(243),
      I1 => \^box_shadow\(211),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(179),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(147),
      O => \s_axi_rdata[19]_i_13_n_0\
    );
\s_axi_rdata[19]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(435),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(403),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[19]_i_16_n_0\,
      O => \s_axi_rdata[19]_i_14_n_0\
    );
\s_axi_rdata[19]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(435),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(403),
      O => \s_axi_rdata[19]_i_15_n_0\
    );
\s_axi_rdata[19]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(371),
      I1 => \^box_shadow\(339),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(307),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(275),
      O => \s_axi_rdata[19]_i_16_n_0\
    );
\s_axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[19]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[19]_i_2_n_0\
    );
\s_axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF0CCCCEEF0CC"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_8_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[19]_i_9_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[19]_i_10_n_0\,
      O => \s_axi_rdata[19]_i_3_n_0\
    );
\s_axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7F7FFFF00F0"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_11_n_0\,
      I1 => \s_axi_rresp[1]_i_4_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(19),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[19]_i_4_n_0\
    );
\s_axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_12_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[19]_i_13_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[19]_i_14_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[19]_i_5_n_0\
    );
\s_axi_rdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(19),
      I1 => box_expires_reg(19),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(19),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(19),
      O => \s_axi_rdata[19]_i_6_n_0\
    );
\s_axi_rdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(19),
      I1 => abort_count_reg(19),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(19),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(19),
      O => \s_axi_rdata[19]_i_7_n_0\
    );
\s_axi_rdata[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(51),
      I1 => snap_commit_ticks(19),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(51),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(19),
      O => \s_axi_rdata[19]_i_8_n_0\
    );
\s_axi_rdata[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(19),
      I1 => snap_frame_id(19),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(19),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(19),
      O => \s_axi_rdata[19]_i_9_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20FF20FFFF0000"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(5),
      I2 => \s_axi_rdata_reg[1]_i_2_n_0\,
      I3 => \s_axi_rdata[1]_i_3_n_0\,
      I4 => \s_axi_rdata[1]_i_4_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(97),
      I1 => \^box_shadow\(65),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(33),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(1),
      O => \s_axi_rdata[1]_i_10_n_0\
    );
\s_axi_rdata[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(225),
      I1 => \^box_shadow\(193),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(161),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(129),
      O => \s_axi_rdata[1]_i_11_n_0\
    );
\s_axi_rdata[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[1]_i_17_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(385),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(417),
      O => \s_axi_rdata[1]_i_12_n_0\
    );
\s_axi_rdata[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(1),
      I1 => snap_error_code(1),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(33),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(1),
      O => \s_axi_rdata[1]_i_13_n_0\
    );
\s_axi_rdata[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(33),
      I1 => snap_commit_ticks(1),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(33),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(1),
      O => \s_axi_rdata[1]_i_14_n_0\
    );
\s_axi_rdata[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(1),
      I1 => snap_frame_id(1),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(1),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(1),
      O => \s_axi_rdata[1]_i_15_n_0\
    );
\s_axi_rdata[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(417),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(385),
      O => \s_axi_rdata[1]_i_16_n_0\
    );
\s_axi_rdata[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(353),
      I1 => \^box_shadow\(321),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(289),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(257),
      O => \s_axi_rdata[1]_i_17_n_0\
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455554454"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[1]_i_7_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[1]_i_8_n_0\,
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata[1]_i_9_n_0\,
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[1]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[1]_i_11_n_0\,
      I5 => \s_axi_rdata[1]_i_12_n_0\,
      O => \s_axi_rdata[1]_i_4_n_0\
    );
\s_axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(1),
      I1 => box_expires_reg(1),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(1),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(1),
      O => \s_axi_rdata[1]_i_5_n_0\
    );
\s_axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(1),
      I1 => abort_count_reg(1),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(1),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(1),
      O => \s_axi_rdata[1]_i_6_n_0\
    );
\s_axi_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FFAACCF000"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_13_n_0\,
      I1 => \s_axi_rdata[1]_i_14_n_0\,
      I2 => \s_axi_rdata[1]_i_15_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[1]_i_7_n_0\
    );
\s_axi_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_16_n_0\,
      I1 => \s_axi_rdata[1]_i_17_n_0\,
      I2 => \s_axi_rdata[1]_i_11_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[1]_i_10_n_0\,
      O => \s_axi_rdata[1]_i_8_n_0\
    );
\s_axi_rdata[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF443F"
    )
        port map (
      I0 => snap_ready,
      I1 => s_axi_araddr(2),
      I2 => \^q\(1),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[1]_i_9_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[20]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[20]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[20]_i_4_n_0\,
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(244),
      I1 => \^box_shadow\(212),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(180),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(148),
      O => \s_axi_rdata[20]_i_10_n_0\
    );
\s_axi_rdata[20]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(20),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[20]_i_11_n_0\
    );
\s_axi_rdata[20]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(52),
      I1 => snap_commit_ticks(20),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(52),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(20),
      O => \s_axi_rdata[20]_i_12_n_0\
    );
\s_axi_rdata[20]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(20),
      I1 => snap_frame_id(20),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(20),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(20),
      O => \s_axi_rdata[20]_i_13_n_0\
    );
\s_axi_rdata[20]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(20),
      I1 => snap_error_code(20),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(52),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(20),
      O => \s_axi_rdata[20]_i_14_n_0\
    );
\s_axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[20]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[20]_i_6_n_0\,
      I4 => \s_axi_rdata[20]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[20]_i_2_n_0\
    );
\s_axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(436),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(404),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[20]_i_8_n_0\,
      O => \s_axi_rdata[20]_i_3_n_0\
    );
\s_axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(20),
      I1 => abort_count_reg(20),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(20),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(20),
      O => \s_axi_rdata[20]_i_5_n_0\
    );
\s_axi_rdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(20),
      I1 => box_expires_reg(20),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(20),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(20),
      O => \s_axi_rdata[20]_i_6_n_0\
    );
\s_axi_rdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[20]_i_11_n_0\,
      I1 => \s_axi_rdata[20]_i_12_n_0\,
      I2 => \s_axi_rdata[20]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[20]_i_14_n_0\,
      O => \s_axi_rdata[20]_i_7_n_0\
    );
\s_axi_rdata[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(372),
      I1 => \^box_shadow\(340),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(308),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(276),
      O => \s_axi_rdata[20]_i_8_n_0\
    );
\s_axi_rdata[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(116),
      I1 => \^box_shadow\(84),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(52),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(20),
      O => \s_axi_rdata[20]_i_9_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[21]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[21]_i_4_n_0\,
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(245),
      I1 => \^box_shadow\(213),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(181),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(149),
      O => \s_axi_rdata[21]_i_10_n_0\
    );
\s_axi_rdata[21]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(21),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[21]_i_11_n_0\
    );
\s_axi_rdata[21]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(53),
      I1 => snap_commit_ticks(21),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(53),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(21),
      O => \s_axi_rdata[21]_i_12_n_0\
    );
\s_axi_rdata[21]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(21),
      I1 => snap_frame_id(21),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(21),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(21),
      O => \s_axi_rdata[21]_i_13_n_0\
    );
\s_axi_rdata[21]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(21),
      I1 => snap_error_code(21),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(53),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(21),
      O => \s_axi_rdata[21]_i_14_n_0\
    );
\s_axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[21]_i_6_n_0\,
      I4 => \s_axi_rdata[21]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[21]_i_2_n_0\
    );
\s_axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(437),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(405),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[21]_i_8_n_0\,
      O => \s_axi_rdata[21]_i_3_n_0\
    );
\s_axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(21),
      I1 => abort_count_reg(21),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(21),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(21),
      O => \s_axi_rdata[21]_i_5_n_0\
    );
\s_axi_rdata[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(21),
      I1 => box_expires_reg(21),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(21),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(21),
      O => \s_axi_rdata[21]_i_6_n_0\
    );
\s_axi_rdata[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_11_n_0\,
      I1 => \s_axi_rdata[21]_i_12_n_0\,
      I2 => \s_axi_rdata[21]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[21]_i_14_n_0\,
      O => \s_axi_rdata[21]_i_7_n_0\
    );
\s_axi_rdata[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(373),
      I1 => \^box_shadow\(341),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(309),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(277),
      O => \s_axi_rdata[21]_i_8_n_0\
    );
\s_axi_rdata[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(117),
      I1 => \^box_shadow\(85),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(53),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(21),
      O => \s_axi_rdata[21]_i_9_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFACACACAFACAFA"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_2_n_0\,
      I1 => \s_axi_rdata[22]_i_3_n_0\,
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => s_axi_araddr(7),
      I4 => \s_axi_rdata[22]_i_4_n_0\,
      I5 => \s_axi_rdata[22]_i_5_n_0\,
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(22),
      I1 => abort_count_reg(22),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(22),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(22),
      O => \s_axi_rdata[22]_i_10_n_0\
    );
\s_axi_rdata[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(22),
      I1 => snap_error_code(22),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(54),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(22),
      O => \s_axi_rdata[22]_i_11_n_0\
    );
\s_axi_rdata[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(22),
      I1 => snap_frame_id(22),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(22),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(22),
      O => \s_axi_rdata[22]_i_12_n_0\
    );
\s_axi_rdata[22]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(54),
      I1 => snap_commit_ticks(22),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(54),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(22),
      O => \s_axi_rdata[22]_i_13_n_0\
    );
\s_axi_rdata[22]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_16_n_0\,
      I1 => \s_axi_rdata[22]_i_15_n_0\,
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[22]_i_7_n_0\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[22]_i_6_n_0\,
      O => \s_axi_rdata[22]_i_14_n_0\
    );
\s_axi_rdata[22]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(374),
      I1 => \^box_shadow\(342),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(310),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(278),
      O => \s_axi_rdata[22]_i_15_n_0\
    );
\s_axi_rdata[22]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(438),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(406),
      O => \s_axi_rdata[22]_i_16_n_0\
    );
\s_axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[22]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[22]_i_8_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[22]_i_2_n_0\
    );
\s_axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_9_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[22]_i_10_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[22]_i_3_n_0\
    );
\s_axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFF0CCEECCF0CC"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_11_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[22]_i_12_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[22]_i_13_n_0\,
      O => \s_axi_rdata[22]_i_4_n_0\
    );
\s_axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7F7FFFF00F0"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_14_n_0\,
      I1 => \s_axi_rresp[1]_i_4_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(22),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[22]_i_5_n_0\
    );
\s_axi_rdata[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(118),
      I1 => \^box_shadow\(86),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(54),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(22),
      O => \s_axi_rdata[22]_i_6_n_0\
    );
\s_axi_rdata[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(246),
      I1 => \^box_shadow\(214),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(182),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(150),
      O => \s_axi_rdata[22]_i_7_n_0\
    );
\s_axi_rdata[22]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(438),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(406),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[22]_i_15_n_0\,
      O => \s_axi_rdata[22]_i_8_n_0\
    );
\s_axi_rdata[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(22),
      I1 => box_expires_reg(22),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(22),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(22),
      O => \s_axi_rdata[22]_i_9_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[23]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[23]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[23]_i_4_n_0\,
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(119),
      I1 => \^box_shadow\(87),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(55),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(23),
      O => \s_axi_rdata[23]_i_10_n_0\
    );
\s_axi_rdata[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(247),
      I1 => \^box_shadow\(215),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(183),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(151),
      O => \s_axi_rdata[23]_i_11_n_0\
    );
\s_axi_rdata[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[23]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(407),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(439),
      O => \s_axi_rdata[23]_i_12_n_0\
    );
\s_axi_rdata[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(55),
      I1 => snap_commit_ticks(23),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(55),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(23),
      O => \s_axi_rdata[23]_i_13_n_0\
    );
\s_axi_rdata[23]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(375),
      I1 => \^box_shadow\(343),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(311),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(279),
      O => \s_axi_rdata[23]_i_14_n_0\
    );
\s_axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500400055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[23]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[23]_i_8_n_0\,
      I5 => \s_axi_rdata[23]_i_9_n_0\,
      O => \s_axi_rdata[23]_i_3_n_0\
    );
\s_axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[23]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[23]_i_11_n_0\,
      I5 => \s_axi_rdata[23]_i_12_n_0\,
      O => \s_axi_rdata[23]_i_4_n_0\
    );
\s_axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(23),
      I1 => box_expires_reg(23),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(23),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(23),
      O => \s_axi_rdata[23]_i_5_n_0\
    );
\s_axi_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(23),
      I1 => abort_count_reg(23),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(23),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(23),
      O => \s_axi_rdata[23]_i_6_n_0\
    );
\s_axi_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(23),
      I1 => snap_error_code(23),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(55),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(23),
      O => \s_axi_rdata[23]_i_7_n_0\
    );
\s_axi_rdata[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(23),
      I1 => snap_frame_id(23),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(23),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(23),
      O => \s_axi_rdata[23]_i_8_n_0\
    );
\s_axi_rdata[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F4F7F7F7F7F7"
    )
        port map (
      I0 => \s_axi_rdata[23]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(23),
      O => \s_axi_rdata[23]_i_9_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[24]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[24]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[24]_i_4_n_0\,
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(120),
      I1 => \^box_shadow\(88),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(56),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(24),
      O => \s_axi_rdata[24]_i_10_n_0\
    );
\s_axi_rdata[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(248),
      I1 => \^box_shadow\(216),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(184),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(152),
      O => \s_axi_rdata[24]_i_11_n_0\
    );
\s_axi_rdata[24]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[24]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(408),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(440),
      O => \s_axi_rdata[24]_i_12_n_0\
    );
\s_axi_rdata[24]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(56),
      I1 => snap_commit_ticks(24),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(56),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(24),
      O => \s_axi_rdata[24]_i_13_n_0\
    );
\s_axi_rdata[24]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(376),
      I1 => \^box_shadow\(344),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(312),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(280),
      O => \s_axi_rdata[24]_i_14_n_0\
    );
\s_axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500400055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[24]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[24]_i_8_n_0\,
      I5 => \s_axi_rdata[24]_i_9_n_0\,
      O => \s_axi_rdata[24]_i_3_n_0\
    );
\s_axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[24]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[24]_i_11_n_0\,
      I5 => \s_axi_rdata[24]_i_12_n_0\,
      O => \s_axi_rdata[24]_i_4_n_0\
    );
\s_axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(24),
      I1 => box_expires_reg(24),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(24),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(24),
      O => \s_axi_rdata[24]_i_5_n_0\
    );
\s_axi_rdata[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(24),
      I1 => abort_count_reg(24),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(24),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(24),
      O => \s_axi_rdata[24]_i_6_n_0\
    );
\s_axi_rdata[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(24),
      I1 => snap_error_code(24),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(56),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(24),
      O => \s_axi_rdata[24]_i_7_n_0\
    );
\s_axi_rdata[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(24),
      I1 => snap_frame_id(24),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(24),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(24),
      O => \s_axi_rdata[24]_i_8_n_0\
    );
\s_axi_rdata[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F4F7F7F7F7F7"
    )
        port map (
      I0 => \s_axi_rdata[24]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(24),
      O => \s_axi_rdata[24]_i_9_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[25]_i_3_n_0\,
      I3 => \s_axi_rdata[25]_i_4_n_0\,
      I4 => \s_axi_rdata[25]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[25]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(25),
      I1 => snap_frame_id(25),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(25),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(25),
      O => \s_axi_rdata[25]_i_10_n_0\
    );
\s_axi_rdata[25]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_15_n_0\,
      I1 => \s_axi_rdata[25]_i_16_n_0\,
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[25]_i_13_n_0\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[25]_i_12_n_0\,
      O => \s_axi_rdata[25]_i_11_n_0\
    );
\s_axi_rdata[25]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(121),
      I1 => \^box_shadow\(89),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(57),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(25),
      O => \s_axi_rdata[25]_i_12_n_0\
    );
\s_axi_rdata[25]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(249),
      I1 => \^box_shadow\(217),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(185),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(153),
      O => \s_axi_rdata[25]_i_13_n_0\
    );
\s_axi_rdata[25]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(441),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(409),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[25]_i_16_n_0\,
      O => \s_axi_rdata[25]_i_14_n_0\
    );
\s_axi_rdata[25]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(441),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(409),
      O => \s_axi_rdata[25]_i_15_n_0\
    );
\s_axi_rdata[25]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(377),
      I1 => \^box_shadow\(345),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(313),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(281),
      O => \s_axi_rdata[25]_i_16_n_0\
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[25]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[25]_i_2_n_0\
    );
\s_axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FFAACCF000"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_8_n_0\,
      I1 => \s_axi_rdata[25]_i_9_n_0\,
      I2 => \s_axi_rdata[25]_i_10_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[25]_i_3_n_0\
    );
\s_axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7F7FFFF00F0"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_11_n_0\,
      I1 => \s_axi_rresp[1]_i_4_n_0\,
      I2 => s_axi_araddr(2),
      I3 => \^q\(25),
      I4 => \s_axi_rdata[30]_i_12_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rdata[25]_i_4_n_0\
    );
\s_axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_12_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[25]_i_13_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[25]_i_14_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[25]_i_5_n_0\
    );
\s_axi_rdata[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(25),
      I1 => box_expires_reg(25),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(25),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(25),
      O => \s_axi_rdata[25]_i_6_n_0\
    );
\s_axi_rdata[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(25),
      I1 => abort_count_reg(25),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(25),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(25),
      O => \s_axi_rdata[25]_i_7_n_0\
    );
\s_axi_rdata[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(25),
      I1 => snap_error_code(25),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(57),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(25),
      O => \s_axi_rdata[25]_i_8_n_0\
    );
\s_axi_rdata[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(57),
      I1 => snap_commit_ticks(25),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(57),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(25),
      O => \s_axi_rdata[25]_i_9_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[26]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[26]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[26]_i_4_n_0\,
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(250),
      I1 => \^box_shadow\(218),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(186),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(154),
      O => \s_axi_rdata[26]_i_10_n_0\
    );
\s_axi_rdata[26]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(26),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[26]_i_11_n_0\
    );
\s_axi_rdata[26]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(58),
      I1 => snap_commit_ticks(26),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(58),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(26),
      O => \s_axi_rdata[26]_i_12_n_0\
    );
\s_axi_rdata[26]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(26),
      I1 => snap_frame_id(26),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(26),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(26),
      O => \s_axi_rdata[26]_i_13_n_0\
    );
\s_axi_rdata[26]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(26),
      I1 => snap_error_code(26),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(58),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(26),
      O => \s_axi_rdata[26]_i_14_n_0\
    );
\s_axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[26]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[26]_i_6_n_0\,
      I4 => \s_axi_rdata[26]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[26]_i_2_n_0\
    );
\s_axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(442),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(410),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[26]_i_8_n_0\,
      O => \s_axi_rdata[26]_i_3_n_0\
    );
\s_axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(26),
      I1 => abort_count_reg(26),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(26),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(26),
      O => \s_axi_rdata[26]_i_5_n_0\
    );
\s_axi_rdata[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(26),
      I1 => box_expires_reg(26),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(26),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(26),
      O => \s_axi_rdata[26]_i_6_n_0\
    );
\s_axi_rdata[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[26]_i_11_n_0\,
      I1 => \s_axi_rdata[26]_i_12_n_0\,
      I2 => \s_axi_rdata[26]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[26]_i_14_n_0\,
      O => \s_axi_rdata[26]_i_7_n_0\
    );
\s_axi_rdata[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(378),
      I1 => \^box_shadow\(346),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(314),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(282),
      O => \s_axi_rdata[26]_i_8_n_0\
    );
\s_axi_rdata[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(122),
      I1 => \^box_shadow\(90),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(58),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(26),
      O => \s_axi_rdata[26]_i_9_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[27]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[27]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[27]_i_4_n_0\,
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F4F7F7F7F7F7"
    )
        port map (
      I0 => \s_axi_rdata[27]_i_14_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(27),
      O => \s_axi_rdata[27]_i_10_n_0\
    );
\s_axi_rdata[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(123),
      I1 => \^box_shadow\(91),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(59),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(27),
      O => \s_axi_rdata[27]_i_11_n_0\
    );
\s_axi_rdata[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(251),
      I1 => \^box_shadow\(219),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(187),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(155),
      O => \s_axi_rdata[27]_i_12_n_0\
    );
\s_axi_rdata[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[27]_i_15_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(411),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(443),
      O => \s_axi_rdata[27]_i_13_n_0\
    );
\s_axi_rdata[27]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(59),
      I1 => snap_commit_ticks(27),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(59),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(27),
      O => \s_axi_rdata[27]_i_14_n_0\
    );
\s_axi_rdata[27]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(379),
      I1 => \^box_shadow\(347),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(315),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(283),
      O => \s_axi_rdata[27]_i_15_n_0\
    );
\s_axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500400055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[27]_i_8_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[27]_i_9_n_0\,
      I5 => \s_axi_rdata[27]_i_10_n_0\,
      O => \s_axi_rdata[27]_i_3_n_0\
    );
\s_axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[27]_i_11_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[27]_i_12_n_0\,
      I5 => \s_axi_rdata[27]_i_13_n_0\,
      O => \s_axi_rdata[27]_i_4_n_0\
    );
\s_axi_rdata[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(7),
      O => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(27),
      I1 => box_expires_reg(27),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(27),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(27),
      O => \s_axi_rdata[27]_i_6_n_0\
    );
\s_axi_rdata[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(27),
      I1 => abort_count_reg(27),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(27),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(27),
      O => \s_axi_rdata[27]_i_7_n_0\
    );
\s_axi_rdata[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(27),
      I1 => snap_error_code(27),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(59),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(27),
      O => \s_axi_rdata[27]_i_8_n_0\
    );
\s_axi_rdata[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(27),
      I1 => snap_frame_id(27),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(27),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(27),
      O => \s_axi_rdata[27]_i_9_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[28]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[28]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[28]_i_4_n_0\,
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(252),
      I1 => \^box_shadow\(220),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(188),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(156),
      O => \s_axi_rdata[28]_i_10_n_0\
    );
\s_axi_rdata[28]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => \^q\(28),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[28]_i_11_n_0\
    );
\s_axi_rdata[28]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(28),
      I1 => snap_error_code(28),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(60),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(28),
      O => \s_axi_rdata[28]_i_12_n_0\
    );
\s_axi_rdata[28]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(28),
      I1 => snap_frame_id(28),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(28),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(28),
      O => \s_axi_rdata[28]_i_13_n_0\
    );
\s_axi_rdata[28]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(60),
      I1 => snap_commit_ticks(28),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(60),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(28),
      O => \s_axi_rdata[28]_i_14_n_0\
    );
\s_axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[28]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[28]_i_6_n_0\,
      I4 => \s_axi_rdata[28]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[28]_i_2_n_0\
    );
\s_axi_rdata[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(444),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(412),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[28]_i_8_n_0\,
      O => \s_axi_rdata[28]_i_3_n_0\
    );
\s_axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(28),
      I1 => abort_count_reg(28),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(28),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(28),
      O => \s_axi_rdata[28]_i_5_n_0\
    );
\s_axi_rdata[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(28),
      I1 => box_expires_reg(28),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(28),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(28),
      O => \s_axi_rdata[28]_i_6_n_0\
    );
\s_axi_rdata[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100055511550555"
    )
        port map (
      I0 => \s_axi_rdata[28]_i_11_n_0\,
      I1 => \s_axi_rdata[28]_i_12_n_0\,
      I2 => \s_axi_rdata[28]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[28]_i_14_n_0\,
      O => \s_axi_rdata[28]_i_7_n_0\
    );
\s_axi_rdata[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(380),
      I1 => \^box_shadow\(348),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(316),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(284),
      O => \s_axi_rdata[28]_i_8_n_0\
    );
\s_axi_rdata[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(124),
      I1 => \^box_shadow\(92),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(60),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(28),
      O => \s_axi_rdata[28]_i_9_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[29]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[29]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[29]_i_4_n_0\,
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(253),
      I1 => \^box_shadow\(221),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(189),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(157),
      O => \s_axi_rdata[29]_i_10_n_0\
    );
\s_axi_rdata[29]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => \^q\(29),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[29]_i_11_n_0\
    );
\s_axi_rdata[29]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(29),
      I1 => snap_error_code(29),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(61),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(29),
      O => \s_axi_rdata[29]_i_12_n_0\
    );
\s_axi_rdata[29]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(29),
      I1 => snap_frame_id(29),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(29),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(29),
      O => \s_axi_rdata[29]_i_13_n_0\
    );
\s_axi_rdata[29]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(61),
      I1 => snap_commit_ticks(29),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(61),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(29),
      O => \s_axi_rdata[29]_i_14_n_0\
    );
\s_axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[29]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[29]_i_6_n_0\,
      I4 => \s_axi_rdata[29]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[29]_i_2_n_0\
    );
\s_axi_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(445),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(413),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[29]_i_8_n_0\,
      O => \s_axi_rdata[29]_i_3_n_0\
    );
\s_axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(29),
      I1 => abort_count_reg(29),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(29),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(29),
      O => \s_axi_rdata[29]_i_5_n_0\
    );
\s_axi_rdata[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(29),
      I1 => box_expires_reg(29),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(29),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(29),
      O => \s_axi_rdata[29]_i_6_n_0\
    );
\s_axi_rdata[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100055511550555"
    )
        port map (
      I0 => \s_axi_rdata[29]_i_11_n_0\,
      I1 => \s_axi_rdata[29]_i_12_n_0\,
      I2 => \s_axi_rdata[29]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[29]_i_14_n_0\,
      O => \s_axi_rdata[29]_i_7_n_0\
    );
\s_axi_rdata[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(381),
      I1 => \^box_shadow\(349),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(317),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(285),
      O => \s_axi_rdata[29]_i_8_n_0\
    );
\s_axi_rdata[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(125),
      I1 => \^box_shadow\(93),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(61),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(29),
      O => \s_axi_rdata[29]_i_9_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20FF20FFFF0000"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(5),
      I2 => \s_axi_rdata_reg[2]_i_2_n_0\,
      I3 => \s_axi_rdata[2]_i_3_n_0\,
      I4 => \s_axi_rdata[2]_i_4_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(98),
      I1 => \^box_shadow\(66),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(34),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(2),
      O => \s_axi_rdata[2]_i_10_n_0\
    );
\s_axi_rdata[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(226),
      I1 => \^box_shadow\(194),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(162),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(130),
      O => \s_axi_rdata[2]_i_11_n_0\
    );
\s_axi_rdata[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[2]_i_17_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(386),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(418),
      O => \s_axi_rdata[2]_i_12_n_0\
    );
\s_axi_rdata[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(2),
      I1 => snap_error_code(2),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(34),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(2),
      O => \s_axi_rdata[2]_i_13_n_0\
    );
\s_axi_rdata[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(34),
      I1 => snap_commit_ticks(2),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(34),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(2),
      O => \s_axi_rdata[2]_i_14_n_0\
    );
\s_axi_rdata[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(2),
      I1 => snap_frame_id(2),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(2),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(2),
      O => \s_axi_rdata[2]_i_15_n_0\
    );
\s_axi_rdata[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(418),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(386),
      O => \s_axi_rdata[2]_i_16_n_0\
    );
\s_axi_rdata[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(354),
      I1 => \^box_shadow\(322),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(290),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(258),
      O => \s_axi_rdata[2]_i_17_n_0\
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455554454"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[2]_i_7_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[2]_i_8_n_0\,
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata[2]_i_9_n_0\,
      O => \s_axi_rdata[2]_i_3_n_0\
    );
\s_axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[2]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[2]_i_11_n_0\,
      I5 => \s_axi_rdata[2]_i_12_n_0\,
      O => \s_axi_rdata[2]_i_4_n_0\
    );
\s_axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(2),
      I1 => box_expires_reg(2),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(2),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(2),
      O => \s_axi_rdata[2]_i_5_n_0\
    );
\s_axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(2),
      I1 => abort_count_reg(2),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(2),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(2),
      O => \s_axi_rdata[2]_i_6_n_0\
    );
\s_axi_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FFAACCF000"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_13_n_0\,
      I1 => \s_axi_rdata[2]_i_14_n_0\,
      I2 => \s_axi_rdata[2]_i_15_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[2]_i_7_n_0\
    );
\s_axi_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_16_n_0\,
      I1 => \s_axi_rdata[2]_i_17_n_0\,
      I2 => \s_axi_rdata[2]_i_11_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[2]_i_10_n_0\,
      O => \s_axi_rdata[2]_i_8_n_0\
    );
\s_axi_rdata[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4373"
    )
        port map (
      I0 => snap_error,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \^q\(2),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[2]_i_9_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[30]_i_3_n_0\,
      I3 => \s_axi_rdata[30]_i_4_n_0\,
      I4 => \s_axi_rdata[30]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(30),
      I1 => snap_error_code(30),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(62),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(30),
      O => \s_axi_rdata[30]_i_10_n_0\
    );
\s_axi_rdata[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_16_n_0\,
      I1 => \s_axi_rdata[30]_i_17_n_0\,
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[30]_i_14_n_0\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[30]_i_13_n_0\,
      O => \s_axi_rdata[30]_i_11_n_0\
    );
\s_axi_rdata[30]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_araddr(4),
      O => \s_axi_rdata[30]_i_12_n_0\
    );
\s_axi_rdata[30]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(126),
      I1 => \^box_shadow\(94),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(62),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(30),
      O => \s_axi_rdata[30]_i_13_n_0\
    );
\s_axi_rdata[30]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(254),
      I1 => \^box_shadow\(222),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(190),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(158),
      O => \s_axi_rdata[30]_i_14_n_0\
    );
\s_axi_rdata[30]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(446),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(414),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[30]_i_17_n_0\,
      O => \s_axi_rdata[30]_i_15_n_0\
    );
\s_axi_rdata[30]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(446),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(414),
      O => \s_axi_rdata[30]_i_16_n_0\
    );
\s_axi_rdata[30]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(382),
      I1 => \^box_shadow\(350),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(318),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(286),
      O => \s_axi_rdata[30]_i_17_n_0\
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[30]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[30]_i_2_n_0\
    );
\s_axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF0CCCCEEF0CC"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_8_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[30]_i_9_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[30]_i_10_n_0\,
      O => \s_axi_rdata[30]_i_3_n_0\
    );
\s_axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F7F0FFFFF7F0"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_11_n_0\,
      I1 => \s_axi_rresp[1]_i_4_n_0\,
      I2 => \s_axi_rdata[30]_i_12_n_0\,
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      I5 => \^q\(30),
      O => \s_axi_rdata[30]_i_4_n_0\
    );
\s_axi_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_13_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[30]_i_14_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[30]_i_15_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[30]_i_5_n_0\
    );
\s_axi_rdata[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(30),
      I1 => box_expires_reg(30),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(30),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(30),
      O => \s_axi_rdata[30]_i_6_n_0\
    );
\s_axi_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(30),
      I1 => abort_count_reg(30),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(30),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(30),
      O => \s_axi_rdata[30]_i_7_n_0\
    );
\s_axi_rdata[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(62),
      I1 => snap_commit_ticks(30),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(62),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(30),
      O => \s_axi_rdata[30]_i_8_n_0\
    );
\s_axi_rdata[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(30),
      I1 => snap_frame_id(30),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(30),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(30),
      O => \s_axi_rdata[30]_i_9_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => aresetn,
      O => s_axi_rvalid09_out
    );
\s_axi_rdata[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(383),
      I1 => \^box_shadow\(351),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(319),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(287),
      O => \s_axi_rdata[31]_i_10_n_0\
    );
\s_axi_rdata[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(127),
      I1 => \^box_shadow\(95),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(63),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(31),
      O => \s_axi_rdata[31]_i_11_n_0\
    );
\s_axi_rdata[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(255),
      I1 => \^box_shadow\(223),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(191),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(159),
      O => \s_axi_rdata[31]_i_12_n_0\
    );
\s_axi_rdata[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => \^q\(31),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[31]_i_13_n_0\
    );
\s_axi_rdata[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(31),
      I1 => snap_error_code(31),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(63),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(31),
      O => \s_axi_rdata[31]_i_14_n_0\
    );
\s_axi_rdata[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(31),
      I1 => snap_frame_id(31),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(31),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(31),
      O => \s_axi_rdata[31]_i_15_n_0\
    );
\s_axi_rdata[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(63),
      I1 => snap_commit_ticks(31),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(63),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(31),
      O => \s_axi_rdata[31]_i_16_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[31]_i_5_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[31]_i_6_n_0\,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_7_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[31]_i_8_n_0\,
      I4 => \s_axi_rdata[31]_i_9_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(6),
      I3 => \s_axi_rresp[1]_i_2_n_0\,
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(447),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(415),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[31]_i_10_n_0\,
      O => \s_axi_rdata[31]_i_5_n_0\
    );
\s_axi_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(31),
      I1 => abort_count_reg(31),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(31),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(31),
      O => \s_axi_rdata[31]_i_7_n_0\
    );
\s_axi_rdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(31),
      I1 => box_expires_reg(31),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(31),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(31),
      O => \s_axi_rdata[31]_i_8_n_0\
    );
\s_axi_rdata[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100055511550555"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_13_n_0\,
      I1 => \s_axi_rdata[31]_i_14_n_0\,
      I2 => \s_axi_rdata[31]_i_15_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[31]_i_16_n_0\,
      O => \s_axi_rdata[31]_i_9_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[3]_i_3_n_0\,
      I3 => \s_axi_rdata[3]_i_4_n_0\,
      I4 => \s_axi_rdata[3]_i_5_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(3),
      I1 => snap_frame_id(3),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(3),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(3),
      O => \s_axi_rdata[3]_i_10_n_0\
    );
\s_axi_rdata[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(419),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(387),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[3]_i_16_n_0\,
      O => \s_axi_rdata[3]_i_12_n_0\
    );
\s_axi_rdata[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF443F"
    )
        port map (
      I0 => mailbox_busy,
      I1 => s_axi_araddr(2),
      I2 => \^q\(3),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[3]_i_13_n_0\
    );
\s_axi_rdata[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(99),
      I1 => \^box_shadow\(67),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(35),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(3),
      O => \s_axi_rdata[3]_i_14_n_0\
    );
\s_axi_rdata[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(227),
      I1 => \^box_shadow\(195),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(163),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(131),
      O => \s_axi_rdata[3]_i_15_n_0\
    );
\s_axi_rdata[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(355),
      I1 => \^box_shadow\(323),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(291),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(259),
      O => \s_axi_rdata[3]_i_16_n_0\
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B80000"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_6_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[3]_i_7_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(7),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FFAACCF000"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_8_n_0\,
      I1 => \s_axi_rdata[3]_i_9_n_0\,
      I2 => \s_axi_rdata[3]_i_10_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[3]_i_3_n_0\
    );
\s_axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001DFF"
    )
        port map (
      I0 => \s_axi_rdata_reg[3]_i_11_n_0\,
      I1 => s_axi_araddr(5),
      I2 => \s_axi_rdata[3]_i_12_n_0\,
      I3 => \s_axi_rresp[1]_i_4_n_0\,
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata[3]_i_13_n_0\,
      O => \s_axi_rdata[3]_i_4_n_0\
    );
\s_axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_14_n_0\,
      I1 => s_axi_araddr(4),
      I2 => \s_axi_rdata[3]_i_15_n_0\,
      I3 => s_axi_araddr(5),
      I4 => \s_axi_rdata[3]_i_12_n_0\,
      I5 => \s_axi_rresp[1]_i_4_n_0\,
      O => \s_axi_rdata[3]_i_5_n_0\
    );
\s_axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(3),
      I1 => box_expires_reg(3),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(3),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(3),
      O => \s_axi_rdata[3]_i_6_n_0\
    );
\s_axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(3),
      I1 => abort_count_reg(3),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(3),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(3),
      O => \s_axi_rdata[3]_i_7_n_0\
    );
\s_axi_rdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(3),
      I1 => snap_error_code(3),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(35),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(3),
      O => \s_axi_rdata[3]_i_8_n_0\
    );
\s_axi_rdata[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(35),
      I1 => snap_commit_ticks(3),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(35),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(3),
      O => \s_axi_rdata[3]_i_9_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20FF20FFFF0000"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_araddr(5),
      I2 => \s_axi_rdata_reg[4]_i_2_n_0\,
      I3 => \s_axi_rdata[4]_i_3_n_0\,
      I4 => \s_axi_rdata[4]_i_4_n_0\,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(100),
      I1 => \^box_shadow\(68),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(36),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(4),
      O => \s_axi_rdata[4]_i_10_n_0\
    );
\s_axi_rdata[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(228),
      I1 => \^box_shadow\(196),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(164),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(132),
      O => \s_axi_rdata[4]_i_11_n_0\
    );
\s_axi_rdata[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[4]_i_17_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(388),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(420),
      O => \s_axi_rdata[4]_i_12_n_0\
    );
\s_axi_rdata[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(36),
      I1 => snap_commit_ticks(4),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(36),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(4),
      O => \s_axi_rdata[4]_i_13_n_0\
    );
\s_axi_rdata[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(4),
      I1 => snap_frame_id(4),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(4),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(4),
      O => \s_axi_rdata[4]_i_14_n_0\
    );
\s_axi_rdata[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(4),
      I1 => snap_error_code(4),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(36),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(4),
      O => \s_axi_rdata[4]_i_15_n_0\
    );
\s_axi_rdata[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^box_shadow\(420),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(388),
      O => \s_axi_rdata[4]_i_16_n_0\
    );
\s_axi_rdata[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(356),
      I1 => \^box_shadow\(324),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(292),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(260),
      O => \s_axi_rdata[4]_i_17_n_0\
    );
\s_axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455554454"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[4]_i_7_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[4]_i_8_n_0\,
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata[4]_i_9_n_0\,
      O => \s_axi_rdata[4]_i_3_n_0\
    );
\s_axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[4]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[4]_i_11_n_0\,
      I5 => \s_axi_rdata[4]_i_12_n_0\,
      O => \s_axi_rdata[4]_i_4_n_0\
    );
\s_axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(4),
      I1 => box_expires_reg(4),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(4),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(4),
      O => \s_axi_rdata[4]_i_5_n_0\
    );
\s_axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(4),
      I1 => abort_count_reg(4),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(4),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(4),
      O => \s_axi_rdata[4]_i_6_n_0\
    );
\s_axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF0CCCCEEF0CC"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_13_n_0\,
      I1 => s_axi_araddr(7),
      I2 => \s_axi_rdata[4]_i_14_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[4]_i_15_n_0\,
      O => \s_axi_rdata[4]_i_7_n_0\
    );
\s_axi_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_16_n_0\,
      I1 => \s_axi_rdata[4]_i_17_n_0\,
      I2 => \s_axi_rdata[4]_i_11_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[4]_i_10_n_0\,
      O => \s_axi_rdata[4]_i_8_n_0\
    );
\s_axi_rdata[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF350F"
    )
        port map (
      I0 => \^q\(4),
      I1 => channel_ready,
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[4]_i_9_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[5]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[5]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[5]_i_4_n_0\,
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(101),
      I1 => \^box_shadow\(69),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(37),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(5),
      O => \s_axi_rdata[5]_i_10_n_0\
    );
\s_axi_rdata[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(229),
      I1 => \^box_shadow\(197),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(165),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(133),
      O => \s_axi_rdata[5]_i_11_n_0\
    );
\s_axi_rdata[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[5]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(389),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(421),
      O => \s_axi_rdata[5]_i_12_n_0\
    );
\s_axi_rdata[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(5),
      I1 => snap_error_code(5),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(37),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(5),
      O => \s_axi_rdata[5]_i_13_n_0\
    );
\s_axi_rdata[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(357),
      I1 => \^box_shadow\(325),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(293),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(261),
      O => \s_axi_rdata[5]_i_14_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0540004055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[5]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[5]_i_8_n_0\,
      I5 => \s_axi_rdata[5]_i_9_n_0\,
      O => \s_axi_rdata[5]_i_3_n_0\
    );
\s_axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[5]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[5]_i_11_n_0\,
      I5 => \s_axi_rdata[5]_i_12_n_0\,
      O => \s_axi_rdata[5]_i_4_n_0\
    );
\s_axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(5),
      I1 => box_expires_reg(5),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(5),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(5),
      O => \s_axi_rdata[5]_i_5_n_0\
    );
\s_axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(5),
      I1 => abort_count_reg(5),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(5),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(5),
      O => \s_axi_rdata[5]_i_6_n_0\
    );
\s_axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(37),
      I1 => snap_commit_ticks(5),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(37),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(5),
      O => \s_axi_rdata[5]_i_7_n_0\
    );
\s_axi_rdata[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(5),
      I1 => snap_frame_id(5),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(5),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(5),
      O => \s_axi_rdata[5]_i_8_n_0\
    );
\s_axi_rdata[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7C7F7F7F7F7F"
    )
        port map (
      I0 => \s_axi_rdata[5]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(5),
      O => \s_axi_rdata[5]_i_9_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[6]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[6]_i_4_n_0\,
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(230),
      I1 => \^box_shadow\(198),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(166),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(134),
      O => \s_axi_rdata[6]_i_10_n_0\
    );
\s_axi_rdata[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(6),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[6]_i_11_n_0\
    );
\s_axi_rdata[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(6),
      I1 => snap_error_code(6),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(38),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(6),
      O => \s_axi_rdata[6]_i_12_n_0\
    );
\s_axi_rdata[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(6),
      I1 => snap_frame_id(6),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(6),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(6),
      O => \s_axi_rdata[6]_i_13_n_0\
    );
\s_axi_rdata[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(38),
      I1 => snap_commit_ticks(6),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(38),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(6),
      O => \s_axi_rdata[6]_i_14_n_0\
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[6]_i_6_n_0\,
      I4 => \s_axi_rdata[6]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(422),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(390),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[6]_i_8_n_0\,
      O => \s_axi_rdata[6]_i_3_n_0\
    );
\s_axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(6),
      I1 => abort_count_reg(6),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(6),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(6),
      O => \s_axi_rdata[6]_i_5_n_0\
    );
\s_axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(6),
      I1 => box_expires_reg(6),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(6),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(6),
      O => \s_axi_rdata[6]_i_6_n_0\
    );
\s_axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100055511550555"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_11_n_0\,
      I1 => \s_axi_rdata[6]_i_12_n_0\,
      I2 => \s_axi_rdata[6]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[6]_i_14_n_0\,
      O => \s_axi_rdata[6]_i_7_n_0\
    );
\s_axi_rdata[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(358),
      I1 => \^box_shadow\(326),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(294),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(262),
      O => \s_axi_rdata[6]_i_8_n_0\
    );
\s_axi_rdata[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(102),
      I1 => \^box_shadow\(70),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(38),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(6),
      O => \s_axi_rdata[6]_i_9_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F4F4444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => \s_axi_rdata[7]_i_3_n_0\,
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata_reg[7]_i_4_n_0\,
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(231),
      I1 => \^box_shadow\(199),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(167),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(135),
      O => \s_axi_rdata[7]_i_10_n_0\
    );
\s_axi_rdata[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(7),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      O => \s_axi_rdata[7]_i_11_n_0\
    );
\s_axi_rdata[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(39),
      I1 => snap_commit_ticks(7),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(39),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(7),
      O => \s_axi_rdata[7]_i_12_n_0\
    );
\s_axi_rdata[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(7),
      I1 => snap_frame_id(7),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(7),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(7),
      O => \s_axi_rdata[7]_i_13_n_0\
    );
\s_axi_rdata[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(7),
      I1 => snap_error_code(7),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(39),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(7),
      O => \s_axi_rdata[7]_i_14_n_0\
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF1FDFFFF0000"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_5_n_0\,
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[7]_i_6_n_0\,
      I4 => \s_axi_rdata[7]_i_7_n_0\,
      I5 => s_axi_araddr(7),
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(423),
      I1 => s_axi_araddr(2),
      I2 => \^box_shadow\(391),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[7]_i_8_n_0\,
      O => \s_axi_rdata[7]_i_3_n_0\
    );
\s_axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(7),
      I1 => abort_count_reg(7),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(7),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(7),
      O => \s_axi_rdata[7]_i_5_n_0\
    );
\s_axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(7),
      I1 => box_expires_reg(7),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(7),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(7),
      O => \s_axi_rdata[7]_i_6_n_0\
    );
\s_axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055555110555"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_11_n_0\,
      I1 => \s_axi_rdata[7]_i_12_n_0\,
      I2 => \s_axi_rdata[7]_i_13_n_0\,
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(5),
      I5 => \s_axi_rdata[7]_i_14_n_0\,
      O => \s_axi_rdata[7]_i_7_n_0\
    );
\s_axi_rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(359),
      I1 => \^box_shadow\(327),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(295),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(263),
      O => \s_axi_rdata[7]_i_8_n_0\
    );
\s_axi_rdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(103),
      I1 => \^box_shadow\(71),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(39),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(7),
      O => \s_axi_rdata[7]_i_9_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[8]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[8]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[8]_i_4_n_0\,
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(104),
      I1 => \^box_shadow\(72),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(40),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(8),
      O => \s_axi_rdata[8]_i_10_n_0\
    );
\s_axi_rdata[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(232),
      I1 => \^box_shadow\(200),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(168),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(136),
      O => \s_axi_rdata[8]_i_11_n_0\
    );
\s_axi_rdata[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[8]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(392),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(424),
      O => \s_axi_rdata[8]_i_12_n_0\
    );
\s_axi_rdata[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(8),
      I1 => snap_error_code(8),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(40),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(8),
      O => \s_axi_rdata[8]_i_13_n_0\
    );
\s_axi_rdata[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(360),
      I1 => \^box_shadow\(328),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(296),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(264),
      O => \s_axi_rdata[8]_i_14_n_0\
    );
\s_axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0540004055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[8]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[8]_i_8_n_0\,
      I5 => \s_axi_rdata[8]_i_9_n_0\,
      O => \s_axi_rdata[8]_i_3_n_0\
    );
\s_axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A00088AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[8]_i_10_n_0\,
      I2 => \s_axi_rdata[8]_i_11_n_0\,
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata[8]_i_12_n_0\,
      O => \s_axi_rdata[8]_i_4_n_0\
    );
\s_axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(8),
      I1 => box_expires_reg(8),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(8),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(8),
      O => \s_axi_rdata[8]_i_5_n_0\
    );
\s_axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(8),
      I1 => abort_count_reg(8),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(8),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(8),
      O => \s_axi_rdata[8]_i_6_n_0\
    );
\s_axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(40),
      I1 => snap_commit_ticks(8),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(40),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(8),
      O => \s_axi_rdata[8]_i_7_n_0\
    );
\s_axi_rdata[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(8),
      I1 => snap_frame_id(8),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(8),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(8),
      O => \s_axi_rdata[8]_i_8_n_0\
    );
\s_axi_rdata[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7C7F7F7F7F7F"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(8),
      O => \s_axi_rdata[8]_i_9_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080000"
    )
        port map (
      I0 => \s_axi_rdata_reg[9]_i_2_n_0\,
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(5),
      I3 => \s_axi_rdata[9]_i_3_n_0\,
      I4 => \s_axi_rdata[31]_i_4_n_0\,
      I5 => \s_axi_rdata[9]_i_4_n_0\,
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(105),
      I1 => \^box_shadow\(73),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(41),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(9),
      O => \s_axi_rdata[9]_i_10_n_0\
    );
\s_axi_rdata[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(233),
      I1 => \^box_shadow\(201),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(169),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(137),
      O => \s_axi_rdata[9]_i_11_n_0\
    );
\s_axi_rdata[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata[9]_i_14_n_0\,
      I2 => s_axi_araddr(4),
      I3 => \^box_shadow\(393),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(425),
      O => \s_axi_rdata[9]_i_12_n_0\
    );
\s_axi_rdata[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_commit_ticks(41),
      I1 => snap_commit_ticks(9),
      I2 => s_axi_araddr(3),
      I3 => snap_source_ticks(41),
      I4 => s_axi_araddr(2),
      I5 => snap_source_ticks(9),
      O => \s_axi_rdata[9]_i_13_n_0\
    );
\s_axi_rdata[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(361),
      I1 => \^box_shadow\(329),
      I2 => s_axi_araddr(3),
      I3 => \^box_shadow\(297),
      I4 => s_axi_araddr(2),
      I5 => \^box_shadow\(265),
      O => \s_axi_rdata[9]_i_14_n_0\
    );
\s_axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500400055555555"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \s_axi_rdata[9]_i_7_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[9]_i_8_n_0\,
      I5 => \s_axi_rdata[9]_i_9_n_0\,
      O => \s_axi_rdata[9]_i_3_n_0\
    );
\s_axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A080008AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_4_n_0\,
      I1 => \s_axi_rdata[9]_i_10_n_0\,
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata[9]_i_11_n_0\,
      I5 => \s_axi_rdata[9]_i_12_n_0\,
      O => \s_axi_rdata[9]_i_4_n_0\
    );
\s_axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mailbox_timeouts_reg(9),
      I1 => box_expires_reg(9),
      I2 => s_axi_araddr(3),
      I3 => box_commits_reg(9),
      I4 => s_axi_araddr(2),
      I5 => snap_timeouts_reg(9),
      O => \s_axi_rdata[9]_i_5_n_0\
    );
\s_axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => format_errors_reg(9),
      I1 => abort_count_reg(9),
      I2 => s_axi_araddr(3),
      I3 => ready_count_reg(9),
      I4 => s_axi_araddr(2),
      I5 => requests_reg(9),
      O => \s_axi_rdata[9]_i_6_n_0\
    );
\s_axi_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => box_ack_sequence(9),
      I1 => snap_error_code(9),
      I2 => s_axi_araddr(3),
      I3 => \^time_ticks\(41),
      I4 => s_axi_araddr(2),
      I5 => \^time_ticks\(9),
      O => \s_axi_rdata[9]_i_7_n_0\
    );
\s_axi_rdata[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => snap_epoch(9),
      I1 => snap_frame_id(9),
      I2 => s_axi_araddr(3),
      I3 => snap_request_id(9),
      I4 => s_axi_araddr(2),
      I5 => \^request_id\(9),
      O => \s_axi_rdata[9]_i_8_n_0\
    );
\s_axi_rdata[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F4F7F7F7F7F7"
    )
        port map (
      I0 => \s_axi_rdata[9]_i_13_n_0\,
      I1 => s_axi_araddr(5),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => \^q\(9),
      O => \s_axi_rdata[9]_i_9_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[10]_i_5_n_0\,
      I1 => \s_axi_rdata[10]_i_6_n_0\,
      O => \s_axi_rdata_reg[10]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[11]_i_9_n_0\,
      I1 => \s_axi_rdata[11]_i_10_n_0\,
      O => \s_axi_rdata_reg[11]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[12]_i_9_n_0\,
      I1 => \s_axi_rdata[12]_i_10_n_0\,
      O => \s_axi_rdata_reg[12]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[13]_i_5_n_0\,
      I1 => \s_axi_rdata[13]_i_6_n_0\,
      O => \s_axi_rdata_reg[13]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[14]_i_9_n_0\,
      I1 => \s_axi_rdata[14]_i_10_n_0\,
      O => \s_axi_rdata_reg[14]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[15]_i_9_n_0\,
      I1 => \s_axi_rdata[15]_i_10_n_0\,
      O => \s_axi_rdata_reg[15]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[1]_i_5_n_0\,
      I1 => \s_axi_rdata[1]_i_6_n_0\,
      O => \s_axi_rdata_reg[1]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[20]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[20]_i_9_n_0\,
      I1 => \s_axi_rdata[20]_i_10_n_0\,
      O => \s_axi_rdata_reg[20]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[21]_i_9_n_0\,
      I1 => \s_axi_rdata[21]_i_10_n_0\,
      O => \s_axi_rdata_reg[21]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[23]_i_5_n_0\,
      I1 => \s_axi_rdata[23]_i_6_n_0\,
      O => \s_axi_rdata_reg[23]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[24]_i_5_n_0\,
      I1 => \s_axi_rdata[24]_i_6_n_0\,
      O => \s_axi_rdata_reg[24]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[26]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[26]_i_9_n_0\,
      I1 => \s_axi_rdata[26]_i_10_n_0\,
      O => \s_axi_rdata_reg[26]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[27]_i_6_n_0\,
      I1 => \s_axi_rdata[27]_i_7_n_0\,
      O => \s_axi_rdata_reg[27]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[28]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[28]_i_9_n_0\,
      I1 => \s_axi_rdata[28]_i_10_n_0\,
      O => \s_axi_rdata_reg[28]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[29]_i_9_n_0\,
      I1 => \s_axi_rdata[29]_i_10_n_0\,
      O => \s_axi_rdata_reg[29]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[2]_i_5_n_0\,
      I1 => \s_axi_rdata[2]_i_6_n_0\,
      O => \s_axi_rdata_reg[2]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[31]_i_2_n_0\,
      Q => s_axi_rdata(31),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[31]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[31]_i_11_n_0\,
      I1 => \s_axi_rdata[31]_i_12_n_0\,
      O => \s_axi_rdata_reg[31]_i_6_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[3]_i_14_n_0\,
      I1 => \s_axi_rdata[3]_i_15_n_0\,
      O => \s_axi_rdata_reg[3]_i_11_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[4]_i_5_n_0\,
      I1 => \s_axi_rdata[4]_i_6_n_0\,
      O => \s_axi_rdata_reg[4]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[5]_i_5_n_0\,
      I1 => \s_axi_rdata[5]_i_6_n_0\,
      O => \s_axi_rdata_reg[5]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[6]_i_9_n_0\,
      I1 => \s_axi_rdata[6]_i_10_n_0\,
      O => \s_axi_rdata_reg[6]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[7]_i_9_n_0\,
      I1 => \s_axi_rdata[7]_i_10_n_0\,
      O => \s_axi_rdata_reg[7]_i_4_n_0\,
      S => s_axi_araddr(4)
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[8]_i_5_n_0\,
      I1 => \s_axi_rdata[8]_i_6_n_0\,
      O => \s_axi_rdata_reg[8]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rvalid09_out,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => s_axi_bvalid_i_1_n_0
    );
\s_axi_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata[9]_i_5_n_0\,
      I1 => \s_axi_rdata[9]_i_6_n_0\,
      O => \s_axi_rdata_reg[9]_i_2_n_0\,
      S => \s_axi_rdata[27]_i_5_n_0\
    );
\s_axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAE0000000000"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_2_n_0\,
      I1 => \s_axi_rresp[1]_i_3_n_0\,
      I2 => \s_axi_rresp[1]_i_4_n_0\,
      I3 => s_axi_rvalid09_out,
      I4 => \^s_axi_rresp\(0),
      I5 => aresetn,
      O => \s_axi_rresp[1]_i_1_n_0\
    );
\s_axi_rresp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => s_axi_araddr(8),
      I2 => s_axi_araddr(10),
      I3 => s_axi_araddr(9),
      I4 => \s_axi_rresp[1]_i_5_n_0\,
      O => \s_axi_rresp[1]_i_2_n_0\
    );
\s_axi_rresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00004FFFFFFFF"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(7),
      I5 => \s_axi_rresp[1]_i_6_n_0\,
      O => \s_axi_rresp[1]_i_3_n_0\
    );
\s_axi_rresp[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000100010"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_2_n_0\,
      I1 => \s_axi_rresp[1]_i_7_n_0\,
      I2 => s_axi_araddr(6),
      I3 => s_axi_araddr(7),
      I4 => \s_axi_rresp[1]_i_8_n_0\,
      I5 => s_axi_araddr(3),
      O => \s_axi_rresp[1]_i_4_n_0\
    );
\s_axi_rresp[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => s_axi_araddr(14),
      I2 => s_axi_araddr(12),
      I3 => s_axi_araddr(15),
      O => \s_axi_rresp[1]_i_5_n_0\
    );
\s_axi_rresp[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      O => \s_axi_rresp[1]_i_6_n_0\
    );
\s_axi_rresp[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      O => \s_axi_rresp[1]_i_7_n_0\
    );
\s_axi_rresp[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_araddr(4),
      O => \s_axi_rresp[1]_i_8_n_0\
    );
\s_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_rresp[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => '0'
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_reg_1,
      Q => \^s_axi_rvalid_reg_0\,
      R => s_axi_bvalid_i_1_n_0
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^w_full_reg_0\,
      I1 => aresetn,
      I2 => \^s_axi_bvalid_reg_0\,
      O => s_axi_wready
    );
\shadow[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088808888"
    )
        port map (
      I0 => \shadow[3][31]_i_2_n_0\,
      I1 => \shadow[12][31]_i_2_n_0\,
      I2 => \s_axi_bresp[1]_i_2_n_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \^snap_error_0\,
      I5 => \^aw_addr_reg[1]_0\,
      O => \shadow[0][31]_i_1_n_0\
    );
\shadow[10][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005551"
    )
        port map (
      I0 => \^aw_addr_reg[1]_0\,
      I1 => \^snap_error_0\,
      I2 => \s_axi_bresp[1]_i_3_n_0\,
      I3 => \s_axi_bresp[1]_i_2_n_0\,
      I4 => \shadow[10][31]_i_2_n_0\,
      I5 => \shadow[11][31]_i_3_n_0\,
      O => \shadow[10][31]_i_1_n_0\
    );
\shadow[10][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => aw_addr(2),
      I1 => aw_addr(3),
      O => \shadow[10][31]_i_2_n_0\
    );
\shadow[11][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111101"
    )
        port map (
      I0 => \shadow[11][31]_i_2_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \shadow[11][31]_i_3_n_0\,
      O => \shadow[11][31]_i_1_n_0\
    );
\shadow[11][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aw_addr(3),
      I1 => aw_addr(2),
      O => \shadow[11][31]_i_2_n_0\
    );
\shadow[11][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \shadow[11][31]_i_4_n_0\,
      I1 => \shadow[13][31]_i_12_n_0\,
      I2 => \shadow[13][31]_i_11_n_0\,
      I3 => \shadow[13][31]_i_10_n_0\,
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      I5 => aw_addr(4),
      O => \shadow[11][31]_i_3_n_0\
    );
\shadow[11][31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \p_0_out_inferred__1/i__carry__0_n_6\,
      I1 => \p_0_out_inferred__1/i__carry__1_n_5\,
      I2 => \p_0_out_inferred__1/i__carry__0_n_4\,
      O => \shadow[11][31]_i_4_n_0\
    );
\shadow[12][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005100"
    )
        port map (
      I0 => \^aw_addr_reg[1]_0\,
      I1 => \^snap_error_0\,
      I2 => \^aw_addr_reg[2]_0\,
      I3 => \shadow[12][31]_i_2_n_0\,
      I4 => \shadow[13][31]_i_5_n_0\,
      I5 => \shadow[13][31]_i_6_n_0\,
      O => \shadow[12][31]_i_1_n_0\
    );
\shadow[12][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(3),
      I1 => aw_addr(2),
      O => \shadow[12][31]_i_2_n_0\
    );
\shadow[13][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \w_data_reg_n_0_[0]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \shadow[13][0]_i_2_n_0\,
      I3 => \p_0_out_inferred__1/i__carry_n_7\,
      I4 => \shadow_reg[13][0]_i_3_n_0\,
      O => byte_merge1_return(0)
    );
\shadow[13][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(416),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(384),
      I3 => aw_addr(4),
      I4 => \shadow[13][0]_i_4_n_0\,
      O => \shadow[13][0]_i_2_n_0\
    );
\shadow[13][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(352),
      I1 => \^box_shadow\(320),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(288),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(256),
      O => \shadow[13][0]_i_4_n_0\
    );
\shadow[13][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(96),
      I1 => \^box_shadow\(64),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(32),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(0),
      O => \shadow[13][0]_i_5_n_0\
    );
\shadow[13][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(224),
      I1 => \^box_shadow\(192),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(160),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(128),
      O => \shadow[13][0]_i_6_n_0\
    );
\shadow[13][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][10]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][10]_i_3_n_0\,
      I3 => \shadow[13][10]_i_4_n_0\,
      I4 => p_2_in(2),
      I5 => p_0_in,
      O => byte_merge1_return(10)
    );
\shadow[13][10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \shadow[13][10]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][10]_i_6_n_0\,
      O => \shadow[13][10]_i_2_n_0\
    );
\shadow[13][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(362),
      I1 => \^box_shadow\(330),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(298),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(266),
      O => \shadow[13][10]_i_3_n_0\
    );
\shadow[13][10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(426),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(394),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][10]_i_4_n_0\
    );
\shadow[13][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(234),
      I1 => \^box_shadow\(202),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(170),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(138),
      O => \shadow[13][10]_i_5_n_0\
    );
\shadow[13][10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(106),
      I1 => \^box_shadow\(74),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(42),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(10),
      O => \shadow[13][10]_i_6_n_0\
    );
\shadow[13][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][11]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][11]_i_3_n_0\,
      I3 => \shadow[13][11]_i_4_n_0\,
      I4 => p_2_in(3),
      I5 => p_0_in,
      O => byte_merge1_return(11)
    );
\shadow[13][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(235),
      I1 => \^box_shadow\(203),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(171),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(139),
      O => \shadow[13][11]_i_2_n_0\
    );
\shadow[13][11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(427),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(395),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][11]_i_3_n_0\
    );
\shadow[13][11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][11]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][11]_i_6_n_0\,
      O => \shadow[13][11]_i_4_n_0\
    );
\shadow[13][11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(107),
      I1 => \^box_shadow\(75),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(43),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(11),
      O => \shadow[13][11]_i_5_n_0\
    );
\shadow[13][11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(363),
      I1 => \^box_shadow\(331),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(299),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(267),
      O => \shadow[13][11]_i_6_n_0\
    );
\shadow[13][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][12]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][12]_i_3_n_0\,
      I3 => \shadow[13][12]_i_4_n_0\,
      I4 => p_2_in(4),
      I5 => p_0_in,
      O => byte_merge1_return(12)
    );
\shadow[13][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(236),
      I1 => \^box_shadow\(204),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(172),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(140),
      O => \shadow[13][12]_i_2_n_0\
    );
\shadow[13][12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(428),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(396),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][12]_i_3_n_0\
    );
\shadow[13][12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][12]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][12]_i_6_n_0\,
      O => \shadow[13][12]_i_4_n_0\
    );
\shadow[13][12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(108),
      I1 => \^box_shadow\(76),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(44),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(12),
      O => \shadow[13][12]_i_5_n_0\
    );
\shadow[13][12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(364),
      I1 => \^box_shadow\(332),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(300),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(268),
      O => \shadow[13][12]_i_6_n_0\
    );
\shadow[13][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_2_in(5),
      I1 => p_0_in,
      I2 => \shadow[13][13]_i_2_n_0\,
      I3 => \p_0_out_inferred__1/i__carry_n_7\,
      I4 => \shadow_reg[13][13]_i_3_n_0\,
      O => byte_merge1_return(13)
    );
\shadow[13][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(429),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(397),
      I3 => aw_addr(4),
      I4 => \shadow[13][13]_i_4_n_0\,
      O => \shadow[13][13]_i_2_n_0\
    );
\shadow[13][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(365),
      I1 => \^box_shadow\(333),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(301),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(269),
      O => \shadow[13][13]_i_4_n_0\
    );
\shadow[13][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(109),
      I1 => \^box_shadow\(77),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(45),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(13),
      O => \shadow[13][13]_i_5_n_0\
    );
\shadow[13][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(237),
      I1 => \^box_shadow\(205),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(173),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(141),
      O => \shadow[13][13]_i_6_n_0\
    );
\shadow[13][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][14]_i_2_n_0\,
      I1 => \shadow[13][14]_i_3_n_0\,
      I2 => \shadow[13][24]_i_3_n_0\,
      I3 => \shadow[13][14]_i_4_n_0\,
      I4 => p_0_in,
      I5 => p_2_in(6),
      O => byte_merge1_return(14)
    );
\shadow[13][14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][14]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][14]_i_6_n_0\,
      O => \shadow[13][14]_i_2_n_0\
    );
\shadow[13][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(110),
      I1 => \^box_shadow\(78),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(46),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(14),
      O => \shadow[13][14]_i_3_n_0\
    );
\shadow[13][14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(430),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(398),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][14]_i_4_n_0\
    );
\shadow[13][14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(366),
      I1 => \^box_shadow\(334),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(302),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(270),
      O => \shadow[13][14]_i_5_n_0\
    );
\shadow[13][14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(238),
      I1 => \^box_shadow\(206),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(174),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(142),
      O => \shadow[13][14]_i_6_n_0\
    );
\shadow[13][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][15]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][15]_i_3_n_0\,
      I3 => \shadow[13][15]_i_4_n_0\,
      I4 => p_2_in(7),
      I5 => p_0_in,
      O => byte_merge1_return(15)
    );
\shadow[13][15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \shadow[13][15]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][15]_i_6_n_0\,
      O => \shadow[13][15]_i_2_n_0\
    );
\shadow[13][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(367),
      I1 => \^box_shadow\(335),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(303),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(271),
      O => \shadow[13][15]_i_3_n_0\
    );
\shadow[13][15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(431),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(399),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][15]_i_4_n_0\
    );
\shadow[13][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(239),
      I1 => \^box_shadow\(207),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(175),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(143),
      O => \shadow[13][15]_i_5_n_0\
    );
\shadow[13][15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(111),
      I1 => \^box_shadow\(79),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(47),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(15),
      O => \shadow[13][15]_i_6_n_0\
    );
\shadow[13][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][16]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][16]_i_3_n_0\,
      I3 => \shadow[13][16]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[16]\,
      I5 => \w_strobe_reg_n_0_[2]\,
      O => byte_merge1_return(16)
    );
\shadow[13][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(240),
      I1 => \^box_shadow\(208),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(176),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(144),
      O => \shadow[13][16]_i_2_n_0\
    );
\shadow[13][16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(432),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(400),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][16]_i_3_n_0\
    );
\shadow[13][16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \shadow[13][16]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][16]_i_6_n_0\,
      O => \shadow[13][16]_i_4_n_0\
    );
\shadow[13][16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(368),
      I1 => \^box_shadow\(336),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(304),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(272),
      O => \shadow[13][16]_i_5_n_0\
    );
\shadow[13][16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(112),
      I1 => \^box_shadow\(80),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(48),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(16),
      O => \shadow[13][16]_i_6_n_0\
    );
\shadow[13][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][17]_i_2_n_0\,
      I1 => \shadow[13][17]_i_3_n_0\,
      I2 => \shadow[13][24]_i_3_n_0\,
      I3 => \shadow[13][17]_i_4_n_0\,
      I4 => \w_strobe_reg_n_0_[2]\,
      I5 => \w_data_reg_n_0_[17]\,
      O => byte_merge1_return(17)
    );
\shadow[13][17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][17]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][17]_i_6_n_0\,
      O => \shadow[13][17]_i_2_n_0\
    );
\shadow[13][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(113),
      I1 => \^box_shadow\(81),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(49),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(17),
      O => \shadow[13][17]_i_3_n_0\
    );
\shadow[13][17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(433),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(401),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][17]_i_4_n_0\
    );
\shadow[13][17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(369),
      I1 => \^box_shadow\(337),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(305),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(273),
      O => \shadow[13][17]_i_5_n_0\
    );
\shadow[13][17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(241),
      I1 => \^box_shadow\(209),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(177),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(145),
      O => \shadow[13][17]_i_6_n_0\
    );
\shadow[13][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][18]_i_2_n_0\,
      I1 => \shadow[13][24]_i_3_n_0\,
      I2 => \shadow[13][18]_i_3_n_0\,
      I3 => \shadow[13][18]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[18]\,
      I5 => \w_strobe_reg_n_0_[2]\,
      O => byte_merge1_return(18)
    );
\shadow[13][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(114),
      I1 => \^box_shadow\(82),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(50),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(18),
      O => \shadow[13][18]_i_2_n_0\
    );
\shadow[13][18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(434),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(402),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][18]_i_3_n_0\
    );
\shadow[13][18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][18]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][18]_i_6_n_0\,
      O => \shadow[13][18]_i_4_n_0\
    );
\shadow[13][18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(370),
      I1 => \^box_shadow\(338),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(306),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(274),
      O => \shadow[13][18]_i_5_n_0\
    );
\shadow[13][18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(242),
      I1 => \^box_shadow\(210),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(178),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(146),
      O => \shadow[13][18]_i_6_n_0\
    );
\shadow[13][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][19]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][19]_i_3_n_0\,
      I3 => \shadow[13][19]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[19]\,
      I5 => \w_strobe_reg_n_0_[2]\,
      O => byte_merge1_return(19)
    );
\shadow[13][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(243),
      I1 => \^box_shadow\(211),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(179),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(147),
      O => \shadow[13][19]_i_2_n_0\
    );
\shadow[13][19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(435),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(403),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][19]_i_3_n_0\
    );
\shadow[13][19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \shadow[13][19]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][19]_i_6_n_0\,
      O => \shadow[13][19]_i_4_n_0\
    );
\shadow[13][19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(371),
      I1 => \^box_shadow\(339),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(307),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(275),
      O => \shadow[13][19]_i_5_n_0\
    );
\shadow[13][19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(115),
      I1 => \^box_shadow\(83),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(51),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(19),
      O => \shadow[13][19]_i_6_n_0\
    );
\shadow[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][1]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][1]_i_3_n_0\,
      I3 => \shadow[13][1]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[1]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(1)
    );
\shadow[13][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(225),
      I1 => \^box_shadow\(193),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(161),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(129),
      O => \shadow[13][1]_i_2_n_0\
    );
\shadow[13][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(417),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(385),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][1]_i_3_n_0\
    );
\shadow[13][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][1]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][1]_i_6_n_0\,
      O => \shadow[13][1]_i_4_n_0\
    );
\shadow[13][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(97),
      I1 => \^box_shadow\(65),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(33),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(1),
      O => \shadow[13][1]_i_5_n_0\
    );
\shadow[13][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(353),
      I1 => \^box_shadow\(321),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(289),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(257),
      O => \shadow[13][1]_i_6_n_0\
    );
\shadow[13][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][20]_i_2_n_0\,
      I1 => \shadow[13][20]_i_3_n_0\,
      I2 => \shadow[13][24]_i_3_n_0\,
      I3 => \shadow[13][20]_i_4_n_0\,
      I4 => \w_strobe_reg_n_0_[2]\,
      I5 => \w_data_reg_n_0_[20]\,
      O => byte_merge1_return(20)
    );
\shadow[13][20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][20]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][20]_i_6_n_0\,
      O => \shadow[13][20]_i_2_n_0\
    );
\shadow[13][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(116),
      I1 => \^box_shadow\(84),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(52),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(20),
      O => \shadow[13][20]_i_3_n_0\
    );
\shadow[13][20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(436),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(404),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][20]_i_4_n_0\
    );
\shadow[13][20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(372),
      I1 => \^box_shadow\(340),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(308),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(276),
      O => \shadow[13][20]_i_5_n_0\
    );
\shadow[13][20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(244),
      I1 => \^box_shadow\(212),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(180),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(148),
      O => \shadow[13][20]_i_6_n_0\
    );
\shadow[13][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][21]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][21]_i_3_n_0\,
      I3 => \shadow[13][21]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[21]\,
      I5 => \w_strobe_reg_n_0_[2]\,
      O => byte_merge1_return(21)
    );
\shadow[13][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(245),
      I1 => \^box_shadow\(213),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(181),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(149),
      O => \shadow[13][21]_i_2_n_0\
    );
\shadow[13][21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(437),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(405),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][21]_i_3_n_0\
    );
\shadow[13][21]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][21]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][21]_i_6_n_0\,
      O => \shadow[13][21]_i_4_n_0\
    );
\shadow[13][21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(117),
      I1 => \^box_shadow\(85),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(53),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(21),
      O => \shadow[13][21]_i_5_n_0\
    );
\shadow[13][21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(373),
      I1 => \^box_shadow\(341),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(309),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(277),
      O => \shadow[13][21]_i_6_n_0\
    );
\shadow[13][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][22]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][22]_i_3_n_0\,
      I3 => \shadow[13][22]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[22]\,
      I5 => \w_strobe_reg_n_0_[2]\,
      O => byte_merge1_return(22)
    );
\shadow[13][22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1FD"
    )
        port map (
      I0 => \shadow[13][22]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][22]_i_6_n_0\,
      O => \shadow[13][22]_i_2_n_0\
    );
\shadow[13][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(374),
      I1 => \^box_shadow\(342),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(310),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(278),
      O => \shadow[13][22]_i_3_n_0\
    );
\shadow[13][22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(438),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(406),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][22]_i_4_n_0\
    );
\shadow[13][22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(118),
      I1 => \^box_shadow\(86),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(54),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(22),
      O => \shadow[13][22]_i_5_n_0\
    );
\shadow[13][22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(246),
      I1 => \^box_shadow\(214),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(182),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(150),
      O => \shadow[13][22]_i_6_n_0\
    );
\shadow[13][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][23]_i_2_n_0\,
      I1 => \shadow[13][23]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][23]_i_4_n_0\,
      I4 => \w_strobe_reg_n_0_[2]\,
      I5 => \w_data_reg_n_0_[23]\,
      O => byte_merge1_return(23)
    );
\shadow[13][23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][23]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][23]_i_6_n_0\,
      O => \shadow[13][23]_i_2_n_0\
    );
\shadow[13][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(247),
      I1 => \^box_shadow\(215),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(183),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(151),
      O => \shadow[13][23]_i_3_n_0\
    );
\shadow[13][23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(439),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(407),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][23]_i_4_n_0\
    );
\shadow[13][23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(119),
      I1 => \^box_shadow\(87),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(55),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(23),
      O => \shadow[13][23]_i_5_n_0\
    );
\shadow[13][23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(375),
      I1 => \^box_shadow\(343),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(311),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(279),
      O => \shadow[13][23]_i_6_n_0\
    );
\shadow[13][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][24]_i_2_n_0\,
      I1 => \shadow[13][24]_i_3_n_0\,
      I2 => \shadow[13][24]_i_4_n_0\,
      I3 => \shadow[13][24]_i_5_n_0\,
      I4 => \w_data_reg_n_0_[24]\,
      I5 => \w_strobe_reg_n_0_[3]\,
      O => byte_merge1_return(24)
    );
\shadow[13][24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(120),
      I1 => \^box_shadow\(88),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(56),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(24),
      O => \shadow[13][24]_i_2_n_0\
    );
\shadow[13][24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aw_addr(4),
      I1 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][24]_i_3_n_0\
    );
\shadow[13][24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(440),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(408),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][24]_i_4_n_0\
    );
\shadow[13][24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][24]_i_6_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][24]_i_7_n_0\,
      O => \shadow[13][24]_i_5_n_0\
    );
\shadow[13][24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(376),
      I1 => \^box_shadow\(344),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(312),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(280),
      O => \shadow[13][24]_i_6_n_0\
    );
\shadow[13][24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(248),
      I1 => \^box_shadow\(216),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(184),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(152),
      O => \shadow[13][24]_i_7_n_0\
    );
\shadow[13][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][25]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][25]_i_3_n_0\,
      I3 => \shadow[13][25]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[25]\,
      I5 => \w_strobe_reg_n_0_[3]\,
      O => byte_merge1_return(25)
    );
\shadow[13][25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \shadow[13][25]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][25]_i_6_n_0\,
      O => \shadow[13][25]_i_2_n_0\
    );
\shadow[13][25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(377),
      I1 => \^box_shadow\(345),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(313),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(281),
      O => \shadow[13][25]_i_3_n_0\
    );
\shadow[13][25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(441),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(409),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][25]_i_4_n_0\
    );
\shadow[13][25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(249),
      I1 => \^box_shadow\(217),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(185),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(153),
      O => \shadow[13][25]_i_5_n_0\
    );
\shadow[13][25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(121),
      I1 => \^box_shadow\(89),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(57),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(25),
      O => \shadow[13][25]_i_6_n_0\
    );
\shadow[13][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][26]_i_2_n_0\,
      I1 => \shadow[13][26]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][26]_i_4_n_0\,
      I4 => \w_strobe_reg_n_0_[3]\,
      I5 => \w_data_reg_n_0_[26]\,
      O => byte_merge1_return(26)
    );
\shadow[13][26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][26]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][26]_i_6_n_0\,
      O => \shadow[13][26]_i_2_n_0\
    );
\shadow[13][26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(250),
      I1 => \^box_shadow\(218),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(186),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(154),
      O => \shadow[13][26]_i_3_n_0\
    );
\shadow[13][26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(442),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(410),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][26]_i_4_n_0\
    );
\shadow[13][26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(122),
      I1 => \^box_shadow\(90),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(58),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(26),
      O => \shadow[13][26]_i_5_n_0\
    );
\shadow[13][26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(378),
      I1 => \^box_shadow\(346),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(314),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(282),
      O => \shadow[13][26]_i_6_n_0\
    );
\shadow[13][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][27]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][27]_i_4_n_0\,
      I3 => \shadow[13][27]_i_5_n_0\,
      I4 => \w_data_reg_n_0_[27]\,
      I5 => \w_strobe_reg_n_0_[3]\,
      O => byte_merge1_return(27)
    );
\shadow[13][27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \shadow[13][27]_i_6_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][27]_i_7_n_0\,
      O => \shadow[13][27]_i_2_n_0\
    );
\shadow[13][27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => aw_addr(4),
      I1 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][27]_i_3_n_0\
    );
\shadow[13][27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(379),
      I1 => \^box_shadow\(347),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(315),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(283),
      O => \shadow[13][27]_i_4_n_0\
    );
\shadow[13][27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(443),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(411),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][27]_i_5_n_0\
    );
\shadow[13][27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(251),
      I1 => \^box_shadow\(219),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(187),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(155),
      O => \shadow[13][27]_i_6_n_0\
    );
\shadow[13][27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(123),
      I1 => \^box_shadow\(91),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(59),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(27),
      O => \shadow[13][27]_i_7_n_0\
    );
\shadow[13][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][28]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][28]_i_3_n_0\,
      I3 => \shadow[13][28]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[28]\,
      I5 => \w_strobe_reg_n_0_[3]\,
      O => byte_merge1_return(28)
    );
\shadow[13][28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(252),
      I1 => \^box_shadow\(220),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(188),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(156),
      O => \shadow[13][28]_i_2_n_0\
    );
\shadow[13][28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(444),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(412),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][28]_i_3_n_0\
    );
\shadow[13][28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \shadow[13][28]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][28]_i_6_n_0\,
      O => \shadow[13][28]_i_4_n_0\
    );
\shadow[13][28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(380),
      I1 => \^box_shadow\(348),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(316),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(284),
      O => \shadow[13][28]_i_5_n_0\
    );
\shadow[13][28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(124),
      I1 => \^box_shadow\(92),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(60),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(28),
      O => \shadow[13][28]_i_6_n_0\
    );
\shadow[13][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][29]_i_2_n_0\,
      I1 => \shadow[13][29]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][29]_i_4_n_0\,
      I4 => \w_strobe_reg_n_0_[3]\,
      I5 => \w_data_reg_n_0_[29]\,
      O => byte_merge1_return(29)
    );
\shadow[13][29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][29]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][29]_i_6_n_0\,
      O => \shadow[13][29]_i_2_n_0\
    );
\shadow[13][29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(253),
      I1 => \^box_shadow\(221),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(189),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(157),
      O => \shadow[13][29]_i_3_n_0\
    );
\shadow[13][29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(445),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(413),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][29]_i_4_n_0\
    );
\shadow[13][29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(125),
      I1 => \^box_shadow\(93),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(61),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(29),
      O => \shadow[13][29]_i_5_n_0\
    );
\shadow[13][29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(381),
      I1 => \^box_shadow\(349),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(317),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(285),
      O => \shadow[13][29]_i_6_n_0\
    );
\shadow[13][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEAFFEA"
    )
        port map (
      I0 => \shadow[13][2]_i_2_n_0\,
      I1 => \shadow[13][2]_i_3_n_0\,
      I2 => \shadow[13][24]_i_3_n_0\,
      I3 => \shadow[13][2]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[2]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(2)
    );
\shadow[13][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][2]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][2]_i_6_n_0\,
      O => \shadow[13][2]_i_2_n_0\
    );
\shadow[13][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(98),
      I1 => \^box_shadow\(66),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(34),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(2),
      O => \shadow[13][2]_i_3_n_0\
    );
\shadow[13][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(418),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(386),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][2]_i_4_n_0\
    );
\shadow[13][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(354),
      I1 => \^box_shadow\(322),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(290),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(258),
      O => \shadow[13][2]_i_5_n_0\
    );
\shadow[13][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(226),
      I1 => \^box_shadow\(194),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(162),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(130),
      O => \shadow[13][2]_i_6_n_0\
    );
\shadow[13][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][30]_i_2_n_0\,
      I1 => \shadow[13][30]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][30]_i_5_n_0\,
      I4 => \w_strobe_reg_n_0_[3]\,
      I5 => \w_data_reg_n_0_[30]\,
      O => byte_merge1_return(30)
    );
\shadow[13][30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][30]_i_6_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][30]_i_7_n_0\,
      O => \shadow[13][30]_i_2_n_0\
    );
\shadow[13][30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(254),
      I1 => \^box_shadow\(222),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(190),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(158),
      O => \shadow[13][30]_i_3_n_0\
    );
\shadow[13][30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aw_addr(4),
      I1 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][30]_i_4_n_0\
    );
\shadow[13][30]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(446),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(414),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][30]_i_5_n_0\
    );
\shadow[13][30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(126),
      I1 => \^box_shadow\(94),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(62),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(30),
      O => \shadow[13][30]_i_6_n_0\
    );
\shadow[13][30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(382),
      I1 => \^box_shadow\(350),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(318),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(286),
      O => \shadow[13][30]_i_7_n_0\
    );
\shadow[13][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001101"
    )
        port map (
      I0 => \shadow[13][31]_i_3_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \^aw_addr_reg[2]_0\,
      I4 => \shadow[13][31]_i_5_n_0\,
      I5 => \shadow[13][31]_i_6_n_0\,
      O => \shadow[13][31]_i_1_n_0\
    );
\shadow[13][31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010004"
    )
        port map (
      I0 => \epoch[31]_i_3_n_0\,
      I1 => aw_addr(4),
      I2 => aw_addr(1),
      I3 => aw_addr(0),
      I4 => aw_addr(3),
      I5 => aw_addr(2),
      O => \shadow[13][31]_i_10_n_0\
    );
\shadow[13][31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \p_0_out_inferred__1/i__carry__1_n_6\,
      I1 => \p_0_out_inferred__1/i__carry__0_n_7\,
      I2 => \p_0_out_inferred__1/i__carry_n_4\,
      I3 => \p_0_out_inferred__1/i__carry_n_5\,
      O => \shadow[13][31]_i_11_n_0\
    );
\shadow[13][31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \p_0_out_inferred__1/i__carry__1_n_0\,
      I1 => \p_0_out_inferred__1/i__carry__1_n_7\,
      I2 => \p_0_out_inferred__1/i__carry__0_n_5\,
      I3 => \p_0_out_inferred__1/i__carry_n_6\,
      O => \shadow[13][31]_i_12_n_0\
    );
\shadow[13][31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(383),
      I1 => \^box_shadow\(351),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(319),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(287),
      O => \shadow[13][31]_i_13_n_0\
    );
\shadow[13][31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(127),
      I1 => \^box_shadow\(95),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(63),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(31),
      O => \shadow[13][31]_i_14_n_0\
    );
\shadow[13][31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(255),
      I1 => \^box_shadow\(223),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(191),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(159),
      O => \shadow[13][31]_i_15_n_0\
    );
\shadow[13][31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(20),
      I2 => \^q\(22),
      I3 => \^q\(21),
      I4 => \s_axi_bresp[1]_i_23_n_0\,
      O => \shadow[13][31]_i_16_n_0\
    );
\shadow[13][31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      I2 => \^q\(11),
      I3 => \^q\(8),
      I4 => \s_axi_bresp[1]_i_21_n_0\,
      O => \shadow[13][31]_i_17_n_0\
    );
\shadow[13][31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \w_data_reg_n_0_[31]\,
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \shadow[13][31]_i_7_n_0\,
      I3 => \p_0_out_inferred__1/i__carry_n_7\,
      I4 => \shadow_reg[13][31]_i_8_n_0\,
      O => byte_merge1_return(31)
    );
\shadow[13][31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => aw_addr(3),
      I1 => aw_addr(2),
      O => \shadow[13][31]_i_3_n_0\
    );
\shadow[13][31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11110100"
    )
        port map (
      I0 => request_i_4_n_0,
      I1 => \s_axi_bresp[1]_i_14_n_0\,
      I2 => \s_axi_bresp[1]_i_13_n_0\,
      I3 => \shadow[13][31]_i_9_n_0\,
      I4 => \s_axi_bresp[1]_i_10_n_0\,
      I5 => \s_axi_bresp[1]_i_2_n_0\,
      O => \^aw_addr_reg[2]_0\
    );
\shadow[13][31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aw_addr(4),
      I1 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][31]_i_5_n_0\
    );
\shadow[13][31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \shadow[13][31]_i_10_n_0\,
      I1 => \shadow[13][31]_i_11_n_0\,
      I2 => \shadow[13][31]_i_12_n_0\,
      I3 => \p_0_out_inferred__1/i__carry__0_n_6\,
      I4 => \p_0_out_inferred__1/i__carry__1_n_5\,
      I5 => \p_0_out_inferred__1/i__carry__0_n_4\,
      O => \shadow[13][31]_i_6_n_0\
    );
\shadow[13][31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(447),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(415),
      I3 => aw_addr(4),
      I4 => \shadow[13][31]_i_13_n_0\,
      O => \shadow[13][31]_i_7_n_0\
    );
\shadow[13][31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_24_n_0\,
      I1 => \shadow[13][31]_i_16_n_0\,
      I2 => \s_axi_bresp[1]_i_22_n_0\,
      I3 => \shadow[13][31]_i_17_n_0\,
      O => \shadow[13][31]_i_9_n_0\
    );
\shadow[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][3]_i_2_n_0\,
      I1 => \shadow[13][30]_i_4_n_0\,
      I2 => \shadow[13][3]_i_3_n_0\,
      I3 => \shadow[13][3]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[3]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(3)
    );
\shadow[13][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(227),
      I1 => \^box_shadow\(195),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(163),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(131),
      O => \shadow[13][3]_i_2_n_0\
    );
\shadow[13][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(419),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(387),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][3]_i_3_n_0\
    );
\shadow[13][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][3]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][3]_i_6_n_0\,
      O => \shadow[13][3]_i_4_n_0\
    );
\shadow[13][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(99),
      I1 => \^box_shadow\(67),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(35),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(3),
      O => \shadow[13][3]_i_5_n_0\
    );
\shadow[13][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(355),
      I1 => \^box_shadow\(323),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(291),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(259),
      O => \shadow[13][3]_i_6_n_0\
    );
\shadow[13][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF75FF75"
    )
        port map (
      I0 => \shadow[13][4]_i_2_n_0\,
      I1 => \shadow[13][27]_i_3_n_0\,
      I2 => \shadow[13][4]_i_3_n_0\,
      I3 => \shadow[13][4]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[4]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(4)
    );
\shadow[13][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => \shadow[13][4]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][4]_i_6_n_0\,
      O => \shadow[13][4]_i_2_n_0\
    );
\shadow[13][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(356),
      I1 => \^box_shadow\(324),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(292),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(260),
      O => \shadow[13][4]_i_3_n_0\
    );
\shadow[13][4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(420),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(388),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][4]_i_4_n_0\
    );
\shadow[13][4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(228),
      I1 => \^box_shadow\(196),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(164),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(132),
      O => \shadow[13][4]_i_5_n_0\
    );
\shadow[13][4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(100),
      I1 => \^box_shadow\(68),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(36),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(4),
      O => \shadow[13][4]_i_6_n_0\
    );
\shadow[13][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEAFFEA"
    )
        port map (
      I0 => \shadow[13][5]_i_2_n_0\,
      I1 => \shadow[13][5]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][5]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[5]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(5)
    );
\shadow[13][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \shadow[13][5]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][5]_i_6_n_0\,
      O => \shadow[13][5]_i_2_n_0\
    );
\shadow[13][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(229),
      I1 => \^box_shadow\(197),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(165),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(133),
      O => \shadow[13][5]_i_3_n_0\
    );
\shadow[13][5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(421),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(389),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][5]_i_4_n_0\
    );
\shadow[13][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(357),
      I1 => \^box_shadow\(325),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(293),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(261),
      O => \shadow[13][5]_i_5_n_0\
    );
\shadow[13][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(101),
      I1 => \^box_shadow\(69),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(37),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(5),
      O => \shadow[13][5]_i_6_n_0\
    );
\shadow[13][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF8FFF8"
    )
        port map (
      I0 => \shadow[13][6]_i_2_n_0\,
      I1 => \shadow[13][24]_i_3_n_0\,
      I2 => \shadow[13][6]_i_3_n_0\,
      I3 => \shadow[13][6]_i_4_n_0\,
      I4 => \w_data_reg_n_0_[6]\,
      I5 => \w_strobe_reg_n_0_[0]\,
      O => byte_merge1_return(6)
    );
\shadow[13][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(102),
      I1 => \^box_shadow\(70),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(38),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(6),
      O => \shadow[13][6]_i_2_n_0\
    );
\shadow[13][6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(422),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(390),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][6]_i_3_n_0\
    );
\shadow[13][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C20"
    )
        port map (
      I0 => \shadow[13][6]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][6]_i_6_n_0\,
      O => \shadow[13][6]_i_4_n_0\
    );
\shadow[13][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(358),
      I1 => \^box_shadow\(326),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(294),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(262),
      O => \shadow[13][6]_i_5_n_0\
    );
\shadow[13][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(230),
      I1 => \^box_shadow\(198),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(166),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(134),
      O => \shadow[13][6]_i_6_n_0\
    );
\shadow[13][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \w_data_reg_n_0_[7]\,
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \shadow[13][7]_i_2_n_0\,
      I3 => \p_0_out_inferred__1/i__carry_n_7\,
      I4 => \shadow_reg[13][7]_i_3_n_0\,
      O => byte_merge1_return(7)
    );
\shadow[13][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^box_shadow\(423),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(391),
      I3 => aw_addr(4),
      I4 => \shadow[13][7]_i_4_n_0\,
      O => \shadow[13][7]_i_2_n_0\
    );
\shadow[13][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(359),
      I1 => \^box_shadow\(327),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(295),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(263),
      O => \shadow[13][7]_i_4_n_0\
    );
\shadow[13][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(103),
      I1 => \^box_shadow\(71),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(39),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(7),
      O => \shadow[13][7]_i_5_n_0\
    );
\shadow[13][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(231),
      I1 => \^box_shadow\(199),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(167),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(135),
      O => \shadow[13][7]_i_6_n_0\
    );
\shadow[13][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][8]_i_2_n_0\,
      I1 => \shadow[13][8]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][8]_i_4_n_0\,
      I4 => p_0_in,
      I5 => p_2_in(0),
      O => byte_merge1_return(8)
    );
\shadow[13][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \shadow[13][8]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][8]_i_6_n_0\,
      O => \shadow[13][8]_i_2_n_0\
    );
\shadow[13][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(232),
      I1 => \^box_shadow\(200),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(168),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(136),
      O => \shadow[13][8]_i_3_n_0\
    );
\shadow[13][8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(424),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(392),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][8]_i_4_n_0\
    );
\shadow[13][8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(360),
      I1 => \^box_shadow\(328),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(296),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(264),
      O => \shadow[13][8]_i_5_n_0\
    );
\shadow[13][8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(104),
      I1 => \^box_shadow\(72),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(40),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(8),
      O => \shadow[13][8]_i_6_n_0\
    );
\shadow[13][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA0000FFEA"
    )
        port map (
      I0 => \shadow[13][9]_i_2_n_0\,
      I1 => \shadow[13][9]_i_3_n_0\,
      I2 => \shadow[13][30]_i_4_n_0\,
      I3 => \shadow[13][9]_i_4_n_0\,
      I4 => p_0_in,
      I5 => p_2_in(1),
      O => byte_merge1_return(9)
    );
\shadow[13][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \shadow[13][9]_i_5_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[13][9]_i_6_n_0\,
      O => \shadow[13][9]_i_2_n_0\
    );
\shadow[13][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(233),
      I1 => \^box_shadow\(201),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(169),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(137),
      O => \shadow[13][9]_i_3_n_0\
    );
\shadow[13][9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \^box_shadow\(425),
      I1 => aw_addr(2),
      I2 => \^box_shadow\(393),
      I3 => aw_addr(4),
      I4 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[13][9]_i_4_n_0\
    );
\shadow[13][9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(105),
      I1 => \^box_shadow\(73),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(41),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(9),
      O => \shadow[13][9]_i_5_n_0\
    );
\shadow[13][9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^box_shadow\(361),
      I1 => \^box_shadow\(329),
      I2 => aw_addr(3),
      I3 => \^box_shadow\(297),
      I4 => aw_addr(2),
      I5 => \^box_shadow\(265),
      O => \shadow[13][9]_i_6_n_0\
    );
\shadow[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000B"
    )
        port map (
      I0 => \^aw_addr_reg[2]_0\,
      I1 => \^snap_error_0\,
      I2 => \^aw_addr_reg[1]_0\,
      I3 => \shadow[9][31]_i_2_n_0\,
      I4 => \shadow[13][31]_i_6_n_0\,
      I5 => \p_0_out_inferred__1/i__carry_n_7\,
      O => \shadow[1][31]_i_1_n_0\
    );
\shadow[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222202"
    )
        port map (
      I0 => \shadow[3][31]_i_2_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \shadow[10][31]_i_2_n_0\,
      O => \shadow[2][31]_i_1_n_0\
    );
\shadow[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111110100000000"
    )
        port map (
      I0 => \shadow[11][31]_i_2_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \shadow[3][31]_i_2_n_0\,
      O => \shadow[3][31]_i_1_n_0\
    );
\shadow[3][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \p_0_out_inferred__1/i__carry_n_7\,
      I1 => aw_addr(4),
      I2 => \shadow[11][31]_i_4_n_0\,
      I3 => \shadow[13][31]_i_12_n_0\,
      I4 => \shadow[13][31]_i_11_n_0\,
      I5 => \shadow[13][31]_i_10_n_0\,
      O => \shadow[3][31]_i_2_n_0\
    );
\shadow[4][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088808888"
    )
        port map (
      I0 => \shadow[7][31]_i_2_n_0\,
      I1 => \shadow[12][31]_i_2_n_0\,
      I2 => \s_axi_bresp[1]_i_2_n_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \^snap_error_0\,
      I5 => \^aw_addr_reg[1]_0\,
      O => \shadow[4][31]_i_1_n_0\
    );
\shadow[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202020002"
    )
        port map (
      I0 => \shadow[7][31]_i_2_n_0\,
      I1 => \shadow[13][31]_i_3_n_0\,
      I2 => \^aw_addr_reg[1]_0\,
      I3 => \^snap_error_0\,
      I4 => \s_axi_bresp[1]_i_3_n_0\,
      I5 => \s_axi_bresp[1]_i_2_n_0\,
      O => \shadow[5][31]_i_1_n_0\
    );
\shadow[6][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222202"
    )
        port map (
      I0 => \shadow[7][31]_i_2_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \shadow[10][31]_i_2_n_0\,
      O => \shadow[6][31]_i_1_n_0\
    );
\shadow[7][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111110100000000"
    )
        port map (
      I0 => \shadow[11][31]_i_2_n_0\,
      I1 => \^aw_addr_reg[1]_0\,
      I2 => \^snap_error_0\,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \shadow[7][31]_i_2_n_0\,
      O => \shadow[7][31]_i_1_n_0\
    );
\shadow[7][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \shadow[13][31]_i_10_n_0\,
      I1 => aw_addr(4),
      I2 => \p_0_out_inferred__1/i__carry_n_7\,
      I3 => \shadow[11][31]_i_4_n_0\,
      I4 => \shadow[13][31]_i_12_n_0\,
      I5 => \shadow[13][31]_i_11_n_0\,
      O => \shadow[7][31]_i_2_n_0\
    );
\shadow[8][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055510000"
    )
        port map (
      I0 => \^aw_addr_reg[1]_0\,
      I1 => \^snap_error_0\,
      I2 => \s_axi_bresp[1]_i_3_n_0\,
      I3 => \s_axi_bresp[1]_i_2_n_0\,
      I4 => \shadow[12][31]_i_2_n_0\,
      I5 => \shadow[11][31]_i_3_n_0\,
      O => \shadow[8][31]_i_1_n_0\
    );
\shadow[9][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B00"
    )
        port map (
      I0 => \^aw_addr_reg[2]_0\,
      I1 => \^snap_error_0\,
      I2 => \^aw_addr_reg[1]_0\,
      I3 => \p_0_out_inferred__1/i__carry_n_7\,
      I4 => \shadow[9][31]_i_2_n_0\,
      I5 => \shadow[13][31]_i_6_n_0\,
      O => \shadow[9][31]_i_1_n_0\
    );
\shadow[9][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => aw_addr(4),
      I1 => aw_addr(2),
      I2 => aw_addr(3),
      O => \shadow[9][31]_i_2_n_0\
    );
\shadow_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(0),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(10),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(11),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(12),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(13),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(14),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(15),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(16),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(17),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(18),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(19),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(1),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(20),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(21),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(22),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(23),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(24),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(25),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(26),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(27),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(28),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(29),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(2),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(30),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(31),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(3),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(4),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(5),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(6),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(7),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(8),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[0][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(9),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(320),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(330),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(331),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(332),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(333),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(334),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(335),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(336),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(337),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(338),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(339),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(321),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(340),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(341),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(342),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(343),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(344),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(345),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(346),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(347),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(348),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(349),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(322),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(350),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(351),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(323),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(324),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(325),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(326),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(327),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(328),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[10][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(329),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(352),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(362),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(363),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(364),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(365),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(366),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(367),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(368),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(369),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(370),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(371),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(353),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(372),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(373),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(374),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(375),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(376),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(377),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(378),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(379),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(380),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(381),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(354),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(382),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(383),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(355),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(356),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(357),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(358),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(359),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(360),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[11][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(361),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(384),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(394),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(395),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(396),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(397),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(398),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(399),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(400),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(401),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(402),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(403),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(385),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(404),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(405),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(406),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(407),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(408),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(409),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(410),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(411),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(412),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(413),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(386),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(414),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(415),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(387),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(388),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(389),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(390),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(391),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(392),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[12][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(393),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(416),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \shadow[13][0]_i_5_n_0\,
      I1 => \shadow[13][0]_i_6_n_0\,
      O => \shadow_reg[13][0]_i_3_n_0\,
      S => aw_addr(4)
    );
\shadow_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(426),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(427),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(428),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(429),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \shadow[13][13]_i_5_n_0\,
      I1 => \shadow[13][13]_i_6_n_0\,
      O => \shadow_reg[13][13]_i_3_n_0\,
      S => aw_addr(4)
    );
\shadow_reg[13][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(430),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(431),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(432),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(433),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(434),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(435),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(417),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(436),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(437),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(438),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(439),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(440),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(441),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(442),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(443),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(444),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(445),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(418),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(446),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(447),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][31]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \shadow[13][31]_i_14_n_0\,
      I1 => \shadow[13][31]_i_15_n_0\,
      O => \shadow_reg[13][31]_i_8_n_0\,
      S => aw_addr(4)
    );
\shadow_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(419),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(420),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(421),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(422),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(423),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \shadow[13][7]_i_5_n_0\,
      I1 => \shadow[13][7]_i_6_n_0\,
      O => \shadow_reg[13][7]_i_3_n_0\,
      S => aw_addr(4)
    );
\shadow_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(424),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[13][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(425),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(32),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(42),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(43),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(44),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(45),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(46),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(47),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(48),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(49),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(50),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(51),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(33),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(52),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(53),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(54),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(55),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(56),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(57),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(58),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(59),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(60),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(61),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(34),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(62),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(63),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(35),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(36),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(37),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(38),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(39),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(40),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[1][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(41),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(64),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(74),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(75),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(76),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(77),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(78),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(79),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(80),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(81),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(82),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(83),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(65),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(84),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(85),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(86),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(87),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(88),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(89),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(90),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(91),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(92),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(93),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(66),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(94),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(95),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(67),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(68),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(69),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(70),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(71),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(72),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[2][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(73),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(96),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(106),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(107),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(108),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(109),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(110),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(111),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(112),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(113),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(114),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(115),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(97),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(116),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(117),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(118),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(119),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(120),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(121),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(122),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(123),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(124),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(125),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(98),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(126),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(127),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(99),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(100),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(101),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(102),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(103),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(104),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[3][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(105),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(128),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(138),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(139),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(140),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(141),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(142),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(143),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(144),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(145),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(146),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(147),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(129),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(148),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(149),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(150),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(151),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(152),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(153),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(154),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(155),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(156),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(157),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(130),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(158),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(159),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(131),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(132),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(133),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(134),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(135),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(136),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[4][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(137),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(160),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(170),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(171),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(172),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(173),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(174),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(175),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(176),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(177),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(178),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(179),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(161),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(180),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(181),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(182),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(183),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(184),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(185),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(186),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(187),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(188),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(189),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(162),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(190),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(191),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(163),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(164),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(165),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(166),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(167),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(168),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[5][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(169),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(192),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(202),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(203),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(204),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(205),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(206),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(207),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(208),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(209),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(210),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(211),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(193),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(212),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(213),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(214),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(215),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(216),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(217),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(218),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(219),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(220),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(221),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(194),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(222),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(223),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(195),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(196),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(197),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(198),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(199),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(200),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[6][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(201),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(224),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(234),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(235),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(236),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(237),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(238),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(239),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(240),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(241),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(242),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(243),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(225),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(244),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(245),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(246),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(247),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(248),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(249),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(250),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(251),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(252),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(253),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(226),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(254),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(255),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(227),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(228),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(229),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(230),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(231),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(232),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[7][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(233),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(256),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(266),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(267),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(268),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(269),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(270),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(271),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(272),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(273),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(274),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(275),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(257),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(276),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(277),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(278),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(279),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(280),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(281),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(282),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(283),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(284),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(285),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(258),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(286),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(287),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(259),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(260),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(261),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(262),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(263),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(264),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[8][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(265),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(0),
      Q => \^box_shadow\(288),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(10),
      Q => \^box_shadow\(298),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(11),
      Q => \^box_shadow\(299),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(12),
      Q => \^box_shadow\(300),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(13),
      Q => \^box_shadow\(301),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(14),
      Q => \^box_shadow\(302),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(15),
      Q => \^box_shadow\(303),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(16),
      Q => \^box_shadow\(304),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(17),
      Q => \^box_shadow\(305),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(18),
      Q => \^box_shadow\(306),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(19),
      Q => \^box_shadow\(307),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(1),
      Q => \^box_shadow\(289),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(20),
      Q => \^box_shadow\(308),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(21),
      Q => \^box_shadow\(309),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(22),
      Q => \^box_shadow\(310),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(23),
      Q => \^box_shadow\(311),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(24),
      Q => \^box_shadow\(312),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(25),
      Q => \^box_shadow\(313),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(26),
      Q => \^box_shadow\(314),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(27),
      Q => \^box_shadow\(315),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(28),
      Q => \^box_shadow\(316),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(29),
      Q => \^box_shadow\(317),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(2),
      Q => \^box_shadow\(290),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(30),
      Q => \^box_shadow\(318),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(31),
      Q => \^box_shadow\(319),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(3),
      Q => \^box_shadow\(291),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(4),
      Q => \^box_shadow\(292),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(5),
      Q => \^box_shadow\(293),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(6),
      Q => \^box_shadow\(294),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(7),
      Q => \^box_shadow\(295),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(8),
      Q => \^box_shadow\(296),
      R => s_axi_bvalid_i_1_n_0
    );
\shadow_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \shadow[9][31]_i_1_n_0\,
      D => byte_merge1_return(9),
      Q => \^box_shadow\(297),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => snap_timeouts_reg(0),
      O => \snap_timeouts[0]_i_2_n_0\
    );
\snap_timeouts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[0]_i_1_n_7\,
      Q => snap_timeouts_reg(0),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \snap_timeouts_reg[0]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[0]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[0]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \snap_timeouts_reg[0]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[0]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[0]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[0]_i_1_n_7\,
      S(3 downto 1) => snap_timeouts_reg(3 downto 1),
      S(0) => \snap_timeouts[0]_i_2_n_0\
    );
\snap_timeouts_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[8]_i_1_n_5\,
      Q => snap_timeouts_reg(10),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[8]_i_1_n_4\,
      Q => snap_timeouts_reg(11),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[12]_i_1_n_7\,
      Q => snap_timeouts_reg(12),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[8]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[12]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[12]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[12]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[12]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[12]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[12]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[12]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(15 downto 12)
    );
\snap_timeouts_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[12]_i_1_n_6\,
      Q => snap_timeouts_reg(13),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[12]_i_1_n_5\,
      Q => snap_timeouts_reg(14),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[12]_i_1_n_4\,
      Q => snap_timeouts_reg(15),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[16]_i_1_n_7\,
      Q => snap_timeouts_reg(16),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[12]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[16]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[16]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[16]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[16]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[16]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[16]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[16]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(19 downto 16)
    );
\snap_timeouts_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[16]_i_1_n_6\,
      Q => snap_timeouts_reg(17),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[16]_i_1_n_5\,
      Q => snap_timeouts_reg(18),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[16]_i_1_n_4\,
      Q => snap_timeouts_reg(19),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[0]_i_1_n_6\,
      Q => snap_timeouts_reg(1),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[20]_i_1_n_7\,
      Q => snap_timeouts_reg(20),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[16]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[20]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[20]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[20]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[20]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[20]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[20]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[20]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(23 downto 20)
    );
\snap_timeouts_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[20]_i_1_n_6\,
      Q => snap_timeouts_reg(21),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[20]_i_1_n_5\,
      Q => snap_timeouts_reg(22),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[20]_i_1_n_4\,
      Q => snap_timeouts_reg(23),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[24]_i_1_n_7\,
      Q => snap_timeouts_reg(24),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[20]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[24]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[24]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[24]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[24]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[24]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[24]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[24]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(27 downto 24)
    );
\snap_timeouts_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[24]_i_1_n_6\,
      Q => snap_timeouts_reg(25),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[24]_i_1_n_5\,
      Q => snap_timeouts_reg(26),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[24]_i_1_n_4\,
      Q => snap_timeouts_reg(27),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[28]_i_1_n_7\,
      Q => snap_timeouts_reg(28),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[24]_i_1_n_0\,
      CO(3) => \NLW_snap_timeouts_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \snap_timeouts_reg[28]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[28]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[28]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[28]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[28]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[28]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(31 downto 28)
    );
\snap_timeouts_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[28]_i_1_n_6\,
      Q => snap_timeouts_reg(29),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[0]_i_1_n_5\,
      Q => snap_timeouts_reg(2),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[28]_i_1_n_5\,
      Q => snap_timeouts_reg(30),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[28]_i_1_n_4\,
      Q => snap_timeouts_reg(31),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[0]_i_1_n_4\,
      Q => snap_timeouts_reg(3),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[4]_i_1_n_7\,
      Q => snap_timeouts_reg(4),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[0]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[4]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[4]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[4]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[4]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[4]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[4]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[4]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(7 downto 4)
    );
\snap_timeouts_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[4]_i_1_n_6\,
      Q => snap_timeouts_reg(5),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[4]_i_1_n_5\,
      Q => snap_timeouts_reg(6),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[4]_i_1_n_4\,
      Q => snap_timeouts_reg(7),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[8]_i_1_n_7\,
      Q => snap_timeouts_reg(8),
      R => s_axi_bvalid_i_1_n_0
    );
\snap_timeouts_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snap_timeouts_reg[4]_i_1_n_0\,
      CO(3) => \snap_timeouts_reg[8]_i_1_n_0\,
      CO(2) => \snap_timeouts_reg[8]_i_1_n_1\,
      CO(1) => \snap_timeouts_reg[8]_i_1_n_2\,
      CO(0) => \snap_timeouts_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snap_timeouts_reg[8]_i_1_n_4\,
      O(2) => \snap_timeouts_reg[8]_i_1_n_5\,
      O(1) => \snap_timeouts_reg[8]_i_1_n_6\,
      O(0) => \snap_timeouts_reg[8]_i_1_n_7\,
      S(3 downto 0) => snap_timeouts_reg(11 downto 8)
    );
\snap_timeouts_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_timeout_event,
      D => \snap_timeouts_reg[8]_i_1_n_6\,
      Q => snap_timeouts_reg(9),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^time_ticks\(0),
      O => \time_ticks[3]_i_2_n_0\
    );
\time_ticks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[3]_i_1_n_7\,
      Q => \^time_ticks\(0),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[11]_i_1_n_5\,
      Q => \^time_ticks\(10),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[11]_i_1_n_4\,
      Q => \^time_ticks\(11),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[7]_i_1_n_0\,
      CO(3) => \time_ticks_reg[11]_i_1_n_0\,
      CO(2) => \time_ticks_reg[11]_i_1_n_1\,
      CO(1) => \time_ticks_reg[11]_i_1_n_2\,
      CO(0) => \time_ticks_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[11]_i_1_n_4\,
      O(2) => \time_ticks_reg[11]_i_1_n_5\,
      O(1) => \time_ticks_reg[11]_i_1_n_6\,
      O(0) => \time_ticks_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(11 downto 8)
    );
\time_ticks_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[15]_i_1_n_7\,
      Q => \^time_ticks\(12),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[15]_i_1_n_6\,
      Q => \^time_ticks\(13),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[15]_i_1_n_5\,
      Q => \^time_ticks\(14),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[15]_i_1_n_4\,
      Q => \^time_ticks\(15),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[11]_i_1_n_0\,
      CO(3) => \time_ticks_reg[15]_i_1_n_0\,
      CO(2) => \time_ticks_reg[15]_i_1_n_1\,
      CO(1) => \time_ticks_reg[15]_i_1_n_2\,
      CO(0) => \time_ticks_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[15]_i_1_n_4\,
      O(2) => \time_ticks_reg[15]_i_1_n_5\,
      O(1) => \time_ticks_reg[15]_i_1_n_6\,
      O(0) => \time_ticks_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(15 downto 12)
    );
\time_ticks_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[19]_i_1_n_7\,
      Q => \^time_ticks\(16),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[19]_i_1_n_6\,
      Q => \^time_ticks\(17),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[19]_i_1_n_5\,
      Q => \^time_ticks\(18),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[19]_i_1_n_4\,
      Q => \^time_ticks\(19),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[15]_i_1_n_0\,
      CO(3) => \time_ticks_reg[19]_i_1_n_0\,
      CO(2) => \time_ticks_reg[19]_i_1_n_1\,
      CO(1) => \time_ticks_reg[19]_i_1_n_2\,
      CO(0) => \time_ticks_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[19]_i_1_n_4\,
      O(2) => \time_ticks_reg[19]_i_1_n_5\,
      O(1) => \time_ticks_reg[19]_i_1_n_6\,
      O(0) => \time_ticks_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(19 downto 16)
    );
\time_ticks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[3]_i_1_n_6\,
      Q => \^time_ticks\(1),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[23]_i_1_n_7\,
      Q => \^time_ticks\(20),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[23]_i_1_n_6\,
      Q => \^time_ticks\(21),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[23]_i_1_n_5\,
      Q => \^time_ticks\(22),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[23]_i_1_n_4\,
      Q => \^time_ticks\(23),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[19]_i_1_n_0\,
      CO(3) => \time_ticks_reg[23]_i_1_n_0\,
      CO(2) => \time_ticks_reg[23]_i_1_n_1\,
      CO(1) => \time_ticks_reg[23]_i_1_n_2\,
      CO(0) => \time_ticks_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[23]_i_1_n_4\,
      O(2) => \time_ticks_reg[23]_i_1_n_5\,
      O(1) => \time_ticks_reg[23]_i_1_n_6\,
      O(0) => \time_ticks_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(23 downto 20)
    );
\time_ticks_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[27]_i_1_n_7\,
      Q => \^time_ticks\(24),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[27]_i_1_n_6\,
      Q => \^time_ticks\(25),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[27]_i_1_n_5\,
      Q => \^time_ticks\(26),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[27]_i_1_n_4\,
      Q => \^time_ticks\(27),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[23]_i_1_n_0\,
      CO(3) => \time_ticks_reg[27]_i_1_n_0\,
      CO(2) => \time_ticks_reg[27]_i_1_n_1\,
      CO(1) => \time_ticks_reg[27]_i_1_n_2\,
      CO(0) => \time_ticks_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[27]_i_1_n_4\,
      O(2) => \time_ticks_reg[27]_i_1_n_5\,
      O(1) => \time_ticks_reg[27]_i_1_n_6\,
      O(0) => \time_ticks_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(27 downto 24)
    );
\time_ticks_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[31]_i_1_n_7\,
      Q => \^time_ticks\(28),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[31]_i_1_n_6\,
      Q => \^time_ticks\(29),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[3]_i_1_n_5\,
      Q => \^time_ticks\(2),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[31]_i_1_n_5\,
      Q => \^time_ticks\(30),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[31]_i_1_n_4\,
      Q => \^time_ticks\(31),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[27]_i_1_n_0\,
      CO(3) => \time_ticks_reg[31]_i_1_n_0\,
      CO(2) => \time_ticks_reg[31]_i_1_n_1\,
      CO(1) => \time_ticks_reg[31]_i_1_n_2\,
      CO(0) => \time_ticks_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[31]_i_1_n_4\,
      O(2) => \time_ticks_reg[31]_i_1_n_5\,
      O(1) => \time_ticks_reg[31]_i_1_n_6\,
      O(0) => \time_ticks_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(31 downto 28)
    );
\time_ticks_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[35]_i_1_n_7\,
      Q => \^time_ticks\(32),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[35]_i_1_n_6\,
      Q => \^time_ticks\(33),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[35]_i_1_n_5\,
      Q => \^time_ticks\(34),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[35]_i_1_n_4\,
      Q => \^time_ticks\(35),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[31]_i_1_n_0\,
      CO(3) => \time_ticks_reg[35]_i_1_n_0\,
      CO(2) => \time_ticks_reg[35]_i_1_n_1\,
      CO(1) => \time_ticks_reg[35]_i_1_n_2\,
      CO(0) => \time_ticks_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[35]_i_1_n_4\,
      O(2) => \time_ticks_reg[35]_i_1_n_5\,
      O(1) => \time_ticks_reg[35]_i_1_n_6\,
      O(0) => \time_ticks_reg[35]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(35 downto 32)
    );
\time_ticks_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[39]_i_1_n_7\,
      Q => \^time_ticks\(36),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[39]_i_1_n_6\,
      Q => \^time_ticks\(37),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[39]_i_1_n_5\,
      Q => \^time_ticks\(38),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[39]_i_1_n_4\,
      Q => \^time_ticks\(39),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[35]_i_1_n_0\,
      CO(3) => \time_ticks_reg[39]_i_1_n_0\,
      CO(2) => \time_ticks_reg[39]_i_1_n_1\,
      CO(1) => \time_ticks_reg[39]_i_1_n_2\,
      CO(0) => \time_ticks_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[39]_i_1_n_4\,
      O(2) => \time_ticks_reg[39]_i_1_n_5\,
      O(1) => \time_ticks_reg[39]_i_1_n_6\,
      O(0) => \time_ticks_reg[39]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(39 downto 36)
    );
\time_ticks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[3]_i_1_n_4\,
      Q => \^time_ticks\(3),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_ticks_reg[3]_i_1_n_0\,
      CO(2) => \time_ticks_reg[3]_i_1_n_1\,
      CO(1) => \time_ticks_reg[3]_i_1_n_2\,
      CO(0) => \time_ticks_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_ticks_reg[3]_i_1_n_4\,
      O(2) => \time_ticks_reg[3]_i_1_n_5\,
      O(1) => \time_ticks_reg[3]_i_1_n_6\,
      O(0) => \time_ticks_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^time_ticks\(3 downto 1),
      S(0) => \time_ticks[3]_i_2_n_0\
    );
\time_ticks_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[43]_i_1_n_7\,
      Q => \^time_ticks\(40),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[43]_i_1_n_6\,
      Q => \^time_ticks\(41),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[43]_i_1_n_5\,
      Q => \^time_ticks\(42),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[43]_i_1_n_4\,
      Q => \^time_ticks\(43),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[39]_i_1_n_0\,
      CO(3) => \time_ticks_reg[43]_i_1_n_0\,
      CO(2) => \time_ticks_reg[43]_i_1_n_1\,
      CO(1) => \time_ticks_reg[43]_i_1_n_2\,
      CO(0) => \time_ticks_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[43]_i_1_n_4\,
      O(2) => \time_ticks_reg[43]_i_1_n_5\,
      O(1) => \time_ticks_reg[43]_i_1_n_6\,
      O(0) => \time_ticks_reg[43]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(43 downto 40)
    );
\time_ticks_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[47]_i_1_n_7\,
      Q => \^time_ticks\(44),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[47]_i_1_n_6\,
      Q => \^time_ticks\(45),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[47]_i_1_n_5\,
      Q => \^time_ticks\(46),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[47]_i_1_n_4\,
      Q => \^time_ticks\(47),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[43]_i_1_n_0\,
      CO(3) => \time_ticks_reg[47]_i_1_n_0\,
      CO(2) => \time_ticks_reg[47]_i_1_n_1\,
      CO(1) => \time_ticks_reg[47]_i_1_n_2\,
      CO(0) => \time_ticks_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[47]_i_1_n_4\,
      O(2) => \time_ticks_reg[47]_i_1_n_5\,
      O(1) => \time_ticks_reg[47]_i_1_n_6\,
      O(0) => \time_ticks_reg[47]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(47 downto 44)
    );
\time_ticks_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[51]_i_1_n_7\,
      Q => \^time_ticks\(48),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[51]_i_1_n_6\,
      Q => \^time_ticks\(49),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[7]_i_1_n_7\,
      Q => \^time_ticks\(4),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[51]_i_1_n_5\,
      Q => \^time_ticks\(50),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[51]_i_1_n_4\,
      Q => \^time_ticks\(51),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[47]_i_1_n_0\,
      CO(3) => \time_ticks_reg[51]_i_1_n_0\,
      CO(2) => \time_ticks_reg[51]_i_1_n_1\,
      CO(1) => \time_ticks_reg[51]_i_1_n_2\,
      CO(0) => \time_ticks_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[51]_i_1_n_4\,
      O(2) => \time_ticks_reg[51]_i_1_n_5\,
      O(1) => \time_ticks_reg[51]_i_1_n_6\,
      O(0) => \time_ticks_reg[51]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(51 downto 48)
    );
\time_ticks_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[55]_i_1_n_7\,
      Q => \^time_ticks\(52),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[55]_i_1_n_6\,
      Q => \^time_ticks\(53),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[55]_i_1_n_5\,
      Q => \^time_ticks\(54),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[55]_i_1_n_4\,
      Q => \^time_ticks\(55),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[51]_i_1_n_0\,
      CO(3) => \time_ticks_reg[55]_i_1_n_0\,
      CO(2) => \time_ticks_reg[55]_i_1_n_1\,
      CO(1) => \time_ticks_reg[55]_i_1_n_2\,
      CO(0) => \time_ticks_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[55]_i_1_n_4\,
      O(2) => \time_ticks_reg[55]_i_1_n_5\,
      O(1) => \time_ticks_reg[55]_i_1_n_6\,
      O(0) => \time_ticks_reg[55]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(55 downto 52)
    );
\time_ticks_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[59]_i_1_n_7\,
      Q => \^time_ticks\(56),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[59]_i_1_n_6\,
      Q => \^time_ticks\(57),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[59]_i_1_n_5\,
      Q => \^time_ticks\(58),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[59]_i_1_n_4\,
      Q => \^time_ticks\(59),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[55]_i_1_n_0\,
      CO(3) => \time_ticks_reg[59]_i_1_n_0\,
      CO(2) => \time_ticks_reg[59]_i_1_n_1\,
      CO(1) => \time_ticks_reg[59]_i_1_n_2\,
      CO(0) => \time_ticks_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[59]_i_1_n_4\,
      O(2) => \time_ticks_reg[59]_i_1_n_5\,
      O(1) => \time_ticks_reg[59]_i_1_n_6\,
      O(0) => \time_ticks_reg[59]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(59 downto 56)
    );
\time_ticks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[7]_i_1_n_6\,
      Q => \^time_ticks\(5),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[63]_i_1_n_7\,
      Q => \^time_ticks\(60),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[63]_i_1_n_6\,
      Q => \^time_ticks\(61),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[63]_i_1_n_5\,
      Q => \^time_ticks\(62),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[63]_i_1_n_4\,
      Q => \^time_ticks\(63),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[63]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[59]_i_1_n_0\,
      CO(3) => \NLW_time_ticks_reg[63]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \time_ticks_reg[63]_i_1_n_1\,
      CO(1) => \time_ticks_reg[63]_i_1_n_2\,
      CO(0) => \time_ticks_reg[63]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[63]_i_1_n_4\,
      O(2) => \time_ticks_reg[63]_i_1_n_5\,
      O(1) => \time_ticks_reg[63]_i_1_n_6\,
      O(0) => \time_ticks_reg[63]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(63 downto 60)
    );
\time_ticks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[7]_i_1_n_5\,
      Q => \^time_ticks\(6),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[7]_i_1_n_4\,
      Q => \^time_ticks\(7),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_ticks_reg[3]_i_1_n_0\,
      CO(3) => \time_ticks_reg[7]_i_1_n_0\,
      CO(2) => \time_ticks_reg[7]_i_1_n_1\,
      CO(1) => \time_ticks_reg[7]_i_1_n_2\,
      CO(0) => \time_ticks_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_ticks_reg[7]_i_1_n_4\,
      O(2) => \time_ticks_reg[7]_i_1_n_5\,
      O(1) => \time_ticks_reg[7]_i_1_n_6\,
      O(0) => \time_ticks_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^time_ticks\(7 downto 4)
    );
\time_ticks_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[11]_i_1_n_7\,
      Q => \^time_ticks\(8),
      R => s_axi_bvalid_i_1_n_0
    );
\time_ticks_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_ticks_reg[11]_i_1_n_6\,
      Q => \^time_ticks\(9),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => \^w_full_reg_0\,
      O => w_full0
    );
\w_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(0),
      Q => \w_data_reg_n_0_[0]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(10),
      Q => p_2_in(2),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(11),
      Q => p_2_in(3),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(12),
      Q => p_2_in(4),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(13),
      Q => p_2_in(5),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(14),
      Q => p_2_in(6),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(15),
      Q => p_2_in(7),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(16),
      Q => \w_data_reg_n_0_[16]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(17),
      Q => \w_data_reg_n_0_[17]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(18),
      Q => \w_data_reg_n_0_[18]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(19),
      Q => \w_data_reg_n_0_[19]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(1),
      Q => \w_data_reg_n_0_[1]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(20),
      Q => \w_data_reg_n_0_[20]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(21),
      Q => \w_data_reg_n_0_[21]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(22),
      Q => \w_data_reg_n_0_[22]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(23),
      Q => \w_data_reg_n_0_[23]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(24),
      Q => \w_data_reg_n_0_[24]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(25),
      Q => \w_data_reg_n_0_[25]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(26),
      Q => \w_data_reg_n_0_[26]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(27),
      Q => \w_data_reg_n_0_[27]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(28),
      Q => \w_data_reg_n_0_[28]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(29),
      Q => \w_data_reg_n_0_[29]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(2),
      Q => \w_data_reg_n_0_[2]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(30),
      Q => \w_data_reg_n_0_[30]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(31),
      Q => \w_data_reg_n_0_[31]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(3),
      Q => \w_data_reg_n_0_[3]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(4),
      Q => \w_data_reg_n_0_[4]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(5),
      Q => \w_data_reg_n_0_[5]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(6),
      Q => \w_data_reg_n_0_[6]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(7),
      Q => \w_data_reg_n_0_[7]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(8),
      Q => p_2_in(0),
      R => s_axi_bvalid_i_1_n_0
    );
\w_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wdata(9),
      Q => p_2_in(1),
      R => s_axi_bvalid_i_1_n_0
    );
w_full_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => w_full_reg_1,
      Q => \^w_full_reg_0\,
      R => '0'
    );
\w_strobe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wstrb(0),
      Q => \w_strobe_reg_n_0_[0]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_strobe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wstrb(1),
      Q => p_0_in,
      R => s_axi_bvalid_i_1_n_0
    );
\w_strobe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wstrb(2),
      Q => \w_strobe_reg_n_0_[2]\,
      R => s_axi_bvalid_i_1_n_0
    );
\w_strobe_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => w_full0,
      D => s_axi_wstrb(3),
      Q => \w_strobe_reg_n_0_[3]\,
      R => s_axi_bvalid_i_1_n_0
    );
write_legal2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_legal2_carry_n_0,
      CO(2) => write_legal2_carry_n_1,
      CO(1) => write_legal2_carry_n_2,
      CO(0) => write_legal2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_write_legal2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => write_legal2_carry_i_1_n_0,
      S(2) => write_legal2_carry_i_2_n_0,
      S(1) => write_legal2_carry_i_3_n_0,
      S(0) => write_legal2_carry_i_4_n_0
    );
\write_legal2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_legal2_carry_n_0,
      CO(3) => \write_legal2_carry__0_n_0\,
      CO(2) => \write_legal2_carry__0_n_1\,
      CO(1) => \write_legal2_carry__0_n_2\,
      CO(0) => \write_legal2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_write_legal2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_legal2_carry__0_i_1_n_0\,
      S(2) => \write_legal2_carry__0_i_2_n_0\,
      S(1) => \write_legal2_carry__0_i_3_n_0\,
      S(0) => \write_legal2_carry__0_i_4_n_0\
    );
\write_legal2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(23),
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \w_data_reg_n_0_[23]\,
      I3 => \write_legal2_carry__0_i_5_n_0\,
      O => \write_legal2_carry__0_i_1_n_0\
    );
\write_legal2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(20),
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \w_data_reg_n_0_[20]\,
      I3 => \write_legal2_carry__0_i_6_n_0\,
      O => \write_legal2_carry__0_i_2_n_0\
    );
\write_legal2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(17),
      I1 => \w_strobe_reg_n_0_[2]\,
      I2 => \w_data_reg_n_0_[17]\,
      I3 => \write_legal2_carry__0_i_7_n_0\,
      O => \write_legal2_carry__0_i_3_n_0\
    );
\write_legal2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(14),
      I1 => p_0_in,
      I2 => p_2_in(6),
      I3 => \write_legal2_carry__0_i_8_n_0\,
      O => \write_legal2_carry__0_i_4_n_0\
    );
\write_legal2_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => \w_data_reg_n_0_[21]\,
      I1 => \^q\(21),
      I2 => \w_data_reg_n_0_[22]\,
      I3 => \w_strobe_reg_n_0_[2]\,
      I4 => \^q\(22),
      O => \write_legal2_carry__0_i_5_n_0\
    );
\write_legal2_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => \w_data_reg_n_0_[18]\,
      I1 => \^q\(18),
      I2 => \w_data_reg_n_0_[19]\,
      I3 => \w_strobe_reg_n_0_[2]\,
      I4 => \^q\(19),
      O => \write_legal2_carry__0_i_6_n_0\
    );
\write_legal2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48FF4848FF484848"
    )
        port map (
      I0 => p_2_in(7),
      I1 => p_0_in,
      I2 => \^q\(15),
      I3 => \w_data_reg_n_0_[16]\,
      I4 => \w_strobe_reg_n_0_[2]\,
      I5 => \^q\(16),
      O => \write_legal2_carry__0_i_7_n_0\
    );
\write_legal2_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => p_2_in(4),
      I1 => \^q\(12),
      I2 => p_2_in(5),
      I3 => p_0_in,
      I4 => \^q\(13),
      O => \write_legal2_carry__0_i_8_n_0\
    );
\write_legal2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_legal2_carry__0_n_0\,
      CO(3) => \NLW_write_legal2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => write_legal2,
      CO(1) => \write_legal2_carry__1_n_2\,
      CO(0) => \write_legal2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_write_legal2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \write_legal2_carry__1_i_1_n_0\,
      S(1) => \write_legal2_carry__1_i_2_n_0\,
      S(0) => \write_legal2_carry__1_i_3_n_0\
    );
\write_legal2_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90FF09FF"
    )
        port map (
      I0 => \^q\(30),
      I1 => \w_data_reg_n_0_[30]\,
      I2 => \w_data_reg_n_0_[31]\,
      I3 => \w_strobe_reg_n_0_[3]\,
      I4 => \^q\(31),
      O => \write_legal2_carry__1_i_1_n_0\
    );
\write_legal2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(29),
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \w_data_reg_n_0_[29]\,
      I3 => \write_legal2_carry__1_i_4_n_0\,
      O => \write_legal2_carry__1_i_2_n_0\
    );
\write_legal2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(26),
      I1 => \w_strobe_reg_n_0_[3]\,
      I2 => \w_data_reg_n_0_[26]\,
      I3 => \write_legal2_carry__1_i_5_n_0\,
      O => \write_legal2_carry__1_i_3_n_0\
    );
\write_legal2_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => \w_data_reg_n_0_[27]\,
      I1 => \^q\(27),
      I2 => \w_data_reg_n_0_[28]\,
      I3 => \w_strobe_reg_n_0_[3]\,
      I4 => \^q\(28),
      O => \write_legal2_carry__1_i_4_n_0\
    );
\write_legal2_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => \w_data_reg_n_0_[24]\,
      I1 => \^q\(24),
      I2 => \w_data_reg_n_0_[25]\,
      I3 => \w_strobe_reg_n_0_[3]\,
      I4 => \^q\(25),
      O => \write_legal2_carry__1_i_5_n_0\
    );
write_legal2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(9),
      I1 => p_0_in,
      I2 => p_2_in(1),
      I3 => write_legal2_carry_i_5_n_0,
      O => write_legal2_carry_i_1_n_0
    );
write_legal2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(8),
      I1 => p_0_in,
      I2 => p_2_in(0),
      I3 => write_legal2_carry_i_6_n_0,
      O => write_legal2_carry_i_2_n_0
    );
write_legal2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(5),
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \w_data_reg_n_0_[5]\,
      I3 => write_legal2_carry_i_7_n_0,
      O => write_legal2_carry_i_3_n_0
    );
write_legal2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \w_strobe_reg_n_0_[0]\,
      I2 => \w_data_reg_n_0_[2]\,
      I3 => write_legal2_carry_i_8_n_0,
      O => write_legal2_carry_i_4_n_0
    );
write_legal2_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => p_2_in(3),
      I1 => \^q\(11),
      I2 => p_2_in(2),
      I3 => p_0_in,
      I4 => \^q\(10),
      O => write_legal2_carry_i_5_n_0
    );
write_legal2_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F00F600"
    )
        port map (
      I0 => \w_data_reg_n_0_[6]\,
      I1 => \^q\(6),
      I2 => \w_data_reg_n_0_[7]\,
      I3 => \w_strobe_reg_n_0_[0]\,
      I4 => \^q\(7),
      O => write_legal2_carry_i_6_n_0
    );
write_legal2_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60F0F060"
    )
        port map (
      I0 => \w_data_reg_n_0_[3]\,
      I1 => \^q\(3),
      I2 => \w_strobe_reg_n_0_[0]\,
      I3 => \w_data_reg_n_0_[4]\,
      I4 => \^q\(4),
      O => write_legal2_carry_i_7_n_0
    );
write_legal2_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60F0F060"
    )
        port map (
      I0 => \w_data_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \w_strobe_reg_n_0_[0]\,
      I3 => \w_data_reg_n_0_[1]\,
      I4 => \^q\(1),
      O => write_legal2_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_regs_0_0_overlay_regs_bd is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    box_shadow : out STD_LOGIC_VECTOR ( 447 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    request : out STD_LOGIC;
    release_frame : out STD_LOGIC;
    cancel : out STD_LOGIC;
    clear_error : out STD_LOGIC;
    box_send : out STD_LOGIC;
    mailbox_recover : out STD_LOGIC;
    time_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_reg : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    epoch_changed : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    channel_ready : in STD_LOGIC;
    snap_ready_event : in STD_LOGIC;
    snap_abort_event : in STD_LOGIC;
    format_error_event : in STD_LOGIC;
    snap_timeout_event : in STD_LOGIC;
    box_expire_event : in STD_LOGIC;
    mailbox_timeout_event : in STD_LOGIC;
    channel_reset_event : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    snap_request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mailbox_busy : in STD_LOGIC;
    snap_ready : in STD_LOGIC;
    snap_busy : in STD_LOGIC;
    snap_error : in STD_LOGIC;
    snap_epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_commit_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_source_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    box_ack_sequence : in STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_error_code : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_overlay_regs_0_0_overlay_regs_bd : entity is "overlay_regs_bd";
end facebox_system_overlay_regs_0_0_overlay_regs_bd;

architecture STRUCTURE of facebox_system_overlay_regs_0_0_overlay_regs_bd is
  signal aw_full : STD_LOGIC;
  signal aw_full_i_1_n_0 : STD_LOGIC;
  signal \epoch_refresh_phase[0]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg\ : STD_LOGIC;
  signal u_core_n_10 : STD_LOGIC;
  signal u_core_n_14 : STD_LOGIC;
  signal u_core_n_15 : STD_LOGIC;
  signal u_core_n_16 : STD_LOGIC;
  signal u_core_n_629 : STD_LOGIC;
  signal u_core_n_7 : STD_LOGIC;
  signal u_core_n_81 : STD_LOGIC;
  signal w_full_i_1_n_0 : STD_LOGIC;
begin
  s_axi_bvalid_reg <= \^s_axi_bvalid_reg\;
  s_axi_rvalid_reg <= \^s_axi_rvalid_reg\;
aw_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C008C8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => aresetn,
      I2 => aw_full,
      I3 => u_core_n_7,
      I4 => \^s_axi_bvalid_reg\,
      O => aw_full_i_1_n_0
    );
\epoch_refresh_phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5757555703030003"
    )
        port map (
      I0 => u_core_n_629,
      I1 => u_core_n_81,
      I2 => u_core_n_15,
      I3 => u_core_n_14,
      I4 => u_core_n_16,
      I5 => u_core_n_10,
      O => \epoch_refresh_phase[0]_i_1_n_0\
    );
s_axi_bvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_reg\,
      I2 => u_core_n_7,
      I3 => aw_full,
      O => s_axi_bvalid_i_2_n_0
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid_reg\,
      O => s_axi_rvalid_i_1_n_0
    );
u_core: entity work.facebox_system_overlay_regs_0_0_overlay_regs
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \aw_addr_reg[1]_0\ => u_core_n_15,
      \aw_addr_reg[2]_0\ => u_core_n_16,
      \aw_addr_reg[4]_0\ => u_core_n_81,
      aw_full => aw_full,
      aw_full_reg_0 => aw_full_i_1_n_0,
      box_ack_sequence(31 downto 0) => box_ack_sequence(31 downto 0),
      box_expire_event => box_expire_event,
      box_send => box_send,
      box_shadow(447 downto 0) => box_shadow(447 downto 0),
      cancel => cancel,
      channel_ready => channel_ready,
      channel_reset_event => channel_reset_event,
      channel_reset_event_0 => u_core_n_629,
      clear_error => clear_error,
      epoch_changed => epoch_changed,
      \epoch_refresh_phase_reg[0]_0\ => u_core_n_10,
      \epoch_refresh_phase_reg[0]_1\ => \epoch_refresh_phase[0]_i_1_n_0\,
      format_error_event => format_error_event,
      mailbox_busy => mailbox_busy,
      mailbox_recover => mailbox_recover,
      mailbox_timeout_event => mailbox_timeout_event,
      release_frame => release_frame,
      request => request,
      request_id(31 downto 0) => request_id(31 downto 0),
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_reg_0 => \^s_axi_bvalid_reg\,
      s_axi_bvalid_reg_1 => s_axi_bvalid_i_2_n_0,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_reg_0 => \^s_axi_rvalid_reg\,
      s_axi_rvalid_reg_1 => s_axi_rvalid_i_1_n_0,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      snap_abort_event => snap_abort_event,
      snap_busy => snap_busy,
      snap_commit_ticks(63 downto 0) => snap_commit_ticks(63 downto 0),
      snap_epoch(31 downto 0) => snap_epoch(31 downto 0),
      snap_error => snap_error,
      snap_error_0 => u_core_n_14,
      snap_error_code(31 downto 0) => snap_error_code(31 downto 0),
      snap_frame_id(31 downto 0) => snap_frame_id(31 downto 0),
      snap_ready => snap_ready,
      snap_ready_event => snap_ready_event,
      snap_request_id(31 downto 0) => snap_request_id(31 downto 0),
      snap_source_ticks(63 downto 0) => snap_source_ticks(63 downto 0),
      snap_timeout_event => snap_timeout_event,
      time_ticks(63 downto 0) => time_ticks(63 downto 0),
      w_full_reg_0 => u_core_n_7,
      w_full_reg_1 => w_full_i_1_n_0
    );
w_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC000C88"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => aresetn,
      I2 => aw_full,
      I3 => u_core_n_7,
      I4 => \^s_axi_bvalid_reg\,
      O => w_full_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_regs_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_overlay_regs_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_overlay_regs_0_0 : entity is "facebox_system_overlay_regs_0_0,overlay_regs_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_overlay_regs_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_overlay_regs_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_overlay_regs_0_0 : entity is "overlay_regs_bd,Vivado 2018.3";
end facebox_system_overlay_regs_0_0;

architecture STRUCTURE of facebox_system_overlay_regs_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_PARAMETER of s_axi_rdata : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.facebox_system_overlay_regs_0_0_overlay_regs_bd
     port map (
      Q(31 downto 0) => epoch(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      box_ack_sequence(31 downto 0) => box_ack_sequence(31 downto 0),
      box_expire_event => box_expire_event,
      box_send => box_send,
      box_shadow(447 downto 0) => box_shadow(447 downto 0),
      cancel => cancel,
      channel_ready => channel_ready,
      channel_reset_event => channel_reset_event,
      clear_error => clear_error,
      epoch_changed => epoch_changed,
      format_error_event => format_error_event,
      mailbox_busy => mailbox_busy,
      mailbox_recover => mailbox_recover,
      mailbox_timeout_event => mailbox_timeout_event,
      release_frame => release_frame,
      request => request,
      request_id(31 downto 0) => request_id(31 downto 0),
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_reg => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_reg => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      snap_abort_event => snap_abort_event,
      snap_busy => snap_busy,
      snap_commit_ticks(63 downto 0) => snap_commit_ticks(63 downto 0),
      snap_epoch(31 downto 0) => snap_epoch(31 downto 0),
      snap_error => snap_error,
      snap_error_code(31 downto 0) => snap_error_code(31 downto 0),
      snap_frame_id(31 downto 0) => snap_frame_id(31 downto 0),
      snap_ready => snap_ready,
      snap_ready_event => snap_ready_event,
      snap_request_id(31 downto 0) => snap_request_id(31 downto 0),
      snap_source_ticks(63 downto 0) => snap_source_ticks(63 downto 0),
      snap_timeout_event => snap_timeout_event,
      time_ticks(63 downto 0) => time_ticks(63 downto 0)
    );
end STRUCTURE;
