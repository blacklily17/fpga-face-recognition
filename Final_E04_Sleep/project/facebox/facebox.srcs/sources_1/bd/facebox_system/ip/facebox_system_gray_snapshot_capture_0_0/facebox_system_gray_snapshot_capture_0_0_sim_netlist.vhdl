-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:21:45 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_capture_0_0/facebox_system_gray_snapshot_capture_0_0_sim_netlist.vhdl
-- Design      : facebox_system_gray_snapshot_capture_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture is
  port (
    ready : out STD_LOGIC;
    snap_request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    snap_frame_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_epoch : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_source_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_commit_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    snap_error_code : out STD_LOGIC_VECTOR ( 1 downto 0 );
    busy : out STD_LOGIC;
    bram_we : out STD_LOGIC;
    error : out STD_LOGIC;
    snap_ready_event : out STD_LOGIC;
    snap_abort_event : out STD_LOGIC;
    format_error_event : out STD_LOGIC;
    snap_timeout_event : out STD_LOGIC;
    verdict_good : in STD_LOGIC;
    verdict_valid : in STD_LOGIC;
    gray_valid : in STD_LOGIC;
    frame_commit : in STD_LOGIC;
    gray_eol : in STD_LOGIC;
    time_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    gray_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cancel : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    release_frame : in STD_LOGIC;
    frame_abort : in STD_LOGIC;
    provenance_fault : in STD_LOGIC;
    request : in STD_LOGIC;
    clear_error : in STD_LOGIC;
    gray_sof : in STD_LOGIC;
    verdict_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    committed_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture : entity is "gray_snapshot_capture";
end facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture;

architecture STRUCTURE of facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture is
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal bram_we_INST_0_i_1_n_0 : STD_LOGIC;
  signal bram_we_INST_0_i_2_n_0 : STD_LOGIC;
  signal bram_we_INST_0_i_3_n_0 : STD_LOGIC;
  signal bram_we_INST_0_i_4_n_0 : STD_LOGIC;
  signal commit_seen : STD_LOGIC;
  signal commit_seen_i_1_n_0 : STD_LOGIC;
  signal commit_seen_i_2_n_0 : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_3_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_3_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_3_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal expected_frame : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \expected_frame0_carry__0_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__0_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__1_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__2_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__3_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__4_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_0\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_1\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_4\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__5_n_7\ : STD_LOGIC;
  signal \expected_frame0_carry__6_n_2\ : STD_LOGIC;
  signal \expected_frame0_carry__6_n_3\ : STD_LOGIC;
  signal \expected_frame0_carry__6_n_5\ : STD_LOGIC;
  signal \expected_frame0_carry__6_n_6\ : STD_LOGIC;
  signal \expected_frame0_carry__6_n_7\ : STD_LOGIC;
  signal expected_frame0_carry_n_0 : STD_LOGIC;
  signal expected_frame0_carry_n_1 : STD_LOGIC;
  signal expected_frame0_carry_n_2 : STD_LOGIC;
  signal expected_frame0_carry_n_3 : STD_LOGIC;
  signal expected_frame0_carry_n_4 : STD_LOGIC;
  signal expected_frame0_carry_n_5 : STD_LOGIC;
  signal expected_frame0_carry_n_6 : STD_LOGIC;
  signal expected_frame0_carry_n_7 : STD_LOGIC;
  signal \expected_frame[0]_i_1_n_0\ : STD_LOGIC;
  signal expected_frame_2 : STD_LOGIC;
  signal format_error_event_i_1_n_0 : STD_LOGIC;
  signal format_error_event_i_2_n_0 : STD_LOGIC;
  signal format_error_event_i_3_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal matching_verdict0 : STD_LOGIC;
  signal \matching_verdict0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_n_1\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_n_2\ : STD_LOGIC;
  signal \matching_verdict0_carry__0_n_3\ : STD_LOGIC;
  signal \matching_verdict0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \matching_verdict0_carry__1_n_2\ : STD_LOGIC;
  signal \matching_verdict0_carry__1_n_3\ : STD_LOGIC;
  signal matching_verdict0_carry_i_1_n_0 : STD_LOGIC;
  signal matching_verdict0_carry_i_2_n_0 : STD_LOGIC;
  signal matching_verdict0_carry_i_3_n_0 : STD_LOGIC;
  signal matching_verdict0_carry_i_4_n_0 : STD_LOGIC;
  signal matching_verdict0_carry_n_0 : STD_LOGIC;
  signal matching_verdict0_carry_n_1 : STD_LOGIC;
  signal matching_verdict0_carry_n_2 : STD_LOGIC;
  signal matching_verdict0_carry_n_3 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \packed_bytes[15]_i_1_n_0\ : STD_LOGIC;
  signal \packed_bytes[15]_i_2_n_0\ : STD_LOGIC;
  signal \packed_bytes[23]_i_1_n_0\ : STD_LOGIC;
  signal \packed_bytes[23]_i_3_n_0\ : STD_LOGIC;
  signal \packed_bytes[23]_i_4_n_0\ : STD_LOGIC;
  signal \packed_bytes[23]_i_5_n_0\ : STD_LOGIC;
  signal \packed_bytes[23]_i_6_n_0\ : STD_LOGIC;
  signal \packed_bytes[7]_i_1_n_0\ : STD_LOGIC;
  signal \packed_bytes[7]_i_2_n_0\ : STD_LOGIC;
  signal \packed_bytes[7]_i_3_n_0\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal request_ticks : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal request_ticks_1 : STD_LOGIC;
  signal snap_abort_event_i_1_n_0 : STD_LOGIC;
  signal snap_abort_event_i_2_n_0 : STD_LOGIC;
  signal snap_abort_event_i_3_n_0 : STD_LOGIC;
  signal snap_abort_event_i_4_n_0 : STD_LOGIC;
  signal \^snap_error_code\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \snap_error_code[0]_i_1_n_0\ : STD_LOGIC;
  signal \snap_error_code[0]_i_2_n_0\ : STD_LOGIC;
  signal \snap_error_code[0]_i_3_n_0\ : STD_LOGIC;
  signal \snap_error_code[0]_i_4_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_10_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_1_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_2_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_3_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_4_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_5_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_6_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_7_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_8_n_0\ : STD_LOGIC;
  signal \snap_error_code[1]_i_9_n_0\ : STD_LOGIC;
  signal \snap_frame_id[31]_i_1_n_0\ : STD_LOGIC;
  signal \snap_frame_id[31]_i_2_n_0\ : STD_LOGIC;
  signal \snap_frame_id[31]_i_3_n_0\ : STD_LOGIC;
  signal \snap_frame_id[31]_i_4_n_0\ : STD_LOGIC;
  signal snap_ready_event_i_1_n_0 : STD_LOGIC;
  signal snap_ready_event_i_2_n_0 : STD_LOGIC;
  signal \^snap_request_id\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \snap_request_id[31]_i_10_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_11_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_12_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_1_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_3_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_4_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_5_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_6_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_7_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_8_n_0\ : STD_LOGIC;
  signal \snap_request_id[31]_i_9_n_0\ : STD_LOGIC;
  signal \snap_source_ticks[63]_i_2_n_0\ : STD_LOGIC;
  signal \snap_source_ticks[63]_i_3_n_0\ : STD_LOGIC;
  signal \snap_source_ticks[63]_i_4_n_0\ : STD_LOGIC;
  signal snap_timeout_event_i_1_n_0 : STD_LOGIC;
  signal source_frame : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state0 : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal \state1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state2 : STD_LOGIC;
  signal \state2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state3 : STD_LOGIC;
  signal \state3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state3_carry__0_n_0\ : STD_LOGIC;
  signal \state3_carry__0_n_1\ : STD_LOGIC;
  signal \state3_carry__0_n_2\ : STD_LOGIC;
  signal \state3_carry__0_n_3\ : STD_LOGIC;
  signal \state3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state3_carry__1_n_2\ : STD_LOGIC;
  signal \state3_carry__1_n_3\ : STD_LOGIC;
  signal state3_carry_i_1_n_0 : STD_LOGIC;
  signal state3_carry_i_2_n_0 : STD_LOGIC;
  signal state3_carry_i_3_n_0 : STD_LOGIC;
  signal state3_carry_i_4_n_0 : STD_LOGIC;
  signal state3_carry_n_0 : STD_LOGIC;
  signal state3_carry_n_1 : STD_LOGIC;
  signal state3_carry_n_2 : STD_LOGIC;
  signal state3_carry_n_3 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_10_n_0\ : STD_LOGIC;
  signal \state[2]_i_11_n_0\ : STD_LOGIC;
  signal \state[2]_i_12_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  signal \state[2]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal timed_out : STD_LOGIC;
  signal timed_out0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \timed_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__0_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__0_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__0_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__0_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__10_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__10_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__10_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__10_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__11_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__11_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__11_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__11_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__11_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__11_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__11_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__11_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__12_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__12_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__12_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__12_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__12_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__12_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__12_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__12_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__13_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__13_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__13_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__13_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__13_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__13_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__13_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__13_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__14_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__14_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__14_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__14_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__14_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__14_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__14_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__1_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__1_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__1_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__2_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__2_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__2_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__3_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__3_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__3_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__4_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__4_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__4_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__5_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__5_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__5_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__5_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__6_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__6_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__6_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__6_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__7_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__7_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__7_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__7_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__8_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__8_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__8_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__8_n_3\ : STD_LOGIC;
  signal \timed_out0_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__9_n_0\ : STD_LOGIC;
  signal \timed_out0_carry__9_n_1\ : STD_LOGIC;
  signal \timed_out0_carry__9_n_2\ : STD_LOGIC;
  signal \timed_out0_carry__9_n_3\ : STD_LOGIC;
  signal timed_out0_carry_i_1_n_0 : STD_LOGIC;
  signal timed_out0_carry_i_2_n_0 : STD_LOGIC;
  signal timed_out0_carry_i_3_n_0 : STD_LOGIC;
  signal timed_out0_carry_i_4_n_0 : STD_LOGIC;
  signal timed_out0_carry_n_0 : STD_LOGIC;
  signal timed_out0_carry_n_1 : STD_LOGIC;
  signal timed_out0_carry_n_2 : STD_LOGIC;
  signal timed_out0_carry_n_3 : STD_LOGIC;
  signal \timed_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_n_0\ : STD_LOGIC;
  signal \timed_out_carry__0_n_1\ : STD_LOGIC;
  signal \timed_out_carry__0_n_2\ : STD_LOGIC;
  signal \timed_out_carry__0_n_3\ : STD_LOGIC;
  signal \timed_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__1_n_1\ : STD_LOGIC;
  signal \timed_out_carry__1_n_2\ : STD_LOGIC;
  signal \timed_out_carry__1_n_3\ : STD_LOGIC;
  signal \timed_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__2_n_1\ : STD_LOGIC;
  signal \timed_out_carry__2_n_2\ : STD_LOGIC;
  signal \timed_out_carry__2_n_3\ : STD_LOGIC;
  signal \timed_out_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__3_n_1\ : STD_LOGIC;
  signal \timed_out_carry__3_n_2\ : STD_LOGIC;
  signal \timed_out_carry__3_n_3\ : STD_LOGIC;
  signal \timed_out_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__4_n_1\ : STD_LOGIC;
  signal \timed_out_carry__4_n_2\ : STD_LOGIC;
  signal \timed_out_carry__4_n_3\ : STD_LOGIC;
  signal \timed_out_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__5_n_1\ : STD_LOGIC;
  signal \timed_out_carry__5_n_2\ : STD_LOGIC;
  signal \timed_out_carry__5_n_3\ : STD_LOGIC;
  signal \timed_out_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \timed_out_carry__6_n_1\ : STD_LOGIC;
  signal \timed_out_carry__6_n_2\ : STD_LOGIC;
  signal \timed_out_carry__6_n_3\ : STD_LOGIC;
  signal timed_out_carry_i_1_n_0 : STD_LOGIC;
  signal timed_out_carry_i_2_n_0 : STD_LOGIC;
  signal timed_out_carry_i_3_n_0 : STD_LOGIC;
  signal timed_out_carry_i_4_n_0 : STD_LOGIC;
  signal timed_out_carry_i_5_n_0 : STD_LOGIC;
  signal timed_out_carry_i_6_n_0 : STD_LOGIC;
  signal timed_out_carry_i_7_n_0 : STD_LOGIC;
  signal timed_out_carry_i_8_n_0 : STD_LOGIC;
  signal timed_out_carry_n_0 : STD_LOGIC;
  signal timed_out_carry_n_1 : STD_LOGIC;
  signal timed_out_carry_n_2 : STD_LOGIC;
  signal timed_out_carry_n_3 : STD_LOGIC;
  signal verdict_seen : STD_LOGIC;
  signal verdict_seen_i_1_n_0 : STD_LOGIC;
  signal verdict_seen_i_2_n_0 : STD_LOGIC;
  signal verdict_seen_i_3_n_0 : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_2_n_0\ : STD_LOGIC;
  signal \x[6]_i_1_n_0\ : STD_LOGIC;
  signal \x[7]_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_i_2_n_0\ : STD_LOGIC;
  signal \x[9]_i_1_n_0\ : STD_LOGIC;
  signal \x[9]_i_2_n_0\ : STD_LOGIC;
  signal x_0 : STD_LOGIC;
  signal \NLW_count_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_expected_frame0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_expected_frame0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_matching_verdict0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_matching_verdict0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_matching_verdict0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_matching_verdict0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state3_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out0_carry__14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_timed_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timed_out_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bram_we_INST_0_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of busy_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[16]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of error_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of format_error_event_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packed_bytes[16]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \packed_bytes[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \packed_bytes[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \packed_bytes[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \packed_bytes[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \packed_bytes[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \packed_bytes[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \packed_bytes[23]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \packed_bytes[23]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packed_bytes[23]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packed_bytes[23]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of snap_abort_event_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of snap_abort_event_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \snap_error_code[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \snap_error_code[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \snap_error_code[1]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \snap_frame_id[31]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \snap_frame_id[31]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \snap_request_id[31]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \snap_source_ticks[63]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[2]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[2]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of verdict_seen_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of verdict_seen_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \x[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \x[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \x[7]_i_1\ : label is "soft_lutpair8";
begin
  bram_addr(14 downto 0) <= \^bram_addr\(14 downto 0);
  ready <= \^ready\;
  snap_error_code(1 downto 0) <= \^snap_error_code\(1 downto 0);
  snap_request_id(31 downto 0) <= \^snap_request_id\(31 downto 0);
bram_we_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888888"
    )
        port map (
      I0 => bram_we_INST_0_i_1_n_0,
      I1 => bram_we_INST_0_i_2_n_0,
      I2 => verdict_good,
      I3 => matching_verdict0,
      I4 => verdict_valid,
      O => bram_we
    );
bram_we_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => bram_we_INST_0_i_3_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => bram_we_INST_0_i_1_n_0
    );
bram_we_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => timed_out,
      I1 => provenance_fault,
      I2 => frame_abort,
      I3 => gray_valid,
      I4 => bram_we_INST_0_i_4_n_0,
      I5 => \snap_error_code[1]_i_6_n_0\,
      O => bram_we_INST_0_i_2_n_0
    );
bram_we_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_commit,
      I1 => \packed_bytes[7]_i_2_n_0\,
      O => bram_we_INST_0_i_3_n_0
    );
bram_we_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => bram_we_INST_0_i_4_n_0
    );
busy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      O => busy
    );
commit_seen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8A8A8A00000000"
    )
        port map (
      I0 => commit_seen,
      I1 => commit_seen_i_2_n_0,
      I2 => \snap_frame_id[31]_i_2_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => frame_commit,
      I5 => aresetn,
      O => commit_seen_i_1_n_0
    );
commit_seen_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDFDFDFDFDFDF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \packed_bytes[23]_i_5_n_0\,
      I3 => \snap_frame_id[31]_i_3_n_0\,
      I4 => frame_commit,
      I5 => \state_reg_n_0_[1]\,
      O => commit_seen_i_2_n_0
    );
commit_seen_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => commit_seen_i_1_n_0,
      Q => commit_seen,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(10),
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(11),
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(12),
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(13),
      O => \count[13]_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(14),
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(15),
      O => \count[15]_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => expected_frame_2,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => bram_we_INST_0_i_3_n_0,
      I4 => \snap_request_id[31]_i_3_n_0\,
      I5 => gray_valid,
      O => x_0
    );
\count[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(16),
      O => \count[16]_i_2_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(5),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(6),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(7),
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(8),
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => count0(9),
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[10]_i_1_n_0\,
      Q => \^bram_addr\(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[11]_i_1_n_0\,
      Q => \^bram_addr\(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[12]_i_1_n_0\,
      Q => \^bram_addr\(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_2_n_0\,
      CO(3) => \count_reg[12]_i_2_n_0\,
      CO(2) => \count_reg[12]_i_2_n_1\,
      CO(1) => \count_reg[12]_i_2_n_2\,
      CO(0) => \count_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3 downto 0) => \^bram_addr\(10 downto 7)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[13]_i_1_n_0\,
      Q => \^bram_addr\(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[14]_i_1_n_0\,
      Q => \^bram_addr\(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[15]_i_1_n_0\,
      Q => \^bram_addr\(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[16]_i_2_n_0\,
      Q => \^bram_addr\(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[16]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_2_n_0\,
      CO(3) => \NLW_count_reg[16]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[16]_i_3_n_1\,
      CO(1) => \count_reg[16]_i_3_n_2\,
      CO(0) => \count_reg[16]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3 downto 0) => \^bram_addr\(14 downto 11)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[2]_i_1_n_0\,
      Q => \^bram_addr\(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[3]_i_1_n_0\,
      Q => \^bram_addr\(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[4]_i_1_n_0\,
      Q => \^bram_addr\(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_2_n_0\,
      CO(2) => \count_reg[4]_i_2_n_1\,
      CO(1) => \count_reg[4]_i_2_n_2\,
      CO(0) => \count_reg[4]_i_2_n_3\,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3 downto 1) => \^bram_addr\(2 downto 0),
      S(0) => \count_reg_n_0_[1]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[5]_i_1_n_0\,
      Q => \^bram_addr\(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[6]_i_1_n_0\,
      Q => \^bram_addr\(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[7]_i_1_n_0\,
      Q => \^bram_addr\(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[8]_i_1_n_0\,
      Q => \^bram_addr\(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_2_n_0\,
      CO(3) => \count_reg[8]_i_2_n_0\,
      CO(2) => \count_reg[8]_i_2_n_1\,
      CO(1) => \count_reg[8]_i_2_n_2\,
      CO(0) => \count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3 downto 0) => \^bram_addr\(6 downto 3)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \count[9]_i_1_n_0\,
      Q => \^bram_addr\(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
error_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => error
    );
expected_frame0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => expected_frame0_carry_n_0,
      CO(2) => expected_frame0_carry_n_1,
      CO(1) => expected_frame0_carry_n_2,
      CO(0) => expected_frame0_carry_n_3,
      CYINIT => committed_frame_id(0),
      DI(3 downto 0) => B"0000",
      O(3) => expected_frame0_carry_n_4,
      O(2) => expected_frame0_carry_n_5,
      O(1) => expected_frame0_carry_n_6,
      O(0) => expected_frame0_carry_n_7,
      S(3 downto 0) => committed_frame_id(4 downto 1)
    );
\expected_frame0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => expected_frame0_carry_n_0,
      CO(3) => \expected_frame0_carry__0_n_0\,
      CO(2) => \expected_frame0_carry__0_n_1\,
      CO(1) => \expected_frame0_carry__0_n_2\,
      CO(0) => \expected_frame0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__0_n_4\,
      O(2) => \expected_frame0_carry__0_n_5\,
      O(1) => \expected_frame0_carry__0_n_6\,
      O(0) => \expected_frame0_carry__0_n_7\,
      S(3 downto 0) => committed_frame_id(8 downto 5)
    );
\expected_frame0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__0_n_0\,
      CO(3) => \expected_frame0_carry__1_n_0\,
      CO(2) => \expected_frame0_carry__1_n_1\,
      CO(1) => \expected_frame0_carry__1_n_2\,
      CO(0) => \expected_frame0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__1_n_4\,
      O(2) => \expected_frame0_carry__1_n_5\,
      O(1) => \expected_frame0_carry__1_n_6\,
      O(0) => \expected_frame0_carry__1_n_7\,
      S(3 downto 0) => committed_frame_id(12 downto 9)
    );
\expected_frame0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__1_n_0\,
      CO(3) => \expected_frame0_carry__2_n_0\,
      CO(2) => \expected_frame0_carry__2_n_1\,
      CO(1) => \expected_frame0_carry__2_n_2\,
      CO(0) => \expected_frame0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__2_n_4\,
      O(2) => \expected_frame0_carry__2_n_5\,
      O(1) => \expected_frame0_carry__2_n_6\,
      O(0) => \expected_frame0_carry__2_n_7\,
      S(3 downto 0) => committed_frame_id(16 downto 13)
    );
\expected_frame0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__2_n_0\,
      CO(3) => \expected_frame0_carry__3_n_0\,
      CO(2) => \expected_frame0_carry__3_n_1\,
      CO(1) => \expected_frame0_carry__3_n_2\,
      CO(0) => \expected_frame0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__3_n_4\,
      O(2) => \expected_frame0_carry__3_n_5\,
      O(1) => \expected_frame0_carry__3_n_6\,
      O(0) => \expected_frame0_carry__3_n_7\,
      S(3 downto 0) => committed_frame_id(20 downto 17)
    );
\expected_frame0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__3_n_0\,
      CO(3) => \expected_frame0_carry__4_n_0\,
      CO(2) => \expected_frame0_carry__4_n_1\,
      CO(1) => \expected_frame0_carry__4_n_2\,
      CO(0) => \expected_frame0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__4_n_4\,
      O(2) => \expected_frame0_carry__4_n_5\,
      O(1) => \expected_frame0_carry__4_n_6\,
      O(0) => \expected_frame0_carry__4_n_7\,
      S(3 downto 0) => committed_frame_id(24 downto 21)
    );
\expected_frame0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__4_n_0\,
      CO(3) => \expected_frame0_carry__5_n_0\,
      CO(2) => \expected_frame0_carry__5_n_1\,
      CO(1) => \expected_frame0_carry__5_n_2\,
      CO(0) => \expected_frame0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \expected_frame0_carry__5_n_4\,
      O(2) => \expected_frame0_carry__5_n_5\,
      O(1) => \expected_frame0_carry__5_n_6\,
      O(0) => \expected_frame0_carry__5_n_7\,
      S(3 downto 0) => committed_frame_id(28 downto 25)
    );
\expected_frame0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \expected_frame0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_expected_frame0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \expected_frame0_carry__6_n_2\,
      CO(0) => \expected_frame0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_expected_frame0_carry__6_O_UNCONNECTED\(3),
      O(2) => \expected_frame0_carry__6_n_5\,
      O(1) => \expected_frame0_carry__6_n_6\,
      O(0) => \expected_frame0_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => committed_frame_id(31 downto 29)
    );
\expected_frame[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => committed_frame_id(0),
      O => \expected_frame[0]_i_1_n_0\
    );
\expected_frame_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame[0]_i_1_n_0\,
      Q => expected_frame(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__1_n_6\,
      Q => expected_frame(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__1_n_5\,
      Q => expected_frame(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__1_n_4\,
      Q => expected_frame(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__2_n_7\,
      Q => expected_frame(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__2_n_6\,
      Q => expected_frame(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__2_n_5\,
      Q => expected_frame(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__2_n_4\,
      Q => expected_frame(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__3_n_7\,
      Q => expected_frame(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__3_n_6\,
      Q => expected_frame(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__3_n_5\,
      Q => expected_frame(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => expected_frame0_carry_n_7,
      Q => expected_frame(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__3_n_4\,
      Q => expected_frame(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__4_n_7\,
      Q => expected_frame(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__4_n_6\,
      Q => expected_frame(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__4_n_5\,
      Q => expected_frame(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__4_n_4\,
      Q => expected_frame(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__5_n_7\,
      Q => expected_frame(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__5_n_6\,
      Q => expected_frame(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__5_n_5\,
      Q => expected_frame(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__5_n_4\,
      Q => expected_frame(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__6_n_7\,
      Q => expected_frame(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => expected_frame0_carry_n_6,
      Q => expected_frame(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__6_n_6\,
      Q => expected_frame(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__6_n_5\,
      Q => expected_frame(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => expected_frame0_carry_n_5,
      Q => expected_frame(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => expected_frame0_carry_n_4,
      Q => expected_frame(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__0_n_7\,
      Q => expected_frame(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__0_n_6\,
      Q => expected_frame(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__0_n_5\,
      Q => expected_frame(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__0_n_4\,
      Q => expected_frame(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\expected_frame_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => \expected_frame0_carry__1_n_7\,
      Q => expected_frame(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
format_error_event_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => format_error_event_i_2_n_0,
      I1 => gray_eol,
      I2 => format_error_event_i_3_n_0,
      I3 => \state_reg_n_0_[2]\,
      I4 => snap_ready_event_i_2_n_0,
      O => format_error_event_i_1_n_0
    );
format_error_event_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => gray_valid,
      I3 => gray_sof,
      O => format_error_event_i_2_n_0
    );
format_error_event_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000054540000"
    )
        port map (
      I0 => bram_we_INST_0_i_3_n_0,
      I1 => frame_commit,
      I2 => gray_valid,
      I3 => \snap_frame_id[31]_i_3_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => format_error_event_i_3_n_0
    );
format_error_event_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => format_error_event_i_1_n_0,
      Q => format_error_event,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(22),
      I1 => gray_source_id(22),
      I2 => verdict_source_id(21),
      I3 => gray_source_id(21),
      I4 => gray_source_id(23),
      I5 => verdict_source_id(23),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(21),
      I1 => \^snap_request_id\(21),
      I2 => request_id(22),
      I3 => \^snap_request_id\(22),
      I4 => \^snap_request_id\(23),
      I5 => request_id(23),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => gray_source_id(20),
      I1 => verdict_source_id(20),
      I2 => verdict_source_id(18),
      I3 => gray_source_id(18),
      I4 => verdict_source_id(19),
      I5 => gray_source_id(19),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(18),
      I1 => \^snap_request_id\(18),
      I2 => request_id(19),
      I3 => \^snap_request_id\(19),
      I4 => \^snap_request_id\(20),
      I5 => request_id(20),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => gray_source_id(17),
      I1 => verdict_source_id(17),
      I2 => verdict_source_id(15),
      I3 => gray_source_id(15),
      I4 => verdict_source_id(16),
      I5 => gray_source_id(16),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(15),
      I1 => \^snap_request_id\(15),
      I2 => request_id(16),
      I3 => \^snap_request_id\(16),
      I4 => \^snap_request_id\(17),
      I5 => request_id(17),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => gray_source_id(14),
      I1 => verdict_source_id(14),
      I2 => verdict_source_id(12),
      I3 => gray_source_id(12),
      I4 => verdict_source_id(13),
      I5 => gray_source_id(13),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(12),
      I1 => \^snap_request_id\(12),
      I2 => request_id(13),
      I3 => \^snap_request_id\(13),
      I4 => \^snap_request_id\(14),
      I5 => request_id(14),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => gray_source_id(31),
      I1 => verdict_source_id(31),
      I2 => gray_source_id(30),
      I3 => verdict_source_id(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^snap_request_id\(31),
      I1 => request_id(31),
      I2 => \^snap_request_id\(30),
      I3 => request_id(30),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(27),
      I1 => gray_source_id(27),
      I2 => verdict_source_id(28),
      I3 => gray_source_id(28),
      I4 => gray_source_id(29),
      I5 => verdict_source_id(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(27),
      I1 => \^snap_request_id\(27),
      I2 => request_id(28),
      I3 => \^snap_request_id\(28),
      I4 => \^snap_request_id\(29),
      I5 => request_id(29),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => gray_source_id(26),
      I1 => verdict_source_id(26),
      I2 => verdict_source_id(25),
      I3 => gray_source_id(25),
      I4 => verdict_source_id(24),
      I5 => gray_source_id(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(24),
      I1 => \^snap_request_id\(24),
      I2 => request_id(25),
      I3 => \^snap_request_id\(25),
      I4 => \^snap_request_id\(26),
      I5 => request_id(26),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(9),
      I1 => gray_source_id(9),
      I2 => verdict_source_id(10),
      I3 => gray_source_id(10),
      I4 => gray_source_id(11),
      I5 => verdict_source_id(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(11),
      I1 => \^snap_request_id\(11),
      I2 => request_id(9),
      I3 => \^snap_request_id\(9),
      I4 => \^snap_request_id\(10),
      I5 => request_id(10),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => gray_source_id(8),
      I1 => verdict_source_id(8),
      I2 => verdict_source_id(6),
      I3 => gray_source_id(6),
      I4 => verdict_source_id(7),
      I5 => gray_source_id(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(6),
      I1 => \^snap_request_id\(6),
      I2 => request_id(7),
      I3 => \^snap_request_id\(7),
      I4 => \^snap_request_id\(8),
      I5 => request_id(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(3),
      I1 => gray_source_id(3),
      I2 => verdict_source_id(4),
      I3 => gray_source_id(4),
      I4 => gray_source_id(5),
      I5 => verdict_source_id(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(3),
      I1 => \^snap_request_id\(3),
      I2 => request_id(4),
      I3 => \^snap_request_id\(4),
      I4 => \^snap_request_id\(5),
      I5 => request_id(5),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(0),
      I1 => gray_source_id(0),
      I2 => verdict_source_id(1),
      I3 => gray_source_id(1),
      I4 => gray_source_id(2),
      I5 => verdict_source_id(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => request_id(0),
      I1 => \^snap_request_id\(0),
      I2 => request_id(1),
      I3 => \^snap_request_id\(1),
      I4 => \^snap_request_id\(2),
      I5 => request_id(2),
      O => \i__carry_i_4__0_n_0\
    );
matching_verdict0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => matching_verdict0_carry_n_0,
      CO(2) => matching_verdict0_carry_n_1,
      CO(1) => matching_verdict0_carry_n_2,
      CO(0) => matching_verdict0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_matching_verdict0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => matching_verdict0_carry_i_1_n_0,
      S(2) => matching_verdict0_carry_i_2_n_0,
      S(1) => matching_verdict0_carry_i_3_n_0,
      S(0) => matching_verdict0_carry_i_4_n_0
    );
\matching_verdict0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => matching_verdict0_carry_n_0,
      CO(3) => \matching_verdict0_carry__0_n_0\,
      CO(2) => \matching_verdict0_carry__0_n_1\,
      CO(1) => \matching_verdict0_carry__0_n_2\,
      CO(0) => \matching_verdict0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_matching_verdict0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \matching_verdict0_carry__0_i_1_n_0\,
      S(2) => \matching_verdict0_carry__0_i_2_n_0\,
      S(1) => \matching_verdict0_carry__0_i_3_n_0\,
      S(0) => \matching_verdict0_carry__0_i_4_n_0\
    );
\matching_verdict0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(23),
      I1 => source_frame(23),
      I2 => verdict_source_id(21),
      I3 => source_frame(21),
      I4 => source_frame(22),
      I5 => verdict_source_id(22),
      O => \matching_verdict0_carry__0_i_1_n_0\
    );
\matching_verdict0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => source_frame(20),
      I1 => verdict_source_id(20),
      I2 => verdict_source_id(18),
      I3 => source_frame(18),
      I4 => verdict_source_id(19),
      I5 => source_frame(19),
      O => \matching_verdict0_carry__0_i_2_n_0\
    );
\matching_verdict0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => source_frame(17),
      I1 => verdict_source_id(17),
      I2 => verdict_source_id(16),
      I3 => source_frame(16),
      I4 => verdict_source_id(15),
      I5 => source_frame(15),
      O => \matching_verdict0_carry__0_i_3_n_0\
    );
\matching_verdict0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => source_frame(14),
      I1 => verdict_source_id(14),
      I2 => verdict_source_id(12),
      I3 => source_frame(12),
      I4 => verdict_source_id(13),
      I5 => source_frame(13),
      O => \matching_verdict0_carry__0_i_4_n_0\
    );
\matching_verdict0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \matching_verdict0_carry__0_n_0\,
      CO(3) => \NLW_matching_verdict0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => matching_verdict0,
      CO(1) => \matching_verdict0_carry__1_n_2\,
      CO(0) => \matching_verdict0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_matching_verdict0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \matching_verdict0_carry__1_i_1_n_0\,
      S(1) => \matching_verdict0_carry__1_i_2_n_0\,
      S(0) => \matching_verdict0_carry__1_i_3_n_0\
    );
\matching_verdict0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => source_frame(31),
      I1 => verdict_source_id(31),
      I2 => source_frame(30),
      I3 => verdict_source_id(30),
      O => \matching_verdict0_carry__1_i_1_n_0\
    );
\matching_verdict0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(29),
      I1 => source_frame(29),
      I2 => verdict_source_id(27),
      I3 => source_frame(27),
      I4 => source_frame(28),
      I5 => verdict_source_id(28),
      O => \matching_verdict0_carry__1_i_2_n_0\
    );
\matching_verdict0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => source_frame(26),
      I1 => verdict_source_id(26),
      I2 => verdict_source_id(25),
      I3 => source_frame(25),
      I4 => verdict_source_id(24),
      I5 => source_frame(24),
      O => \matching_verdict0_carry__1_i_3_n_0\
    );
matching_verdict0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(11),
      I1 => source_frame(11),
      I2 => verdict_source_id(9),
      I3 => source_frame(9),
      I4 => source_frame(10),
      I5 => verdict_source_id(10),
      O => matching_verdict0_carry_i_1_n_0
    );
matching_verdict0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => source_frame(8),
      I1 => verdict_source_id(8),
      I2 => verdict_source_id(6),
      I3 => source_frame(6),
      I4 => verdict_source_id(7),
      I5 => source_frame(7),
      O => matching_verdict0_carry_i_2_n_0
    );
matching_verdict0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(5),
      I1 => source_frame(5),
      I2 => verdict_source_id(3),
      I3 => source_frame(3),
      I4 => source_frame(4),
      I5 => verdict_source_id(4),
      O => matching_verdict0_carry_i_3_n_0
    );
matching_verdict0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => verdict_source_id(2),
      I1 => source_frame(2),
      I2 => verdict_source_id(0),
      I3 => source_frame(0),
      I4 => source_frame(1),
      I5 => verdict_source_id(1),
      O => matching_verdict0_carry_i_4_n_0
    );
\packed_bytes[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \packed_bytes[23]_i_3_n_0\,
      I1 => \packed_bytes[15]_i_2_n_0\,
      I2 => \state_reg_n_0_[0]\,
      O => \packed_bytes[15]_i_1_n_0\
    );
\packed_bytes[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => frame_commit,
      I2 => gray_valid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \packed_bytes[7]_i_2_n_0\,
      O => \packed_bytes[15]_i_2_n_0\
    );
\packed_bytes[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(0),
      O => p_2_in(16)
    );
\packed_bytes[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(1),
      O => p_2_in(17)
    );
\packed_bytes[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(2),
      O => p_2_in(18)
    );
\packed_bytes[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(3),
      O => p_2_in(19)
    );
\packed_bytes[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(4),
      O => p_2_in(20)
    );
\packed_bytes[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(5),
      O => p_2_in(21)
    );
\packed_bytes[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(6),
      O => p_2_in(22)
    );
\packed_bytes[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0080"
    )
        port map (
      I0 => \packed_bytes[23]_i_3_n_0\,
      I1 => bram_we_INST_0_i_3_n_0,
      I2 => \count_reg_n_0_[1]\,
      I3 => \packed_bytes[23]_i_4_n_0\,
      I4 => \state_reg_n_0_[0]\,
      O => \packed_bytes[23]_i_1_n_0\
    );
\packed_bytes[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_data(7),
      O => p_2_in(23)
    );
\packed_bytes[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000010001"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \snap_error_code[1]_i_3_n_0\,
      I2 => \snap_source_ticks[63]_i_2_n_0\,
      I3 => cancel,
      I4 => \packed_bytes[23]_i_5_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \packed_bytes[23]_i_3_n_0\
    );
\packed_bytes[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => gray_valid,
      O => \packed_bytes[23]_i_4_n_0\
    );
\packed_bytes[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000BF"
    )
        port map (
      I0 => verdict_good,
      I1 => state2,
      I2 => verdict_valid,
      I3 => gray_eol,
      I4 => \packed_bytes[23]_i_6_n_0\,
      O => \packed_bytes[23]_i_5_n_0\
    );
\packed_bytes[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => gray_valid,
      I2 => gray_sof,
      O => \packed_bytes[23]_i_6_n_0\
    );
\packed_bytes[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000002"
    )
        port map (
      I0 => \packed_bytes[23]_i_3_n_0\,
      I1 => frame_commit,
      I2 => \count_reg_n_0_[1]\,
      I3 => \packed_bytes[23]_i_4_n_0\,
      I4 => \packed_bytes[7]_i_2_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \packed_bytes[7]_i_1_n_0\
    );
\packed_bytes[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFAAAAEAAA"
    )
        port map (
      I0 => gray_sof,
      I1 => x(3),
      I2 => x(7),
      I3 => \x[5]_i_2_n_0\,
      I4 => \packed_bytes[7]_i_3_n_0\,
      I5 => gray_eol,
      O => \packed_bytes[7]_i_2_n_0\
    );
\packed_bytes[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => x(9),
      I1 => x(6),
      I2 => x(4),
      I3 => x(8),
      I4 => x(5),
      O => \packed_bytes[7]_i_3_n_0\
    );
\packed_bytes_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(0),
      Q => bram_wdata(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(18),
      Q => bram_wdata(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(19),
      Q => bram_wdata(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(20),
      Q => bram_wdata(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(21),
      Q => bram_wdata(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(22),
      Q => bram_wdata(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(23),
      Q => bram_wdata(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(16),
      Q => bram_wdata(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(17),
      Q => bram_wdata(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(18),
      Q => bram_wdata(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(19),
      Q => bram_wdata(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(1),
      Q => bram_wdata(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(20),
      Q => bram_wdata(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(21),
      Q => bram_wdata(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(22),
      Q => bram_wdata(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[23]_i_1_n_0\,
      D => p_2_in(23),
      Q => bram_wdata(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(2),
      Q => bram_wdata(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(3),
      Q => bram_wdata(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(4),
      Q => bram_wdata(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(5),
      Q => bram_wdata(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(6),
      Q => bram_wdata(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[7]_i_1_n_0\,
      D => gray_data(7),
      Q => bram_wdata(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(16),
      Q => bram_wdata(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\packed_bytes_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \packed_bytes[15]_i_1_n_0\,
      D => p_2_in(17),
      Q => bram_wdata(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => \^ready\
    );
\request_ticks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(0),
      Q => request_ticks(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(10),
      Q => request_ticks(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(11),
      Q => request_ticks(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(12),
      Q => request_ticks(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(13),
      Q => request_ticks(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(14),
      Q => request_ticks(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(15),
      Q => request_ticks(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(16),
      Q => request_ticks(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(17),
      Q => request_ticks(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(18),
      Q => request_ticks(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(19),
      Q => request_ticks(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(1),
      Q => request_ticks(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(20),
      Q => request_ticks(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(21),
      Q => request_ticks(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(22),
      Q => request_ticks(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(23),
      Q => request_ticks(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(24),
      Q => request_ticks(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(25),
      Q => request_ticks(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(26),
      Q => request_ticks(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(27),
      Q => request_ticks(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(28),
      Q => request_ticks(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(29),
      Q => request_ticks(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(2),
      Q => request_ticks(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(30),
      Q => request_ticks(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(31),
      Q => request_ticks(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(32),
      Q => request_ticks(32),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(33),
      Q => request_ticks(33),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(34),
      Q => request_ticks(34),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(35),
      Q => request_ticks(35),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(36),
      Q => request_ticks(36),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(37),
      Q => request_ticks(37),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(38),
      Q => request_ticks(38),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(39),
      Q => request_ticks(39),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(3),
      Q => request_ticks(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(40),
      Q => request_ticks(40),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(41),
      Q => request_ticks(41),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(42),
      Q => request_ticks(42),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(43),
      Q => request_ticks(43),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(44),
      Q => request_ticks(44),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(45),
      Q => request_ticks(45),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(46),
      Q => request_ticks(46),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(47),
      Q => request_ticks(47),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(48),
      Q => request_ticks(48),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(49),
      Q => request_ticks(49),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(4),
      Q => request_ticks(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(50),
      Q => request_ticks(50),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(51),
      Q => request_ticks(51),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(52),
      Q => request_ticks(52),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(53),
      Q => request_ticks(53),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(54),
      Q => request_ticks(54),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(55),
      Q => request_ticks(55),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(56),
      Q => request_ticks(56),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(57),
      Q => request_ticks(57),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(58),
      Q => request_ticks(58),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(59),
      Q => request_ticks(59),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(5),
      Q => request_ticks(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(60),
      Q => request_ticks(60),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(61),
      Q => request_ticks(61),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(62),
      Q => request_ticks(62),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(63),
      Q => request_ticks(63),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(6),
      Q => request_ticks(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(7),
      Q => request_ticks(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(8),
      Q => request_ticks(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\request_ticks_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => time_ticks(9),
      Q => request_ticks(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
snap_abort_event_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4455445554545455"
    )
        port map (
      I0 => \snap_error_code[1]_i_6_n_0\,
      I1 => \snap_error_code[1]_i_3_n_0\,
      I2 => frame_abort,
      I3 => snap_abort_event_i_2_n_0,
      I4 => timed_out,
      I5 => snap_abort_event_i_3_n_0,
      O => snap_abort_event_i_1_n_0
    );
snap_abort_event_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => \snap_error_code[0]_i_4_n_0\,
      I1 => snap_abort_event_i_4_n_0,
      I2 => verdict_good,
      I3 => state2,
      I4 => verdict_valid,
      O => snap_abort_event_i_2_n_0
    );
snap_abort_event_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      O => snap_abort_event_i_3_n_0
    );
snap_abort_event_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFFF"
    )
        port map (
      I0 => gray_sof,
      I1 => gray_valid,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => gray_eol,
      O => snap_abort_event_i_4_n_0
    );
snap_abort_event_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => snap_abort_event_i_1_n_0,
      Q => snap_abort_event,
      R => '0'
    );
\snap_commit_ticks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(0),
      Q => snap_commit_ticks(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(10),
      Q => snap_commit_ticks(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(11),
      Q => snap_commit_ticks(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(12),
      Q => snap_commit_ticks(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(13),
      Q => snap_commit_ticks(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(14),
      Q => snap_commit_ticks(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(15),
      Q => snap_commit_ticks(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(16),
      Q => snap_commit_ticks(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(17),
      Q => snap_commit_ticks(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(18),
      Q => snap_commit_ticks(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(19),
      Q => snap_commit_ticks(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(1),
      Q => snap_commit_ticks(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(20),
      Q => snap_commit_ticks(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(21),
      Q => snap_commit_ticks(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(22),
      Q => snap_commit_ticks(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(23),
      Q => snap_commit_ticks(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(24),
      Q => snap_commit_ticks(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(25),
      Q => snap_commit_ticks(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(26),
      Q => snap_commit_ticks(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(27),
      Q => snap_commit_ticks(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(28),
      Q => snap_commit_ticks(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(29),
      Q => snap_commit_ticks(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(2),
      Q => snap_commit_ticks(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(30),
      Q => snap_commit_ticks(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(31),
      Q => snap_commit_ticks(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(32),
      Q => snap_commit_ticks(32),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(33),
      Q => snap_commit_ticks(33),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(34),
      Q => snap_commit_ticks(34),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(35),
      Q => snap_commit_ticks(35),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(36),
      Q => snap_commit_ticks(36),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(37),
      Q => snap_commit_ticks(37),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(38),
      Q => snap_commit_ticks(38),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(39),
      Q => snap_commit_ticks(39),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(3),
      Q => snap_commit_ticks(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(40),
      Q => snap_commit_ticks(40),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(41),
      Q => snap_commit_ticks(41),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(42),
      Q => snap_commit_ticks(42),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(43),
      Q => snap_commit_ticks(43),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(44),
      Q => snap_commit_ticks(44),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(45),
      Q => snap_commit_ticks(45),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(46),
      Q => snap_commit_ticks(46),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(47),
      Q => snap_commit_ticks(47),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(48),
      Q => snap_commit_ticks(48),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(49),
      Q => snap_commit_ticks(49),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(4),
      Q => snap_commit_ticks(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(50),
      Q => snap_commit_ticks(50),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(51),
      Q => snap_commit_ticks(51),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(52),
      Q => snap_commit_ticks(52),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(53),
      Q => snap_commit_ticks(53),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(54),
      Q => snap_commit_ticks(54),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(55),
      Q => snap_commit_ticks(55),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(56),
      Q => snap_commit_ticks(56),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(57),
      Q => snap_commit_ticks(57),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(58),
      Q => snap_commit_ticks(58),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(59),
      Q => snap_commit_ticks(59),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(5),
      Q => snap_commit_ticks(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(60),
      Q => snap_commit_ticks(60),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(61),
      Q => snap_commit_ticks(61),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(62),
      Q => snap_commit_ticks(62),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(63),
      Q => snap_commit_ticks(63),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(6),
      Q => snap_commit_ticks(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(7),
      Q => snap_commit_ticks(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(8),
      Q => snap_commit_ticks(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_commit_ticks_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => time_ticks(9),
      Q => snap_commit_ticks(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(0),
      Q => snap_epoch(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(10),
      Q => snap_epoch(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(11),
      Q => snap_epoch(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(12),
      Q => snap_epoch(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(13),
      Q => snap_epoch(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(14),
      Q => snap_epoch(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(15),
      Q => snap_epoch(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(16),
      Q => snap_epoch(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(17),
      Q => snap_epoch(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(18),
      Q => snap_epoch(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(19),
      Q => snap_epoch(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(1),
      Q => snap_epoch(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(20),
      Q => snap_epoch(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(21),
      Q => snap_epoch(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(22),
      Q => snap_epoch(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(23),
      Q => snap_epoch(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(24),
      Q => snap_epoch(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(25),
      Q => snap_epoch(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(26),
      Q => snap_epoch(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(27),
      Q => snap_epoch(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(28),
      Q => snap_epoch(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(29),
      Q => snap_epoch(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(2),
      Q => snap_epoch(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(30),
      Q => snap_epoch(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(31),
      Q => snap_epoch(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(3),
      Q => snap_epoch(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(4),
      Q => snap_epoch(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(5),
      Q => snap_epoch(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(6),
      Q => snap_epoch(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(7),
      Q => snap_epoch(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(8),
      Q => snap_epoch(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_epoch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => epoch(9),
      Q => snap_epoch(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_error_code[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => \snap_error_code[0]_i_2_n_0\,
      I1 => \snap_error_code[0]_i_3_n_0\,
      I2 => \snap_error_code[1]_i_2_n_0\,
      I3 => \^snap_error_code\(0),
      I4 => \snap_error_code[1]_i_4_n_0\,
      O => \snap_error_code[0]_i_1_n_0\
    );
\snap_error_code[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \snap_error_code[1]_i_3_n_0\,
      I1 => aresetn,
      I2 => cancel,
      O => \snap_error_code[0]_i_2_n_0\
    );
\snap_error_code[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F4F044404440"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => timed_out,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => gray_eol,
      I5 => \snap_error_code[0]_i_4_n_0\,
      O => \snap_error_code[0]_i_3_n_0\
    );
\snap_error_code[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => verdict_valid,
      I1 => matching_verdict0,
      I2 => verdict_good,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      O => \snap_error_code[0]_i_4_n_0\
    );
\snap_error_code[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEF0F2"
    )
        port map (
      I0 => \^snap_error_code\(1),
      I1 => \snap_error_code[1]_i_2_n_0\,
      I2 => \snap_error_code[1]_i_3_n_0\,
      I3 => \snap_error_code[1]_i_4_n_0\,
      I4 => \snap_error_code[1]_i_5_n_0\,
      I5 => \snap_error_code[1]_i_6_n_0\,
      O => \snap_error_code[1]_i_1_n_0\
    );
\snap_error_code[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => timed_out,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      O => \snap_error_code[1]_i_10_n_0\
    );
\snap_error_code[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00DD00FD"
    )
        port map (
      I0 => \snap_request_id[31]_i_4_n_0\,
      I1 => \snap_error_code[1]_i_7_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \snap_error_code[1]_i_8_n_0\,
      I5 => \snap_error_code[1]_i_9_n_0\,
      O => \snap_error_code[1]_i_2_n_0\
    );
\snap_error_code[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8A8AA8"
    )
        port map (
      I0 => provenance_fault,
      I1 => request,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \snap_error_code[1]_i_3_n_0\
    );
\snap_error_code[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22E02220"
    )
        port map (
      I0 => frame_abort,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => clear_error,
      O => \snap_error_code[1]_i_4_n_0\
    );
\snap_error_code[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CCCDCC"
    )
        port map (
      I0 => gray_eol,
      I1 => \snap_source_ticks[63]_i_2_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => \snap_error_code[1]_i_5_n_0\
    );
\snap_error_code[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cancel,
      I1 => aresetn,
      O => \snap_error_code[1]_i_6_n_0\
    );
\snap_error_code[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C0800"
    )
        port map (
      I0 => gray_valid,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \packed_bytes[7]_i_2_n_0\,
      I4 => frame_commit,
      O => \snap_error_code[1]_i_7_n_0\
    );
\snap_error_code[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBBB"
    )
        port map (
      I0 => \snap_frame_id[31]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => gray_valid,
      I3 => gray_sof,
      I4 => \state[2]_i_7_n_0\,
      O => \snap_error_code[1]_i_8_n_0\
    );
\snap_error_code[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \snap_error_code[1]_i_10_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => verdict_good,
      I4 => matching_verdict0,
      I5 => verdict_valid,
      O => \snap_error_code[1]_i_9_n_0\
    );
\snap_error_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \snap_error_code[0]_i_1_n_0\,
      Q => \^snap_error_code\(0),
      R => '0'
    );
\snap_error_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \snap_error_code[1]_i_1_n_0\,
      Q => \^snap_error_code\(1),
      R => '0'
    );
\snap_frame_id[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \snap_frame_id[31]_i_2_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \snap_frame_id[31]_i_3_n_0\,
      I5 => \snap_frame_id[31]_i_4_n_0\,
      O => \snap_frame_id[31]_i_1_n_0\
    );
\snap_frame_id[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \snap_error_code[1]_i_3_n_0\,
      I1 => \snap_source_ticks[63]_i_2_n_0\,
      I2 => cancel,
      O => \snap_frame_id[31]_i_2_n_0\
    );
\snap_frame_id[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => gray_valid,
      I1 => state3,
      I2 => commit_seen,
      I3 => frame_commit,
      O => \snap_frame_id[31]_i_3_n_0\
    );
\snap_frame_id[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0E0E0E0E0E0E0"
    )
        port map (
      I0 => commit_seen,
      I1 => frame_commit,
      I2 => verdict_seen,
      I3 => matching_verdict0,
      I4 => verdict_valid,
      I5 => verdict_good,
      O => \snap_frame_id[31]_i_4_n_0\
    );
\snap_frame_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(0),
      Q => snap_frame_id(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(10),
      Q => snap_frame_id(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(11),
      Q => snap_frame_id(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(12),
      Q => snap_frame_id(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(13),
      Q => snap_frame_id(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(14),
      Q => snap_frame_id(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(15),
      Q => snap_frame_id(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(16),
      Q => snap_frame_id(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(17),
      Q => snap_frame_id(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(18),
      Q => snap_frame_id(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(19),
      Q => snap_frame_id(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(1),
      Q => snap_frame_id(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(20),
      Q => snap_frame_id(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(21),
      Q => snap_frame_id(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(22),
      Q => snap_frame_id(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(23),
      Q => snap_frame_id(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(24),
      Q => snap_frame_id(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(25),
      Q => snap_frame_id(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(26),
      Q => snap_frame_id(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(27),
      Q => snap_frame_id(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(28),
      Q => snap_frame_id(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(29),
      Q => snap_frame_id(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(2),
      Q => snap_frame_id(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(30),
      Q => snap_frame_id(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(31),
      Q => snap_frame_id(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(3),
      Q => snap_frame_id(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(4),
      Q => snap_frame_id(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(5),
      Q => snap_frame_id(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(6),
      Q => snap_frame_id(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(7),
      Q => snap_frame_id(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(8),
      Q => snap_frame_id(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_frame_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \snap_frame_id[31]_i_1_n_0\,
      D => source_frame(9),
      Q => snap_frame_id(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
snap_ready_event_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \snap_frame_id[31]_i_3_n_0\,
      I4 => \snap_frame_id[31]_i_4_n_0\,
      I5 => snap_ready_event_i_2_n_0,
      O => snap_ready_event_i_1_n_0
    );
snap_ready_event_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FC8FFFFFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => frame_abort,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \snap_error_code[1]_i_9_n_0\,
      I5 => \snap_error_code[0]_i_2_n_0\,
      O => snap_ready_event_i_2_n_0
    );
snap_ready_event_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => snap_ready_event_i_1_n_0,
      Q => snap_ready_event,
      R => '0'
    );
\snap_request_id[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => epoch(3),
      I1 => epoch(29),
      I2 => epoch(14),
      I3 => epoch(27),
      I4 => \snap_request_id[31]_i_12_n_0\,
      O => \snap_request_id[31]_i_10_n_0\
    );
\snap_request_id[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => epoch(15),
      I1 => epoch(11),
      I2 => epoch(9),
      I3 => epoch(5),
      O => \snap_request_id[31]_i_11_n_0\
    );
\snap_request_id[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => epoch(25),
      I1 => epoch(1),
      I2 => epoch(18),
      I3 => epoch(7),
      O => \snap_request_id[31]_i_12_n_0\
    );
\snap_request_id[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \snap_request_id[31]_i_3_n_0\,
      I1 => \snap_request_id[31]_i_4_n_0\,
      O => request_ticks_1
    );
\snap_request_id[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cancel,
      I1 => \snap_source_ticks[63]_i_2_n_0\,
      I2 => \snap_error_code[1]_i_3_n_0\,
      I3 => \state_reg_n_0_[2]\,
      O => \snap_request_id[31]_i_3_n_0\
    );
\snap_request_id[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFFF"
    )
        port map (
      I0 => \snap_request_id[31]_i_5_n_0\,
      I1 => \snap_request_id[31]_i_6_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => request,
      O => \snap_request_id[31]_i_4_n_0\
    );
\snap_request_id[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \snap_request_id[31]_i_7_n_0\,
      I1 => epoch(20),
      I2 => epoch(16),
      I3 => epoch(13),
      I4 => epoch(8),
      I5 => \snap_request_id[31]_i_8_n_0\,
      O => \snap_request_id[31]_i_5_n_0\
    );
\snap_request_id[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \snap_request_id[31]_i_9_n_0\,
      I1 => epoch(30),
      I2 => epoch(31),
      I3 => epoch(21),
      I4 => epoch(19),
      I5 => \snap_request_id[31]_i_10_n_0\,
      O => \snap_request_id[31]_i_6_n_0\
    );
\snap_request_id[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => epoch(12),
      I1 => epoch(10),
      I2 => epoch(22),
      I3 => epoch(6),
      O => \snap_request_id[31]_i_7_n_0\
    );
\snap_request_id[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => epoch(4),
      I1 => epoch(26),
      I2 => epoch(0),
      I3 => epoch(24),
      I4 => \snap_request_id[31]_i_11_n_0\,
      O => \snap_request_id[31]_i_8_n_0\
    );
\snap_request_id[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => epoch(28),
      I1 => epoch(2),
      I2 => epoch(23),
      I3 => epoch(17),
      O => \snap_request_id[31]_i_9_n_0\
    );
\snap_request_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(0),
      Q => \^snap_request_id\(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(10),
      Q => \^snap_request_id\(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(11),
      Q => \^snap_request_id\(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(12),
      Q => \^snap_request_id\(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(13),
      Q => \^snap_request_id\(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(14),
      Q => \^snap_request_id\(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(15),
      Q => \^snap_request_id\(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(16),
      Q => \^snap_request_id\(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(17),
      Q => \^snap_request_id\(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(18),
      Q => \^snap_request_id\(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(19),
      Q => \^snap_request_id\(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(1),
      Q => \^snap_request_id\(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(20),
      Q => \^snap_request_id\(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(21),
      Q => \^snap_request_id\(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(22),
      Q => \^snap_request_id\(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(23),
      Q => \^snap_request_id\(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(24),
      Q => \^snap_request_id\(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(25),
      Q => \^snap_request_id\(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(26),
      Q => \^snap_request_id\(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(27),
      Q => \^snap_request_id\(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(28),
      Q => \^snap_request_id\(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(29),
      Q => \^snap_request_id\(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(2),
      Q => \^snap_request_id\(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(30),
      Q => \^snap_request_id\(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(31),
      Q => \^snap_request_id\(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(3),
      Q => \^snap_request_id\(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(4),
      Q => \^snap_request_id\(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(5),
      Q => \^snap_request_id\(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(6),
      Q => \^snap_request_id\(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(7),
      Q => \^snap_request_id\(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(8),
      Q => \^snap_request_id\(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_request_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => request_ticks_1,
      D => request_id(9),
      Q => \^snap_request_id\(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \snap_error_code[1]_i_3_n_0\,
      I2 => \snap_source_ticks[63]_i_2_n_0\,
      I3 => cancel,
      I4 => \snap_source_ticks[63]_i_3_n_0\,
      I5 => \snap_source_ticks[63]_i_4_n_0\,
      O => expected_frame_2
    );
\snap_source_ticks[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333FBFBFB33"
    )
        port map (
      I0 => frame_abort,
      I1 => \snap_error_code[0]_i_4_n_0\,
      I2 => timed_out,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \snap_source_ticks[63]_i_2_n_0\
    );
\snap_source_ticks[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040400040404"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => gray_eol,
      I3 => verdict_valid,
      I4 => state2,
      I5 => verdict_good,
      O => \snap_source_ticks[63]_i_3_n_0\
    );
\snap_source_ticks[63]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => gray_sof,
      I1 => gray_valid,
      O => \snap_source_ticks[63]_i_4_n_0\
    );
\snap_source_ticks_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(0),
      Q => snap_source_ticks(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(10),
      Q => snap_source_ticks(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(11),
      Q => snap_source_ticks(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(12),
      Q => snap_source_ticks(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(13),
      Q => snap_source_ticks(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(14),
      Q => snap_source_ticks(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(15),
      Q => snap_source_ticks(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(16),
      Q => snap_source_ticks(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(17),
      Q => snap_source_ticks(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(18),
      Q => snap_source_ticks(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(19),
      Q => snap_source_ticks(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(1),
      Q => snap_source_ticks(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(20),
      Q => snap_source_ticks(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(21),
      Q => snap_source_ticks(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(22),
      Q => snap_source_ticks(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(23),
      Q => snap_source_ticks(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(24),
      Q => snap_source_ticks(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(25),
      Q => snap_source_ticks(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(26),
      Q => snap_source_ticks(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(27),
      Q => snap_source_ticks(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(28),
      Q => snap_source_ticks(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(29),
      Q => snap_source_ticks(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(2),
      Q => snap_source_ticks(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(30),
      Q => snap_source_ticks(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(31),
      Q => snap_source_ticks(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(32),
      Q => snap_source_ticks(32),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(33),
      Q => snap_source_ticks(33),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(34),
      Q => snap_source_ticks(34),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(35),
      Q => snap_source_ticks(35),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(36),
      Q => snap_source_ticks(36),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(37),
      Q => snap_source_ticks(37),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(38),
      Q => snap_source_ticks(38),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(39),
      Q => snap_source_ticks(39),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(3),
      Q => snap_source_ticks(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(40),
      Q => snap_source_ticks(40),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(41),
      Q => snap_source_ticks(41),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(42),
      Q => snap_source_ticks(42),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(43),
      Q => snap_source_ticks(43),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(44),
      Q => snap_source_ticks(44),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(45),
      Q => snap_source_ticks(45),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(46),
      Q => snap_source_ticks(46),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(47),
      Q => snap_source_ticks(47),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(48),
      Q => snap_source_ticks(48),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(49),
      Q => snap_source_ticks(49),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(4),
      Q => snap_source_ticks(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(50),
      Q => snap_source_ticks(50),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(51),
      Q => snap_source_ticks(51),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(52),
      Q => snap_source_ticks(52),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(53),
      Q => snap_source_ticks(53),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(54),
      Q => snap_source_ticks(54),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(55),
      Q => snap_source_ticks(55),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(56),
      Q => snap_source_ticks(56),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(57),
      Q => snap_source_ticks(57),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(58),
      Q => snap_source_ticks(58),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(59),
      Q => snap_source_ticks(59),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(5),
      Q => snap_source_ticks(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(60),
      Q => snap_source_ticks(60),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(61),
      Q => snap_source_ticks(61),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(62),
      Q => snap_source_ticks(62),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(63),
      Q => snap_source_ticks(63),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(6),
      Q => snap_source_ticks(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(7),
      Q => snap_source_ticks(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(8),
      Q => snap_source_ticks(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\snap_source_ticks_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => time_ticks(9),
      Q => snap_source_ticks(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
snap_timeout_event_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008880"
    )
        port map (
      I0 => \snap_error_code[0]_i_2_n_0\,
      I1 => timed_out,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => frame_abort,
      O => snap_timeout_event_i_1_n_0
    );
snap_timeout_event_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => snap_timeout_event_i_1_n_0,
      Q => snap_timeout_event,
      R => '0'
    );
\source_frame_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(0),
      Q => source_frame(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(10),
      Q => source_frame(10),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(11),
      Q => source_frame(11),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(12),
      Q => source_frame(12),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(13),
      Q => source_frame(13),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(14),
      Q => source_frame(14),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(15),
      Q => source_frame(15),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(16),
      Q => source_frame(16),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(17),
      Q => source_frame(17),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(18),
      Q => source_frame(18),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(19),
      Q => source_frame(19),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(1),
      Q => source_frame(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(20),
      Q => source_frame(20),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(21),
      Q => source_frame(21),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(22),
      Q => source_frame(22),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(23),
      Q => source_frame(23),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(24),
      Q => source_frame(24),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(25),
      Q => source_frame(25),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(26),
      Q => source_frame(26),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(27),
      Q => source_frame(27),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(28),
      Q => source_frame(28),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(29),
      Q => source_frame(29),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(2),
      Q => source_frame(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(30),
      Q => source_frame(30),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(31),
      Q => source_frame(31),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(3),
      Q => source_frame(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(4),
      Q => source_frame(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(5),
      Q => source_frame(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(6),
      Q => source_frame(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(7),
      Q => source_frame(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(8),
      Q => source_frame(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\source_frame_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => expected_frame_2,
      D => gray_source_id(9),
      Q => source_frame(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1_inferred__0/i__carry_n_0\,
      CO(2) => \state1_inferred__0/i__carry_n_1\,
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\state1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_inferred__0/i__carry_n_0\,
      CO(3) => \state1_inferred__0/i__carry__0_n_0\,
      CO(2) => \state1_inferred__0/i__carry__0_n_1\,
      CO(1) => \state1_inferred__0/i__carry__0_n_2\,
      CO(0) => \state1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\state1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => state1,
      CO(1) => \state1_inferred__0/i__carry__1_n_2\,
      CO(0) => \state1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__0_n_0\,
      S(1) => \i__carry__1_i_2__0_n_0\,
      S(0) => \i__carry__1_i_3__0_n_0\
    );
\state2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state2_inferred__0/i__carry_n_0\,
      CO(2) => \state2_inferred__0/i__carry_n_1\,
      CO(1) => \state2_inferred__0/i__carry_n_2\,
      CO(0) => \state2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\state2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2_inferred__0/i__carry_n_0\,
      CO(3) => \state2_inferred__0/i__carry__0_n_0\,
      CO(2) => \state2_inferred__0/i__carry__0_n_1\,
      CO(1) => \state2_inferred__0/i__carry__0_n_2\,
      CO(0) => \state2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\state2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_state2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => state2,
      CO(1) => \state2_inferred__0/i__carry__1_n_2\,
      CO(0) => \state2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
state3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state3_carry_n_0,
      CO(2) => state3_carry_n_1,
      CO(1) => state3_carry_n_2,
      CO(0) => state3_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_state3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state3_carry_i_1_n_0,
      S(2) => state3_carry_i_2_n_0,
      S(1) => state3_carry_i_3_n_0,
      S(0) => state3_carry_i_4_n_0
    );
\state3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state3_carry_n_0,
      CO(3) => \state3_carry__0_n_0\,
      CO(2) => \state3_carry__0_n_1\,
      CO(1) => \state3_carry__0_n_2\,
      CO(0) => \state3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_state3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state3_carry__0_i_1_n_0\,
      S(2) => \state3_carry__0_i_2_n_0\,
      S(1) => \state3_carry__0_i_3_n_0\,
      S(0) => \state3_carry__0_i_4_n_0\
    );
\state3_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(21),
      I1 => expected_frame(21),
      I2 => committed_frame_id(22),
      I3 => expected_frame(22),
      I4 => expected_frame(23),
      I5 => committed_frame_id(23),
      O => \state3_carry__0_i_1_n_0\
    );
\state3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(18),
      I1 => expected_frame(18),
      I2 => committed_frame_id(19),
      I3 => expected_frame(19),
      I4 => expected_frame(20),
      I5 => committed_frame_id(20),
      O => \state3_carry__0_i_2_n_0\
    );
\state3_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(15),
      I1 => expected_frame(15),
      I2 => committed_frame_id(16),
      I3 => expected_frame(16),
      I4 => expected_frame(17),
      I5 => committed_frame_id(17),
      O => \state3_carry__0_i_3_n_0\
    );
\state3_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(12),
      I1 => expected_frame(12),
      I2 => committed_frame_id(13),
      I3 => expected_frame(13),
      I4 => expected_frame(14),
      I5 => committed_frame_id(14),
      O => \state3_carry__0_i_4_n_0\
    );
\state3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state3_carry__0_n_0\,
      CO(3) => \NLW_state3_carry__1_CO_UNCONNECTED\(3),
      CO(2) => state3,
      CO(1) => \state3_carry__1_n_2\,
      CO(0) => \state3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_state3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state3_carry__1_i_1_n_0\,
      S(1) => \state3_carry__1_i_2_n_0\,
      S(0) => \state3_carry__1_i_3_n_0\
    );
\state3_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => expected_frame(31),
      I1 => committed_frame_id(31),
      I2 => expected_frame(30),
      I3 => committed_frame_id(30),
      O => \state3_carry__1_i_1_n_0\
    );
\state3_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(27),
      I1 => expected_frame(27),
      I2 => committed_frame_id(28),
      I3 => expected_frame(28),
      I4 => expected_frame(29),
      I5 => committed_frame_id(29),
      O => \state3_carry__1_i_2_n_0\
    );
\state3_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(26),
      I1 => expected_frame(26),
      I2 => committed_frame_id(24),
      I3 => expected_frame(24),
      I4 => expected_frame(25),
      I5 => committed_frame_id(25),
      O => \state3_carry__1_i_3_n_0\
    );
state3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(11),
      I1 => expected_frame(11),
      I2 => committed_frame_id(9),
      I3 => expected_frame(9),
      I4 => expected_frame(10),
      I5 => committed_frame_id(10),
      O => state3_carry_i_1_n_0
    );
state3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(7),
      I1 => expected_frame(7),
      I2 => committed_frame_id(6),
      I3 => expected_frame(6),
      I4 => expected_frame(8),
      I5 => committed_frame_id(8),
      O => state3_carry_i_2_n_0
    );
state3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(3),
      I1 => expected_frame(3),
      I2 => committed_frame_id(4),
      I3 => expected_frame(4),
      I4 => expected_frame(5),
      I5 => committed_frame_id(5),
      O => state3_carry_i_3_n_0
    );
state3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => committed_frame_id(0),
      I1 => expected_frame(0),
      I2 => committed_frame_id(1),
      I3 => expected_frame(1),
      I4 => expected_frame(2),
      I5 => committed_frame_id(2),
      O => state3_carry_i_4_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFECE"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \snap_error_code[1]_i_3_n_0\,
      I2 => state0,
      I3 => \snap_source_ticks[63]_i_2_n_0\,
      I4 => \state[0]_i_2_n_0\,
      I5 => \snap_error_code[1]_i_6_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7F4F"
    )
        port map (
      I0 => \snap_frame_id[31]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => gray_eol,
      I4 => \state[0]_i_3_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => verdict_good,
      I1 => state2,
      I2 => verdict_valid,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E20000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => state0,
      I2 => \state[1]_i_2_n_0\,
      I3 => cancel,
      I4 => aresetn,
      I5 => \snap_error_code[1]_i_3_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400540"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => bram_we_INST_0_i_3_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[2]_i_7_n_0\,
      I5 => \state[1]_i_3_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FFF5DFD5FF55DF5"
    )
        port map (
      I0 => \snap_error_code[0]_i_4_n_0\,
      I1 => timed_out,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => frame_abort,
      I5 => \state_reg_n_0_[0]\,
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \snap_error_code[1]_i_3_n_0\,
      I2 => state0,
      I3 => \state[2]_i_3_n_0\,
      I4 => aresetn,
      I5 => cancel,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \^bram_addr\(1),
      I1 => \^bram_addr\(12),
      I2 => \^bram_addr\(9),
      I3 => \^bram_addr\(11),
      I4 => \state[2]_i_12_n_0\,
      O => \state[2]_i_10_n_0\
    );
\state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FC8"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => frame_abort,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      O => \state[2]_i_11_n_0\
    );
\state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^bram_addr\(0),
      I1 => \^bram_addr\(13),
      I2 => \^bram_addr\(5),
      I3 => \^bram_addr\(3),
      O => \state[2]_i_12_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \snap_request_id[31]_i_4_n_0\,
      I1 => \snap_source_ticks[63]_i_2_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \state[2]_i_5_n_0\,
      I4 => format_error_event_i_3_n_0,
      I5 => \state[2]_i_6_n_0\,
      O => state0
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAAAFAFAEAA"
    )
        port map (
      I0 => \snap_source_ticks[63]_i_2_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state[2]_i_7_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => bram_we_INST_0_i_3_n_0,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \state[2]_i_8_n_0\,
      I1 => \state[2]_i_9_n_0\,
      I2 => \^bram_addr\(6),
      I3 => \^bram_addr\(2),
      I4 => \^bram_addr\(14),
      I5 => \state[2]_i_10_n_0\,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000737F7F7F"
    )
        port map (
      I0 => \snap_frame_id[31]_i_4_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => gray_valid,
      I4 => gray_sof,
      I5 => \state_reg_n_0_[2]\,
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AAA"
    )
        port map (
      I0 => \state[2]_i_11_n_0\,
      I1 => \^ready\,
      I2 => state1,
      I3 => release_frame,
      I4 => \snap_error_code[1]_i_4_n_0\,
      O => \state[2]_i_6_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => gray_eol,
      I1 => verdict_valid,
      I2 => state2,
      I3 => verdict_good,
      O => \state[2]_i_7_n_0\
    );
\state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^bram_addr\(7),
      I1 => \^bram_addr\(10),
      I2 => \^bram_addr\(4),
      I3 => \^bram_addr\(8),
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[0]\,
      O => \state[2]_i_8_n_0\
    );
\state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => frame_commit,
      I3 => gray_valid,
      O => \state[2]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
timed_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timed_out0_carry_n_0,
      CO(2) => timed_out0_carry_n_1,
      CO(1) => timed_out0_carry_n_2,
      CO(0) => timed_out0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => time_ticks(3 downto 0),
      O(3 downto 0) => timed_out0(3 downto 0),
      S(3) => timed_out0_carry_i_1_n_0,
      S(2) => timed_out0_carry_i_2_n_0,
      S(1) => timed_out0_carry_i_3_n_0,
      S(0) => timed_out0_carry_i_4_n_0
    );
\timed_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timed_out0_carry_n_0,
      CO(3) => \timed_out0_carry__0_n_0\,
      CO(2) => \timed_out0_carry__0_n_1\,
      CO(1) => \timed_out0_carry__0_n_2\,
      CO(0) => \timed_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(7 downto 4),
      O(3 downto 0) => timed_out0(7 downto 4),
      S(3) => \timed_out0_carry__0_i_1_n_0\,
      S(2) => \timed_out0_carry__0_i_2_n_0\,
      S(1) => \timed_out0_carry__0_i_3_n_0\,
      S(0) => \timed_out0_carry__0_i_4_n_0\
    );
\timed_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(7),
      I1 => request_ticks(7),
      O => \timed_out0_carry__0_i_1_n_0\
    );
\timed_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(6),
      I1 => request_ticks(6),
      O => \timed_out0_carry__0_i_2_n_0\
    );
\timed_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(5),
      I1 => request_ticks(5),
      O => \timed_out0_carry__0_i_3_n_0\
    );
\timed_out0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(4),
      I1 => request_ticks(4),
      O => \timed_out0_carry__0_i_4_n_0\
    );
\timed_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__0_n_0\,
      CO(3) => \timed_out0_carry__1_n_0\,
      CO(2) => \timed_out0_carry__1_n_1\,
      CO(1) => \timed_out0_carry__1_n_2\,
      CO(0) => \timed_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(11 downto 8),
      O(3 downto 0) => timed_out0(11 downto 8),
      S(3) => \timed_out0_carry__1_i_1_n_0\,
      S(2) => \timed_out0_carry__1_i_2_n_0\,
      S(1) => \timed_out0_carry__1_i_3_n_0\,
      S(0) => \timed_out0_carry__1_i_4_n_0\
    );
\timed_out0_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__9_n_0\,
      CO(3) => \timed_out0_carry__10_n_0\,
      CO(2) => \timed_out0_carry__10_n_1\,
      CO(1) => \timed_out0_carry__10_n_2\,
      CO(0) => \timed_out0_carry__10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(47 downto 44),
      O(3 downto 0) => timed_out0(47 downto 44),
      S(3) => \timed_out0_carry__10_i_1_n_0\,
      S(2) => \timed_out0_carry__10_i_2_n_0\,
      S(1) => \timed_out0_carry__10_i_3_n_0\,
      S(0) => \timed_out0_carry__10_i_4_n_0\
    );
\timed_out0_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(47),
      I1 => request_ticks(47),
      O => \timed_out0_carry__10_i_1_n_0\
    );
\timed_out0_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(46),
      I1 => request_ticks(46),
      O => \timed_out0_carry__10_i_2_n_0\
    );
\timed_out0_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(45),
      I1 => request_ticks(45),
      O => \timed_out0_carry__10_i_3_n_0\
    );
\timed_out0_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(44),
      I1 => request_ticks(44),
      O => \timed_out0_carry__10_i_4_n_0\
    );
\timed_out0_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__10_n_0\,
      CO(3) => \timed_out0_carry__11_n_0\,
      CO(2) => \timed_out0_carry__11_n_1\,
      CO(1) => \timed_out0_carry__11_n_2\,
      CO(0) => \timed_out0_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(51 downto 48),
      O(3 downto 0) => timed_out0(51 downto 48),
      S(3) => \timed_out0_carry__11_i_1_n_0\,
      S(2) => \timed_out0_carry__11_i_2_n_0\,
      S(1) => \timed_out0_carry__11_i_3_n_0\,
      S(0) => \timed_out0_carry__11_i_4_n_0\
    );
\timed_out0_carry__11_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(51),
      I1 => request_ticks(51),
      O => \timed_out0_carry__11_i_1_n_0\
    );
\timed_out0_carry__11_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(50),
      I1 => request_ticks(50),
      O => \timed_out0_carry__11_i_2_n_0\
    );
\timed_out0_carry__11_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(49),
      I1 => request_ticks(49),
      O => \timed_out0_carry__11_i_3_n_0\
    );
\timed_out0_carry__11_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(48),
      I1 => request_ticks(48),
      O => \timed_out0_carry__11_i_4_n_0\
    );
\timed_out0_carry__12\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__11_n_0\,
      CO(3) => \timed_out0_carry__12_n_0\,
      CO(2) => \timed_out0_carry__12_n_1\,
      CO(1) => \timed_out0_carry__12_n_2\,
      CO(0) => \timed_out0_carry__12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(55 downto 52),
      O(3 downto 0) => timed_out0(55 downto 52),
      S(3) => \timed_out0_carry__12_i_1_n_0\,
      S(2) => \timed_out0_carry__12_i_2_n_0\,
      S(1) => \timed_out0_carry__12_i_3_n_0\,
      S(0) => \timed_out0_carry__12_i_4_n_0\
    );
\timed_out0_carry__12_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(55),
      I1 => request_ticks(55),
      O => \timed_out0_carry__12_i_1_n_0\
    );
\timed_out0_carry__12_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(54),
      I1 => request_ticks(54),
      O => \timed_out0_carry__12_i_2_n_0\
    );
\timed_out0_carry__12_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(53),
      I1 => request_ticks(53),
      O => \timed_out0_carry__12_i_3_n_0\
    );
\timed_out0_carry__12_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(52),
      I1 => request_ticks(52),
      O => \timed_out0_carry__12_i_4_n_0\
    );
\timed_out0_carry__13\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__12_n_0\,
      CO(3) => \timed_out0_carry__13_n_0\,
      CO(2) => \timed_out0_carry__13_n_1\,
      CO(1) => \timed_out0_carry__13_n_2\,
      CO(0) => \timed_out0_carry__13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(59 downto 56),
      O(3 downto 0) => timed_out0(59 downto 56),
      S(3) => \timed_out0_carry__13_i_1_n_0\,
      S(2) => \timed_out0_carry__13_i_2_n_0\,
      S(1) => \timed_out0_carry__13_i_3_n_0\,
      S(0) => \timed_out0_carry__13_i_4_n_0\
    );
\timed_out0_carry__13_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(59),
      I1 => request_ticks(59),
      O => \timed_out0_carry__13_i_1_n_0\
    );
\timed_out0_carry__13_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(58),
      I1 => request_ticks(58),
      O => \timed_out0_carry__13_i_2_n_0\
    );
\timed_out0_carry__13_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(57),
      I1 => request_ticks(57),
      O => \timed_out0_carry__13_i_3_n_0\
    );
\timed_out0_carry__13_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(56),
      I1 => request_ticks(56),
      O => \timed_out0_carry__13_i_4_n_0\
    );
\timed_out0_carry__14\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__13_n_0\,
      CO(3) => \NLW_timed_out0_carry__14_CO_UNCONNECTED\(3),
      CO(2) => \timed_out0_carry__14_n_1\,
      CO(1) => \timed_out0_carry__14_n_2\,
      CO(0) => \timed_out0_carry__14_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => time_ticks(62 downto 60),
      O(3 downto 0) => timed_out0(63 downto 60),
      S(3) => \timed_out0_carry__14_i_1_n_0\,
      S(2) => \timed_out0_carry__14_i_2_n_0\,
      S(1) => \timed_out0_carry__14_i_3_n_0\,
      S(0) => \timed_out0_carry__14_i_4_n_0\
    );
\timed_out0_carry__14_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(63),
      I1 => request_ticks(63),
      O => \timed_out0_carry__14_i_1_n_0\
    );
\timed_out0_carry__14_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(62),
      I1 => request_ticks(62),
      O => \timed_out0_carry__14_i_2_n_0\
    );
\timed_out0_carry__14_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(61),
      I1 => request_ticks(61),
      O => \timed_out0_carry__14_i_3_n_0\
    );
\timed_out0_carry__14_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(60),
      I1 => request_ticks(60),
      O => \timed_out0_carry__14_i_4_n_0\
    );
\timed_out0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(11),
      I1 => request_ticks(11),
      O => \timed_out0_carry__1_i_1_n_0\
    );
\timed_out0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(10),
      I1 => request_ticks(10),
      O => \timed_out0_carry__1_i_2_n_0\
    );
\timed_out0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(9),
      I1 => request_ticks(9),
      O => \timed_out0_carry__1_i_3_n_0\
    );
\timed_out0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(8),
      I1 => request_ticks(8),
      O => \timed_out0_carry__1_i_4_n_0\
    );
\timed_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__1_n_0\,
      CO(3) => \timed_out0_carry__2_n_0\,
      CO(2) => \timed_out0_carry__2_n_1\,
      CO(1) => \timed_out0_carry__2_n_2\,
      CO(0) => \timed_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(15 downto 12),
      O(3 downto 0) => timed_out0(15 downto 12),
      S(3) => \timed_out0_carry__2_i_1_n_0\,
      S(2) => \timed_out0_carry__2_i_2_n_0\,
      S(1) => \timed_out0_carry__2_i_3_n_0\,
      S(0) => \timed_out0_carry__2_i_4_n_0\
    );
\timed_out0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(15),
      I1 => request_ticks(15),
      O => \timed_out0_carry__2_i_1_n_0\
    );
\timed_out0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(14),
      I1 => request_ticks(14),
      O => \timed_out0_carry__2_i_2_n_0\
    );
\timed_out0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(13),
      I1 => request_ticks(13),
      O => \timed_out0_carry__2_i_3_n_0\
    );
\timed_out0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(12),
      I1 => request_ticks(12),
      O => \timed_out0_carry__2_i_4_n_0\
    );
\timed_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__2_n_0\,
      CO(3) => \timed_out0_carry__3_n_0\,
      CO(2) => \timed_out0_carry__3_n_1\,
      CO(1) => \timed_out0_carry__3_n_2\,
      CO(0) => \timed_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(19 downto 16),
      O(3 downto 0) => timed_out0(19 downto 16),
      S(3) => \timed_out0_carry__3_i_1_n_0\,
      S(2) => \timed_out0_carry__3_i_2_n_0\,
      S(1) => \timed_out0_carry__3_i_3_n_0\,
      S(0) => \timed_out0_carry__3_i_4_n_0\
    );
\timed_out0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(19),
      I1 => request_ticks(19),
      O => \timed_out0_carry__3_i_1_n_0\
    );
\timed_out0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(18),
      I1 => request_ticks(18),
      O => \timed_out0_carry__3_i_2_n_0\
    );
\timed_out0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(17),
      I1 => request_ticks(17),
      O => \timed_out0_carry__3_i_3_n_0\
    );
\timed_out0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(16),
      I1 => request_ticks(16),
      O => \timed_out0_carry__3_i_4_n_0\
    );
\timed_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__3_n_0\,
      CO(3) => \timed_out0_carry__4_n_0\,
      CO(2) => \timed_out0_carry__4_n_1\,
      CO(1) => \timed_out0_carry__4_n_2\,
      CO(0) => \timed_out0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(23 downto 20),
      O(3 downto 0) => timed_out0(23 downto 20),
      S(3) => \timed_out0_carry__4_i_1_n_0\,
      S(2) => \timed_out0_carry__4_i_2_n_0\,
      S(1) => \timed_out0_carry__4_i_3_n_0\,
      S(0) => \timed_out0_carry__4_i_4_n_0\
    );
\timed_out0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(23),
      I1 => request_ticks(23),
      O => \timed_out0_carry__4_i_1_n_0\
    );
\timed_out0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(22),
      I1 => request_ticks(22),
      O => \timed_out0_carry__4_i_2_n_0\
    );
\timed_out0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(21),
      I1 => request_ticks(21),
      O => \timed_out0_carry__4_i_3_n_0\
    );
\timed_out0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(20),
      I1 => request_ticks(20),
      O => \timed_out0_carry__4_i_4_n_0\
    );
\timed_out0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__4_n_0\,
      CO(3) => \timed_out0_carry__5_n_0\,
      CO(2) => \timed_out0_carry__5_n_1\,
      CO(1) => \timed_out0_carry__5_n_2\,
      CO(0) => \timed_out0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(27 downto 24),
      O(3 downto 0) => timed_out0(27 downto 24),
      S(3) => \timed_out0_carry__5_i_1_n_0\,
      S(2) => \timed_out0_carry__5_i_2_n_0\,
      S(1) => \timed_out0_carry__5_i_3_n_0\,
      S(0) => \timed_out0_carry__5_i_4_n_0\
    );
\timed_out0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(27),
      I1 => request_ticks(27),
      O => \timed_out0_carry__5_i_1_n_0\
    );
\timed_out0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(26),
      I1 => request_ticks(26),
      O => \timed_out0_carry__5_i_2_n_0\
    );
\timed_out0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(25),
      I1 => request_ticks(25),
      O => \timed_out0_carry__5_i_3_n_0\
    );
\timed_out0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(24),
      I1 => request_ticks(24),
      O => \timed_out0_carry__5_i_4_n_0\
    );
\timed_out0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__5_n_0\,
      CO(3) => \timed_out0_carry__6_n_0\,
      CO(2) => \timed_out0_carry__6_n_1\,
      CO(1) => \timed_out0_carry__6_n_2\,
      CO(0) => \timed_out0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(31 downto 28),
      O(3 downto 0) => timed_out0(31 downto 28),
      S(3) => \timed_out0_carry__6_i_1_n_0\,
      S(2) => \timed_out0_carry__6_i_2_n_0\,
      S(1) => \timed_out0_carry__6_i_3_n_0\,
      S(0) => \timed_out0_carry__6_i_4_n_0\
    );
\timed_out0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(31),
      I1 => request_ticks(31),
      O => \timed_out0_carry__6_i_1_n_0\
    );
\timed_out0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(30),
      I1 => request_ticks(30),
      O => \timed_out0_carry__6_i_2_n_0\
    );
\timed_out0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(29),
      I1 => request_ticks(29),
      O => \timed_out0_carry__6_i_3_n_0\
    );
\timed_out0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(28),
      I1 => request_ticks(28),
      O => \timed_out0_carry__6_i_4_n_0\
    );
\timed_out0_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__6_n_0\,
      CO(3) => \timed_out0_carry__7_n_0\,
      CO(2) => \timed_out0_carry__7_n_1\,
      CO(1) => \timed_out0_carry__7_n_2\,
      CO(0) => \timed_out0_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(35 downto 32),
      O(3 downto 0) => timed_out0(35 downto 32),
      S(3) => \timed_out0_carry__7_i_1_n_0\,
      S(2) => \timed_out0_carry__7_i_2_n_0\,
      S(1) => \timed_out0_carry__7_i_3_n_0\,
      S(0) => \timed_out0_carry__7_i_4_n_0\
    );
\timed_out0_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(35),
      I1 => request_ticks(35),
      O => \timed_out0_carry__7_i_1_n_0\
    );
\timed_out0_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(34),
      I1 => request_ticks(34),
      O => \timed_out0_carry__7_i_2_n_0\
    );
\timed_out0_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(33),
      I1 => request_ticks(33),
      O => \timed_out0_carry__7_i_3_n_0\
    );
\timed_out0_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(32),
      I1 => request_ticks(32),
      O => \timed_out0_carry__7_i_4_n_0\
    );
\timed_out0_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__7_n_0\,
      CO(3) => \timed_out0_carry__8_n_0\,
      CO(2) => \timed_out0_carry__8_n_1\,
      CO(1) => \timed_out0_carry__8_n_2\,
      CO(0) => \timed_out0_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(39 downto 36),
      O(3 downto 0) => timed_out0(39 downto 36),
      S(3) => \timed_out0_carry__8_i_1_n_0\,
      S(2) => \timed_out0_carry__8_i_2_n_0\,
      S(1) => \timed_out0_carry__8_i_3_n_0\,
      S(0) => \timed_out0_carry__8_i_4_n_0\
    );
\timed_out0_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(39),
      I1 => request_ticks(39),
      O => \timed_out0_carry__8_i_1_n_0\
    );
\timed_out0_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(38),
      I1 => request_ticks(38),
      O => \timed_out0_carry__8_i_2_n_0\
    );
\timed_out0_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(37),
      I1 => request_ticks(37),
      O => \timed_out0_carry__8_i_3_n_0\
    );
\timed_out0_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(36),
      I1 => request_ticks(36),
      O => \timed_out0_carry__8_i_4_n_0\
    );
\timed_out0_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out0_carry__8_n_0\,
      CO(3) => \timed_out0_carry__9_n_0\,
      CO(2) => \timed_out0_carry__9_n_1\,
      CO(1) => \timed_out0_carry__9_n_2\,
      CO(0) => \timed_out0_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_ticks(43 downto 40),
      O(3 downto 0) => timed_out0(43 downto 40),
      S(3) => \timed_out0_carry__9_i_1_n_0\,
      S(2) => \timed_out0_carry__9_i_2_n_0\,
      S(1) => \timed_out0_carry__9_i_3_n_0\,
      S(0) => \timed_out0_carry__9_i_4_n_0\
    );
\timed_out0_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(43),
      I1 => request_ticks(43),
      O => \timed_out0_carry__9_i_1_n_0\
    );
\timed_out0_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(42),
      I1 => request_ticks(42),
      O => \timed_out0_carry__9_i_2_n_0\
    );
\timed_out0_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(41),
      I1 => request_ticks(41),
      O => \timed_out0_carry__9_i_3_n_0\
    );
\timed_out0_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(40),
      I1 => request_ticks(40),
      O => \timed_out0_carry__9_i_4_n_0\
    );
timed_out0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(3),
      I1 => request_ticks(3),
      O => timed_out0_carry_i_1_n_0
    );
timed_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(2),
      I1 => request_ticks(2),
      O => timed_out0_carry_i_2_n_0
    );
timed_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(1),
      I1 => request_ticks(1),
      O => timed_out0_carry_i_3_n_0
    );
timed_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => time_ticks(0),
      I1 => request_ticks(0),
      O => timed_out0_carry_i_4_n_0
    );
timed_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timed_out_carry_n_0,
      CO(2) => timed_out_carry_n_1,
      CO(1) => timed_out_carry_n_2,
      CO(0) => timed_out_carry_n_3,
      CYINIT => '1',
      DI(3) => timed_out_carry_i_1_n_0,
      DI(2) => timed_out_carry_i_2_n_0,
      DI(1) => timed_out_carry_i_3_n_0,
      DI(0) => timed_out_carry_i_4_n_0,
      O(3 downto 0) => NLW_timed_out_carry_O_UNCONNECTED(3 downto 0),
      S(3) => timed_out_carry_i_5_n_0,
      S(2) => timed_out_carry_i_6_n_0,
      S(1) => timed_out_carry_i_7_n_0,
      S(0) => timed_out_carry_i_8_n_0
    );
\timed_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timed_out_carry_n_0,
      CO(3) => \timed_out_carry__0_n_0\,
      CO(2) => \timed_out_carry__0_n_1\,
      CO(1) => \timed_out_carry__0_n_2\,
      CO(0) => \timed_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \timed_out_carry__0_i_1_n_0\,
      DI(1) => \timed_out_carry__0_i_2_n_0\,
      DI(0) => timed_out0(9),
      O(3 downto 0) => \NLW_timed_out_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__0_i_3_n_0\,
      S(2) => \timed_out_carry__0_i_4_n_0\,
      S(1) => \timed_out_carry__0_i_5_n_0\,
      S(0) => \timed_out_carry__0_i_6_n_0\
    );
\timed_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timed_out0(13),
      I1 => timed_out0(12),
      O => \timed_out_carry__0_i_1_n_0\
    );
\timed_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(11),
      I1 => timed_out0(10),
      O => \timed_out_carry__0_i_2_n_0\
    );
\timed_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timed_out0(15),
      I1 => timed_out0(14),
      O => \timed_out_carry__0_i_3_n_0\
    );
\timed_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(13),
      I1 => timed_out0(12),
      O => \timed_out_carry__0_i_4_n_0\
    );
\timed_out_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(10),
      I1 => timed_out0(11),
      O => \timed_out_carry__0_i_5_n_0\
    );
\timed_out_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(8),
      I1 => timed_out0(9),
      O => \timed_out_carry__0_i_6_n_0\
    );
\timed_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__0_n_0\,
      CO(3) => \timed_out_carry__1_n_0\,
      CO(2) => \timed_out_carry__1_n_1\,
      CO(1) => \timed_out_carry__1_n_2\,
      CO(0) => \timed_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => timed_out0(19),
      DI(0) => timed_out0(17),
      O(3 downto 0) => \NLW_timed_out_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__1_i_1_n_0\,
      S(2) => \timed_out_carry__1_i_2_n_0\,
      S(1) => \timed_out_carry__1_i_3_n_0\,
      S(0) => \timed_out_carry__1_i_4_n_0\
    );
\timed_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timed_out0(23),
      I1 => timed_out0(22),
      O => \timed_out_carry__1_i_1_n_0\
    );
\timed_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timed_out0(21),
      I1 => timed_out0(20),
      O => \timed_out_carry__1_i_2_n_0\
    );
\timed_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(18),
      I1 => timed_out0(19),
      O => \timed_out_carry__1_i_3_n_0\
    );
\timed_out_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(16),
      I1 => timed_out0(17),
      O => \timed_out_carry__1_i_4_n_0\
    );
\timed_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__1_n_0\,
      CO(3) => \timed_out_carry__2_n_0\,
      CO(2) => \timed_out_carry__2_n_1\,
      CO(1) => \timed_out_carry__2_n_2\,
      CO(0) => \timed_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \timed_out_carry__2_i_1_n_0\,
      DI(2) => \timed_out_carry__2_i_2_n_0\,
      DI(1) => timed_out0(27),
      DI(0) => timed_out0(25),
      O(3 downto 0) => \NLW_timed_out_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__2_i_3_n_0\,
      S(2) => \timed_out_carry__2_i_4_n_0\,
      S(1) => \timed_out_carry__2_i_5_n_0\,
      S(0) => \timed_out_carry__2_i_6_n_0\
    );
\timed_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(31),
      I1 => timed_out0(30),
      O => \timed_out_carry__2_i_1_n_0\
    );
\timed_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(29),
      I1 => timed_out0(28),
      O => \timed_out_carry__2_i_2_n_0\
    );
\timed_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(30),
      I1 => timed_out0(31),
      O => \timed_out_carry__2_i_3_n_0\
    );
\timed_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(28),
      I1 => timed_out0(29),
      O => \timed_out_carry__2_i_4_n_0\
    );
\timed_out_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(26),
      I1 => timed_out0(27),
      O => \timed_out_carry__2_i_5_n_0\
    );
\timed_out_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timed_out0(24),
      I1 => timed_out0(25),
      O => \timed_out_carry__2_i_6_n_0\
    );
\timed_out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__2_n_0\,
      CO(3) => \timed_out_carry__3_n_0\,
      CO(2) => \timed_out_carry__3_n_1\,
      CO(1) => \timed_out_carry__3_n_2\,
      CO(0) => \timed_out_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \timed_out_carry__3_i_1_n_0\,
      DI(2) => \timed_out_carry__3_i_2_n_0\,
      DI(1) => \timed_out_carry__3_i_3_n_0\,
      DI(0) => \timed_out_carry__3_i_4_n_0\,
      O(3 downto 0) => \NLW_timed_out_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__3_i_5_n_0\,
      S(2) => \timed_out_carry__3_i_6_n_0\,
      S(1) => \timed_out_carry__3_i_7_n_0\,
      S(0) => \timed_out_carry__3_i_8_n_0\
    );
\timed_out_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(39),
      I1 => timed_out0(38),
      O => \timed_out_carry__3_i_1_n_0\
    );
\timed_out_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(37),
      I1 => timed_out0(36),
      O => \timed_out_carry__3_i_2_n_0\
    );
\timed_out_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(35),
      I1 => timed_out0(34),
      O => \timed_out_carry__3_i_3_n_0\
    );
\timed_out_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(33),
      I1 => timed_out0(32),
      O => \timed_out_carry__3_i_4_n_0\
    );
\timed_out_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(38),
      I1 => timed_out0(39),
      O => \timed_out_carry__3_i_5_n_0\
    );
\timed_out_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(36),
      I1 => timed_out0(37),
      O => \timed_out_carry__3_i_6_n_0\
    );
\timed_out_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(34),
      I1 => timed_out0(35),
      O => \timed_out_carry__3_i_7_n_0\
    );
\timed_out_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(32),
      I1 => timed_out0(33),
      O => \timed_out_carry__3_i_8_n_0\
    );
\timed_out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__3_n_0\,
      CO(3) => \timed_out_carry__4_n_0\,
      CO(2) => \timed_out_carry__4_n_1\,
      CO(1) => \timed_out_carry__4_n_2\,
      CO(0) => \timed_out_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \timed_out_carry__4_i_1_n_0\,
      DI(2) => \timed_out_carry__4_i_2_n_0\,
      DI(1) => \timed_out_carry__4_i_3_n_0\,
      DI(0) => \timed_out_carry__4_i_4_n_0\,
      O(3 downto 0) => \NLW_timed_out_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__4_i_5_n_0\,
      S(2) => \timed_out_carry__4_i_6_n_0\,
      S(1) => \timed_out_carry__4_i_7_n_0\,
      S(0) => \timed_out_carry__4_i_8_n_0\
    );
\timed_out_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(47),
      I1 => timed_out0(46),
      O => \timed_out_carry__4_i_1_n_0\
    );
\timed_out_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(45),
      I1 => timed_out0(44),
      O => \timed_out_carry__4_i_2_n_0\
    );
\timed_out_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(43),
      I1 => timed_out0(42),
      O => \timed_out_carry__4_i_3_n_0\
    );
\timed_out_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(41),
      I1 => timed_out0(40),
      O => \timed_out_carry__4_i_4_n_0\
    );
\timed_out_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(46),
      I1 => timed_out0(47),
      O => \timed_out_carry__4_i_5_n_0\
    );
\timed_out_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(44),
      I1 => timed_out0(45),
      O => \timed_out_carry__4_i_6_n_0\
    );
\timed_out_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(42),
      I1 => timed_out0(43),
      O => \timed_out_carry__4_i_7_n_0\
    );
\timed_out_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(40),
      I1 => timed_out0(41),
      O => \timed_out_carry__4_i_8_n_0\
    );
\timed_out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__4_n_0\,
      CO(3) => \timed_out_carry__5_n_0\,
      CO(2) => \timed_out_carry__5_n_1\,
      CO(1) => \timed_out_carry__5_n_2\,
      CO(0) => \timed_out_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \timed_out_carry__5_i_1_n_0\,
      DI(2) => \timed_out_carry__5_i_2_n_0\,
      DI(1) => \timed_out_carry__5_i_3_n_0\,
      DI(0) => \timed_out_carry__5_i_4_n_0\,
      O(3 downto 0) => \NLW_timed_out_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__5_i_5_n_0\,
      S(2) => \timed_out_carry__5_i_6_n_0\,
      S(1) => \timed_out_carry__5_i_7_n_0\,
      S(0) => \timed_out_carry__5_i_8_n_0\
    );
\timed_out_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(55),
      I1 => timed_out0(54),
      O => \timed_out_carry__5_i_1_n_0\
    );
\timed_out_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(53),
      I1 => timed_out0(52),
      O => \timed_out_carry__5_i_2_n_0\
    );
\timed_out_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(51),
      I1 => timed_out0(50),
      O => \timed_out_carry__5_i_3_n_0\
    );
\timed_out_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(49),
      I1 => timed_out0(48),
      O => \timed_out_carry__5_i_4_n_0\
    );
\timed_out_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(54),
      I1 => timed_out0(55),
      O => \timed_out_carry__5_i_5_n_0\
    );
\timed_out_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(52),
      I1 => timed_out0(53),
      O => \timed_out_carry__5_i_6_n_0\
    );
\timed_out_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(50),
      I1 => timed_out0(51),
      O => \timed_out_carry__5_i_7_n_0\
    );
\timed_out_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(48),
      I1 => timed_out0(49),
      O => \timed_out_carry__5_i_8_n_0\
    );
\timed_out_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timed_out_carry__5_n_0\,
      CO(3) => timed_out,
      CO(2) => \timed_out_carry__6_n_1\,
      CO(1) => \timed_out_carry__6_n_2\,
      CO(0) => \timed_out_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \timed_out_carry__6_i_1_n_0\,
      DI(2) => \timed_out_carry__6_i_2_n_0\,
      DI(1) => \timed_out_carry__6_i_3_n_0\,
      DI(0) => \timed_out_carry__6_i_4_n_0\,
      O(3 downto 0) => \NLW_timed_out_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3) => \timed_out_carry__6_i_5_n_0\,
      S(2) => \timed_out_carry__6_i_6_n_0\,
      S(1) => \timed_out_carry__6_i_7_n_0\,
      S(0) => \timed_out_carry__6_i_8_n_0\
    );
\timed_out_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(63),
      I1 => timed_out0(62),
      O => \timed_out_carry__6_i_1_n_0\
    );
\timed_out_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(61),
      I1 => timed_out0(60),
      O => \timed_out_carry__6_i_2_n_0\
    );
\timed_out_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(59),
      I1 => timed_out0(58),
      O => \timed_out_carry__6_i_3_n_0\
    );
\timed_out_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(57),
      I1 => timed_out0(56),
      O => \timed_out_carry__6_i_4_n_0\
    );
\timed_out_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(62),
      I1 => timed_out0(63),
      O => \timed_out_carry__6_i_5_n_0\
    );
\timed_out_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(60),
      I1 => timed_out0(61),
      O => \timed_out_carry__6_i_6_n_0\
    );
\timed_out_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(58),
      I1 => timed_out0(59),
      O => \timed_out_carry__6_i_7_n_0\
    );
\timed_out_carry__6_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(56),
      I1 => timed_out0(57),
      O => \timed_out_carry__6_i_8_n_0\
    );
timed_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(7),
      I1 => timed_out0(6),
      O => timed_out_carry_i_1_n_0
    );
timed_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(5),
      I1 => timed_out0(4),
      O => timed_out_carry_i_2_n_0
    );
timed_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(3),
      I1 => timed_out0(2),
      O => timed_out_carry_i_3_n_0
    );
timed_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timed_out0(1),
      I1 => timed_out0(0),
      O => timed_out_carry_i_4_n_0
    );
timed_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(6),
      I1 => timed_out0(7),
      O => timed_out_carry_i_5_n_0
    );
timed_out_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(4),
      I1 => timed_out0(5),
      O => timed_out_carry_i_6_n_0
    );
timed_out_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(2),
      I1 => timed_out0(3),
      O => timed_out_carry_i_7_n_0
    );
timed_out_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timed_out0(0),
      I1 => timed_out0(1),
      O => timed_out_carry_i_8_n_0
    );
verdict_seen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAF0EA00000000"
    )
        port map (
      I0 => verdict_seen,
      I1 => \snap_frame_id[31]_i_2_n_0\,
      I2 => verdict_seen_i_2_n_0,
      I3 => expected_frame_2,
      I4 => verdict_seen_i_3_n_0,
      I5 => aresetn,
      O => verdict_seen_i_1_n_0
    );
verdict_seen_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => verdict_good,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => verdict_valid,
      I4 => matching_verdict0,
      O => verdict_seen_i_2_n_0
    );
verdict_seen_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => verdict_valid,
      I1 => state2,
      I2 => verdict_good,
      I3 => snap_abort_event_i_4_n_0,
      O => verdict_seen_i_3_n_0
    );
verdict_seen_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => verdict_seen_i_1_n_0,
      Q => verdict_seen,
      R => '0'
    );
\x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => x(0),
      I1 => gray_eol,
      I2 => \state_reg_n_0_[1]\,
      O => \x[0]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(0),
      I2 => x(1),
      I3 => gray_eol,
      O => \x[1]_i_1_n_0\
    );
\x[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(2),
      I2 => x(1),
      I3 => x(0),
      I4 => gray_eol,
      O => \x[2]_i_1_n_0\
    );
\x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(3),
      I2 => x(0),
      I3 => x(1),
      I4 => x(2),
      I5 => gray_eol,
      O => \x[3]_i_1_n_0\
    );
\x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(4),
      I2 => \x[5]_i_2_n_0\,
      I3 => x(3),
      I4 => gray_eol,
      O => \x[4]_i_1_n_0\
    );
\x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(5),
      I2 => x(4),
      I3 => x(3),
      I4 => \x[5]_i_2_n_0\,
      I5 => gray_eol,
      O => \x[5]_i_1_n_0\
    );
\x[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x(2),
      I1 => x(1),
      I2 => x(0),
      O => \x[5]_i_2_n_0\
    );
\x[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(6),
      I2 => \x[8]_i_2_n_0\,
      I3 => gray_eol,
      O => \x[6]_i_1_n_0\
    );
\x[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008828"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(7),
      I2 => x(6),
      I3 => \x[8]_i_2_n_0\,
      I4 => gray_eol,
      O => \x[7]_i_1_n_0\
    );
\x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000082888888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(8),
      I2 => \x[8]_i_2_n_0\,
      I3 => x(6),
      I4 => x(7),
      I5 => gray_eol,
      O => \x[8]_i_1_n_0\
    );
\x[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x(4),
      I1 => x(3),
      I2 => x(0),
      I3 => x(1),
      I4 => x(2),
      I5 => x(5),
      O => \x[8]_i_2_n_0\
    );
\x[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002888"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => x(9),
      I2 => x(8),
      I3 => \x[9]_i_2_n_0\,
      I4 => gray_eol,
      O => \x[9]_i_1_n_0\
    );
\x[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => x(7),
      I1 => x(6),
      I2 => x(4),
      I3 => x(3),
      I4 => \x[5]_i_2_n_0\,
      I5 => x(5),
      O => \x[9]_i_2_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[0]_i_1_n_0\,
      Q => x(0),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[1]_i_1_n_0\,
      Q => x(1),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[2]_i_1_n_0\,
      Q => x(2),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[3]_i_1_n_0\,
      Q => x(3),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[4]_i_1_n_0\,
      Q => x(4),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[5]_i_1_n_0\,
      Q => x(5),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[6]_i_1_n_0\,
      Q => x(6),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[7]_i_1_n_0\,
      Q => x(7),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[8]_i_1_n_0\,
      Q => x(8),
      R => \snap_request_id[31]_i_1_n_0\
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => x_0,
      D => \x[9]_i_1_n_0\,
      Q => x(9),
      R => \snap_request_id[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd is
  port (
    ready : out STD_LOGIC;
    snap_request_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    snap_frame_id : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_epoch : out STD_LOGIC_VECTOR ( 31 downto 0 );
    snap_source_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    snap_commit_ticks : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    snap_error_code : out STD_LOGIC_VECTOR ( 1 downto 0 );
    busy : out STD_LOGIC;
    bram_we : out STD_LOGIC;
    error : out STD_LOGIC;
    snap_ready_event : out STD_LOGIC;
    snap_abort_event : out STD_LOGIC;
    format_error_event : out STD_LOGIC;
    snap_timeout_event : out STD_LOGIC;
    verdict_good : in STD_LOGIC;
    verdict_valid : in STD_LOGIC;
    gray_valid : in STD_LOGIC;
    frame_commit : in STD_LOGIC;
    gray_eol : in STD_LOGIC;
    time_ticks : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    gray_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    request_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    epoch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gray_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cancel : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    release_frame : in STD_LOGIC;
    frame_abort : in STD_LOGIC;
    provenance_fault : in STD_LOGIC;
    request : in STD_LOGIC;
    clear_error : in STD_LOGIC;
    gray_sof : in STD_LOGIC;
    verdict_source_id : in STD_LOGIC_VECTOR ( 31 downto 0 );
    committed_frame_id : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd : entity is "gray_snapshot_capture_bd";
end facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd;

architecture STRUCTURE of facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd is
begin
u_core: entity work.facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture
     port map (
      aclk => aclk,
      aresetn => aresetn,
      bram_addr(14 downto 0) => bram_addr(14 downto 0),
      bram_wdata(23 downto 0) => bram_wdata(23 downto 0),
      bram_we => bram_we,
      busy => busy,
      cancel => cancel,
      clear_error => clear_error,
      committed_frame_id(31 downto 0) => committed_frame_id(31 downto 0),
      epoch(31 downto 0) => epoch(31 downto 0),
      error => error,
      format_error_event => format_error_event,
      frame_abort => frame_abort,
      frame_commit => frame_commit,
      gray_data(7 downto 0) => gray_data(7 downto 0),
      gray_eol => gray_eol,
      gray_sof => gray_sof,
      gray_source_id(31 downto 0) => gray_source_id(31 downto 0),
      gray_valid => gray_valid,
      provenance_fault => provenance_fault,
      ready => ready,
      release_frame => release_frame,
      request => request,
      request_id(31 downto 0) => request_id(31 downto 0),
      snap_abort_event => snap_abort_event,
      snap_commit_ticks(63 downto 0) => snap_commit_ticks(63 downto 0),
      snap_epoch(31 downto 0) => snap_epoch(31 downto 0),
      snap_error_code(1 downto 0) => snap_error_code(1 downto 0),
      snap_frame_id(31 downto 0) => snap_frame_id(31 downto 0),
      snap_ready_event => snap_ready_event,
      snap_request_id(31 downto 0) => snap_request_id(31 downto 0),
      snap_source_ticks(63 downto 0) => snap_source_ticks(63 downto 0),
      snap_timeout_event => snap_timeout_event,
      time_ticks(63 downto 0) => time_ticks(63 downto 0),
      verdict_good => verdict_good,
      verdict_source_id(31 downto 0) => verdict_source_id(31 downto 0),
      verdict_valid => verdict_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_gray_snapshot_capture_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_gray_snapshot_capture_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_gray_snapshot_capture_0_0 : entity is "facebox_system_gray_snapshot_capture_0_0,gray_snapshot_capture_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_gray_snapshot_capture_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_gray_snapshot_capture_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_gray_snapshot_capture_0_0 : entity is "gray_snapshot_capture_bd,Vivado 2018.3";
end facebox_system_gray_snapshot_capture_0_0;

architecture STRUCTURE of facebox_system_gray_snapshot_capture_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_wdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^gray_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^snap_error_code\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^gray_data\(7 downto 0) <= gray_data(7 downto 0);
  bram_wdata(31 downto 24) <= \^gray_data\(7 downto 0);
  bram_wdata(23 downto 0) <= \^bram_wdata\(23 downto 0);
  snap_error_code(31) <= \<const0>\;
  snap_error_code(30) <= \<const0>\;
  snap_error_code(29) <= \<const0>\;
  snap_error_code(28) <= \<const0>\;
  snap_error_code(27) <= \<const0>\;
  snap_error_code(26) <= \<const0>\;
  snap_error_code(25) <= \<const0>\;
  snap_error_code(24) <= \<const0>\;
  snap_error_code(23) <= \<const0>\;
  snap_error_code(22) <= \<const0>\;
  snap_error_code(21) <= \<const0>\;
  snap_error_code(20) <= \<const0>\;
  snap_error_code(19) <= \<const0>\;
  snap_error_code(18) <= \<const0>\;
  snap_error_code(17) <= \<const0>\;
  snap_error_code(16) <= \<const0>\;
  snap_error_code(15) <= \<const0>\;
  snap_error_code(14) <= \<const0>\;
  snap_error_code(13) <= \<const0>\;
  snap_error_code(12) <= \<const0>\;
  snap_error_code(11) <= \<const0>\;
  snap_error_code(10) <= \<const0>\;
  snap_error_code(9) <= \<const0>\;
  snap_error_code(8) <= \<const0>\;
  snap_error_code(7) <= \<const0>\;
  snap_error_code(6) <= \<const0>\;
  snap_error_code(5) <= \<const0>\;
  snap_error_code(4) <= \<const0>\;
  snap_error_code(3) <= \<const0>\;
  snap_error_code(2) <= \<const0>\;
  snap_error_code(1 downto 0) <= \^snap_error_code\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd
     port map (
      aclk => aclk,
      aresetn => aresetn,
      bram_addr(14 downto 0) => bram_addr(14 downto 0),
      bram_wdata(23 downto 0) => \^bram_wdata\(23 downto 0),
      bram_we => bram_we,
      busy => busy,
      cancel => cancel,
      clear_error => clear_error,
      committed_frame_id(31 downto 0) => committed_frame_id(31 downto 0),
      epoch(31 downto 0) => epoch(31 downto 0),
      error => error,
      format_error_event => format_error_event,
      frame_abort => frame_abort,
      frame_commit => frame_commit,
      gray_data(7 downto 0) => \^gray_data\(7 downto 0),
      gray_eol => gray_eol,
      gray_sof => gray_sof,
      gray_source_id(31 downto 0) => gray_source_id(31 downto 0),
      gray_valid => gray_valid,
      provenance_fault => provenance_fault,
      ready => ready,
      release_frame => release_frame,
      request => request,
      request_id(31 downto 0) => request_id(31 downto 0),
      snap_abort_event => snap_abort_event,
      snap_commit_ticks(63 downto 0) => snap_commit_ticks(63 downto 0),
      snap_epoch(31 downto 0) => snap_epoch(31 downto 0),
      snap_error_code(1 downto 0) => \^snap_error_code\(1 downto 0),
      snap_frame_id(31 downto 0) => snap_frame_id(31 downto 0),
      snap_ready_event => snap_ready_event,
      snap_request_id(31 downto 0) => snap_request_id(31 downto 0),
      snap_source_ticks(63 downto 0) => snap_source_ticks(63 downto 0),
      snap_timeout_event => snap_timeout_event,
      time_ticks(63 downto 0) => time_ticks(63 downto 0),
      verdict_good => verdict_good,
      verdict_source_id(31 downto 0) => verdict_source_id(31 downto 0),
      verdict_valid => verdict_valid
    );
end STRUCTURE;
