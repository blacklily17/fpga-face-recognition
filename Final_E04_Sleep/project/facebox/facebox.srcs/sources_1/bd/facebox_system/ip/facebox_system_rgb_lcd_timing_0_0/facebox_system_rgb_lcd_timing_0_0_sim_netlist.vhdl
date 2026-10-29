-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:19:59 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_rgb_lcd_timing_0_0/facebox_system_rgb_lcd_timing_0_0_sim_netlist.vhdl
-- Design      : facebox_system_rgb_lcd_timing_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing is
  port (
    lcd_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    lcd_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_de : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_bl : out STD_LOGIC;
    s_tready : out STD_LOGIC;
    lcd_underflow_sticky : out STD_LOGIC;
    s_tlast : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    lcd_pclk : in STD_LOGIC;
    lcd_rst_n : in STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing : entity is "rgb_lcd_timing";
end facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing;

architecture STRUCTURE of facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing is
  signal h_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \h_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \h_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \lcd_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_b[4]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[0]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[1]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[2]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[3]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[4]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_g[5]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \lcd_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \lcd_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \lcd_r[4]_i_4_n_0\ : STD_LOGIC;
  signal \^lcd_underflow_sticky\ : STD_LOGIC;
  signal lcd_underflow_sticky_i_1_n_0 : STD_LOGIC;
  signal lcd_underflow_sticky_i_2_n_0 : STD_LOGIC;
  signal lcd_underflow_sticky_i_3_n_0 : STD_LOGIC;
  signal lcd_underflow_sticky_i_4_n_0 : STD_LOGIC;
  signal lcd_underflow_sticky_i_5_n_0 : STD_LOGIC;
  signal lcd_vsync_i_1_n_0 : STD_LOGIC;
  signal lcd_vsync_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal s_tready_INST_0_i_10_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_11_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_12_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_6_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_7_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_8_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_9_n_0 : STD_LOGIC;
  signal stream_locked : STD_LOGIC;
  signal stream_locked5_out : STD_LOGIC;
  signal stream_locked_i_1_n_0 : STD_LOGIC;
  signal stream_locked_i_2_n_0 : STD_LOGIC;
  signal stream_locked_i_3_n_0 : STD_LOGIC;
  signal stream_locked_i_4_n_0 : STD_LOGIC;
  signal v_count : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_count_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \h_count[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_count[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_count[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lcd_b[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_b[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_b[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lcd_b[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lcd_b[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of lcd_de_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lcd_g[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lcd_g[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_g[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_g[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lcd_g[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lcd_g[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of lcd_hsync_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lcd_r[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lcd_r[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lcd_r[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lcd_r[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lcd_r[4]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of lcd_underflow_sticky_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of lcd_underflow_sticky_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of lcd_vsync_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_tready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_10 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_12 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_9 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count[6]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[9]_i_4\ : label is "soft_lutpair12";
begin
  lcd_underflow_sticky <= \^lcd_underflow_sticky\;
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      O => h_count(0)
    );
\h_count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \h_count_reg_n_0_[9]\,
      I1 => \h_count[10]_i_2_n_0\,
      I2 => \h_count_reg_n_0_[8]\,
      I3 => \h_count_reg_n_0_[10]\,
      I4 => v_count,
      O => h_count(10)
    );
\h_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \h_count_reg_n_0_[7]\,
      I1 => \h_count_reg_n_0_[6]\,
      I2 => \h_count[7]_i_2_n_0\,
      I3 => \h_count_reg_n_0_[4]\,
      I4 => \h_count_reg_n_0_[3]\,
      I5 => \h_count_reg_n_0_[5]\,
      O => \h_count[10]_i_2_n_0\
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count_reg_n_0_[1]\,
      I1 => \h_count_reg_n_0_[0]\,
      O => h_count(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \h_count_reg_n_0_[2]\,
      I1 => \h_count_reg_n_0_[1]\,
      I2 => \h_count_reg_n_0_[0]\,
      O => h_count(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      I1 => \h_count_reg_n_0_[1]\,
      I2 => \h_count_reg_n_0_[2]\,
      I3 => \h_count_reg_n_0_[3]\,
      O => h_count(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[4]\,
      I1 => \h_count_reg_n_0_[0]\,
      I2 => \h_count_reg_n_0_[1]\,
      I3 => \h_count_reg_n_0_[2]\,
      I4 => \h_count_reg_n_0_[3]\,
      O => h_count(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => \h_count_reg_n_0_[3]\,
      I1 => \h_count_reg_n_0_[4]\,
      I2 => \h_count[7]_i_2_n_0\,
      I3 => \h_count_reg_n_0_[5]\,
      I4 => v_count,
      O => h_count(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[6]\,
      I1 => \h_count_reg_n_0_[5]\,
      I2 => \h_count_reg_n_0_[3]\,
      I3 => \h_count_reg_n_0_[4]\,
      I4 => \h_count[7]_i_2_n_0\,
      O => \h_count[6]_i_1_n_0\
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[7]\,
      I1 => \h_count_reg_n_0_[6]\,
      I2 => \h_count_reg_n_0_[4]\,
      I3 => \h_count_reg_n_0_[5]\,
      I4 => \h_count[7]_i_2_n_0\,
      I5 => \h_count_reg_n_0_[3]\,
      O => h_count(7)
    );
\h_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      I1 => \h_count_reg_n_0_[1]\,
      I2 => \h_count_reg_n_0_[2]\,
      O => \h_count[7]_i_2_n_0\
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[8]\,
      I1 => \h_count_reg_n_0_[5]\,
      I2 => \h_count[9]_i_2_n_0\,
      I3 => \h_count_reg_n_0_[6]\,
      I4 => \h_count_reg_n_0_[7]\,
      O => h_count(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \h_count_reg_n_0_[9]\,
      I1 => \h_count_reg_n_0_[7]\,
      I2 => \h_count_reg_n_0_[6]\,
      I3 => \h_count[9]_i_2_n_0\,
      I4 => \h_count_reg_n_0_[5]\,
      I5 => \h_count_reg_n_0_[8]\,
      O => h_count(9)
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \h_count_reg_n_0_[3]\,
      I1 => \h_count_reg_n_0_[4]\,
      I2 => \h_count_reg_n_0_[2]\,
      I3 => \h_count_reg_n_0_[1]\,
      I4 => \h_count_reg_n_0_[0]\,
      O => \h_count[9]_i_2_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(0),
      Q => \h_count_reg_n_0_[0]\,
      R => p_0_in
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(10),
      Q => \h_count_reg_n_0_[10]\,
      R => p_0_in
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(1),
      Q => \h_count_reg_n_0_[1]\,
      R => p_0_in
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(2),
      Q => \h_count_reg_n_0_[2]\,
      R => p_0_in
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(3),
      Q => \h_count_reg_n_0_[3]\,
      R => p_0_in
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(4),
      Q => \h_count_reg_n_0_[4]\,
      R => p_0_in
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(5),
      Q => \h_count_reg_n_0_[5]\,
      R => p_0_in
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \h_count[6]_i_1_n_0\,
      Q => \h_count_reg_n_0_[6]\,
      R => p_0_in
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(7),
      Q => \h_count_reg_n_0_[7]\,
      R => p_0_in
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(8),
      Q => \h_count_reg_n_0_[8]\,
      R => p_0_in
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => h_count(9),
      Q => \h_count_reg_n_0_[9]\,
      R => p_0_in
    );
\lcd_b[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(0),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_b[0]_i_1_n_0\
    );
\lcd_b[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(1),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_b[1]_i_1_n_0\
    );
\lcd_b[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(2),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_b[2]_i_1_n_0\
    );
\lcd_b[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(3),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_b[3]_i_1_n_0\
    );
\lcd_b[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(4),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_b[4]_i_1_n_0\
    );
\lcd_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_b[0]_i_1_n_0\,
      Q => lcd_b(0),
      R => p_0_in
    );
\lcd_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_b[1]_i_1_n_0\,
      Q => lcd_b(1),
      R => p_0_in
    );
\lcd_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_b[2]_i_1_n_0\,
      Q => lcd_b(2),
      R => p_0_in
    );
\lcd_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_b[3]_i_1_n_0\,
      Q => lcd_b(3),
      R => p_0_in
    );
\lcd_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_b[4]_i_1_n_0\,
      Q => lcd_b(4),
      R => p_0_in
    );
lcd_bl_reg: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => lcd_rst_n,
      Q => lcd_bl,
      R => '0'
    );
lcd_de_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_tready_INST_0_i_1_n_0,
      O => p_23_in
    );
lcd_de_reg: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => p_23_in,
      Q => lcd_de,
      R => p_0_in
    );
\lcd_g[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(5),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[0]_i_1_n_0\
    );
\lcd_g[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(6),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[1]_i_1_n_0\
    );
\lcd_g[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(7),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[2]_i_1_n_0\
    );
\lcd_g[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(8),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[3]_i_1_n_0\
    );
\lcd_g[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(9),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[4]_i_1_n_0\
    );
\lcd_g[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(10),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_g[5]_i_1_n_0\
    );
\lcd_g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[0]_i_1_n_0\,
      Q => lcd_g(0),
      R => p_0_in
    );
\lcd_g_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[1]_i_1_n_0\,
      Q => lcd_g(1),
      R => p_0_in
    );
\lcd_g_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[2]_i_1_n_0\,
      Q => lcd_g(2),
      R => p_0_in
    );
\lcd_g_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[3]_i_1_n_0\,
      Q => lcd_g(3),
      R => p_0_in
    );
\lcd_g_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[4]_i_1_n_0\,
      Q => lcd_g(4),
      R => p_0_in
    );
\lcd_g_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_g[5]_i_1_n_0\,
      Q => lcd_g(5),
      R => p_0_in
    );
lcd_hsync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \h_count_reg_n_0_[7]\,
      I1 => \h_count_reg_n_0_[9]\,
      I2 => \h_count_reg_n_0_[10]\,
      I3 => \h_count_reg_n_0_[8]\,
      O => p_1_in
    );
lcd_hsync_reg: unisim.vcomponents.FDSE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => p_1_in,
      Q => lcd_hsync,
      S => p_0_in
    );
\lcd_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(11),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_r[0]_i_1_n_0\
    );
\lcd_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(12),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_r[1]_i_1_n_0\
    );
\lcd_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(13),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_r[2]_i_1_n_0\
    );
\lcd_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(14),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_r[3]_i_1_n_0\
    );
\lcd_r[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lcd_rst_n,
      O => p_0_in
    );
\lcd_r[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \lcd_r[4]_i_3_n_0\,
      I1 => s_tdata(15),
      I2 => s_tready_INST_0_i_1_n_0,
      O => \lcd_r[4]_i_2_n_0\
    );
\lcd_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0A000000020000"
    )
        port map (
      I0 => stream_locked,
      I1 => s_tready_INST_0_i_1_n_0,
      I2 => \lcd_r[4]_i_4_n_0\,
      I3 => s_tuser,
      I4 => s_tvalid,
      I5 => stream_locked5_out,
      O => \lcd_r[4]_i_3_n_0\
    );
