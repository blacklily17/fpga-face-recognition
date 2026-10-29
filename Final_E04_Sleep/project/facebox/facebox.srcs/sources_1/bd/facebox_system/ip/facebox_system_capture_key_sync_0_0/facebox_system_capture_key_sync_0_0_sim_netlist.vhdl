-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:17:59 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_capture_key_sync_0_0/facebox_system_capture_key_sync_0_0_sim_netlist.vhdl
-- Design      : facebox_system_capture_key_sync_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_capture_key_sync_0_0_capture_key_sync is
  port (
    key_sync_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    key_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_capture_key_sync_0_0_capture_key_sync : entity is "capture_key_sync";
end facebox_system_capture_key_sync_0_0_capture_key_sync;

architecture STRUCTURE of facebox_system_capture_key_sync_0_0_capture_key_sync is
  signal key_meta_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of key_meta_n : signal is "true";
  signal key_stable_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of key_stable_n : signal is "true";
  signal p_0_in : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \key_meta_n_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \key_meta_n_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \key_meta_n_reg[1]\ : label is std.standard.true;
  attribute KEEP of \key_meta_n_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \key_stable_n_reg[0]\ : label is std.standard.true;
  attribute KEEP of \key_stable_n_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \key_stable_n_reg[1]\ : label is std.standard.true;
  attribute KEEP of \key_stable_n_reg[1]\ : label is "yes";
begin
  key_sync_n(1 downto 0) <= key_stable_n(1 downto 0);
\key_meta_n[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
\key_meta_n_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => key_n(0),
      Q => key_meta_n(0),
      S => p_0_in
    );
\key_meta_n_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => key_n(1),
      Q => key_meta_n(1),
      S => p_0_in
    );
\key_stable_n_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => key_meta_n(0),
      Q => key_stable_n(0),
      S => p_0_in
    );
\key_stable_n_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => key_meta_n(1),
      Q => key_stable_n(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_capture_key_sync_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    key_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    key_sync_n : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_capture_key_sync_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_capture_key_sync_0_0 : entity is "facebox_system_capture_key_sync_0_0,capture_key_sync,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_capture_key_sync_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_capture_key_sync_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_capture_key_sync_0_0 : entity is "capture_key_sync,Vivado 2018.3";
end facebox_system_capture_key_sync_0_0;

architecture STRUCTURE of facebox_system_capture_key_sync_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.facebox_system_capture_key_sync_0_0_capture_key_sync
     port map (
      clk => clk,
      key_n(1 downto 0) => key_n(1 downto 0),
      key_sync_n(1 downto 0) => key_sync_n(1 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
