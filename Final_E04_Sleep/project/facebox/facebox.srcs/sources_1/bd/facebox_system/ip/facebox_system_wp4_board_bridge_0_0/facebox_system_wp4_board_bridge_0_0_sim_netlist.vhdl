-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:18:54 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_wp4_board_bridge_0_0/facebox_system_wp4_board_bridge_0_0_sim_netlist.vhdl
-- Design      : facebox_system_wp4_board_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_lbp_core is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[2]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sample_code_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_lbp_core : entity is "lbp_core";
end facebox_system_wp4_board_bridge_0_0_lbp_core;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_lbp_core is
  signal lbp_code0_carry_n_1 : STD_LOGIC;
  signal lbp_code0_carry_n_2 : STD_LOGIC;
  signal lbp_code0_carry_n_3 : STD_LOGIC;
  signal \lbp_code0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \lbp_code0_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \lbp_code0_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \lbp_code0_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal NLW_lbp_code0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lbp_code0_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
lbp_code0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(0),
      CO(2) => lbp_code0_carry_n_1,
      CO(1) => lbp_code0_carry_n_2,
      CO(0) => lbp_code0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_lbp_code0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\lbp_code0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(1),
      CO(2) => \lbp_code0_inferred__0/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__0/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[1]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[1]_0\(3 downto 0)
    );
\lbp_code0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(2),
      CO(2) => \lbp_code0_inferred__1/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__1/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[2]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[2]_0\(3 downto 0)
    );
\lbp_code0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(3),
      CO(2) => \lbp_code0_inferred__2/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__2/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[3]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[3]_0\(3 downto 0)
    );
\lbp_code0_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(4),
      CO(2) => \lbp_code0_inferred__3/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__3/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[4]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[4]_0\(3 downto 0)
    );
\lbp_code0_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(5),
      CO(2) => \lbp_code0_inferred__4/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__4/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[5]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[5]_0\(3 downto 0)
    );
\lbp_code0_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(6),
      CO(2) => \lbp_code0_inferred__5/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__5/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[6]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[6]_0\(3 downto 0)
    );
\lbp_code0_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D(7),
      CO(2) => \lbp_code0_inferred__6/i__carry_n_1\,
      CO(1) => \lbp_code0_inferred__6/i__carry_n_2\,
      CO(0) => \lbp_code0_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \sample_code_reg[7]\(3 downto 0),
      O(3 downto 0) => \NLW_lbp_code0_inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \sample_code_reg[7]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_lbp_histogram is
  port (
    clear_done : out STD_LOGIC;
    win_valid_reg : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    hist_done : out STD_LOGIC;
    clearing_reg_0 : out STD_LOGIC;
    flag_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hist_total_reg[0]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[15]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    control_clear_d_reg : out STD_LOGIC;
    \p_0_in7_out__0\ : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clearing_reg_1 : out STD_LOGIC;
    sample_counted_reg_0 : out STD_LOGIC;
    control_7_sp_1 : out STD_LOGIC;
    hist_mem_reg_1_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    \base_addr_reg[0]_0\ : in STD_LOGIC;
    win_last : in STD_LOGIC;
    hist_done_reg_0 : in STD_LOGIC;
    hist_total_error_reg_0 : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \bucket_reg_reg[0]_0\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    win_valid : in STD_LOGIC;
    resize_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sample_x_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_lbp_histogram : entity is "lbp_histogram";
end facebox_system_wp4_board_bridge_0_0_lbp_histogram;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_lbp_histogram is
  signal \^s\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__0_n_4\ : STD_LOGIC;
  signal \_carry__0_n_5\ : STD_LOGIC;
  signal \_carry__0_n_6\ : STD_LOGIC;
  signal \_carry__0_n_7\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__1_n_4\ : STD_LOGIC;
  signal \_carry__1_n_5\ : STD_LOGIC;
  signal \_carry__1_n_6\ : STD_LOGIC;
  signal \_carry__1_n_7\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry__2_n_5\ : STD_LOGIC;
  signal \_carry__2_n_6\ : STD_LOGIC;
  signal \_carry__2_n_7\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_carry_n_4\ : STD_LOGIC;
  signal \_carry_n_5\ : STD_LOGIC;
  signal \_carry_n_6\ : STD_LOGIC;
  signal \_carry_n_7\ : STD_LOGIC;
  signal \^aresetn_0\ : STD_LOGIC;
  signal base_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal base_addr_1 : STD_LOGIC;
  signal bucket_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \bucket_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \bucket_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \bucket_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \bucket_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \bucket_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \bucket_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \bucket_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \bucket_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \bucket_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \bucket_reg_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \cell_x_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cell_x_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cell_x_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \cell_x_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \cell_x_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \cell_x_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \cell_x_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cell_x_reg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \cell_y_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cell_y_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cell_y_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \cell_y_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \cell_y_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \cell_y_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \cell_y_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cell_y_reg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal clear_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \clear_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_4\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_5\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_6\ : STD_LOGIC;
  signal \clear_addr0_carry__0_n_7\ : STD_LOGIC;
  signal \clear_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \clear_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \clear_addr0_carry__1_n_5\ : STD_LOGIC;
  signal \clear_addr0_carry__1_n_6\ : STD_LOGIC;
  signal \clear_addr0_carry__1_n_7\ : STD_LOGIC;
  signal clear_addr0_carry_n_0 : STD_LOGIC;
  signal clear_addr0_carry_n_1 : STD_LOGIC;
  signal clear_addr0_carry_n_2 : STD_LOGIC;
  signal clear_addr0_carry_n_3 : STD_LOGIC;
  signal clear_addr0_carry_n_4 : STD_LOGIC;
  signal clear_addr0_carry_n_5 : STD_LOGIC;
  signal clear_addr0_carry_n_6 : STD_LOGIC;
  signal clear_addr0_carry_n_7 : STD_LOGIC;
  signal \clear_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \clear_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \clear_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \clear_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \clear_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal clear_done_i_1_n_0 : STD_LOGIC;
  signal clearing_i_1_n_0 : STD_LOGIC;
  signal \^clearing_reg_0\ : STD_LOGIC;
  signal control_7_sn_1 : STD_LOGIC;
  signal \^control_clear_d_reg\ : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal hist_done_i_1_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_13_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_14_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_15_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_16_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_17_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_18_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_19_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_20_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_21_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_22_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_23_n_0 : STD_LOGIC;
  signal hist_mem_reg_0_i_24_n_0 : STD_LOGIC;
  signal \hist_total[11]_i_2_n_0\ : STD_LOGIC;
  signal \hist_total[11]_i_3_n_0\ : STD_LOGIC;
  signal \hist_total[11]_i_4_n_0\ : STD_LOGIC;
  signal \hist_total[11]_i_5_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_1_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_4_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_5_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_6_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_7_n_0\ : STD_LOGIC;
  signal \hist_total[15]_i_8_n_0\ : STD_LOGIC;
  signal \hist_total[3]_i_2_n_0\ : STD_LOGIC;
  signal \hist_total[3]_i_3_n_0\ : STD_LOGIC;
  signal \hist_total[3]_i_4_n_0\ : STD_LOGIC;
  signal \hist_total[3]_i_5_n_0\ : STD_LOGIC;
  signal \hist_total[3]_i_6_n_0\ : STD_LOGIC;
  signal \hist_total[7]_i_2_n_0\ : STD_LOGIC;
  signal \hist_total[7]_i_3_n_0\ : STD_LOGIC;
  signal \hist_total[7]_i_4_n_0\ : STD_LOGIC;
  signal \hist_total[7]_i_5_n_0\ : STD_LOGIC;
  signal hist_total_error1 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \hist_total_error1_carry__0_n_0\ : STD_LOGIC;
  signal \hist_total_error1_carry__0_n_1\ : STD_LOGIC;
  signal \hist_total_error1_carry__0_n_2\ : STD_LOGIC;
  signal \hist_total_error1_carry__0_n_3\ : STD_LOGIC;
  signal \hist_total_error1_carry__1_n_0\ : STD_LOGIC;
  signal \hist_total_error1_carry__1_n_1\ : STD_LOGIC;
  signal \hist_total_error1_carry__1_n_2\ : STD_LOGIC;
  signal \hist_total_error1_carry__1_n_3\ : STD_LOGIC;
  signal \hist_total_error1_carry__2_n_2\ : STD_LOGIC;
  signal \hist_total_error1_carry__2_n_3\ : STD_LOGIC;
  signal hist_total_error1_carry_n_0 : STD_LOGIC;
  signal hist_total_error1_carry_n_1 : STD_LOGIC;
  signal hist_total_error1_carry_n_2 : STD_LOGIC;
  signal hist_total_error1_carry_n_3 : STD_LOGIC;
  signal hist_total_error_i_10_n_0 : STD_LOGIC;
  signal hist_total_error_i_11_n_0 : STD_LOGIC;
  signal hist_total_error_i_4_n_0 : STD_LOGIC;
  signal hist_total_error_i_5_n_0 : STD_LOGIC;
  signal hist_total_error_i_6_n_0 : STD_LOGIC;
  signal hist_total_error_i_7_n_0 : STD_LOGIC;
  signal hist_total_error_i_8_n_0 : STD_LOGIC;
  signal hist_total_error_i_9_n_0 : STD_LOGIC;
  signal \^hist_total_reg[0]_0\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \hist_total_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \^hist_total_reg[12]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^hist_total_reg[15]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \hist_total_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \hist_total_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \hist_total_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \hist_total_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^hist_total_reg[8]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \input_counted__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal ram_a_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ram_a_wdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ram_a_we : STD_LOGIC;
  signal ram_read_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rmw_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rmw_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rmw_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \rmw_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \rmw_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \rmw_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \rmw_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal rmw_addr_0 : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \rmw_addr_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \rmw_addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \rmw_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal sample_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sample_counted_i_2_n_0 : STD_LOGIC;
  signal sample_counted_i_3_n_0 : STD_LOGIC;
  signal sample_counted_i_4_n_0 : STD_LOGIC;
  signal sample_counted_i_5_n_0 : STD_LOGIC;
  signal sample_counted_reg_n_0 : STD_LOGIC;
  signal sample_last_reg_n_0 : STD_LOGIC;
  signal sample_x : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sample_y : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^win_valid_reg\ : STD_LOGIC;
  signal \NLW__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clear_addr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clear_addr0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_hist_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_hist_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_hist_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_hist_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_hist_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_hist_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_hist_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_hist_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_hist_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_hist_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hist_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hist_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_hist_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_hist_total_error1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_hist_total_error1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hist_total_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rmw_addr_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of clear_addr0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \clear_addr0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \clear_addr0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clear_addr[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of clearing_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_status[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_status[10]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_status[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_status[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_status[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_status[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_status[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_status[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_status[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_status[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_status[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_status[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_status[6]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_status[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_status[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_status[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair1";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of hist_mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of hist_mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of hist_mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of hist_mem_reg_0 : label is 60416;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of hist_mem_reg_0 : label is "hist_mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of hist_mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of hist_mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of hist_mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of hist_mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of hist_mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of hist_mem_reg_0 : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of hist_mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of hist_mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of hist_mem_reg_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of hist_mem_reg_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of hist_mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of hist_mem_reg_1 : label is 60416;
  attribute RTL_RAM_NAME of hist_mem_reg_1 : label is "hist_mem";
  attribute bram_addr_begin of hist_mem_reg_1 : label is 0;
  attribute bram_addr_end of hist_mem_reg_1 : label is 4095;
  attribute bram_slice_begin of hist_mem_reg_1 : label is 9;
  attribute bram_slice_end of hist_mem_reg_1 : label is 15;
  attribute ram_addr_begin of hist_mem_reg_1 : label is 0;
  attribute ram_addr_end of hist_mem_reg_1 : label is 4095;
  attribute ram_slice_begin of hist_mem_reg_1 : label is 9;
  attribute ram_slice_end of hist_mem_reg_1 : label is 15;
  attribute SOFT_HLUTNM of \hist_total[15]_i_4\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS of hist_total_error1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_error1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_error1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_error1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of hist_total_error_i_3 : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_reg[15]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \hist_total_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of protocol_error_sticky_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[3]_i_6\ : label is "soft_lutpair0";
begin
  S(3 downto 0) <= \^s\(3 downto 0);
  aresetn_0 <= \^aresetn_0\;
  clearing_reg_0 <= \^clearing_reg_0\;
  control_7_sp_1 <= control_7_sn_1;
  control_clear_d_reg <= \^control_clear_d_reg\;
  \hist_total_reg[0]_0\ <= \^hist_total_reg[0]_0\;
  \hist_total_reg[12]_0\(3 downto 0) <= \^hist_total_reg[12]_0\(3 downto 0);
  \hist_total_reg[15]_0\(2 downto 0) <= \^hist_total_reg[15]_0\(2 downto 0);
  \hist_total_reg[8]_0\(3 downto 0) <= \^hist_total_reg[8]_0\(3 downto 0);
  \state_reg[2]_0\ <= \^state_reg[2]_0\;
  win_valid_reg <= \^win_valid_reg\;
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => ram_read_data(0),
      DI(3 downto 0) => B"0000",
      O(3) => \_carry_n_4\,
      O(2) => \_carry_n_5\,
      O(1) => \_carry_n_6\,
      O(0) => \_carry_n_7\,
      S(3 downto 0) => ram_read_data(4 downto 1)
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_carry__0_n_4\,
      O(2) => \_carry__0_n_5\,
      O(1) => \_carry__0_n_6\,
      O(0) => \_carry__0_n_7\,
      S(3 downto 0) => ram_read_data(8 downto 5)
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \_carry__1_n_4\,
      O(2) => \_carry__1_n_5\,
      O(1) => \_carry__1_n_6\,
      O(0) => \_carry__1_n_7\,
      S(3 downto 0) => ram_read_data(12 downto 9)
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3 downto 2) => \NLW__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW__carry__2_O_UNCONNECTED\(3),
      O(2) => \_carry__2_n_5\,
      O(1) => \_carry__2_n_6\,
      O(0) => \_carry__2_n_7\,
      S(3) => '0',
      S(2 downto 0) => ram_read_data(15 downto 13)
    );
\base_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010001010"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \bucket_reg_reg[0]_0\,
      I4 => control(12),
      I5 => \^clearing_reg_0\,
      O => base_addr_1
    );
\base_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => sel(0),
      Q => base_addr(0)
    );
\base_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \^aresetn_0\,
      D => g0_b10_n_0,
      Q => base_addr(10)
    );
\base_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \^aresetn_0\,
      D => g0_b11_n_0,
      Q => base_addr(11)
    );
\base_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b1_n_0,
      Q => base_addr(1)
    );
\base_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b2_n_0,
      Q => base_addr(2)
    );
\base_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b3_n_0,
      Q => base_addr(3)
    );
\base_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b4_n_0,
      Q => base_addr(4)
    );
\base_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b5_n_0,
      Q => base_addr(5)
    );
\base_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b6_n_0,
      Q => base_addr(6)
    );
\base_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \base_addr_reg[0]_0\,
      D => g0_b7_n_0,
      Q => base_addr(7)
    );
\base_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \^aresetn_0\,
      D => g0_b8_n_0,
      Q => base_addr(8)
    );
\base_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => base_addr_1,
      CLR => \^aresetn_0\,
      D => g0_b9_n_0,
      Q => base_addr(9)
    );
\bucket_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000009412"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(4),
      I3 => sample_code(5),
      I4 => sample_code(2),
      I5 => sample_code(1),
      O => \bucket_reg[0]_i_4_n_0\
    );
\bucket_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080884040000000B"
    )
        port map (
      I0 => sample_code(1),
      I1 => sample_code(7),
      I2 => sample_code(4),
      I3 => sample_code(5),
      I4 => sample_code(2),
      I5 => sample_code(6),
      O => \bucket_reg[0]_i_5_n_0\
    );
\bucket_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010011000C00001"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(5),
      I5 => sample_code(2),
      O => \bucket_reg[0]_i_6_n_0\
    );
\bucket_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0808000B4000000"
    )
        port map (
      I0 => sample_code(5),
      I1 => sample_code(7),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(2),
      I5 => sample_code(6),
      O => \bucket_reg[0]_i_7_n_0\
    );
\bucket_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFEFEFFF4"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(2),
      I5 => sample_code(5),
      O => \bucket_reg[1]_i_4_n_0\
    );
\bucket_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF5FFF7DFDFFFFFE"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(5),
      I3 => sample_code(2),
      I4 => sample_code(1),
      I5 => sample_code(6),
      O => \bucket_reg[1]_i_5_n_0\
    );
\bucket_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFEEEFBFFFEFF"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(1),
      I3 => sample_code(4),
      I4 => sample_code(5),
      I5 => sample_code(2),
      O => \bucket_reg[1]_i_6_n_0\
    );
\bucket_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F7F77FFFF3FFFFF"
    )
        port map (
      I0 => sample_code(6),
      I1 => sample_code(7),
      I2 => sample_code(1),
      I3 => sample_code(5),
      I4 => sample_code(2),
      I5 => sample_code(4),
      O => \bucket_reg[1]_i_7_n_0\
    );
\bucket_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000051032"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(1),
      I2 => sample_code(6),
      I3 => sample_code(5),
      I4 => sample_code(2),
      I5 => sample_code(4),
      O => \bucket_reg[2]_i_4_n_0\
    );
\bucket_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222000201020002"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(5),
      I3 => sample_code(2),
      I4 => sample_code(1),
      I5 => sample_code(6),
      O => \bucket_reg[2]_i_5_n_0\
    );
\bucket_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000045010001"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(1),
      I2 => sample_code(5),
      I3 => sample_code(2),
      I4 => sample_code(4),
      I5 => sample_code(6),
      O => \bucket_reg[2]_i_6_n_0\
    );
\bucket_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4580808080000000"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(5),
      I2 => sample_code(6),
      I3 => sample_code(2),
      I4 => sample_code(1),
      I5 => sample_code(4),
      O => \bucket_reg[2]_i_7_n_0\
    );
\bucket_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFEFEFEF2"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(2),
      I5 => sample_code(5),
      O => \bucket_reg[3]_i_4_n_0\
    );
\bucket_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77DFDDFFFFCFEE"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(1),
      I3 => sample_code(2),
      I4 => sample_code(5),
      I5 => sample_code(6),
      O => \bucket_reg[3]_i_5_n_0\
    );
\bucket_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFFFFFAEFFFFFE"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(1),
      I2 => sample_code(2),
      I3 => sample_code(5),
      I4 => sample_code(4),
      I5 => sample_code(6),
      O => \bucket_reg[3]_i_6_n_0\
    );
\bucket_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF77FF3F5FFFFF"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(2),
      I3 => sample_code(5),
      I4 => sample_code(1),
      I5 => sample_code(6),
      O => \bucket_reg[3]_i_7_n_0\
    );
\bucket_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF75FEFEFEEE"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(5),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(2),
      I5 => sample_code(6),
      O => \bucket_reg[4]_i_4_n_0\
    );
\bucket_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDFDDFFFFCFEE"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(1),
      I3 => sample_code(2),
      I4 => sample_code(5),
      I5 => sample_code(6),
      O => \bucket_reg[4]_i_5_n_0\
    );
\bucket_reg[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => sample_code(6),
      I1 => sample_code(2),
      I2 => sample_code(1),
      I3 => sample_code(5),
      I4 => sample_code(7),
      O => \bucket_reg[4]_i_6_n_0\
    );
\bucket_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3FFFFF7F0FFFFF"
    )
        port map (
      I0 => sample_code(4),
      I1 => sample_code(7),
      I2 => sample_code(1),
      I3 => sample_code(5),
      I4 => sample_code(2),
      I5 => sample_code(6),
      O => \bucket_reg[4]_i_7_n_0\
    );
\bucket_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000510000"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => control(12),
      I2 => \bucket_reg_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \bucket_reg[5]_i_1_n_0\
    );
\bucket_reg[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFEFEFEE8"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(6),
      I2 => sample_code(4),
      I3 => sample_code(1),
      I4 => sample_code(2),
      I5 => sample_code(5),
      O => \bucket_reg[5]_i_5_n_0\
    );
\bucket_reg[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFCC"
    )
        port map (
      I0 => sample_code(7),
      I1 => sample_code(4),
      I2 => sample_code(1),
      I3 => sample_code(2),
      I4 => sample_code(5),
      I5 => sample_code(6),
      O => \bucket_reg[5]_i_6_n_0\
    );
\bucket_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5DFF0CAE"
    )
        port map (
      I0 => sample_code(5),
      I1 => sample_code(1),
      I2 => sample_code(2),
      I3 => sample_code(4),
      I4 => sample_code(6),
      I5 => sample_code(7),
      O => \bucket_reg[5]_i_7_n_0\
    );
\bucket_reg[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFF5FDF"
    )
        port map (
      I0 => sample_code(1),
      I1 => sample_code(5),
      I2 => sample_code(2),
      I3 => sample_code(4),
      I4 => sample_code(6),
      I5 => sample_code(7),
      O => \bucket_reg[5]_i_8_n_0\
    );
\bucket_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[0]_i_1_n_0\,
      Q => bucket_reg(0)
    );
\bucket_reg_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[0]_i_2_n_0\,
      I1 => \bucket_reg_reg[0]_i_3_n_0\,
      O => \bucket_reg_reg[0]_i_1_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[0]_i_4_n_0\,
      I1 => \bucket_reg[0]_i_5_n_0\,
      O => \bucket_reg_reg[0]_i_2_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[0]_i_6_n_0\,
      I1 => \bucket_reg[0]_i_7_n_0\,
      O => \bucket_reg_reg[0]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[1]_i_1_n_0\,
      Q => bucket_reg(1)
    );
\bucket_reg_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[1]_i_2_n_0\,
      I1 => \bucket_reg_reg[1]_i_3_n_0\,
      O => \bucket_reg_reg[1]_i_1_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[1]_i_4_n_0\,
      I1 => \bucket_reg[1]_i_5_n_0\,
      O => \bucket_reg_reg[1]_i_2_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[1]_i_6_n_0\,
      I1 => \bucket_reg[1]_i_7_n_0\,
      O => \bucket_reg_reg[1]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[2]_i_1_n_0\,
      Q => bucket_reg(2)
    );
\bucket_reg_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[2]_i_2_n_0\,
      I1 => \bucket_reg_reg[2]_i_3_n_0\,
      O => \bucket_reg_reg[2]_i_1_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[2]_i_4_n_0\,
      I1 => \bucket_reg[2]_i_5_n_0\,
      O => \bucket_reg_reg[2]_i_2_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[2]_i_6_n_0\,
      I1 => \bucket_reg[2]_i_7_n_0\,
      O => \bucket_reg_reg[2]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[3]_i_1_n_0\,
      Q => bucket_reg(3)
    );
\bucket_reg_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[3]_i_2_n_0\,
      I1 => \bucket_reg_reg[3]_i_3_n_0\,
      O => \bucket_reg_reg[3]_i_1_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[3]_i_4_n_0\,
      I1 => \bucket_reg[3]_i_5_n_0\,
      O => \bucket_reg_reg[3]_i_2_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[3]_i_6_n_0\,
      I1 => \bucket_reg[3]_i_7_n_0\,
      O => \bucket_reg_reg[3]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[4]_i_1_n_0\,
      Q => bucket_reg(4)
    );
\bucket_reg_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[4]_i_2_n_0\,
      I1 => \bucket_reg_reg[4]_i_3_n_0\,
      O => \bucket_reg_reg[4]_i_1_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[4]_i_4_n_0\,
      I1 => \bucket_reg[4]_i_5_n_0\,
      O => \bucket_reg_reg[4]_i_2_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[4]_i_6_n_0\,
      I1 => \bucket_reg[4]_i_7_n_0\,
      O => \bucket_reg_reg[4]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \bucket_reg_reg[5]_i_2_n_0\,
      Q => bucket_reg(5)
    );
\bucket_reg_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \bucket_reg_reg[5]_i_3_n_0\,
      I1 => \bucket_reg_reg[5]_i_4_n_0\,
      O => \bucket_reg_reg[5]_i_2_n_0\,
      S => sample_code(3)
    );
\bucket_reg_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[5]_i_5_n_0\,
      I1 => \bucket_reg[5]_i_6_n_0\,
      O => \bucket_reg_reg[5]_i_3_n_0\,
      S => sample_code(0)
    );
\bucket_reg_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bucket_reg[5]_i_7_n_0\,
      I1 => \bucket_reg[5]_i_8_n_0\,
      O => \bucket_reg_reg[5]_i_4_n_0\,
      S => sample_code(0)
    );
\cell_x_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFC00000004"
    )
        port map (
      I0 => sample_x(0),
      I1 => sample_x(5),
      I2 => sample_x(1),
      I3 => sample_x(2),
      I4 => sample_x(3),
      I5 => sample_x(4),
      O => \cell_x_reg[0]_i_2_n_0\
    );
\cell_x_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFF0F0F0BAF0F0F0"
    )
        port map (
      I0 => sample_x(5),
      I1 => sample_x(0),
      I2 => sample_x(4),
      I3 => sample_x(2),
      I4 => sample_x(3),
      I5 => sample_x(1),
      O => \cell_x_reg[0]_i_3_n_0\
    );
\cell_x_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE00000000"
    )
        port map (
      I0 => sample_x(0),
      I1 => sample_x(3),
      I2 => sample_x(2),
      I3 => sample_x(1),
      I4 => sample_x(4),
      I5 => sample_x(5),
      O => \cell_x_reg[1]_i_2_n_0\
    );
\cell_x_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0008000"
    )
        port map (
      I0 => sample_x(4),
      I1 => sample_x(0),
      I2 => sample_x(2),
      I3 => sample_x(3),
      I4 => sample_x(1),
      I5 => sample_x(5),
      O => \cell_x_reg[1]_i_3_n_0\
    );
\cell_x_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => sample_x(5),
      I1 => sample_x(0),
      I2 => \cell_x_reg[2]_i_2_n_0\,
      I3 => sample_x(4),
      I4 => sample_x(6),
      O => \cell_x_reg[2]_i_1_n_0\
    );
\cell_x_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sample_x(2),
      I1 => sample_x(3),
      I2 => sample_x(1),
      O => \cell_x_reg[2]_i_2_n_0\
    );
\cell_x_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_x_reg_reg[0]_i_1_n_0\,
      Q => sel(0)
    );
\cell_x_reg_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cell_x_reg[0]_i_2_n_0\,
      I1 => \cell_x_reg[0]_i_3_n_0\,
      O => \cell_x_reg_reg[0]_i_1_n_0\,
      S => sample_x(6)
    );
\cell_x_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_x_reg_reg[1]_i_1_n_0\,
      Q => sel(1)
    );
\cell_x_reg_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cell_x_reg[1]_i_2_n_0\,
      I1 => \cell_x_reg[1]_i_3_n_0\,
      O => \cell_x_reg_reg[1]_i_1_n_0\,
      S => sample_x(6)
    );
\cell_x_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_x_reg[2]_i_1_n_0\,
      Q => sel(2)
    );
\cell_y_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFC00000004"
    )
        port map (
      I0 => sample_y(0),
      I1 => sample_y(5),
      I2 => sample_y(1),
      I3 => sample_y(2),
      I4 => sample_y(3),
      I5 => sample_y(4),
      O => \cell_y_reg[0]_i_2_n_0\
    );
\cell_y_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFF0F0F0BAF0F0F0"
    )
        port map (
      I0 => sample_y(5),
      I1 => sample_y(0),
      I2 => sample_y(4),
      I3 => sample_y(2),
      I4 => sample_y(3),
      I5 => sample_y(1),
      O => \cell_y_reg[0]_i_3_n_0\
    );
\cell_y_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE00000000"
    )
        port map (
      I0 => sample_y(0),
      I1 => sample_y(3),
      I2 => sample_y(2),
      I3 => sample_y(1),
      I4 => sample_y(4),
      I5 => sample_y(5),
      O => \cell_y_reg[1]_i_2_n_0\
    );
\cell_y_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0008000"
    )
        port map (
      I0 => sample_y(4),
      I1 => sample_y(0),
      I2 => sample_y(2),
      I3 => sample_y(3),
      I4 => sample_y(1),
      I5 => sample_y(5),
      O => \cell_y_reg[1]_i_3_n_0\
    );
\cell_y_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => sample_y(5),
      I1 => sample_y(0),
      I2 => \cell_y_reg[2]_i_2_n_0\,
      I3 => sample_y(4),
      I4 => sample_y(6),
      O => \cell_y_reg[2]_i_1_n_0\
    );
\cell_y_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sample_y(2),
      I1 => sample_y(3),
      I2 => sample_y(1),
      O => \cell_y_reg[2]_i_2_n_0\
    );
\cell_y_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_y_reg_reg[0]_i_1_n_0\,
      Q => sel(3)
    );
\cell_y_reg_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cell_y_reg[0]_i_2_n_0\,
      I1 => \cell_y_reg[0]_i_3_n_0\,
      O => \cell_y_reg_reg[0]_i_1_n_0\,
      S => sample_y(6)
    );
\cell_y_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_y_reg_reg[1]_i_1_n_0\,
      Q => sel(4)
    );
\cell_y_reg_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cell_y_reg[1]_i_2_n_0\,
      I1 => \cell_y_reg[1]_i_3_n_0\,
      O => \cell_y_reg_reg[1]_i_1_n_0\,
      S => sample_y(6)
    );
\cell_y_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bucket_reg[5]_i_1_n_0\,
      CLR => \base_addr_reg[0]_0\,
      D => \cell_y_reg[2]_i_1_n_0\,
      Q => sel(5)
    );
clear_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clear_addr0_carry_n_0,
      CO(2) => clear_addr0_carry_n_1,
      CO(1) => clear_addr0_carry_n_2,
      CO(0) => clear_addr0_carry_n_3,
      CYINIT => clear_addr(0),
      DI(3 downto 0) => B"0000",
      O(3) => clear_addr0_carry_n_4,
      O(2) => clear_addr0_carry_n_5,
      O(1) => clear_addr0_carry_n_6,
      O(0) => clear_addr0_carry_n_7,
      S(3 downto 0) => clear_addr(4 downto 1)
    );
\clear_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clear_addr0_carry_n_0,
      CO(3) => \clear_addr0_carry__0_n_0\,
      CO(2) => \clear_addr0_carry__0_n_1\,
      CO(1) => \clear_addr0_carry__0_n_2\,
      CO(0) => \clear_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clear_addr0_carry__0_n_4\,
      O(2) => \clear_addr0_carry__0_n_5\,
      O(1) => \clear_addr0_carry__0_n_6\,
      O(0) => \clear_addr0_carry__0_n_7\,
      S(3 downto 0) => clear_addr(8 downto 5)
    );
\clear_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_addr0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_clear_addr0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clear_addr0_carry__1_n_2\,
      CO(0) => \clear_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clear_addr0_carry__1_O_UNCONNECTED\(3),
      O(2) => \clear_addr0_carry__1_n_5\,
      O(1) => \clear_addr0_carry__1_n_6\,
      O(0) => \clear_addr0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => clear_addr(11 downto 9)
    );
\clear_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => clear_addr(0),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \clear_addr[0]_i_1_n_0\
    );
\clear_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__1_n_6\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(10)
    );
\clear_addr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => control(12),
      I2 => \bucket_reg_reg[0]_0\,
      O => \clear_addr[11]_i_1_n_0\
    );
\clear_addr[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__1_n_5\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(11)
    );
\clear_addr[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => clear_addr(2),
      I1 => clear_addr(10),
      I2 => clear_addr(3),
      I3 => \clear_addr[11]_i_4_n_0\,
      I4 => \clear_addr[11]_i_5_n_0\,
      O => \clear_addr[11]_i_3_n_0\
    );
\clear_addr[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clear_addr(5),
      I1 => clear_addr(4),
      I2 => clear_addr(11),
      I3 => clear_addr(8),
      O => \clear_addr[11]_i_4_n_0\
    );
\clear_addr[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clear_addr(9),
      I1 => clear_addr(1),
      I2 => clear_addr(7),
      I3 => clear_addr(6),
      O => \clear_addr[11]_i_5_n_0\
    );
\clear_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => clear_addr0_carry_n_7,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(1)
    );
\clear_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => clear_addr0_carry_n_6,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(2)
    );
\clear_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => clear_addr0_carry_n_5,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(3)
    );
\clear_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => clear_addr0_carry_n_4,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(4)
    );
\clear_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__0_n_7\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(5)
    );
\clear_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__0_n_6\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(6)
    );
\clear_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__0_n_5\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(7)
    );
\clear_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__0_n_4\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(8)
    );
\clear_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B000B0B0"
    )
        port map (
      I0 => \clear_addr[11]_i_3_n_0\,
      I1 => clear_addr(0),
      I2 => \clear_addr0_carry__1_n_7\,
      I3 => \^clearing_reg_0\,
      I4 => control(12),
      I5 => \bucket_reg_reg[0]_0\,
      O => p_1_in(9)
    );
\clear_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \clear_addr[0]_i_1_n_0\,
      Q => clear_addr(0)
    );
\clear_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(10),
      Q => clear_addr(10)
    );
\clear_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(11),
      Q => clear_addr(11)
    );
\clear_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(1),
      Q => clear_addr(1)
    );
\clear_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(2),
      Q => clear_addr(2)
    );
\clear_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(3),
      Q => clear_addr(3)
    );
\clear_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(4),
      Q => clear_addr(4)
    );
\clear_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(5),
      Q => clear_addr(5)
    );
\clear_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(6),
      Q => clear_addr(6)
    );
\clear_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(7),
      Q => clear_addr(7)
    );
\clear_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(8),
      Q => clear_addr(8)
    );
\clear_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \clear_addr[11]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(9),
      Q => clear_addr(9)
    );
clear_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_addr(0),
      I1 => \^clearing_reg_0\,
      I2 => \clear_addr[11]_i_3_n_0\,
      O => clear_done_i_1_n_0
    );
clear_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \base_addr_reg[0]_0\,
      D => clear_done_i_1_n_0,
      Q => clear_done
    );
clearing_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4F7C4C4"
    )
        port map (
      I0 => clear_addr(0),
      I1 => \^clearing_reg_0\,
      I2 => \clear_addr[11]_i_3_n_0\,
      I3 => \bucket_reg_reg[0]_0\,
      I4 => control(12),
      O => clearing_i_1_n_0
    );
clearing_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => clearing_i_1_n_0,
      Q => \^clearing_reg_0\
    );
\data_status[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(0),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(0)
    );
\data_status[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(10),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(10)
    );
\data_status[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(11),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(11)
    );
\data_status[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(12),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(12)
    );
\data_status[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(13),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(13)
    );
\data_status[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(14),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(14)
    );
\data_status[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(15),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(15)
    );
\data_status[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => control(7),
      I1 => control(6),
      I2 => control(8),
      I3 => control(11),
      I4 => control(9),
      I5 => control(10),
      O => control_7_sn_1
    );
\data_status[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(1),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(1)
    );
\data_status[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(2),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(2)
    );
\data_status[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(3),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(3)
    );
\data_status[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(4),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(4)
    );
\data_status[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(5),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(5)
    );
\data_status[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(6),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(6)
    );
\data_status[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(7),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(7)
    );
\data_status[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(8),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(8)
    );
\data_status[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data(9),
      I1 => control_7_sn_1,
      O => hist_mem_reg_1_0(9)
    );
g0_b1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE00007FFFC0000"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF800000000"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b11_n_0
    );
g0_b2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6D92"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1C71E38E"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F01F81FC0FE07E"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555AAAD556AAB554"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999CCCE667333998"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E1F0F0787C3C1E0"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01FF007F803FE00"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => g0_b9_n_0
    );
hist_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => sample_last_reg_n_0,
      I4 => \^clearing_reg_0\,
      I5 => \^control_clear_d_reg\,
      O => hist_done_i_1_n_0
    );
hist_done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => hist_done_reg_0,
      D => hist_done_i_1_n_0,
      Q => hist_done
    );
hist_mem_reg_0: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ram_a_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => hist_mem_reg_0_i_13_n_0,
      ADDRBWRADDR(13) => hist_mem_reg_0_i_14_n_0,
      ADDRBWRADDR(12) => hist_mem_reg_0_i_15_n_0,
      ADDRBWRADDR(11) => hist_mem_reg_0_i_16_n_0,
      ADDRBWRADDR(10) => hist_mem_reg_0_i_17_n_0,
      ADDRBWRADDR(9) => hist_mem_reg_0_i_18_n_0,
      ADDRBWRADDR(8) => hist_mem_reg_0_i_19_n_0,
      ADDRBWRADDR(7) => hist_mem_reg_0_i_20_n_0,
      ADDRBWRADDR(6) => hist_mem_reg_0_i_21_n_0,
      ADDRBWRADDR(5) => hist_mem_reg_0_i_22_n_0,
      ADDRBWRADDR(4) => hist_mem_reg_0_i_23_n_0,
      ADDRBWRADDR(3) => hist_mem_reg_0_i_24_n_0,
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_hist_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_hist_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_hist_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => ram_a_wdata(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => ram_a_wdata(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 8) => NLW_hist_mem_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7 downto 0) => ram_read_data(7 downto 0),
      DOBDO(31 downto 8) => NLW_hist_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => rd_data(7 downto 0),
      DOPADOP(3 downto 1) => NLW_hist_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => ram_read_data(8),
      DOPBDOP(3 downto 1) => NLW_hist_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => rd_data(8),
      ECCPARITY(7 downto 0) => NLW_hist_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_hist_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_hist_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_hist_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_hist_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => ram_a_we,
      WEA(2) => ram_a_we,
      WEA(1) => ram_a_we,
      WEA(0) => ram_a_we,
      WEBWE(7 downto 0) => B"00000000"
    );
hist_mem_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(11),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(11),
      O => ram_a_addr(11)
    );
hist_mem_reg_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(2),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(2),
      O => ram_a_addr(2)
    );
hist_mem_reg_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(1),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(1),
      O => ram_a_addr(1)
    );
hist_mem_reg_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(0),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(0),
      O => ram_a_addr(0)
    );