\lcd_r[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_tlast,
      I1 => lcd_underflow_sticky_i_4_n_0,
      O => \lcd_r[4]_i_4_n_0\
    );
\lcd_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_r[0]_i_1_n_0\,
      Q => lcd_r(0),
      R => p_0_in
    );
\lcd_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_r[1]_i_1_n_0\,
      Q => lcd_r(1),
      R => p_0_in
    );
\lcd_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_r[2]_i_1_n_0\,
      Q => lcd_r(2),
      R => p_0_in
    );
\lcd_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_r[3]_i_1_n_0\,
      Q => lcd_r(3),
      R => p_0_in
    );
\lcd_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => \lcd_r[4]_i_2_n_0\,
      Q => lcd_r(4),
      R => p_0_in
    );
lcd_underflow_sticky_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => lcd_underflow_sticky_i_2_n_0,
      I1 => s_tready_INST_0_i_1_n_0,
      I2 => stream_locked,
      I3 => lcd_underflow_sticky_i_3_n_0,
      I4 => \^lcd_underflow_sticky\,
      O => lcd_underflow_sticky_i_1_n_0
    );
lcd_underflow_sticky_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FFF0000"
    )
        port map (
      I0 => lcd_underflow_sticky_i_4_n_0,
      I1 => s_tlast,
      I2 => s_tuser,
      I3 => s_tvalid,
      I4 => stream_locked5_out,
      O => lcd_underflow_sticky_i_2_n_0
    );
