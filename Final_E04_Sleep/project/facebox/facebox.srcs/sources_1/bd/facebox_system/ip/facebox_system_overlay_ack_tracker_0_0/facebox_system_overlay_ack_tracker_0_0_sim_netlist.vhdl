-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:21:47 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_overlay_ack_tracker_0_0/facebox_system_overlay_ack_tracker_0_0_sim_netlist.vhdl
-- Design      : facebox_system_overlay_ack_tracker_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker is
  port (
    acknowledged_sequence : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ack : in STD_LOGIC;
    sequence_value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    invalidate : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker : entity is "overlay_ack_tracker";
end facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker;

architecture STRUCTURE of facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker is
  signal \acknowledged_sequence[31]_i_1_n_0\ : STD_LOGIC;
begin
\acknowledged_sequence[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => invalidate,
      I1 => aresetn,
      O => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(0),
      Q => acknowledged_sequence(0),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(10),
      Q => acknowledged_sequence(10),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(11),
      Q => acknowledged_sequence(11),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(12),
      Q => acknowledged_sequence(12),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(13),
      Q => acknowledged_sequence(13),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(14),
      Q => acknowledged_sequence(14),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(15),
      Q => acknowledged_sequence(15),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(16),
      Q => acknowledged_sequence(16),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(17),
      Q => acknowledged_sequence(17),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(18),
      Q => acknowledged_sequence(18),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(19),
      Q => acknowledged_sequence(19),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(1),
      Q => acknowledged_sequence(1),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(20),
      Q => acknowledged_sequence(20),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(21),
      Q => acknowledged_sequence(21),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(22),
      Q => acknowledged_sequence(22),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(23),
      Q => acknowledged_sequence(23),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(24),
      Q => acknowledged_sequence(24),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(25),
      Q => acknowledged_sequence(25),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(26),
      Q => acknowledged_sequence(26),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(27),
      Q => acknowledged_sequence(27),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(28),
      Q => acknowledged_sequence(28),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(29),
      Q => acknowledged_sequence(29),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(2),
      Q => acknowledged_sequence(2),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(30),
      Q => acknowledged_sequence(30),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(31),
      Q => acknowledged_sequence(31),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(3),
      Q => acknowledged_sequence(3),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(4),
      Q => acknowledged_sequence(4),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(5),
      Q => acknowledged_sequence(5),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(6),
      Q => acknowledged_sequence(6),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(7),
      Q => acknowledged_sequence(7),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(8),
      Q => acknowledged_sequence(8),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
\acknowledged_sequence_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => ack,
      D => sequence_value(9),
      Q => acknowledged_sequence(9),
      R => \acknowledged_sequence[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd is
  port (
    acknowledged_sequence : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ack : in STD_LOGIC;
    sequence_value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    invalidate : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd : entity is "overlay_ack_tracker_bd";
end facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd;

architecture STRUCTURE of facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd is
begin
u_core: entity work.facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker
     port map (
      ack => ack,
      acknowledged_sequence(31 downto 0) => acknowledged_sequence(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      invalidate => invalidate,
      sequence_value(31 downto 0) => sequence_value(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_overlay_ack_tracker_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ack : in STD_LOGIC;
    invalidate : in STD_LOGIC;
    sequence_value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    acknowledged_sequence : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_overlay_ack_tracker_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_overlay_ack_tracker_0_0 : entity is "facebox_system_overlay_ack_tracker_0_0,overlay_ack_tracker_bd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_overlay_ack_tracker_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_overlay_ack_tracker_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_overlay_ack_tracker_0_0 : entity is "overlay_ack_tracker_bd,Vivado 2018.3";
end facebox_system_overlay_ack_tracker_0_0;

architecture STRUCTURE of facebox_system_overlay_ack_tracker_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.facebox_system_overlay_ack_tracker_0_0_overlay_ack_tracker_bd
     port map (
      ack => ack,
      acknowledged_sequence(31 downto 0) => acknowledged_sequence(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      invalidate => invalidate,
      sequence_value(31 downto 0) => sequence_value(31 downto 0)
    );
end STRUCTURE;