hist_mem_reg_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707070F070F070F0"
    )
        port map (
      I0 => control(10),
      I1 => control(9),
      I2 => control(11),
      I3 => control(8),
      I4 => control(6),
      I5 => control(7),
      O => hist_mem_reg_0_i_13_n_0
    );
hist_mem_reg_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAA2AAA2AAA"
    )
        port map (
      I0 => control(10),
      I1 => control(9),
      I2 => control(11),
      I3 => control(8),
      I4 => control(6),
      I5 => control(7),
      O => hist_mem_reg_0_i_14_n_0
    );
hist_mem_reg_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C4CCC4CCC4CCC"
    )
        port map (
      I0 => control(10),
      I1 => control(9),
      I2 => control(11),
      I3 => control(8),
      I4 => control(6),
      I5 => control(7),
      O => hist_mem_reg_0_i_15_n_0
    );
hist_mem_reg_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => control(8),
      I1 => control(11),
      I2 => control(9),
      I3 => control(10),
      O => hist_mem_reg_0_i_16_n_0
    );
hist_mem_reg_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFF00000000"
    )
        port map (
      I0 => control(10),
      I1 => control(9),
      I2 => control(11),
      I3 => control(8),
      I4 => control(6),
      I5 => control(7),
      O => hist_mem_reg_0_i_17_n_0
    );
hist_mem_reg_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F00007FFF0000"
    )
        port map (
      I0 => control(10),
      I1 => control(9),
      I2 => control(11),
      I3 => control(8),
      I4 => control(6),
      I5 => control(7),
      O => hist_mem_reg_0_i_18_n_0
    );
hist_mem_reg_0_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(5),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_19_n_0
    );
hist_mem_reg_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(10),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(10),
      O => ram_a_addr(10)
    );
hist_mem_reg_0_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(4),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_20_n_0
    );
hist_mem_reg_0_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(3),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_21_n_0
    );
hist_mem_reg_0_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(2),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_22_n_0
    );
hist_mem_reg_0_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(1),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_23_n_0
    );
hist_mem_reg_0_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(0),
      I1 => control_7_sn_1,
      O => hist_mem_reg_0_i_24_n_0
    );
hist_mem_reg_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__0_n_5\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(7)
    );
hist_mem_reg_0_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__0_n_6\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(6)
    );
hist_mem_reg_0_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__0_n_7\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(5)
    );
hist_mem_reg_0_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry_n_4\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(4)
    );
hist_mem_reg_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry_n_5\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(3)
    );
hist_mem_reg_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(9),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(9),
      O => ram_a_addr(9)
    );
hist_mem_reg_0_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry_n_6\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(2)
    );
hist_mem_reg_0_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry_n_7\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(1)
    );
hist_mem_reg_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => ram_read_data(0),
      O => ram_a_wdata(0)
    );
hist_mem_reg_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__0_n_4\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(8)
    );
hist_mem_reg_0_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => sample_counted_reg_n_0,
      O => ram_a_we
    );
hist_mem_reg_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(8),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(8),
      O => ram_a_addr(8)
    );
hist_mem_reg_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(7),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(7),
      O => ram_a_addr(7)
    );
hist_mem_reg_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(6),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(6),
      O => ram_a_addr(6)
    );
hist_mem_reg_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(5),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(5),
      O => ram_a_addr(5)
    );
hist_mem_reg_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(4),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(4),
      O => ram_a_addr(4)
    );
hist_mem_reg_0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr(3),
      I1 => \^clearing_reg_0\,
      I2 => rmw_addr(3),
      O => ram_a_addr(3)
    );
hist_mem_reg_1: unisim.vcomponents.RAMB36E1
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ram_a_addr(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => hist_mem_reg_0_i_13_n_0,
      ADDRBWRADDR(13) => hist_mem_reg_0_i_14_n_0,
      ADDRBWRADDR(12) => hist_mem_reg_0_i_15_n_0,
      ADDRBWRADDR(11) => hist_mem_reg_0_i_16_n_0,
      ADDRBWRADDR(10) => hist_mem_reg_0_i_17_n_0,
      ADDRBWRADDR(9) => hist_mem_reg_0_i_18_n_0,
      ADDRBWRADDR(8) => hist_mem_reg_0_i_19_n_0,
      ADDRBWRADDR(7) => hist_mem_reg_0_i_20_n_0,
      ADDRBWRADDR(6) => hist_mem_reg_0_i_21_n_0,
      ADDRBWRADDR(5) => hist_mem_reg_0_i_22_n_0,
      ADDRBWRADDR(4) => hist_mem_reg_0_i_23_n_0,
      ADDRBWRADDR(3) => hist_mem_reg_0_i_24_n_0,
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_hist_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_hist_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_hist_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 7) => B"0000000000000000000000000",
      DIADI(6 downto 0) => ram_a_wdata(15 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000001111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 7) => NLW_hist_mem_reg_1_DOADO_UNCONNECTED(31 downto 7),
      DOADO(6 downto 0) => ram_read_data(15 downto 9),
      DOBDO(31 downto 7) => NLW_hist_mem_reg_1_DOBDO_UNCONNECTED(31 downto 7),
      DOBDO(6 downto 0) => rd_data(15 downto 9),
      DOPADOP(3 downto 0) => NLW_hist_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_hist_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_hist_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_hist_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_hist_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_hist_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_hist_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => ram_a_we,
      WEA(2) => ram_a_we,
      WEA(1) => ram_a_we,
      WEA(0) => ram_a_we,
      WEBWE(7 downto 0) => B"00000000"
    );
hist_mem_reg_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__2_n_5\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(15)
    );
hist_mem_reg_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__2_n_6\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(14)
    );
hist_mem_reg_1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__2_n_7\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(13)
    );
hist_mem_reg_1_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__1_n_4\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(12)
    );
hist_mem_reg_1_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__1_n_5\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(11)
    );
hist_mem_reg_1_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__1_n_6\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(10)
    );
hist_mem_reg_1_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \_carry__1_n_7\,
      I1 => \^clearing_reg_0\,
      O => ram_a_wdata(9)
    );
\hist_total[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[12]_0\(2),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[11]_i_2_n_0\
    );
\hist_total[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[12]_0\(1),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[11]_i_3_n_0\
    );
\hist_total[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[12]_0\(0),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[11]_i_4_n_0\
    );
\hist_total[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[8]_0\(3),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[11]_i_5_n_0\
    );
\hist_total[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => \hist_total[15]_i_4_n_0\,
      I1 => \^clearing_reg_0\,
      I2 => sample_counted_reg_n_0,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \hist_total[15]_i_1_n_0\
    );
\hist_total[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\hist_total[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => control(12),
      I2 => \bucket_reg_reg[0]_0\,
      O => \hist_total[15]_i_4_n_0\
    );
\hist_total[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[15]_0\(2),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[15]_i_5_n_0\
    );
\hist_total[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[15]_0\(1),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[15]_i_6_n_0\
    );
\hist_total[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[15]_0\(0),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[15]_i_7_n_0\
    );
\hist_total[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[12]_0\(3),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[15]_i_8_n_0\
    );
\hist_total[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \bucket_reg_reg[0]_0\,
      I1 => control(12),
      I2 => \^clearing_reg_0\,
      O => \hist_total[3]_i_2_n_0\
    );
\hist_total[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^s\(2),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[3]_i_3_n_0\
    );
\hist_total[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^s\(1),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[3]_i_4_n_0\
    );
\hist_total[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^s\(0),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[3]_i_5_n_0\
    );
\hist_total[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \^hist_total_reg[0]_0\,
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[3]_i_6_n_0\
    );
\hist_total[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[8]_0\(2),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[7]_i_2_n_0\
    );
\hist_total[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[8]_0\(1),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[7]_i_3_n_0\
    );
\hist_total[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^hist_total_reg[8]_0\(0),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[7]_i_4_n_0\
    );
\hist_total[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^s\(3),
      I1 => \bucket_reg_reg[0]_0\,
      I2 => control(12),
      I3 => \^clearing_reg_0\,
      O => \hist_total[7]_i_5_n_0\
    );
hist_total_error1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hist_total_error1_carry_n_0,
      CO(2) => hist_total_error1_carry_n_1,
      CO(1) => hist_total_error1_carry_n_2,
      CO(0) => hist_total_error1_carry_n_3,
      CYINIT => \^hist_total_reg[0]_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => hist_total_error1(4 downto 1),
      S(3 downto 0) => \^s\(3 downto 0)
    );
\hist_total_error1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hist_total_error1_carry_n_0,
      CO(3) => \hist_total_error1_carry__0_n_0\,
      CO(2) => \hist_total_error1_carry__0_n_1\,
      CO(1) => \hist_total_error1_carry__0_n_2\,
      CO(0) => \hist_total_error1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => hist_total_error1(8 downto 5),
      S(3 downto 0) => \^hist_total_reg[8]_0\(3 downto 0)
    );
\hist_total_error1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_total_error1_carry__0_n_0\,
      CO(3) => \hist_total_error1_carry__1_n_0\,
      CO(2) => \hist_total_error1_carry__1_n_1\,
      CO(1) => \hist_total_error1_carry__1_n_2\,
      CO(0) => \hist_total_error1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => hist_total_error1(12 downto 9),
      S(3 downto 0) => \^hist_total_reg[12]_0\(3 downto 0)
    );
\hist_total_error1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_total_error1_carry__1_n_0\,
      CO(3) => hist_total_error1(16),
      CO(2) => \NLW_hist_total_error1_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \hist_total_error1_carry__2_n_2\,
      CO(0) => \hist_total_error1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_hist_total_error1_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => hist_total_error1(15 downto 13),
      S(3) => '1',
      S(2 downto 0) => \^hist_total_reg[15]_0\(2 downto 0)
    );
hist_total_error_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^hist_total_reg[8]_0\(3),
      I1 => \^s\(3),
      I2 => \^hist_total_reg[8]_0\(2),
      I3 => \^hist_total_reg[8]_0\(0),
      I4 => hist_total_error_i_11_n_0,
      O => hist_total_error_i_10_n_0
    );
hist_total_error_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^hist_total_reg[12]_0\(0),
      I1 => \^hist_total_reg[12]_0\(1),
      I2 => \^hist_total_reg[15]_0\(1),
      I3 => \^hist_total_reg[15]_0\(2),
      O => hist_total_error_i_11_n_0
    );
hist_total_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => hist_total_error_i_4_n_0,
      I1 => hist_total_error_i_5_n_0,
      I2 => hist_total_error_i_6_n_0,
      I3 => hist_total_error_i_7_n_0,
      I4 => sample_counted_reg_n_0,
      I5 => hist_total_error_i_8_n_0,
      O => sample_counted_reg_0
    );
hist_total_error_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => sample_last_reg_n_0,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => clearing_reg_1
    );
hist_total_error_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hist_total_error1(10),
      I1 => hist_total_error1(14),
      I2 => hist_total_error1(16),
      I3 => hist_total_error1(15),
      O => hist_total_error_i_4_n_0
    );
hist_total_error_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => hist_total_error1(8),
      I1 => hist_total_error1(9),
      I2 => hist_total_error1(5),
      I3 => hist_total_error1(7),
      O => hist_total_error_i_5_n_0
    );
hist_total_error_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hist_total_error1(3),
      I1 => hist_total_error1(4),
      I2 => hist_total_error1(1),
      I3 => hist_total_error1(2),
      O => hist_total_error_i_6_n_0
    );
hist_total_error_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => hist_total_error1(13),
      I1 => \^hist_total_reg[0]_0\,
      I2 => hist_total_error1(11),
      I3 => hist_total_error1(6),
      I4 => hist_total_error1(12),
      O => hist_total_error_i_7_n_0
    );
hist_total_error_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => hist_total_error_i_9_n_0,
      I1 => \^hist_total_reg[12]_0\(2),
      I2 => \^hist_total_reg[12]_0\(3),
      I3 => \^hist_total_reg[8]_0\(1),
      I4 => \^hist_total_reg[15]_0\(0),
      I5 => hist_total_error_i_10_n_0,
      O => hist_total_error_i_8_n_0
    );
hist_total_error_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^s\(0),
      I1 => \^s\(1),
      I2 => \^hist_total_reg[0]_0\,
      I3 => \^s\(2),
      O => hist_total_error_i_9_n_0
    );
hist_total_error_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => hist_total_error_reg_0,
      Q => flag_status(0)
    );
\hist_total_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[3]_i_1_n_7\,
      Q => \^hist_total_reg[0]_0\
    );
\hist_total_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[11]_i_1_n_5\,
      Q => \^hist_total_reg[12]_0\(1)
    );
\hist_total_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[11]_i_1_n_4\,
      Q => \^hist_total_reg[12]_0\(2)
    );
\hist_total_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_total_reg[7]_i_1_n_0\,
      CO(3) => \hist_total_reg[11]_i_1_n_0\,
      CO(2) => \hist_total_reg[11]_i_1_n_1\,
      CO(1) => \hist_total_reg[11]_i_1_n_2\,
      CO(0) => \hist_total_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_total_reg[11]_i_1_n_4\,
      O(2) => \hist_total_reg[11]_i_1_n_5\,
      O(1) => \hist_total_reg[11]_i_1_n_6\,
      O(0) => \hist_total_reg[11]_i_1_n_7\,
      S(3) => \hist_total[11]_i_2_n_0\,
      S(2) => \hist_total[11]_i_3_n_0\,
      S(1) => \hist_total[11]_i_4_n_0\,
      S(0) => \hist_total[11]_i_5_n_0\
    );
\hist_total_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[15]_i_2_n_7\,
      Q => \^hist_total_reg[12]_0\(3)
    );
\hist_total_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[15]_i_2_n_6\,
      Q => \^hist_total_reg[15]_0\(0)
    );
\hist_total_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[15]_i_2_n_5\,
      Q => \^hist_total_reg[15]_0\(1)
    );
\hist_total_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[15]_i_2_n_4\,
      Q => \^hist_total_reg[15]_0\(2)
    );
\hist_total_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_total_reg[11]_i_1_n_0\,
      CO(3) => \NLW_hist_total_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \hist_total_reg[15]_i_2_n_1\,
      CO(1) => \hist_total_reg[15]_i_2_n_2\,
      CO(0) => \hist_total_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_total_reg[15]_i_2_n_4\,
      O(2) => \hist_total_reg[15]_i_2_n_5\,
      O(1) => \hist_total_reg[15]_i_2_n_6\,
      O(0) => \hist_total_reg[15]_i_2_n_7\,
      S(3) => \hist_total[15]_i_5_n_0\,
      S(2) => \hist_total[15]_i_6_n_0\,
      S(1) => \hist_total[15]_i_7_n_0\,
      S(0) => \hist_total[15]_i_8_n_0\
    );
\hist_total_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[3]_i_1_n_6\,
      Q => \^s\(0)
    );
\hist_total_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[3]_i_1_n_5\,
      Q => \^s\(1)
    );
\hist_total_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[3]_i_1_n_4\,
      Q => \^s\(2)
    );
\hist_total_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hist_total_reg[3]_i_1_n_0\,
      CO(2) => \hist_total_reg[3]_i_1_n_1\,
      CO(1) => \hist_total_reg[3]_i_1_n_2\,
      CO(0) => \hist_total_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \hist_total[3]_i_2_n_0\,
      O(3) => \hist_total_reg[3]_i_1_n_4\,
      O(2) => \hist_total_reg[3]_i_1_n_5\,
      O(1) => \hist_total_reg[3]_i_1_n_6\,
      O(0) => \hist_total_reg[3]_i_1_n_7\,
      S(3) => \hist_total[3]_i_3_n_0\,
      S(2) => \hist_total[3]_i_4_n_0\,
      S(1) => \hist_total[3]_i_5_n_0\,
      S(0) => \hist_total[3]_i_6_n_0\
    );
\hist_total_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[7]_i_1_n_7\,
      Q => \^s\(3)
    );
\hist_total_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[7]_i_1_n_6\,
      Q => \^hist_total_reg[8]_0\(0)
    );
\hist_total_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[7]_i_1_n_5\,
      Q => \^hist_total_reg[8]_0\(1)
    );
\hist_total_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[7]_i_1_n_4\,
      Q => \^hist_total_reg[8]_0\(2)
    );
\hist_total_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hist_total_reg[3]_i_1_n_0\,
      CO(3) => \hist_total_reg[7]_i_1_n_0\,
      CO(2) => \hist_total_reg[7]_i_1_n_1\,
      CO(1) => \hist_total_reg[7]_i_1_n_2\,
      CO(0) => \hist_total_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hist_total_reg[7]_i_1_n_4\,
      O(2) => \hist_total_reg[7]_i_1_n_5\,
      O(1) => \hist_total_reg[7]_i_1_n_6\,
      O(0) => \hist_total_reg[7]_i_1_n_7\,
      S(3) => \hist_total[7]_i_2_n_0\,
      S(2) => \hist_total[7]_i_3_n_0\,
      S(1) => \hist_total[7]_i_4_n_0\,
      S(0) => \hist_total[7]_i_5_n_0\
    );
\hist_total_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[11]_i_1_n_7\,
      Q => \^hist_total_reg[8]_0\(3)
    );
\hist_total_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \hist_total[15]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \hist_total_reg[11]_i_1_n_6\,
      Q => \^hist_total_reg[12]_0\(0)
    );
prev_row_reg_0_127_0_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aresetn,
      I1 => \^state_reg[2]_0\,
      O => \p_0_in7_out__0\
    );
protocol_error_sticky_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bucket_reg_reg[0]_0\,
      I1 => control(12),
      O => \^control_clear_d_reg\
    );
\rmw_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0051000000000000"
    )
        port map (
      I0 => \^clearing_reg_0\,
      I1 => control(12),
      I2 => \bucket_reg_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => rmw_addr_0
    );
\rmw_addr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(3),
      I1 => bucket_reg(3),
      O => \rmw_addr[3]_i_2_n_0\
    );
\rmw_addr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(2),
      I1 => bucket_reg(2),
      O => \rmw_addr[3]_i_3_n_0\
    );
\rmw_addr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(1),
      I1 => bucket_reg(1),
      O => \rmw_addr[3]_i_4_n_0\
    );
\rmw_addr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(0),
      I1 => bucket_reg(0),
      O => \rmw_addr[3]_i_5_n_0\
    );
\rmw_addr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(5),
      I1 => bucket_reg(5),
      O => \rmw_addr[7]_i_2_n_0\
    );
\rmw_addr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_addr(4),
      I1 => bucket_reg(4),
      O => \rmw_addr[7]_i_3_n_0\
    );
\rmw_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[3]_i_1_n_7\,
      Q => rmw_addr(0)
    );
\rmw_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[11]_i_2_n_5\,
      Q => rmw_addr(10)
    );
\rmw_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[11]_i_2_n_4\,
      Q => rmw_addr(11)
    );
\rmw_addr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rmw_addr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_rmw_addr_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \rmw_addr_reg[11]_i_2_n_1\,
      CO(1) => \rmw_addr_reg[11]_i_2_n_2\,
      CO(0) => \rmw_addr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rmw_addr_reg[11]_i_2_n_4\,
      O(2) => \rmw_addr_reg[11]_i_2_n_5\,
      O(1) => \rmw_addr_reg[11]_i_2_n_6\,
      O(0) => \rmw_addr_reg[11]_i_2_n_7\,
      S(3 downto 0) => base_addr(11 downto 8)
    );
\rmw_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[3]_i_1_n_6\,
      Q => rmw_addr(1)
    );
\rmw_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[3]_i_1_n_5\,
      Q => rmw_addr(2)
    );
\rmw_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[3]_i_1_n_4\,
      Q => rmw_addr(3)
    );
\rmw_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rmw_addr_reg[3]_i_1_n_0\,
      CO(2) => \rmw_addr_reg[3]_i_1_n_1\,
      CO(1) => \rmw_addr_reg[3]_i_1_n_2\,
      CO(0) => \rmw_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => base_addr(3 downto 0),
      O(3) => \rmw_addr_reg[3]_i_1_n_4\,
      O(2) => \rmw_addr_reg[3]_i_1_n_5\,
      O(1) => \rmw_addr_reg[3]_i_1_n_6\,
      O(0) => \rmw_addr_reg[3]_i_1_n_7\,
      S(3) => \rmw_addr[3]_i_2_n_0\,
      S(2) => \rmw_addr[3]_i_3_n_0\,
      S(1) => \rmw_addr[3]_i_4_n_0\,
      S(0) => \rmw_addr[3]_i_5_n_0\
    );
\rmw_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[7]_i_1_n_7\,
      Q => rmw_addr(4)
    );
\rmw_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[7]_i_1_n_6\,
      Q => rmw_addr(5)
    );
\rmw_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[7]_i_1_n_5\,
      Q => rmw_addr(6)
    );
\rmw_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[7]_i_1_n_4\,
      Q => rmw_addr(7)
    );
\rmw_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rmw_addr_reg[3]_i_1_n_0\,
      CO(3) => \rmw_addr_reg[7]_i_1_n_0\,
      CO(2) => \rmw_addr_reg[7]_i_1_n_1\,
      CO(1) => \rmw_addr_reg[7]_i_1_n_2\,
      CO(0) => \rmw_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => base_addr(5 downto 4),
      O(3) => \rmw_addr_reg[7]_i_1_n_4\,
      O(2) => \rmw_addr_reg[7]_i_1_n_5\,
      O(1) => \rmw_addr_reg[7]_i_1_n_6\,
      O(0) => \rmw_addr_reg[7]_i_1_n_7\,
      S(3 downto 2) => base_addr(7 downto 6),
      S(1) => \rmw_addr[7]_i_2_n_0\,
      S(0) => \rmw_addr[7]_i_3_n_0\
    );
\rmw_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[11]_i_2_n_7\,
      Q => rmw_addr(8)
    );
\rmw_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rmw_addr_0,
      CLR => \^aresetn_0\,
      D => \rmw_addr_reg[11]_i_2_n_6\,
      Q => rmw_addr(9)
    );
\sample_code[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => win_valid,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => aresetn,
      I4 => \state_reg_n_0_[2]\,
      I5 => \clear_addr[11]_i_1_n_0\,
      O => \^win_valid_reg\
    );
\sample_code_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(0),
      Q => sample_code(0)
    );
\sample_code_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(1),
      Q => sample_code(1)
    );
\sample_code_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(2),
      Q => sample_code(2)
    );
\sample_code_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(3),
      Q => sample_code(3)
    );
\sample_code_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(4),
      Q => sample_code(4)
    );
\sample_code_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(5),
      Q => sample_code(5)
    );
\sample_code_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(6),
      Q => sample_code(6)
    );
\sample_code_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => D(7),
      Q => sample_code(7)
    );
sample_counted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2AFFAAFFAAFEAA"
    )
        port map (
      I0 => sample_counted_i_2_n_0,
      I1 => Q(4),
      I2 => Q(5),
      I3 => sample_counted_i_3_n_0,
      I4 => sample_counted_i_4_n_0,
      I5 => Q(3),
      O => \input_counted__0\
    );
sample_counted_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE00000000"
    )
        port map (
      I0 => \sample_x_reg[6]_0\(5),
      I1 => \sample_x_reg[6]_0\(6),
      I2 => sample_counted_i_5_n_0,
      I3 => \sample_x_reg[6]_0\(3),
      I4 => \sample_x_reg[6]_0\(4),
      I5 => Q(6),
      O => sample_counted_i_2_n_0
    );
sample_counted_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFE"
    )
        port map (
      I0 => \sample_x_reg[6]_0\(5),
      I1 => \sample_x_reg[6]_0\(6),
      I2 => sample_counted_i_5_n_0,
      I3 => \sample_x_reg[6]_0\(3),
      I4 => \sample_x_reg[6]_0\(4),
      I5 => Q(6),
      O => sample_counted_i_3_n_0
    );
sample_counted_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      O => sample_counted_i_4_n_0
    );
sample_counted_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \sample_x_reg[6]_0\(2),
      I1 => \sample_x_reg[6]_0\(1),
      I2 => \sample_x_reg[6]_0\(0),
      O => sample_counted_i_5_n_0
    );
sample_counted_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \^aresetn_0\,
      D => \input_counted__0\,
      Q => sample_counted_reg_n_0
    );
sample_last_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \^aresetn_0\,
      D => win_last,
      Q => sample_last_reg_n_0
    );
\sample_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(0),
      Q => sample_x(0)
    );
\sample_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(1),
      Q => sample_x(1)
    );
\sample_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(2),
      Q => sample_x(2)
    );
\sample_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(3),
      Q => sample_x(3)
    );
\sample_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(4),
      Q => sample_x(4)
    );
\sample_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(5),
      Q => sample_x(5)
    );
\sample_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => \sample_x_reg[6]_0\(6),
      Q => sample_x(6)
    );
\sample_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(0),
      Q => sample_y(0)
    );
\sample_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(1),
      Q => sample_y(1)
    );
\sample_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(2),
      Q => sample_y(2)
    );
\sample_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(3),
      Q => sample_y(3)
    );
\sample_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(4),
      Q => sample_y(4)
    );
\sample_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(5),
      Q => sample_y(5)
    );