lcd_underflow_sticky_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFD"
    )
        port map (
      I0 => s_tvalid,
      I1 => s_tuser,
      I2 => lcd_underflow_sticky_i_4_n_0,
      I3 => s_tlast,
      O => lcd_underflow_sticky_i_3_n_0
    );
lcd_underflow_sticky_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => lcd_underflow_sticky_i_5_n_0,
      I1 => \h_count_reg_n_0_[3]\,
      I2 => \h_count_reg_n_0_[10]\,
      I3 => \h_count_reg_n_0_[9]\,
      I4 => \h_count_reg_n_0_[8]\,
      I5 => \h_count_reg_n_0_[7]\,
      O => lcd_underflow_sticky_i_4_n_0
    );
lcd_underflow_sticky_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \h_count_reg_n_0_[6]\,
      I1 => \h_count_reg_n_0_[4]\,
      I2 => \h_count_reg_n_0_[5]\,
      I3 => \h_count_reg_n_0_[2]\,
      I4 => \h_count_reg_n_0_[1]\,
      I5 => \h_count_reg_n_0_[0]\,
      O => lcd_underflow_sticky_i_5_n_0
    );
lcd_underflow_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => lcd_underflow_sticky_i_1_n_0,
      Q => \^lcd_underflow_sticky\,
      R => p_0_in
    );