\sample_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^win_valid_reg\,
      CLR => \base_addr_reg[0]_0\,
      D => Q(6),
      Q => sample_y(6)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000404B4B4A"
    )
        port map (
      I0 => \^win_valid_reg\,
      I1 => \^clearing_reg_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \hist_total[15]_i_4_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044004FB0"
    )
        port map (
      I0 => \^win_valid_reg\,
      I1 => \^clearing_reg_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \hist_total[15]_i_4_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000444FB000"
    )
        port map (
      I0 => \^win_valid_reg\,
      I1 => \^clearing_reg_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \hist_total[15]_i_4_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0000FFFFFFFF"
    )
        port map (
      I0 => \clear_addr[11]_i_1_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => aresetn,
      I3 => \state[3]_i_6_n_0\,
      I4 => win_valid,
      I5 => resize_valid,
      O => \^state_reg[2]_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[3]_i_6_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\y_count[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^state_reg[2]_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_roi_resize_128 is
  port (
    resize_user : out STD_LOGIC;
    resize_last : out STD_LOGIC;
    resize_done : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    resize_valid : out STD_LOGIC;
    resize_size_error : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    dma_tvalid_0 : out STD_LOGIC;
    m_tlast_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[2]_1\ : out STD_LOGIC;
    \control[28]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \control[20]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \state_reg[3]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    m_tlast_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    control_clear_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    control_clear_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    dma_tready : out STD_LOGIC;
    \input_y_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \control[29]\ : out STD_LOGIC;
    dma_tlast_0 : out STD_LOGIC;
    \input_x_reg[1]_0\ : out STD_LOGIC;
    m_tuser_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_tuser_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_tuser_reg_2 : out STD_LOGIC;
    \m_tdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    OPMODE : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_tuser_reg_3 : in STD_LOGIC;
    m_tvalid_reg_0 : in STD_LOGIC;
    size_error_reg_0 : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \input_y_reg[0]_0\ : in STD_LOGIC;
    control_cfg_d : in STD_LOGIC;
    \input_x_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_count_reg[5]\ : in STD_LOGIC;
    \x_count_reg[5]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vertical_delta_carry_i_9 : in STD_LOGIC;
    input_row_last_carry_i_1_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \m_tdata_reg[7]_i_5\ : in STD_LOGIC;
    \win_y_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn : in STD_LOGIC;
    dma_tvalid : in STD_LOGIC;
    \input_x_reg[5]_0\ : in STD_LOGIC;
    \input_x_reg[6]_0\ : in STD_LOGIC;
    \input_y_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \input_y_reg[8]_2\ : in STD_LOGIC;
    \input_y_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \input_y_reg[5]_0\ : in STD_LOGIC;
    done_reg_0 : in STD_LOGIC;
    dma_tlast : in STD_LOGIC;
    dma_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sample_fraction_x_reg[4]_0\ : in STD_LOGIC;
    \m_tdata_reg[3]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_roi_resize_128 : entity is "roi_resize_128";
end facebox_system_wp4_board_bridge_0_0_roi_resize_128;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_roi_resize_128 is
  signal A : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal C : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \C__0\ : STD_LOGIC_VECTOR ( 8 downto 7 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^aresetn_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_0\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_1\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_2\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_3\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_4\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_5\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_6\ : STD_LOGIC;
  signal \bottom_delta_carry__0_n_7\ : STD_LOGIC;
  signal \bottom_delta_carry__1_n_7\ : STD_LOGIC;
  signal bottom_delta_carry_i_1_n_0 : STD_LOGIC;
  signal bottom_delta_carry_i_2_n_0 : STD_LOGIC;
  signal bottom_delta_carry_i_3_n_0 : STD_LOGIC;
  signal bottom_delta_carry_i_4_n_0 : STD_LOGIC;
  signal bottom_delta_carry_n_0 : STD_LOGIC;
  signal bottom_delta_carry_n_1 : STD_LOGIC;
  signal bottom_delta_carry_n_2 : STD_LOGIC;
  signal bottom_delta_carry_n_3 : STD_LOGIC;
  signal bottom_delta_carry_n_4 : STD_LOGIC;
  signal bottom_delta_carry_n_5 : STD_LOGIC;
  signal bottom_delta_carry_n_6 : STD_LOGIC;
  signal bottom_delta_carry_n_7 : STD_LOGIC;
  signal bottom_mix : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \bottom_mix_next__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bottom_mix_next_i_1_n_0 : STD_LOGIC;
  signal \^control[20]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^control[28]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^control[29]\ : STD_LOGIC;
  signal coordinate_x0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \coordinate_x01_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_n_1\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_n_2\ : STD_LOGIC;
  signal \coordinate_x01_carry__0_n_3\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_n_1\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_n_2\ : STD_LOGIC;
  signal \coordinate_x01_carry__1_n_3\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_n_0\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_n_1\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_n_2\ : STD_LOGIC;
  signal \coordinate_x01_carry__2_n_3\ : STD_LOGIC;
  signal coordinate_x01_carry_i_1_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_2_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_3_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_4_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_5_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_6_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_7_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_i_8_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_n_0 : STD_LOGIC;
  signal coordinate_x01_carry_n_1 : STD_LOGIC;
  signal coordinate_x01_carry_n_2 : STD_LOGIC;
  signal coordinate_x01_carry_n_3 : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \coordinate_x01_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal coordinate_x02_n_100 : STD_LOGIC;
  signal coordinate_x02_n_101 : STD_LOGIC;
  signal coordinate_x02_n_102 : STD_LOGIC;
  signal coordinate_x02_n_103 : STD_LOGIC;
  signal coordinate_x02_n_104 : STD_LOGIC;
  signal coordinate_x02_n_105 : STD_LOGIC;
  signal coordinate_x02_n_74 : STD_LOGIC;
  signal coordinate_x02_n_75 : STD_LOGIC;
  signal coordinate_x02_n_76 : STD_LOGIC;
  signal coordinate_x02_n_77 : STD_LOGIC;
  signal coordinate_x02_n_78 : STD_LOGIC;
  signal coordinate_x02_n_79 : STD_LOGIC;
  signal coordinate_x02_n_80 : STD_LOGIC;
  signal coordinate_x02_n_81 : STD_LOGIC;
  signal coordinate_x02_n_82 : STD_LOGIC;
  signal coordinate_x02_n_83 : STD_LOGIC;
  signal coordinate_x02_n_84 : STD_LOGIC;
  signal coordinate_x02_n_85 : STD_LOGIC;
  signal coordinate_x02_n_86 : STD_LOGIC;
  signal coordinate_x02_n_87 : STD_LOGIC;
  signal coordinate_x02_n_88 : STD_LOGIC;
  signal coordinate_x02_n_98 : STD_LOGIC;
  signal coordinate_x02_n_99 : STD_LOGIC;
  signal coordinate_x1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal coordinate_y0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \coordinate_y01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_n_1\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_n_2\ : STD_LOGIC;
  signal \coordinate_y01_carry__0_n_3\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_n_1\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_n_2\ : STD_LOGIC;
  signal \coordinate_y01_carry__1_n_3\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_n_0\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_n_1\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_n_2\ : STD_LOGIC;
  signal \coordinate_y01_carry__2_n_3\ : STD_LOGIC;
  signal coordinate_y01_carry_i_1_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_2_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_3_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_4_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_5_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_6_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_7_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_i_8_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_n_0 : STD_LOGIC;
  signal coordinate_y01_carry_n_1 : STD_LOGIC;
  signal coordinate_y01_carry_n_2 : STD_LOGIC;
  signal coordinate_y01_carry_n_3 : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \coordinate_y01_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal coordinate_y02_n_100 : STD_LOGIC;
  signal coordinate_y02_n_101 : STD_LOGIC;
  signal coordinate_y02_n_102 : STD_LOGIC;
  signal coordinate_y02_n_103 : STD_LOGIC;
  signal coordinate_y02_n_104 : STD_LOGIC;
  signal coordinate_y02_n_105 : STD_LOGIC;
  signal coordinate_y02_n_74 : STD_LOGIC;
  signal coordinate_y02_n_75 : STD_LOGIC;
  signal coordinate_y02_n_76 : STD_LOGIC;
  signal coordinate_y02_n_77 : STD_LOGIC;
  signal coordinate_y02_n_78 : STD_LOGIC;
  signal coordinate_y02_n_79 : STD_LOGIC;
  signal coordinate_y02_n_80 : STD_LOGIC;
  signal coordinate_y02_n_81 : STD_LOGIC;
  signal coordinate_y02_n_82 : STD_LOGIC;
  signal coordinate_y02_n_83 : STD_LOGIC;
  signal coordinate_y02_n_84 : STD_LOGIC;
  signal coordinate_y02_n_85 : STD_LOGIC;
  signal coordinate_y02_n_86 : STD_LOGIC;
  signal coordinate_y02_n_87 : STD_LOGIC;
  signal coordinate_y02_n_88 : STD_LOGIC;
  signal coordinate_y02_n_89 : STD_LOGIC;
  signal coordinate_y02_n_90 : STD_LOGIC;
  signal coordinate_y02_n_91 : STD_LOGIC;
  signal coordinate_y02_n_92 : STD_LOGIC;
  signal coordinate_y02_n_93 : STD_LOGIC;
  signal coordinate_y02_n_94 : STD_LOGIC;
  signal coordinate_y02_n_95 : STD_LOGIC;
  signal coordinate_y02_n_96 : STD_LOGIC;
  signal coordinate_y02_n_97 : STD_LOGIC;
  signal coordinate_y02_n_98 : STD_LOGIC;
  signal coordinate_y02_n_99 : STD_LOGIC;
  signal coordinate_y1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dma_tvalid_0\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_14_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_15_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_16_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_17_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_18_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_19_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_20_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_21_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_22_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_24_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_25_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_26_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_28_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_29_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_2_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_2_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_2_n_2 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_2_n_3 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_3_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_3_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_3_n_2 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_3_n_3 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_4_n_7 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_2 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_3 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_4 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_5 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_6 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_5_n_7 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_2 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_3 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_4 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_5 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_6 : STD_LOGIC;
  signal frame_mem_reg_0_0_i_6_n_7 : STD_LOGIC;
  signal frame_mem_reg_0_0_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_0_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_1_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_1_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_2_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_2_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_3_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_3_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_4_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_4_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_5_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_5_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_5_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_6_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_6_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_6_n_1 : STD_LOGIC;
  signal frame_mem_reg_0_7_n_0 : STD_LOGIC;
  signal frame_mem_reg_0_7_n_1 : STD_LOGIC;
  signal frame_mem_reg_1_2_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_1_3_i_1_n_0 : STD_LOGIC;
  signal frame_mem_reg_1_7_i_1_n_0 : STD_LOGIC;
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
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal input_final0 : STD_LOGIC;
  signal input_final0_carry_i_1_n_0 : STD_LOGIC;
  signal input_final0_carry_i_2_n_0 : STD_LOGIC;
  signal input_final0_carry_i_3_n_0 : STD_LOGIC;
  signal input_final0_carry_i_4_n_0 : STD_LOGIC;
  signal input_final0_carry_i_5_n_0 : STD_LOGIC;
  signal input_final0_carry_n_1 : STD_LOGIC;
  signal input_final0_carry_n_2 : STD_LOGIC;
  signal input_final0_carry_n_3 : STD_LOGIC;
  signal \input_final0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \input_final0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \input_final0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \input_final0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \input_height[8]_i_2_n_0\ : STD_LOGIC;
  signal \input_height_reg_n_0_[0]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[1]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[2]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[3]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[4]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[5]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[6]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[7]\ : STD_LOGIC;
  signal \input_height_reg_n_0_[8]\ : STD_LOGIC;
  signal input_row_last_carry_i_4_n_0 : STD_LOGIC;
  signal input_row_last_carry_i_5_n_0 : STD_LOGIC;
  signal input_row_last_carry_i_6_n_0 : STD_LOGIC;
  signal input_row_last_carry_i_7_n_0 : STD_LOGIC;
  signal input_width : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \input_width[8]_i_3_n_0\ : STD_LOGIC;
  signal input_x : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \input_x[10]_i_1_n_0\ : STD_LOGIC;
  signal \input_x[10]_i_3_n_0\ : STD_LOGIC;
  signal \input_x[4]_i_2_n_0\ : STD_LOGIC;
  signal \input_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \input_x[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \input_x[8]_i_4_n_0\ : STD_LOGIC;
  signal \input_y[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[3]_i_2_n_0\ : STD_LOGIC;
  signal \input_y[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \input_y[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \input_y[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[7]_i_2_n_0\ : STD_LOGIC;
  signal \input_y[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \input_y[8]_i_3_n_0\ : STD_LOGIC;
  signal \input_y[9]_i_1_n_0\ : STD_LOGIC;
  signal \input_y[9]_i_2_n_0\ : STD_LOGIC;
  signal \input_y[9]_i_4_n_0\ : STD_LOGIC;
  signal \input_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[8]\ : STD_LOGIC;
  signal \input_y_reg_n_0_[9]\ : STD_LOGIC;
  signal m_tdata1 : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \m_tdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \m_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_tdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_tdata_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \m_tdata_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \m_tdata_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \m_tdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_tdata_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \m_tdata_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \m_tdata_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \m_tdata_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal m_tuser0 : STD_LOGIC;
  signal m_tuser_i_2_n_0 : STD_LOGIC;
  signal m_tuser_i_3_n_0 : STD_LOGIC;
  signal output_final010_in : STD_LOGIC;
  signal \output_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \output_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \output_x[6]_i_3_n_0\ : STD_LOGIC;
  signal \output_x[6]_i_4_n_0\ : STD_LOGIC;
  signal \output_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[6]\ : STD_LOGIC;
  signal \output_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \output_y[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[6]_i_2_n_0\ : STD_LOGIC;
  signal \output_y[6]_i_3_n_0\ : STD_LOGIC;
  signal \output_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \output_y_reg_n_0_[6]\ : STD_LOGIC;
  signal p00 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p00[7]_i_1_n_0\ : STD_LOGIC;
  signal p01 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p01[7]_i_1_n_0\ : STD_LOGIC;
  signal p10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p10[7]_i_1_n_0\ : STD_LOGIC;
  signal p11 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p11[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal ram_read_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^resize_last\ : STD_LOGIC;
  signal \^resize_user\ : STD_LOGIC;
  signal sample_fraction_x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sample_fraction_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_x[7]_i_1_n_0\ : STD_LOGIC;
  signal sample_fraction_y : STD_LOGIC;
  signal \sample_fraction_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_fraction_y_reg_n_0_[7]\ : STD_LOGIC;
  signal sample_x0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \sample_x0[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x0[8]_i_1_n_0\ : STD_LOGIC;
  signal sample_x1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \sample_x1[0]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[0]_i_3_n_0\ : STD_LOGIC;
  signal \sample_x1[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[2]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[3]_i_3_n_0\ : STD_LOGIC;
  signal \sample_x1[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[4]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[4]_i_3_n_0\ : STD_LOGIC;
  signal \sample_x1[5]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[5]_i_3_n_0\ : STD_LOGIC;
  signal \sample_x1[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[6]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[7]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[7]_i_3_n_0\ : STD_LOGIC;
  signal \sample_x1[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_x1[8]_i_2_n_0\ : STD_LOGIC;
  signal \sample_x1[8]_i_3_n_0\ : STD_LOGIC;
  signal sample_y0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sample_y0[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y0[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y0[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y0[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y0[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y0[7]_i_1_n_0\ : STD_LOGIC;
  signal sample_y1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sample_y1[0]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[0]_i_3_n_0\ : STD_LOGIC;
  signal \sample_y1[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y1[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y1[2]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y1[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[3]_i_3_n_0\ : STD_LOGIC;
  signal \sample_y1[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y1[4]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[4]_i_3_n_0\ : STD_LOGIC;
  signal \sample_y1[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_y1[5]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[5]_i_3_n_0\ : STD_LOGIC;
  signal \sample_y1[6]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[7]_i_2_n_0\ : STD_LOGIC;
  signal \sample_y1[7]_i_3_n_0\ : STD_LOGIC;
  signal \sample_y1[7]_i_4_n_0\ : STD_LOGIC;
  signal size_error_i_10_n_0 : STD_LOGIC;
  signal size_error_i_11_n_0 : STD_LOGIC;
  signal size_error_i_3_n_0 : STD_LOGIC;
  signal size_error_i_4_n_0 : STD_LOGIC;
  signal size_error_i_5_n_0 : STD_LOGIC;
  signal size_error_i_6_n_0 : STD_LOGIC;
  signal size_error_i_7_n_0 : STD_LOGIC;
  signal size_error_i_8_n_0 : STD_LOGIC;
  signal size_error_i_9_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \top_delta_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \top_delta_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \top_delta_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \top_delta_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \top_delta_carry__0_n_0\ : STD_LOGIC;
  signal \top_delta_carry__0_n_1\ : STD_LOGIC;
  signal \top_delta_carry__0_n_2\ : STD_LOGIC;
  signal \top_delta_carry__0_n_3\ : STD_LOGIC;
  signal top_delta_carry_i_1_n_0 : STD_LOGIC;
  signal top_delta_carry_i_2_n_0 : STD_LOGIC;
  signal top_delta_carry_i_3_n_0 : STD_LOGIC;
  signal top_delta_carry_i_4_n_0 : STD_LOGIC;
  signal top_delta_carry_n_0 : STD_LOGIC;
  signal top_delta_carry_n_1 : STD_LOGIC;
  signal top_delta_carry_n_2 : STD_LOGIC;
  signal top_delta_carry_n_3 : STD_LOGIC;
  signal \top_mix_next__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_mix_next_i_1_n_0 : STD_LOGIC;
  signal \vertical_delta_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_1\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_2\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_3\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_4\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_5\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_6\ : STD_LOGIC;
  signal \vertical_delta_carry__0_n_7\ : STD_LOGIC;
  signal \vertical_delta_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_1\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_2\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_3\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_4\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_5\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_6\ : STD_LOGIC;
  signal \vertical_delta_carry__1_n_7\ : STD_LOGIC;
  signal \vertical_delta_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_0\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_1\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_2\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_3\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_4\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_5\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_6\ : STD_LOGIC;
  signal \vertical_delta_carry__2_n_7\ : STD_LOGIC;
  signal \vertical_delta_carry__3_n_7\ : STD_LOGIC;
  signal vertical_delta_carry_i_5_n_0 : STD_LOGIC;
  signal vertical_delta_carry_i_6_n_0 : STD_LOGIC;
  signal vertical_delta_carry_i_7_n_0 : STD_LOGIC;
  signal vertical_delta_carry_i_8_n_0 : STD_LOGIC;
  signal vertical_delta_carry_n_0 : STD_LOGIC;
  signal vertical_delta_carry_n_1 : STD_LOGIC;
  signal vertical_delta_carry_n_2 : STD_LOGIC;
  signal vertical_delta_carry_n_3 : STD_LOGIC;
  signal vertical_delta_carry_n_4 : STD_LOGIC;
  signal vertical_delta_carry_n_5 : STD_LOGIC;
  signal vertical_delta_carry_n_6 : STD_LOGIC;
  signal vertical_delta_carry_n_7 : STD_LOGIC;
  signal vertical_mix : STD_LOGIC_VECTOR ( 23 downto 14 );
  signal \vertical_mix_next__0\ : STD_LOGIC_VECTOR ( 23 downto 14 );
  signal vertical_mix_next_i_1_n_0 : STD_LOGIC;
  signal vertical_mix_next_n_100 : STD_LOGIC;
  signal vertical_mix_next_n_101 : STD_LOGIC;
  signal vertical_mix_next_n_102 : STD_LOGIC;
  signal vertical_mix_next_n_103 : STD_LOGIC;
  signal vertical_mix_next_n_104 : STD_LOGIC;
  signal vertical_mix_next_n_105 : STD_LOGIC;
  signal vertical_mix_next_n_92 : STD_LOGIC;
  signal vertical_mix_next_n_93 : STD_LOGIC;
  signal vertical_mix_next_n_94 : STD_LOGIC;
  signal vertical_mix_next_n_95 : STD_LOGIC;
  signal vertical_mix_next_n_96 : STD_LOGIC;
  signal vertical_mix_next_n_97 : STD_LOGIC;
  signal vertical_mix_next_n_98 : STD_LOGIC;
  signal vertical_mix_next_n_99 : STD_LOGIC;
  signal \write_address__0\ : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \NLW_bottom_delta_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bottom_delta_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_bottom_mix_next_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bottom_mix_next_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_bottom_mix_next_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_bottom_mix_next_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bottom_mix_next_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_bottom_mix_next_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_coordinate_x01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_x01_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_coordinate_x02_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_x02_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_coordinate_x02_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_coordinate_x02_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_coordinate_x02_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_coordinate_x02_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_coordinate_y01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_coordinate_y01_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_coordinate_y02_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_coordinate_y02_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_coordinate_y02_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_coordinate_y02_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_coordinate_y02_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_coordinate_y02_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_frame_mem_reg_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_0_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_frame_mem_reg_0_0_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_0_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_frame_mem_reg_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_0_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_mem_reg_1_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_mem_reg_1_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_mem_reg_1_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_mem_reg_1_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_mem_reg_1_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_mem_reg_1_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_mem_reg_1_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_input_final0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_input_final0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_top_delta_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_top_delta_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_top_mix_next_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_top_mix_next_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_top_mix_next_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_top_mix_next_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_top_mix_next_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_top_mix_next_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_vertical_delta_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vertical_delta_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vertical_mix_next_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_vertical_mix_next_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_vertical_mix_next_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_vertical_mix_next_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vertical_mix_next_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_vertical_mix_next_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bottom_mix_next : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \coordinate_x01_carry__0_i_10\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \coordinate_x01_carry__0_i_9\ : label is "soft_lutpair43";
  attribute METHODOLOGY_DRC_VIOS of coordinate_x02 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \coordinate_y01_carry__0_i_9\ : label is "soft_lutpair65";
  attribute METHODOLOGY_DRC_VIOS of coordinate_y02 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of dma_tready_INST_0 : label is "soft_lutpair31";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of frame_mem_reg_0_0 : label is 524288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of frame_mem_reg_0_0 : label is "frame_mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of frame_mem_reg_0_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of frame_mem_reg_0_0 : label is 32767;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of frame_mem_reg_0_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of frame_mem_reg_0_0 : label is 0;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of frame_mem_reg_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of frame_mem_reg_0_0 : label is 32767;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of frame_mem_reg_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of frame_mem_reg_0_0 : label is 0;
  attribute SOFT_HLUTNM of frame_mem_reg_0_0_i_28 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of frame_mem_reg_0_0_i_29 : label is "soft_lutpair44";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_0_i_4 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_0_i_5 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_0_i_6 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_1 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_1 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_1 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_1 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_1 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_1 : label is 1;
  attribute bram_slice_end of frame_mem_reg_0_1 : label is 1;
  attribute ram_addr_begin of frame_mem_reg_0_1 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_1 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_1 : label is 1;
  attribute ram_slice_end of frame_mem_reg_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_2 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_2 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_2 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_2 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_2 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_2 : label is 2;
  attribute bram_slice_end of frame_mem_reg_0_2 : label is 2;
  attribute ram_addr_begin of frame_mem_reg_0_2 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_2 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_2 : label is 2;
  attribute ram_slice_end of frame_mem_reg_0_2 : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_3 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_3 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_3 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_3 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_3 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_3 : label is 3;
  attribute bram_slice_end of frame_mem_reg_0_3 : label is 3;
  attribute ram_addr_begin of frame_mem_reg_0_3 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_3 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_3 : label is 3;
  attribute ram_slice_end of frame_mem_reg_0_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_4 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_4 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_4 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_4 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_4 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_4 : label is 4;
  attribute bram_slice_end of frame_mem_reg_0_4 : label is 4;
  attribute ram_addr_begin of frame_mem_reg_0_4 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_4 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_4 : label is 4;
  attribute ram_slice_end of frame_mem_reg_0_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_5 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_5 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_5 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_5 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_5 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_5 : label is 5;
  attribute bram_slice_end of frame_mem_reg_0_5 : label is 5;
  attribute ram_addr_begin of frame_mem_reg_0_5 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_5 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_5 : label is 5;
  attribute ram_slice_end of frame_mem_reg_0_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_6 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_6 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_6 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_6 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_6 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_6 : label is 6;
  attribute bram_slice_end of frame_mem_reg_0_6 : label is 6;
  attribute ram_addr_begin of frame_mem_reg_0_6 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_6 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_6 : label is 6;
  attribute ram_slice_end of frame_mem_reg_0_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_0_7 : label is "";
  attribute RTL_RAM_BITS of frame_mem_reg_0_7 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_0_7 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_0_7 : label is 0;
  attribute bram_addr_end of frame_mem_reg_0_7 : label is 32767;
  attribute bram_slice_begin of frame_mem_reg_0_7 : label is 7;
  attribute bram_slice_end of frame_mem_reg_0_7 : label is 7;
  attribute ram_addr_begin of frame_mem_reg_0_7 : label is 0;
  attribute ram_addr_end of frame_mem_reg_0_7 : label is 32767;
  attribute ram_slice_begin of frame_mem_reg_0_7 : label is 7;
  attribute ram_slice_end of frame_mem_reg_0_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_0 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_0 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_0 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_0 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_0 : label is 0;
  attribute bram_slice_end of frame_mem_reg_1_0 : label is 0;
  attribute ram_addr_begin of frame_mem_reg_1_0 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_0 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_0 : label is 0;
  attribute ram_slice_end of frame_mem_reg_1_0 : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_1 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_1 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_1 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_1 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_1 : label is 1;
  attribute bram_slice_end of frame_mem_reg_1_1 : label is 1;
  attribute ram_addr_begin of frame_mem_reg_1_1 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_1 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_1 : label is 1;
  attribute ram_slice_end of frame_mem_reg_1_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_2 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_2 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_2 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_2 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_2 : label is 2;
  attribute bram_slice_end of frame_mem_reg_1_2 : label is 2;
  attribute ram_addr_begin of frame_mem_reg_1_2 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_2 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_2 : label is 2;
  attribute ram_slice_end of frame_mem_reg_1_2 : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_3 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_3 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_3 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_3 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_3 : label is 3;
  attribute bram_slice_end of frame_mem_reg_1_3 : label is 3;
  attribute ram_addr_begin of frame_mem_reg_1_3 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_3 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_3 : label is 3;
  attribute ram_slice_end of frame_mem_reg_1_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_4 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_4 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_4 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_4 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_4 : label is 4;
  attribute bram_slice_end of frame_mem_reg_1_4 : label is 4;
  attribute ram_addr_begin of frame_mem_reg_1_4 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_4 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_4 : label is 4;
  attribute ram_slice_end of frame_mem_reg_1_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_5 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_5 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_5 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_5 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_5 : label is 5;
  attribute bram_slice_end of frame_mem_reg_1_5 : label is 5;
  attribute ram_addr_begin of frame_mem_reg_1_5 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_5 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_5 : label is 5;
  attribute ram_slice_end of frame_mem_reg_1_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_6 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_6 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_6 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_6 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_6 : label is 6;
  attribute bram_slice_end of frame_mem_reg_1_6 : label is 6;
  attribute ram_addr_begin of frame_mem_reg_1_6 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_6 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_6 : label is 6;
  attribute ram_slice_end of frame_mem_reg_1_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_mem_reg_1_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_mem_reg_1_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_mem_reg_1_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_mem_reg_1_7 : label is 524288;
  attribute RTL_RAM_NAME of frame_mem_reg_1_7 : label is "frame_mem";
  attribute bram_addr_begin of frame_mem_reg_1_7 : label is 32768;
  attribute bram_addr_end of frame_mem_reg_1_7 : label is 65535;
  attribute bram_slice_begin of frame_mem_reg_1_7 : label is 7;
  attribute bram_slice_end of frame_mem_reg_1_7 : label is 7;
  attribute ram_addr_begin of frame_mem_reg_1_7 : label is 32768;
  attribute ram_addr_end of frame_mem_reg_1_7 : label is 65535;
  attribute ram_slice_begin of frame_mem_reg_1_7 : label is 7;
  attribute ram_slice_end of frame_mem_reg_1_7 : label is 7;
  attribute SOFT_HLUTNM of \i__carry_i_6\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of input_final0_carry_i_5 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \input_height[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \input_height[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \input_height[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \input_height[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \input_height[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \input_height[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \input_height[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \input_height[8]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of input_row_last_carry_i_6 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of input_row_last_carry_i_7 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \input_width[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \input_width[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \input_width[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \input_width[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \input_width[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \input_width[8]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \input_x[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \input_x[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \input_x[10]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \input_x[1]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \input_x[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \input_x[2]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \input_x[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \input_x[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \input_x[5]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \input_x[5]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \input_x[6]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \input_x[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \input_x[7]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \input_x[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \input_x[8]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \input_x[8]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \input_x[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \input_y[0]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \input_y[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \input_y[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \input_y[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \input_y[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \input_y[3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \input_y[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \input_y[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \input_y[5]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \input_y[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \input_y[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \input_y[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \input_y[8]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \input_y[9]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_tdata[7]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \output_x[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \output_x[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \output_x[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \output_x[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \output_x[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \output_x[6]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \output_x[6]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \output_y[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \output_y[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \output_y[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \output_y[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \output_y[6]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of protocol_error_sticky_i_6 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sample_fraction_x[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sample_fraction_x[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sample_fraction_x[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sample_fraction_x[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sample_fraction_x[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sample_fraction_x[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \sample_fraction_x[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sample_fraction_x[7]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \sample_fraction_y[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sample_fraction_y[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sample_fraction_y[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sample_fraction_y[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sample_fraction_y[5]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sample_fraction_y[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sample_fraction_y[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sample_x0[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sample_x0[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sample_x0[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sample_x0[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sample_x1[0]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sample_x1[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sample_x1[3]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \sample_x1[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sample_x1[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sample_x1[4]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sample_x1[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sample_x1[5]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sample_x1[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sample_y0[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sample_y0[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sample_y0[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sample_y0[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sample_y0[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sample_y0[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \sample_y1[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \sample_y1[2]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \sample_y1[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sample_y1[3]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sample_y1[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sample_y1[4]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sample_y1[4]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sample_y1[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sample_y1[5]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sample_y1[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \sample_y1[7]_i_4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \state[3]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair64";
  attribute METHODOLOGY_DRC_VIOS of top_mix_next : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of vertical_delta_carry_i_10 : label is "soft_lutpair31";
  attribute METHODOLOGY_DRC_VIOS of vertical_mix_next : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of vertical_mix_next_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \win_y[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \x_count[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \x_count[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \x_count[4]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \x_count[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \y_count[0]_i_1\ : label is "soft_lutpair59";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  aresetn_0 <= \^aresetn_0\;
  \control[20]\(8 downto 0) <= \^control[20]\(8 downto 0);
  \control[28]\(8 downto 0) <= \^control[28]\(8 downto 0);
  \control[29]\ <= \^control[29]\;
  dma_tvalid_0 <= \^dma_tvalid_0\;
  resize_last <= \^resize_last\;
  resize_user <= \^resize_user\;
  \state_reg[2]_0\(0) <= \^state_reg[2]_0\(0);
bottom_delta_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bottom_delta_carry_n_0,
      CO(2) => bottom_delta_carry_n_1,
      CO(1) => bottom_delta_carry_n_2,
      CO(0) => bottom_delta_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => p11(3 downto 0),
      O(3) => bottom_delta_carry_n_4,
      O(2) => bottom_delta_carry_n_5,
      O(1) => bottom_delta_carry_n_6,
      O(0) => bottom_delta_carry_n_7,
      S(3) => bottom_delta_carry_i_1_n_0,
      S(2) => bottom_delta_carry_i_2_n_0,
      S(1) => bottom_delta_carry_i_3_n_0,
      S(0) => bottom_delta_carry_i_4_n_0
    );
\bottom_delta_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bottom_delta_carry_n_0,
      CO(3) => \bottom_delta_carry__0_n_0\,
      CO(2) => \bottom_delta_carry__0_n_1\,
      CO(1) => \bottom_delta_carry__0_n_2\,
      CO(0) => \bottom_delta_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p11(7 downto 4),
      O(3) => \bottom_delta_carry__0_n_4\,
      O(2) => \bottom_delta_carry__0_n_5\,
      O(1) => \bottom_delta_carry__0_n_6\,
      O(0) => \bottom_delta_carry__0_n_7\,
      S(3) => \bottom_delta_carry__0_i_1_n_0\,
      S(2) => \bottom_delta_carry__0_i_2_n_0\,
      S(1) => \bottom_delta_carry__0_i_3_n_0\,
      S(0) => \bottom_delta_carry__0_i_4_n_0\
    );
\bottom_delta_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(7),
      I1 => p01(7),
      O => \bottom_delta_carry__0_i_1_n_0\
    );
\bottom_delta_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(6),
      I1 => p01(6),
      O => \bottom_delta_carry__0_i_2_n_0\
    );
\bottom_delta_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(5),
      I1 => p01(5),
      O => \bottom_delta_carry__0_i_3_n_0\
    );
\bottom_delta_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(4),
      I1 => p01(4),
      O => \bottom_delta_carry__0_i_4_n_0\
    );
\bottom_delta_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bottom_delta_carry__0_n_0\,
      CO(3 downto 0) => \NLW_bottom_delta_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_bottom_delta_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \bottom_delta_carry__1_n_7\,
      S(3 downto 0) => B"0001"
    );
bottom_delta_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(3),
      I1 => p01(3),
      O => bottom_delta_carry_i_1_n_0
    );
bottom_delta_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(2),
      I1 => p01(2),
      O => bottom_delta_carry_i_2_n_0
    );
bottom_delta_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(1),
      I1 => p01(1),
      O => bottom_delta_carry_i_3_n_0
    );
bottom_delta_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p11(0),
      I1 => p01(0),
      O => bottom_delta_carry_i_4_n_0
    );
bottom_mix_next: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \bottom_delta_carry__1_n_7\,
      A(28) => \bottom_delta_carry__1_n_7\,
      A(27) => \bottom_delta_carry__1_n_7\,
      A(26) => \bottom_delta_carry__1_n_7\,
      A(25) => \bottom_delta_carry__1_n_7\,
      A(24) => \bottom_delta_carry__1_n_7\,
      A(23) => \bottom_delta_carry__1_n_7\,
      A(22) => \bottom_delta_carry__1_n_7\,
      A(21) => \bottom_delta_carry__1_n_7\,
      A(20) => \bottom_delta_carry__1_n_7\,
      A(19) => \bottom_delta_carry__1_n_7\,
      A(18) => \bottom_delta_carry__1_n_7\,
      A(17) => \bottom_delta_carry__1_n_7\,
      A(16) => \bottom_delta_carry__1_n_7\,
      A(15) => \bottom_delta_carry__1_n_7\,
      A(14) => \bottom_delta_carry__1_n_7\,
      A(13) => \bottom_delta_carry__1_n_7\,
      A(12) => \bottom_delta_carry__1_n_7\,
      A(11) => \bottom_delta_carry__1_n_7\,
      A(10) => \bottom_delta_carry__1_n_7\,
      A(9) => \bottom_delta_carry__1_n_7\,
      A(8) => \bottom_delta_carry__1_n_7\,
      A(7) => \bottom_delta_carry__0_n_4\,
      A(6) => \bottom_delta_carry__0_n_5\,
      A(5) => \bottom_delta_carry__0_n_6\,
      A(4) => \bottom_delta_carry__0_n_7\,
      A(3) => bottom_delta_carry_n_4,
      A(2) => bottom_delta_carry_n_5,
      A(1) => bottom_delta_carry_n_6,
      A(0) => bottom_delta_carry_n_7,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_bottom_mix_next_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => sample_fraction_x(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_bottom_mix_next_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => p01(7),
      C(46) => p01(7),
      C(45) => p01(7),
      C(44) => p01(7),
      C(43) => p01(7),
      C(42) => p01(7),
      C(41) => p01(7),
      C(40) => p01(7),
      C(39) => p01(7),
      C(38) => p01(7),
      C(37) => p01(7),
      C(36) => p01(7),
      C(35) => p01(7),
      C(34) => p01(7),
      C(33) => p01(7),
      C(32) => p01(7),
      C(31) => p01(7),
      C(30) => p01(7),
      C(29) => p01(7),
      C(28) => p01(7),
      C(27) => p01(7),
      C(26) => p01(7),
      C(25) => p01(7),
      C(24) => p01(7),
      C(23) => p01(7),
      C(22) => p01(7),
      C(21) => p01(7),
      C(20) => p01(7),
      C(19) => p01(7),
      C(18) => p01(7),
      C(17) => p01(7),
      C(16) => p01(7),
      C(15 downto 8) => p01(7 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_bottom_mix_next_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_bottom_mix_next_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => bottom_mix_next_i_1_n_0,
      CLK => aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_bottom_mix_next_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_bottom_mix_next_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_bottom_mix_next_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \bottom_mix_next__0\(15 downto 0),
      PATTERNBDETECT => NLW_bottom_mix_next_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_bottom_mix_next_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_bottom_mix_next_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_bottom_mix_next_UNDERFLOW_UNCONNECTED
    );
bottom_mix_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => bottom_mix_next_i_1_n_0
    );
coordinate_x01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => coordinate_x01_carry_n_0,
      CO(2) => coordinate_x01_carry_n_1,
      CO(1) => coordinate_x01_carry_n_2,
      CO(0) => coordinate_x01_carry_n_3,
      CYINIT => '1',
      DI(3) => coordinate_x01_carry_i_1_n_0,
      DI(2) => coordinate_x01_carry_i_2_n_0,
      DI(1) => coordinate_x01_carry_i_3_n_0,
      DI(0) => coordinate_x01_carry_i_4_n_0,
      O(3 downto 0) => NLW_coordinate_x01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => coordinate_x01_carry_i_5_n_0,
      S(2) => coordinate_x01_carry_i_6_n_0,
      S(1) => coordinate_x01_carry_i_7_n_0,
      S(0) => coordinate_x01_carry_i_8_n_0
    );
\coordinate_x01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => coordinate_x01_carry_n_0,
      CO(3) => \coordinate_x01_carry__0_n_0\,
      CO(2) => \coordinate_x01_carry__0_n_1\,
      CO(1) => \coordinate_x01_carry__0_n_2\,
      CO(0) => \coordinate_x01_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_x01_carry__0_i_1_n_0\,
      DI(2) => \coordinate_x01_carry__0_i_2_n_0\,
      DI(1) => \coordinate_x01_carry__0_i_3_n_0\,
      DI(0) => \coordinate_x01_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_x01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_x01_carry__0_i_5_n_0\,
      S(2) => \coordinate_x01_carry__0_i_6_n_0\,
      S(1) => \coordinate_x01_carry__0_i_7_n_0\,
      S(0) => \coordinate_x01_carry__0_i_8_n_0\
    );
\coordinate_x01_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BB822BB22282222"
    )
        port map (
      I0 => p_0_in(7),
      I1 => input_width(7),
      I2 => input_width(5),
      I3 => input_width(6),
      I4 => \coordinate_x01_carry__0_i_9_n_0\,
      I5 => p_0_in(6),
      O => \coordinate_x01_carry__0_i_1_n_0\
    );
\coordinate_x01_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => input_width(2),
      I1 => input_width(1),
      I2 => input_width(0),
      O => \coordinate_x01_carry__0_i_10_n_0\
    );
\coordinate_x01_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAFBC0002AAA8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \coordinate_x01_carry__0_i_10_n_0\,
      I2 => input_width(4),
      I3 => input_width(3),
      I4 => input_width(5),
      I5 => p_0_in(4),
      O => \coordinate_x01_carry__0_i_2_n_0\
    );
\coordinate_x01_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222ABBBC0002AAA8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => input_width(2),
      I2 => input_width(1),
      I3 => input_width(0),
      I4 => input_width(3),
      I5 => p_0_in(2),
      O => \coordinate_x01_carry__0_i_3_n_0\
    );
\coordinate_x01_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B828"
    )
        port map (
      I0 => p_0_in(1),
      I1 => input_width(1),
      I2 => input_width(0),
      I3 => p_0_in(0),
      O => \coordinate_x01_carry__0_i_4_n_0\
    );
\coordinate_x01_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090069009099009"
    )
        port map (
      I0 => input_width(7),
      I1 => p_0_in(7),
      I2 => input_width(6),
      I3 => \coordinate_x01_carry__0_i_9_n_0\,
      I4 => input_width(5),
      I5 => p_0_in(6),
      O => \coordinate_x01_carry__0_i_5_n_0\
    );
\coordinate_x01_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => input_width(5),
      I1 => p_0_in(5),
      I2 => input_width(4),
      I3 => \coordinate_x01_carry__0_i_10_n_0\,
      I4 => input_width(3),
      I5 => p_0_in(4),
      O => \coordinate_x01_carry__0_i_6_n_0\
    );
\coordinate_x01_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => input_width(3),
      I1 => p_0_in(3),
      I2 => input_width(2),
      I3 => input_width(1),
      I4 => input_width(0),
      I5 => p_0_in(2),
      O => \coordinate_x01_carry__0_i_7_n_0\
    );
\coordinate_x01_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0960"
    )
        port map (
      I0 => input_width(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => input_width(0),
      O => \coordinate_x01_carry__0_i_8_n_0\
    );
\coordinate_x01_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => input_width(0),
      I1 => input_width(1),
      I2 => input_width(2),
      I3 => input_width(4),
      I4 => input_width(3),
      O => \coordinate_x01_carry__0_i_9_n_0\
    );
\coordinate_x01_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_x01_carry__0_n_0\,
      CO(3) => \coordinate_x01_carry__1_n_0\,
      CO(2) => \coordinate_x01_carry__1_n_1\,
      CO(1) => \coordinate_x01_carry__1_n_2\,
      CO(0) => \coordinate_x01_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_x01_carry__1_i_1_n_0\,
      DI(2) => \coordinate_x01_carry__1_i_2_n_0\,
      DI(1) => \coordinate_x01_carry__1_i_3_n_0\,
      DI(0) => \coordinate_x01_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_x01_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_x01_carry__1_i_5_n_0\,
      S(2) => \coordinate_x01_carry__1_i_6_n_0\,
      S(1) => \coordinate_x01_carry__1_i_7_n_0\,
      S(0) => \coordinate_x01_carry__1_i_8_n_0\
    );
\coordinate_x01_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_82,
      I2 => coordinate_x02_n_83,
      O => \coordinate_x01_carry__1_i_1_n_0\
    );
\coordinate_x01_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_84,
      I2 => coordinate_x02_n_85,
      O => \coordinate_x01_carry__1_i_2_n_0\
    );
\coordinate_x01_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_86,
      I2 => coordinate_x02_n_87,
      O => \coordinate_x01_carry__1_i_3_n_0\
    );
\coordinate_x01_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_88,
      I2 => \sample_x1[8]_i_2_n_0\,
      I3 => p_0_in(8),
      O => \coordinate_x01_carry__1_i_4_n_0\
    );
\coordinate_x01_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_83,
      I2 => coordinate_x02_n_82,
      O => \coordinate_x01_carry__1_i_5_n_0\
    );
\coordinate_x01_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_85,
      I2 => coordinate_x02_n_84,
      O => \coordinate_x01_carry__1_i_6_n_0\
    );
\coordinate_x01_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_87,
      I2 => coordinate_x02_n_86,
      O => \coordinate_x01_carry__1_i_7_n_0\
    );
\coordinate_x01_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_88,
      I2 => \sample_x1[8]_i_2_n_0\,
      I3 => p_0_in(8),
      O => \coordinate_x01_carry__1_i_8_n_0\
    );
\coordinate_x01_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_x01_carry__1_n_0\,
      CO(3) => \coordinate_x01_carry__2_n_0\,
      CO(2) => \coordinate_x01_carry__2_n_1\,
      CO(1) => \coordinate_x01_carry__2_n_2\,
      CO(0) => \coordinate_x01_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_x01_carry__2_i_1_n_0\,
      DI(2) => \coordinate_x01_carry__2_i_2_n_0\,
      DI(1) => \coordinate_x01_carry__2_i_3_n_0\,
      DI(0) => \coordinate_x01_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_x01_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_x01_carry__2_i_5_n_0\,
      S(2) => \coordinate_x01_carry__2_i_6_n_0\,
      S(1) => \coordinate_x01_carry__2_i_7_n_0\,
      S(0) => \coordinate_x01_carry__2_i_8_n_0\
    );
\coordinate_x01_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => coordinate_x02_n_74,
      I1 => input_final0_carry_i_5_n_0,
      I2 => coordinate_x02_n_75,
      O => \coordinate_x01_carry__2_i_1_n_0\
    );
\coordinate_x01_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_76,
      I2 => coordinate_x02_n_77,
      O => \coordinate_x01_carry__2_i_2_n_0\
    );
\coordinate_x01_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_78,
      I2 => coordinate_x02_n_79,
      O => \coordinate_x01_carry__2_i_3_n_0\
    );
\coordinate_x01_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_80,
      I2 => coordinate_x02_n_81,
      O => \coordinate_x01_carry__2_i_4_n_0\
    );
\coordinate_x01_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => coordinate_x02_n_74,
      I1 => input_final0_carry_i_5_n_0,
      I2 => coordinate_x02_n_75,
      O => \coordinate_x01_carry__2_i_5_n_0\
    );
\coordinate_x01_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_77,
      I2 => coordinate_x02_n_76,
      O => \coordinate_x01_carry__2_i_6_n_0\
    );
\coordinate_x01_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_79,
      I2 => coordinate_x02_n_78,
      O => \coordinate_x01_carry__2_i_7_n_0\
    );
\coordinate_x01_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => coordinate_x02_n_81,
      I2 => coordinate_x02_n_80,
      O => \coordinate_x01_carry__2_i_8_n_0\
    );
coordinate_x01_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_x02_n_98,
      I1 => coordinate_x02_n_99,
      O => coordinate_x01_carry_i_1_n_0
    );
coordinate_x01_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_x02_n_100,
      I1 => coordinate_x02_n_101,
      O => coordinate_x01_carry_i_2_n_0
    );
coordinate_x01_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_x02_n_102,
      I1 => coordinate_x02_n_103,
      O => coordinate_x01_carry_i_3_n_0
    );
coordinate_x01_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_x02_n_104,
      I1 => coordinate_x02_n_105,
      O => coordinate_x01_carry_i_4_n_0
    );
coordinate_x01_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_99,
      I1 => coordinate_x02_n_98,
      O => coordinate_x01_carry_i_5_n_0
    );
coordinate_x01_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_101,
      I1 => coordinate_x02_n_100,
      O => coordinate_x01_carry_i_6_n_0
    );
coordinate_x01_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_103,
      I1 => coordinate_x02_n_102,
      O => coordinate_x01_carry_i_7_n_0
    );
coordinate_x01_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_105,
      I1 => coordinate_x02_n_104,
      O => coordinate_x01_carry_i_8_n_0
    );
\coordinate_x01_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \coordinate_x01_inferred__0/i__carry_n_0\,
      CO(2) => \coordinate_x01_inferred__0/i__carry_n_1\,
      CO(1) => \coordinate_x01_inferred__0/i__carry_n_2\,
      CO(0) => \coordinate_x01_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_x01_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\coordinate_x01_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_x01_inferred__0/i__carry_n_0\,
      CO(3) => \coordinate_x01_inferred__0/i__carry__0_n_0\,
      CO(2) => \coordinate_x01_inferred__0/i__carry__0_n_1\,
      CO(1) => \coordinate_x01_inferred__0/i__carry__0_n_2\,
      CO(0) => \coordinate_x01_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_x01_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\coordinate_x01_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_x01_inferred__0/i__carry__0_n_0\,
      CO(3) => \coordinate_x01_inferred__0/i__carry__1_n_0\,
      CO(2) => \coordinate_x01_inferred__0/i__carry__1_n_1\,
      CO(1) => \coordinate_x01_inferred__0/i__carry__1_n_2\,
      CO(0) => \coordinate_x01_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_x01_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\coordinate_x01_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_x01_inferred__0/i__carry__1_n_0\,
      CO(3) => p_2_in,
      CO(2) => \coordinate_x01_inferred__0/i__carry__2_n_1\,
      CO(1) => \coordinate_x01_inferred__0/i__carry__2_n_2\,
      CO(0) => \coordinate_x01_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => coordinate_x02_n_74,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_coordinate_x01_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
coordinate_x02: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 0,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000001",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_coordinate_x02_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 9) => B"000000000",
      B(8 downto 0) => input_width(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_coordinate_x02_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111110000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_coordinate_x02_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_coordinate_x02_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 8) => B"00000000000000000",
      D(7) => \output_x_reg_n_0_[6]\,
      D(6) => \output_x_reg_n_0_[5]\,
      D(5) => \output_x_reg_n_0_[4]\,
      D(4) => \output_x_reg_n_0_[3]\,
      D(3) => \output_x_reg_n_0_[2]\,
      D(2) => \output_x_reg_n_0_[1]\,
      D(1) => \output_x_reg_n_0_[0]\,
      D(0) => '0',
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_coordinate_x02_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_coordinate_x02_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_coordinate_x02_P_UNCONNECTED(47 downto 32),
      P(31) => coordinate_x02_n_74,
      P(30) => coordinate_x02_n_75,
      P(29) => coordinate_x02_n_76,
      P(28) => coordinate_x02_n_77,
      P(27) => coordinate_x02_n_78,
      P(26) => coordinate_x02_n_79,
      P(25) => coordinate_x02_n_80,
      P(24) => coordinate_x02_n_81,
      P(23) => coordinate_x02_n_82,
      P(22) => coordinate_x02_n_83,
      P(21) => coordinate_x02_n_84,
      P(20) => coordinate_x02_n_85,
      P(19) => coordinate_x02_n_86,
      P(18) => coordinate_x02_n_87,
      P(17) => coordinate_x02_n_88,
      P(16 downto 8) => p_0_in(8 downto 0),
      P(7) => coordinate_x02_n_98,
      P(6) => coordinate_x02_n_99,
      P(5) => coordinate_x02_n_100,
      P(4) => coordinate_x02_n_101,
      P(3) => coordinate_x02_n_102,
      P(2) => coordinate_x02_n_103,
      P(1) => coordinate_x02_n_104,
      P(0) => coordinate_x02_n_105,
      PATTERNBDETECT => NLW_coordinate_x02_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_coordinate_x02_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_coordinate_x02_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_coordinate_x02_UNDERFLOW_UNCONNECTED
    );
coordinate_y01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => coordinate_y01_carry_n_0,
      CO(2) => coordinate_y01_carry_n_1,
      CO(1) => coordinate_y01_carry_n_2,
      CO(0) => coordinate_y01_carry_n_3,
      CYINIT => '1',
      DI(3) => coordinate_y01_carry_i_1_n_0,
      DI(2) => coordinate_y01_carry_i_2_n_0,
      DI(1) => coordinate_y01_carry_i_3_n_0,
      DI(0) => coordinate_y01_carry_i_4_n_0,
      O(3 downto 0) => NLW_coordinate_y01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => coordinate_y01_carry_i_5_n_0,
      S(2) => coordinate_y01_carry_i_6_n_0,
      S(1) => coordinate_y01_carry_i_7_n_0,
      S(0) => coordinate_y01_carry_i_8_n_0
    );
\coordinate_y01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => coordinate_y01_carry_n_0,
      CO(3) => \coordinate_y01_carry__0_n_0\,
      CO(2) => \coordinate_y01_carry__0_n_1\,
      CO(1) => \coordinate_y01_carry__0_n_2\,
      CO(0) => \coordinate_y01_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_y01_carry__0_i_1_n_0\,
      DI(2) => \coordinate_y01_carry__0_i_2_n_0\,
      DI(1) => \coordinate_y01_carry__0_i_3_n_0\,
      DI(0) => \coordinate_y01_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_y01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_y01_carry__0_i_5_n_0\,
      S(2) => \coordinate_y01_carry__0_i_6_n_0\,
      S(1) => \coordinate_y01_carry__0_i_7_n_0\,
      S(0) => \coordinate_y01_carry__0_i_8_n_0\
    );
\coordinate_y01_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2CB208A"
    )
        port map (
      I0 => coordinate_y02_n_90,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \i__carry_i_5_n_0\,
      I3 => \input_height_reg_n_0_[7]\,
      I4 => coordinate_y02_n_91,
      O => \coordinate_y01_carry__0_i_1_n_0\
    );
\coordinate_y01_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAFBC0002AAA8"
    )
        port map (
      I0 => coordinate_y02_n_92,
      I1 => \coordinate_y01_carry__0_i_9_n_0\,
      I2 => \input_height_reg_n_0_[4]\,
      I3 => \input_height_reg_n_0_[3]\,
      I4 => \input_height_reg_n_0_[5]\,
      I5 => coordinate_y02_n_93,
      O => \coordinate_y01_carry__0_i_2_n_0\
    );
\coordinate_y01_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222ABBBC0002AAA8"
    )
        port map (
      I0 => coordinate_y02_n_94,
      I1 => \input_height_reg_n_0_[2]\,
      I2 => \input_height_reg_n_0_[1]\,
      I3 => \input_height_reg_n_0_[0]\,
      I4 => \input_height_reg_n_0_[3]\,
      I5 => coordinate_y02_n_95,
      O => \coordinate_y01_carry__0_i_3_n_0\
    );
\coordinate_y01_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B828"
    )
        port map (
      I0 => coordinate_y02_n_96,
      I1 => \input_height_reg_n_0_[1]\,
      I2 => \input_height_reg_n_0_[0]\,
      I3 => coordinate_y02_n_97,
      O => \coordinate_y01_carry__0_i_4_n_0\
    );
\coordinate_y01_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => \input_height_reg_n_0_[7]\,
      I1 => coordinate_y02_n_90,
      I2 => \input_height_reg_n_0_[6]\,
      I3 => \i__carry_i_5_n_0\,
      I4 => coordinate_y02_n_91,
      O => \coordinate_y01_carry__0_i_5_n_0\
    );
\coordinate_y01_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => \input_height_reg_n_0_[5]\,
      I1 => coordinate_y02_n_92,
      I2 => \input_height_reg_n_0_[4]\,
      I3 => \coordinate_y01_carry__0_i_9_n_0\,
      I4 => \input_height_reg_n_0_[3]\,
      I5 => coordinate_y02_n_93,
      O => \coordinate_y01_carry__0_i_6_n_0\
    );
\coordinate_y01_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => \input_height_reg_n_0_[3]\,
      I1 => coordinate_y02_n_94,
      I2 => \input_height_reg_n_0_[2]\,
      I3 => \input_height_reg_n_0_[1]\,
      I4 => \input_height_reg_n_0_[0]\,
      I5 => coordinate_y02_n_95,
      O => \coordinate_y01_carry__0_i_7_n_0\
    );
\coordinate_y01_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0960"
    )
        port map (
      I0 => \input_height_reg_n_0_[1]\,
      I1 => coordinate_y02_n_96,
      I2 => coordinate_y02_n_97,
      I3 => \input_height_reg_n_0_[0]\,
      O => \coordinate_y01_carry__0_i_8_n_0\
    );
\coordinate_y01_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \input_height_reg_n_0_[2]\,
      I1 => \input_height_reg_n_0_[1]\,
      I2 => \input_height_reg_n_0_[0]\,
      O => \coordinate_y01_carry__0_i_9_n_0\
    );
\coordinate_y01_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_y01_carry__0_n_0\,
      CO(3) => \coordinate_y01_carry__1_n_0\,
      CO(2) => \coordinate_y01_carry__1_n_1\,
      CO(1) => \coordinate_y01_carry__1_n_2\,
      CO(0) => \coordinate_y01_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_y01_carry__1_i_1_n_0\,
      DI(2) => \coordinate_y01_carry__1_i_2_n_0\,
      DI(1) => \coordinate_y01_carry__1_i_3_n_0\,
      DI(0) => \coordinate_y01_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_y01_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_y01_carry__1_i_5_n_0\,
      S(2) => \coordinate_y01_carry__1_i_6_n_0\,
      S(1) => \coordinate_y01_carry__1_i_7_n_0\,
      S(0) => \coordinate_y01_carry__1_i_8_n_0\
    );
\coordinate_y01_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_82,
      I5 => coordinate_y02_n_83,
      O => \coordinate_y01_carry__1_i_1_n_0\
    );
\coordinate_y01_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_84,
      I5 => coordinate_y02_n_85,
      O => \coordinate_y01_carry__1_i_2_n_0\
    );
\coordinate_y01_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_86,
      I5 => coordinate_y02_n_87,
      O => \coordinate_y01_carry__1_i_3_n_0\
    );
\coordinate_y01_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEAEE0AE"
    )
        port map (
      I0 => coordinate_y02_n_88,
      I1 => coordinate_y02_n_89,
      I2 => \input_height_reg_n_0_[8]\,
      I3 => \i__carry_i_5_n_0\,
      I4 => \input_height_reg_n_0_[6]\,
      I5 => \input_height_reg_n_0_[7]\,
      O => \coordinate_y01_carry__1_i_4_n_0\
    );
\coordinate_y01_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_83,
      I5 => coordinate_y02_n_82,
      O => \coordinate_y01_carry__1_i_5_n_0\
    );
\coordinate_y01_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_85,
      I5 => coordinate_y02_n_84,
      O => \coordinate_y01_carry__1_i_6_n_0\
    );
\coordinate_y01_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_87,
      I5 => coordinate_y02_n_86,
      O => \coordinate_y01_carry__1_i_7_n_0\
    );
\coordinate_y01_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444442411111141"
    )
        port map (
      I0 => coordinate_y02_n_88,
      I1 => \input_height_reg_n_0_[8]\,
      I2 => \i__carry_i_5_n_0\,
      I3 => \input_height_reg_n_0_[6]\,
      I4 => \input_height_reg_n_0_[7]\,
      I5 => coordinate_y02_n_89,
      O => \coordinate_y01_carry__1_i_8_n_0\
    );
\coordinate_y01_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_y01_carry__1_n_0\,
      CO(3) => \coordinate_y01_carry__2_n_0\,
      CO(2) => \coordinate_y01_carry__2_n_1\,
      CO(1) => \coordinate_y01_carry__2_n_2\,
      CO(0) => \coordinate_y01_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \coordinate_y01_carry__2_i_1_n_0\,
      DI(2) => \coordinate_y01_carry__2_i_2_n_0\,
      DI(1) => \coordinate_y01_carry__2_i_3_n_0\,
      DI(0) => \coordinate_y01_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_coordinate_y01_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \coordinate_y01_carry__2_i_5_n_0\,
      S(2) => \coordinate_y01_carry__2_i_6_n_0\,
      S(1) => \coordinate_y01_carry__2_i_7_n_0\,
      S(0) => \coordinate_y01_carry__2_i_8_n_0\
    );
\coordinate_y01_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000002"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_74,
      I5 => coordinate_y02_n_75,
      O => \coordinate_y01_carry__2_i_1_n_0\
    );
\coordinate_y01_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_76,
      I5 => coordinate_y02_n_77,
      O => \coordinate_y01_carry__2_i_2_n_0\
    );
\coordinate_y01_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_78,
      I5 => coordinate_y02_n_79,
      O => \coordinate_y01_carry__2_i_3_n_0\
    );
\coordinate_y01_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_80,
      I5 => coordinate_y02_n_81,
      O => \coordinate_y01_carry__2_i_4_n_0\
    );
\coordinate_y01_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_74,
      I5 => coordinate_y02_n_75,
      O => \coordinate_y01_carry__2_i_5_n_0\
    );
\coordinate_y01_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_77,
      I5 => coordinate_y02_n_76,
      O => \coordinate_y01_carry__2_i_6_n_0\
    );
\coordinate_y01_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_79,
      I5 => coordinate_y02_n_78,
      O => \coordinate_y01_carry__2_i_7_n_0\
    );
\coordinate_y01_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => coordinate_y02_n_81,
      I5 => coordinate_y02_n_80,
      O => \coordinate_y01_carry__2_i_8_n_0\
    );
coordinate_y01_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_y02_n_98,
      I1 => coordinate_y02_n_99,
      O => coordinate_y01_carry_i_1_n_0
    );
coordinate_y01_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_y02_n_100,
      I1 => coordinate_y02_n_101,
      O => coordinate_y01_carry_i_2_n_0
    );
coordinate_y01_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_y02_n_102,
      I1 => coordinate_y02_n_103,
      O => coordinate_y01_carry_i_3_n_0
    );
coordinate_y01_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => coordinate_y02_n_104,
      I1 => coordinate_y02_n_105,
      O => coordinate_y01_carry_i_4_n_0
    );
coordinate_y01_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_99,
      I1 => coordinate_y02_n_98,
      O => coordinate_y01_carry_i_5_n_0
    );
coordinate_y01_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_101,
      I1 => coordinate_y02_n_100,
      O => coordinate_y01_carry_i_6_n_0
    );
coordinate_y01_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_103,
      I1 => coordinate_y02_n_102,
      O => coordinate_y01_carry_i_7_n_0
    );
coordinate_y01_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_105,
      I1 => coordinate_y02_n_104,
      O => coordinate_y01_carry_i_8_n_0
    );
\coordinate_y01_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \coordinate_y01_inferred__0/i__carry_n_0\,
      CO(2) => \coordinate_y01_inferred__0/i__carry_n_1\,
      CO(1) => \coordinate_y01_inferred__0/i__carry_n_2\,
      CO(0) => \coordinate_y01_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_y01_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\coordinate_y01_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_y01_inferred__0/i__carry_n_0\,
      CO(3) => \coordinate_y01_inferred__0/i__carry__0_n_0\,
      CO(2) => \coordinate_y01_inferred__0/i__carry__0_n_1\,
      CO(1) => \coordinate_y01_inferred__0/i__carry__0_n_2\,
      CO(0) => \coordinate_y01_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_y01_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\coordinate_y01_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_y01_inferred__0/i__carry__0_n_0\,
      CO(3) => \coordinate_y01_inferred__0/i__carry__1_n_0\,
      CO(2) => \coordinate_y01_inferred__0/i__carry__1_n_1\,
      CO(1) => \coordinate_y01_inferred__0/i__carry__1_n_2\,
      CO(0) => \coordinate_y01_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_coordinate_y01_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\coordinate_y01_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \coordinate_y01_inferred__0/i__carry__1_n_0\,
      CO(3) => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      CO(2) => \coordinate_y01_inferred__0/i__carry__2_n_1\,
      CO(1) => \coordinate_y01_inferred__0/i__carry__2_n_2\,
      CO(0) => \coordinate_y01_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => coordinate_y02_n_74,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_coordinate_y01_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
coordinate_y02: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 0,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 0,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => true,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000001",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_coordinate_y02_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 9) => B"000000000",
      B(8) => \input_height_reg_n_0_[8]\,
      B(7) => \input_height_reg_n_0_[7]\,
      B(6) => \input_height_reg_n_0_[6]\,
      B(5) => \input_height_reg_n_0_[5]\,
      B(4) => \input_height_reg_n_0_[4]\,
      B(3) => \input_height_reg_n_0_[3]\,
      B(2) => \input_height_reg_n_0_[2]\,
      B(1) => \input_height_reg_n_0_[1]\,
      B(0) => \input_height_reg_n_0_[0]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_coordinate_y02_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111110000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_coordinate_y02_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_coordinate_y02_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 8) => B"00000000000000000",
      D(7) => \output_y_reg_n_0_[6]\,
      D(6) => \output_y_reg_n_0_[5]\,
      D(5) => \output_y_reg_n_0_[4]\,
      D(4) => \output_y_reg_n_0_[3]\,
      D(3) => \output_y_reg_n_0_[2]\,
      D(2) => \output_y_reg_n_0_[1]\,
      D(1) => \output_y_reg_n_0_[0]\,
      D(0) => '0',
      INMODE(4 downto 0) => B"00100",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_coordinate_y02_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_coordinate_y02_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_coordinate_y02_P_UNCONNECTED(47 downto 32),
      P(31) => coordinate_y02_n_74,
      P(30) => coordinate_y02_n_75,
      P(29) => coordinate_y02_n_76,
      P(28) => coordinate_y02_n_77,
      P(27) => coordinate_y02_n_78,
      P(26) => coordinate_y02_n_79,
      P(25) => coordinate_y02_n_80,
      P(24) => coordinate_y02_n_81,
      P(23) => coordinate_y02_n_82,
      P(22) => coordinate_y02_n_83,
      P(21) => coordinate_y02_n_84,
      P(20) => coordinate_y02_n_85,
      P(19) => coordinate_y02_n_86,
      P(18) => coordinate_y02_n_87,
      P(17) => coordinate_y02_n_88,
      P(16) => coordinate_y02_n_89,
      P(15) => coordinate_y02_n_90,
      P(14) => coordinate_y02_n_91,
      P(13) => coordinate_y02_n_92,
      P(12) => coordinate_y02_n_93,
      P(11) => coordinate_y02_n_94,
      P(10) => coordinate_y02_n_95,
      P(9) => coordinate_y02_n_96,
      P(8) => coordinate_y02_n_97,
      P(7) => coordinate_y02_n_98,
      P(6) => coordinate_y02_n_99,
      P(5) => coordinate_y02_n_100,
      P(4) => coordinate_y02_n_101,
      P(3) => coordinate_y02_n_102,
      P(2) => coordinate_y02_n_103,
      P(1) => coordinate_y02_n_104,
      P(0) => coordinate_y02_n_105,
      PATTERNBDETECT => NLW_coordinate_y02_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_coordinate_y02_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_coordinate_y02_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_coordinate_y02_UNDERFLOW_UNCONNECTED
    );
dma_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => dma_tready
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => done_reg_0,
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \state[1]_i_2_n_0\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => done_i_1_n_0,
      Q => resize_done
    );
frame_mem_reg_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_0_n_0,
      CASCADEOUTB => frame_mem_reg_0_0_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_0_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_0_i_14_n_0,
      WEA(2) => frame_mem_reg_0_0_i_14_n_0,
      WEA(1) => frame_mem_reg_0_0_i_14_n_0,
      WEA(0) => frame_mem_reg_0_0_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => frame_mem_reg_0_0_i_2_n_0,
      CO(3 downto 0) => NLW_frame_mem_reg_0_0_i_1_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_frame_mem_reg_0_0_i_1_O_UNCONNECTED(3 downto 1),
      O(0) => \write_address__0\(15),
      S(3 downto 1) => B"000",
      S(0) => \input_y_reg_n_0_[7]\
    );
frame_mem_reg_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(3),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(3),
      O => C(3)
    );
frame_mem_reg_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(2),
      O => C(2)
    );
frame_mem_reg_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(1),
      O => C(1)
    );
frame_mem_reg_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(0),
      O => C(0)
    );
frame_mem_reg_0_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_0_0_i_14_n_0
    );
frame_mem_reg_0_0_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \input_y_reg_n_0_[2]\,
      I1 => input_x(10),
      O => frame_mem_reg_0_0_i_15_n_0
    );
frame_mem_reg_0_0_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \input_y_reg_n_0_[1]\,
      I1 => input_x(9),
      O => frame_mem_reg_0_0_i_16_n_0
    );
frame_mem_reg_0_0_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \input_y_reg_n_0_[0]\,
      I1 => input_x(8),
      O => frame_mem_reg_0_0_i_17_n_0
    );
frame_mem_reg_0_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(7),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(7),
      O => frame_mem_reg_0_0_i_18_n_0
    );
frame_mem_reg_0_0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(6),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(6),
      O => frame_mem_reg_0_0_i_19_n_0
    );
frame_mem_reg_0_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => frame_mem_reg_0_0_i_3_n_0,
      CO(3) => frame_mem_reg_0_0_i_2_n_0,
      CO(2) => frame_mem_reg_0_0_i_2_n_1,
      CO(1) => frame_mem_reg_0_0_i_2_n_2,
      CO(0) => frame_mem_reg_0_0_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \write_address__0\(14 downto 11),
      S(3) => \input_y_reg_n_0_[6]\,
      S(2) => \input_y_reg_n_0_[5]\,
      S(1) => \input_y_reg_n_0_[4]\,
      S(0) => \input_y_reg_n_0_[3]\
    );
frame_mem_reg_0_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(5),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(5),
      O => frame_mem_reg_0_0_i_20_n_0
    );
frame_mem_reg_0_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(4),
      O => frame_mem_reg_0_0_i_21_n_0
    );