lcd_vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => lcd_vsync_i_2_n_0,
      I1 => \v_count_reg_n_0_[5]\,
      I2 => \v_count_reg_n_0_[3]\,
      I3 => \v_count_reg_n_0_[2]\,
      I4 => \v_count_reg_n_0_[4]\,
      I5 => \v_count_reg_n_0_[1]\,
      O => lcd_vsync_i_1_n_0
    );
lcd_vsync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_count_reg_n_0_[9]\,
      I1 => \v_count_reg_n_0_[6]\,
      I2 => \v_count_reg_n_0_[7]\,
      I3 => \v_count_reg_n_0_[8]\,
      O => lcd_vsync_i_2_n_0
    );
lcd_vsync_reg: unisim.vcomponents.FDSE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => lcd_vsync_i_1_n_0,
      Q => lcd_vsync,
      S => p_0_in
    );
s_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCDCDFDC"
    )
        port map (
      I0 => s_tready_INST_0_i_1_n_0,
      I1 => stream_locked5_out,
      I2 => stream_locked,
      I3 => s_tvalid,
      I4 => s_tuser,
      O => s_tready
    );
s_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEEFEEEFF"
    )
        port map (
      I0 => s_tready_INST_0_i_3_n_0,
      I1 => s_tready_INST_0_i_4_n_0,
      I2 => s_tready_INST_0_i_5_n_0,
      I3 => s_tready_INST_0_i_6_n_0,
      I4 => \v_count_reg_n_0_[5]\,
      I5 => \v_count_reg_n_0_[9]\,
      O => s_tready_INST_0_i_1_n_0
    );
s_tready_INST_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \h_count_reg_n_0_[8]\,
      I1 => \h_count_reg_n_0_[10]\,
      I2 => \h_count_reg_n_0_[9]\,
      O => s_tready_INST_0_i_10_n_0
    );
s_tready_INST_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_count_reg_n_0_[4]\,
      I1 => \h_count_reg_n_0_[3]\,
      O => s_tready_INST_0_i_11_n_0
    );
s_tready_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \h_count_reg_n_0_[0]\,
      I1 => \h_count_reg_n_0_[1]\,
      I2 => \h_count_reg_n_0_[8]\,
      I3 => \h_count_reg_n_0_[5]\,
      O => s_tready_INST_0_i_12_n_0
    );