frame_mem_reg_0_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(3),
      O => frame_mem_reg_0_0_i_22_n_0
    );
frame_mem_reg_0_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(8),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(8),
      O => \C__0\(8)
    );
frame_mem_reg_0_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(2),
      O => frame_mem_reg_0_0_i_24_n_0
    );
frame_mem_reg_0_0_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEABF00002A80"
    )
        port map (
      I0 => sample_y0(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => sample_y1(1),
      O => frame_mem_reg_0_0_i_25_n_0
    );
frame_mem_reg_0_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D1DE2E2E21DE2"
    )
        port map (
      I0 => sample_x1(8),
      I1 => frame_mem_reg_0_0_i_28_n_0,
      I2 => sample_x0(8),
      I3 => sample_y1(0),
      I4 => frame_mem_reg_0_0_i_29_n_0,
      I5 => sample_y0(0),
      O => frame_mem_reg_0_0_i_26_n_0
    );
frame_mem_reg_0_0_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(7),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(7),
      O => \C__0\(7)
    );
frame_mem_reg_0_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3006"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => frame_mem_reg_0_0_i_28_n_0
    );
frame_mem_reg_0_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => frame_mem_reg_0_0_i_29_n_0
    );
frame_mem_reg_0_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_mem_reg_0_0_i_3_n_0,
      CO(2) => frame_mem_reg_0_0_i_3_n_1,
      CO(1) => frame_mem_reg_0_0_i_3_n_2,
      CO(0) => frame_mem_reg_0_0_i_3_n_3,
      CYINIT => '0',
      DI(3) => \input_y_reg_n_0_[2]\,
      DI(2) => \input_y_reg_n_0_[1]\,
      DI(1) => \input_y_reg_n_0_[0]\,
      DI(0) => '0',
      O(3 downto 0) => \write_address__0\(10 downto 7),
      S(3) => frame_mem_reg_0_0_i_15_n_0,
      S(2) => frame_mem_reg_0_0_i_16_n_0,
      S(1) => frame_mem_reg_0_0_i_17_n_0,
      S(0) => input_x(7)
    );
frame_mem_reg_0_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => frame_mem_reg_0_0_i_5_n_0,
      CO(3 downto 0) => NLW_frame_mem_reg_0_0_i_4_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_frame_mem_reg_0_0_i_4_O_UNCONNECTED(3 downto 1),
      O(0) => frame_mem_reg_0_0_i_4_n_7,
      S(3 downto 1) => B"000",
      S(0) => frame_mem_reg_0_0_i_18_n_0
    );
frame_mem_reg_0_0_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => frame_mem_reg_0_0_i_6_n_0,
      CO(3) => frame_mem_reg_0_0_i_5_n_0,
      CO(2) => frame_mem_reg_0_0_i_5_n_1,
      CO(1) => frame_mem_reg_0_0_i_5_n_2,
      CO(0) => frame_mem_reg_0_0_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => frame_mem_reg_0_0_i_5_n_4,
      O(2) => frame_mem_reg_0_0_i_5_n_5,
      O(1) => frame_mem_reg_0_0_i_5_n_6,
      O(0) => frame_mem_reg_0_0_i_5_n_7,
      S(3) => frame_mem_reg_0_0_i_19_n_0,
      S(2) => frame_mem_reg_0_0_i_20_n_0,
      S(1) => frame_mem_reg_0_0_i_21_n_0,
      S(0) => frame_mem_reg_0_0_i_22_n_0
    );
frame_mem_reg_0_0_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_mem_reg_0_0_i_6_n_0,
      CO(2) => frame_mem_reg_0_0_i_6_n_1,
      CO(1) => frame_mem_reg_0_0_i_6_n_2,
      CO(0) => frame_mem_reg_0_0_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \C__0\(8),
      DI(0) => '0',
      O(3) => frame_mem_reg_0_0_i_6_n_4,
      O(2) => frame_mem_reg_0_0_i_6_n_5,
      O(1) => frame_mem_reg_0_0_i_6_n_6,
      O(0) => frame_mem_reg_0_0_i_6_n_7,
      S(3) => frame_mem_reg_0_0_i_24_n_0,
      S(2) => frame_mem_reg_0_0_i_25_n_0,
      S(1) => frame_mem_reg_0_0_i_26_n_0,
      S(0) => \C__0\(7)
    );
frame_mem_reg_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(6),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(6),
      O => C(6)
    );
frame_mem_reg_0_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(5),
      O => C(5)
    );
frame_mem_reg_0_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFEB0A000028"
    )
        port map (
      I0 => sample_x0(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => sample_x1(4),
      O => C(4)
    );
frame_mem_reg_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_1_n_0,
      CASCADEOUTB => frame_mem_reg_0_1_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_1_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_1_i_1_n_0,
      WEA(2) => frame_mem_reg_0_1_i_1_n_0,
      WEA(1) => frame_mem_reg_0_0_i_14_n_0,
      WEA(0) => frame_mem_reg_0_0_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_0_1_i_1_n_0
    );
frame_mem_reg_0_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_2_n_0,
      CASCADEOUTB => frame_mem_reg_0_2_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_2_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_1_i_1_n_0,
      WEA(2) => frame_mem_reg_0_1_i_1_n_0,
      WEA(1) => frame_mem_reg_0_1_i_1_n_0,
      WEA(0) => frame_mem_reg_0_1_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_3_n_0,
      CASCADEOUTB => frame_mem_reg_0_3_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_3_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_3_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_2_i_1_n_0,
      WEA(2) => frame_mem_reg_1_2_i_1_n_0,
      WEA(1) => frame_mem_reg_1_2_i_1_n_0,
      WEA(0) => frame_mem_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_4_n_0,
      CASCADEOUTB => frame_mem_reg_0_4_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_3_i_1_n_0,
      WEA(2) => frame_mem_reg_1_3_i_1_n_0,
      WEA(1) => frame_mem_reg_1_3_i_1_n_0,
      WEA(0) => frame_mem_reg_1_3_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_5_n_0,
      CASCADEOUTB => frame_mem_reg_0_5_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_5_i_1_n_0,
      WEA(2) => frame_mem_reg_0_5_i_1_n_0,
      WEA(1) => frame_mem_reg_0_5_i_1_n_0,
      WEA(0) => frame_mem_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_0_5_i_1_n_0
    );
frame_mem_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_6_n_0,
      CASCADEOUTB => frame_mem_reg_0_6_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_6_i_1_n_0,
      WEA(2) => frame_mem_reg_0_6_i_1_n_0,
      WEA(1) => frame_mem_reg_0_5_i_1_n_0,
      WEA(0) => frame_mem_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_0_6_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_0_6_i_1_n_0
    );
frame_mem_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_mem_reg_0_7_n_0,
      CASCADEOUTB => frame_mem_reg_0_7_n_1,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_0_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_0_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_mem_reg_0_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_6_i_1_n_0,
      WEA(2) => frame_mem_reg_0_6_i_1_n_0,
      WEA(1) => frame_mem_reg_0_6_i_1_n_0,
      WEA(0) => frame_mem_reg_0_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_0_n_0,
      CASCADEINB => frame_mem_reg_0_0_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(0),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_0_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_0_i_14_n_0,
      WEA(2) => frame_mem_reg_0_0_i_14_n_0,
      WEA(1) => frame_mem_reg_0_0_i_14_n_0,
      WEA(0) => frame_mem_reg_0_0_i_14_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_1_n_0,
      CASCADEINB => frame_mem_reg_0_1_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(1),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_1_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_1_i_1_n_0,
      WEA(2) => frame_mem_reg_0_1_i_1_n_0,
      WEA(1) => frame_mem_reg_0_1_i_1_n_0,
      WEA(0) => frame_mem_reg_0_1_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_2_n_0,
      CASCADEINB => frame_mem_reg_0_2_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_2_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(2),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_2_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_2_i_1_n_0,
      WEA(2) => frame_mem_reg_1_2_i_1_n_0,
      WEA(1) => frame_mem_reg_1_2_i_1_n_0,
      WEA(0) => frame_mem_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_1_2_i_1_n_0
    );
frame_mem_reg_1_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_3_n_0,
      CASCADEINB => frame_mem_reg_0_3_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_3_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(3),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_3_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_3_i_1_n_0,
      WEA(2) => frame_mem_reg_1_3_i_1_n_0,
      WEA(1) => frame_mem_reg_1_2_i_1_n_0,
      WEA(0) => frame_mem_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_1_3_i_1_n_0
    );
frame_mem_reg_1_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_4_n_0,
      CASCADEINB => frame_mem_reg_0_4_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(4),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_4_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_3_i_1_n_0,
      WEA(2) => frame_mem_reg_1_3_i_1_n_0,
      WEA(1) => frame_mem_reg_1_3_i_1_n_0,
      WEA(0) => frame_mem_reg_1_3_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_5_n_0,
      CASCADEINB => frame_mem_reg_0_5_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(5),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_5_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_5_i_1_n_0,
      WEA(2) => frame_mem_reg_0_5_i_1_n_0,
      WEA(1) => frame_mem_reg_0_5_i_1_n_0,
      WEA(0) => frame_mem_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_6_n_0,
      CASCADEINB => frame_mem_reg_0_6_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(6),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_6_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_0_6_i_1_n_0,
      WEA(2) => frame_mem_reg_0_6_i_1_n_0,
      WEA(1) => frame_mem_reg_0_6_i_1_n_0,
      WEA(0) => frame_mem_reg_0_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 7) => \write_address__0\(15 downto 7),
      ADDRARDADDR(6 downto 0) => input_x(6 downto 0),
      ADDRBWRADDR(15) => frame_mem_reg_0_0_i_4_n_7,
      ADDRBWRADDR(14) => frame_mem_reg_0_0_i_5_n_4,
      ADDRBWRADDR(13) => frame_mem_reg_0_0_i_5_n_5,
      ADDRBWRADDR(12) => frame_mem_reg_0_0_i_5_n_6,
      ADDRBWRADDR(11) => frame_mem_reg_0_0_i_5_n_7,
      ADDRBWRADDR(10) => frame_mem_reg_0_0_i_6_n_4,
      ADDRBWRADDR(9) => frame_mem_reg_0_0_i_6_n_5,
      ADDRBWRADDR(8) => frame_mem_reg_0_0_i_6_n_6,
      ADDRBWRADDR(7) => frame_mem_reg_0_0_i_6_n_7,
      ADDRBWRADDR(6 downto 0) => C(6 downto 0),
      CASCADEINA => frame_mem_reg_0_7_n_0,
      CASCADEINB => frame_mem_reg_0_7_n_1,
      CASCADEOUTA => NLW_frame_mem_reg_1_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_mem_reg_1_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_frame_mem_reg_1_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dma_tdata(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_mem_reg_1_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_mem_reg_1_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_mem_reg_1_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_mem_reg_1_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => ram_read_data(7),
      DOPADOP(3 downto 0) => NLW_frame_mem_reg_1_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_mem_reg_1_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_mem_reg_1_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dma_tvalid,
      ENBWREN => '1',
      INJECTDBITERR => NLW_frame_mem_reg_1_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_mem_reg_1_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_mem_reg_1_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_mem_reg_1_7_SBITERR_UNCONNECTED,
      WEA(3) => frame_mem_reg_1_7_i_1_n_0,
      WEA(2) => frame_mem_reg_1_7_i_1_n_0,
      WEA(1) => frame_mem_reg_1_7_i_1_n_0,
      WEA(0) => frame_mem_reg_1_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_mem_reg_1_7_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => frame_mem_reg_1_7_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_91,
      I1 => coordinate_y02_n_90,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_93,
      I1 => coordinate_y02_n_92,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_95,
      I1 => coordinate_y02_n_94,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_97,
      I1 => coordinate_y02_n_96,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_83,
      I1 => coordinate_y02_n_82,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_83,
      I1 => coordinate_x02_n_82,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_85,
      I1 => coordinate_y02_n_84,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_85,
      I1 => coordinate_x02_n_84,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_87,
      I1 => coordinate_y02_n_86,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_87,
      I1 => coordinate_x02_n_86,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_89,
      I1 => coordinate_y02_n_88,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(8),
      I1 => coordinate_x02_n_88,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_75,
      I1 => coordinate_y02_n_74,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_75,
      I1 => coordinate_x02_n_74,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_77,
      I1 => coordinate_y02_n_76,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_77,
      I1 => coordinate_x02_n_76,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_79,
      I1 => coordinate_y02_n_78,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_79,
      I1 => coordinate_x02_n_78,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_81,
      I1 => coordinate_y02_n_80,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_81,
      I1 => coordinate_x02_n_80,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_99,
      I1 => coordinate_y02_n_98,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_99,
      I1 => coordinate_x02_n_98,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002FFFD"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \input_height_reg_n_0_[6]\,
      I2 => \input_height_reg_n_0_[7]\,
      I3 => \input_height_reg_n_0_[8]\,
      I4 => \input_y_reg_n_0_[9]\,
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000099009900000"
    )
        port map (
      I0 => \sample_y1[6]_i_2_n_0\,
      I1 => \input_y_reg_n_0_[6]\,
      I2 => \input_y_reg_n_0_[7]\,
      I3 => \sample_y1[7]_i_4_n_0\,
      I4 => \input_y_reg_n_0_[8]\,
      I5 => \i__carry_i_6_n_0\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_101,
      I1 => coordinate_y02_n_100,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_101,
      I1 => coordinate_x02_n_100,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \sample_y1[3]_i_3_n_0\,
      I1 => \input_y_reg_n_0_[3]\,
      I2 => \input_y_reg_n_0_[5]\,
      I3 => \sample_y1[5]_i_3_n_0\,
      I4 => \input_y_reg_n_0_[4]\,
      I5 => \sample_y1[4]_i_3_n_0\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_103,
      I1 => coordinate_y02_n_102,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_103,
      I1 => coordinate_x02_n_102,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000096090090000"
    )
        port map (
      I0 => \input_height_reg_n_0_[2]\,
      I1 => \input_y_reg_n_0_[2]\,
      I2 => \input_y_reg_n_0_[1]\,
      I3 => \input_height_reg_n_0_[1]\,
      I4 => \input_height_reg_n_0_[0]\,
      I5 => \input_y_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_y02_n_105,
      I1 => coordinate_y02_n_104,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => coordinate_x02_n_105,
      I1 => coordinate_x02_n_104,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \input_height_reg_n_0_[1]\,
      I1 => \input_height_reg_n_0_[0]\,
      I2 => \input_height_reg_n_0_[2]\,
      I3 => \input_height_reg_n_0_[5]\,
      I4 => \input_height_reg_n_0_[3]\,
      I5 => \input_height_reg_n_0_[4]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5559"
    )
        port map (
      I0 => \input_height_reg_n_0_[8]\,
      I1 => \i__carry_i_5_n_0\,
      I2 => \input_height_reg_n_0_[6]\,
      I3 => \input_height_reg_n_0_[7]\,
      O => \i__carry_i_6_n_0\
    );
input_final0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => input_final0,
      CO(2) => input_final0_carry_n_1,
      CO(1) => input_final0_carry_n_2,
      CO(0) => input_final0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_input_final0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => input_final0_carry_i_1_n_0,
      S(2) => input_final0_carry_i_2_n_0,
      S(1) => input_final0_carry_i_3_n_0,
      S(0) => input_final0_carry_i_4_n_0
    );
input_final0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => input_final0_carry_i_5_n_0,
      I1 => input_x(9),
      I2 => input_x(10),
      O => input_final0_carry_i_1_n_0
    );
input_final0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000099009900000"
    )
        port map (
      I0 => \sample_x1[8]_i_2_n_0\,
      I1 => input_x(8),
      I2 => input_x(7),
      I3 => \sample_x1[7]_i_3_n_0\,
      I4 => input_x(6),
      I5 => \sample_x1[6]_i_2_n_0\,
      O => input_final0_carry_i_2_n_0
    );
input_final0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000099009900000"
    )
        port map (
      I0 => \sample_x1[5]_i_3_n_0\,
      I1 => input_x(5),
      I2 => input_x(3),
      I3 => \sample_x1[3]_i_3_n_0\,
      I4 => input_x(4),
      I5 => \sample_x1[4]_i_3_n_0\,
      O => input_final0_carry_i_3_n_0
    );
input_final0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000096090090000"
    )
        port map (
      I0 => input_width(2),
      I1 => input_x(2),
      I2 => input_x(1),
      I3 => input_width(1),
      I4 => input_width(0),
      I5 => input_x(0),
      O => input_final0_carry_i_4_n_0
    );
input_final0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => input_width(0),
      I1 => input_width(1),
      I2 => input_width(2),
      I3 => \sample_x1[0]_i_3_n_0\,
      O => input_final0_carry_i_5_n_0
    );
\input_final0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \input_final0_inferred__0/i__carry_n_0\,
      CO(2) => \input_final0_inferred__0/i__carry_n_1\,
      CO(1) => \input_final0_inferred__0/i__carry_n_2\,
      CO(0) => \input_final0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_input_final0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__8_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\input_height[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => control(9),
      O => \^control[28]\(0)
    );
\input_height[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => control(9),
      I1 => control(10),
      O => \^control[28]\(1)
    );
\input_height[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => control(11),
      I1 => control(9),
      I2 => control(10),
      O => \^control[28]\(2)
    );
\input_height[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => control(12),
      I1 => control(11),
      I2 => control(9),
      I3 => control(10),
      O => \^control[28]\(3)
    );
\input_height[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => control(13),
      I1 => control(10),
      I2 => control(9),
      I3 => control(11),
      I4 => control(12),
      O => \^control[28]\(4)
    );
\input_height[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => control(14),
      I1 => control(12),
      I2 => control(11),
      I3 => control(9),
      I4 => control(10),
      I5 => control(13),
      O => \^control[28]\(5)
    );
\input_height[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => control(15),
      I1 => control(13),
      I2 => \input_height[8]_i_2_n_0\,
      I3 => control(14),
      O => \^control[28]\(6)
    );
\input_height[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => control(16),
      I1 => control(14),
      I2 => \input_height[8]_i_2_n_0\,
      I3 => control(13),
      I4 => control(15),
      O => \^control[28]\(7)
    );
\input_height[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => control(16),
      I1 => control(14),
      I2 => \input_height[8]_i_2_n_0\,
      I3 => control(13),
      I4 => control(15),
      O => \^control[28]\(8)
    );
\input_height[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => control(12),
      I1 => control(11),
      I2 => control(9),
      I3 => control(10),
      O => \input_height[8]_i_2_n_0\
    );
\input_height_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      D => \^control[28]\(0),
      PRE => \^aresetn_0\,
      Q => \input_height_reg_n_0_[0]\
    );
\input_height_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(1),
      Q => \input_height_reg_n_0_[1]\
    );
\input_height_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(2),
      Q => \input_height_reg_n_0_[2]\
    );
\input_height_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(3),
      Q => \input_height_reg_n_0_[3]\
    );
\input_height_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(4),
      Q => \input_height_reg_n_0_[4]\
    );
\input_height_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(5),
      Q => \input_height_reg_n_0_[5]\
    );
\input_height_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(6),
      Q => \input_height_reg_n_0_[6]\
    );
\input_height_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(7),
      Q => \input_height_reg_n_0_[7]\
    );
\input_height_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[28]\(8),
      Q => \input_height_reg_n_0_[8]\
    );
input_row_last_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8140000228140000"
    )
        port map (
      I0 => \input_x_reg[8]_0\(7),
      I1 => input_row_last_carry_i_1_0(6),
      I2 => input_row_last_carry_i_4_n_0,
      I3 => input_row_last_carry_i_1_0(7),
      I4 => input_row_last_carry_i_5_n_0,
      I5 => \input_x_reg[8]_0\(6),
      O => S(2)
    );
input_row_last_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090960"
    )
        port map (
      I0 => input_row_last_carry_i_1_0(5),
      I1 => \input_x_reg[8]_0\(5),
      I2 => \input_x_reg[8]_0\(4),
      I3 => input_row_last_carry_i_6_n_0,
      I4 => input_row_last_carry_i_1_0(4),
      I5 => input_row_last_carry_i_7_n_0,
      O => S(1)
    );
input_row_last_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000422490090000"
    )
        port map (
      I0 => \input_x_reg[8]_0\(1),
      I1 => input_row_last_carry_i_1_0(1),
      I2 => \input_x_reg[8]_0\(2),
      I3 => input_row_last_carry_i_1_0(2),
      I4 => input_row_last_carry_i_1_0(0),
      I5 => \input_x_reg[8]_0\(0),
      O => S(0)
    );
input_row_last_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => input_row_last_carry_i_1_0(5),
      I1 => input_row_last_carry_i_1_0(3),
      I2 => input_row_last_carry_i_1_0(0),
      I3 => input_row_last_carry_i_1_0(1),
      I4 => input_row_last_carry_i_1_0(2),
      I5 => input_row_last_carry_i_1_0(4),
      O => input_row_last_carry_i_4_n_0
    );
input_row_last_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \input_x_reg[8]_0\(8),
      I1 => input_row_last_carry_i_1_0(8),
      O => input_row_last_carry_i_5_n_0
    );
input_row_last_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => input_row_last_carry_i_1_0(3),
      I1 => input_row_last_carry_i_1_0(0),
      I2 => input_row_last_carry_i_1_0(1),
      I3 => input_row_last_carry_i_1_0(2),
      O => input_row_last_carry_i_6_n_0
    );
input_row_last_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAA9"
    )
        port map (
      I0 => \input_x_reg[8]_0\(3),
      I1 => input_row_last_carry_i_1_0(2),
      I2 => input_row_last_carry_i_1_0(1),
      I3 => input_row_last_carry_i_1_0(0),
      I4 => input_row_last_carry_i_1_0(3),
      O => input_row_last_carry_i_7_n_0
    );
\input_width[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => control(1),
      O => \^control[20]\(0)
    );
\input_width[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => control(1),
      I1 => control(2),
      O => \^control[20]\(1)
    );
\input_width[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => control(3),
      I1 => control(1),
      I2 => control(2),
      O => \^control[20]\(2)
    );
\input_width[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => control(4),
      I1 => control(3),
      I2 => control(1),
      I3 => control(2),
      O => \^control[20]\(3)
    );
\input_width[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => control(5),
      I1 => control(3),
      I2 => control(1),
      I3 => control(2),
      I4 => control(4),
      O => \^control[20]\(4)
    );
\input_width[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => control(6),
      I1 => control(4),
      I2 => control(2),
      I3 => control(1),
      I4 => control(3),
      I5 => control(5),
      O => \^control[20]\(5)
    );
\input_width[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \input_width[8]_i_3_n_0\,
      I1 => control(7),
      O => \^control[20]\(6)
    );
\input_width[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => control(8),
      I1 => \input_width[8]_i_3_n_0\,
      I2 => control(7),
      O => \^control[20]\(7)
    );
\input_width[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => control(0),
      I2 => \input_y_reg[0]_0\,
      O => E(0)
    );
\input_width[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => control_cfg_d,
      I5 => control(17),
      O => \^state_reg[2]_0\(0)
    );
\input_width[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => control(8),
      I1 => \input_width[8]_i_3_n_0\,
      I2 => control(7),
      O => \^control[20]\(8)
    );
\input_width[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => control(5),
      I1 => control(3),
      I2 => control(1),
      I3 => control(2),
      I4 => control(4),
      I5 => control(6),
      O => \input_width[8]_i_3_n_0\
    );
\input_width_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      D => \^control[20]\(0),
      PRE => \^aresetn_0\,
      Q => input_width(0)
    );
\input_width_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(1),
      Q => input_width(1)
    );
\input_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(2),
      Q => input_width(2)
    );
\input_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(3),
      Q => input_width(3)
    );
\input_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(4),
      Q => input_width(4)
    );
\input_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(5),
      Q => input_width(5)
    );
\input_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(6),
      Q => input_width(6)
    );
\input_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(7),
      Q => input_width(7)
    );
\input_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^state_reg[2]_0\(0),
      CLR => \^aresetn_0\,
      D => \^control[20]\(8),
      Q => input_width(8)
    );
\input_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => input_x(0),
      I1 => \^q\(0),
      I2 => input_final0,
      O => p_1_in(0)
    );
\input_x[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00510000"
    )
        port map (
      I0 => \input_x_reg[8]_0\(0),
      I1 => control(0),
      I2 => \input_y_reg[0]_0\,
      I3 => CO(0),
      I4 => \^dma_tvalid_0\,
      O => D(0)
    );
\input_x[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => dma_tvalid,
      O => \input_x[10]_i_1_n_0\
    );
\input_x[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08040C00"
    )
        port map (
      I0 => \input_x[10]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => input_final0,
      I3 => input_x(10),
      I4 => input_x(9),
      O => p_1_in(10)
    );
\input_x[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => input_x(7),
      I1 => \input_x[8]_i_2__0_n_0\,
      I2 => input_x(6),
      I3 => input_x(8),
      O => \input_x[10]_i_3_n_0\
    );
\input_x[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000660600000000"
    )
        port map (
      I0 => \input_x_reg[8]_0\(1),
      I1 => \input_x_reg[8]_0\(0),
      I2 => control(0),
      I3 => \input_y_reg[0]_0\,
      I4 => CO(0),
      I5 => \^dma_tvalid_0\,
      O => D(1)
    );
\input_x[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => input_final0,
      I1 => \^q\(0),
      I2 => input_x(1),
      I3 => input_x(0),
      O => p_1_in(1)
    );
\input_x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \input_x_reg[8]_0\(0),
      I1 => \input_x_reg[8]_0\(1),
      I2 => \input_x_reg[8]_0\(2),
      I3 => \input_x[8]_i_4_n_0\,
      O => D(2)
    );
\input_x[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002888"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(2),
      I2 => input_x(1),
      I3 => input_x(0),
      I4 => input_final0,
      O => p_1_in(2)
    );
\input_x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \input_x_reg[8]_0\(1),
      I1 => \input_x_reg[8]_0\(0),
      I2 => \input_x_reg[8]_0\(2),
      I3 => \input_x_reg[8]_0\(3),
      I4 => \input_x[8]_i_4_n_0\,
      O => D(3)
    );
\input_x[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(3),
      I2 => input_x(2),
      I3 => input_x(0),
      I4 => input_x(1),
      I5 => input_final0,
      O => p_1_in(3)
    );
\input_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \input_x_reg[8]_0\(2),
      I1 => \input_x_reg[8]_0\(0),
      I2 => \input_x_reg[8]_0\(1),
      I3 => \input_x_reg[8]_0\(3),
      I4 => \input_x_reg[8]_0\(4),
      I5 => \input_x[8]_i_4_n_0\,
      O => D(4)
    );
\input_x[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088288888"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(4),
      I2 => input_x(3),
      I3 => \input_x[4]_i_2_n_0\,
      I4 => input_x(2),
      I5 => input_final0,
      O => p_1_in(4)
    );
\input_x[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => input_x(0),
      I1 => input_x(1),
      O => \input_x[4]_i_2_n_0\
    );
\input_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090000000900090"
    )
        port map (
      I0 => \input_x_reg[5]_0\,
      I1 => \input_x_reg[8]_0\(5),
      I2 => \^dma_tvalid_0\,
      I3 => CO(0),
      I4 => \input_y_reg[0]_0\,
      I5 => control(0),
      O => D(5)
    );
\input_x[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(5),
      I2 => \input_x[5]_i_2_n_0\,
      I3 => input_final0,
      O => p_1_in(5)
    );
\input_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => input_x(3),
      I1 => input_x(1),
      I2 => input_x(0),
      I3 => input_x(2),
      I4 => input_x(4),
      O => \input_x[5]_i_2_n_0\
    );
\input_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090000000900090"
    )
        port map (
      I0 => \input_x_reg[6]_0\,
      I1 => \input_x_reg[8]_0\(6),
      I2 => \^dma_tvalid_0\,
      I3 => CO(0),
      I4 => \input_y_reg[0]_0\,
      I5 => control(0),
      O => D(6)
    );
\input_x[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(6),
      I2 => \input_x[8]_i_2__0_n_0\,
      I3 => input_final0,
      O => p_1_in(6)
    );
\input_x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4414"
    )
        port map (
      I0 => \input_x[8]_i_4_n_0\,
      I1 => \input_x_reg[8]_0\(7),
      I2 => \input_x_reg[8]_0\(6),
      I3 => \input_x_reg[6]_0\,
      O => D(7)
    );
\input_x[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008828"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(7),
      I2 => input_x(6),
      I3 => \input_x[8]_i_2__0_n_0\,
      I4 => input_final0,
      O => p_1_in(7)
    );
\input_x[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBA"
    )
        port map (
      I0 => \^dma_tvalid_0\,
      I1 => \input_y_reg[0]_0\,
      I2 => control(0),
      I3 => \^state_reg[2]_0\(0),
      O => control_clear_d_reg(0)
    );
\input_x[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040044040404040"
    )
        port map (
      I0 => input_final0,
      I1 => \^q\(0),
      I2 => input_x(8),
      I3 => input_x(6),
      I4 => \input_x[8]_i_2__0_n_0\,
      I5 => input_x(7),
      O => p_1_in(8)
    );
\input_x[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009AAA"
    )
        port map (
      I0 => \input_x_reg[8]_0\(8),
      I1 => \input_x_reg[6]_0\,
      I2 => \input_x_reg[8]_0\(6),
      I3 => \input_x_reg[8]_0\(7),
      I4 => \input_x[8]_i_4_n_0\,
      O => D(8)
    );
\input_x[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => input_x(4),
      I1 => input_x(2),
      I2 => input_x(0),
      I3 => input_x(1),
      I4 => input_x(3),
      I5 => input_x(5),
      O => \input_x[8]_i_2__0_n_0\
    );
\input_x[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \^dma_tvalid_0\,
      I1 => CO(0),
      I2 => \input_y_reg[0]_0\,
      I3 => control(0),
      O => \input_x[8]_i_4_n_0\
    );
\input_x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \^q\(0),
      I1 => input_x(9),
      I2 => \input_x[10]_i_3_n_0\,
      I3 => input_final0,
      O => p_1_in(9)
    );
\input_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(0),
      Q => input_x(0)
    );
\input_x_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(10),
      Q => input_x(10)
    );
\input_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(1),
      Q => input_x(1)
    );
\input_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(2),
      Q => input_x(2)
    );
\input_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(3),
      Q => input_x(3)
    );
\input_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(4),
      Q => input_x(4)
    );
\input_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(5),
      Q => input_x(5)
    );
\input_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(6),
      Q => input_x(6)
    );
\input_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(7),
      Q => input_x(7)
    );
\input_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(8),
      Q => input_x(8)
    );
\input_x_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_x[10]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(9),
      Q => input_x(9)
    );
\input_y[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051000000"
    )
        port map (
      I0 => \input_y_reg[0]_1\(0),
      I1 => control(0),
      I2 => \input_y_reg[0]_0\,
      I3 => CO(0),
      I4 => \^dma_tvalid_0\,
      I5 => \input_y_reg[8]_1\(0),
      O => \input_y_reg[8]_0\(0)
    );
\input_y[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \input_y_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => input_final0,
      I3 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[0]_i_1__0_n_0\
    );
\input_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(1),
      I2 => \input_y_reg[8]_1\(0),
      O => \input_y_reg[8]_0\(1)
    );
\input_y[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00606060"
    )
        port map (
      I0 => \input_y_reg_n_0_[1]\,
      I1 => \input_y_reg_n_0_[0]\,
      I2 => \^q\(0),
      I3 => input_final0,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[1]_i_1__0_n_0\
    );
\input_y[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(0),
      I2 => \input_y_reg[8]_1\(1),
      I3 => \input_y_reg[8]_1\(2),
      O => \input_y_reg[8]_0\(2)
    );
\input_y[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000780078007800"
    )
        port map (
      I0 => \input_y_reg_n_0_[0]\,
      I1 => \input_y_reg_n_0_[1]\,
      I2 => \input_y_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => input_final0,
      I5 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[2]_i_1__0_n_0\
    );
\input_y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(1),
      I2 => \input_y_reg[8]_1\(0),
      I3 => \input_y_reg[8]_1\(2),
      I4 => \input_y_reg[8]_1\(3),
      O => \input_y_reg[8]_0\(3)
    );
\input_y[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[3]\,
      I2 => \input_y_reg_n_0_[2]\,
      I3 => \input_y_reg_n_0_[0]\,
      I4 => \input_y_reg_n_0_[1]\,
      I5 => \input_y[3]_i_2_n_0\,
      O => \input_y[3]_i_1__0_n_0\
    );
\input_y[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => input_final0,
      I1 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[3]_i_2_n_0\
    );
\input_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(2),
      I2 => \input_y_reg[8]_1\(0),
      I3 => \input_y_reg[8]_1\(1),
      I4 => \input_y_reg[8]_1\(3),
      I5 => \input_y_reg[8]_1\(4),
      O => \input_y_reg[8]_0\(4)
    );
\input_y[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00828282"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[4]\,
      I2 => \input_y[4]_i_2_n_0\,
      I3 => input_final0,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[4]_i_1__0_n_0\
    );
\input_y[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \input_y_reg_n_0_[2]\,
      I1 => \input_y_reg_n_0_[0]\,
      I2 => \input_y_reg_n_0_[1]\,
      I3 => \input_y_reg_n_0_[3]\,
      O => \input_y[4]_i_2_n_0\
    );
\input_y[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \input_y_reg[8]_1\(5),
      I1 => \input_y_reg[5]_0\,
      I2 => \input_y[8]_i_3_n_0\,
      O => \input_y_reg[8]_0\(5)
    );
\input_y[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00828282"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[5]\,
      I2 => \input_y[5]_i_2_n_0\,
      I3 => input_final0,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[5]_i_1__0_n_0\
    );
\input_y[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \input_y_reg_n_0_[3]\,
      I1 => \input_y_reg_n_0_[1]\,
      I2 => \input_y_reg_n_0_[0]\,
      I3 => \input_y_reg_n_0_[2]\,
      I4 => \input_y_reg_n_0_[4]\,
      O => \input_y[5]_i_2_n_0\
    );
\input_y[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \input_y_reg[8]_1\(6),
      I1 => \input_y_reg[8]_2\,
      I2 => \input_y[8]_i_3_n_0\,
      O => \input_y_reg[8]_0\(6)
    );
\input_y[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00828282"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[6]\,
      I2 => \input_y[7]_i_2_n_0\,
      I3 => input_final0,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[6]_i_1__0_n_0\
    );
\input_y[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(7),
      I2 => \input_y_reg[8]_1\(6),
      I3 => \input_y_reg[8]_2\,
      O => \input_y_reg[8]_0\(7)
    );
\input_y[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000700000707000"
    )
        port map (
      I0 => \input_final0_inferred__0/i__carry_n_0\,
      I1 => input_final0,
      I2 => \^q\(0),
      I3 => \input_y_reg_n_0_[7]\,
      I4 => \input_y_reg_n_0_[6]\,
      I5 => \input_y[7]_i_2_n_0\,
      O => \input_y[7]_i_1__0_n_0\
    );
\input_y[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \input_y_reg_n_0_[4]\,
      I1 => \input_y_reg_n_0_[2]\,
      I2 => \input_y_reg_n_0_[0]\,
      I3 => \input_y_reg_n_0_[1]\,
      I4 => \input_y_reg_n_0_[3]\,
      I5 => \input_y_reg_n_0_[5]\,
      O => \input_y[7]_i_2_n_0\
    );
\input_y[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4F4F4"
    )
        port map (
      I0 => \input_y_reg[0]_0\,
      I1 => control(0),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^dma_tvalid_0\,
      I4 => CO(0),
      O => control_clear_d_reg_0(0)
    );
\input_y[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00282828"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[8]\,
      I2 => \input_y[9]_i_4_n_0\,
      I3 => input_final0,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[8]_i_1__0_n_0\
    );
\input_y[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \input_y[8]_i_3_n_0\,
      I1 => \input_y_reg[8]_1\(8),
      I2 => \input_y_reg[8]_2\,
      I3 => \input_y_reg[8]_1\(6),
      I4 => \input_y_reg[8]_1\(7),
      O => \input_y_reg[8]_0\(8)
    );
\input_y[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => \^dma_tvalid_0\,
      I1 => CO(0),
      I2 => \input_y_reg[0]_0\,
      I3 => control(0),
      I4 => \input_y_reg[0]_1\(0),
      O => \input_y[8]_i_3_n_0\
    );
\input_y[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^dma_tvalid_0\,
      I2 => input_final0,
      O => \input_y[9]_i_1_n_0\
    );
\input_y[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000288828882888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \input_y_reg_n_0_[9]\,
      I2 => \input_y_reg_n_0_[8]\,
      I3 => \input_y[9]_i_4_n_0\,
      I4 => input_final0,
      I5 => \input_final0_inferred__0/i__carry_n_0\,
      O => \input_y[9]_i_2_n_0\
    );
\input_y[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => dma_tvalid,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \^dma_tvalid_0\
    );
\input_y[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \input_y_reg_n_0_[7]\,
      I1 => \input_y_reg_n_0_[6]\,
      I2 => \input_y[7]_i_2_n_0\,
      O => \input_y[9]_i_4_n_0\
    );
\input_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[0]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[0]\
    );
\input_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[1]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[1]\
    );
\input_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[2]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[2]\
    );
\input_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[3]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[3]\
    );
\input_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[4]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[4]\
    );
\input_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[5]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[5]\
    );
\input_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[6]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[6]\
    );
\input_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[7]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[7]\
    );
\input_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[8]_i_1__0_n_0\,
      Q => \input_y_reg_n_0_[8]\
    );
\input_y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \input_y[9]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \input_y[9]_i_2_n_0\,
      Q => \input_y_reg_n_0_[9]\
    );
\m_tdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(15),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(15)
    );
\m_tdata[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(17),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(17)
    );
\m_tdata[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(16),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(16)
    );
\m_tdata[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \m_tdata_reg[7]_i_5\,
      I1 => \vertical_mix_next__0\(15),
      O => \m_tdata[1]_i_5_n_0\
    );
\m_tdata[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(14),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(14)
    );
\m_tdata[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(21),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(21)
    );
\m_tdata[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(20),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(20)
    );
\m_tdata[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(19),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(19)
    );
\m_tdata[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(18),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(18)
    );
\m_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \m_tdata[7]_i_1_n_0\
    );
\m_tdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(23),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(23)
    );
\m_tdata[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vertical_mix_next__0\(22),
      I1 => \m_tdata_reg[7]_i_5\,
      O => vertical_mix(22)
    );
\m_tdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \m_tdata_reg[7]_i_5\,
      O => \state_reg[3]_0\
    );
\m_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => m_tuser_reg_3,
      D => m_tdata1(16),
      Q => \m_tdata_reg[7]_0\(0)
    );
\m_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => m_tuser_reg_3,
      D => m_tdata1(17),
      Q => \m_tdata_reg[7]_0\(1)
    );
\m_tdata_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_tdata_reg[1]_i_1_n_0\,
      CO(2) => \m_tdata_reg[1]_i_1_n_1\,
      CO(1) => \m_tdata_reg[1]_i_1_n_2\,
      CO(0) => \m_tdata_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => vertical_mix(15),
      DI(0) => '0',
      O(3 downto 2) => m_tdata1(17 downto 16),
      O(1 downto 0) => \NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED\(1 downto 0),
      S(3 downto 2) => vertical_mix(17 downto 16),
      S(1) => \m_tdata[1]_i_5_n_0\,
      S(0) => vertical_mix(14)
    );
\m_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(18),
      Q => \m_tdata_reg[7]_0\(2)
    );
\m_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(19),
      Q => \m_tdata_reg[7]_0\(3)
    );
\m_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(20),
      Q => \m_tdata_reg[7]_0\(4)
    );
\m_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(21),
      Q => \m_tdata_reg[7]_0\(5)
    );
\m_tdata_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_tdata_reg[1]_i_1_n_0\,
      CO(3) => \m_tdata_reg[5]_i_1_n_0\,
      CO(2) => \m_tdata_reg[5]_i_1_n_1\,
      CO(1) => \m_tdata_reg[5]_i_1_n_2\,
      CO(0) => \m_tdata_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_tdata1(21 downto 18),
      S(3 downto 0) => vertical_mix(21 downto 18)
    );
\m_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(22),
      Q => \m_tdata_reg[7]_0\(6)
    );
\m_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => m_tdata1(23),
      Q => \m_tdata_reg[7]_0\(7)
    );
\m_tdata_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_tdata_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \m_tdata_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => m_tdata1(23 downto 22),
      S(3 downto 2) => B"00",
      S(1 downto 0) => vertical_mix(23 downto 22)
    );
m_tlast_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \output_x_reg_n_0_[6]\,
      I1 => \output_x[6]_i_4_n_0\,
      O => output_final010_in
    );
m_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => m_tuser_reg_3,
      D => output_final010_in,
      Q => \^resize_last\
    );
m_tuser_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => m_tuser_i_2_n_0,
      I1 => m_tuser_i_3_n_0,
      I2 => \output_x_reg_n_0_[6]\,
      I3 => \output_x_reg_n_0_[4]\,
      I4 => \output_x_reg_n_0_[3]\,
      I5 => \output_y_reg_n_0_[4]\,
      O => m_tuser0
    );
m_tuser_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \output_y_reg_n_0_[1]\,
      I1 => \output_y_reg_n_0_[0]\,
      I2 => \output_y_reg_n_0_[6]\,
      I3 => \output_x_reg_n_0_[5]\,
      I4 => \output_x_reg_n_0_[1]\,
      I5 => \output_x_reg_n_0_[0]\,
      O => m_tuser_i_2_n_0
    );
m_tuser_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \output_y_reg_n_0_[3]\,
      I1 => \output_y_reg_n_0_[2]\,
      I2 => \output_x_reg_n_0_[2]\,
      I3 => \output_y_reg_n_0_[5]\,
      O => m_tuser_i_3_n_0
    );
m_tuser_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_tdata[7]_i_1_n_0\,
      CLR => m_tuser_reg_3,
      D => m_tuser0,
      Q => \^resize_user\
    );
m_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => m_tvalid_reg_0,
      Q => resize_valid
    );
\output_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x_reg_n_0_[0]\,
      O => \output_x[0]_i_1_n_0\
    );
\output_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \output_x_reg_n_0_[0]\,
      I1 => \output_x_reg_n_0_[1]\,
      I2 => \^q\(3),
      O => \output_x[1]_i_1_n_0\
    );
\output_x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x_reg_n_0_[1]\,
      I2 => \output_x_reg_n_0_[0]\,
      I3 => \output_x_reg_n_0_[2]\,
      O => \output_x[2]_i_1_n_0\
    );
\output_x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x_reg_n_0_[0]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => \output_x_reg_n_0_[2]\,
      I4 => \output_x_reg_n_0_[3]\,
      O => \output_x[3]_i_1_n_0\
    );
\output_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x_reg_n_0_[2]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => \output_x_reg_n_0_[0]\,
      I4 => \output_x_reg_n_0_[3]\,
      I5 => \output_x_reg_n_0_[4]\,
      O => \output_x[4]_i_1_n_0\
    );
\output_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x[5]_i_2_n_0\,
      I2 => \output_x_reg_n_0_[5]\,
      O => \output_x[5]_i_1_n_0\
    );
\output_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \output_x_reg_n_0_[3]\,
      I1 => \output_x_reg_n_0_[0]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => \output_x_reg_n_0_[2]\,
      I4 => \output_x_reg_n_0_[4]\,
      O => \output_x[5]_i_2_n_0\
    );
\output_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FF808080"
    )
        port map (
      I0 => input_final0,
      I1 => \input_final0_inferred__0/i__carry_n_0\,
      I2 => \^dma_tvalid_0\,
      I3 => \output_x[6]_i_3_n_0\,
      I4 => \^q\(1),
      I5 => done_reg_0,
      O => \output_x[6]_i_1_n_0\
    );
\output_x[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_x[6]_i_4_n_0\,
      I2 => \output_x_reg_n_0_[6]\,
      O => \output_x[6]_i_2_n_0\
    );
\output_x[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \output_x[6]_i_3_n_0\
    );
\output_x[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \output_x_reg_n_0_[4]\,
      I1 => \output_x_reg_n_0_[2]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => \output_x_reg_n_0_[0]\,
      I4 => \output_x_reg_n_0_[3]\,
      I5 => \output_x_reg_n_0_[5]\,
      O => \output_x[6]_i_4_n_0\
    );
\output_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[0]_i_1_n_0\,
      Q => \output_x_reg_n_0_[0]\
    );
\output_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[1]_i_1_n_0\,
      Q => \output_x_reg_n_0_[1]\
    );
\output_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[2]_i_1_n_0\,
      Q => \output_x_reg_n_0_[2]\
    );
\output_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[3]_i_1_n_0\,
      Q => \output_x_reg_n_0_[3]\
    );
\output_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[4]_i_1_n_0\,
      Q => \output_x_reg_n_0_[4]\
    );
\output_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[5]_i_1_n_0\,
      Q => \output_x_reg_n_0_[5]\
    );
\output_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_x[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_x[6]_i_2_n_0\,
      Q => \output_x_reg_n_0_[6]\
    );
\output_y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_y_reg_n_0_[0]\,
      O => \output_y[0]_i_1_n_0\
    );
\output_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \output_y_reg_n_0_[1]\,
      I1 => \output_y_reg_n_0_[0]\,
      I2 => \^q\(3),
      O => \output_y[1]_i_1_n_0\
    );
\output_y[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_y_reg_n_0_[0]\,
      I2 => \output_y_reg_n_0_[1]\,
      I3 => \output_y_reg_n_0_[2]\,
      O => \output_y[2]_i_1_n_0\
    );
\output_y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_y_reg_n_0_[1]\,
      I2 => \output_y_reg_n_0_[0]\,
      I3 => \output_y_reg_n_0_[2]\,
      I4 => \output_y_reg_n_0_[3]\,
      O => \output_y[3]_i_1_n_0\
    );
\output_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_y_reg_n_0_[2]\,
      I2 => \output_y_reg_n_0_[0]\,
      I3 => \output_y_reg_n_0_[1]\,
      I4 => \output_y_reg_n_0_[3]\,
      I5 => \output_y_reg_n_0_[4]\,
      O => \output_y[4]_i_1_n_0\
    );
\output_y[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^q\(3),
      I1 => \output_y[5]_i_2_n_0\,
      I2 => \output_y_reg_n_0_[5]\,
      O => \output_y[5]_i_1_n_0\
    );
\output_y[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \output_y_reg_n_0_[3]\,
      I1 => \output_y_reg_n_0_[1]\,
      I2 => \output_y_reg_n_0_[0]\,
      I3 => \output_y_reg_n_0_[2]\,
      I4 => \output_y_reg_n_0_[4]\,
      O => \output_y[5]_i_2_n_0\
    );
\output_y[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040404040404040"
    )
        port map (
      I0 => \output_x[6]_i_4_n_0\,
      I1 => \output_x_reg_n_0_[6]\,
      I2 => \output_x[6]_i_1_n_0\,
      I3 => \^dma_tvalid_0\,
      I4 => \input_final0_inferred__0/i__carry_n_0\,
      I5 => input_final0,
      O => \output_y[6]_i_1_n_0\
    );
\output_y[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \output_y[6]_i_3_n_0\,
      I1 => \output_y_reg_n_0_[6]\,
      I2 => \^q\(3),
      O => \output_y[6]_i_2_n_0\
    );
\output_y[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \output_y_reg_n_0_[5]\,
      I1 => \output_y_reg_n_0_[4]\,
      I2 => \output_y_reg_n_0_[2]\,
      I3 => \output_y_reg_n_0_[0]\,
      I4 => \output_y_reg_n_0_[1]\,
      I5 => \output_y_reg_n_0_[3]\,
      O => \output_y[6]_i_3_n_0\
    );
\output_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[0]_i_1_n_0\,
      Q => \output_y_reg_n_0_[0]\
    );
\output_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[1]_i_1_n_0\,
      Q => \output_y_reg_n_0_[1]\
    );
\output_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[2]_i_1_n_0\,
      Q => \output_y_reg_n_0_[2]\
    );
\output_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[3]_i_1_n_0\,
      Q => \output_y_reg_n_0_[3]\
    );
\output_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[4]_i_1_n_0\,
      Q => \output_y_reg_n_0_[4]\
    );
\output_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[5]_i_1_n_0\,
      Q => \output_y_reg_n_0_[5]\
    );
\output_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \output_y[6]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \output_y[6]_i_2_n_0\,
      Q => \output_y_reg_n_0_[6]\
    );
\p00[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \p00[7]_i_1_n_0\
    );
\p00_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(0),
      Q => p00(0)
    );
\p00_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(1),
      Q => p00(1)
    );
\p00_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(2),
      Q => p00(2)
    );
\p00_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(3),
      Q => p00(3)
    );
\p00_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(4),
      Q => p00(4)
    );
\p00_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(5),
      Q => p00(5)
    );
\p00_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(6),
      Q => p00(6)
    );
\p00_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p00[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(7),
      Q => p00(7)
    );
\p01[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p01[7]_i_1_n_0\
    );
\p01_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(0),
      Q => p01(0)
    );
\p01_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(1),
      Q => p01(1)
    );
\p01_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(2),
      Q => p01(2)
    );
\p01_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(3),
      Q => p01(3)
    );
\p01_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(4),
      Q => p01(4)
    );
\p01_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(5),
      Q => p01(5)
    );
\p01_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(6),
      Q => p01(6)
    );
\p01_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p01[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(7),
      Q => p01(7)
    );
\p10[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \p10[7]_i_1_n_0\
    );
\p10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(0),
      Q => p10(0)
    );
\p10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(1),
      Q => p10(1)
    );
\p10_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(2),
      Q => p10(2)
    );
\p10_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(3),
      Q => p10(3)
    );
\p10_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(4),
      Q => p10(4)
    );
\p10_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(5),
      Q => p10(5)
    );
\p10_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(6),
      Q => p10(6)
    );
\p10_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p10[7]_i_1_n_0\,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => ram_read_data(7),
      Q => p10(7)
    );
\p11[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \p11[7]_i_1_n_0\
    );
\p11_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(0),
      Q => p11(0)
    );
\p11_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(1),
      Q => p11(1)
    );
\p11_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(2),
      Q => p11(2)
    );
\p11_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(3),
      Q => p11(3)
    );
\p11_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(4),
      Q => p11(4)
    );
\p11_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(5),
      Q => p11(5)
    );
\p11_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(6),
      Q => p11(6)
    );
\p11_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \p11[7]_i_1_n_0\,
      CLR => \m_tdata_reg[3]_0\,
      D => ram_read_data(7),
      Q => p11(7)
    );
protocol_error_sticky_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^dma_tvalid_0\,
      I1 => CO(0),
      I2 => \input_y_reg[0]_1\(0),
      I3 => dma_tlast,
      O => dma_tlast_0
    );
protocol_error_sticky_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control(17),
      I1 => control_cfg_d,
      O => \^control[29]\
    );
protocol_error_sticky_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \state_reg[1]_0\
    );
resize_error_sticky_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\sample_fraction_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_105,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[0]_i_1_n_0\
    );
\sample_fraction_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_104,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[1]_i_1_n_0\
    );
\sample_fraction_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_103,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[2]_i_1_n_0\
    );
\sample_fraction_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_102,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[3]_i_1_n_0\
    );
\sample_fraction_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_101,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[4]_i_1_n_0\
    );
\sample_fraction_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_100,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[5]_i_1_n_0\
    );
\sample_fraction_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_99,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[6]_i_1_n_0\
    );
\sample_fraction_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_2_in,
      I1 => coordinate_x02_n_98,
      I2 => \coordinate_x01_carry__2_n_0\,
      O => \sample_fraction_x[7]_i_1_n_0\
    );
\sample_fraction_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \m_tdata_reg[3]_0\,
      D => \sample_fraction_x[0]_i_1_n_0\,
      Q => sample_fraction_x(0)
    );
\sample_fraction_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \m_tdata_reg[3]_0\,
      D => \sample_fraction_x[1]_i_1_n_0\,
      Q => sample_fraction_x(1)
    );
\sample_fraction_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \m_tdata_reg[3]_0\,
      D => \sample_fraction_x[2]_i_1_n_0\,
      Q => sample_fraction_x(2)
    );
\sample_fraction_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \m_tdata_reg[3]_0\,
      D => \sample_fraction_x[3]_i_1_n_0\,
      Q => sample_fraction_x(3)
    );
\sample_fraction_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_fraction_x[4]_i_1_n_0\,
      Q => sample_fraction_x(4)
    );
\sample_fraction_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_fraction_x[5]_i_1_n_0\,
      Q => sample_fraction_x(5)
    );
\sample_fraction_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_fraction_x[6]_i_1_n_0\,
      Q => sample_fraction_x(6)
    );
\sample_fraction_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_fraction_x[7]_i_1_n_0\,
      Q => sample_fraction_x(7)
    );
\sample_fraction_y[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_105,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[0]_i_1_n_0\
    );
\sample_fraction_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_104,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[1]_i_1_n_0\
    );
\sample_fraction_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_103,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[2]_i_1_n_0\
    );
\sample_fraction_y[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_102,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[3]_i_1_n_0\
    );
\sample_fraction_y[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_101,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[4]_i_1_n_0\
    );
\sample_fraction_y[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_100,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[5]_i_1_n_0\
    );
\sample_fraction_y[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_99,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[6]_i_1_n_0\
    );
\sample_fraction_y[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_98,
      I2 => \coordinate_y01_carry__2_n_0\,
      O => \sample_fraction_y[7]_i_1_n_0\
    );
\sample_fraction_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[0]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[0]\
    );
\sample_fraction_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[1]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[1]\
    );
\sample_fraction_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[2]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[2]\
    );
\sample_fraction_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[3]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[3]\
    );
\sample_fraction_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[4]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[4]\
    );
\sample_fraction_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[5]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[5]\
    );
\sample_fraction_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[6]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[6]\
    );
\sample_fraction_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_fraction_y[7]_i_1_n_0\,
      Q => \sample_fraction_y_reg_n_0_[7]\
    );
\sample_x0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => input_width(0),
      I1 => p_2_in,
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => p_0_in(0),
      O => coordinate_x0(0)
    );
\sample_x0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54040454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(1),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => input_width(1),
      I4 => input_width(0),
      O => \sample_x0[1]_i_1_n_0\
    );
\sample_x0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404040454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(2),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => input_width(0),
      I4 => input_width(1),
      I5 => input_width(2),
      O => \sample_x0[2]_i_1_n_0\
    );
\sample_x0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(3),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[3]_i_3_n_0\,
      O => \sample_x0[3]_i_1_n_0\
    );
\sample_x0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(4),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[4]_i_3_n_0\,
      O => \sample_x0[4]_i_1_n_0\
    );
\sample_x0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \coordinate_x01_carry__2_n_0\,
      I2 => \sample_x1[5]_i_3_n_0\,
      I3 => p_2_in,
      O => coordinate_x0(5)
    );
\sample_x0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(6),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[6]_i_2_n_0\,
      O => \sample_x0[6]_i_1_n_0\
    );
\sample_x0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(7),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[7]_i_3_n_0\,
      O => \sample_x0[7]_i_1_n_0\
    );
\sample_x0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[8]_i_2_n_0\,
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => p_0_in(8),
      O => \sample_x0[8]_i_1_n_0\
    );
\sample_x0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_x0(0),
      Q => sample_x0(0)
    );
\sample_x0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[1]_i_1_n_0\,
      Q => sample_x0(1)
    );
\sample_x0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[2]_i_1_n_0\,
      Q => sample_x0(2)
    );
\sample_x0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[3]_i_1_n_0\,
      Q => sample_x0(3)
    );
\sample_x0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[4]_i_1_n_0\,
      Q => sample_x0(4)
    );
\sample_x0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_x0(5),
      Q => sample_x0(5)
    );
\sample_x0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[6]_i_1_n_0\,
      Q => sample_x0(6)
    );
\sample_x0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[7]_i_1_n_0\,
      Q => sample_x0(7)
    );
\sample_x0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x0[8]_i_1_n_0\,
      Q => sample_x0(8)
    );
\sample_x1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BBB8B"
    )
        port map (
      I0 => \sample_x1[0]_i_2_n_0\,
      I1 => p_2_in,
      I2 => p_0_in(0),
      I3 => \coordinate_x01_carry__2_n_0\,
      I4 => input_width(0),
      O => coordinate_x1(0)
    );
\sample_x1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => input_width(2),
      I1 => input_width(1),
      I2 => \sample_x1[0]_i_3_n_0\,
      O => \sample_x1[0]_i_2_n_0\
    );
\sample_x1[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => input_width(6),
      I1 => input_width(5),
      I2 => input_width(7),
      I3 => input_width(8),
      I4 => input_width(3),
      I5 => input_width(4),
      O => \sample_x1[0]_i_3_n_0\
    );
\sample_x1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5514001400145514"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \coordinate_x01_carry__2_n_0\,
      I4 => input_width(1),
      I5 => input_width(0),
      O => \sample_x1[1]_i_1_n_0\
    );
\sample_x1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000154055551540"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => \coordinate_x01_carry__2_n_0\,
      I5 => \sample_x1[2]_i_2_n_0\,
      O => \sample_x1[2]_i_1_n_0\
    );
\sample_x1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => input_width(2),
      I1 => input_width(1),
      I2 => input_width(0),
      O => \sample_x1[2]_i_2_n_0\
    );
\sample_x1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[3]_i_2_n_0\,
      I2 => p_0_in(3),
      I3 => \coordinate_x01_carry__2_n_0\,
      I4 => \sample_x1[3]_i_3_n_0\,
      O => \sample_x1[3]_i_1_n_0\
    );
\sample_x1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      O => \sample_x1[3]_i_2_n_0\
    );
\sample_x1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => input_width(3),
      I1 => input_width(0),
      I2 => input_width(1),
      I3 => input_width(2),
      O => \sample_x1[3]_i_3_n_0\
    );
\sample_x1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[4]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \coordinate_x01_carry__2_n_0\,
      I4 => \sample_x1[4]_i_3_n_0\,
      O => \sample_x1[4]_i_1_n_0\
    );
\sample_x1[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(3),
      O => \sample_x1[4]_i_2_n_0\
    );
\sample_x1[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => input_width(4),
      I1 => input_width(2),
      I2 => input_width(1),
      I3 => input_width(0),
      I4 => input_width(3),
      O => \sample_x1[4]_i_3_n_0\
    );
\sample_x1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F909"
    )
        port map (
      I0 => \sample_x1[5]_i_2_n_0\,
      I1 => p_0_in(5),
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[5]_i_3_n_0\,
      I4 => p_2_in,
      O => coordinate_x1(5)
    );
\sample_x1[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(4),
      O => \sample_x1[5]_i_2_n_0\
    );