s_tready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_tready_INST_0_i_7_n_0,
      I1 => \v_count_reg_n_0_[4]\,
      I2 => \v_count_reg_n_0_[2]\,
      I3 => \v_count_reg_n_0_[3]\,
      I4 => s_tready_INST_0_i_8_n_0,
      O => stream_locked5_out
    );
s_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \h_count_reg_n_0_[3]\,
      I1 => s_tready_INST_0_i_9_n_0,
      I2 => \h_count_reg_n_0_[5]\,
      I3 => \h_count_reg_n_0_[4]\,
      I4 => \h_count_reg_n_0_[6]\,
      O => s_tready_INST_0_i_3_n_0
    );
s_tready_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAABBBBBBBBBBBB"
    )
        port map (
      I0 => \h_count_reg_n_0_[10]\,
      I1 => s_tready_INST_0_i_10_n_0,
      I2 => \h_count_reg_n_0_[5]\,
      I3 => s_tready_INST_0_i_11_n_0,
      I4 => \h_count_reg_n_0_[7]\,
      I5 => \h_count_reg_n_0_[6]\,
      O => s_tready_INST_0_i_4_n_0
    );
s_tready_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \v_count_reg_n_0_[1]\,
      I1 => \v_count_reg_n_0_[0]\,
      I2 => \v_count_reg_n_0_[3]\,
      I3 => \v_count_reg_n_0_[2]\,
      I4 => \v_count_reg_n_0_[4]\,
      O => s_tready_INST_0_i_5_n_0
    );
s_tready_INST_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[7]\,
      I2 => \v_count_reg_n_0_[6]\,
      O => s_tready_INST_0_i_6_n_0
    );
s_tready_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => stream_locked,
      I1 => \v_count_reg_n_0_[5]\,
      I2 => \h_count_reg_n_0_[2]\,
      I3 => \h_count_reg_n_0_[4]\,
      I4 => \h_count_reg_n_0_[3]\,
      I5 => \v_count[6]_i_2_n_0\,
      O => s_tready_INST_0_i_7_n_0
    );
s_tready_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => lcd_vsync_i_2_n_0,
      I1 => s_tready_INST_0_i_12_n_0,
      I2 => \h_count_reg_n_0_[7]\,
      I3 => \h_count_reg_n_0_[6]\,
      I4 => \h_count_reg_n_0_[10]\,
      I5 => \h_count_reg_n_0_[9]\,
      O => s_tready_INST_0_i_8_n_0
    );
s_tready_INST_0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \h_count_reg_n_0_[9]\,
      I1 => \h_count_reg_n_0_[8]\,
      I2 => \h_count_reg_n_0_[7]\,
      O => s_tready_INST_0_i_9_n_0
    );
stream_locked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => lcd_rst_n,
      I1 => stream_locked_i_2_n_0,
      I2 => lcd_underflow_sticky_i_2_n_0,
      O => stream_locked_i_1_n_0
    );
stream_locked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF0FEF0"
    )
        port map (
      I0 => stream_locked_i_3_n_0,
      I1 => s_tready_INST_0_i_1_n_0,
      I2 => stream_locked5_out,
      I3 => stream_locked,
      I4 => lcd_underflow_sticky_i_3_n_0,
      O => stream_locked_i_2_n_0
    );
stream_locked_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFFFFFFF"
    )
        port map (
      I0 => stream_locked_i_4_n_0,
      I1 => s_tready_INST_0_i_6_n_0,
      I2 => \v_count_reg_n_0_[9]\,
      I3 => \v_count_reg_n_0_[0]\,
      I4 => \v_count_reg_n_0_[1]\,
      I5 => lcd_underflow_sticky_i_4_n_0,
      O => stream_locked_i_3_n_0
    );
stream_locked_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_count_reg_n_0_[5]\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => \v_count_reg_n_0_[2]\,
      I3 => \v_count_reg_n_0_[4]\,
      O => stream_locked_i_4_n_0
    );