\sample_x1[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => input_width(5),
      I1 => input_width(3),
      I2 => input_width(4),
      I3 => input_width(2),
      I4 => input_width(1),
      I5 => input_width(0),
      O => \sample_x1[5]_i_3_n_0\
    );
\sample_x1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[7]_i_2_n_0\,
      I2 => p_0_in(6),
      I3 => \coordinate_x01_carry__2_n_0\,
      I4 => \sample_x1[6]_i_2_n_0\,
      O => \sample_x1[6]_i_1_n_0\
    );
\sample_x1[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => input_width(6),
      I1 => \coordinate_x01_carry__0_i_10_n_0\,
      I2 => input_width(4),
      I3 => input_width(3),
      I4 => input_width(5),
      O => \sample_x1[6]_i_2_n_0\
    );
\sample_x1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000451055554510"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[7]_i_2_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => \coordinate_x01_carry__2_n_0\,
      I5 => \sample_x1[7]_i_3_n_0\,
      O => \sample_x1[7]_i_1_n_0\
    );
\sample_x1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(3),
      I5 => p_0_in(5),
      O => \sample_x1[7]_i_2_n_0\
    );
\sample_x1[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => input_width(3),
      I1 => input_width(4),
      I2 => \coordinate_x01_carry__0_i_10_n_0\,
      I3 => input_width(6),
      I4 => input_width(5),
      I5 => input_width(7),
      O => \sample_x1[7]_i_3_n_0\
    );
\sample_x1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540454540454040"
    )
        port map (
      I0 => p_2_in,
      I1 => \sample_x1[8]_i_2_n_0\,
      I2 => \coordinate_x01_carry__2_n_0\,
      I3 => \sample_x1[8]_i_3_n_0\,
      I4 => p_0_in(7),
      I5 => p_0_in(8),
      O => \sample_x1[8]_i_1_n_0\
    );
\sample_x1[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA9A"
    )
        port map (
      I0 => input_width(8),
      I1 => input_width(7),
      I2 => \coordinate_x01_carry__0_i_9_n_0\,
      I3 => input_width(6),
      I4 => input_width(5),
      O => \sample_x1[8]_i_2_n_0\
    );
\sample_x1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \sample_x1[7]_i_2_n_0\,
      I1 => p_0_in(6),
      O => \sample_x1[8]_i_3_n_0\
    );
\sample_x1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => coordinate_x1(0),
      Q => sample_x1(0)
    );
\sample_x1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_x1[1]_i_1_n_0\,
      Q => sample_x1(1)
    );
\sample_x1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \sample_fraction_x_reg[4]_0\,
      D => \sample_x1[2]_i_1_n_0\,
      Q => sample_x1(2)
    );
\sample_x1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x1[3]_i_1_n_0\,
      Q => sample_x1(3)
    );
\sample_x1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x1[4]_i_1_n_0\,
      Q => sample_x1(4)
    );
\sample_x1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_x1(5),
      Q => sample_x1(5)
    );
\sample_x1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x1[6]_i_1_n_0\,
      Q => sample_x1(6)
    );
\sample_x1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x1[7]_i_1_n_0\,
      Q => sample_x1(7)
    );
\sample_x1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_x1[8]_i_1_n_0\,
      Q => sample_x1(8)
    );
\sample_y0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => \input_height_reg_n_0_[0]\,
      I1 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => coordinate_y02_n_97,
      O => coordinate_y0(0)
    );
\sample_y0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54040454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_96,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \input_height_reg_n_0_[1]\,
      I4 => \input_height_reg_n_0_[0]\,
      O => \sample_y0[1]_i_1_n_0\
    );
\sample_y0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404040454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_95,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \input_height_reg_n_0_[0]\,
      I4 => \input_height_reg_n_0_[1]\,
      I5 => \input_height_reg_n_0_[2]\,
      O => \sample_y0[2]_i_1_n_0\
    );
\sample_y0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_94,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \sample_y1[3]_i_3_n_0\,
      O => \sample_y0[3]_i_1_n_0\
    );
\sample_y0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_93,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \sample_y1[4]_i_3_n_0\,
      O => \sample_y0[4]_i_1_n_0\
    );
\sample_y0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_92,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \sample_y1[5]_i_3_n_0\,
      O => \sample_y0[5]_i_1_n_0\
    );
\sample_y0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => coordinate_y02_n_91,
      I1 => \coordinate_y01_carry__2_n_0\,
      I2 => \sample_y1[6]_i_2_n_0\,
      I3 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      O => coordinate_y0(6)
    );
\sample_y0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_90,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \sample_y1[7]_i_4_n_0\,
      O => \sample_y0[7]_i_1_n_0\
    );
\sample_y0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_y0(0),
      Q => sample_y0(0)
    );
\sample_y0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[1]_i_1_n_0\,
      Q => sample_y0(1)
    );
\sample_y0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[2]_i_1_n_0\,
      Q => sample_y0(2)
    );
\sample_y0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[3]_i_1_n_0\,
      Q => sample_y0(3)
    );
\sample_y0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[4]_i_1_n_0\,
      Q => sample_y0(4)
    );
\sample_y0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[5]_i_1_n_0\,
      Q => sample_y0(5)
    );
\sample_y0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_y0(6),
      Q => sample_y0(6)
    );
\sample_y0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y0[7]_i_1_n_0\,
      Q => sample_y0(7)
    );
\sample_y1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BBB8B"
    )
        port map (
      I0 => \sample_y1[0]_i_2_n_0\,
      I1 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I2 => coordinate_y02_n_97,
      I3 => \coordinate_y01_carry__2_n_0\,
      I4 => \input_height_reg_n_0_[0]\,
      O => coordinate_y1(0)
    );
\sample_y1[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \input_height_reg_n_0_[6]\,
      I1 => \input_height_reg_n_0_[7]\,
      I2 => \input_height_reg_n_0_[8]\,
      I3 => \sample_y1[0]_i_3_n_0\,
      I4 => \input_height_reg_n_0_[1]\,
      O => \sample_y1[0]_i_2_n_0\
    );
\sample_y1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_height_reg_n_0_[4]\,
      I1 => \input_height_reg_n_0_[3]\,
      I2 => \input_height_reg_n_0_[5]\,
      I3 => \input_height_reg_n_0_[2]\,
      O => \sample_y1[0]_i_3_n_0\
    );
\sample_y1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5514001400145514"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_96,
      I2 => coordinate_y02_n_97,
      I3 => \coordinate_y01_carry__2_n_0\,
      I4 => \input_height_reg_n_0_[1]\,
      I5 => \input_height_reg_n_0_[0]\,
      O => \sample_y1[1]_i_1_n_0\
    );
\sample_y1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000154055551540"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => coordinate_y02_n_97,
      I2 => coordinate_y02_n_96,
      I3 => coordinate_y02_n_95,
      I4 => \coordinate_y01_carry__2_n_0\,
      I5 => \sample_y1[2]_i_2_n_0\,
      O => \sample_y1[2]_i_1_n_0\
    );
\sample_y1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \input_height_reg_n_0_[2]\,
      I1 => \input_height_reg_n_0_[1]\,
      I2 => \input_height_reg_n_0_[0]\,
      O => \sample_y1[2]_i_2_n_0\
    );
\sample_y1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => \sample_y1[3]_i_2_n_0\,
      I2 => coordinate_y02_n_94,
      I3 => \coordinate_y01_carry__2_n_0\,
      I4 => \sample_y1[3]_i_3_n_0\,
      O => \sample_y1[3]_i_1_n_0\
    );
\sample_y1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => coordinate_y02_n_96,
      I1 => coordinate_y02_n_97,
      I2 => coordinate_y02_n_95,
      O => \sample_y1[3]_i_2_n_0\
    );
\sample_y1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \input_height_reg_n_0_[3]\,
      I1 => \input_height_reg_n_0_[0]\,
      I2 => \input_height_reg_n_0_[1]\,
      I3 => \input_height_reg_n_0_[2]\,
      O => \sample_y1[3]_i_3_n_0\
    );
\sample_y1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => \sample_y1[4]_i_2_n_0\,
      I2 => coordinate_y02_n_93,
      I3 => \coordinate_y01_carry__2_n_0\,
      I4 => \sample_y1[4]_i_3_n_0\,
      O => \sample_y1[4]_i_1_n_0\
    );
\sample_y1[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => coordinate_y02_n_95,
      I1 => coordinate_y02_n_97,
      I2 => coordinate_y02_n_96,
      I3 => coordinate_y02_n_94,
      O => \sample_y1[4]_i_2_n_0\
    );
\sample_y1[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \input_height_reg_n_0_[4]\,
      I1 => \input_height_reg_n_0_[2]\,
      I2 => \input_height_reg_n_0_[1]\,
      I3 => \input_height_reg_n_0_[0]\,
      I4 => \input_height_reg_n_0_[3]\,
      O => \sample_y1[4]_i_3_n_0\
    );
\sample_y1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00415541"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => \sample_y1[5]_i_2_n_0\,
      I2 => coordinate_y02_n_92,
      I3 => \coordinate_y01_carry__2_n_0\,
      I4 => \sample_y1[5]_i_3_n_0\,
      O => \sample_y1[5]_i_1_n_0\
    );
\sample_y1[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => coordinate_y02_n_94,
      I1 => coordinate_y02_n_96,
      I2 => coordinate_y02_n_97,
      I3 => coordinate_y02_n_95,
      I4 => coordinate_y02_n_93,
      O => \sample_y1[5]_i_2_n_0\
    );
\sample_y1[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \input_height_reg_n_0_[5]\,
      I1 => \input_height_reg_n_0_[3]\,
      I2 => \input_height_reg_n_0_[4]\,
      I3 => \input_height_reg_n_0_[2]\,
      I4 => \input_height_reg_n_0_[1]\,
      I5 => \input_height_reg_n_0_[0]\,
      O => \sample_y1[5]_i_3_n_0\
    );
\sample_y1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F606"
    )
        port map (
      I0 => \sample_y1[7]_i_3_n_0\,
      I1 => coordinate_y02_n_91,
      I2 => \coordinate_y01_carry__2_n_0\,
      I3 => \sample_y1[6]_i_2_n_0\,
      I4 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      O => coordinate_y1(6)
    );
\sample_y1[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \input_height_reg_n_0_[6]\,
      I1 => \i__carry_i_5_n_0\,
      O => \sample_y1[6]_i_2_n_0\
    );
\sample_y1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => sample_fraction_y
    );
\sample_y1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000154055551540"
    )
        port map (
      I0 => \coordinate_y01_inferred__0/i__carry__2_n_0\,
      I1 => \sample_y1[7]_i_3_n_0\,
      I2 => coordinate_y02_n_91,
      I3 => coordinate_y02_n_90,
      I4 => \coordinate_y01_carry__2_n_0\,
      I5 => \sample_y1[7]_i_4_n_0\,
      O => \sample_y1[7]_i_2_n_0\
    );
\sample_y1[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => coordinate_y02_n_92,
      I1 => coordinate_y02_n_93,
      I2 => coordinate_y02_n_95,
      I3 => coordinate_y02_n_97,
      I4 => coordinate_y02_n_96,
      I5 => coordinate_y02_n_94,
      O => \sample_y1[7]_i_3_n_0\
    );
\sample_y1[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \input_height_reg_n_0_[7]\,
      I1 => \i__carry_i_5_n_0\,
      I2 => \input_height_reg_n_0_[6]\,
      O => \sample_y1[7]_i_4_n_0\
    );
\sample_y1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_y1(0),
      Q => sample_y1(0)
    );
\sample_y1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[1]_i_1_n_0\,
      Q => sample_y1(1)
    );
\sample_y1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[2]_i_1_n_0\,
      Q => sample_y1(2)
    );
\sample_y1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[3]_i_1_n_0\,
      Q => sample_y1(3)
    );
\sample_y1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[4]_i_1_n_0\,
      Q => sample_y1(4)
    );
\sample_y1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[5]_i_1_n_0\,
      Q => sample_y1(5)
    );
\sample_y1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => coordinate_y1(6),
      Q => sample_y1(6)
    );
\sample_y1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => sample_fraction_y,
      CLR => \^aresetn_0\,
      D => \sample_y1[7]_i_2_n_0\,
      Q => sample_y1(7)
    );
size_error_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_y_reg[8]_1\(5),
      I1 => \input_y_reg[8]_1\(4),
      I2 => \input_y_reg[8]_1\(2),
      I3 => \input_x_reg[8]_0\(6),
      O => size_error_i_10_n_0
    );
size_error_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_y_reg[8]_1\(6),
      I1 => \input_x_reg[8]_0\(7),
      I2 => \input_y_reg[8]_1\(8),
      I3 => \input_x_reg[8]_0\(2),
      O => size_error_i_11_n_0
    );
size_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6FF6F66F6"
    )
        port map (
      I0 => CO(0),
      I1 => input_final0,
      I2 => size_error_i_3_n_0,
      I3 => size_error_i_4_n_0,
      I4 => size_error_i_5_n_0,
      I5 => size_error_i_6_n_0,
      O => \input_x_reg[1]_0\
    );
size_error_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => input_x(1),
      I1 => input_x(0),
      I2 => \input_y_reg_n_0_[5]\,
      I3 => \input_y_reg_n_0_[6]\,
      I4 => \input_y_reg_n_0_[0]\,
      I5 => \input_y_reg_n_0_[1]\,
      O => size_error_i_3_n_0
    );
size_error_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => size_error_i_7_n_0,
      I1 => size_error_i_8_n_0,
      I2 => size_error_i_9_n_0,
      I3 => input_x(7),
      I4 => \input_y_reg_n_0_[3]\,
      I5 => input_x(2),
      O => size_error_i_4_n_0
    );
size_error_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \input_x_reg[8]_0\(1),
      I1 => \input_x_reg[8]_0\(0),
      I2 => \input_x_reg[8]_0\(5),
      I3 => \input_y_reg[8]_1\(3),
      I4 => \input_y_reg[8]_1\(0),
      I5 => \input_y_reg[8]_1\(1),
      O => size_error_i_5_n_0
    );
size_error_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \input_x_reg[8]_0\(8),
      I1 => \input_y_reg[8]_1\(7),
      I2 => \input_x_reg[8]_0\(3),
      I3 => \input_x_reg[8]_0\(4),
      I4 => size_error_i_10_n_0,
      I5 => size_error_i_11_n_0,
      O => size_error_i_6_n_0
    );
size_error_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \input_y_reg_n_0_[2]\,
      I1 => input_x(4),
      I2 => \input_y_reg_n_0_[7]\,
      I3 => \input_y_reg_n_0_[4]\,
      O => size_error_i_7_n_0
    );
size_error_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => input_x(10),
      I1 => input_x(8),
      I2 => \input_y_reg_n_0_[9]\,
      I3 => input_x(6),
      O => size_error_i_8_n_0
    );
size_error_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => input_x(9),
      I1 => input_x(3),
      I2 => \input_y_reg_n_0_[8]\,
      I3 => input_x(5),
      O => size_error_i_9_n_0
    );
size_error_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => size_error_reg_0,
      Q => resize_size_error
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFF00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \state[1]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \output_y[6]_i_3_n_0\,
      I1 => \output_y_reg_n_0_[6]\,
      I2 => \output_x_reg_n_0_[6]\,
      I3 => \output_x[6]_i_4_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCFAFCFA"
    )
        port map (
      I0 => \^control[29]\,
      I1 => \state[3]_i_3_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => done_reg_0,
      I5 => \state[3]_i_5_n_0\,
      O => state
    );
\state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^dma_tvalid_0\,
      I1 => \input_final0_inferred__0/i__carry_n_0\,
      I2 => input_final0,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \state[3]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => state,
      CLR => \^aresetn_0\,
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => state,
      CLR => \^aresetn_0\,
      D => \state[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => state,
      CLR => \^aresetn_0\,
      D => \state[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => state,
      CLR => \^aresetn_0\,
      D => \state[3]_i_2_n_0\,
      Q => \^q\(3)
    );
top_delta_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => top_delta_carry_n_0,
      CO(2) => top_delta_carry_n_1,
      CO(1) => top_delta_carry_n_2,
      CO(0) => top_delta_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => p10(3 downto 0),
      O(3 downto 0) => A(3 downto 0),
      S(3) => top_delta_carry_i_1_n_0,
      S(2) => top_delta_carry_i_2_n_0,
      S(1) => top_delta_carry_i_3_n_0,
      S(0) => top_delta_carry_i_4_n_0
    );
\top_delta_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => top_delta_carry_n_0,
      CO(3) => \top_delta_carry__0_n_0\,
      CO(2) => \top_delta_carry__0_n_1\,
      CO(1) => \top_delta_carry__0_n_2\,
      CO(0) => \top_delta_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p10(7 downto 4),
      O(3 downto 0) => A(7 downto 4),
      S(3) => \top_delta_carry__0_i_1_n_0\,
      S(2) => \top_delta_carry__0_i_2_n_0\,
      S(1) => \top_delta_carry__0_i_3_n_0\,
      S(0) => \top_delta_carry__0_i_4_n_0\
    );
\top_delta_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(7),
      I1 => p00(7),
      O => \top_delta_carry__0_i_1_n_0\
    );
\top_delta_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(6),
      I1 => p00(6),
      O => \top_delta_carry__0_i_2_n_0\
    );
\top_delta_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(5),
      I1 => p00(5),
      O => \top_delta_carry__0_i_3_n_0\
    );
\top_delta_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(4),
      I1 => p00(4),
      O => \top_delta_carry__0_i_4_n_0\
    );
\top_delta_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \top_delta_carry__0_n_0\,
      CO(3 downto 0) => \NLW_top_delta_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_top_delta_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => A(8),
      S(3 downto 0) => B"0001"
    );
top_delta_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(3),
      I1 => p00(3),
      O => top_delta_carry_i_1_n_0
    );
top_delta_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(2),
      I1 => p00(2),
      O => top_delta_carry_i_2_n_0
    );
top_delta_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(1),
      I1 => p00(1),
      O => top_delta_carry_i_3_n_0
    );
top_delta_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p10(0),
      I1 => p00(0),
      O => top_delta_carry_i_4_n_0
    );
top_mix_next: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(8),
      A(28) => A(8),
      A(27) => A(8),
      A(26) => A(8),
      A(25) => A(8),
      A(24) => A(8),
      A(23) => A(8),
      A(22) => A(8),
      A(21) => A(8),
      A(20) => A(8),
      A(19) => A(8),
      A(18) => A(8),
      A(17) => A(8),
      A(16) => A(8),
      A(15) => A(8),
      A(14) => A(8),
      A(13) => A(8),
      A(12) => A(8),
      A(11) => A(8),
      A(10) => A(8),
      A(9) => A(8),
      A(8 downto 0) => A(8 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_top_mix_next_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => sample_fraction_x(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_top_mix_next_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => p00(7),
      C(46) => p00(7),
      C(45) => p00(7),
      C(44) => p00(7),
      C(43) => p00(7),
      C(42) => p00(7),
      C(41) => p00(7),
      C(40) => p00(7),
      C(39) => p00(7),
      C(38) => p00(7),
      C(37) => p00(7),
      C(36) => p00(7),
      C(35) => p00(7),
      C(34) => p00(7),
      C(33) => p00(7),
      C(32) => p00(7),
      C(31) => p00(7),
      C(30) => p00(7),
      C(29) => p00(7),
      C(28) => p00(7),
      C(27) => p00(7),
      C(26) => p00(7),
      C(25) => p00(7),
      C(24) => p00(7),
      C(23) => p00(7),
      C(22) => p00(7),
      C(21) => p00(7),
      C(20) => p00(7),
      C(19) => p00(7),
      C(18) => p00(7),
      C(17) => p00(7),
      C(16) => p00(7),
      C(15 downto 8) => p00(7 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_top_mix_next_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_top_mix_next_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => top_mix_next_i_1_n_0,
      CLK => aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_top_mix_next_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_top_mix_next_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_top_mix_next_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \top_mix_next__0\(15 downto 0),
      PATTERNBDETECT => NLW_top_mix_next_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_top_mix_next_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_top_mix_next_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_top_mix_next_UNDERFLOW_UNCONNECTED
    );
top_mix_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => top_mix_next_i_1_n_0
    );
vertical_delta_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vertical_delta_carry_n_0,
      CO(2) => vertical_delta_carry_n_1,
      CO(1) => vertical_delta_carry_n_2,
      CO(0) => vertical_delta_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => bottom_mix(3 downto 0),
      O(3) => vertical_delta_carry_n_4,
      O(2) => vertical_delta_carry_n_5,
      O(1) => vertical_delta_carry_n_6,
      O(0) => vertical_delta_carry_n_7,
      S(3) => vertical_delta_carry_i_5_n_0,
      S(2) => vertical_delta_carry_i_6_n_0,
      S(1) => vertical_delta_carry_i_7_n_0,
      S(0) => vertical_delta_carry_i_8_n_0
    );
\vertical_delta_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => vertical_delta_carry_n_0,
      CO(3) => \vertical_delta_carry__0_n_0\,
      CO(2) => \vertical_delta_carry__0_n_1\,
      CO(1) => \vertical_delta_carry__0_n_2\,
      CO(0) => \vertical_delta_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => bottom_mix(7 downto 4),
      O(3) => \vertical_delta_carry__0_n_4\,
      O(2) => \vertical_delta_carry__0_n_5\,
      O(1) => \vertical_delta_carry__0_n_6\,
      O(0) => \vertical_delta_carry__0_n_7\,
      S(3) => \vertical_delta_carry__0_i_5_n_0\,
      S(2) => \vertical_delta_carry__0_i_6_n_0\,
      S(1) => \vertical_delta_carry__0_i_7_n_0\,
      S(0) => \vertical_delta_carry__0_i_8_n_0\
    );
\vertical_delta_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(7),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(7)
    );
\vertical_delta_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(6),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(6)
    );
\vertical_delta_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(5),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(5)
    );
\vertical_delta_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(4),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(4)
    );
\vertical_delta_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(7),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(7),
      O => \vertical_delta_carry__0_i_5_n_0\
    );
\vertical_delta_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(6),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(6),
      O => \vertical_delta_carry__0_i_6_n_0\
    );
\vertical_delta_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(5),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(5),
      O => \vertical_delta_carry__0_i_7_n_0\
    );
\vertical_delta_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(4),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(4),
      O => \vertical_delta_carry__0_i_8_n_0\
    );
\vertical_delta_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_delta_carry__0_n_0\,
      CO(3) => \vertical_delta_carry__1_n_0\,
      CO(2) => \vertical_delta_carry__1_n_1\,
      CO(1) => \vertical_delta_carry__1_n_2\,
      CO(0) => \vertical_delta_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => bottom_mix(11 downto 8),
      O(3) => \vertical_delta_carry__1_n_4\,
      O(2) => \vertical_delta_carry__1_n_5\,
      O(1) => \vertical_delta_carry__1_n_6\,
      O(0) => \vertical_delta_carry__1_n_7\,
      S(3) => \vertical_delta_carry__1_i_5_n_0\,
      S(2) => \vertical_delta_carry__1_i_6_n_0\,
      S(1) => \vertical_delta_carry__1_i_7_n_0\,
      S(0) => \vertical_delta_carry__1_i_8_n_0\
    );
\vertical_delta_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(11),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(11)
    );
\vertical_delta_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(10),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(10)
    );
\vertical_delta_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(9),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(9)
    );
\vertical_delta_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(8),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(8)
    );
\vertical_delta_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(11),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(11),
      O => \vertical_delta_carry__1_i_5_n_0\
    );
\vertical_delta_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(10),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(10),
      O => \vertical_delta_carry__1_i_6_n_0\
    );
\vertical_delta_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(9),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(9),
      O => \vertical_delta_carry__1_i_7_n_0\
    );
\vertical_delta_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(8),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(8),
      O => \vertical_delta_carry__1_i_8_n_0\
    );
\vertical_delta_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_delta_carry__1_n_0\,
      CO(3) => \vertical_delta_carry__2_n_0\,
      CO(2) => \vertical_delta_carry__2_n_1\,
      CO(1) => \vertical_delta_carry__2_n_2\,
      CO(0) => \vertical_delta_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => bottom_mix(15 downto 12),
      O(3) => \vertical_delta_carry__2_n_4\,
      O(2) => \vertical_delta_carry__2_n_5\,
      O(1) => \vertical_delta_carry__2_n_6\,
      O(0) => \vertical_delta_carry__2_n_7\,
      S(3) => \vertical_delta_carry__2_i_5_n_0\,
      S(2) => \vertical_delta_carry__2_i_6_n_0\,
      S(1) => \vertical_delta_carry__2_i_7_n_0\,
      S(0) => \vertical_delta_carry__2_i_8_n_0\
    );
\vertical_delta_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(15),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(15)
    );
\vertical_delta_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(14),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(14)
    );
\vertical_delta_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(13),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(13)
    );
\vertical_delta_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(12),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(12)
    );
\vertical_delta_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(15),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(15),
      O => \vertical_delta_carry__2_i_5_n_0\
    );
\vertical_delta_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(14),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(14),
      O => \vertical_delta_carry__2_i_6_n_0\
    );
\vertical_delta_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(13),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(13),
      O => \vertical_delta_carry__2_i_7_n_0\
    );
\vertical_delta_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(12),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(12),
      O => \vertical_delta_carry__2_i_8_n_0\
    );
\vertical_delta_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_delta_carry__2_n_0\,
      CO(3 downto 0) => \NLW_vertical_delta_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_vertical_delta_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \vertical_delta_carry__3_n_7\,
      S(3 downto 0) => B"0001"
    );
vertical_delta_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(3),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(3)
    );
vertical_delta_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => vertical_delta_carry_i_9,
      O => \state_reg[2]_1\
    );
vertical_delta_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(2),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(2)
    );
vertical_delta_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(1),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(1)
    );
vertical_delta_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bottom_mix_next__0\(0),
      I1 => vertical_delta_carry_i_9,
      O => bottom_mix(0)
    );
vertical_delta_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(3),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(3),
      O => vertical_delta_carry_i_5_n_0
    );
vertical_delta_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(2),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(2),
      O => vertical_delta_carry_i_6_n_0
    );
vertical_delta_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(1),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(1),
      O => vertical_delta_carry_i_7_n_0
    );
vertical_delta_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => vertical_delta_carry_i_9,
      I1 => \bottom_mix_next__0\(0),
      I2 => OPMODE(0),
      I3 => \top_mix_next__0\(0),
      O => vertical_delta_carry_i_8_n_0
    );
vertical_mix_next: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \vertical_delta_carry__3_n_7\,
      A(28) => \vertical_delta_carry__3_n_7\,
      A(27) => \vertical_delta_carry__3_n_7\,
      A(26) => \vertical_delta_carry__3_n_7\,
      A(25) => \vertical_delta_carry__3_n_7\,
      A(24) => \vertical_delta_carry__3_n_7\,
      A(23) => \vertical_delta_carry__3_n_7\,
      A(22) => \vertical_delta_carry__3_n_7\,
      A(21) => \vertical_delta_carry__3_n_7\,
      A(20) => \vertical_delta_carry__3_n_7\,
      A(19) => \vertical_delta_carry__3_n_7\,
      A(18) => \vertical_delta_carry__3_n_7\,
      A(17) => \vertical_delta_carry__3_n_7\,
      A(16) => \vertical_delta_carry__3_n_7\,
      A(15) => \vertical_delta_carry__2_n_4\,
      A(14) => \vertical_delta_carry__2_n_5\,
      A(13) => \vertical_delta_carry__2_n_6\,
      A(12) => \vertical_delta_carry__2_n_7\,
      A(11) => \vertical_delta_carry__1_n_4\,
      A(10) => \vertical_delta_carry__1_n_5\,
      A(9) => \vertical_delta_carry__1_n_6\,
      A(8) => \vertical_delta_carry__1_n_7\,
      A(7) => \vertical_delta_carry__0_n_4\,
      A(6) => \vertical_delta_carry__0_n_5\,
      A(5) => \vertical_delta_carry__0_n_6\,
      A(4) => \vertical_delta_carry__0_n_7\,
      A(3) => vertical_delta_carry_n_4,
      A(2) => vertical_delta_carry_n_5,
      A(1) => vertical_delta_carry_n_6,
      A(0) => vertical_delta_carry_n_7,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_vertical_mix_next_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7) => \sample_fraction_y_reg_n_0_[7]\,
      B(6) => \sample_fraction_y_reg_n_0_[6]\,
      B(5) => \sample_fraction_y_reg_n_0_[5]\,
      B(4) => \sample_fraction_y_reg_n_0_[4]\,
      B(3) => \sample_fraction_y_reg_n_0_[3]\,
      B(2) => \sample_fraction_y_reg_n_0_[2]\,
      B(1) => \sample_fraction_y_reg_n_0_[1]\,
      B(0) => \sample_fraction_y_reg_n_0_[0]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_vertical_mix_next_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => \top_mix_next__0\(15),
      C(46) => \top_mix_next__0\(15),
      C(45) => \top_mix_next__0\(15),
      C(44) => \top_mix_next__0\(15),
      C(43) => \top_mix_next__0\(15),
      C(42) => \top_mix_next__0\(15),
      C(41) => \top_mix_next__0\(15),
      C(40) => \top_mix_next__0\(15),
      C(39) => \top_mix_next__0\(15),
      C(38) => \top_mix_next__0\(15),
      C(37) => \top_mix_next__0\(15),
      C(36) => \top_mix_next__0\(15),
      C(35) => \top_mix_next__0\(15),
      C(34) => \top_mix_next__0\(15),
      C(33) => \top_mix_next__0\(15),
      C(32) => \top_mix_next__0\(15),
      C(31) => \top_mix_next__0\(15),
      C(30) => \top_mix_next__0\(15),
      C(29) => \top_mix_next__0\(15),
      C(28) => \top_mix_next__0\(15),
      C(27) => \top_mix_next__0\(15),
      C(26) => \top_mix_next__0\(15),
      C(25) => \top_mix_next__0\(15),
      C(24) => \top_mix_next__0\(15),
      C(23 downto 8) => \top_mix_next__0\(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_vertical_mix_next_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_vertical_mix_next_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => vertical_mix_next_i_1_n_0,
      CLK => aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_vertical_mix_next_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6) => '0',
      OPMODE(5) => OPMODE(0),
      OPMODE(4) => OPMODE(0),
      OPMODE(3 downto 0) => B"0101",
      OVERFLOW => NLW_vertical_mix_next_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_vertical_mix_next_P_UNCONNECTED(47 downto 24),
      P(23 downto 14) => \vertical_mix_next__0\(23 downto 14),
      P(13) => vertical_mix_next_n_92,
      P(12) => vertical_mix_next_n_93,
      P(11) => vertical_mix_next_n_94,
      P(10) => vertical_mix_next_n_95,
      P(9) => vertical_mix_next_n_96,
      P(8) => vertical_mix_next_n_97,
      P(7) => vertical_mix_next_n_98,
      P(6) => vertical_mix_next_n_99,
      P(5) => vertical_mix_next_n_100,
      P(4) => vertical_mix_next_n_101,
      P(3) => vertical_mix_next_n_102,
      P(2) => vertical_mix_next_n_103,
      P(1) => vertical_mix_next_n_104,
      P(0) => vertical_mix_next_n_105,
      PATTERNBDETECT => NLW_vertical_mix_next_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_vertical_mix_next_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_vertical_mix_next_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_vertical_mix_next_UNDERFLOW_UNCONNECTED
    );
vertical_mix_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => vertical_mix_next_i_1_n_0
    );
vertical_mix_next_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => OPMODE(0),
      O => \state_reg[0]_0\
    );
\win_x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^resize_user\,
      I1 => \x_count_reg[5]_0\(1),
      O => m_tuser_reg_1(0)
    );
\win_y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^resize_user\,
      I1 => \win_y_reg[1]\(1),
      O => m_tuser_reg_0(0)
    );
\x_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \x_count_reg[5]_0\(0),
      I1 => \^resize_user\,
      I2 => \^resize_last\,
      O => m_tlast_reg_0(0)
    );
\x_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \^resize_last\,
      I1 => \^resize_user\,
      I2 => \x_count_reg[5]_0\(0),
      I3 => \x_count_reg[5]_0\(1),
      O => m_tlast_reg_0(1)
    );
\x_count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^resize_user\,
      I1 => \x_count_reg[5]_0\(0),
      O => m_tuser_reg_2
    );
\x_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1141"
    )
        port map (
      I0 => \^resize_last\,
      I1 => \x_count_reg[5]\,
      I2 => \x_count_reg[5]_0\(2),
      I3 => \^resize_user\,
      O => m_tlast_reg_0(2)
    );
\y_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^resize_last\,
      I1 => \win_y_reg[1]\(0),
      I2 => \^resize_user\,
      O => m_tlast_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_window3x3 is
  port (
    win_last : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    win_valid : out STD_LOGIC;
    \y_count_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \x_count_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \x_count_reg[3]_0\ : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    aresetn_1 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[1][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[1][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[2][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[2][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[3][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[3][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[4][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[4][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[5][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[5][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[6][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[6][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[7][6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_p_reg[7][6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \win_x_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \win_y_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    win_valid_reg_0 : in STD_LOGIC;
    win_valid_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \p_0_in7_out__0\ : in STD_LOGIC;
    win_last_reg_0 : in STD_LOGIC;
    resize_user : in STD_LOGIC;
    resize_last : in STD_LOGIC;
    \x_count_reg[4]_0\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \y_count_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \y_count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_count_reg[5]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \win_x_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_window3x3 : entity is "window3x3";
end facebox_system_wp4_board_bridge_0_0_window3x3;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_window3x3 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aresetn_0\ : STD_LOGIC;
  signal \^aresetn_1\ : STD_LOGIC;
  signal bot_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bot_m2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cur_x : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal cur_y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mid_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mid_m2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal prev_row_reg_0_127_0_0_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_1_1_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_2_2_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_3_3_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_4_4_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_5_5_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_6_6_n_0 : STD_LOGIC;
  signal prev_row_reg_0_127_7_7_n_0 : STD_LOGIC;
  signal top_m1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_m10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_m2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal win_last0 : STD_LOGIC;
  signal win_last_i_2_n_0 : STD_LOGIC;
  signal \win_p_reg[0]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[1]_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[2]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[3]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[4]_5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[5]_6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[6]_7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[7]_8\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \win_p_reg[8]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal win_x0 : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \win_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \win_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \win_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \win_x[6]_i_3_n_0\ : STD_LOGIC;
  signal \win_x[6]_i_4_n_0\ : STD_LOGIC;
  signal win_y0 : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \win_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \win_y[6]_i_2_n_0\ : STD_LOGIC;
  signal x_count : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \x_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \x_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \x_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \^x_count_reg[3]_0\ : STD_LOGIC;
  signal \^x_count_reg[5]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \y_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \y_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \^y_count_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \y_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \win_x[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \win_x[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \win_x[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \win_y[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \win_y[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \win_y[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \win_y[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \win_y[6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \y_count[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y_count[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y_count[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \y_count[6]_i_2\ : label is "soft_lutpair14";
begin
  E(0) <= \^e\(0);
  aresetn_0 <= \^aresetn_0\;
  aresetn_1 <= \^aresetn_1\;
  \x_count_reg[3]_0\ <= \^x_count_reg[3]_0\;
  \x_count_reg[5]_0\(2 downto 0) <= \^x_count_reg[5]_0\(2 downto 0);
  \y_count_reg[1]_0\(1 downto 0) <= \^y_count_reg[1]_0\(1 downto 0);
\bot_m1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => Q(0),
      Q => bot_m1(0)
    );
\bot_m1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => Q(1),
      Q => bot_m1(1)
    );
\bot_m1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(2),
      Q => bot_m1(2)
    );
\bot_m1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(3),
      Q => bot_m1(3)
    );
\bot_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(4),
      Q => bot_m1(4)
    );
\bot_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(5),
      Q => bot_m1(5)
    );
\bot_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(6),
      Q => bot_m1(6)
    );
\bot_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => Q(7),
      Q => bot_m1(7)
    );
\bot_m2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => bot_m1(0),
      Q => bot_m2(0)
    );
\bot_m2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => bot_m1(1),
      Q => bot_m2(1)
    );
\bot_m2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(2),
      Q => bot_m2(2)
    );
\bot_m2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(3),
      Q => bot_m2(3)
    );
\bot_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(4),
      Q => bot_m2(4)
    );
\bot_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(5),
      Q => bot_m2(5)
    );
\bot_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(6),
      Q => bot_m2(6)
    );
\bot_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(7),
      Q => bot_m2(7)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[1]_4\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[1]_4\(7),
      O => \win_p_reg[1][6]_1\(3)
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[2]_2\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[2]_2\(7),
      O => \win_p_reg[2][6]_1\(3)
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[3]_0\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[3]_0\(7),
      O => \win_p_reg[3][6]_1\(3)
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[4]_5\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[4]_5\(7),
      O => \win_p_reg[4][6]_1\(3)
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[5]_6\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[5]_6\(7),
      O => \win_p_reg[5][6]_1\(3)
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[6]_7\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[6]_7\(7),
      O => \win_p_reg[6][6]_1\(3)
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[7]_8\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[7]_8\(7),
      O => \win_p_reg[7][6]_1\(3)
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[1]_4\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[1]_4\(5),
      O => \win_p_reg[1][6]_1\(2)
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[2]_2\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[2]_2\(5),
      O => \win_p_reg[2][6]_1\(2)
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[3]_0\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[3]_0\(5),
      O => \win_p_reg[3][6]_1\(2)
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[4]_5\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[4]_5\(5),
      O => \win_p_reg[4][6]_1\(2)
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[5]_6\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[5]_6\(5),
      O => \win_p_reg[5][6]_1\(2)
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[6]_7\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[6]_7\(5),
      O => \win_p_reg[6][6]_1\(2)
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[7]_8\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[7]_8\(5),
      O => \win_p_reg[7][6]_1\(2)
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[1]_4\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[1]_4\(3),
      O => \win_p_reg[1][6]_1\(1)
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[2]_2\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[2]_2\(3),
      O => \win_p_reg[2][6]_1\(1)
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[3]_0\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[3]_0\(3),
      O => \win_p_reg[3][6]_1\(1)
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[4]_5\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[4]_5\(3),
      O => \win_p_reg[4][6]_1\(1)
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[5]_6\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[5]_6\(3),
      O => \win_p_reg[5][6]_1\(1)
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[6]_7\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[6]_7\(3),
      O => \win_p_reg[6][6]_1\(1)
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[7]_8\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[7]_8\(3),
      O => \win_p_reg[7][6]_1\(1)
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[1]_4\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[1]_4\(1),
      O => \win_p_reg[1][6]_1\(0)
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[2]_2\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[2]_2\(1),
      O => \win_p_reg[2][6]_1\(0)
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[3]_0\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[3]_0\(1),
      O => \win_p_reg[3][6]_1\(0)
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[4]_5\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[4]_5\(1),
      O => \win_p_reg[4][6]_1\(0)
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[5]_6\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[5]_6\(1),
      O => \win_p_reg[5][6]_1\(0)
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[6]_7\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[6]_7\(1),
      O => \win_p_reg[6][6]_1\(0)
    );
\i__carry_i_4__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[7]_8\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[7]_8\(1),
      O => \win_p_reg[7][6]_1\(0)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[1]_4\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[1]_4\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[1][6]_0\(3)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[2]_2\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[2]_2\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[2][6]_0\(3)
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[3]_0\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[3]_0\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[3][6]_0\(3)
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[4]_5\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[4]_5\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[4][6]_0\(3)
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[5]_6\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[5]_6\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[5][6]_0\(3)
    );
\i__carry_i_5__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[6]_7\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[6]_7\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[6][6]_0\(3)
    );
\i__carry_i_5__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[7]_8\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[7]_8\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => \win_p_reg[7][6]_0\(3)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[1]_4\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[1]_4\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[1][6]_0\(2)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[2]_2\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[2]_2\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[2][6]_0\(2)
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[3]_0\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[3]_0\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[3][6]_0\(2)
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[4]_5\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[4]_5\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[4][6]_0\(2)
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[5]_6\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[5]_6\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[5][6]_0\(2)
    );
\i__carry_i_6__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[6]_7\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[6]_7\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[6][6]_0\(2)
    );
\i__carry_i_6__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[7]_8\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[7]_8\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => \win_p_reg[7][6]_0\(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[1]_4\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[1]_4\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[1][6]_0\(1)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[2]_2\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[2]_2\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[2][6]_0\(1)
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[3]_0\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[3]_0\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[3][6]_0\(1)
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[4]_5\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[4]_5\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[4][6]_0\(1)
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[5]_6\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[5]_6\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[5][6]_0\(1)
    );
\i__carry_i_7__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[6]_7\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[6]_7\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[6][6]_0\(1)
    );
\i__carry_i_7__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[7]_8\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[7]_8\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => \win_p_reg[7][6]_0\(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[1]_4\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[1]_4\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[1][6]_0\(0)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[2]_2\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[2]_2\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[2][6]_0\(0)
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[3]_0\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[3]_0\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[3][6]_0\(0)
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[4]_5\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[4]_5\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[4][6]_0\(0)
    );
\i__carry_i_8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[5]_6\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[5]_6\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[5][6]_0\(0)
    );
\i__carry_i_8__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[6]_7\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[6]_7\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[6][6]_0\(0)
    );
\i__carry_i_8__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[7]_8\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[7]_8\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => \win_p_reg[7][6]_0\(0)
    );
lbp_code0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[0]_3\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[8]_1\(7),
      I3 => \win_p_reg[0]_3\(7),
      O => DI(3)
    );
lbp_code0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[0]_3\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[8]_1\(5),
      I3 => \win_p_reg[0]_3\(5),
      O => DI(2)
    );
lbp_code0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[0]_3\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[8]_1\(3),
      I3 => \win_p_reg[0]_3\(3),
      O => DI(1)
    );
lbp_code0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \win_p_reg[0]_3\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[8]_1\(1),
      I3 => \win_p_reg[0]_3\(1),
      O => DI(0)
    );
lbp_code0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[0]_3\(6),
      I1 => \win_p_reg[8]_1\(6),
      I2 => \win_p_reg[0]_3\(7),
      I3 => \win_p_reg[8]_1\(7),
      O => S(3)
    );
lbp_code0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[0]_3\(4),
      I1 => \win_p_reg[8]_1\(4),
      I2 => \win_p_reg[0]_3\(5),
      I3 => \win_p_reg[8]_1\(5),
      O => S(2)
    );
lbp_code0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[0]_3\(2),
      I1 => \win_p_reg[8]_1\(2),
      I2 => \win_p_reg[0]_3\(3),
      I3 => \win_p_reg[8]_1\(3),
      O => S(1)
    );
lbp_code0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \win_p_reg[0]_3\(0),
      I1 => \win_p_reg[8]_1\(0),
      I2 => \win_p_reg[0]_3\(1),
      I3 => \win_p_reg[8]_1\(1),
      O => S(0)
    );
\mid_m1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_0_0_n_0,
      Q => mid_m1(0)
    );
\mid_m1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_1_1_n_0,
      Q => mid_m1(1)
    );
\mid_m1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_2_2_n_0,
      Q => mid_m1(2)
    );
\mid_m1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_3_3_n_0,
      Q => mid_m1(3)
    );
\mid_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_4_4_n_0,
      Q => mid_m1(4)
    );
\mid_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_5_5_n_0,
      Q => mid_m1(5)
    );
\mid_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_6_6_n_0,
      Q => mid_m1(6)
    );
\mid_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_7_7_n_0,
      Q => mid_m1(7)
    );
\mid_m2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => mid_m1(0),
      Q => mid_m2(0)
    );
\mid_m2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => mid_m1(1),
      Q => mid_m2(1)
    );
\mid_m2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(2),
      Q => mid_m2(2)
    );
\mid_m2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(3),
      Q => mid_m2(3)
    );
\mid_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(4),
      Q => mid_m2(4)
    );
\mid_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(5),
      Q => mid_m2(5)
    );
\mid_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(6),
      Q => mid_m2(6)
    );
\mid_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(7),
      Q => mid_m2(7)
    );
prev2_row_reg_0_127_0_0: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_0_0_n_0,
      O => top_m10(0),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_1_1: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_1_1_n_0,
      O => top_m10(1),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_2_2: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_2_2_n_0,
      O => top_m10(2),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_3_3: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_3_3_n_0,
      O => top_m10(3),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_4_4: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_4_4_n_0,
      O => top_m10(4),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_5_5: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_5_5_n_0,
      O => top_m10(5),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_6_6: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_6_6_n_0,
      O => top_m10(6),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev2_row_reg_0_127_7_7: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => prev_row_reg_0_127_7_7_n_0,
      O => top_m10(7),
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_0_0: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(0),
      O => prev_row_reg_0_127_0_0_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^x_count_reg[5]_0\(1),
      I1 => resize_user,
      O => cur_x(1)
    );
prev_row_reg_0_127_0_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_count(2),
      I1 => resize_user,
      O => cur_x(2)
    );
prev_row_reg_0_127_0_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_count(3),
      I1 => resize_user,
      O => cur_x(3)
    );
prev_row_reg_0_127_0_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_count(4),
      I1 => resize_user,
      O => cur_x(4)
    );
prev_row_reg_0_127_0_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^x_count_reg[5]_0\(2),
      I1 => resize_user,
      O => cur_x(5)
    );
prev_row_reg_0_127_0_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x_count(6),
      I1 => resize_user,
      O => cur_x(6)
    );
prev_row_reg_0_127_1_1: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(1),
      O => prev_row_reg_0_127_1_1_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_2_2: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(2),
      O => prev_row_reg_0_127_2_2_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_3_3: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(3),
      O => prev_row_reg_0_127_3_3_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_4_4: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(4),
      O => prev_row_reg_0_127_4_4_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_5_5: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(5),
      O => prev_row_reg_0_127_5_5_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_6_6: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(6),
      O => prev_row_reg_0_127_6_6_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
prev_row_reg_0_127_7_7: unisim.vcomponents.RAM128X1S
     port map (
      A0 => cur_x(0),
      A1 => cur_x(1),
      A2 => cur_x(2),
      A3 => cur_x(3),
      A4 => cur_x(4),
      A5 => cur_x(5),
      A6 => cur_x(6),
      D => Q(7),
      O => prev_row_reg_0_127_7_7_n_0,
      WCLK => aclk,
      WE => \p_0_in7_out__0\
    );
protocol_error_sticky_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\sample_fraction_x[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_1\
    );
\top_m1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => top_m10(0),
      Q => top_m1(0)
    );
\top_m1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => top_m10(1),
      Q => top_m1(1)
    );
\top_m1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(2),
      Q => top_m1(2)
    );
\top_m1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(3),
      Q => top_m1(3)
    );
\top_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(4),
      Q => top_m1(4)
    );
\top_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(5),
      Q => top_m1(5)
    );
\top_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(6),
      Q => top_m1(6)
    );
\top_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m10(7),
      Q => top_m1(7)
    );
\top_m2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => top_m1(0),
      Q => top_m2(0)
    );
\top_m2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => top_m1(1),
      Q => top_m2(1)
    );
\top_m2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(2),
      Q => top_m2(2)
    );
\top_m2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(3),
      Q => top_m2(3)
    );
\top_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(4),
      Q => top_m2(4)
    );
\top_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(5),
      Q => top_m2(5)
    );
\top_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(6),
      Q => top_m2(6)
    );
\top_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_1\,
      D => top_m1(7),
      Q => top_m2(7)
    );
win_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => win_last_i_2_n_0,
      I1 => x_count(6),
      I2 => resize_user,
      I3 => \y_count_reg_n_0_[5]\,
      I4 => \y_count[6]_i_3_n_0\,
      I5 => \y_count_reg_n_0_[6]\,
      O => win_last0
    );
win_last_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => cur_x(5),
      I1 => x_count(4),
      I2 => cur_x(2),
      I3 => \x_count_reg[4]_0\,
      I4 => cur_x(1),
      I5 => cur_x(3),
      O => win_last_i_2_n_0
    );
win_last_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => win_valid_reg_0,
      D => win_last0,
      Q => win_last
    );
\win_p_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m2(0),
      Q => \win_p_reg[0]_3\(0)
    );
\win_p_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m2(1),
      Q => \win_p_reg[0]_3\(1)
    );
\win_p_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(2),
      Q => \win_p_reg[0]_3\(2)
    );
\win_p_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(3),
      Q => \win_p_reg[0]_3\(3)
    );
\win_p_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(4),
      Q => \win_p_reg[0]_3\(4)
    );
\win_p_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(5),
      Q => \win_p_reg[0]_3\(5)
    );
\win_p_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(6),
      Q => \win_p_reg[0]_3\(6)
    );
\win_p_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m2(7),
      Q => \win_p_reg[0]_3\(7)
    );
\win_p_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m1(0),
      Q => \win_p_reg[1]_4\(0)
    );
\win_p_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m1(1),
      Q => \win_p_reg[1]_4\(1)
    );
\win_p_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(2),
      Q => \win_p_reg[1]_4\(2)
    );
\win_p_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(3),
      Q => \win_p_reg[1]_4\(3)
    );
\win_p_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(4),
      Q => \win_p_reg[1]_4\(4)
    );
\win_p_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(5),
      Q => \win_p_reg[1]_4\(5)
    );
\win_p_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(6),
      Q => \win_p_reg[1]_4\(6)
    );
\win_p_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m1(7),
      Q => \win_p_reg[1]_4\(7)
    );
\win_p_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m10(0),
      Q => \win_p_reg[2]_2\(0)
    );
\win_p_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m10(1),
      Q => \win_p_reg[2]_2\(1)
    );
\win_p_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m10(2),
      Q => \win_p_reg[2]_2\(2)
    );
\win_p_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => top_m10(3),
      Q => \win_p_reg[2]_2\(3)
    );
\win_p_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m10(4),
      Q => \win_p_reg[2]_2\(4)
    );
\win_p_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m10(5),
      Q => \win_p_reg[2]_2\(5)
    );
\win_p_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m10(6),
      Q => \win_p_reg[2]_2\(6)
    );
\win_p_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => top_m10(7),
      Q => \win_p_reg[2]_2\(7)
    );
\win_p_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_0_0_n_0,
      Q => \win_p_reg[3]_0\(0)
    );
\win_p_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_1_1_n_0,
      Q => \win_p_reg[3]_0\(1)
    );
\win_p_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_2_2_n_0,
      Q => \win_p_reg[3]_0\(2)
    );
\win_p_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => prev_row_reg_0_127_3_3_n_0,
      Q => \win_p_reg[3]_0\(3)
    );
\win_p_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_4_4_n_0,
      Q => \win_p_reg[3]_0\(4)
    );
\win_p_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_5_5_n_0,
      Q => \win_p_reg[3]_0\(5)
    );
\win_p_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_6_6_n_0,
      Q => \win_p_reg[3]_0\(6)
    );
\win_p_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => prev_row_reg_0_127_7_7_n_0,
      Q => \win_p_reg[3]_0\(7)
    );
\win_p_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => Q(0),
      Q => \win_p_reg[4]_5\(0)
    );
\win_p_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => Q(1),
      Q => \win_p_reg[4]_5\(1)
    );
\win_p_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(2),
      Q => \win_p_reg[4]_5\(2)
    );
\win_p_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(3),
      Q => \win_p_reg[4]_5\(3)
    );
\win_p_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(4),
      Q => \win_p_reg[4]_5\(4)
    );
\win_p_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(5),
      Q => \win_p_reg[4]_5\(5)
    );
\win_p_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(6),
      Q => \win_p_reg[4]_5\(6)
    );
\win_p_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => Q(7),
      Q => \win_p_reg[4]_5\(7)
    );
\win_p_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => bot_m1(0),
      Q => \win_p_reg[5]_6\(0)
    );
\win_p_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => bot_m1(1),
      Q => \win_p_reg[5]_6\(1)
    );
\win_p_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(2),
      Q => \win_p_reg[5]_6\(2)
    );
\win_p_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(3),
      Q => \win_p_reg[5]_6\(3)
    );
\win_p_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(4),
      Q => \win_p_reg[5]_6\(4)
    );
\win_p_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(5),
      Q => \win_p_reg[5]_6\(5)
    );
\win_p_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(6),
      Q => \win_p_reg[5]_6\(6)
    );
\win_p_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m1(7),
      Q => \win_p_reg[5]_6\(7)
    );
\win_p_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => bot_m2(0),
      Q => \win_p_reg[6]_7\(0)
    );
\win_p_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => bot_m2(1),
      Q => \win_p_reg[6]_7\(1)
    );
\win_p_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(2),
      Q => \win_p_reg[6]_7\(2)
    );
\win_p_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(3),
      Q => \win_p_reg[6]_7\(3)
    );
\win_p_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(4),
      Q => \win_p_reg[6]_7\(4)
    );
\win_p_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(5),
      Q => \win_p_reg[6]_7\(5)
    );
\win_p_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(6),
      Q => \win_p_reg[6]_7\(6)
    );
\win_p_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => bot_m2(7),
      Q => \win_p_reg[6]_7\(7)
    );
\win_p_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => mid_m2(0),
      Q => \win_p_reg[7]_8\(0)
    );
\win_p_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => mid_m2(1),
      Q => \win_p_reg[7]_8\(1)
    );
\win_p_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(2),
      Q => \win_p_reg[7]_8\(2)
    );
\win_p_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(3),
      Q => \win_p_reg[7]_8\(3)
    );
\win_p_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(4),
      Q => \win_p_reg[7]_8\(4)
    );
\win_p_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(5),
      Q => \win_p_reg[7]_8\(5)
    );
\win_p_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(6),
      Q => \win_p_reg[7]_8\(6)
    );
\win_p_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m2(7),
      Q => \win_p_reg[7]_8\(7)
    );
\win_p_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => mid_m1(0),
      Q => \win_p_reg[8]_1\(0)
    );
\win_p_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => mid_m1(1),
      Q => \win_p_reg[8]_1\(1)
    );
\win_p_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(2),
      Q => \win_p_reg[8]_1\(2)
    );
\win_p_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(3),
      Q => \win_p_reg[8]_1\(3)
    );
\win_p_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(4),
      Q => \win_p_reg[8]_1\(4)
    );
\win_p_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(5),
      Q => \win_p_reg[8]_1\(5)
    );
\win_p_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(6),
      Q => \win_p_reg[8]_1\(6)
    );
\win_p_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_1\,
      D => mid_m1(7),
      Q => \win_p_reg[8]_1\(7)
    );
win_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => win_valid_reg_0,
      D => win_valid_reg_1,
      Q => win_valid
    );
\win_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^x_count_reg[5]_0\(0),
      I1 => resize_user,
      O => cur_x(0)
    );
\win_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => \^x_count_reg[5]_0\(1),
      I1 => resize_user,
      I2 => x_count(2),
      O => \win_x[2]_i_1_n_0\
    );
\win_x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAF9"
    )
        port map (
      I0 => x_count(3),
      I1 => x_count(2),
      I2 => resize_user,
      I3 => \^x_count_reg[5]_0\(1),
      O => \win_x[3]_i_1_n_0\
    );
\win_x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEF0F1"
    )
        port map (
      I0 => x_count(3),
      I1 => x_count(2),
      I2 => resize_user,
      I3 => \^x_count_reg[5]_0\(1),
      I4 => x_count(4),
      O => win_x0(4)
    );
\win_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEF0F0F0F1"
    )
        port map (
      I0 => x_count(4),
      I1 => \^x_count_reg[5]_0\(1),
      I2 => resize_user,
      I3 => x_count(2),
      I4 => x_count(3),
      I5 => \^x_count_reg[5]_0\(2),
      O => win_x0(5)
    );
\win_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510551011100000"
    )
        port map (
      I0 => win_last_reg_0,
      I1 => resize_user,
      I2 => \y_count_reg_n_0_[6]\,
      I3 => \win_x[6]_i_3_n_0\,
      I4 => x_count(6),
      I5 => \win_x[6]_i_4_n_0\,
      O => \^e\(0)
    );
\win_x[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => cur_x(6),
      I1 => cur_x(4),
      I2 => cur_x(1),
      I3 => cur_x(2),
      I4 => cur_x(3),
      I5 => cur_x(5),
      O => \win_x[6]_i_2_n_0\
    );
\win_x[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FF00FE"
    )
        port map (
      I0 => \y_count_reg_n_0_[5]\,
      I1 => \y_count_reg_n_0_[3]\,
      I2 => \^y_count_reg[1]_0\(1),
      I3 => resize_user,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => \y_count_reg_n_0_[4]\,
      O => \win_x[6]_i_3_n_0\
    );
\win_x[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FF00FE"
    )
        port map (
      I0 => \^x_count_reg[5]_0\(2),
      I1 => x_count(3),
      I2 => x_count(2),
      I3 => resize_user,
      I4 => \^x_count_reg[5]_0\(1),
      I5 => x_count(4),
      O => \win_x[6]_i_4_n_0\
    );
\win_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => cur_x(0),
      Q => \win_x_reg[6]_0\(0)
    );
\win_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => \win_x_reg[1]_0\(0),
      Q => \win_x_reg[6]_0\(1)
    );
\win_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => \win_x[2]_i_1_n_0\,
      Q => \win_x_reg[6]_0\(2)
    );
\win_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => \win_x[3]_i_1_n_0\,
      Q => \win_x_reg[6]_0\(3)
    );
\win_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_x0(4),
      Q => \win_x_reg[6]_0\(4)
    );
\win_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_x0(5),
      Q => \win_x_reg[6]_0\(5)
    );
\win_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => \win_x[6]_i_2_n_0\,
      Q => \win_x_reg[6]_0\(6)
    );
\win_y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^y_count_reg[1]_0\(0),
      I1 => resize_user,
      O => cur_y(0)
    );
\win_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => \y_count_reg_n_0_[2]\,
      I1 => resize_user,
      I2 => \^y_count_reg[1]_0\(1),
      O => \win_y[2]_i_1_n_0\
    );
\win_y[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FECD"
    )
        port map (
      I0 => \y_count_reg_n_0_[2]\,
      I1 => resize_user,
      I2 => \^y_count_reg[1]_0\(1),
      I3 => \y_count_reg_n_0_[3]\,
      O => win_y0(3)
    );
\win_y[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFAFAF9"
    )
        port map (
      I0 => \y_count_reg_n_0_[4]\,
      I1 => \y_count_reg_n_0_[2]\,
      I2 => resize_user,
      I3 => \^y_count_reg[1]_0\(1),
      I4 => \y_count_reg_n_0_[3]\,
      O => win_y0(4)
    );
\win_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFF0001"
    )
        port map (
      I0 => \y_count_reg_n_0_[3]\,
      I1 => \^y_count_reg[1]_0\(1),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[4]\,
      I4 => resize_user,
      I5 => \y_count_reg_n_0_[5]\,
      O => win_y0(5)
    );
\win_y[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3E3031"
    )
        port map (
      I0 => \y_count_reg_n_0_[5]\,
      I1 => \win_y[6]_i_2_n_0\,
      I2 => resize_user,
      I3 => \y_count_reg_n_0_[4]\,
      I4 => \y_count_reg_n_0_[6]\,
      O => win_y0(6)
    );
\win_y[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \y_count_reg_n_0_[3]\,
      I1 => \^y_count_reg[1]_0\(1),
      I2 => resize_user,
      I3 => \y_count_reg_n_0_[2]\,
      O => \win_y[6]_i_2_n_0\
    );
\win_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => cur_y(0),
      Q => \win_y_reg[6]_0\(0)
    );
\win_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => D(0),
      Q => \win_y_reg[6]_0\(1)
    );
\win_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => \win_y[2]_i_1_n_0\,
      Q => \win_y_reg[6]_0\(2)
    );
\win_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_y0(3),
      Q => \win_y_reg[6]_0\(3)
    );
\win_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_y0(4),
      Q => \win_y_reg[6]_0\(4)
    );
\win_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_y0(5),
      Q => \win_y_reg[6]_0\(5)
    );
\win_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \^e\(0),
      CLR => \^aresetn_0\,
      D => win_y0(6),
      Q => \win_y_reg[6]_0\(6)
    );
\x_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01050400"
    )
        port map (
      I0 => resize_last,
      I1 => \^x_count_reg[5]_0\(0),
      I2 => resize_user,
      I3 => \^x_count_reg[5]_0\(1),
      I4 => x_count(2),
      O => \x_count[2]_i_1_n_0\
    );
\x_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015005500400000"
    )
        port map (
      I0 => resize_last,
      I1 => \^x_count_reg[5]_0\(1),
      I2 => \^x_count_reg[5]_0\(0),
      I3 => resize_user,
      I4 => x_count(2),
      I5 => x_count(3),
      O => \x_count[3]_i_1_n_0\
    );
\x_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => resize_last,
      I1 => cur_x(2),
      I2 => \x_count_reg[4]_0\,
      I3 => cur_x(1),
      I4 => cur_x(3),
      I5 => cur_x(4),
      O => \x_count[4]_i_1_n_0\
    );
\x_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010010"
    )
        port map (
      I0 => resize_last,
      I1 => resize_user,
      I2 => \^x_count_reg[5]_0\(2),
      I3 => \^x_count_reg[3]_0\,
      I4 => x_count(6),
      O => \x_count[6]_i_1_n_0\
    );
\x_count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_count(3),
      I1 => resize_user,
      I2 => \^x_count_reg[5]_0\(1),
      I3 => \^x_count_reg[5]_0\(0),
      I4 => x_count(2),
      I5 => x_count(4),
      O => \^x_count_reg[3]_0\
    );
\x_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count_reg[5]_1\(0),
      Q => \^x_count_reg[5]_0\(0)
    );
\x_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count_reg[5]_1\(1),
      Q => \^x_count_reg[5]_0\(1)
    );
\x_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count[2]_i_1_n_0\,
      Q => x_count(2)
    );
\x_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count[3]_i_1_n_0\,
      Q => x_count(3)
    );
\x_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count[4]_i_1_n_0\,
      Q => x_count(4)
    );
\x_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count_reg[5]_1\(2),
      Q => \^x_count_reg[5]_0\(2)
    );
\x_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \x_count[6]_i_1_n_0\,
      Q => x_count(6)
    );
\y_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^y_count_reg[1]_0\(0),
      I1 => resize_last,
      I2 => \^y_count_reg[1]_0\(1),
      I3 => resize_user,
      O => p_0_in(1)
    );
\y_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \^y_count_reg[1]_0\(1),
      I1 => \^y_count_reg[1]_0\(0),
      I2 => resize_last,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => resize_user,
      O => p_0_in(2)
    );
\y_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A00AA00AA00AA"
    )
        port map (
      I0 => \y_count_reg_n_0_[3]\,
      I1 => \^y_count_reg[1]_0\(1),
      I2 => \^y_count_reg[1]_0\(0),
      I3 => resize_user,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => resize_last,
      O => p_0_in(3)
    );
\y_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => resize_user,
      I1 => \y_count_reg_n_0_[3]\,
      I2 => \y_count[4]_i_2_n_0\,
      I3 => \y_count_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\y_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => resize_last,
      I1 => \y_count_reg_n_0_[2]\,
      I2 => resize_user,
      I3 => \^y_count_reg[1]_0\(0),
      I4 => \^y_count_reg[1]_0\(1),
      O => \y_count[4]_i_2_n_0\
    );
\y_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8878"
    )
        port map (
      I0 => \y_count[6]_i_3_n_0\,
      I1 => resize_last,
      I2 => \y_count_reg_n_0_[5]\,
      I3 => resize_user,
      O => p_0_in(5)
    );
\y_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \y_count[6]_i_3_n_0\,
      I1 => \y_count_reg_n_0_[5]\,
      I2 => resize_last,
      I3 => \y_count_reg_n_0_[6]\,
      I4 => resize_user,
      O => p_0_in(6)
    );
\y_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \y_count_reg_n_0_[4]\,
      I1 => \y_count_reg_n_0_[3]\,
      I2 => \y_count_reg_n_0_[2]\,
      I3 => resize_user,
      I4 => \^y_count_reg[1]_0\(0),
      I5 => \^y_count_reg[1]_0\(1),
      O => \y_count[6]_i_3_n_0\
    );
\y_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => \y_count_reg[0]_0\(0),
      Q => \^y_count_reg[1]_0\(0)
    );
\y_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(1),
      Q => \^y_count_reg[1]_0\(1)
    );
\y_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(2),
      Q => \y_count_reg_n_0_[2]\
    );
\y_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(3),
      Q => \y_count_reg_n_0_[3]\
    );
\y_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(4),
      Q => \y_count_reg_n_0_[4]\
    );
\y_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(5),
      Q => \y_count_reg_n_0_[5]\
    );