stream_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => '1',
      D => stream_locked_i_1_n_0,
      Q => stream_locked,
      R => '0'
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => \v_count[9]_i_5_n_0\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count_reg_n_0_[1]\,
      I3 => \v_count_reg_n_0_[9]\,
      I4 => \v_count_reg_n_0_[0]\,
      O => \v_count[0]_i_1_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF7F000"
    )
        port map (
      I0 => \v_count_reg_n_0_[9]\,
      I1 => \v_count[9]_i_5_n_0\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[2]\,
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA25AAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[3]\,
      I1 => \v_count[9]_i_5_n_0\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[9]\,
      I5 => \v_count_reg_n_0_[2]\,
      O => \v_count[3]_i_1_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[4]\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[3]\,
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[5]\,
      I1 => \v_count_reg_n_0_[3]\,
      I2 => \v_count_reg_n_0_[1]\,
      I3 => \v_count_reg_n_0_[0]\,
      I4 => \v_count_reg_n_0_[2]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \v_count[5]_i_1_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg_n_0_[6]\,
      I1 => \v_count_reg_n_0_[4]\,
      I2 => \v_count_reg_n_0_[2]\,
      I3 => \v_count[6]_i_2_n_0\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[5]\,
      O => \v_count[6]_i_1_n_0\
    );
\v_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \v_count_reg_n_0_[0]\,
      I1 => \v_count_reg_n_0_[1]\,
      O => \v_count[6]_i_2_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \v_count_reg_n_0_[7]\,
      I1 => \v_count[8]_i_2_n_0\,
      I2 => \v_count_reg_n_0_[6]\,
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[6]\,
      I2 => \v_count[8]_i_2_n_0\,
      I3 => \v_count_reg_n_0_[7]\,
      O => \v_count[8]_i_1_n_0\
    );