\y_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \y_count_reg[6]_0\(0),
      CLR => \^aresetn_0\,
      D => p_0_in(6),
      Q => \y_count_reg_n_0_[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline is
  port (
    clear_done : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_1 : out STD_LOGIC;
    hist_done : out STD_LOGIC;
    m_tuser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    win_valid : out STD_LOGIC;
    clearing_reg : out STD_LOGIC;
    flag_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hist_total_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[12]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hist_total_reg[15]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[2]\ : out STD_LOGIC;
    \x_count_reg[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    control_clear_d_reg : out STD_LOGIC;
    \y_count_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \x_count_reg[3]\ : out STD_LOGIC;
    aresetn_2 : out STD_LOGIC;
    clearing_reg_0 : out STD_LOGIC;
    sample_counted_reg : out STD_LOGIC;
    control_7_sp_1 : out STD_LOGIC;
    hist_mem_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    hist_done_reg : in STD_LOGIC;
    win_valid_reg : in STD_LOGIC;
    hist_total_error_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    resize_user : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \bucket_reg_reg[0]\ : in STD_LOGIC;
    resize_last : in STD_LOGIC;
    \x_count_reg[4]\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    resize_valid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \win_x_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \y_count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_count_reg[5]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline : entity is "wp4_lbp_pipeline";
end facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline is
  signal \^aresetn_0\ : STD_LOGIC;
  signal \^aresetn_1\ : STD_LOGIC;
  signal control_7_sn_1 : STD_LOGIC;
  signal lbp_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in7_out__0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \^state_reg[2]\ : STD_LOGIC;
  signal u_window_n_11 : STD_LOGIC;
  signal u_window_n_12 : STD_LOGIC;
  signal u_window_n_13 : STD_LOGIC;
  signal u_window_n_14 : STD_LOGIC;
  signal u_window_n_15 : STD_LOGIC;
  signal u_window_n_16 : STD_LOGIC;
  signal u_window_n_17 : STD_LOGIC;
  signal u_window_n_18 : STD_LOGIC;
  signal u_window_n_19 : STD_LOGIC;
  signal u_window_n_20 : STD_LOGIC;
  signal u_window_n_21 : STD_LOGIC;
  signal u_window_n_22 : STD_LOGIC;
  signal u_window_n_23 : STD_LOGIC;
  signal u_window_n_24 : STD_LOGIC;
  signal u_window_n_25 : STD_LOGIC;
  signal u_window_n_26 : STD_LOGIC;
  signal u_window_n_27 : STD_LOGIC;
  signal u_window_n_28 : STD_LOGIC;
  signal u_window_n_29 : STD_LOGIC;
  signal u_window_n_30 : STD_LOGIC;
  signal u_window_n_31 : STD_LOGIC;
  signal u_window_n_32 : STD_LOGIC;
  signal u_window_n_33 : STD_LOGIC;
  signal u_window_n_34 : STD_LOGIC;
  signal u_window_n_35 : STD_LOGIC;
  signal u_window_n_36 : STD_LOGIC;
  signal u_window_n_37 : STD_LOGIC;
  signal u_window_n_38 : STD_LOGIC;
  signal u_window_n_39 : STD_LOGIC;
  signal u_window_n_40 : STD_LOGIC;
  signal u_window_n_41 : STD_LOGIC;
  signal u_window_n_42 : STD_LOGIC;
  signal u_window_n_43 : STD_LOGIC;
  signal u_window_n_44 : STD_LOGIC;
  signal u_window_n_45 : STD_LOGIC;
  signal u_window_n_46 : STD_LOGIC;
  signal u_window_n_47 : STD_LOGIC;
  signal u_window_n_48 : STD_LOGIC;
  signal u_window_n_49 : STD_LOGIC;
  signal u_window_n_50 : STD_LOGIC;
  signal u_window_n_51 : STD_LOGIC;
  signal u_window_n_52 : STD_LOGIC;
  signal u_window_n_53 : STD_LOGIC;
  signal u_window_n_54 : STD_LOGIC;
  signal u_window_n_55 : STD_LOGIC;
  signal u_window_n_56 : STD_LOGIC;
  signal u_window_n_57 : STD_LOGIC;
  signal u_window_n_58 : STD_LOGIC;
  signal u_window_n_59 : STD_LOGIC;
  signal u_window_n_60 : STD_LOGIC;
  signal u_window_n_61 : STD_LOGIC;
  signal u_window_n_62 : STD_LOGIC;
  signal u_window_n_63 : STD_LOGIC;
  signal u_window_n_64 : STD_LOGIC;
  signal u_window_n_65 : STD_LOGIC;
  signal u_window_n_66 : STD_LOGIC;
  signal u_window_n_67 : STD_LOGIC;
  signal u_window_n_68 : STD_LOGIC;
  signal u_window_n_69 : STD_LOGIC;
  signal u_window_n_70 : STD_LOGIC;
  signal u_window_n_71 : STD_LOGIC;
  signal u_window_n_72 : STD_LOGIC;
  signal u_window_n_73 : STD_LOGIC;
  signal u_window_n_74 : STD_LOGIC;
  signal win_last : STD_LOGIC;
  signal \^win_valid\ : STD_LOGIC;
  signal win_x : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal win_y : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  aresetn_0 <= \^aresetn_0\;
  aresetn_1 <= \^aresetn_1\;
  control_7_sp_1 <= control_7_sn_1;
  \state_reg[2]\ <= \^state_reg[2]\;
  win_valid <= \^win_valid\;
u_histogram: entity work.facebox_system_wp4_board_bridge_0_0_lbp_histogram
     port map (
      D(7 downto 0) => lbp_code(7 downto 0),
      E(0) => p_6_in,
      Q(6 downto 0) => win_y(6 downto 0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => \^aresetn_1\,
      \base_addr_reg[0]_0\ => \^aresetn_0\,
      \bucket_reg_reg[0]_0\ => \bucket_reg_reg[0]\,
      clear_done => clear_done,
      clearing_reg_0 => clearing_reg,
      clearing_reg_1 => clearing_reg_0,
      control(12 downto 0) => control(12 downto 0),
      control_7_sp_1 => control_7_sn_1,
      control_clear_d_reg => control_clear_d_reg,
      flag_status(0) => flag_status(0),
      hist_done => hist_done,
      hist_done_reg_0 => hist_done_reg,
      hist_mem_reg_1_0(15 downto 0) => hist_mem_reg_1(15 downto 0),
      hist_total_error_reg_0 => hist_total_error_reg,
      \hist_total_reg[0]_0\ => \hist_total_reg[0]\,
      \hist_total_reg[12]_0\(3 downto 0) => \hist_total_reg[12]\(3 downto 0),
      \hist_total_reg[15]_0\(2 downto 0) => \hist_total_reg[15]\(2 downto 0),
      \hist_total_reg[8]_0\(3 downto 0) => \hist_total_reg[8]\(3 downto 0),
      \p_0_in7_out__0\ => \p_0_in7_out__0\,
      resize_valid => resize_valid,
      sample_counted_reg_0 => sample_counted_reg,
      \sample_x_reg[6]_0\(6 downto 0) => win_x(6 downto 0),
      \state_reg[2]_0\ => \^state_reg[2]\,
      win_last => win_last,
      win_valid => \^win_valid\,
      win_valid_reg => E(0)
    );
u_lbp: entity work.facebox_system_wp4_board_bridge_0_0_lbp_core
     port map (
      D(7 downto 0) => lbp_code(7 downto 0),
      DI(3) => u_window_n_15,
      DI(2) => u_window_n_16,
      DI(1) => u_window_n_17,
      DI(0) => u_window_n_18,
      S(3) => u_window_n_11,
      S(2) => u_window_n_12,
      S(1) => u_window_n_13,
      S(0) => u_window_n_14,
      \sample_code_reg[1]\(3) => u_window_n_23,
      \sample_code_reg[1]\(2) => u_window_n_24,
      \sample_code_reg[1]\(1) => u_window_n_25,
      \sample_code_reg[1]\(0) => u_window_n_26,
      \sample_code_reg[1]_0\(3) => u_window_n_19,
      \sample_code_reg[1]_0\(2) => u_window_n_20,
      \sample_code_reg[1]_0\(1) => u_window_n_21,
      \sample_code_reg[1]_0\(0) => u_window_n_22,
      \sample_code_reg[2]\(3) => u_window_n_31,
      \sample_code_reg[2]\(2) => u_window_n_32,
      \sample_code_reg[2]\(1) => u_window_n_33,
      \sample_code_reg[2]\(0) => u_window_n_34,
      \sample_code_reg[2]_0\(3) => u_window_n_27,
      \sample_code_reg[2]_0\(2) => u_window_n_28,
      \sample_code_reg[2]_0\(1) => u_window_n_29,
      \sample_code_reg[2]_0\(0) => u_window_n_30,
      \sample_code_reg[3]\(3) => u_window_n_39,
      \sample_code_reg[3]\(2) => u_window_n_40,
      \sample_code_reg[3]\(1) => u_window_n_41,
      \sample_code_reg[3]\(0) => u_window_n_42,
      \sample_code_reg[3]_0\(3) => u_window_n_35,
      \sample_code_reg[3]_0\(2) => u_window_n_36,
      \sample_code_reg[3]_0\(1) => u_window_n_37,
      \sample_code_reg[3]_0\(0) => u_window_n_38,
      \sample_code_reg[4]\(3) => u_window_n_47,
      \sample_code_reg[4]\(2) => u_window_n_48,
      \sample_code_reg[4]\(1) => u_window_n_49,
      \sample_code_reg[4]\(0) => u_window_n_50,
      \sample_code_reg[4]_0\(3) => u_window_n_43,
      \sample_code_reg[4]_0\(2) => u_window_n_44,
      \sample_code_reg[4]_0\(1) => u_window_n_45,
      \sample_code_reg[4]_0\(0) => u_window_n_46,
      \sample_code_reg[5]\(3) => u_window_n_55,
      \sample_code_reg[5]\(2) => u_window_n_56,
      \sample_code_reg[5]\(1) => u_window_n_57,
      \sample_code_reg[5]\(0) => u_window_n_58,
      \sample_code_reg[5]_0\(3) => u_window_n_51,
      \sample_code_reg[5]_0\(2) => u_window_n_52,
      \sample_code_reg[5]_0\(1) => u_window_n_53,
      \sample_code_reg[5]_0\(0) => u_window_n_54,
      \sample_code_reg[6]\(3) => u_window_n_63,
      \sample_code_reg[6]\(2) => u_window_n_64,
      \sample_code_reg[6]\(1) => u_window_n_65,
      \sample_code_reg[6]\(0) => u_window_n_66,
      \sample_code_reg[6]_0\(3) => u_window_n_59,
      \sample_code_reg[6]_0\(2) => u_window_n_60,
      \sample_code_reg[6]_0\(1) => u_window_n_61,
      \sample_code_reg[6]_0\(0) => u_window_n_62,
      \sample_code_reg[7]\(3) => u_window_n_71,
      \sample_code_reg[7]\(2) => u_window_n_72,
      \sample_code_reg[7]\(1) => u_window_n_73,
      \sample_code_reg[7]\(0) => u_window_n_74,
      \sample_code_reg[7]_0\(3) => u_window_n_67,
      \sample_code_reg[7]_0\(2) => u_window_n_68,
      \sample_code_reg[7]_0\(1) => u_window_n_69,
      \sample_code_reg[7]_0\(0) => u_window_n_70
    );
u_window: entity work.facebox_system_wp4_board_bridge_0_0_window3x3
     port map (
      D(0) => D(0),
      DI(3) => u_window_n_15,
      DI(2) => u_window_n_16,
      DI(1) => u_window_n_17,
      DI(0) => u_window_n_18,
      E(0) => m_tuser_reg(0),
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => u_window_n_11,
      S(2) => u_window_n_12,
      S(1) => u_window_n_13,
      S(0) => u_window_n_14,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => \^aresetn_0\,
      aresetn_1 => aresetn_2,
      \p_0_in7_out__0\ => \p_0_in7_out__0\,
      resize_last => resize_last,
      resize_user => resize_user,
      win_last => win_last,
      win_last_reg_0 => \^state_reg[2]\,
      \win_p_reg[1][6]_0\(3) => u_window_n_19,
      \win_p_reg[1][6]_0\(2) => u_window_n_20,
      \win_p_reg[1][6]_0\(1) => u_window_n_21,
      \win_p_reg[1][6]_0\(0) => u_window_n_22,
      \win_p_reg[1][6]_1\(3) => u_window_n_23,
      \win_p_reg[1][6]_1\(2) => u_window_n_24,
      \win_p_reg[1][6]_1\(1) => u_window_n_25,
      \win_p_reg[1][6]_1\(0) => u_window_n_26,
      \win_p_reg[2][6]_0\(3) => u_window_n_27,
      \win_p_reg[2][6]_0\(2) => u_window_n_28,
      \win_p_reg[2][6]_0\(1) => u_window_n_29,
      \win_p_reg[2][6]_0\(0) => u_window_n_30,
      \win_p_reg[2][6]_1\(3) => u_window_n_31,
      \win_p_reg[2][6]_1\(2) => u_window_n_32,
      \win_p_reg[2][6]_1\(1) => u_window_n_33,
      \win_p_reg[2][6]_1\(0) => u_window_n_34,
      \win_p_reg[3][6]_0\(3) => u_window_n_35,
      \win_p_reg[3][6]_0\(2) => u_window_n_36,
      \win_p_reg[3][6]_0\(1) => u_window_n_37,
      \win_p_reg[3][6]_0\(0) => u_window_n_38,
      \win_p_reg[3][6]_1\(3) => u_window_n_39,
      \win_p_reg[3][6]_1\(2) => u_window_n_40,
      \win_p_reg[3][6]_1\(1) => u_window_n_41,
      \win_p_reg[3][6]_1\(0) => u_window_n_42,
      \win_p_reg[4][6]_0\(3) => u_window_n_43,
      \win_p_reg[4][6]_0\(2) => u_window_n_44,
      \win_p_reg[4][6]_0\(1) => u_window_n_45,
      \win_p_reg[4][6]_0\(0) => u_window_n_46,
      \win_p_reg[4][6]_1\(3) => u_window_n_47,
      \win_p_reg[4][6]_1\(2) => u_window_n_48,
      \win_p_reg[4][6]_1\(1) => u_window_n_49,
      \win_p_reg[4][6]_1\(0) => u_window_n_50,
      \win_p_reg[5][6]_0\(3) => u_window_n_51,
      \win_p_reg[5][6]_0\(2) => u_window_n_52,
      \win_p_reg[5][6]_0\(1) => u_window_n_53,
      \win_p_reg[5][6]_0\(0) => u_window_n_54,
      \win_p_reg[5][6]_1\(3) => u_window_n_55,
      \win_p_reg[5][6]_1\(2) => u_window_n_56,
      \win_p_reg[5][6]_1\(1) => u_window_n_57,
      \win_p_reg[5][6]_1\(0) => u_window_n_58,
      \win_p_reg[6][6]_0\(3) => u_window_n_59,
      \win_p_reg[6][6]_0\(2) => u_window_n_60,
      \win_p_reg[6][6]_0\(1) => u_window_n_61,
      \win_p_reg[6][6]_0\(0) => u_window_n_62,
      \win_p_reg[6][6]_1\(3) => u_window_n_63,
      \win_p_reg[6][6]_1\(2) => u_window_n_64,
      \win_p_reg[6][6]_1\(1) => u_window_n_65,
      \win_p_reg[6][6]_1\(0) => u_window_n_66,
      \win_p_reg[7][6]_0\(3) => u_window_n_67,
      \win_p_reg[7][6]_0\(2) => u_window_n_68,
      \win_p_reg[7][6]_0\(1) => u_window_n_69,
      \win_p_reg[7][6]_0\(0) => u_window_n_70,
      \win_p_reg[7][6]_1\(3) => u_window_n_71,
      \win_p_reg[7][6]_1\(2) => u_window_n_72,
      \win_p_reg[7][6]_1\(1) => u_window_n_73,
      \win_p_reg[7][6]_1\(0) => u_window_n_74,
      win_valid => \^win_valid\,
      win_valid_reg_0 => \^aresetn_1\,
      win_valid_reg_1 => win_valid_reg,
      \win_x_reg[1]_0\(0) => \win_x_reg[1]\(0),
      \win_x_reg[6]_0\(6 downto 0) => win_x(6 downto 0),
      \win_y_reg[6]_0\(6 downto 0) => win_y(6 downto 0),
      \x_count_reg[3]_0\ => \x_count_reg[3]\,
      \x_count_reg[4]_0\ => \x_count_reg[4]\,
      \x_count_reg[5]_0\(2 downto 0) => \x_count_reg[5]\(2 downto 0),
      \x_count_reg[5]_1\(2 downto 0) => \x_count_reg[5]_0\(2 downto 0),
      \y_count_reg[0]_0\(0) => \y_count_reg[0]\(0),
      \y_count_reg[1]_0\(1 downto 0) => \y_count_reg[1]\(1 downto 0),
      \y_count_reg[6]_0\(0) => p_6_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13 is
  port (
    resize_done : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    clear_done : out STD_LOGIC;
    sample_counted : out STD_LOGIC;
    hist_done : out STD_LOGIC;
    control_clear_d : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    resize_valid : out STD_LOGIC;
    resize_size_error : out STD_LOGIC;
    win_valid : out STD_LOGIC;
    clearing_reg : out STD_LOGIC;
    flag_status : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dma_tvalid_0 : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    control_clear_d_reg_0 : out STD_LOGIC;
    data_status : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[2]_1\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    dma_tready : out STD_LOGIC;
    control_29_sp_1 : out STD_LOGIC;
    dma_tlast_0 : out STD_LOGIC;
    \input_x_reg[1]_0\ : out STD_LOGIC;
    clearing_reg_0 : out STD_LOGIC;
    sample_counted_reg : out STD_LOGIC;
    control_7_sp_1 : out STD_LOGIC;
    hist_mem_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    OPMODE : in STD_LOGIC_VECTOR ( 0 to 0 );
    control : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_tvalid_reg : in STD_LOGIC;
    size_error_reg : in STD_LOGIC;
    win_valid_reg : in STD_LOGIC;
    hist_total_error_reg : in STD_LOGIC;
    clear_done_sticky_reg_0 : in STD_LOGIC;
    hist_done_sticky_reg_0 : in STD_LOGIC;
    protocol_error_sticky_reg_0 : in STD_LOGIC;
    resize_done_sticky_reg_0 : in STD_LOGIC;
    resize_error_sticky_reg_0 : in STD_LOGIC;
    vertical_delta_carry_i_9 : in STD_LOGIC;
    \m_tdata_reg[7]_i_5\ : in STD_LOGIC;
    dma_tvalid : in STD_LOGIC;
    dma_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    dma_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13 : entity is "wp4_board_bridge_m13";
end facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13 is
  signal \^aresetn_0\ : STD_LOGIC;
  signal control_29_sn_1 : STD_LOGIC;
  signal control_7_sn_1 : STD_LOGIC;
  signal control_cfg_d : STD_LOGIC;
  signal \^control_clear_d\ : STD_LOGIC;
  signal input_final0 : STD_LOGIC;
  signal \input_final0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \input_final0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \input_final0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \input_final0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \input_final0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal input_final0_carry_i_6_n_0 : STD_LOGIC;
  signal input_final0_carry_i_7_n_0 : STD_LOGIC;
  signal input_final0_carry_n_2 : STD_LOGIC;
  signal input_final0_carry_n_3 : STD_LOGIC;
  signal input_height : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal input_row_last : STD_LOGIC;
  signal input_row_last_carry_n_2 : STD_LOGIC;
  signal input_row_last_carry_n_3 : STD_LOGIC;
  signal \input_width_reg_n_0_[0]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[1]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[2]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[3]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[4]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[5]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[6]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[7]\ : STD_LOGIC;
  signal \input_width_reg_n_0_[8]\ : STD_LOGIC;
  signal input_x : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \input_x[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \input_x[8]_i_3_n_0\ : STD_LOGIC;
  signal input_y : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \input_y[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \input_y[8]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal resize_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal resize_last : STD_LOGIC;
  signal resize_user : STD_LOGIC;
  signal \^resize_valid\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC;
  signal u_pipeline_n_1 : STD_LOGIC;
  signal u_pipeline_n_3 : STD_LOGIC;
  signal u_pipeline_n_30 : STD_LOGIC;
  signal u_pipeline_n_31 : STD_LOGIC;
  signal u_pipeline_n_32 : STD_LOGIC;
  signal u_pipeline_n_33 : STD_LOGIC;
  signal u_resize_n_20 : STD_LOGIC;
  signal u_resize_n_22 : STD_LOGIC;
  signal u_resize_n_23 : STD_LOGIC;
  signal u_resize_n_24 : STD_LOGIC;
  signal u_resize_n_26 : STD_LOGIC;
  signal u_resize_n_27 : STD_LOGIC;
  signal u_resize_n_28 : STD_LOGIC;
  signal u_resize_n_29 : STD_LOGIC;
  signal u_resize_n_30 : STD_LOGIC;
  signal u_resize_n_31 : STD_LOGIC;
  signal u_resize_n_32 : STD_LOGIC;
  signal u_resize_n_33 : STD_LOGIC;
  signal u_resize_n_34 : STD_LOGIC;
  signal u_resize_n_35 : STD_LOGIC;
  signal u_resize_n_36 : STD_LOGIC;
  signal u_resize_n_37 : STD_LOGIC;
  signal u_resize_n_38 : STD_LOGIC;
  signal u_resize_n_39 : STD_LOGIC;
  signal u_resize_n_40 : STD_LOGIC;
  signal u_resize_n_41 : STD_LOGIC;
  signal u_resize_n_42 : STD_LOGIC;
  signal u_resize_n_43 : STD_LOGIC;
  signal u_resize_n_46 : STD_LOGIC;
  signal u_resize_n_47 : STD_LOGIC;
  signal u_resize_n_48 : STD_LOGIC;
  signal u_resize_n_51 : STD_LOGIC;
  signal u_resize_n_52 : STD_LOGIC;
  signal u_resize_n_53 : STD_LOGIC;
  signal u_resize_n_54 : STD_LOGIC;
  signal u_resize_n_55 : STD_LOGIC;
  signal u_resize_n_56 : STD_LOGIC;
  signal u_resize_n_57 : STD_LOGIC;
  signal u_resize_n_58 : STD_LOGIC;
  signal u_resize_n_59 : STD_LOGIC;
  signal u_resize_n_6 : STD_LOGIC;
  signal u_resize_n_65 : STD_LOGIC;
  signal u_resize_n_66 : STD_LOGIC;
  signal u_resize_n_67 : STD_LOGIC;
  signal u_resize_n_68 : STD_LOGIC;
  signal \u_window/x_count\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal win_x0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal win_y0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_input_final0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_input_final0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_input_row_last_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_input_row_last_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of input_final0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of input_final0_carry_i_6 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of input_final0_carry_i_7 : label is "soft_lutpair83";
  attribute METHODOLOGY_DRC_VIOS of input_row_last_carry : label is "{SYNTH-8 {cell *THIS*}}";
begin
  aresetn_0 <= \^aresetn_0\;
  control_29_sp_1 <= control_29_sn_1;
  control_7_sp_1 <= control_7_sn_1;
  control_clear_d <= \^control_clear_d\;
  resize_valid <= \^resize_valid\;
  \state_reg[2]_0\ <= \^state_reg[2]_0\;
clear_done_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_1,
      D => clear_done_sticky_reg_0,
      Q => flag_status(0)
    );
control_cfg_d_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_3,
      D => control(29),
      Q => control_cfg_d
    );
control_clear_d_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_3,
      D => control(12),
      Q => \^control_clear_d\
    );
hist_done_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_3,
      D => hist_done_sticky_reg_0,
      Q => flag_status(1)
    );
input_final0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_input_final0_carry_CO_UNCONNECTED(3),
      CO(2) => input_final0,
      CO(1) => input_final0_carry_n_2,
      CO(0) => input_final0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_input_final0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \input_final0_carry_i_1__0_n_0\,
      S(1) => \input_final0_carry_i_2__0_n_0\,
      S(0) => \input_final0_carry_i_3__0_n_0\
    );
\input_final0_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8140000228140000"
    )
        port map (
      I0 => input_y(7),
      I1 => input_height(6),
      I2 => \input_final0_carry_i_4__0_n_0\,
      I3 => input_height(7),
      I4 => \input_final0_carry_i_5__0_n_0\,
      I5 => input_y(6),
      O => \input_final0_carry_i_1__0_n_0\
    );
\input_final0_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090960"
    )
        port map (
      I0 => input_height(5),
      I1 => input_y(5),
      I2 => input_y(4),
      I3 => input_final0_carry_i_6_n_0,
      I4 => input_height(4),
      I5 => input_final0_carry_i_7_n_0,
      O => \input_final0_carry_i_2__0_n_0\
    );
\input_final0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000422490090000"
    )
        port map (
      I0 => input_y(1),
      I1 => input_height(1),
      I2 => input_y(2),
      I3 => input_height(2),
      I4 => input_height(0),
      I5 => input_y(0),
      O => \input_final0_carry_i_3__0_n_0\
    );
\input_final0_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => input_height(5),
      I1 => input_height(3),
      I2 => input_height(0),
      I3 => input_height(1),
      I4 => input_height(2),
      I5 => input_height(4),
      O => \input_final0_carry_i_4__0_n_0\
    );
\input_final0_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => input_y(8),
      I1 => input_height(8),
      O => \input_final0_carry_i_5__0_n_0\
    );
input_final0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => input_height(3),
      I1 => input_height(0),
      I2 => input_height(1),
      I3 => input_height(2),
      O => input_final0_carry_i_6_n_0
    );
input_final0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAA9"
    )
        port map (
      I0 => input_y(3),
      I1 => input_height(2),
      I2 => input_height(1),
      I3 => input_height(0),
      I4 => input_height(3),
      O => input_final0_carry_i_7_n_0
    );
\input_height_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      D => u_resize_n_34,
      PRE => u_pipeline_n_3,
      Q => input_height(0)
    );
\input_height_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_33,
      Q => input_height(1)
    );
\input_height_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_32,
      Q => input_height(2)
    );
\input_height_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_31,
      Q => input_height(3)
    );
\input_height_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_30,
      Q => input_height(4)
    );
\input_height_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_29,
      Q => input_height(5)
    );
\input_height_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_28,
      Q => input_height(6)
    );
\input_height_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_27,
      Q => input_height(7)
    );
\input_height_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_26,
      Q => input_height(8)
    );
input_row_last_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_input_row_last_carry_CO_UNCONNECTED(3),
      CO(2) => input_row_last,
      CO(1) => input_row_last_carry_n_2,
      CO(0) => input_row_last_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_input_row_last_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => u_resize_n_65,
      S(1) => u_resize_n_66,
      S(0) => u_resize_n_67
    );
\input_width_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      D => u_resize_n_43,
      PRE => u_pipeline_n_3,
      Q => \input_width_reg_n_0_[0]\
    );
\input_width_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_42,
      Q => \input_width_reg_n_0_[1]\
    );
\input_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_41,
      Q => \input_width_reg_n_0_[2]\
    );
\input_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_40,
      Q => \input_width_reg_n_0_[3]\
    );
\input_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_39,
      Q => \input_width_reg_n_0_[4]\
    );
\input_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_38,
      Q => \input_width_reg_n_0_[5]\
    );
\input_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_37,
      Q => \input_width_reg_n_0_[6]\
    );
\input_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_36,
      Q => \input_width_reg_n_0_[7]\
    );
\input_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_6,
      CLR => u_pipeline_n_3,
      D => u_resize_n_35,
      Q => \input_width_reg_n_0_[8]\
    );
\input_x[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => input_x(3),
      I1 => input_x(1),
      I2 => input_x(0),
      I3 => input_x(2),
      I4 => input_x(4),
      O => \input_x[5]_i_2__0_n_0\
    );
\input_x[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => input_x(4),
      I1 => input_x(2),
      I2 => input_x(0),
      I3 => input_x(1),
      I4 => input_x(3),
      I5 => input_x(5),
      O => \input_x[8]_i_3_n_0\
    );
\input_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => u_resize_n_20,
      Q => input_x(0)
    );
\input_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(1),
      Q => input_x(1)
    );
\input_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(2),
      Q => input_x(2)
    );
\input_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(3),
      Q => input_x(3)
    );
\input_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(4),
      Q => input_x(4)
    );
\input_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(5),
      Q => input_x(5)
    );
\input_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(6),
      Q => input_x(6)
    );
\input_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(7),
      Q => input_x(7)
    );
\input_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_47,
      CLR => u_pipeline_n_3,
      D => p_1_in(8),
      Q => input_x(8)
    );
\input_y[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => input_y(3),
      I1 => input_y(1),
      I2 => input_y(0),
      I3 => input_y(2),
      I4 => input_y(4),
      O => \input_y[5]_i_2__0_n_0\
    );
\input_y[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => input_y(4),
      I1 => input_y(2),
      I2 => input_y(0),
      I3 => input_y(1),
      I4 => input_y(3),
      I5 => input_y(5),
      O => \input_y[8]_i_4_n_0\
    );
\input_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_59,
      Q => input_y(0)
    );
\input_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_58,
      Q => input_y(1)
    );
\input_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_57,
      Q => input_y(2)
    );
\input_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_56,
      Q => input_y(3)
    );
\input_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_55,
      Q => input_y(4)
    );
\input_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => \^aresetn_0\,
      D => u_resize_n_54,
      Q => input_y(5)
    );
\input_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => u_pipeline_n_3,
      D => u_resize_n_53,
      Q => input_y(6)
    );
\input_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => u_pipeline_n_3,
      D => u_resize_n_52,
      Q => input_y(7)
    );
\input_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => u_resize_n_48,
      CLR => u_pipeline_n_3,
      D => u_resize_n_51,
      Q => input_y(8)
    );
protocol_error_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_1,
      D => protocol_error_sticky_reg_0,
      Q => flag_status(3)
    );
resize_done_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => u_pipeline_n_3,
      D => resize_done_sticky_reg_0,
      Q => flag_status(4)
    );
resize_error_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => resize_error_sticky_reg_0,
      Q => flag_status(5)
    );
u_pipeline: entity work.facebox_system_wp4_board_bridge_0_0_wp4_lbp_pipeline
     port map (
      D(0) => win_y0(1),
      E(0) => sample_counted,
      Q(7 downto 0) => resize_data(7 downto 0),
      S(3 downto 0) => data_status(4 downto 1),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => u_pipeline_n_1,
      aresetn_1 => u_pipeline_n_3,
      aresetn_2 => u_pipeline_n_33,
      \bucket_reg_reg[0]\ => \^control_clear_d\,
      clear_done => clear_done,
      clearing_reg => clearing_reg,
      clearing_reg_0 => clearing_reg_0,
      control(12 downto 0) => control(12 downto 0),
      control_7_sp_1 => control_7_sn_1,
      control_clear_d_reg => control_clear_d_reg_0,
      flag_status(0) => flag_status(2),
      hist_done => hist_done,
      hist_done_reg => \^aresetn_0\,
      hist_mem_reg_1(15 downto 0) => hist_mem_reg_1(15 downto 0),
      hist_total_error_reg => hist_total_error_reg,
      \hist_total_reg[0]\ => data_status(0),
      \hist_total_reg[12]\(3 downto 0) => data_status(12 downto 9),
      \hist_total_reg[15]\(2 downto 0) => data_status(15 downto 13),
      \hist_total_reg[8]\(3 downto 0) => data_status(8 downto 5),
      m_tuser_reg(0) => E(0),
      resize_last => resize_last,
      resize_user => resize_user,
      resize_valid => \^resize_valid\,
      sample_counted_reg => sample_counted_reg,
      \state_reg[2]\ => \^state_reg[2]_0\,
      win_valid => win_valid,
      win_valid_reg => win_valid_reg,
      \win_x_reg[1]\(0) => win_x0(1),
      \x_count_reg[3]\ => u_pipeline_n_32,
      \x_count_reg[4]\ => u_resize_n_68,
      \x_count_reg[5]\(2) => \u_window/x_count\(5),
      \x_count_reg[5]\(1 downto 0) => \u_window/x_count\(1 downto 0),
      \x_count_reg[5]_0\(2) => u_resize_n_22,
      \x_count_reg[5]_0\(1) => u_resize_n_23,
      \x_count_reg[5]_0\(0) => u_resize_n_24,
      \y_count_reg[0]\(0) => u_resize_n_46,
      \y_count_reg[1]\(1) => u_pipeline_n_30,
      \y_count_reg[1]\(0) => u_pipeline_n_31
    );
u_resize: entity work.facebox_system_wp4_board_bridge_0_0_roi_resize_128
     port map (
      CO(0) => input_row_last,
      D(8 downto 1) => p_1_in(8 downto 1),
      D(0) => u_resize_n_20,
      E(0) => u_resize_n_6,
      OPMODE(0) => OPMODE(0),
      Q(3 downto 0) => Q(3 downto 0),
      S(2) => u_resize_n_65,
      S(1) => u_resize_n_66,
      S(0) => u_resize_n_67,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => \^aresetn_0\,
      control(17 downto 0) => control(29 downto 12),
      \control[20]\(8) => u_resize_n_35,
      \control[20]\(7) => u_resize_n_36,
      \control[20]\(6) => u_resize_n_37,
      \control[20]\(5) => u_resize_n_38,
      \control[20]\(4) => u_resize_n_39,
      \control[20]\(3) => u_resize_n_40,
      \control[20]\(2) => u_resize_n_41,
      \control[20]\(1) => u_resize_n_42,
      \control[20]\(0) => u_resize_n_43,
      \control[28]\(8) => u_resize_n_26,
      \control[28]\(7) => u_resize_n_27,
      \control[28]\(6) => u_resize_n_28,
      \control[28]\(5) => u_resize_n_29,
      \control[28]\(4) => u_resize_n_30,
      \control[28]\(3) => u_resize_n_31,
      \control[28]\(2) => u_resize_n_32,
      \control[28]\(1) => u_resize_n_33,
      \control[28]\(0) => u_resize_n_34,
      \control[29]\ => control_29_sn_1,
      control_cfg_d => control_cfg_d,
      control_clear_d_reg(0) => u_resize_n_47,
      control_clear_d_reg_0(0) => u_resize_n_48,
      dma_tdata(7 downto 0) => dma_tdata(7 downto 0),
      dma_tlast => dma_tlast,
      dma_tlast_0 => dma_tlast_0,
      dma_tready => dma_tready,
      dma_tvalid => dma_tvalid,
      dma_tvalid_0 => dma_tvalid_0,
      done_reg_0 => \^state_reg[2]_0\,
      input_row_last_carry_i_1_0(8) => \input_width_reg_n_0_[8]\,
      input_row_last_carry_i_1_0(7) => \input_width_reg_n_0_[7]\,
      input_row_last_carry_i_1_0(6) => \input_width_reg_n_0_[6]\,
      input_row_last_carry_i_1_0(5) => \input_width_reg_n_0_[5]\,
      input_row_last_carry_i_1_0(4) => \input_width_reg_n_0_[4]\,
      input_row_last_carry_i_1_0(3) => \input_width_reg_n_0_[3]\,
      input_row_last_carry_i_1_0(2) => \input_width_reg_n_0_[2]\,
      input_row_last_carry_i_1_0(1) => \input_width_reg_n_0_[1]\,
      input_row_last_carry_i_1_0(0) => \input_width_reg_n_0_[0]\,
      \input_x_reg[1]_0\ => \input_x_reg[1]_0\,
      \input_x_reg[5]_0\ => \input_x[5]_i_2__0_n_0\,
      \input_x_reg[6]_0\ => \input_x[8]_i_3_n_0\,
      \input_x_reg[8]_0\(8 downto 0) => input_x(8 downto 0),
      \input_y_reg[0]_0\ => \^control_clear_d\,
      \input_y_reg[0]_1\(0) => input_final0,
      \input_y_reg[5]_0\ => \input_y[5]_i_2__0_n_0\,
      \input_y_reg[8]_0\(8) => u_resize_n_51,
      \input_y_reg[8]_0\(7) => u_resize_n_52,
      \input_y_reg[8]_0\(6) => u_resize_n_53,
      \input_y_reg[8]_0\(5) => u_resize_n_54,
      \input_y_reg[8]_0\(4) => u_resize_n_55,
      \input_y_reg[8]_0\(3) => u_resize_n_56,
      \input_y_reg[8]_0\(2) => u_resize_n_57,
      \input_y_reg[8]_0\(1) => u_resize_n_58,
      \input_y_reg[8]_0\(0) => u_resize_n_59,
      \input_y_reg[8]_1\(8 downto 0) => input_y(8 downto 0),
      \input_y_reg[8]_2\ => \input_y[8]_i_4_n_0\,
      \m_tdata_reg[3]_0\ => u_pipeline_n_33,
      \m_tdata_reg[7]_0\(7 downto 0) => resize_data(7 downto 0),
      \m_tdata_reg[7]_i_5\ => \m_tdata_reg[7]_i_5\,
      m_tlast_reg_0(2) => u_resize_n_22,
      m_tlast_reg_0(1) => u_resize_n_23,
      m_tlast_reg_0(0) => u_resize_n_24,
      m_tlast_reg_1(0) => u_resize_n_46,
      m_tuser_reg_0(0) => win_y0(1),
      m_tuser_reg_1(0) => win_x0(1),
      m_tuser_reg_2 => u_resize_n_68,
      m_tuser_reg_3 => u_pipeline_n_1,
      m_tvalid_reg_0 => m_tvalid_reg,
      resize_done => resize_done,
      resize_last => resize_last,
      resize_size_error => resize_size_error,
      resize_user => resize_user,
      resize_valid => \^resize_valid\,
      \sample_fraction_x_reg[4]_0\ => u_pipeline_n_3,
      size_error_reg_0 => size_error_reg,
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[1]_0\ => \state_reg[1]\,
      \state_reg[2]_0\(0) => \state_reg[2]\,
      \state_reg[2]_1\ => \state_reg[2]_1\,
      \state_reg[3]_0\ => \state_reg[3]\,
      vertical_delta_carry_i_9 => vertical_delta_carry_i_9,
      \win_y_reg[1]\(1) => u_pipeline_n_30,
      \win_y_reg[1]\(0) => u_pipeline_n_31,
      \x_count_reg[5]\ => u_pipeline_n_32,
      \x_count_reg[5]_0\(2) => \u_window/x_count\(5),
      \x_count_reg[5]_0\(1 downto 0) => \u_window/x_count\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd is
  port (
    data_status : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[2]\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    dma_tready : out STD_LOGIC;
    hist_mem_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    flag_status : out STD_LOGIC_VECTOR ( 5 downto 0 );
    control : in STD_LOGIC_VECTOR ( 29 downto 0 );
    vertical_delta_carry_i_9 : in STD_LOGIC;
    \m_tdata_reg[7]_i_5\ : in STD_LOGIC;
    OPMODE : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    dma_tvalid : in STD_LOGIC;
    dma_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    dma_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd : entity is "wp4_board_bridge_m13_bd";
end facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd is
  signal clear_done : STD_LOGIC;
  signal clear_done_sticky_i_1_n_0 : STD_LOGIC;
  signal control_clear_d : STD_LOGIC;
  signal \^flag_status\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hist_done : STD_LOGIC;
  signal hist_done_sticky_i_1_n_0 : STD_LOGIC;
  signal hist_total_error_i_1_n_0 : STD_LOGIC;
  signal m_tvalid_i_1_n_0 : STD_LOGIC;
  signal protocol_error_sticky_i_1_n_0 : STD_LOGIC;
  signal resize_done : STD_LOGIC;
  signal resize_done_sticky_i_1_n_0 : STD_LOGIC;
  signal resize_error_sticky_i_1_n_0 : STD_LOGIC;
  signal resize_size_error : STD_LOGIC;
  signal resize_valid : STD_LOGIC;
  signal size_error_i_1_n_0 : STD_LOGIC;
  signal u_bridge_n_10 : STD_LOGIC;
  signal u_bridge_n_17 : STD_LOGIC;
  signal u_bridge_n_18 : STD_LOGIC;
  signal u_bridge_n_19 : STD_LOGIC;
  signal u_bridge_n_20 : STD_LOGIC;
  signal u_bridge_n_21 : STD_LOGIC;
  signal u_bridge_n_22 : STD_LOGIC;
  signal u_bridge_n_23 : STD_LOGIC;
  signal u_bridge_n_24 : STD_LOGIC;
  signal u_bridge_n_44 : STD_LOGIC;
  signal u_bridge_n_46 : STD_LOGIC;
  signal u_bridge_n_47 : STD_LOGIC;
  signal u_bridge_n_48 : STD_LOGIC;
  signal u_bridge_n_49 : STD_LOGIC;
  signal u_bridge_n_50 : STD_LOGIC;
  signal u_bridge_n_51 : STD_LOGIC;
  signal u_bridge_n_6 : STD_LOGIC;
  signal \u_pipeline/u_histogram/sample_counted\ : STD_LOGIC;
  signal \u_pipeline/win_valid\ : STD_LOGIC;
  signal win_valid_i_1_n_0 : STD_LOGIC;
begin
  flag_status(5 downto 0) <= \^flag_status\(5 downto 0);
clear_done_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A2"
    )
        port map (
      I0 => clear_done,
      I1 => control(12),
      I2 => control_clear_d,
      I3 => \^flag_status\(0),
      O => clear_done_sticky_i_1_n_0
    );
hist_done_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A2"
    )
        port map (
      I0 => hist_done,
      I1 => control(12),
      I2 => control_clear_d,
      I3 => \^flag_status\(1),
      O => hist_done_sticky_i_1_n_0
    );
hist_total_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545FFCF55450000"
    )
        port map (
      I0 => u_bridge_n_50,
      I1 => control_clear_d,
      I2 => control(12),
      I3 => u_bridge_n_10,
      I4 => u_bridge_n_49,
      I5 => \^flag_status\(2),
      O => hist_total_error_i_1_n_0
    );
m_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFA50000000"
    )
        port map (
      I0 => u_bridge_n_21,
      I1 => u_bridge_n_23,
      I2 => u_bridge_n_18,
      I3 => u_bridge_n_19,
      I4 => u_bridge_n_20,
      I5 => resize_valid,
      O => m_tvalid_i_1_n_0
    );
protocol_error_sticky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0E0E0F0E0"
    )
        port map (
      I0 => u_bridge_n_47,
      I1 => u_bridge_n_51,
      I2 => u_bridge_n_24,
      I3 => u_bridge_n_46,
      I4 => u_bridge_n_44,
      I5 => \^flag_status\(3),
      O => protocol_error_sticky_i_1_n_0
    );
resize_done_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A2"
    )
        port map (
      I0 => resize_done,
      I1 => control(12),
      I2 => control_clear_d,
      I3 => \^flag_status\(4),
      O => resize_done_sticky_i_1_n_0
    );
resize_error_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A2"
    )
        port map (
      I0 => resize_size_error,
      I1 => control(12),
      I2 => control_clear_d,
      I3 => \^flag_status\(5),
      O => resize_error_sticky_i_1_n_0
    );
size_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AB33A800"
    )
        port map (
      I0 => u_bridge_n_21,
      I1 => u_bridge_n_17,
      I2 => u_bridge_n_22,
      I3 => u_bridge_n_48,
      I4 => resize_size_error,
      O => size_error_i_1_n_0
    );
u_bridge: entity work.facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13
     port map (
      E(0) => u_bridge_n_6,
      OPMODE(0) => OPMODE(0),
      Q(3) => u_bridge_n_18,
      Q(2) => u_bridge_n_19,
      Q(1) => u_bridge_n_20,
      Q(0) => u_bridge_n_21,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => aresetn_0,
      clear_done => clear_done,
      clear_done_sticky_reg_0 => clear_done_sticky_i_1_n_0,
      clearing_reg => u_bridge_n_10,
      clearing_reg_0 => u_bridge_n_49,
      control(29 downto 0) => control(29 downto 0),
      control_29_sp_1 => u_bridge_n_46,
      control_7_sp_1 => u_bridge_n_51,
      control_clear_d => control_clear_d,
      control_clear_d_reg_0 => u_bridge_n_24,
      data_status(15 downto 0) => data_status(15 downto 0),
      dma_tdata(7 downto 0) => dma_tdata(7 downto 0),
      dma_tlast => dma_tlast,
      dma_tlast_0 => u_bridge_n_47,
      dma_tready => dma_tready,
      dma_tvalid => dma_tvalid,
      dma_tvalid_0 => u_bridge_n_22,
      flag_status(5 downto 0) => \^flag_status\(5 downto 0),
      hist_done => hist_done,
      hist_done_sticky_reg_0 => hist_done_sticky_i_1_n_0,
      hist_mem_reg_1(15 downto 0) => hist_mem_reg_1(15 downto 0),
      hist_total_error_reg => hist_total_error_i_1_n_0,
      \input_x_reg[1]_0\ => u_bridge_n_48,
      \m_tdata_reg[7]_i_5\ => \m_tdata_reg[7]_i_5\,
      m_tvalid_reg => m_tvalid_i_1_n_0,
      protocol_error_sticky_reg_0 => protocol_error_sticky_i_1_n_0,
      resize_done => resize_done,
      resize_done_sticky_reg_0 => resize_done_sticky_i_1_n_0,
      resize_error_sticky_reg_0 => resize_error_sticky_i_1_n_0,
      resize_size_error => resize_size_error,
      resize_valid => resize_valid,
      sample_counted => \u_pipeline/u_histogram/sample_counted\,
      sample_counted_reg => u_bridge_n_50,
      size_error_reg => size_error_i_1_n_0,
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[1]\ => u_bridge_n_44,
      \state_reg[2]\ => u_bridge_n_17,
      \state_reg[2]_0\ => u_bridge_n_23,
      \state_reg[2]_1\ => \state_reg[2]\,
      \state_reg[3]\ => \state_reg[3]\,
      vertical_delta_carry_i_9 => vertical_delta_carry_i_9,
      win_valid => \u_pipeline/win_valid\,
      win_valid_reg => win_valid_i_1_n_0
    );
win_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => u_bridge_n_6,
      I1 => \u_pipeline/u_histogram/sample_counted\,
      I2 => \u_pipeline/win_valid\,
      O => win_valid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_wp4_board_bridge_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    dma_tvalid : in STD_LOGIC;
    dma_tready : out STD_LOGIC;
    dma_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dma_tlast : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 29 downto 0 );
    data_status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    flag_status : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_wp4_board_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_wp4_board_bridge_0_0 : entity is "facebox_system_wp4_board_bridge_0_0,wp4_board_bridge_m13_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_wp4_board_bridge_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_wp4_board_bridge_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_wp4_board_bridge_0_0 : entity is "wp4_board_bridge_m13_bd,Vivado 2018.3";
end facebox_system_wp4_board_bridge_0_0;

architecture STRUCTURE of facebox_system_wp4_board_bridge_0_0 is
  signal inst_n_16 : STD_LOGIC;
  signal inst_n_17 : STD_LOGIC;
  signal inst_n_18 : STD_LOGIC;
  signal inst_n_19 : STD_LOGIC;
  signal \m_tdata_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal vertical_delta_carry_i_9_n_0 : STD_LOGIC;
  signal vertical_mix_next_i_2_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF dma, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dma_tlast : signal is "xilinx.com:interface:axis:1.0 dma TLAST";
  attribute X_INTERFACE_PARAMETER of dma_tlast : signal is "XIL_INTERFACENAME dma, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dma_tready : signal is "xilinx.com:interface:axis:1.0 dma TREADY";
  attribute X_INTERFACE_INFO of dma_tvalid : signal is "xilinx.com:interface:axis:1.0 dma TVALID";
  attribute X_INTERFACE_INFO of dma_tdata : signal is "xilinx.com:interface:axis:1.0 dma TDATA";
begin
inst: entity work.facebox_system_wp4_board_bridge_0_0_wp4_board_bridge_m13_bd
     port map (
      OPMODE(0) => vertical_mix_next_i_2_n_0,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => inst_n_19,
      control(29 downto 0) => control(29 downto 0),
      data_status(15 downto 0) => data_status(31 downto 16),
      dma_tdata(7 downto 0) => dma_tdata(7 downto 0),
      dma_tlast => dma_tlast,
      dma_tready => dma_tready,
      dma_tvalid => dma_tvalid,
      flag_status(5 downto 0) => flag_status(5 downto 0),
      hist_mem_reg_1(15 downto 0) => data_status(15 downto 0),
      \m_tdata_reg[7]_i_5\ => \m_tdata_reg[7]_i_5_n_0\,
      \state_reg[0]\ => inst_n_18,
      \state_reg[2]\ => inst_n_16,
      \state_reg[3]\ => inst_n_17,
      vertical_delta_carry_i_9 => vertical_delta_carry_i_9_n_0
    );
\m_tdata_reg[7]_i_5\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => inst_n_19,
      D => inst_n_17,
      Q => \m_tdata_reg[7]_i_5_n_0\
    );
vertical_delta_carry_i_9: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => inst_n_19,
      D => inst_n_16,
      Q => vertical_delta_carry_i_9_n_0
    );
vertical_mix_next_i_2: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => inst_n_19,
      D => inst_n_18,
      Q => vertical_mix_next_i_2_n_0
    );
end STRUCTURE;