\v_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \v_count_reg_n_0_[4]\,
      I1 => \v_count_reg_n_0_[2]\,
      I2 => \v_count_reg_n_0_[0]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[5]\,
      O => \v_count[8]_i_2_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \h_count[9]_i_2_n_0\,
      I1 => \h_count_reg_n_0_[7]\,
      I2 => \h_count_reg_n_0_[6]\,
      I3 => \h_count_reg_n_0_[10]\,
      I4 => \h_count_reg_n_0_[9]\,
      I5 => \v_count[9]_i_3_n_0\,
      O => v_count
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999991999999999"
    )
        port map (
      I0 => \v_count_reg_n_0_[9]\,
      I1 => \v_count[9]_i_4_n_0\,
      I2 => \v_count_reg_n_0_[2]\,
      I3 => \v_count_reg_n_0_[1]\,
      I4 => \v_count_reg_n_0_[0]\,
      I5 => \v_count[9]_i_5_n_0\,
      O => \v_count[9]_i_2_n_0\
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \h_count_reg_n_0_[5]\,
      I1 => \h_count_reg_n_0_[8]\,
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \v_count_reg_n_0_[7]\,
      I1 => \v_count[8]_i_2_n_0\,
      I2 => \v_count_reg_n_0_[6]\,
      I3 => \v_count_reg_n_0_[8]\,
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \v_count_reg_n_0_[8]\,
      I1 => \v_count_reg_n_0_[7]\,
      I2 => \v_count_reg_n_0_[6]\,
      I3 => \v_count_reg_n_0_[5]\,
      I4 => \v_count_reg_n_0_[3]\,
      I5 => \v_count_reg_n_0_[4]\,
      O => \v_count[9]_i_5_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[0]_i_1_n_0\,
      Q => \v_count_reg_n_0_[0]\,
      R => p_0_in
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[1]_i_1_n_0\,
      Q => \v_count_reg_n_0_[1]\,
      R => p_0_in
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[2]_i_1_n_0\,
      Q => \v_count_reg_n_0_[2]\,
      R => p_0_in
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[3]_i_1_n_0\,
      Q => \v_count_reg_n_0_[3]\,
      R => p_0_in
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[4]_i_1_n_0\,
      Q => \v_count_reg_n_0_[4]\,
      R => p_0_in
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[5]_i_1_n_0\,
      Q => \v_count_reg_n_0_[5]\,
      R => p_0_in
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[6]_i_1_n_0\,
      Q => \v_count_reg_n_0_[6]\,
      R => p_0_in
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[7]_i_1_n_0\,
      Q => \v_count_reg_n_0_[7]\,
      R => p_0_in
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[8]_i_1_n_0\,
      Q => \v_count_reg_n_0_[8]\,
      R => p_0_in
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => lcd_pclk,
      CE => v_count,
      D => \v_count[9]_i_2_n_0\,
      Q => \v_count_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd is
  port (
    lcd_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    lcd_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    lcd_de : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_bl : out STD_LOGIC;
    s_tready : out STD_LOGIC;
    lcd_underflow_sticky : out STD_LOGIC;
    s_tlast : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    lcd_pclk : in STD_LOGIC;
    lcd_rst_n : in STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd : entity is "rgb_lcd_timing_bd";
end facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd;

architecture STRUCTURE of facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd is
begin
u_m17: entity work.facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing
     port map (
      lcd_b(4 downto 0) => lcd_b(4 downto 0),
      lcd_bl => lcd_bl,
      lcd_de => lcd_de,
      lcd_g(5 downto 0) => lcd_g(5 downto 0),
      lcd_hsync => lcd_hsync,
      lcd_pclk => lcd_pclk,
      lcd_r(4 downto 0) => lcd_r(4 downto 0),
      lcd_rst_n => lcd_rst_n,
      lcd_underflow_sticky => lcd_underflow_sticky,
      lcd_vsync => lcd_vsync,
      s_tdata(15 downto 0) => s_tdata(15 downto 0),
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_rgb_lcd_timing_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_rgb_lcd_timing_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_rgb_lcd_timing_0_0 : entity is "facebox_system_rgb_lcd_timing_0_0,rgb_lcd_timing_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_rgb_lcd_timing_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_rgb_lcd_timing_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_rgb_lcd_timing_0_0 : entity is "rgb_lcd_timing_bd,Vivado 2018.3";
end facebox_system_rgb_lcd_timing_0_0;

architecture STRUCTURE of facebox_system_rgb_lcd_timing_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of lcd_pclk : signal is "xilinx.com:signal:clock:1.0 lcd_pclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of lcd_pclk : signal is "XIL_INTERFACENAME lcd_pclk, ASSOCIATED_RESET lcd_rst_n, ASSOCIATED_BUSIF s, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lcd_rst_n : signal is "xilinx.com:signal:reset:1.0 lcd_rst_n RST";
  attribute X_INTERFACE_PARAMETER of lcd_rst_n : signal is "XIL_INTERFACENAME lcd_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tlast : signal is "xilinx.com:interface:axis:1.0 s TLAST";
  attribute X_INTERFACE_PARAMETER of s_tlast : signal is "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 33333333, PHASE 0.0, CLK_DOMAIN /video_clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tready : signal is "xilinx.com:interface:axis:1.0 s TREADY";
  attribute X_INTERFACE_INFO of s_tuser : signal is "xilinx.com:interface:axis:1.0 s TUSER";
  attribute X_INTERFACE_INFO of s_tvalid : signal is "xilinx.com:interface:axis:1.0 s TVALID";
  attribute X_INTERFACE_INFO of s_tdata : signal is "xilinx.com:interface:axis:1.0 s TDATA";
begin
inst: entity work.facebox_system_rgb_lcd_timing_0_0_rgb_lcd_timing_bd
     port map (
      lcd_b(4 downto 0) => lcd_b(4 downto 0),
      lcd_bl => lcd_bl,
      lcd_de => lcd_de,
      lcd_g(5 downto 0) => lcd_g(5 downto 0),
      lcd_hsync => lcd_hsync,
      lcd_pclk => lcd_pclk,
      lcd_r(4 downto 0) => lcd_r(4 downto 0),
      lcd_rst_n => lcd_rst_n,
      lcd_underflow_sticky => lcd_underflow_sticky,
      lcd_vsync => lcd_vsync,
      s_tdata(15 downto 0) => s_tdata(15 downto 0),
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid
    );
end STRUCTURE;
