-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 11:22:44 2026
-- Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_tx2_axis_sink_0_0/facebox_system_tx2_axis_sink_0_0_sim_netlist.vhdl
-- Design      : facebox_system_tx2_axis_sink_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_bbox_mailbox is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    left : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dst_payload_reg[66]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dst_payload_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dst_payload_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dst_payload_reg[40]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dst_payload_reg[67]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dst_payload_reg[71]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dst_payload_reg[72]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \active_y_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \active_y_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \active_y_reg[9]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dst_payload_reg[37]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \dst_payload_reg[65]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dst_payload_reg[34]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rgb_reg[8]\ : out STD_LOGIC;
    \rgb_reg[9]\ : out STD_LOGIC;
    \rgb_reg[10]\ : out STD_LOGIC;
    \rgb_reg[11]\ : out STD_LOGIC;
    \rgb_reg[12]\ : out STD_LOGIC;
    \rgb_reg[13]\ : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    box_ack : out STD_LOGIC;
    box_timeout : out STD_LOGIC;
    box_reset_event : out STD_LOGIC;
    box_expired : out STD_LOGIC;
    box_busy : out STD_LOGIC;
    box_channel_ready : out STD_LOGIC;
    active_y : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \rgb_o_reg[0]\ : in STD_LOGIC;
    \rgb_o_reg[0]_0\ : in STD_LOGIC;
    active_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \rgb_o_reg[0]_1\ : in STD_LOGIC;
    \rgb_o_reg[0]_2\ : in STD_LOGIC;
    \rgb_o_reg[0]_3\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rgb_o[20]_i_6_0\ : in STD_LOGIC;
    \rgb_o[20]_i_23\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_59_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_59_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_20_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_3_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o_reg[20]_i_13_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o_reg[20]_i_13_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    box_send : in STD_LOGIC;
    rgb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rgb_o_reg[8]\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    box_src_rst_n : in STD_LOGIC;
    box_invalidate : in STD_LOGIC;
    box_recover : in STD_LOGIC;
    box_src_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    box_payload : in STD_LOGIC_VECTOR ( 159 downto 0 );
    frame_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_bbox_mailbox : entity is "bbox_mailbox";
end facebox_system_tx2_axis_sink_0_0_bbox_mailbox;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_bbox_mailbox is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ack19_out : STD_LOGIC;
  signal ack_i_1_n_0 : STD_LOGIC;
  signal ack_reg_n_0 : STD_LOGIC;
  signal ack_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of ack_s : signal is "true";
  signal age_frames : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal age_frames0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \age_frames[0]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[10]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[11]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[12]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[13]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[14]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[15]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[16]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[17]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[18]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[19]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[1]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[20]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[21]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[22]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[23]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[24]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[25]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[26]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[27]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[28]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[29]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[2]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[30]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_10_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_11_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_12_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_13_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_15_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_16_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_17_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_18_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_19_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_20_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_21_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_22_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_24_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_25_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_26_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_27_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_28_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_29_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_30_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_31_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_32_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_33_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_34_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_35_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_36_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_37_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_6_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_7_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_8_n_0\ : STD_LOGIC;
  signal \age_frames[31]_i_9_n_0\ : STD_LOGIC;
  signal \age_frames[3]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[4]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[5]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[6]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[7]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[8]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames[9]_i_1_n_0\ : STD_LOGIC;
  signal \age_frames_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_14_n_1\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_14_n_2\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_14_n_3\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_23_n_1\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_23_n_2\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_23_n_3\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_5_n_1\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \age_frames_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \age_frames_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \age_frames_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \age_frames_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \age_frames_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \age_frames_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal applied_payload : STD_LOGIC_VECTOR ( 159 downto 0 );
  signal clear_ack : STD_LOGIC;
  signal clear_ack_i_1_n_0 : STD_LOGIC;
  signal clear_ack_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of clear_ack_s : signal is "true";
  signal clear_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of clear_d : signal is "true";
  signal clear_req : STD_LOGIC;
  signal clear_req_i_1_n_0 : STD_LOGIC;
  signal clear_req_i_2_n_0 : STD_LOGIC;
  signal dst_box_valid0 : STD_LOGIC;
  signal dst_box_valid_i_1_n_0 : STD_LOGIC;
  signal dst_box_valid_i_2_n_0 : STD_LOGIC;
  signal dst_box_valid_i_3_n_0 : STD_LOGIC;
  signal dst_box_valid_i_4_n_0 : STD_LOGIC;
  signal dst_box_valid_i_5_n_0 : STD_LOGIC;
  signal dst_box_valid_i_6_n_0 : STD_LOGIC;
  signal dst_box_valid_i_7_n_0 : STD_LOGIC;
  signal dst_box_valid_i_8_n_0 : STD_LOGIC;
  signal \dst_payload[0]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[100]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[101]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[102]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[103]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[104]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[105]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[106]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[107]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[108]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[109]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[10]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[110]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[111]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[112]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[113]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[114]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[115]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[116]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[117]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[118]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[119]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[11]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[120]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[121]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[122]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[123]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[124]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[125]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[126]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[127]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[128]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[129]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[12]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[130]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[131]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[132]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[133]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[134]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[135]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[136]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[137]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[138]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[139]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[13]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[140]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[141]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[142]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[143]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[144]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[145]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[146]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[147]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[148]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[149]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[14]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[150]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[151]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[152]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[153]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[154]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[155]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[156]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[157]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[158]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[159]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[159]_i_2_n_0\ : STD_LOGIC;
  signal \dst_payload[159]_i_3_n_0\ : STD_LOGIC;
  signal \dst_payload[15]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[16]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[17]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[18]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[19]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[1]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[20]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[21]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[22]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[23]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[24]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[25]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[26]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[27]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[28]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[29]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[2]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[30]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[31]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[32]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[33]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[34]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[35]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[36]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[37]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[38]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[39]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[3]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[40]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[41]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[42]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[43]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[44]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[45]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[46]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[47]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[48]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[49]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[4]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[50]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[51]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[52]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[53]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[54]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[55]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[56]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[57]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[58]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[59]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[5]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[60]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[61]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[62]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[63]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[64]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[65]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[66]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[67]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[68]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[69]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[6]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[70]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[71]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[72]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[73]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[74]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[75]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[76]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[77]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[78]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[79]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[7]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[80]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[81]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[82]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[83]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[84]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[85]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[86]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[87]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[88]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[89]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[8]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[90]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[91]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[92]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[93]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[94]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[95]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[96]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[97]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[98]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[99]_i_1_n_0\ : STD_LOGIC;
  signal \dst_payload[9]_i_1_n_0\ : STD_LOGIC;
  signal dst_ready_i_1_n_0 : STD_LOGIC;
  signal dst_ready_reg_n_0 : STD_LOGIC;
  signal dst_reset_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of dst_reset_pipe : signal is "true";
  signal expire_ack : STD_LOGIC;
  signal expire_ack_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of expire_ack_d : signal is "true";
  signal expire_req_i_1_n_0 : STD_LOGIC;
  signal expire_req_i_2_n_0 : STD_LOGIC;
  signal expire_req_i_3_n_0 : STD_LOGIC;
  signal expire_req_reg_n_0 : STD_LOGIC;
  signal expire_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of expire_s : signal is "true";
  signal expired0 : STD_LOGIC;
  signal held_payload : STD_LOGIC_VECTOR ( 159 downto 0 );
  signal \held_payload[159]_i_1_n_0\ : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^left\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal legal_box1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal legal_box2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal mailbox_box_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pending : STD_LOGIC;
  signal pending_i_1_n_0 : STD_LOGIC;
  signal pending_i_2_n_0 : STD_LOGIC;
  signal \pending_payload[63]_i_1_n_0\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[0]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[100]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[101]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[102]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[103]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[104]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[105]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[106]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[107]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[108]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[109]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[10]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[110]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[111]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[112]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[113]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[114]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[115]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[116]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[117]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[118]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[119]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[11]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[120]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[121]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[122]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[123]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[124]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[125]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[126]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[127]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[128]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[129]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[12]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[130]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[131]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[132]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[133]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[134]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[135]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[136]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[137]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[138]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[139]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[13]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[140]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[141]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[142]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[143]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[144]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[145]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[146]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[147]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[148]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[149]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[14]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[150]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[151]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[152]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[153]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[154]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[155]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[156]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[157]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[158]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[159]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[15]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[16]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[17]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[18]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[19]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[1]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[20]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[21]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[22]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[23]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[24]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[25]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[26]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[27]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[28]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[29]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[2]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[30]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[31]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[32]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[33]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[34]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[35]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[36]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[37]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[38]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[39]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[3]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[40]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[41]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[42]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[43]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[44]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[45]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[46]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[47]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[48]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[49]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[4]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[50]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[51]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[52]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[53]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[54]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[55]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[56]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[57]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[58]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[59]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[5]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[60]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[61]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[62]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[63]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[64]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[65]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[66]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[67]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[68]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[69]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[6]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[70]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[71]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[72]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[73]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[74]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[75]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[76]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[77]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[78]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[79]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[7]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[80]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[81]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[82]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[83]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[84]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[85]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[86]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[87]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[88]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[89]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[8]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[90]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[91]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[92]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[93]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[94]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[95]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[96]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[97]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[98]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[99]\ : STD_LOGIC;
  signal \pending_payload_reg_n_0_[9]\ : STD_LOGIC;
  signal pending_req : STD_LOGIC;
  signal pending_req_reg_n_0 : STD_LOGIC;
  signal ready_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of ready_s : signal is "true";
  signal req : STD_LOGIC;
  signal req_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of req_d : signal is "true";
  signal \req_d[1]_i_1_n_0\ : STD_LOGIC;
  signal req_i_1_n_0 : STD_LOGIC;
  signal req_i_2_n_0 : STD_LOGIC;
  signal reset_notice_pending : STD_LOGIC;
  signal \rgb_o[20]_i_100_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_101_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_102_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_104_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_105_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_106_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_107_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_108_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_109_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_111_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_112_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_113_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_115_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_11_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_125_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_126_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_127_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_128_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_129_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_12_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_130_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_131_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_132_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_133_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_136_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_137_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_138_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_139_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_140_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_15_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_17_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_183_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_184_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_185_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_186_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_187_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_188_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_189_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_18_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_190_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_191_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_192_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_193_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_194_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_19_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_20_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_216_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_217_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_218_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_219_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_220_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_222_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_223_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_224_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_225_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_226_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_227_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_228_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_229_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_230_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_231_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_233_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_234_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_235_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_236_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_237_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_238_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_239_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_240_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_241_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_242_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_243_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_244_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_245_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_246_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_247_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_248_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_249_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_24_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_250_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_251_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_26_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_271_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_272_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_273_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_274_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_275_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_276_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_277_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_278_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_27_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_283_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_284_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_285_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_286_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_287_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_288_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_289_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_28_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_290_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_294_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_296_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_297_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_298_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_299_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_29_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_300_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_301_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_302_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_303_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_318_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_319_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_320_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_321_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_322_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_323_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_324_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_325_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_328_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_329_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_330_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_331_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_332_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_333_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_334_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_335_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_336_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_337_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_338_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_339_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_33_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_340_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_341_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_342_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_343_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_344_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_345_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_346_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_34_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_357_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_358_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_359_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_35_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_360_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_361_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_362_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_363_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_364_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_367_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_368_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_369_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_36_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_370_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_371_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_372_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_373_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_374_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_37_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_385_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_386_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_387_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_388_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_389_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_38_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_390_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_391_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_392_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_398_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_399_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_39_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_3_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_400_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_401_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_402_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_40_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_41_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_42_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_44_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_45_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_46_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_49_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_4_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_50_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_51_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_59_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_5_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_6_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_75_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_76_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_77_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_78_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_84_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_86_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_87_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_88_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_89_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_90_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_91_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_92_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_93_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_94_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_95_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_96_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_97_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_99_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_103_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_103_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_103_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_103_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_134_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_134_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_134_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_134_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_134_n_7\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_13_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_13_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_14_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_14_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_221_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_221_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_221_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_221_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_232_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_232_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_232_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_232_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_25_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_25_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_25_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_25_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_270_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_270_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_270_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_270_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_279_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_279_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_280_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_280_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_280_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_280_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_281_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_281_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_281_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_281_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_282_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_282_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_282_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_282_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_291_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_291_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_292_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_292_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_292_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_292_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_293_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_293_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_293_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_293_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_295_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_295_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_295_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_295_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_304_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_304_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_304_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_304_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_305_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_305_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_305_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_305_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_317_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_317_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_317_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_317_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_326_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_326_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_326_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_326_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_327_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_327_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_327_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_327_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_347_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_347_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_347_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_347_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_348_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_348_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_348_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_348_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_365_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_365_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_365_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_365_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_366_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_366_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_366_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_366_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_375_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_375_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_375_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_375_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_384_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_384_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_384_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_384_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_43_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_43_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_43_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_43_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_52_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_52_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_52_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_52_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_54_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_54_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_54_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_54_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_5\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_6\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_56_n_7\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_70_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_70_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_70_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_70_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_71_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_8_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_8_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_8_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_8_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_98_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_98_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_98_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_98_n_3\ : STD_LOGIC;
  signal src_ack_i_1_n_0 : STD_LOGIC;
  signal src_ack_i_2_n_0 : STD_LOGIC;
  signal src_reset_event_i_1_n_0 : STD_LOGIC;
  signal src_reset_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of src_reset_pipe : signal is "true";
  signal \src_reset_pipe[1]_i_1_n_0\ : STD_LOGIC;
  signal src_timeout_i_10_n_0 : STD_LOGIC;
  signal src_timeout_i_12_n_0 : STD_LOGIC;
  signal src_timeout_i_13_n_0 : STD_LOGIC;
  signal src_timeout_i_14_n_0 : STD_LOGIC;
  signal src_timeout_i_15_n_0 : STD_LOGIC;
  signal src_timeout_i_17_n_0 : STD_LOGIC;
  signal src_timeout_i_18_n_0 : STD_LOGIC;
  signal src_timeout_i_19_n_0 : STD_LOGIC;
  signal src_timeout_i_1_n_0 : STD_LOGIC;
  signal src_timeout_i_20_n_0 : STD_LOGIC;
  signal src_timeout_i_21_n_0 : STD_LOGIC;
  signal src_timeout_i_22_n_0 : STD_LOGIC;
  signal src_timeout_i_23_n_0 : STD_LOGIC;
  signal src_timeout_i_24_n_0 : STD_LOGIC;
  signal src_timeout_i_25_n_0 : STD_LOGIC;
  signal src_timeout_i_26_n_0 : STD_LOGIC;
  signal src_timeout_i_27_n_0 : STD_LOGIC;
  signal src_timeout_i_5_n_0 : STD_LOGIC;
  signal src_timeout_i_6_n_0 : STD_LOGIC;
  signal src_timeout_i_7_n_0 : STD_LOGIC;
  signal src_timeout_i_8_n_0 : STD_LOGIC;
  signal src_timeout_i_9_n_0 : STD_LOGIC;
  signal src_timeout_reg_i_11_n_0 : STD_LOGIC;
  signal src_timeout_reg_i_11_n_1 : STD_LOGIC;
  signal src_timeout_reg_i_11_n_2 : STD_LOGIC;
  signal src_timeout_reg_i_11_n_3 : STD_LOGIC;
  signal src_timeout_reg_i_16_n_0 : STD_LOGIC;
  signal src_timeout_reg_i_16_n_1 : STD_LOGIC;
  signal src_timeout_reg_i_16_n_2 : STD_LOGIC;
  signal src_timeout_reg_i_16_n_3 : STD_LOGIC;
  signal src_timeout_reg_i_3_n_1 : STD_LOGIC;
  signal src_timeout_reg_i_3_n_2 : STD_LOGIC;
  signal src_timeout_reg_i_3_n_3 : STD_LOGIC;
  signal src_timeout_reg_i_4_n_0 : STD_LOGIC;
  signal src_timeout_reg_i_4_n_1 : STD_LOGIC;
  signal src_timeout_reg_i_4_n_2 : STD_LOGIC;
  signal src_timeout_reg_i_4_n_3 : STD_LOGIC;
  signal state0 : STD_LOGIC;
  signal state029_out : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal state136_out : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal timeout_age : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timeout_age[31]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_age[31]_i_3_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \timeout_age_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_age_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \timeout_age_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \timeout_age_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_age_frames_reg[31]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_age_frames_reg[31]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_age_frames_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_age_frames_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_age_frames_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_age_frames_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_103_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_221_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_232_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_270_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_279_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_279_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_o_reg[20]_i_282_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_291_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_291_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_o_reg[20]_i_295_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_o_reg[20]_i_317_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_56_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_rgb_o_reg[20]_i_56_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_o_reg[20]_i_71_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_98_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_src_timeout_reg_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_src_timeout_reg_i_16_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_src_timeout_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_src_timeout_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_timeout_age_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timeout_age_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \ack_s_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \ack_s_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ack_s_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ack_s_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \clear_ack_s_reg[0]\ : label is std.standard.true;
  attribute KEEP of \clear_ack_s_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \clear_ack_s_reg[1]\ : label is std.standard.true;
  attribute KEEP of \clear_ack_s_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \clear_d_reg[0]\ : label is std.standard.true;
  attribute KEEP of \clear_d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \clear_d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \clear_d_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clear_req_i_2 : label is "soft_lutpair3";
  attribute ASYNC_REG_boolean of \dst_reset_pipe_reg[0]\ : label is std.standard.true;
  attribute KEEP of \dst_reset_pipe_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \dst_reset_pipe_reg[1]\ : label is std.standard.true;
  attribute KEEP of \dst_reset_pipe_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \expire_ack_d_reg[0]\ : label is std.standard.true;
  attribute KEEP of \expire_ack_d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \expire_ack_d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \expire_ack_d_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \expire_s_reg[0]\ : label is std.standard.true;
  attribute KEEP of \expire_s_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \expire_s_reg[1]\ : label is std.standard.true;
  attribute KEEP of \expire_s_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ready_s_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ready_s_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ready_s_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ready_s_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \req_d_reg[0]\ : label is std.standard.true;
  attribute KEEP of \req_d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \req_d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \req_d_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_106\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_115\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_125\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_19\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_243\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_294\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rgb_o[20]_i_86\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of src_ack_i_3 : label is "soft_lutpair3";
  attribute ASYNC_REG_boolean of \src_reset_pipe_reg[0]\ : label is std.standard.true;
  attribute KEEP of \src_reset_pipe_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \src_reset_pipe_reg[1]\ : label is std.standard.true;
  attribute KEEP of \src_reset_pipe_reg[1]\ : label is "yes";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  left(0) <= \^left\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF001F0000"
    )
        port map (
      I0 => box_invalidate,
      I1 => box_recover,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \FSM_sequential_state[2]_i_2_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011FFFF11000000"
    )
        port map (
      I0 => state136_out,
      I1 => \state__0\(2),
      I2 => state1,
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[2]_i_2_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00200000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => state1,
      I2 => \state__0\(1),
      I3 => state136_out,
      I4 => \FSM_sequential_state[2]_i_2_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => state136_out,
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFF900F900F900"
    )
        port map (
      I0 => ack_s(1),
      I1 => req,
      I2 => state0,
      I3 => \state__0\(0),
      I4 => box_send,
      I5 => ready_s(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400F40"
    )
        port map (
      I0 => ack_s(1),
      I1 => ready_s(1),
      I2 => \state__0\(0),
      I3 => clear_ack_s(1),
      I4 => box_invalidate,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
ack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => req_d(1),
      I1 => clear_ack,
      I2 => pending_req_reg_n_0,
      I3 => ack19_out,
      I4 => ack_reg_n_0,
      O => ack_i_1_n_0
    );
ack_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000FF0080"
    )
        port map (
      I0 => dst_ready_reg_n_0,
      I1 => frame_start,
      I2 => pending,
      I3 => clear_d(1),
      I4 => clear_ack,
      I5 => req_d(1),
      O => ack19_out
    );
ack_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \req_d[1]_i_1_n_0\,
      D => ack_i_1_n_0,
      Q => ack_reg_n_0
    );
\ack_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => ack_reg_n_0,
      Q => ack_s(0)
    );
\ack_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => ack_s(0),
      Q => ack_s(1)
    );
\age_frames[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames(0),
      O => \age_frames[0]_i_1_n_0\
    );
\age_frames[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(10),
      O => \age_frames[10]_i_1_n_0\
    );
\age_frames[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(11),
      O => \age_frames[11]_i_1_n_0\
    );
\age_frames[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(12),
      O => \age_frames[12]_i_1_n_0\
    );
\age_frames[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(13),
      O => \age_frames[13]_i_1_n_0\
    );
\age_frames[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(14),
      O => \age_frames[14]_i_1_n_0\
    );
\age_frames[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(15),
      O => \age_frames[15]_i_1_n_0\
    );
\age_frames[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(16),
      O => \age_frames[16]_i_1_n_0\
    );
\age_frames[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(17),
      O => \age_frames[17]_i_1_n_0\
    );
\age_frames[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(18),
      O => \age_frames[18]_i_1_n_0\
    );
\age_frames[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(19),
      O => \age_frames[19]_i_1_n_0\
    );
\age_frames[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(1),
      O => \age_frames[1]_i_1_n_0\
    );
\age_frames[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(20),
      O => \age_frames[20]_i_1_n_0\
    );
\age_frames[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(21),
      O => \age_frames[21]_i_1_n_0\
    );
\age_frames[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(22),
      O => \age_frames[22]_i_1_n_0\
    );
\age_frames[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(23),
      O => \age_frames[23]_i_1_n_0\
    );
\age_frames[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(24),
      O => \age_frames[24]_i_1_n_0\
    );
\age_frames[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(25),
      O => \age_frames[25]_i_1_n_0\
    );
\age_frames[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(26),
      O => \age_frames[26]_i_1_n_0\
    );
\age_frames[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(27),
      O => \age_frames[27]_i_1_n_0\
    );
\age_frames[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(28),
      O => \age_frames[28]_i_1_n_0\
    );
\age_frames[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(29),
      O => \age_frames[29]_i_1_n_0\
    );
\age_frames[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => age_frames0(2),
      I1 => dst_box_valid0,
      I2 => pending,
      I3 => clear_d(1),
      O => \age_frames[2]_i_1_n_0\
    );
\age_frames[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(30),
      O => \age_frames[30]_i_1_n_0\
    );
\age_frames[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => mailbox_box_valid,
      I1 => clear_ack,
      I2 => dst_ready_reg_n_0,
      I3 => frame_start,
      I4 => \dst_payload[159]_i_1_n_0\,
      O => \age_frames[31]_i_1_n_0\
    );
\age_frames[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(30),
      I1 => age_frames(31),
      O => \age_frames[31]_i_10_n_0\
    );
\age_frames[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(28),
      I1 => age_frames(29),
      O => \age_frames[31]_i_11_n_0\
    );
\age_frames[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(26),
      I1 => age_frames(27),
      O => \age_frames[31]_i_12_n_0\
    );
\age_frames[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(24),
      I1 => age_frames(25),
      O => \age_frames[31]_i_13_n_0\
    );
\age_frames[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(22),
      I1 => age_frames(23),
      O => \age_frames[31]_i_15_n_0\
    );
\age_frames[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(20),
      I1 => age_frames(21),
      O => \age_frames[31]_i_16_n_0\
    );
\age_frames[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(18),
      I1 => age_frames(19),
      O => \age_frames[31]_i_17_n_0\
    );
\age_frames[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(16),
      I1 => age_frames(17),
      O => \age_frames[31]_i_18_n_0\
    );
\age_frames[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(22),
      I1 => age_frames(23),
      O => \age_frames[31]_i_19_n_0\
    );
\age_frames[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(31),
      O => \age_frames[31]_i_2_n_0\
    );
\age_frames[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(20),
      I1 => age_frames(21),
      O => \age_frames[31]_i_20_n_0\
    );
\age_frames[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(18),
      I1 => age_frames(19),
      O => \age_frames[31]_i_21_n_0\
    );
\age_frames[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(16),
      I1 => age_frames(17),
      O => \age_frames[31]_i_22_n_0\
    );
\age_frames[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(14),
      I1 => age_frames(15),
      O => \age_frames[31]_i_24_n_0\
    );
\age_frames[31]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(12),
      I1 => age_frames(13),
      O => \age_frames[31]_i_25_n_0\
    );
\age_frames[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(10),
      I1 => age_frames(11),
      O => \age_frames[31]_i_26_n_0\
    );
\age_frames[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(8),
      I1 => age_frames(9),
      O => \age_frames[31]_i_27_n_0\
    );
\age_frames[31]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(14),
      I1 => age_frames(15),
      O => \age_frames[31]_i_28_n_0\
    );
\age_frames[31]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(12),
      I1 => age_frames(13),
      O => \age_frames[31]_i_29_n_0\
    );
\age_frames[31]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(10),
      I1 => age_frames(11),
      O => \age_frames[31]_i_30_n_0\
    );
\age_frames[31]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(8),
      I1 => age_frames(9),
      O => \age_frames[31]_i_31_n_0\
    );
\age_frames[31]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(6),
      I1 => age_frames(7),
      O => \age_frames[31]_i_32_n_0\
    );
\age_frames[31]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => age_frames(2),
      I1 => age_frames(3),
      O => \age_frames[31]_i_33_n_0\
    );
\age_frames[31]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => age_frames(6),
      I1 => age_frames(7),
      O => \age_frames[31]_i_34_n_0\
    );
\age_frames[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => age_frames(4),
      I1 => age_frames(5),
      O => \age_frames[31]_i_35_n_0\
    );
\age_frames[31]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => age_frames(3),
      I1 => age_frames(2),
      O => \age_frames[31]_i_36_n_0\
    );
\age_frames[31]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => age_frames(0),
      I1 => age_frames(1),
      O => \age_frames[31]_i_37_n_0\
    );
\age_frames[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => age_frames(30),
      I1 => age_frames(31),
      O => \age_frames[31]_i_6_n_0\
    );
\age_frames[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(28),
      I1 => age_frames(29),
      O => \age_frames[31]_i_7_n_0\
    );
\age_frames[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(26),
      I1 => age_frames(27),
      O => \age_frames[31]_i_8_n_0\
    );
\age_frames[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => age_frames(24),
      I1 => age_frames(25),
      O => \age_frames[31]_i_9_n_0\
    );
\age_frames[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => age_frames0(3),
      I1 => dst_box_valid0,
      I2 => pending,
      I3 => clear_d(1),
      O => \age_frames[3]_i_1_n_0\
    );
\age_frames[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => age_frames0(4),
      I1 => dst_box_valid0,
      I2 => pending,
      I3 => clear_d(1),
      O => \age_frames[4]_i_1_n_0\
    );
\age_frames[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => age_frames0(5),
      I1 => dst_box_valid0,
      I2 => pending,
      I3 => clear_d(1),
      O => \age_frames[5]_i_1_n_0\
    );
\age_frames[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(6),
      O => \age_frames[6]_i_1_n_0\
    );
\age_frames[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(7),
      O => \age_frames[7]_i_1_n_0\
    );
\age_frames[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(8),
      O => \age_frames[8]_i_1_n_0\
    );
\age_frames[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => dst_box_valid0,
      I1 => pending,
      I2 => clear_d(1),
      I3 => age_frames0(9),
      O => \age_frames[9]_i_1_n_0\
    );
\age_frames_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[0]_i_1_n_0\,
      Q => age_frames(0)
    );
\age_frames_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[10]_i_1_n_0\,
      Q => age_frames(10)
    );
\age_frames_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[11]_i_1_n_0\,
      Q => age_frames(11)
    );
\age_frames_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[12]_i_1_n_0\,
      Q => age_frames(12)
    );
\age_frames_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[8]_i_2_n_0\,
      CO(3) => \age_frames_reg[12]_i_2_n_0\,
      CO(2) => \age_frames_reg[12]_i_2_n_1\,
      CO(1) => \age_frames_reg[12]_i_2_n_2\,
      CO(0) => \age_frames_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(12 downto 9),
      S(3 downto 0) => age_frames(12 downto 9)
    );
\age_frames_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[13]_i_1_n_0\,
      Q => age_frames(13)
    );
\age_frames_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[14]_i_1_n_0\,
      Q => age_frames(14)
    );
\age_frames_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[15]_i_1_n_0\,
      Q => age_frames(15)
    );
\age_frames_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[16]_i_1_n_0\,
      Q => age_frames(16)
    );
\age_frames_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[12]_i_2_n_0\,
      CO(3) => \age_frames_reg[16]_i_2_n_0\,
      CO(2) => \age_frames_reg[16]_i_2_n_1\,
      CO(1) => \age_frames_reg[16]_i_2_n_2\,
      CO(0) => \age_frames_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(16 downto 13),
      S(3 downto 0) => age_frames(16 downto 13)
    );
\age_frames_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[17]_i_1_n_0\,
      Q => age_frames(17)
    );
\age_frames_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[18]_i_1_n_0\,
      Q => age_frames(18)
    );
\age_frames_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[19]_i_1_n_0\,
      Q => age_frames(19)
    );
\age_frames_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[1]_i_1_n_0\,
      Q => age_frames(1)
    );
\age_frames_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[20]_i_1_n_0\,
      Q => age_frames(20)
    );
\age_frames_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[16]_i_2_n_0\,
      CO(3) => \age_frames_reg[20]_i_2_n_0\,
      CO(2) => \age_frames_reg[20]_i_2_n_1\,
      CO(1) => \age_frames_reg[20]_i_2_n_2\,
      CO(0) => \age_frames_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(20 downto 17),
      S(3 downto 0) => age_frames(20 downto 17)
    );
\age_frames_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[21]_i_1_n_0\,
      Q => age_frames(21)
    );
\age_frames_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[22]_i_1_n_0\,
      Q => age_frames(22)
    );
\age_frames_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[23]_i_1_n_0\,
      Q => age_frames(23)
    );
\age_frames_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[24]_i_1_n_0\,
      Q => age_frames(24)
    );
\age_frames_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[20]_i_2_n_0\,
      CO(3) => \age_frames_reg[24]_i_2_n_0\,
      CO(2) => \age_frames_reg[24]_i_2_n_1\,
      CO(1) => \age_frames_reg[24]_i_2_n_2\,
      CO(0) => \age_frames_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(24 downto 21),
      S(3 downto 0) => age_frames(24 downto 21)
    );
\age_frames_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[25]_i_1_n_0\,
      Q => age_frames(25)
    );
\age_frames_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[26]_i_1_n_0\,
      Q => age_frames(26)
    );
\age_frames_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[27]_i_1_n_0\,
      Q => age_frames(27)
    );
\age_frames_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[28]_i_1_n_0\,
      Q => age_frames(28)
    );
\age_frames_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[24]_i_2_n_0\,
      CO(3) => \age_frames_reg[28]_i_2_n_0\,
      CO(2) => \age_frames_reg[28]_i_2_n_1\,
      CO(1) => \age_frames_reg[28]_i_2_n_2\,
      CO(0) => \age_frames_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(28 downto 25),
      S(3 downto 0) => age_frames(28 downto 25)
    );
\age_frames_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[29]_i_1_n_0\,
      Q => age_frames(29)
    );
\age_frames_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[2]_i_1_n_0\,
      Q => age_frames(2)
    );
\age_frames_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[30]_i_1_n_0\,
      Q => age_frames(30)
    );
\age_frames_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[31]_i_2_n_0\,
      Q => age_frames(31)
    );
\age_frames_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[31]_i_23_n_0\,
      CO(3) => \age_frames_reg[31]_i_14_n_0\,
      CO(2) => \age_frames_reg[31]_i_14_n_1\,
      CO(1) => \age_frames_reg[31]_i_14_n_2\,
      CO(0) => \age_frames_reg[31]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \age_frames[31]_i_24_n_0\,
      DI(2) => \age_frames[31]_i_25_n_0\,
      DI(1) => \age_frames[31]_i_26_n_0\,
      DI(0) => \age_frames[31]_i_27_n_0\,
      O(3 downto 0) => \NLW_age_frames_reg[31]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \age_frames[31]_i_28_n_0\,
      S(2) => \age_frames[31]_i_29_n_0\,
      S(1) => \age_frames[31]_i_30_n_0\,
      S(0) => \age_frames[31]_i_31_n_0\
    );
\age_frames_reg[31]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \age_frames_reg[31]_i_23_n_0\,
      CO(2) => \age_frames_reg[31]_i_23_n_1\,
      CO(1) => \age_frames_reg[31]_i_23_n_2\,
      CO(0) => \age_frames_reg[31]_i_23_n_3\,
      CYINIT => '1',
      DI(3) => \age_frames[31]_i_32_n_0\,
      DI(2) => '0',
      DI(1) => \age_frames[31]_i_33_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_age_frames_reg[31]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \age_frames[31]_i_34_n_0\,
      S(2) => \age_frames[31]_i_35_n_0\,
      S(1) => \age_frames[31]_i_36_n_0\,
      S(0) => \age_frames[31]_i_37_n_0\
    );
\age_frames_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[31]_i_5_n_0\,
      CO(3) => dst_box_valid0,
      CO(2) => \age_frames_reg[31]_i_3_n_1\,
      CO(1) => \age_frames_reg[31]_i_3_n_2\,
      CO(0) => \age_frames_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \age_frames[31]_i_6_n_0\,
      DI(2) => \age_frames[31]_i_7_n_0\,
      DI(1) => \age_frames[31]_i_8_n_0\,
      DI(0) => \age_frames[31]_i_9_n_0\,
      O(3 downto 0) => \NLW_age_frames_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \age_frames[31]_i_10_n_0\,
      S(2) => \age_frames[31]_i_11_n_0\,
      S(1) => \age_frames[31]_i_12_n_0\,
      S(0) => \age_frames[31]_i_13_n_0\
    );
\age_frames_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_age_frames_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \age_frames_reg[31]_i_4_n_2\,
      CO(0) => \age_frames_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_age_frames_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => age_frames0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => age_frames(31 downto 29)
    );
\age_frames_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[31]_i_14_n_0\,
      CO(3) => \age_frames_reg[31]_i_5_n_0\,
      CO(2) => \age_frames_reg[31]_i_5_n_1\,
      CO(1) => \age_frames_reg[31]_i_5_n_2\,
      CO(0) => \age_frames_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \age_frames[31]_i_15_n_0\,
      DI(2) => \age_frames[31]_i_16_n_0\,
      DI(1) => \age_frames[31]_i_17_n_0\,
      DI(0) => \age_frames[31]_i_18_n_0\,
      O(3 downto 0) => \NLW_age_frames_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \age_frames[31]_i_19_n_0\,
      S(2) => \age_frames[31]_i_20_n_0\,
      S(1) => \age_frames[31]_i_21_n_0\,
      S(0) => \age_frames[31]_i_22_n_0\
    );
\age_frames_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[3]_i_1_n_0\,
      Q => age_frames(3)
    );
\age_frames_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[4]_i_1_n_0\,
      Q => age_frames(4)
    );
\age_frames_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \age_frames_reg[4]_i_2_n_0\,
      CO(2) => \age_frames_reg[4]_i_2_n_1\,
      CO(1) => \age_frames_reg[4]_i_2_n_2\,
      CO(0) => \age_frames_reg[4]_i_2_n_3\,
      CYINIT => age_frames(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(4 downto 1),
      S(3 downto 0) => age_frames(4 downto 1)
    );
\age_frames_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[5]_i_1_n_0\,
      Q => age_frames(5)
    );
\age_frames_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[6]_i_1_n_0\,
      Q => age_frames(6)
    );
\age_frames_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[7]_i_1_n_0\,
      Q => age_frames(7)
    );
\age_frames_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[8]_i_1_n_0\,
      Q => age_frames(8)
    );
\age_frames_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \age_frames_reg[4]_i_2_n_0\,
      CO(3) => \age_frames_reg[8]_i_2_n_0\,
      CO(2) => \age_frames_reg[8]_i_2_n_1\,
      CO(1) => \age_frames_reg[8]_i_2_n_2\,
      CO(0) => \age_frames_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => age_frames0(8 downto 5),
      S(3 downto 0) => age_frames(8 downto 5)
    );
\age_frames_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \age_frames[31]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \age_frames[9]_i_1_n_0\,
      Q => age_frames(9)
    );
box_busy_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => ready_s(1),
      I4 => box_invalidate,
      O => box_busy
    );
box_channel_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => box_invalidate,
      I3 => ready_s(1),
      O => box_channel_ready
    );
clear_ack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => req_d(1),
      I1 => clear_ack,
      I2 => clear_d(1),
      O => clear_ack_i_1_n_0
    );
clear_ack_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \req_d[1]_i_1_n_0\,
      D => clear_ack_i_1_n_0,
      Q => clear_ack
    );
\clear_ack_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => clear_ack,
      Q => clear_ack_s(0)
    );
\clear_ack_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => clear_ack_s(0),
      Q => clear_ack_s(1)
    );
\clear_d_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => clear_req,
      PRE => \req_d[1]_i_1_n_0\,
      Q => clear_d(0)
    );
\clear_d_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => clear_d(0),
      PRE => \req_d[1]_i_1_n_0\,
      Q => clear_d(1)
    );
clear_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFAAAAAAAA"
    )
        port map (
      I0 => state136_out,
      I1 => \state__0\(1),
      I2 => box_invalidate,
      I3 => clear_ack_s(1),
      I4 => clear_req_i_2_n_0,
      I5 => clear_req,
      O => clear_req_i_1_n_0
    );
clear_req_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      O => clear_req_i_2_n_0
    );
clear_req_reg: unisim.vcomponents.FDPE
     port map (
      C => box_src_clk,
      CE => '1',
      D => clear_req_i_1_n_0,
      PRE => src_ack_i_2_n_0,
      Q => clear_req
    );
dst_box_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => dst_box_valid_i_2_n_0,
      I1 => dst_box_valid_i_3_n_0,
      I2 => dst_box_valid_i_4_n_0,
      I3 => dst_box_valid_i_5_n_0,
      I4 => dst_box_valid_i_6_n_0,
      I5 => mailbox_box_valid,
      O => dst_box_valid_i_1_n_0
    );
dst_box_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[24]\,
      I1 => \pending_payload_reg_n_0_[25]\,
      I2 => \pending_payload_reg_n_0_[22]\,
      I3 => \pending_payload_reg_n_0_[23]\,
      I4 => \pending_payload_reg_n_0_[27]\,
      I5 => \pending_payload_reg_n_0_[26]\,
      O => dst_box_valid_i_2_n_0
    );
dst_box_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[30]\,
      I1 => \pending_payload_reg_n_0_[31]\,
      I2 => \pending_payload_reg_n_0_[28]\,
      I3 => \pending_payload_reg_n_0_[29]\,
      I4 => clear_d(1),
      I5 => pending,
      O => dst_box_valid_i_3_n_0
    );
dst_box_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[18]\,
      I1 => \pending_payload_reg_n_0_[19]\,
      I2 => \pending_payload_reg_n_0_[16]\,
      I3 => \pending_payload_reg_n_0_[17]\,
      I4 => \pending_payload_reg_n_0_[21]\,
      I5 => \pending_payload_reg_n_0_[20]\,
      O => dst_box_valid_i_4_n_0
    );
dst_box_valid_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => dst_box_valid_i_7_n_0,
      I1 => \pending_payload_reg_n_0_[1]\,
      I2 => \pending_payload_reg_n_0_[0]\,
      I3 => \pending_payload_reg_n_0_[3]\,
      I4 => \pending_payload_reg_n_0_[2]\,
      I5 => dst_box_valid_i_8_n_0,
      O => dst_box_valid_i_5_n_0
    );
dst_box_valid_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => clear_ack,
      I1 => dst_ready_reg_n_0,
      I2 => frame_start,
      I3 => dst_box_valid0,
      I4 => mailbox_box_valid,
      I5 => \dst_payload[159]_i_1_n_0\,
      O => dst_box_valid_i_6_n_0
    );
dst_box_valid_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[6]\,
      I1 => \pending_payload_reg_n_0_[7]\,
      I2 => \pending_payload_reg_n_0_[4]\,
      I3 => \pending_payload_reg_n_0_[5]\,
      I4 => \pending_payload_reg_n_0_[9]\,
      I5 => \pending_payload_reg_n_0_[8]\,
      O => dst_box_valid_i_7_n_0
    );
dst_box_valid_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[12]\,
      I1 => \pending_payload_reg_n_0_[13]\,
      I2 => \pending_payload_reg_n_0_[10]\,
      I3 => \pending_payload_reg_n_0_[11]\,
      I4 => \pending_payload_reg_n_0_[15]\,
      I5 => \pending_payload_reg_n_0_[14]\,
      O => dst_box_valid_i_8_n_0
    );
dst_box_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \pending_payload[63]_i_1_n_0\,
      D => dst_box_valid_i_1_n_0,
      Q => mailbox_box_valid
    );
\dst_payload[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[0]\,
      I1 => clear_d(1),
      O => \dst_payload[0]_i_1_n_0\
    );
\dst_payload[100]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[100]\,
      I1 => clear_d(1),
      O => \dst_payload[100]_i_1_n_0\
    );
\dst_payload[101]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[101]\,
      I1 => clear_d(1),
      O => \dst_payload[101]_i_1_n_0\
    );
\dst_payload[102]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[102]\,
      I1 => clear_d(1),
      O => \dst_payload[102]_i_1_n_0\
    );
\dst_payload[103]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[103]\,
      I1 => clear_d(1),
      O => \dst_payload[103]_i_1_n_0\
    );
\dst_payload[104]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[104]\,
      I1 => clear_d(1),
      O => \dst_payload[104]_i_1_n_0\
    );
\dst_payload[105]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[105]\,
      I1 => clear_d(1),
      O => \dst_payload[105]_i_1_n_0\
    );
\dst_payload[106]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[106]\,
      I1 => clear_d(1),
      O => \dst_payload[106]_i_1_n_0\
    );
\dst_payload[107]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[107]\,
      I1 => clear_d(1),
      O => \dst_payload[107]_i_1_n_0\
    );
\dst_payload[108]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[108]\,
      I1 => clear_d(1),
      O => \dst_payload[108]_i_1_n_0\
    );
\dst_payload[109]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[109]\,
      I1 => clear_d(1),
      O => \dst_payload[109]_i_1_n_0\
    );
\dst_payload[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[10]\,
      I1 => clear_d(1),
      O => \dst_payload[10]_i_1_n_0\
    );
\dst_payload[110]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[110]\,
      I1 => clear_d(1),
      O => \dst_payload[110]_i_1_n_0\
    );
\dst_payload[111]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[111]\,
      I1 => clear_d(1),
      O => \dst_payload[111]_i_1_n_0\
    );
\dst_payload[112]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[112]\,
      I1 => clear_d(1),
      O => \dst_payload[112]_i_1_n_0\
    );
\dst_payload[113]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[113]\,
      I1 => clear_d(1),
      O => \dst_payload[113]_i_1_n_0\
    );
\dst_payload[114]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[114]\,
      I1 => clear_d(1),
      O => \dst_payload[114]_i_1_n_0\
    );
\dst_payload[115]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[115]\,
      I1 => clear_d(1),
      O => \dst_payload[115]_i_1_n_0\
    );
\dst_payload[116]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[116]\,
      I1 => clear_d(1),
      O => \dst_payload[116]_i_1_n_0\
    );
\dst_payload[117]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[117]\,
      I1 => clear_d(1),
      O => \dst_payload[117]_i_1_n_0\
    );
\dst_payload[118]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[118]\,
      I1 => clear_d(1),
      O => \dst_payload[118]_i_1_n_0\
    );
\dst_payload[119]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[119]\,
      I1 => clear_d(1),
      O => \dst_payload[119]_i_1_n_0\
    );
\dst_payload[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[11]\,
      I1 => clear_d(1),
      O => \dst_payload[11]_i_1_n_0\
    );
\dst_payload[120]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[120]\,
      I1 => clear_d(1),
      O => \dst_payload[120]_i_1_n_0\
    );
\dst_payload[121]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[121]\,
      I1 => clear_d(1),
      O => \dst_payload[121]_i_1_n_0\
    );
\dst_payload[122]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[122]\,
      I1 => clear_d(1),
      O => \dst_payload[122]_i_1_n_0\
    );
\dst_payload[123]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[123]\,
      I1 => clear_d(1),
      O => \dst_payload[123]_i_1_n_0\
    );
\dst_payload[124]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[124]\,
      I1 => clear_d(1),
      O => \dst_payload[124]_i_1_n_0\
    );
\dst_payload[125]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[125]\,
      I1 => clear_d(1),
      O => \dst_payload[125]_i_1_n_0\
    );
\dst_payload[126]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[126]\,
      I1 => clear_d(1),
      O => \dst_payload[126]_i_1_n_0\
    );
\dst_payload[127]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[127]\,
      I1 => clear_d(1),
      O => \dst_payload[127]_i_1_n_0\
    );
\dst_payload[128]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[128]\,
      I1 => clear_d(1),
      O => \dst_payload[128]_i_1_n_0\
    );
\dst_payload[129]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[129]\,
      I1 => clear_d(1),
      O => \dst_payload[129]_i_1_n_0\
    );
\dst_payload[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[12]\,
      I1 => clear_d(1),
      O => \dst_payload[12]_i_1_n_0\
    );
\dst_payload[130]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[130]\,
      I1 => clear_d(1),
      O => \dst_payload[130]_i_1_n_0\
    );
\dst_payload[131]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[131]\,
      I1 => clear_d(1),
      O => \dst_payload[131]_i_1_n_0\
    );
\dst_payload[132]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[132]\,
      I1 => clear_d(1),
      O => \dst_payload[132]_i_1_n_0\
    );
\dst_payload[133]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[133]\,
      I1 => clear_d(1),
      O => \dst_payload[133]_i_1_n_0\
    );
\dst_payload[134]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[134]\,
      I1 => clear_d(1),
      O => \dst_payload[134]_i_1_n_0\
    );
\dst_payload[135]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[135]\,
      I1 => clear_d(1),
      O => \dst_payload[135]_i_1_n_0\
    );
\dst_payload[136]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[136]\,
      I1 => clear_d(1),
      O => \dst_payload[136]_i_1_n_0\
    );
\dst_payload[137]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[137]\,
      I1 => clear_d(1),
      O => \dst_payload[137]_i_1_n_0\
    );
\dst_payload[138]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[138]\,
      I1 => clear_d(1),
      O => \dst_payload[138]_i_1_n_0\
    );
\dst_payload[139]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[139]\,
      I1 => clear_d(1),
      O => \dst_payload[139]_i_1_n_0\
    );
\dst_payload[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[13]\,
      I1 => clear_d(1),
      O => \dst_payload[13]_i_1_n_0\
    );
\dst_payload[140]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[140]\,
      I1 => clear_d(1),
      O => \dst_payload[140]_i_1_n_0\
    );
\dst_payload[141]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[141]\,
      I1 => clear_d(1),
      O => \dst_payload[141]_i_1_n_0\
    );
\dst_payload[142]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[142]\,
      I1 => clear_d(1),
      O => \dst_payload[142]_i_1_n_0\
    );
\dst_payload[143]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[143]\,
      I1 => clear_d(1),
      O => \dst_payload[143]_i_1_n_0\
    );
\dst_payload[144]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[144]\,
      I1 => clear_d(1),
      O => \dst_payload[144]_i_1_n_0\
    );
\dst_payload[145]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[145]\,
      I1 => clear_d(1),
      O => \dst_payload[145]_i_1_n_0\
    );
\dst_payload[146]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[146]\,
      I1 => clear_d(1),
      O => \dst_payload[146]_i_1_n_0\
    );
\dst_payload[147]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[147]\,
      I1 => clear_d(1),
      O => \dst_payload[147]_i_1_n_0\
    );
\dst_payload[148]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[148]\,
      I1 => clear_d(1),
      O => \dst_payload[148]_i_1_n_0\
    );
\dst_payload[149]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[149]\,
      I1 => clear_d(1),
      O => \dst_payload[149]_i_1_n_0\
    );
\dst_payload[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[14]\,
      I1 => clear_d(1),
      O => \dst_payload[14]_i_1_n_0\
    );
\dst_payload[150]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[150]\,
      I1 => clear_d(1),
      O => \dst_payload[150]_i_1_n_0\
    );
\dst_payload[151]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[151]\,
      I1 => clear_d(1),
      O => \dst_payload[151]_i_1_n_0\
    );
\dst_payload[152]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[152]\,
      I1 => clear_d(1),
      O => \dst_payload[152]_i_1_n_0\
    );
\dst_payload[153]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[153]\,
      I1 => clear_d(1),
      O => \dst_payload[153]_i_1_n_0\
    );
\dst_payload[154]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[154]\,
      I1 => clear_d(1),
      O => \dst_payload[154]_i_1_n_0\
    );
\dst_payload[155]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[155]\,
      I1 => clear_d(1),
      O => \dst_payload[155]_i_1_n_0\
    );
\dst_payload[156]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[156]\,
      I1 => clear_d(1),
      O => \dst_payload[156]_i_1_n_0\
    );
\dst_payload[157]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[157]\,
      I1 => clear_d(1),
      O => \dst_payload[157]_i_1_n_0\
    );
\dst_payload[158]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[158]\,
      I1 => clear_d(1),
      O => \dst_payload[158]_i_1_n_0\
    );
\dst_payload[159]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => dst_ready_reg_n_0,
      I1 => pending,
      I2 => frame_start,
      I3 => clear_ack,
      I4 => clear_d(1),
      O => \dst_payload[159]_i_1_n_0\
    );
\dst_payload[159]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[159]\,
      I1 => clear_d(1),
      O => \dst_payload[159]_i_2_n_0\
    );
\dst_payload[159]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dst_reset_pipe(1),
      O => \dst_payload[159]_i_3_n_0\
    );
\dst_payload[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[15]\,
      I1 => clear_d(1),
      O => \dst_payload[15]_i_1_n_0\
    );
\dst_payload[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[16]\,
      I1 => clear_d(1),
      O => \dst_payload[16]_i_1_n_0\
    );
\dst_payload[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[17]\,
      I1 => clear_d(1),
      O => \dst_payload[17]_i_1_n_0\
    );
\dst_payload[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[18]\,
      I1 => clear_d(1),
      O => \dst_payload[18]_i_1_n_0\
    );
\dst_payload[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[19]\,
      I1 => clear_d(1),
      O => \dst_payload[19]_i_1_n_0\
    );
\dst_payload[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[1]\,
      I1 => clear_d(1),
      O => \dst_payload[1]_i_1_n_0\
    );
\dst_payload[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[20]\,
      I1 => clear_d(1),
      O => \dst_payload[20]_i_1_n_0\
    );
\dst_payload[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[21]\,
      I1 => clear_d(1),
      O => \dst_payload[21]_i_1_n_0\
    );
\dst_payload[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[22]\,
      I1 => clear_d(1),
      O => \dst_payload[22]_i_1_n_0\
    );
\dst_payload[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[23]\,
      I1 => clear_d(1),
      O => \dst_payload[23]_i_1_n_0\
    );
\dst_payload[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[24]\,
      I1 => clear_d(1),
      O => \dst_payload[24]_i_1_n_0\
    );
\dst_payload[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[25]\,
      I1 => clear_d(1),
      O => \dst_payload[25]_i_1_n_0\
    );
\dst_payload[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[26]\,
      I1 => clear_d(1),
      O => \dst_payload[26]_i_1_n_0\
    );
\dst_payload[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[27]\,
      I1 => clear_d(1),
      O => \dst_payload[27]_i_1_n_0\
    );
\dst_payload[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[28]\,
      I1 => clear_d(1),
      O => \dst_payload[28]_i_1_n_0\
    );
\dst_payload[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[29]\,
      I1 => clear_d(1),
      O => \dst_payload[29]_i_1_n_0\
    );
\dst_payload[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[2]\,
      I1 => clear_d(1),
      O => \dst_payload[2]_i_1_n_0\
    );
\dst_payload[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[30]\,
      I1 => clear_d(1),
      O => \dst_payload[30]_i_1_n_0\
    );
\dst_payload[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[31]\,
      I1 => clear_d(1),
      O => \dst_payload[31]_i_1_n_0\
    );
\dst_payload[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[32]\,
      I1 => clear_d(1),
      O => \dst_payload[32]_i_1_n_0\
    );
\dst_payload[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[33]\,
      I1 => clear_d(1),
      O => \dst_payload[33]_i_1_n_0\
    );
\dst_payload[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[34]\,
      I1 => clear_d(1),
      O => \dst_payload[34]_i_1_n_0\
    );
\dst_payload[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[35]\,
      I1 => clear_d(1),
      O => \dst_payload[35]_i_1_n_0\
    );
\dst_payload[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[36]\,
      I1 => clear_d(1),
      O => \dst_payload[36]_i_1_n_0\
    );
\dst_payload[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[37]\,
      I1 => clear_d(1),
      O => \dst_payload[37]_i_1_n_0\
    );
\dst_payload[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[38]\,
      I1 => clear_d(1),
      O => \dst_payload[38]_i_1_n_0\
    );
\dst_payload[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[39]\,
      I1 => clear_d(1),
      O => \dst_payload[39]_i_1_n_0\
    );
\dst_payload[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[3]\,
      I1 => clear_d(1),
      O => \dst_payload[3]_i_1_n_0\
    );
\dst_payload[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[40]\,
      I1 => clear_d(1),
      O => \dst_payload[40]_i_1_n_0\
    );
\dst_payload[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[41]\,
      I1 => clear_d(1),
      O => \dst_payload[41]_i_1_n_0\
    );
\dst_payload[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[42]\,
      I1 => clear_d(1),
      O => \dst_payload[42]_i_1_n_0\
    );
\dst_payload[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[43]\,
      I1 => clear_d(1),
      O => \dst_payload[43]_i_1_n_0\
    );
\dst_payload[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[44]\,
      I1 => clear_d(1),
      O => \dst_payload[44]_i_1_n_0\
    );
\dst_payload[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[45]\,
      I1 => clear_d(1),
      O => \dst_payload[45]_i_1_n_0\
    );
\dst_payload[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[46]\,
      I1 => clear_d(1),
      O => \dst_payload[46]_i_1_n_0\
    );
\dst_payload[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[47]\,
      I1 => clear_d(1),
      O => \dst_payload[47]_i_1_n_0\
    );
\dst_payload[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[48]\,
      I1 => clear_d(1),
      O => \dst_payload[48]_i_1_n_0\
    );
\dst_payload[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[49]\,
      I1 => clear_d(1),
      O => \dst_payload[49]_i_1_n_0\
    );
\dst_payload[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[4]\,
      I1 => clear_d(1),
      O => \dst_payload[4]_i_1_n_0\
    );
\dst_payload[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[50]\,
      I1 => clear_d(1),
      O => \dst_payload[50]_i_1_n_0\
    );
\dst_payload[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[51]\,
      I1 => clear_d(1),
      O => \dst_payload[51]_i_1_n_0\
    );
\dst_payload[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[52]\,
      I1 => clear_d(1),
      O => \dst_payload[52]_i_1_n_0\
    );
\dst_payload[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[53]\,
      I1 => clear_d(1),
      O => \dst_payload[53]_i_1_n_0\
    );
\dst_payload[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[54]\,
      I1 => clear_d(1),
      O => \dst_payload[54]_i_1_n_0\
    );
\dst_payload[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[55]\,
      I1 => clear_d(1),
      O => \dst_payload[55]_i_1_n_0\
    );
\dst_payload[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[56]\,
      I1 => clear_d(1),
      O => \dst_payload[56]_i_1_n_0\
    );
\dst_payload[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[57]\,
      I1 => clear_d(1),
      O => \dst_payload[57]_i_1_n_0\
    );
\dst_payload[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[58]\,
      I1 => clear_d(1),
      O => \dst_payload[58]_i_1_n_0\
    );
\dst_payload[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[59]\,
      I1 => clear_d(1),
      O => \dst_payload[59]_i_1_n_0\
    );
\dst_payload[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[5]\,
      I1 => clear_d(1),
      O => \dst_payload[5]_i_1_n_0\
    );
\dst_payload[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[60]\,
      I1 => clear_d(1),
      O => \dst_payload[60]_i_1_n_0\
    );
\dst_payload[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[61]\,
      I1 => clear_d(1),
      O => \dst_payload[61]_i_1_n_0\
    );
\dst_payload[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[62]\,
      I1 => clear_d(1),
      O => \dst_payload[62]_i_1_n_0\
    );
\dst_payload[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[63]\,
      I1 => clear_d(1),
      O => \dst_payload[63]_i_1_n_0\
    );
\dst_payload[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[64]\,
      I1 => clear_d(1),
      O => \dst_payload[64]_i_1_n_0\
    );
\dst_payload[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[65]\,
      I1 => clear_d(1),
      O => \dst_payload[65]_i_1_n_0\
    );
\dst_payload[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[66]\,
      I1 => clear_d(1),
      O => \dst_payload[66]_i_1_n_0\
    );
\dst_payload[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[67]\,
      I1 => clear_d(1),
      O => \dst_payload[67]_i_1_n_0\
    );
\dst_payload[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[68]\,
      I1 => clear_d(1),
      O => \dst_payload[68]_i_1_n_0\
    );
\dst_payload[69]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[69]\,
      I1 => clear_d(1),
      O => \dst_payload[69]_i_1_n_0\
    );
\dst_payload[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[6]\,
      I1 => clear_d(1),
      O => \dst_payload[6]_i_1_n_0\
    );
\dst_payload[70]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[70]\,
      I1 => clear_d(1),
      O => \dst_payload[70]_i_1_n_0\
    );
\dst_payload[71]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[71]\,
      I1 => clear_d(1),
      O => \dst_payload[71]_i_1_n_0\
    );
\dst_payload[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[72]\,
      I1 => clear_d(1),
      O => \dst_payload[72]_i_1_n_0\
    );
\dst_payload[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[73]\,
      I1 => clear_d(1),
      O => \dst_payload[73]_i_1_n_0\
    );
\dst_payload[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[74]\,
      I1 => clear_d(1),
      O => \dst_payload[74]_i_1_n_0\
    );
\dst_payload[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[75]\,
      I1 => clear_d(1),
      O => \dst_payload[75]_i_1_n_0\
    );
\dst_payload[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[76]\,
      I1 => clear_d(1),
      O => \dst_payload[76]_i_1_n_0\
    );
\dst_payload[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[77]\,
      I1 => clear_d(1),
      O => \dst_payload[77]_i_1_n_0\
    );
\dst_payload[78]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[78]\,
      I1 => clear_d(1),
      O => \dst_payload[78]_i_1_n_0\
    );
\dst_payload[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[79]\,
      I1 => clear_d(1),
      O => \dst_payload[79]_i_1_n_0\
    );
\dst_payload[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[7]\,
      I1 => clear_d(1),
      O => \dst_payload[7]_i_1_n_0\
    );
\dst_payload[80]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[80]\,
      I1 => clear_d(1),
      O => \dst_payload[80]_i_1_n_0\
    );
\dst_payload[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[81]\,
      I1 => clear_d(1),
      O => \dst_payload[81]_i_1_n_0\
    );
\dst_payload[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[82]\,
      I1 => clear_d(1),
      O => \dst_payload[82]_i_1_n_0\
    );
\dst_payload[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[83]\,
      I1 => clear_d(1),
      O => \dst_payload[83]_i_1_n_0\
    );
\dst_payload[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[84]\,
      I1 => clear_d(1),
      O => \dst_payload[84]_i_1_n_0\
    );
\dst_payload[85]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[85]\,
      I1 => clear_d(1),
      O => \dst_payload[85]_i_1_n_0\
    );
\dst_payload[86]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[86]\,
      I1 => clear_d(1),
      O => \dst_payload[86]_i_1_n_0\
    );
\dst_payload[87]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[87]\,
      I1 => clear_d(1),
      O => \dst_payload[87]_i_1_n_0\
    );
\dst_payload[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[88]\,
      I1 => clear_d(1),
      O => \dst_payload[88]_i_1_n_0\
    );
\dst_payload[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[89]\,
      I1 => clear_d(1),
      O => \dst_payload[89]_i_1_n_0\
    );
\dst_payload[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[8]\,
      I1 => clear_d(1),
      O => \dst_payload[8]_i_1_n_0\
    );
\dst_payload[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[90]\,
      I1 => clear_d(1),
      O => \dst_payload[90]_i_1_n_0\
    );
\dst_payload[91]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[91]\,
      I1 => clear_d(1),
      O => \dst_payload[91]_i_1_n_0\
    );
\dst_payload[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[92]\,
      I1 => clear_d(1),
      O => \dst_payload[92]_i_1_n_0\
    );
\dst_payload[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[93]\,
      I1 => clear_d(1),
      O => \dst_payload[93]_i_1_n_0\
    );
\dst_payload[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[94]\,
      I1 => clear_d(1),
      O => \dst_payload[94]_i_1_n_0\
    );
\dst_payload[95]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[95]\,
      I1 => clear_d(1),
      O => \dst_payload[95]_i_1_n_0\
    );
\dst_payload[96]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[96]\,
      I1 => clear_d(1),
      O => \dst_payload[96]_i_1_n_0\
    );
\dst_payload[97]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[97]\,
      I1 => clear_d(1),
      O => \dst_payload[97]_i_1_n_0\
    );
\dst_payload[98]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[98]\,
      I1 => clear_d(1),
      O => \dst_payload[98]_i_1_n_0\
    );
\dst_payload[99]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[99]\,
      I1 => clear_d(1),
      O => \dst_payload[99]_i_1_n_0\
    );
\dst_payload[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pending_payload_reg_n_0_[9]\,
      I1 => clear_d(1),
      O => \dst_payload[9]_i_1_n_0\
    );
\dst_payload_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[0]_i_1_n_0\,
      Q => applied_payload(0)
    );
\dst_payload_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[100]_i_1_n_0\,
      Q => applied_payload(100)
    );
\dst_payload_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[101]_i_1_n_0\,
      Q => applied_payload(101)
    );
\dst_payload_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[102]_i_1_n_0\,
      Q => applied_payload(102)
    );
\dst_payload_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[103]_i_1_n_0\,
      Q => applied_payload(103)
    );
\dst_payload_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[104]_i_1_n_0\,
      Q => applied_payload(104)
    );
\dst_payload_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[105]_i_1_n_0\,
      Q => applied_payload(105)
    );
\dst_payload_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[106]_i_1_n_0\,
      Q => applied_payload(106)
    );
\dst_payload_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[107]_i_1_n_0\,
      Q => applied_payload(107)
    );
\dst_payload_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[108]_i_1_n_0\,
      Q => applied_payload(108)
    );
\dst_payload_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[109]_i_1_n_0\,
      Q => applied_payload(109)
    );
\dst_payload_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[10]_i_1_n_0\,
      Q => applied_payload(10)
    );
\dst_payload_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[110]_i_1_n_0\,
      Q => applied_payload(110)
    );
\dst_payload_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[111]_i_1_n_0\,
      Q => applied_payload(111)
    );
\dst_payload_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[112]_i_1_n_0\,
      Q => applied_payload(112)
    );
\dst_payload_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[113]_i_1_n_0\,
      Q => applied_payload(113)
    );
\dst_payload_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[114]_i_1_n_0\,
      Q => applied_payload(114)
    );
\dst_payload_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[115]_i_1_n_0\,
      Q => applied_payload(115)
    );
\dst_payload_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[116]_i_1_n_0\,
      Q => applied_payload(116)
    );
\dst_payload_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[117]_i_1_n_0\,
      Q => applied_payload(117)
    );
\dst_payload_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[118]_i_1_n_0\,
      Q => applied_payload(118)
    );
\dst_payload_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[119]_i_1_n_0\,
      Q => applied_payload(119)
    );
\dst_payload_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[11]_i_1_n_0\,
      Q => applied_payload(11)
    );
\dst_payload_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[120]_i_1_n_0\,
      Q => applied_payload(120)
    );
\dst_payload_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[121]_i_1_n_0\,
      Q => applied_payload(121)
    );
\dst_payload_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[122]_i_1_n_0\,
      Q => applied_payload(122)
    );
\dst_payload_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[123]_i_1_n_0\,
      Q => applied_payload(123)
    );
\dst_payload_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[124]_i_1_n_0\,
      Q => applied_payload(124)
    );
\dst_payload_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[125]_i_1_n_0\,
      Q => applied_payload(125)
    );
\dst_payload_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[126]_i_1_n_0\,
      Q => applied_payload(126)
    );
\dst_payload_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[127]_i_1_n_0\,
      Q => applied_payload(127)
    );
\dst_payload_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[128]_i_1_n_0\,
      Q => applied_payload(128)
    );
\dst_payload_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[129]_i_1_n_0\,
      Q => applied_payload(129)
    );
\dst_payload_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[12]_i_1_n_0\,
      Q => applied_payload(12)
    );
\dst_payload_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[130]_i_1_n_0\,
      Q => applied_payload(130)
    );
\dst_payload_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[131]_i_1_n_0\,
      Q => applied_payload(131)
    );
\dst_payload_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[132]_i_1_n_0\,
      Q => applied_payload(132)
    );
\dst_payload_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[133]_i_1_n_0\,
      Q => applied_payload(133)
    );
\dst_payload_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[134]_i_1_n_0\,
      Q => applied_payload(134)
    );
\dst_payload_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[135]_i_1_n_0\,
      Q => applied_payload(135)
    );
\dst_payload_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[136]_i_1_n_0\,
      Q => applied_payload(136)
    );
\dst_payload_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[137]_i_1_n_0\,
      Q => applied_payload(137)
    );
\dst_payload_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[138]_i_1_n_0\,
      Q => applied_payload(138)
    );
\dst_payload_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[139]_i_1_n_0\,
      Q => applied_payload(139)
    );
\dst_payload_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[13]_i_1_n_0\,
      Q => applied_payload(13)
    );
\dst_payload_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[140]_i_1_n_0\,
      Q => applied_payload(140)
    );
\dst_payload_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[141]_i_1_n_0\,
      Q => applied_payload(141)
    );
\dst_payload_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[142]_i_1_n_0\,
      Q => applied_payload(142)
    );
\dst_payload_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[143]_i_1_n_0\,
      Q => applied_payload(143)
    );
\dst_payload_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[144]_i_1_n_0\,
      Q => applied_payload(144)
    );
\dst_payload_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[145]_i_1_n_0\,
      Q => applied_payload(145)
    );
\dst_payload_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[146]_i_1_n_0\,
      Q => applied_payload(146)
    );
\dst_payload_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[147]_i_1_n_0\,
      Q => applied_payload(147)
    );
\dst_payload_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[148]_i_1_n_0\,
      Q => applied_payload(148)
    );
\dst_payload_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[149]_i_1_n_0\,
      Q => applied_payload(149)
    );
\dst_payload_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[14]_i_1_n_0\,
      Q => applied_payload(14)
    );
\dst_payload_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[150]_i_1_n_0\,
      Q => applied_payload(150)
    );
\dst_payload_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[151]_i_1_n_0\,
      Q => applied_payload(151)
    );
\dst_payload_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[152]_i_1_n_0\,
      Q => applied_payload(152)
    );
\dst_payload_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[153]_i_1_n_0\,
      Q => applied_payload(153)
    );
\dst_payload_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[154]_i_1_n_0\,
      Q => applied_payload(154)
    );
\dst_payload_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[155]_i_1_n_0\,
      Q => applied_payload(155)
    );
\dst_payload_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[156]_i_1_n_0\,
      Q => applied_payload(156)
    );
\dst_payload_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[157]_i_1_n_0\,
      Q => applied_payload(157)
    );
\dst_payload_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[158]_i_1_n_0\,
      Q => applied_payload(158)
    );
\dst_payload_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[159]_i_2_n_0\,
      Q => applied_payload(159)
    );
\dst_payload_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[15]_i_1_n_0\,
      Q => applied_payload(15)
    );
\dst_payload_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[16]_i_1_n_0\,
      Q => applied_payload(16)
    );
\dst_payload_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[17]_i_1_n_0\,
      Q => applied_payload(17)
    );
\dst_payload_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[18]_i_1_n_0\,
      Q => applied_payload(18)
    );
\dst_payload_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[19]_i_1_n_0\,
      Q => applied_payload(19)
    );
\dst_payload_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[1]_i_1_n_0\,
      Q => applied_payload(1)
    );
\dst_payload_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[20]_i_1_n_0\,
      Q => applied_payload(20)
    );
\dst_payload_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[21]_i_1_n_0\,
      Q => applied_payload(21)
    );
\dst_payload_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[22]_i_1_n_0\,
      Q => applied_payload(22)
    );
\dst_payload_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[23]_i_1_n_0\,
      Q => applied_payload(23)
    );
\dst_payload_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[24]_i_1_n_0\,
      Q => applied_payload(24)
    );
\dst_payload_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[25]_i_1_n_0\,
      Q => applied_payload(25)
    );
\dst_payload_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \dst_payload[26]_i_1_n_0\,
      Q => applied_payload(26)
    );
\dst_payload_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[27]_i_1_n_0\,
      Q => applied_payload(27)
    );
\dst_payload_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[28]_i_1_n_0\,
      Q => applied_payload(28)
    );
\dst_payload_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[29]_i_1_n_0\,
      Q => applied_payload(29)
    );
\dst_payload_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[2]_i_1_n_0\,
      Q => applied_payload(2)
    );
\dst_payload_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[30]_i_1_n_0\,
      Q => applied_payload(30)
    );
\dst_payload_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[31]_i_1_n_0\,
      Q => applied_payload(31)
    );
\dst_payload_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[32]_i_1_n_0\,
      Q => \^q\(0)
    );
\dst_payload_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[33]_i_1_n_0\,
      Q => \^q\(1)
    );
\dst_payload_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[34]_i_1_n_0\,
      Q => \^q\(2)
    );
\dst_payload_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[35]_i_1_n_0\,
      Q => \^q\(3)
    );
\dst_payload_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[36]_i_1_n_0\,
      Q => \^q\(4)
    );
\dst_payload_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[37]_i_1_n_0\,
      Q => applied_payload(37)
    );
\dst_payload_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[38]_i_1_n_0\,
      Q => applied_payload(38)
    );
\dst_payload_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[39]_i_1_n_0\,
      Q => applied_payload(39)
    );
\dst_payload_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[3]_i_1_n_0\,
      Q => applied_payload(3)
    );
\dst_payload_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[40]_i_1_n_0\,
      Q => applied_payload(40)
    );
\dst_payload_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[41]_i_1_n_0\,
      Q => applied_payload(41)
    );
\dst_payload_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[42]_i_1_n_0\,
      Q => applied_payload(42)
    );
\dst_payload_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[43]_i_1_n_0\,
      Q => applied_payload(43)
    );
\dst_payload_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[44]_i_1_n_0\,
      Q => applied_payload(44)
    );
\dst_payload_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[45]_i_1_n_0\,
      Q => applied_payload(45)
    );
\dst_payload_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[46]_i_1_n_0\,
      Q => applied_payload(46)
    );
\dst_payload_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[47]_i_1_n_0\,
      Q => applied_payload(47)
    );
\dst_payload_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[48]_i_1_n_0\,
      Q => applied_payload(48)
    );
\dst_payload_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[49]_i_1_n_0\,
      Q => applied_payload(49)
    );
\dst_payload_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[4]_i_1_n_0\,
      Q => applied_payload(4)
    );
\dst_payload_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[50]_i_1_n_0\,
      Q => applied_payload(50)
    );
\dst_payload_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[51]_i_1_n_0\,
      Q => applied_payload(51)
    );
\dst_payload_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[52]_i_1_n_0\,
      Q => applied_payload(52)
    );
\dst_payload_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[53]_i_1_n_0\,
      Q => applied_payload(53)
    );
\dst_payload_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[54]_i_1_n_0\,
      Q => applied_payload(54)
    );
\dst_payload_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[55]_i_1_n_0\,
      Q => applied_payload(55)
    );
\dst_payload_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[56]_i_1_n_0\,
      Q => applied_payload(56)
    );
\dst_payload_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[57]_i_1_n_0\,
      Q => applied_payload(57)
    );
\dst_payload_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[58]_i_1_n_0\,
      Q => applied_payload(58)
    );
\dst_payload_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[59]_i_1_n_0\,
      Q => applied_payload(59)
    );
\dst_payload_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[5]_i_1_n_0\,
      Q => applied_payload(5)
    );
\dst_payload_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[60]_i_1_n_0\,
      Q => applied_payload(60)
    );
\dst_payload_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[61]_i_1_n_0\,
      Q => applied_payload(61)
    );
\dst_payload_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[62]_i_1_n_0\,
      Q => applied_payload(62)
    );
\dst_payload_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[63]_i_1_n_0\,
      Q => applied_payload(63)
    );
\dst_payload_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[64]_i_1_n_0\,
      Q => \^q\(5)
    );
\dst_payload_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[65]_i_1_n_0\,
      Q => \^q\(6)
    );
\dst_payload_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[66]_i_1_n_0\,
      Q => \^q\(7)
    );
\dst_payload_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[67]_i_1_n_0\,
      Q => \^q\(8)
    );
\dst_payload_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[68]_i_1_n_0\,
      Q => applied_payload(68)
    );
\dst_payload_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[69]_i_1_n_0\,
      Q => applied_payload(69)
    );
\dst_payload_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[6]_i_1_n_0\,
      Q => applied_payload(6)
    );
\dst_payload_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[70]_i_1_n_0\,
      Q => applied_payload(70)
    );
\dst_payload_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[71]_i_1_n_0\,
      Q => applied_payload(71)
    );
\dst_payload_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[72]_i_1_n_0\,
      Q => \^q\(9)
    );
\dst_payload_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[73]_i_1_n_0\,
      Q => applied_payload(73)
    );
\dst_payload_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[74]_i_1_n_0\,
      Q => applied_payload(74)
    );
\dst_payload_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[75]_i_1_n_0\,
      Q => applied_payload(75)
    );
\dst_payload_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[76]_i_1_n_0\,
      Q => applied_payload(76)
    );
\dst_payload_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[77]_i_1_n_0\,
      Q => applied_payload(77)
    );
\dst_payload_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[78]_i_1_n_0\,
      Q => applied_payload(78)
    );
\dst_payload_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[79]_i_1_n_0\,
      Q => applied_payload(79)
    );
\dst_payload_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[7]_i_1_n_0\,
      Q => applied_payload(7)
    );
\dst_payload_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[80]_i_1_n_0\,
      Q => applied_payload(80)
    );
\dst_payload_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[81]_i_1_n_0\,
      Q => applied_payload(81)
    );
\dst_payload_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[82]_i_1_n_0\,
      Q => applied_payload(82)
    );
\dst_payload_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \dst_payload[83]_i_1_n_0\,
      Q => applied_payload(83)
    );
\dst_payload_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[84]_i_1_n_0\,
      Q => applied_payload(84)
    );
\dst_payload_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[85]_i_1_n_0\,
      Q => applied_payload(85)
    );
\dst_payload_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[86]_i_1_n_0\,
      Q => applied_payload(86)
    );
\dst_payload_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[87]_i_1_n_0\,
      Q => applied_payload(87)
    );
\dst_payload_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[88]_i_1_n_0\,
      Q => applied_payload(88)
    );
\dst_payload_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => \dst_payload[89]_i_1_n_0\,
      Q => applied_payload(89)
    );
\dst_payload_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[8]_i_1_n_0\,
      Q => applied_payload(8)
    );
\dst_payload_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[90]_i_1_n_0\,
      Q => applied_payload(90)
    );
\dst_payload_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[91]_i_1_n_0\,
      Q => applied_payload(91)
    );
\dst_payload_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[92]_i_1_n_0\,
      Q => applied_payload(92)
    );
\dst_payload_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[93]_i_1_n_0\,
      Q => applied_payload(93)
    );
\dst_payload_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[94]_i_1_n_0\,
      Q => applied_payload(94)
    );
\dst_payload_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[95]_i_1_n_0\,
      Q => applied_payload(95)
    );
\dst_payload_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[96]_i_1_n_0\,
      Q => applied_payload(96)
    );
\dst_payload_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[97]_i_1_n_0\,
      Q => applied_payload(97)
    );
\dst_payload_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[98]_i_1_n_0\,
      Q => applied_payload(98)
    );
\dst_payload_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[99]_i_1_n_0\,
      Q => applied_payload(99)
    );
\dst_payload_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \dst_payload[159]_i_1_n_0\,
      CLR => \dst_payload[159]_i_3_n_0\,
      D => \dst_payload[9]_i_1_n_0\,
      Q => applied_payload(9)
    );
dst_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F04"
    )
        port map (
      I0 => req_d(1),
      I1 => clear_ack,
      I2 => clear_d(1),
      I3 => dst_ready_reg_n_0,
      O => dst_ready_i_1_n_0
    );
dst_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \pending_payload[63]_i_1_n_0\,
      D => dst_ready_i_1_n_0,
      Q => dst_ready_reg_n_0
    );
\dst_reset_pipe_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \src_reset_pipe[1]_i_1_n_0\,
      D => '1',
      Q => dst_reset_pipe(0)
    );
\dst_reset_pipe_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \src_reset_pipe[1]_i_1_n_0\,
      D => dst_reset_pipe(0),
      Q => dst_reset_pipe(1)
    );
\expire_ack_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \pending_payload[63]_i_1_n_0\,
      D => expire_ack,
      Q => expire_ack_d(0)
    );
\expire_ack_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \pending_payload[63]_i_1_n_0\,
      D => expire_ack_d(0),
      Q => expire_ack_d(1)
    );
expire_ack_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_reset_event_i_1_n_0,
      D => expire_s(1),
      Q => expire_ack
    );
expire_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00800000"
    )
        port map (
      I0 => expire_req_i_2_n_0,
      I1 => dst_box_valid0,
      I2 => mailbox_box_valid,
      I3 => expire_ack_d(1),
      I4 => expire_req_i_3_n_0,
      I5 => expire_req_reg_n_0,
      O => expire_req_i_1_n_0
    );
expire_req_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pending,
      I1 => clear_d(1),
      O => expire_req_i_2_n_0
    );
expire_req_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => clear_ack,
      I1 => dst_ready_reg_n_0,
      I2 => frame_start,
      O => expire_req_i_3_n_0
    );
expire_req_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \pending_payload[63]_i_1_n_0\,
      D => expire_req_i_1_n_0,
      Q => expire_req_reg_n_0
    );
\expire_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_reset_event_i_1_n_0,
      D => expire_req_reg_n_0,
      Q => expire_s(0)
    );
\expire_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_reset_event_i_1_n_0,
      D => expire_s(0),
      Q => expire_s(1)
    );
expired_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => expire_ack,
      I1 => expire_s(1),
      O => expired0
    );
expired_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_reset_event_i_1_n_0,
      D => expired0,
      Q => box_expired
    );
\held_payload[159]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => ready_s(1),
      I1 => box_send,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => state136_out,
      O => \held_payload[159]_i_1_n_0\
    );
\held_payload_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(0),
      Q => held_payload(0)
    );
\held_payload_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(100),
      Q => held_payload(100)
    );
\held_payload_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(101),
      Q => held_payload(101)
    );
\held_payload_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(102),
      Q => held_payload(102)
    );
\held_payload_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(103),
      Q => held_payload(103)
    );
\held_payload_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(104),
      Q => held_payload(104)
    );
\held_payload_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(105),
      Q => held_payload(105)
    );
\held_payload_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(106),
      Q => held_payload(106)
    );
\held_payload_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(107),
      Q => held_payload(107)
    );
\held_payload_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(108),
      Q => held_payload(108)
    );
\held_payload_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(109),
      Q => held_payload(109)
    );
\held_payload_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(10),
      Q => held_payload(10)
    );
\held_payload_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(110),
      Q => held_payload(110)
    );
\held_payload_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(111),
      Q => held_payload(111)
    );
\held_payload_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(112),
      Q => held_payload(112)
    );
\held_payload_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(113),
      Q => held_payload(113)
    );
\held_payload_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(114),
      Q => held_payload(114)
    );
\held_payload_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(115),
      Q => held_payload(115)
    );
\held_payload_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(116),
      Q => held_payload(116)
    );
\held_payload_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(117),
      Q => held_payload(117)
    );
\held_payload_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(118),
      Q => held_payload(118)
    );
\held_payload_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(119),
      Q => held_payload(119)
    );
\held_payload_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(11),
      Q => held_payload(11)
    );
\held_payload_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(120),
      Q => held_payload(120)
    );
\held_payload_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(121),
      Q => held_payload(121)
    );
\held_payload_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(122),
      Q => held_payload(122)
    );
\held_payload_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(123),
      Q => held_payload(123)
    );
\held_payload_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(124),
      Q => held_payload(124)
    );
\held_payload_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(125),
      Q => held_payload(125)
    );
\held_payload_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(126),
      Q => held_payload(126)
    );
\held_payload_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(127),
      Q => held_payload(127)
    );
\held_payload_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(128),
      Q => held_payload(128)
    );
\held_payload_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(129),
      Q => held_payload(129)
    );
\held_payload_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(12),
      Q => held_payload(12)
    );
\held_payload_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(130),
      Q => held_payload(130)
    );
\held_payload_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(131),
      Q => held_payload(131)
    );
\held_payload_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(132),
      Q => held_payload(132)
    );
\held_payload_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(133),
      Q => held_payload(133)
    );
\held_payload_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(134),
      Q => held_payload(134)
    );
\held_payload_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(135),
      Q => held_payload(135)
    );
\held_payload_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(136),
      Q => held_payload(136)
    );
\held_payload_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(137),
      Q => held_payload(137)
    );
\held_payload_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(138),
      Q => held_payload(138)
    );
\held_payload_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(139),
      Q => held_payload(139)
    );
\held_payload_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(13),
      Q => held_payload(13)
    );
\held_payload_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(140),
      Q => held_payload(140)
    );
\held_payload_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(141),
      Q => held_payload(141)
    );
\held_payload_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(142),
      Q => held_payload(142)
    );
\held_payload_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(143),
      Q => held_payload(143)
    );
\held_payload_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(144),
      Q => held_payload(144)
    );
\held_payload_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(145),
      Q => held_payload(145)
    );
\held_payload_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(146),
      Q => held_payload(146)
    );
\held_payload_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(147),
      Q => held_payload(147)
    );
\held_payload_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(148),
      Q => held_payload(148)
    );
\held_payload_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(149),
      Q => held_payload(149)
    );
\held_payload_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(14),
      Q => held_payload(14)
    );
\held_payload_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(150),
      Q => held_payload(150)
    );
\held_payload_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(151),
      Q => held_payload(151)
    );
\held_payload_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(152),
      Q => held_payload(152)
    );
\held_payload_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(153),
      Q => held_payload(153)
    );
\held_payload_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(154),
      Q => held_payload(154)
    );
\held_payload_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(155),
      Q => held_payload(155)
    );
\held_payload_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(156),
      Q => held_payload(156)
    );
\held_payload_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(157),
      Q => held_payload(157)
    );
\held_payload_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(158),
      Q => held_payload(158)
    );
\held_payload_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(159),
      Q => held_payload(159)
    );
\held_payload_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(15),
      Q => held_payload(15)
    );
\held_payload_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(16),
      Q => held_payload(16)
    );
\held_payload_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(17),
      Q => held_payload(17)
    );
\held_payload_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(18),
      Q => held_payload(18)
    );
\held_payload_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(19),
      Q => held_payload(19)
    );
\held_payload_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(1),
      Q => held_payload(1)
    );
\held_payload_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(20),
      Q => held_payload(20)
    );
\held_payload_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(21),
      Q => held_payload(21)
    );
\held_payload_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(22),
      Q => held_payload(22)
    );
\held_payload_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(23),
      Q => held_payload(23)
    );
\held_payload_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(24),
      Q => held_payload(24)
    );
\held_payload_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(25),
      Q => held_payload(25)
    );
\held_payload_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(26),
      Q => held_payload(26)
    );
\held_payload_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(27),
      Q => held_payload(27)
    );
\held_payload_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(28),
      Q => held_payload(28)
    );
\held_payload_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(29),
      Q => held_payload(29)
    );
\held_payload_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(2),
      Q => held_payload(2)
    );
\held_payload_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(30),
      Q => held_payload(30)
    );
\held_payload_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(31),
      Q => held_payload(31)
    );
\held_payload_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(32),
      Q => held_payload(32)
    );
\held_payload_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(33),
      Q => held_payload(33)
    );
\held_payload_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(34),
      Q => held_payload(34)
    );
\held_payload_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(35),
      Q => held_payload(35)
    );
\held_payload_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(36),
      Q => held_payload(36)
    );
\held_payload_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(37),
      Q => held_payload(37)
    );
\held_payload_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(38),
      Q => held_payload(38)
    );
\held_payload_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(39),
      Q => held_payload(39)
    );
\held_payload_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(3),
      Q => held_payload(3)
    );
\held_payload_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(40),
      Q => held_payload(40)
    );
\held_payload_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(41),
      Q => held_payload(41)
    );
\held_payload_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(42),
      Q => held_payload(42)
    );
\held_payload_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(43),
      Q => held_payload(43)
    );
\held_payload_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(44),
      Q => held_payload(44)
    );
\held_payload_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(45),
      Q => held_payload(45)
    );
\held_payload_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(46),
      Q => held_payload(46)
    );
\held_payload_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(47),
      Q => held_payload(47)
    );
\held_payload_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(48),
      Q => held_payload(48)
    );
\held_payload_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(49),
      Q => held_payload(49)
    );
\held_payload_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(4),
      Q => held_payload(4)
    );
\held_payload_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(50),
      Q => held_payload(50)
    );
\held_payload_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(51),
      Q => held_payload(51)
    );
\held_payload_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(52),
      Q => held_payload(52)
    );
\held_payload_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(53),
      Q => held_payload(53)
    );
\held_payload_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(54),
      Q => held_payload(54)
    );
\held_payload_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(55),
      Q => held_payload(55)
    );
\held_payload_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(56),
      Q => held_payload(56)
    );
\held_payload_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(57),
      Q => held_payload(57)
    );
\held_payload_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(58),
      Q => held_payload(58)
    );
\held_payload_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(59),
      Q => held_payload(59)
    );
\held_payload_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(5),
      Q => held_payload(5)
    );
\held_payload_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(60),
      Q => held_payload(60)
    );
\held_payload_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(61),
      Q => held_payload(61)
    );
\held_payload_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(62),
      Q => held_payload(62)
    );
\held_payload_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(63),
      Q => held_payload(63)
    );
\held_payload_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(64),
      Q => held_payload(64)
    );
\held_payload_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(65),
      Q => held_payload(65)
    );
\held_payload_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(66),
      Q => held_payload(66)
    );
\held_payload_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(67),
      Q => held_payload(67)
    );
\held_payload_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(68),
      Q => held_payload(68)
    );
\held_payload_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(69),
      Q => held_payload(69)
    );
\held_payload_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(6),
      Q => held_payload(6)
    );
\held_payload_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(70),
      Q => held_payload(70)
    );
\held_payload_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(71),
      Q => held_payload(71)
    );
\held_payload_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(72),
      Q => held_payload(72)
    );
\held_payload_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(73),
      Q => held_payload(73)
    );
\held_payload_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(74),
      Q => held_payload(74)
    );
\held_payload_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(75),
      Q => held_payload(75)
    );
\held_payload_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(76),
      Q => held_payload(76)
    );
\held_payload_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(77),
      Q => held_payload(77)
    );
\held_payload_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(78),
      Q => held_payload(78)
    );
\held_payload_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(79),
      Q => held_payload(79)
    );
\held_payload_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(7),
      Q => held_payload(7)
    );
\held_payload_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(80),
      Q => held_payload(80)
    );
\held_payload_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(81),
      Q => held_payload(81)
    );
\held_payload_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(82),
      Q => held_payload(82)
    );
\held_payload_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(83),
      Q => held_payload(83)
    );
\held_payload_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(84),
      Q => held_payload(84)
    );
\held_payload_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(85),
      Q => held_payload(85)
    );
\held_payload_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(86),
      Q => held_payload(86)
    );
\held_payload_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(87),
      Q => held_payload(87)
    );
\held_payload_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(88),
      Q => held_payload(88)
    );
\held_payload_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(89),
      Q => held_payload(89)
    );
\held_payload_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(8),
      Q => held_payload(8)
    );
\held_payload_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(90),
      Q => held_payload(90)
    );
\held_payload_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(91),
      Q => held_payload(91)
    );
\held_payload_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(92),
      Q => held_payload(92)
    );
\held_payload_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(93),
      Q => held_payload(93)
    );
\held_payload_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(94),
      Q => held_payload(94)
    );
\held_payload_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(95),
      Q => held_payload(95)
    );
\held_payload_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(96),
      Q => held_payload(96)
    );
\held_payload_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(97),
      Q => held_payload(97)
    );
\held_payload_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(98),
      Q => held_payload(98)
    );
\held_payload_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_reset_event_i_1_n_0,
      D => box_payload(99),
      Q => held_payload(99)
    );
\held_payload_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \held_payload[159]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => box_payload(9),
      Q => held_payload(9)
    );
pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0FFFF00C60000"
    )
        port map (
      I0 => ack_reg_n_0,
      I1 => req_d(1),
      I2 => clear_ack,
      I3 => clear_d(1),
      I4 => pending_i_2_n_0,
      I5 => pending,
      O => pending_i_1_n_0
    );
pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55065500"
    )
        port map (
      I0 => req_d(1),
      I1 => ack_reg_n_0,
      I2 => pending,
      I3 => clear_ack,
      I4 => dst_ready_reg_n_0,
      I5 => \dst_payload[159]_i_1_n_0\,
      O => pending_i_2_n_0
    );
\pending_payload[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dst_reset_pipe(1),
      O => \pending_payload[63]_i_1_n_0\
    );
\pending_payload_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(0),
      Q => \pending_payload_reg_n_0_[0]\
    );
\pending_payload_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(100),
      Q => \pending_payload_reg_n_0_[100]\
    );
\pending_payload_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(101),
      Q => \pending_payload_reg_n_0_[101]\
    );
\pending_payload_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(102),
      Q => \pending_payload_reg_n_0_[102]\
    );
\pending_payload_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(103),
      Q => \pending_payload_reg_n_0_[103]\
    );
\pending_payload_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(104),
      Q => \pending_payload_reg_n_0_[104]\
    );
\pending_payload_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(105),
      Q => \pending_payload_reg_n_0_[105]\
    );
\pending_payload_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(106),
      Q => \pending_payload_reg_n_0_[106]\
    );
\pending_payload_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(107),
      Q => \pending_payload_reg_n_0_[107]\
    );
\pending_payload_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(108),
      Q => \pending_payload_reg_n_0_[108]\
    );
\pending_payload_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(109),
      Q => \pending_payload_reg_n_0_[109]\
    );
\pending_payload_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(10),
      Q => \pending_payload_reg_n_0_[10]\
    );
\pending_payload_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(110),
      Q => \pending_payload_reg_n_0_[110]\
    );
\pending_payload_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(111),
      Q => \pending_payload_reg_n_0_[111]\
    );
\pending_payload_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(112),
      Q => \pending_payload_reg_n_0_[112]\
    );
\pending_payload_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(113),
      Q => \pending_payload_reg_n_0_[113]\
    );
\pending_payload_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(114),
      Q => \pending_payload_reg_n_0_[114]\
    );
\pending_payload_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(115),
      Q => \pending_payload_reg_n_0_[115]\
    );
\pending_payload_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(116),
      Q => \pending_payload_reg_n_0_[116]\
    );
\pending_payload_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(117),
      Q => \pending_payload_reg_n_0_[117]\
    );
\pending_payload_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(118),
      Q => \pending_payload_reg_n_0_[118]\
    );
\pending_payload_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(119),
      Q => \pending_payload_reg_n_0_[119]\
    );
\pending_payload_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(11),
      Q => \pending_payload_reg_n_0_[11]\
    );
\pending_payload_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(120),
      Q => \pending_payload_reg_n_0_[120]\
    );
\pending_payload_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(121),
      Q => \pending_payload_reg_n_0_[121]\
    );
\pending_payload_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(122),
      Q => \pending_payload_reg_n_0_[122]\
    );
\pending_payload_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(123),
      Q => \pending_payload_reg_n_0_[123]\
    );
\pending_payload_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(124),
      Q => \pending_payload_reg_n_0_[124]\
    );
\pending_payload_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(125),
      Q => \pending_payload_reg_n_0_[125]\
    );
\pending_payload_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(126),
      Q => \pending_payload_reg_n_0_[126]\
    );
\pending_payload_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(127),
      Q => \pending_payload_reg_n_0_[127]\
    );
\pending_payload_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(128),
      Q => \pending_payload_reg_n_0_[128]\
    );
\pending_payload_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(129),
      Q => \pending_payload_reg_n_0_[129]\
    );
\pending_payload_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(12),
      Q => \pending_payload_reg_n_0_[12]\
    );
\pending_payload_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(130),
      Q => \pending_payload_reg_n_0_[130]\
    );
\pending_payload_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(131),
      Q => \pending_payload_reg_n_0_[131]\
    );
\pending_payload_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(132),
      Q => \pending_payload_reg_n_0_[132]\
    );
\pending_payload_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(133),
      Q => \pending_payload_reg_n_0_[133]\
    );
\pending_payload_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(134),
      Q => \pending_payload_reg_n_0_[134]\
    );
\pending_payload_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(135),
      Q => \pending_payload_reg_n_0_[135]\
    );
\pending_payload_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(136),
      Q => \pending_payload_reg_n_0_[136]\
    );
\pending_payload_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(137),
      Q => \pending_payload_reg_n_0_[137]\
    );
\pending_payload_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(138),
      Q => \pending_payload_reg_n_0_[138]\
    );
\pending_payload_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(139),
      Q => \pending_payload_reg_n_0_[139]\
    );
\pending_payload_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(13),
      Q => \pending_payload_reg_n_0_[13]\
    );
\pending_payload_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(140),
      Q => \pending_payload_reg_n_0_[140]\
    );
\pending_payload_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(141),
      Q => \pending_payload_reg_n_0_[141]\
    );
\pending_payload_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(142),
      Q => \pending_payload_reg_n_0_[142]\
    );
\pending_payload_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(143),
      Q => \pending_payload_reg_n_0_[143]\
    );
\pending_payload_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(144),
      Q => \pending_payload_reg_n_0_[144]\
    );
\pending_payload_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(145),
      Q => \pending_payload_reg_n_0_[145]\
    );
\pending_payload_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(146),
      Q => \pending_payload_reg_n_0_[146]\
    );
\pending_payload_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(147),
      Q => \pending_payload_reg_n_0_[147]\
    );
\pending_payload_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(148),
      Q => \pending_payload_reg_n_0_[148]\
    );
\pending_payload_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(149),
      Q => \pending_payload_reg_n_0_[149]\
    );
\pending_payload_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(14),
      Q => \pending_payload_reg_n_0_[14]\
    );
\pending_payload_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(150),
      Q => \pending_payload_reg_n_0_[150]\
    );
\pending_payload_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(151),
      Q => \pending_payload_reg_n_0_[151]\
    );
\pending_payload_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(152),
      Q => \pending_payload_reg_n_0_[152]\
    );
\pending_payload_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(153),
      Q => \pending_payload_reg_n_0_[153]\
    );
\pending_payload_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(154),
      Q => \pending_payload_reg_n_0_[154]\
    );
\pending_payload_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(155),
      Q => \pending_payload_reg_n_0_[155]\
    );
\pending_payload_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(156),
      Q => \pending_payload_reg_n_0_[156]\
    );
\pending_payload_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(157),
      Q => \pending_payload_reg_n_0_[157]\
    );
\pending_payload_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(158),
      Q => \pending_payload_reg_n_0_[158]\
    );
\pending_payload_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(159),
      Q => \pending_payload_reg_n_0_[159]\
    );
\pending_payload_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(15),
      Q => \pending_payload_reg_n_0_[15]\
    );
\pending_payload_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(16),
      Q => \pending_payload_reg_n_0_[16]\
    );
\pending_payload_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(17),
      Q => \pending_payload_reg_n_0_[17]\
    );
\pending_payload_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(18),
      Q => \pending_payload_reg_n_0_[18]\
    );
\pending_payload_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(19),
      Q => \pending_payload_reg_n_0_[19]\
    );
\pending_payload_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(1),
      Q => \pending_payload_reg_n_0_[1]\
    );
\pending_payload_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(20),
      Q => \pending_payload_reg_n_0_[20]\
    );
\pending_payload_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(21),
      Q => \pending_payload_reg_n_0_[21]\
    );
\pending_payload_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(22),
      Q => \pending_payload_reg_n_0_[22]\
    );
\pending_payload_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(23),
      Q => \pending_payload_reg_n_0_[23]\
    );
\pending_payload_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(24),
      Q => \pending_payload_reg_n_0_[24]\
    );
\pending_payload_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(25),
      Q => \pending_payload_reg_n_0_[25]\
    );
\pending_payload_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(26),
      Q => \pending_payload_reg_n_0_[26]\
    );
\pending_payload_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(27),
      Q => \pending_payload_reg_n_0_[27]\
    );
\pending_payload_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(28),
      Q => \pending_payload_reg_n_0_[28]\
    );
\pending_payload_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(29),
      Q => \pending_payload_reg_n_0_[29]\
    );
\pending_payload_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(2),
      Q => \pending_payload_reg_n_0_[2]\
    );
\pending_payload_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(30),
      Q => \pending_payload_reg_n_0_[30]\
    );
\pending_payload_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(31),
      Q => \pending_payload_reg_n_0_[31]\
    );
\pending_payload_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(32),
      Q => \pending_payload_reg_n_0_[32]\
    );
\pending_payload_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(33),
      Q => \pending_payload_reg_n_0_[33]\
    );
\pending_payload_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(34),
      Q => \pending_payload_reg_n_0_[34]\
    );
\pending_payload_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(35),
      Q => \pending_payload_reg_n_0_[35]\
    );
\pending_payload_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(36),
      Q => \pending_payload_reg_n_0_[36]\
    );
\pending_payload_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(37),
      Q => \pending_payload_reg_n_0_[37]\
    );
\pending_payload_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(38),
      Q => \pending_payload_reg_n_0_[38]\
    );
\pending_payload_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(39),
      Q => \pending_payload_reg_n_0_[39]\
    );
\pending_payload_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(3),
      Q => \pending_payload_reg_n_0_[3]\
    );
\pending_payload_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(40),
      Q => \pending_payload_reg_n_0_[40]\
    );
\pending_payload_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(41),
      Q => \pending_payload_reg_n_0_[41]\
    );
\pending_payload_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(42),
      Q => \pending_payload_reg_n_0_[42]\
    );
\pending_payload_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(43),
      Q => \pending_payload_reg_n_0_[43]\
    );
\pending_payload_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(44),
      Q => \pending_payload_reg_n_0_[44]\
    );
\pending_payload_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(45),
      Q => \pending_payload_reg_n_0_[45]\
    );
\pending_payload_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(46),
      Q => \pending_payload_reg_n_0_[46]\
    );
\pending_payload_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(47),
      Q => \pending_payload_reg_n_0_[47]\
    );
\pending_payload_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(48),
      Q => \pending_payload_reg_n_0_[48]\
    );
\pending_payload_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(49),
      Q => \pending_payload_reg_n_0_[49]\
    );
\pending_payload_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(4),
      Q => \pending_payload_reg_n_0_[4]\
    );
\pending_payload_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(50),
      Q => \pending_payload_reg_n_0_[50]\
    );
\pending_payload_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(51),
      Q => \pending_payload_reg_n_0_[51]\
    );
\pending_payload_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(52),
      Q => \pending_payload_reg_n_0_[52]\
    );
\pending_payload_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(53),
      Q => \pending_payload_reg_n_0_[53]\
    );
\pending_payload_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(54),
      Q => \pending_payload_reg_n_0_[54]\
    );
\pending_payload_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(55),
      Q => \pending_payload_reg_n_0_[55]\
    );
\pending_payload_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(56),
      Q => \pending_payload_reg_n_0_[56]\
    );
\pending_payload_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(57),
      Q => \pending_payload_reg_n_0_[57]\
    );
\pending_payload_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(58),
      Q => \pending_payload_reg_n_0_[58]\
    );
\pending_payload_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(59),
      Q => \pending_payload_reg_n_0_[59]\
    );
\pending_payload_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(5),
      Q => \pending_payload_reg_n_0_[5]\
    );
\pending_payload_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(60),
      Q => \pending_payload_reg_n_0_[60]\
    );
\pending_payload_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(61),
      Q => \pending_payload_reg_n_0_[61]\
    );
\pending_payload_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(62),
      Q => \pending_payload_reg_n_0_[62]\
    );
\pending_payload_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(63),
      Q => \pending_payload_reg_n_0_[63]\
    );
\pending_payload_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(64),
      Q => \pending_payload_reg_n_0_[64]\
    );
\pending_payload_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(65),
      Q => \pending_payload_reg_n_0_[65]\
    );
\pending_payload_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(66),
      Q => \pending_payload_reg_n_0_[66]\
    );
\pending_payload_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(67),
      Q => \pending_payload_reg_n_0_[67]\
    );
\pending_payload_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(68),
      Q => \pending_payload_reg_n_0_[68]\
    );
\pending_payload_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(69),
      Q => \pending_payload_reg_n_0_[69]\
    );
\pending_payload_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(6),
      Q => \pending_payload_reg_n_0_[6]\
    );
\pending_payload_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(70),
      Q => \pending_payload_reg_n_0_[70]\
    );
\pending_payload_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(71),
      Q => \pending_payload_reg_n_0_[71]\
    );
\pending_payload_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(72),
      Q => \pending_payload_reg_n_0_[72]\
    );
\pending_payload_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(73),
      Q => \pending_payload_reg_n_0_[73]\
    );
\pending_payload_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(74),
      Q => \pending_payload_reg_n_0_[74]\
    );
\pending_payload_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(75),
      Q => \pending_payload_reg_n_0_[75]\
    );
\pending_payload_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(76),
      Q => \pending_payload_reg_n_0_[76]\
    );
\pending_payload_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(77),
      Q => \pending_payload_reg_n_0_[77]\
    );
\pending_payload_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(78),
      Q => \pending_payload_reg_n_0_[78]\
    );
\pending_payload_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(79),
      Q => \pending_payload_reg_n_0_[79]\
    );
\pending_payload_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(7),
      Q => \pending_payload_reg_n_0_[7]\
    );
\pending_payload_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(80),
      Q => \pending_payload_reg_n_0_[80]\
    );
\pending_payload_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(81),
      Q => \pending_payload_reg_n_0_[81]\
    );
\pending_payload_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(82),
      Q => \pending_payload_reg_n_0_[82]\
    );
\pending_payload_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(83),
      Q => \pending_payload_reg_n_0_[83]\
    );
\pending_payload_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(84),
      Q => \pending_payload_reg_n_0_[84]\
    );
\pending_payload_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(85),
      Q => \pending_payload_reg_n_0_[85]\
    );
\pending_payload_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(86),
      Q => \pending_payload_reg_n_0_[86]\
    );
\pending_payload_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(87),
      Q => \pending_payload_reg_n_0_[87]\
    );
\pending_payload_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(88),
      Q => \pending_payload_reg_n_0_[88]\
    );
\pending_payload_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(89),
      Q => \pending_payload_reg_n_0_[89]\
    );
\pending_payload_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(8),
      Q => \pending_payload_reg_n_0_[8]\
    );
\pending_payload_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(90),
      Q => \pending_payload_reg_n_0_[90]\
    );
\pending_payload_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(91),
      Q => \pending_payload_reg_n_0_[91]\
    );
\pending_payload_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(92),
      Q => \pending_payload_reg_n_0_[92]\
    );
\pending_payload_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(93),
      Q => \pending_payload_reg_n_0_[93]\
    );
\pending_payload_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(94),
      Q => \pending_payload_reg_n_0_[94]\
    );
\pending_payload_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(95),
      Q => \pending_payload_reg_n_0_[95]\
    );
\pending_payload_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(96),
      Q => \pending_payload_reg_n_0_[96]\
    );
\pending_payload_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(97),
      Q => \pending_payload_reg_n_0_[97]\
    );
\pending_payload_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(98),
      Q => \pending_payload_reg_n_0_[98]\
    );
\pending_payload_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => held_payload(99),
      Q => \pending_payload_reg_n_0_[99]\
    );
\pending_payload_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \pending_payload[63]_i_1_n_0\,
      D => held_payload(9),
      Q => \pending_payload_reg_n_0_[9]\
    );
pending_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \req_d[1]_i_1_n_0\,
      D => pending_i_1_n_0,
      Q => pending
    );
pending_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000100000"
    )
        port map (
      I0 => pending,
      I1 => clear_d(1),
      I2 => dst_ready_reg_n_0,
      I3 => clear_ack,
      I4 => req_d(1),
      I5 => ack_reg_n_0,
      O => pending_req
    );
pending_req_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => pending_req,
      CLR => \req_d[1]_i_1_n_0\,
      D => req_d(1),
      Q => pending_req_reg_n_0
    );
\ready_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => dst_ready_reg_n_0,
      Q => ready_s(0)
    );
\ready_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => ready_s(0),
      Q => ready_s(1)
    );
\req_d[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dst_reset_pipe(1),
      O => \req_d[1]_i_1_n_0\
    );
\req_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \req_d[1]_i_1_n_0\,
      D => req,
      Q => req_d(0)
    );
\req_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \req_d[1]_i_1_n_0\,
      D => req_d(0),
      Q => req_d(1)
    );
req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF300000008"
    )
        port map (
      I0 => \state__0\(1),
      I1 => req_i_2_n_0,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => state136_out,
      I5 => req,
      O => req_i_1_n_0
    );
req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => box_send,
      I1 => ready_s(1),
      I2 => \state__0\(1),
      I3 => clear_ack_s(1),
      I4 => box_invalidate,
      O => req_i_2_n_0
    );
req_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => req_i_1_n_0,
      Q => req
    );
reset_notice_pending_reg: unisim.vcomponents.FDPE
     port map (
      C => box_src_clk,
      CE => '1',
      D => '0',
      PRE => src_reset_event_i_1_n_0,
      Q => reset_notice_pending
    );
\rgb_o[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(2),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[10]\
    );
\rgb_o[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(3),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[11]\
    );
\rgb_o[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(4),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[12]\
    );
\rgb_o[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(5),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[13]\
    );
\rgb_o[20]_i_100\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(42),
      I1 => applied_payload(44),
      I2 => applied_payload(93),
      I3 => applied_payload(60),
      O => \rgb_o[20]_i_100_n_0\
    );
\rgb_o[20]_i_101\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(20),
      I1 => applied_payload(29),
      I2 => applied_payload(30),
      I3 => applied_payload(55),
      I4 => \rgb_o[20]_i_231_n_0\,
      O => \rgb_o[20]_i_101_n_0\
    );
\rgb_o[20]_i_102\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => applied_payload(83),
      I1 => applied_payload(26),
      I2 => mailbox_box_valid,
      I3 => applied_payload(89),
      O => \rgb_o[20]_i_102_n_0\
    );
\rgb_o[20]_i_104\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(10),
      I1 => applied_payload(17),
      I2 => applied_payload(18),
      I3 => applied_payload(24),
      I4 => \rgb_o[20]_i_241_n_0\,
      O => \rgb_o[20]_i_104_n_0\
    );
\rgb_o[20]_i_105\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(14),
      I1 => applied_payload(12),
      I2 => applied_payload(13),
      I3 => applied_payload(7),
      O => \rgb_o[20]_i_105_n_0\
    );
\rgb_o[20]_i_106\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => applied_payload(70),
      I1 => applied_payload(69),
      I2 => applied_payload(71),
      I3 => applied_payload(68),
      I4 => \rgb_o[20]_i_242_n_0\,
      O => \rgb_o[20]_i_106_n_0\
    );
\rgb_o[20]_i_107\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E38AA208"
    )
        port map (
      I0 => active_y(6),
      I1 => \rgb_o[20]_i_243_n_0\,
      I2 => applied_payload(69),
      I3 => applied_payload(70),
      I4 => active_y(5),
      O => \rgb_o[20]_i_107_n_0\
    );
\rgb_o[20]_i_108\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2ABC02A8"
    )
        port map (
      I0 => active_y(4),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => applied_payload(68),
      I4 => active_y(3),
      O => \rgb_o[20]_i_108_n_0\
    );
\rgb_o[20]_i_109\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88E8"
    )
        port map (
      I0 => \^q\(7),
      I1 => active_y(2),
      I2 => active_y(1),
      I3 => \^q\(6),
      O => \rgb_o[20]_i_109_n_0\
    );
\rgb_o[20]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \rgb_o[20]_i_33_n_0\,
      I1 => \rgb_o[20]_i_34_n_0\,
      I2 => \rgb_o[20]_i_35_n_0\,
      I3 => \rgb_o[20]_i_36_n_0\,
      I4 => \rgb_o[20]_i_37_n_0\,
      I5 => \rgb_o[20]_i_38_n_0\,
      O => \rgb_o[20]_i_11_n_0\
    );
\rgb_o[20]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA95556"
    )
        port map (
      I0 => applied_payload(69),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => applied_payload(68),
      I4 => active_y(5),
      I5 => \rgb_o[20]_i_244_n_0\,
      O => \rgb_o[20]_i_111_n_0\
    );
\rgb_o[20]_i_112\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => active_y(3),
      I1 => applied_payload(68),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => active_y(4),
      O => \rgb_o[20]_i_112_n_0\
    );
\rgb_o[20]_i_113\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^q\(6),
      I1 => active_y(1),
      I2 => active_y(2),
      I3 => \^q\(7),
      O => \rgb_o[20]_i_113_n_0\
    );
\rgb_o[20]_i_115\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => applied_payload(68),
      I3 => applied_payload(69),
      O => \rgb_o[20]_i_115_n_0\
    );
\rgb_o[20]_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222ABBBC0002AAA8"
    )
        port map (
      I0 => active_x(6),
      I1 => applied_payload(37),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => applied_payload(38),
      I5 => active_x(5),
      O => DI(0)
    );
\rgb_o[20]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \rgb_o[20]_i_39_n_0\,
      I1 => \rgb_o[20]_i_40_n_0\,
      I2 => \rgb_o[20]_i_41_n_0\,
      I3 => \rgb_o[20]_i_42_n_0\,
      O => \rgb_o[20]_i_12_n_0\
    );
\rgb_o[20]_i_120\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8884444222211118"
    )
        port map (
      I0 => active_x(5),
      I1 => applied_payload(38),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => applied_payload(37),
      I5 => active_x(6),
      O => S(1)
    );
\rgb_o[20]_i_122\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => active_x(1),
      I2 => \^q\(2),
      I3 => active_x(2),
      O => S(0)
    );
\rgb_o[20]_i_124\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => applied_payload(39),
      I1 => applied_payload(40),
      I2 => applied_payload(38),
      I3 => applied_payload(37),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \^left\(0)
    );
\rgb_o[20]_i_125\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => applied_payload(37),
      I3 => applied_payload(38),
      O => \rgb_o[20]_i_125_n_0\
    );
\rgb_o[20]_i_126\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => applied_payload(131),
      O => \rgb_o[20]_i_126_n_0\
    );
\rgb_o[20]_i_127\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => applied_payload(130),
      O => \rgb_o[20]_i_127_n_0\
    );
\rgb_o[20]_i_128\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => applied_payload(129),
      O => \rgb_o[20]_i_128_n_0\
    );
\rgb_o[20]_i_129\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => applied_payload(128),
      O => \rgb_o[20]_i_129_n_0\
    );
\rgb_o[20]_i_130\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(71),
      I1 => applied_payload(135),
      O => \rgb_o[20]_i_130_n_0\
    );
\rgb_o[20]_i_131\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(70),
      I1 => applied_payload(134),
      O => \rgb_o[20]_i_131_n_0\
    );
\rgb_o[20]_i_132\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(69),
      I1 => applied_payload(133),
      O => \rgb_o[20]_i_132_n_0\
    );
\rgb_o[20]_i_133\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(68),
      I1 => applied_payload(132),
      O => \rgb_o[20]_i_133_n_0\
    );
\rgb_o[20]_i_136\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A2"
    )
        port map (
      I0 => active_x(8),
      I1 => applied_payload(39),
      I2 => \rgb_o[20]_i_125_n_0\,
      I3 => applied_payload(40),
      O => \rgb_o[20]_i_136_n_0\
    );
\rgb_o[20]_i_137\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => active_x(7),
      I1 => applied_payload(38),
      I2 => applied_payload(37),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => applied_payload(39),
      O => \rgb_o[20]_i_137_n_0\
    );
\rgb_o[20]_i_138\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^left\(0),
      I1 => active_x(9),
      O => \rgb_o[20]_i_138_n_0\
    );
\rgb_o[20]_i_139\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A42F5BD"
    )
        port map (
      I0 => active_x(8),
      I1 => applied_payload(39),
      I2 => applied_payload(40),
      I3 => \rgb_o[20]_i_125_n_0\,
      I4 => active_x(9),
      O => \rgb_o[20]_i_139_n_0\
    );
\rgb_o[20]_i_140\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C96C3693"
    )
        port map (
      I0 => active_x(7),
      I1 => applied_payload(40),
      I2 => \rgb_o[20]_i_125_n_0\,
      I3 => applied_payload(39),
      I4 => active_x(8),
      O => \rgb_o[20]_i_140_n_0\
    );
\rgb_o[20]_i_144\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(2),
      I1 => active_x(2),
      I2 => active_x(3),
      I3 => \^q\(3),
      O => \dst_payload_reg[34]_0\(2)
    );
\rgb_o[20]_i_145\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(1),
      I1 => active_x(1),
      I2 => \^q\(2),
      I3 => active_x(2),
      O => \dst_payload_reg[34]_0\(1)
    );
\rgb_o[20]_i_146\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => active_x(0),
      I2 => \^q\(1),
      I3 => active_x(1),
      O => \dst_payload_reg[34]_0\(0)
    );
\rgb_o[20]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => applied_payload(70),
      I1 => applied_payload(71),
      I2 => applied_payload(68),
      I3 => applied_payload(69),
      O => \rgb_o[20]_i_15_n_0\
    );
\rgb_o[20]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => applied_payload(103),
      I1 => applied_payload(102),
      I2 => applied_payload(97),
      I3 => applied_payload(98),
      I4 => applied_payload(101),
      I5 => applied_payload(104),
      O => \rgb_o[20]_i_17_n_0\
    );
\rgb_o[20]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => applied_payload(132),
      I1 => applied_payload(131),
      I2 => applied_payload(128),
      I3 => applied_payload(136),
      I4 => applied_payload(129),
      I5 => applied_payload(133),
      O => \rgb_o[20]_i_18_n_0\
    );
\rgb_o[20]_i_183\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => active_y(6),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => applied_payload(68),
      I4 => applied_payload(69),
      I5 => applied_payload(70),
      O => \rgb_o[20]_i_183_n_0\
    );
\rgb_o[20]_i_184\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAA8"
    )
        port map (
      I0 => active_y(5),
      I1 => applied_payload(68),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => applied_payload(69),
      O => \rgb_o[20]_i_184_n_0\
    );
\rgb_o[20]_i_185\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => applied_payload(68),
      I3 => active_y(4),
      O => \rgb_o[20]_i_185_n_0\
    );
\rgb_o[20]_i_186\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => active_y(3),
      O => \rgb_o[20]_i_186_n_0\
    );
\rgb_o[20]_i_187\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C96C3693"
    )
        port map (
      I0 => active_y(6),
      I1 => applied_payload(71),
      I2 => \rgb_o[20]_i_115_n_0\,
      I3 => applied_payload(70),
      I4 => active_y(7),
      O => \rgb_o[20]_i_187_n_0\
    );
\rgb_o[20]_i_188\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55560000AAA9FFFF"
    )
        port map (
      I0 => applied_payload(69),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => applied_payload(68),
      I4 => active_y(5),
      I5 => \rgb_o[20]_i_244_n_0\,
      O => \rgb_o[20]_i_188_n_0\
    );
\rgb_o[20]_i_189\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC666633339999C"
    )
        port map (
      I0 => active_y(4),
      I1 => applied_payload(69),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => applied_payload(68),
      I5 => active_y(5),
      O => \rgb_o[20]_i_189_n_0\
    );
\rgb_o[20]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => applied_payload(134),
      I1 => applied_payload(135),
      I2 => applied_payload(130),
      O => \rgb_o[20]_i_19_n_0\
    );
\rgb_o[20]_i_190\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C663399C"
    )
        port map (
      I0 => active_y(3),
      I1 => applied_payload(68),
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => active_y(4),
      O => \rgb_o[20]_i_190_n_0\
    );
\rgb_o[20]_i_191\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AA2A"
    )
        port map (
      I0 => active_y(8),
      I1 => applied_payload(70),
      I2 => applied_payload(71),
      I3 => \rgb_o[20]_i_115_n_0\,
      I4 => \^q\(9),
      O => \rgb_o[20]_i_191_n_0\
    );
\rgb_o[20]_i_192\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A2"
    )
        port map (
      I0 => active_y(7),
      I1 => applied_payload(70),
      I2 => \rgb_o[20]_i_115_n_0\,
      I3 => applied_payload(71),
      O => \rgb_o[20]_i_192_n_0\
    );
\rgb_o[20]_i_193\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF55D5"
    )
        port map (
      I0 => active_y(8),
      I1 => applied_payload(70),
      I2 => applied_payload(71),
      I3 => \rgb_o[20]_i_115_n_0\,
      I4 => \^q\(9),
      O => \rgb_o[20]_i_193_n_0\
    );
\rgb_o[20]_i_194\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C96CCC6636933399"
    )
        port map (
      I0 => active_y(7),
      I1 => \^q\(9),
      I2 => \rgb_o[20]_i_115_n_0\,
      I3 => applied_payload(71),
      I4 => applied_payload(70),
      I5 => active_y(8),
      O => \rgb_o[20]_i_194_n_0\
    );
\rgb_o[20]_i_195\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => active_y(2),
      O => \dst_payload_reg[66]_0\(0)
    );
\rgb_o[20]_i_199\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(6),
      I1 => active_y(1),
      I2 => active_y(2),
      I3 => \^q\(7),
      O => \dst_payload_reg[65]_0\(1)
    );
\rgb_o[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \rgb_o_reg[8]\,
      I1 => \rgb_o[20]_i_3_n_0\,
      I2 => \rgb_o[20]_i_4_n_0\,
      I3 => \rgb_o[20]_i_5_n_0\,
      I4 => \rgb_o[20]_i_6_n_0\,
      I5 => rst_n,
      O => rst_n_0
    );
\rgb_o[20]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_56_n_7\,
      I1 => O(1),
      I2 => \rgb_o_reg[20]_i_56_n_5\,
      I3 => O(0),
      I4 => \rgb_o[20]_i_6_0\,
      I5 => \rgb_o[20]_i_59_n_0\,
      O => \rgb_o[20]_i_20_n_0\
    );
\rgb_o[20]_i_200\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(5),
      I1 => active_y(0),
      I2 => \^q\(6),
      I3 => active_y(1),
      O => \dst_payload_reg[65]_0\(0)
    );
\rgb_o[20]_i_216\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(141),
      I1 => applied_payload(140),
      I2 => applied_payload(143),
      I3 => applied_payload(142),
      O => \rgb_o[20]_i_216_n_0\
    );
\rgb_o[20]_i_217\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(158),
      I1 => applied_payload(157),
      I2 => applied_payload(159),
      I3 => applied_payload(156),
      O => \rgb_o[20]_i_217_n_0\
    );
\rgb_o[20]_i_218\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(51),
      I1 => applied_payload(62),
      I2 => applied_payload(27),
      I3 => applied_payload(5),
      O => \rgb_o[20]_i_218_n_0\
    );
\rgb_o[20]_i_219\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(127),
      I1 => applied_payload(124),
      I2 => applied_payload(126),
      I3 => applied_payload(125),
      O => \rgb_o[20]_i_219_n_0\
    );
\rgb_o[20]_i_220\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(103),
      I1 => applied_payload(100),
      I2 => applied_payload(102),
      I3 => applied_payload(101),
      O => \rgb_o[20]_i_220_n_0\
    );
\rgb_o[20]_i_222\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(31),
      I1 => applied_payload(127),
      I2 => legal_box2(30),
      I3 => applied_payload(126),
      O => \rgb_o[20]_i_222_n_0\
    );
\rgb_o[20]_i_223\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(29),
      I1 => applied_payload(125),
      I2 => legal_box2(28),
      I3 => applied_payload(124),
      O => \rgb_o[20]_i_223_n_0\
    );
\rgb_o[20]_i_224\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(27),
      I1 => applied_payload(123),
      I2 => legal_box2(26),
      I3 => applied_payload(122),
      O => \rgb_o[20]_i_224_n_0\
    );
\rgb_o[20]_i_225\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(25),
      I1 => applied_payload(121),
      I2 => legal_box2(24),
      I3 => applied_payload(120),
      O => \rgb_o[20]_i_225_n_0\
    );
\rgb_o[20]_i_226\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(127),
      I1 => legal_box2(31),
      I2 => applied_payload(126),
      I3 => legal_box2(30),
      O => \rgb_o[20]_i_226_n_0\
    );
\rgb_o[20]_i_227\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(125),
      I1 => legal_box2(29),
      I2 => applied_payload(124),
      I3 => legal_box2(28),
      O => \rgb_o[20]_i_227_n_0\
    );
\rgb_o[20]_i_228\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(123),
      I1 => legal_box2(27),
      I2 => applied_payload(122),
      I3 => legal_box2(26),
      O => \rgb_o[20]_i_228_n_0\
    );
\rgb_o[20]_i_229\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(121),
      I1 => legal_box2(25),
      I2 => applied_payload(120),
      I3 => legal_box2(24),
      O => \rgb_o[20]_i_229_n_0\
    );
\rgb_o[20]_i_230\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(85),
      I1 => applied_payload(88),
      I2 => applied_payload(86),
      I3 => applied_payload(91),
      O => \rgb_o[20]_i_230_n_0\
    );
\rgb_o[20]_i_231\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => applied_payload(0),
      I1 => applied_payload(87),
      I2 => applied_payload(43),
      I3 => applied_payload(46),
      O => \rgb_o[20]_i_231_n_0\
    );
\rgb_o[20]_i_233\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(31),
      I1 => applied_payload(159),
      I2 => legal_box1(30),
      I3 => applied_payload(158),
      O => \rgb_o[20]_i_233_n_0\
    );
\rgb_o[20]_i_234\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(29),
      I1 => applied_payload(157),
      I2 => legal_box1(28),
      I3 => applied_payload(156),
      O => \rgb_o[20]_i_234_n_0\
    );
\rgb_o[20]_i_235\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(27),
      I1 => applied_payload(155),
      I2 => legal_box1(26),
      I3 => applied_payload(154),
      O => \rgb_o[20]_i_235_n_0\
    );
\rgb_o[20]_i_236\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(25),
      I1 => applied_payload(153),
      I2 => legal_box1(24),
      I3 => applied_payload(152),
      O => \rgb_o[20]_i_236_n_0\
    );
\rgb_o[20]_i_237\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(159),
      I1 => legal_box1(31),
      I2 => applied_payload(158),
      I3 => legal_box1(30),
      O => \rgb_o[20]_i_237_n_0\
    );
\rgb_o[20]_i_238\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(157),
      I1 => legal_box1(29),
      I2 => applied_payload(156),
      I3 => legal_box1(28),
      O => \rgb_o[20]_i_238_n_0\
    );
\rgb_o[20]_i_239\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(155),
      I1 => legal_box1(27),
      I2 => applied_payload(154),
      I3 => legal_box1(26),
      O => \rgb_o[20]_i_239_n_0\
    );
\rgb_o[20]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(40),
      I1 => applied_payload(104),
      O => \rgb_o[20]_i_24_n_0\
    );
\rgb_o[20]_i_240\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(153),
      I1 => legal_box1(25),
      I2 => applied_payload(152),
      I3 => legal_box1(24),
      O => \rgb_o[20]_i_240_n_0\
    );
\rgb_o[20]_i_241\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(47),
      I1 => applied_payload(31),
      I2 => applied_payload(16),
      I3 => applied_payload(15),
      O => \rgb_o[20]_i_241_n_0\
    );
\rgb_o[20]_i_242\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(95),
      I1 => applied_payload(48),
      I2 => applied_payload(75),
      I3 => applied_payload(49),
      O => \rgb_o[20]_i_242_n_0\
    );
\rgb_o[20]_i_243\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => applied_payload(68),
      I1 => \^q\(8),
      I2 => \^q\(7),
      O => \rgb_o[20]_i_243_n_0\
    );
\rgb_o[20]_i_244\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA955555556"
    )
        port map (
      I0 => active_y(6),
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => applied_payload(68),
      I4 => applied_payload(69),
      I5 => applied_payload(70),
      O => \rgb_o[20]_i_244_n_0\
    );
\rgb_o[20]_i_245\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FE0000"
    )
        port map (
      I0 => applied_payload(37),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => applied_payload(38),
      I4 => active_x(6),
      O => \rgb_o[20]_i_245_n_0\
    );
\rgb_o[20]_i_246\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => applied_payload(37),
      I3 => active_x(5),
      O => \rgb_o[20]_i_246_n_0\
    );
\rgb_o[20]_i_247\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => active_x(4),
      O => \rgb_o[20]_i_247_n_0\
    );
\rgb_o[20]_i_248\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => active_x(3),
      O => \rgb_o[20]_i_248_n_0\
    );
\rgb_o[20]_i_249\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3339999CCCC66663"
    )
        port map (
      I0 => active_x(6),
      I1 => applied_payload(39),
      I2 => \rgb_o[20]_i_294_n_0\,
      I3 => applied_payload(37),
      I4 => applied_payload(38),
      I5 => active_x(7),
      O => \rgb_o[20]_i_249_n_0\
    );
\rgb_o[20]_i_250\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC666633339999C"
    )
        port map (
      I0 => active_x(5),
      I1 => applied_payload(38),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => applied_payload(37),
      I5 => active_x(6),
      O => \rgb_o[20]_i_250_n_0\
    );
\rgb_o[20]_i_251\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C663399C"
    )
        port map (
      I0 => active_x(4),
      I1 => applied_payload(37),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => active_x(5),
      O => \rgb_o[20]_i_251_n_0\
    );
\rgb_o[20]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(39),
      I1 => applied_payload(103),
      O => \rgb_o[20]_i_26_n_0\
    );
\rgb_o[20]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(38),
      I1 => applied_payload(102),
      O => \rgb_o[20]_i_27_n_0\
    );
\rgb_o[20]_i_271\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(23),
      I1 => applied_payload(119),
      I2 => legal_box2(22),
      I3 => applied_payload(118),
      O => \rgb_o[20]_i_271_n_0\
    );
\rgb_o[20]_i_272\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(21),
      I1 => applied_payload(117),
      I2 => legal_box2(20),
      I3 => applied_payload(116),
      O => \rgb_o[20]_i_272_n_0\
    );
\rgb_o[20]_i_273\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(19),
      I1 => applied_payload(115),
      I2 => legal_box2(18),
      I3 => applied_payload(114),
      O => \rgb_o[20]_i_273_n_0\
    );
\rgb_o[20]_i_274\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(17),
      I1 => applied_payload(113),
      I2 => legal_box2(16),
      I3 => applied_payload(112),
      O => \rgb_o[20]_i_274_n_0\
    );
\rgb_o[20]_i_275\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(119),
      I1 => legal_box2(23),
      I2 => applied_payload(118),
      I3 => legal_box2(22),
      O => \rgb_o[20]_i_275_n_0\
    );
\rgb_o[20]_i_276\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(117),
      I1 => legal_box2(21),
      I2 => applied_payload(116),
      I3 => legal_box2(20),
      O => \rgb_o[20]_i_276_n_0\
    );
\rgb_o[20]_i_277\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(115),
      I1 => legal_box2(19),
      I2 => applied_payload(114),
      I3 => legal_box2(18),
      O => \rgb_o[20]_i_277_n_0\
    );
\rgb_o[20]_i_278\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(113),
      I1 => legal_box2(17),
      I2 => applied_payload(112),
      I3 => legal_box2(16),
      O => \rgb_o[20]_i_278_n_0\
    );
\rgb_o[20]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => applied_payload(37),
      I1 => applied_payload(101),
      O => \rgb_o[20]_i_28_n_0\
    );
\rgb_o[20]_i_283\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(23),
      I1 => applied_payload(151),
      I2 => legal_box1(22),
      I3 => applied_payload(150),
      O => \rgb_o[20]_i_283_n_0\
    );
\rgb_o[20]_i_284\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(21),
      I1 => applied_payload(149),
      I2 => legal_box1(20),
      I3 => applied_payload(148),
      O => \rgb_o[20]_i_284_n_0\
    );
\rgb_o[20]_i_285\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(19),
      I1 => applied_payload(147),
      I2 => legal_box1(18),
      I3 => applied_payload(146),
      O => \rgb_o[20]_i_285_n_0\
    );
\rgb_o[20]_i_286\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(17),
      I1 => applied_payload(145),
      I2 => legal_box1(16),
      I3 => applied_payload(144),
      O => \rgb_o[20]_i_286_n_0\
    );
\rgb_o[20]_i_287\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(151),
      I1 => legal_box1(23),
      I2 => applied_payload(150),
      I3 => legal_box1(22),
      O => \rgb_o[20]_i_287_n_0\
    );
\rgb_o[20]_i_288\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(149),
      I1 => legal_box1(21),
      I2 => applied_payload(148),
      I3 => legal_box1(20),
      O => \rgb_o[20]_i_288_n_0\
    );
\rgb_o[20]_i_289\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(147),
      I1 => legal_box1(19),
      I2 => applied_payload(146),
      I3 => legal_box1(18),
      O => \rgb_o[20]_i_289_n_0\
    );
\rgb_o[20]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => applied_payload(100),
      O => \rgb_o[20]_i_29_n_0\
    );
\rgb_o[20]_i_290\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(145),
      I1 => legal_box1(17),
      I2 => applied_payload(144),
      I3 => legal_box1(16),
      O => \rgb_o[20]_i_290_n_0\
    );
\rgb_o[20]_i_294\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \rgb_o[20]_i_294_n_0\
    );
\rgb_o[20]_i_296\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(15),
      I1 => applied_payload(111),
      I2 => legal_box2(14),
      I3 => applied_payload(110),
      O => \rgb_o[20]_i_296_n_0\
    );
\rgb_o[20]_i_297\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(13),
      I1 => applied_payload(109),
      I2 => legal_box2(12),
      I3 => applied_payload(108),
      O => \rgb_o[20]_i_297_n_0\
    );
\rgb_o[20]_i_298\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(11),
      I1 => applied_payload(107),
      I2 => legal_box2(10),
      I3 => applied_payload(106),
      O => \rgb_o[20]_i_298_n_0\
    );
\rgb_o[20]_i_299\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(9),
      I1 => applied_payload(105),
      I2 => legal_box2(8),
      I3 => applied_payload(104),
      O => \rgb_o[20]_i_299_n_0\
    );
\rgb_o[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => \rgb_o_reg[0]\,
      I1 => \rgb_o[20]_i_11_n_0\,
      I2 => \rgb_o[20]_i_12_n_0\,
      I3 => \rgb_o_reg[20]_i_13_n_2\,
      I4 => \rgb_o_reg[20]_i_14_n_2\,
      I5 => \rgb_o[20]_i_15_n_0\,
      O => \rgb_o[20]_i_3_n_0\
    );
\rgb_o[20]_i_300\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(111),
      I1 => legal_box2(15),
      I2 => applied_payload(110),
      I3 => legal_box2(14),
      O => \rgb_o[20]_i_300_n_0\
    );
\rgb_o[20]_i_301\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(109),
      I1 => legal_box2(13),
      I2 => applied_payload(108),
      I3 => legal_box2(12),
      O => \rgb_o[20]_i_301_n_0\
    );
\rgb_o[20]_i_302\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(107),
      I1 => legal_box2(11),
      I2 => applied_payload(106),
      I3 => legal_box2(10),
      O => \rgb_o[20]_i_302_n_0\
    );
\rgb_o[20]_i_303\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(105),
      I1 => legal_box2(9),
      I2 => applied_payload(104),
      I3 => legal_box2(8),
      O => \rgb_o[20]_i_303_n_0\
    );
\rgb_o[20]_i_306\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(63),
      O => p_0_in(31)
    );
\rgb_o[20]_i_307\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(62),
      O => p_0_in(30)
    );
\rgb_o[20]_i_308\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(61),
      O => p_0_in(29)
    );
\rgb_o[20]_i_309\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(60),
      O => p_0_in(28)
    );
\rgb_o[20]_i_310\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(59),
      O => p_0_in(27)
    );
\rgb_o[20]_i_311\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(58),
      O => p_0_in(26)
    );
\rgb_o[20]_i_312\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(57),
      O => p_0_in(25)
    );
\rgb_o[20]_i_313\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(56),
      O => p_0_in(24)
    );
\rgb_o[20]_i_314\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(55),
      O => p_0_in(23)
    );
\rgb_o[20]_i_315\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(54),
      O => p_0_in(22)
    );
\rgb_o[20]_i_316\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(53),
      O => p_0_in(21)
    );
\rgb_o[20]_i_318\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(15),
      I1 => applied_payload(143),
      I2 => legal_box1(14),
      I3 => applied_payload(142),
      O => \rgb_o[20]_i_318_n_0\
    );
\rgb_o[20]_i_319\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(13),
      I1 => applied_payload(141),
      I2 => legal_box1(12),
      I3 => applied_payload(140),
      O => \rgb_o[20]_i_319_n_0\
    );
\rgb_o[20]_i_320\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(11),
      I1 => applied_payload(139),
      I2 => legal_box1(10),
      I3 => applied_payload(138),
      O => \rgb_o[20]_i_320_n_0\
    );
\rgb_o[20]_i_321\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(9),
      I1 => applied_payload(137),
      I2 => legal_box1(8),
      I3 => applied_payload(136),
      O => \rgb_o[20]_i_321_n_0\
    );
\rgb_o[20]_i_322\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(143),
      I1 => legal_box1(15),
      I2 => applied_payload(142),
      I3 => legal_box1(14),
      O => \rgb_o[20]_i_322_n_0\
    );
\rgb_o[20]_i_323\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(141),
      I1 => legal_box1(13),
      I2 => applied_payload(140),
      I3 => legal_box1(12),
      O => \rgb_o[20]_i_323_n_0\
    );
\rgb_o[20]_i_324\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(139),
      I1 => legal_box1(11),
      I2 => applied_payload(138),
      I3 => legal_box1(10),
      O => \rgb_o[20]_i_324_n_0\
    );
\rgb_o[20]_i_325\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(137),
      I1 => legal_box1(9),
      I2 => applied_payload(136),
      I3 => legal_box1(8),
      O => \rgb_o[20]_i_325_n_0\
    );
\rgb_o[20]_i_328\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(95),
      O => \rgb_o[20]_i_328_n_0\
    );
\rgb_o[20]_i_329\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(94),
      O => \rgb_o[20]_i_329_n_0\
    );
\rgb_o[20]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_86_n_0\,
      I1 => applied_payload(130),
      I2 => applied_payload(129),
      I3 => applied_payload(131),
      I4 => applied_payload(128),
      I5 => \rgb_o[20]_i_87_n_0\,
      O => \rgb_o[20]_i_33_n_0\
    );
\rgb_o[20]_i_330\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(93),
      O => \rgb_o[20]_i_330_n_0\
    );
\rgb_o[20]_i_331\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(92),
      O => \rgb_o[20]_i_331_n_0\
    );
\rgb_o[20]_i_332\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(91),
      O => \rgb_o[20]_i_332_n_0\
    );
\rgb_o[20]_i_333\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(90),
      O => \rgb_o[20]_i_333_n_0\
    );
\rgb_o[20]_i_334\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(89),
      O => \rgb_o[20]_i_334_n_0\
    );
\rgb_o[20]_i_335\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(88),
      O => \rgb_o[20]_i_335_n_0\
    );
\rgb_o[20]_i_336\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(87),
      O => \rgb_o[20]_i_336_n_0\
    );
\rgb_o[20]_i_337\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(86),
      O => \rgb_o[20]_i_337_n_0\
    );
\rgb_o[20]_i_338\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(85),
      O => \rgb_o[20]_i_338_n_0\
    );
\rgb_o[20]_i_339\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(7),
      I1 => applied_payload(103),
      I2 => legal_box2(6),
      I3 => applied_payload(102),
      O => \rgb_o[20]_i_339_n_0\
    );
\rgb_o[20]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rgb_o[20]_i_88_n_0\,
      I1 => applied_payload(146),
      I2 => applied_payload(145),
      I3 => applied_payload(147),
      I4 => applied_payload(144),
      I5 => \rgb_o[20]_i_89_n_0\,
      O => \rgb_o[20]_i_34_n_0\
    );
\rgb_o[20]_i_340\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(5),
      I1 => applied_payload(101),
      I2 => legal_box2(4),
      I3 => applied_payload(100),
      O => \rgb_o[20]_i_340_n_0\
    );
\rgb_o[20]_i_341\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(3),
      I1 => applied_payload(99),
      I2 => legal_box2(2),
      I3 => applied_payload(98),
      O => \rgb_o[20]_i_341_n_0\
    );
\rgb_o[20]_i_342\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box2(1),
      I1 => applied_payload(97),
      I2 => \^q\(0),
      I3 => applied_payload(96),
      O => \rgb_o[20]_i_342_n_0\
    );
\rgb_o[20]_i_343\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(103),
      I1 => legal_box2(7),
      I2 => applied_payload(102),
      I3 => legal_box2(6),
      O => \rgb_o[20]_i_343_n_0\
    );
\rgb_o[20]_i_344\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(101),
      I1 => legal_box2(5),
      I2 => applied_payload(100),
      I3 => legal_box2(4),
      O => \rgb_o[20]_i_344_n_0\
    );
\rgb_o[20]_i_345\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(99),
      I1 => legal_box2(3),
      I2 => applied_payload(98),
      I3 => legal_box2(2),
      O => \rgb_o[20]_i_345_n_0\
    );
\rgb_o[20]_i_346\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(97),
      I1 => legal_box2(1),
      I2 => applied_payload(96),
      I3 => \^q\(0),
      O => \rgb_o[20]_i_346_n_0\
    );
\rgb_o[20]_i_349\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(52),
      O => p_0_in(20)
    );
\rgb_o[20]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_90_n_0\,
      I1 => applied_payload(81),
      I2 => applied_payload(84),
      I3 => applied_payload(6),
      I4 => applied_payload(4),
      I5 => \rgb_o[20]_i_91_n_0\,
      O => \rgb_o[20]_i_35_n_0\
    );
\rgb_o[20]_i_350\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(51),
      O => p_0_in(19)
    );
\rgb_o[20]_i_351\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(50),
      O => p_0_in(18)
    );
\rgb_o[20]_i_352\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(49),
      O => p_0_in(17)
    );
\rgb_o[20]_i_353\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(48),
      O => p_0_in(16)
    );
\rgb_o[20]_i_354\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(47),
      O => p_0_in(15)
    );
\rgb_o[20]_i_355\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(46),
      O => p_0_in(14)
    );
\rgb_o[20]_i_356\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(45),
      O => p_0_in(13)
    );
\rgb_o[20]_i_357\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(7),
      I1 => applied_payload(135),
      I2 => legal_box1(6),
      I3 => applied_payload(134),
      O => \rgb_o[20]_i_357_n_0\
    );
\rgb_o[20]_i_358\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(5),
      I1 => applied_payload(133),
      I2 => legal_box1(4),
      I3 => applied_payload(132),
      O => \rgb_o[20]_i_358_n_0\
    );
\rgb_o[20]_i_359\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(3),
      I1 => applied_payload(131),
      I2 => legal_box1(2),
      I3 => applied_payload(130),
      O => \rgb_o[20]_i_359_n_0\
    );
\rgb_o[20]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888880"
    )
        port map (
      I0 => applied_payload(39),
      I1 => applied_payload(40),
      I2 => applied_payload(38),
      I3 => \^q\(4),
      I4 => applied_payload(37),
      I5 => \rgb_o[20]_i_92_n_0\,
      O => \rgb_o[20]_i_36_n_0\
    );
\rgb_o[20]_i_360\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => legal_box1(1),
      I1 => applied_payload(129),
      I2 => \^q\(5),
      I3 => applied_payload(128),
      O => \rgb_o[20]_i_360_n_0\
    );
\rgb_o[20]_i_361\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(135),
      I1 => legal_box1(7),
      I2 => applied_payload(134),
      I3 => legal_box1(6),
      O => \rgb_o[20]_i_361_n_0\
    );
\rgb_o[20]_i_362\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(133),
      I1 => legal_box1(5),
      I2 => applied_payload(132),
      I3 => legal_box1(4),
      O => \rgb_o[20]_i_362_n_0\
    );
\rgb_o[20]_i_363\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(131),
      I1 => legal_box1(3),
      I2 => applied_payload(130),
      I3 => legal_box1(2),
      O => \rgb_o[20]_i_363_n_0\
    );
\rgb_o[20]_i_364\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => applied_payload(129),
      I1 => legal_box1(1),
      I2 => applied_payload(128),
      I3 => \^q\(5),
      O => \rgb_o[20]_i_364_n_0\
    );
\rgb_o[20]_i_367\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(84),
      O => \rgb_o[20]_i_367_n_0\
    );
\rgb_o[20]_i_368\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(83),
      O => \rgb_o[20]_i_368_n_0\
    );
\rgb_o[20]_i_369\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(82),
      O => \rgb_o[20]_i_369_n_0\
    );
\rgb_o[20]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rgb_o[20]_i_93_n_0\,
      I1 => applied_payload(123),
      I2 => applied_payload(120),
      I3 => applied_payload(122),
      I4 => applied_payload(121),
      I5 => \rgb_o[20]_i_94_n_0\,
      O => \rgb_o[20]_i_37_n_0\
    );
\rgb_o[20]_i_370\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(81),
      O => \rgb_o[20]_i_370_n_0\
    );
\rgb_o[20]_i_371\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(80),
      O => \rgb_o[20]_i_371_n_0\
    );
\rgb_o[20]_i_372\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(79),
      O => \rgb_o[20]_i_372_n_0\
    );
\rgb_o[20]_i_373\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(78),
      O => \rgb_o[20]_i_373_n_0\
    );
\rgb_o[20]_i_374\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(77),
      O => \rgb_o[20]_i_374_n_0\
    );
\rgb_o[20]_i_376\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(44),
      O => p_0_in(12)
    );
\rgb_o[20]_i_377\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(43),
      O => p_0_in(11)
    );
\rgb_o[20]_i_378\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(42),
      O => p_0_in(10)
    );
\rgb_o[20]_i_379\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(41),
      O => p_0_in(9)
    );
\rgb_o[20]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_95_n_0\,
      I1 => applied_payload(99),
      I2 => applied_payload(96),
      I3 => applied_payload(98),
      I4 => applied_payload(97),
      I5 => \rgb_o[20]_i_96_n_0\,
      O => \rgb_o[20]_i_38_n_0\
    );
\rgb_o[20]_i_380\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(40),
      O => p_0_in(8)
    );
\rgb_o[20]_i_381\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(39),
      O => p_0_in(7)
    );
\rgb_o[20]_i_382\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(38),
      O => p_0_in(6)
    );
\rgb_o[20]_i_383\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(37),
      O => p_0_in(5)
    );
\rgb_o[20]_i_385\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(76),
      O => \rgb_o[20]_i_385_n_0\
    );
\rgb_o[20]_i_386\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(75),
      O => \rgb_o[20]_i_386_n_0\
    );
\rgb_o[20]_i_387\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(74),
      O => \rgb_o[20]_i_387_n_0\
    );
\rgb_o[20]_i_388\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(73),
      O => \rgb_o[20]_i_388_n_0\
    );
\rgb_o[20]_i_389\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(71),
      O => \rgb_o[20]_i_389_n_0\
    );
\rgb_o[20]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \rgb_o[20]_i_97_n_0\,
      I1 => applied_payload(57),
      I2 => applied_payload(59),
      I3 => \rgb_o_reg[20]_i_98_n_0\,
      I4 => applied_payload(58),
      I5 => \rgb_o[20]_i_99_n_0\,
      O => \rgb_o[20]_i_39_n_0\
    );
\rgb_o[20]_i_390\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(70),
      O => \rgb_o[20]_i_390_n_0\
    );
\rgb_o[20]_i_391\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(69),
      O => \rgb_o[20]_i_391_n_0\
    );
\rgb_o[20]_i_392\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \rgb_o[20]_i_392_n_0\
    );
\rgb_o[20]_i_393\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\rgb_o[20]_i_394\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => p_0_in(4)
    );
\rgb_o[20]_i_395\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => p_0_in(3)
    );
\rgb_o[20]_i_396\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => p_0_in(2)
    );
\rgb_o[20]_i_397\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => p_0_in(1)
    );
\rgb_o[20]_i_398\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \rgb_o[20]_i_398_n_0\
    );
\rgb_o[20]_i_399\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => applied_payload(68),
      O => \rgb_o[20]_i_399_n_0\
    );
\rgb_o[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => applied_payload(37),
      I2 => applied_payload(38),
      I3 => applied_payload(40),
      I4 => applied_payload(39),
      I5 => \rgb_o_reg[0]_0\,
      O => \rgb_o[20]_i_4_n_0\
    );
\rgb_o[20]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rgb_o[20]_i_100_n_0\,
      I1 => applied_payload(92),
      I2 => applied_payload(11),
      I3 => applied_payload(73),
      I4 => applied_payload(9),
      I5 => \rgb_o[20]_i_101_n_0\,
      O => \rgb_o[20]_i_40_n_0\
    );
\rgb_o[20]_i_400\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \rgb_o[20]_i_400_n_0\
    );
\rgb_o[20]_i_401\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \rgb_o[20]_i_401_n_0\
    );
\rgb_o[20]_i_402\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \rgb_o[20]_i_402_n_0\
    );
\rgb_o[20]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \rgb_o[20]_i_102_n_0\,
      I1 => \rgb_o_reg[20]_i_103_n_0\,
      I2 => applied_payload(80),
      I3 => applied_payload(82),
      I4 => applied_payload(41),
      I5 => \rgb_o[20]_i_104_n_0\,
      O => \rgb_o[20]_i_41_n_0\
    );
\rgb_o[20]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_105_n_0\,
      I1 => applied_payload(63),
      I2 => applied_payload(23),
      I3 => applied_payload(61),
      I4 => applied_payload(8),
      I5 => \rgb_o[20]_i_106_n_0\,
      O => \rgb_o[20]_i_42_n_0\
    );
\rgb_o[20]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AC2AFAB0080AA2A"
    )
        port map (
      I0 => active_y(8),
      I1 => applied_payload(70),
      I2 => applied_payload(71),
      I3 => \rgb_o[20]_i_115_n_0\,
      I4 => \^q\(9),
      I5 => active_y(7),
      O => \rgb_o[20]_i_44_n_0\
    );
\rgb_o[20]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \rgb_o[20]_i_115_n_0\,
      I2 => applied_payload(71),
      I3 => applied_payload(70),
      O => \rgb_o[20]_i_45_n_0\
    );
\rgb_o[20]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8148884424122211"
    )
        port map (
      I0 => active_y(7),
      I1 => \^q\(9),
      I2 => \rgb_o[20]_i_115_n_0\,
      I3 => applied_payload(71),
      I4 => applied_payload(70),
      I5 => active_y(8),
      O => \rgb_o[20]_i_46_n_0\
    );
\rgb_o[20]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CBA08A2"
    )
        port map (
      I0 => active_x(8),
      I1 => applied_payload(39),
      I2 => \rgb_o[20]_i_125_n_0\,
      I3 => applied_payload(40),
      I4 => active_x(7),
      O => \rgb_o[20]_i_49_n_0\
    );
\rgb_o[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010001"
    )
        port map (
      I0 => \rgb_o[20]_i_17_n_0\,
      I1 => applied_payload(100),
      I2 => applied_payload(96),
      I3 => applied_payload(99),
      I4 => \rgb_o[20]_i_18_n_0\,
      I5 => \rgb_o[20]_i_19_n_0\,
      O => \rgb_o[20]_i_5_n_0\
    );
\rgb_o[20]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^left\(0),
      I1 => active_x(9),
      O => \rgb_o[20]_i_50_n_0\
    );
\rgb_o[20]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81482412"
    )
        port map (
      I0 => active_x(7),
      I1 => applied_payload(40),
      I2 => \rgb_o[20]_i_125_n_0\,
      I3 => applied_payload(39),
      I4 => active_x(8),
      O => \rgb_o[20]_i_51_n_0\
    );
\rgb_o[20]_i_59\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_56_n_0\,
      I1 => \rgb_o_reg[20]_i_134_n_7\,
      I2 => O(2),
      I3 => \rgb_o_reg[20]_i_56_n_6\,
      O => \rgb_o[20]_i_59_n_0\
    );
\rgb_o[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_20_n_0\,
      I1 => \rgb_o_reg[0]_1\,
      I2 => \rgb_o_reg[0]_2\,
      I3 => \rgb_o_reg[0]_3\,
      O => \rgb_o[20]_i_6_n_0\
    );
\rgb_o[20]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => applied_payload(99),
      O => \rgb_o[20]_i_75_n_0\
    );
\rgb_o[20]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => applied_payload(98),
      O => \rgb_o[20]_i_76_n_0\
    );
\rgb_o[20]_i_77\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => applied_payload(97),
      O => \rgb_o[20]_i_77_n_0\
    );
\rgb_o[20]_i_78\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => applied_payload(96),
      O => \rgb_o[20]_i_78_n_0\
    );
\rgb_o[20]_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => applied_payload(136),
      O => \rgb_o[20]_i_84_n_0\
    );
\rgb_o[20]_i_86\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(133),
      I1 => applied_payload(132),
      I2 => applied_payload(135),
      I3 => applied_payload(134),
      O => \rgb_o[20]_i_86_n_0\
    );
\rgb_o[20]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(136),
      I1 => applied_payload(137),
      I2 => applied_payload(138),
      I3 => applied_payload(139),
      I4 => \rgb_o[20]_i_216_n_0\,
      O => \rgb_o[20]_i_87_n_0\
    );
\rgb_o[20]_i_88\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(149),
      I1 => applied_payload(148),
      I2 => applied_payload(151),
      I3 => applied_payload(150),
      O => \rgb_o[20]_i_88_n_0\
    );
\rgb_o[20]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(152),
      I1 => applied_payload(155),
      I2 => applied_payload(153),
      I3 => applied_payload(154),
      I4 => \rgb_o[20]_i_217_n_0\,
      O => \rgb_o[20]_i_89_n_0\
    );
\rgb_o[20]_i_90\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(9),
      I1 => applied_payload(77),
      I2 => applied_payload(22),
      I3 => applied_payload(19),
      O => \rgb_o[20]_i_90_n_0\
    );
\rgb_o[20]_i_91\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(53),
      I1 => applied_payload(74),
      I2 => applied_payload(3),
      I3 => applied_payload(52),
      I4 => \rgb_o[20]_i_218_n_0\,
      O => \rgb_o[20]_i_91_n_0\
    );
\rgb_o[20]_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => applied_payload(79),
      I1 => applied_payload(25),
      I2 => applied_payload(54),
      I3 => applied_payload(78),
      I4 => applied_payload(2),
      I5 => applied_payload(1),
      O => \rgb_o[20]_i_92_n_0\
    );
\rgb_o[20]_i_93\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(107),
      I1 => applied_payload(104),
      I2 => applied_payload(106),
      I3 => applied_payload(105),
      O => \rgb_o[20]_i_93_n_0\
    );
\rgb_o[20]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(109),
      I1 => applied_payload(110),
      I2 => applied_payload(108),
      I3 => applied_payload(111),
      I4 => \rgb_o[20]_i_219_n_0\,
      O => \rgb_o[20]_i_94_n_0\
    );
\rgb_o[20]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(115),
      I1 => applied_payload(112),
      I2 => applied_payload(114),
      I3 => applied_payload(113),
      O => \rgb_o[20]_i_95_n_0\
    );
\rgb_o[20]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(117),
      I1 => applied_payload(118),
      I2 => applied_payload(116),
      I3 => applied_payload(119),
      I4 => \rgb_o[20]_i_220_n_0\,
      O => \rgb_o[20]_i_96_n_0\
    );
\rgb_o[20]_i_97\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => applied_payload(50),
      I1 => applied_payload(56),
      I2 => applied_payload(28),
      I3 => applied_payload(21),
      O => \rgb_o[20]_i_97_n_0\
    );
\rgb_o[20]_i_99\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => applied_payload(94),
      I1 => applied_payload(90),
      I2 => applied_payload(45),
      I3 => applied_payload(76),
      I4 => \rgb_o[20]_i_230_n_0\,
      O => \rgb_o[20]_i_99_n_0\
    );
\rgb_o[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(0),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[8]\
    );
\rgb_o[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => rgb(1),
      I1 => \rgb_o_reg[8]\,
      I2 => \rgb_o[20]_i_3_n_0\,
      I3 => \rgb_o[20]_i_4_n_0\,
      I4 => \rgb_o[20]_i_5_n_0\,
      I5 => \rgb_o[20]_i_6_n_0\,
      O => \rgb_reg[9]\
    );
\rgb_o_reg[20]_i_103\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_232_n_0\,
      CO(3) => \rgb_o_reg[20]_i_103_n_0\,
      CO(2) => \rgb_o_reg[20]_i_103_n_1\,
      CO(1) => \rgb_o_reg[20]_i_103_n_2\,
      CO(0) => \rgb_o_reg[20]_i_103_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_233_n_0\,
      DI(2) => \rgb_o[20]_i_234_n_0\,
      DI(1) => \rgb_o[20]_i_235_n_0\,
      DI(0) => \rgb_o[20]_i_236_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_103_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_237_n_0\,
      S(2) => \rgb_o[20]_i_238_n_0\,
      S(1) => \rgb_o[20]_i_239_n_0\,
      S(0) => \rgb_o[20]_i_240_n_0\
    );
\rgb_o_reg[20]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_43_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_13_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_13_n_2\,
      CO(0) => \rgb_o_reg[20]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rgb_o[20]_i_44_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgb_o[20]_i_45_n_0\,
      S(0) => \rgb_o[20]_i_46_n_0\
    );
\rgb_o_reg[20]_i_134\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o[20]_i_59_0\(0),
      CO(3) => \rgb_o_reg[20]_i_134_n_0\,
      CO(2) => \rgb_o_reg[20]_i_134_n_1\,
      CO(1) => \rgb_o_reg[20]_i_134_n_2\,
      CO(0) => \rgb_o_reg[20]_i_134_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_245_n_0\,
      DI(2) => \rgb_o[20]_i_246_n_0\,
      DI(1) => \rgb_o[20]_i_247_n_0\,
      DI(0) => \rgb_o[20]_i_248_n_0\,
      O(3 downto 1) => \dst_payload_reg[37]_0\(2 downto 0),
      O(0) => \rgb_o_reg[20]_i_134_n_7\,
      S(3) => \rgb_o[20]_i_249_n_0\,
      S(2) => \rgb_o[20]_i_250_n_0\,
      S(1) => \rgb_o[20]_i_251_n_0\,
      S(0) => \rgb_o[20]_i_59_1\(0)
    );
\rgb_o_reg[20]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o[20]_i_3_0\(0),
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_14_n_2\,
      CO(0) => \rgb_o_reg[20]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rgb_o[20]_i_3_1\(0),
      DI(0) => \rgb_o[20]_i_49_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgb_o[20]_i_50_n_0\,
      S(0) => \rgb_o[20]_i_51_n_0\
    );
\rgb_o_reg[20]_i_221\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_270_n_0\,
      CO(3) => \rgb_o_reg[20]_i_221_n_0\,
      CO(2) => \rgb_o_reg[20]_i_221_n_1\,
      CO(1) => \rgb_o_reg[20]_i_221_n_2\,
      CO(0) => \rgb_o_reg[20]_i_221_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_271_n_0\,
      DI(2) => \rgb_o[20]_i_272_n_0\,
      DI(1) => \rgb_o[20]_i_273_n_0\,
      DI(0) => \rgb_o[20]_i_274_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_221_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_275_n_0\,
      S(2) => \rgb_o[20]_i_276_n_0\,
      S(1) => \rgb_o[20]_i_277_n_0\,
      S(0) => \rgb_o[20]_i_278_n_0\
    );
\rgb_o_reg[20]_i_232\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_282_n_0\,
      CO(3) => \rgb_o_reg[20]_i_232_n_0\,
      CO(2) => \rgb_o_reg[20]_i_232_n_1\,
      CO(1) => \rgb_o_reg[20]_i_232_n_2\,
      CO(0) => \rgb_o_reg[20]_i_232_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_283_n_0\,
      DI(2) => \rgb_o[20]_i_284_n_0\,
      DI(1) => \rgb_o[20]_i_285_n_0\,
      DI(0) => \rgb_o[20]_i_286_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_232_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_287_n_0\,
      S(2) => \rgb_o[20]_i_288_n_0\,
      S(1) => \rgb_o[20]_i_289_n_0\,
      S(0) => \rgb_o[20]_i_290_n_0\
    );
\rgb_o_reg[20]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_25_n_0\,
      CO(2) => \rgb_o_reg[20]_i_25_n_1\,
      CO(1) => \rgb_o_reg[20]_i_25_n_2\,
      CO(0) => \rgb_o_reg[20]_i_25_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => \dst_payload_reg[35]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_75_n_0\,
      S(2) => \rgb_o[20]_i_76_n_0\,
      S(1) => \rgb_o[20]_i_77_n_0\,
      S(0) => \rgb_o[20]_i_78_n_0\
    );
\rgb_o_reg[20]_i_270\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_295_n_0\,
      CO(3) => \rgb_o_reg[20]_i_270_n_0\,
      CO(2) => \rgb_o_reg[20]_i_270_n_1\,
      CO(1) => \rgb_o_reg[20]_i_270_n_2\,
      CO(0) => \rgb_o_reg[20]_i_270_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_296_n_0\,
      DI(2) => \rgb_o[20]_i_297_n_0\,
      DI(1) => \rgb_o[20]_i_298_n_0\,
      DI(0) => \rgb_o[20]_i_299_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_270_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_300_n_0\,
      S(2) => \rgb_o[20]_i_301_n_0\,
      S(1) => \rgb_o[20]_i_302_n_0\,
      S(0) => \rgb_o[20]_i_303_n_0\
    );
\rgb_o_reg[20]_i_279\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_280_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_279_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_279_n_2\,
      CO(0) => \rgb_o_reg[20]_i_279_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rgb_o_reg[20]_i_279_O_UNCONNECTED\(3),
      O(2 downto 0) => legal_box2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => p_0_in(31 downto 29)
    );
\rgb_o_reg[20]_i_280\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_281_n_0\,
      CO(3) => \rgb_o_reg[20]_i_280_n_0\,
      CO(2) => \rgb_o_reg[20]_i_280_n_1\,
      CO(1) => \rgb_o_reg[20]_i_280_n_2\,
      CO(0) => \rgb_o_reg[20]_i_280_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box2(28 downto 25),
      S(3 downto 0) => p_0_in(28 downto 25)
    );
\rgb_o_reg[20]_i_281\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_304_n_0\,
      CO(3) => \rgb_o_reg[20]_i_281_n_0\,
      CO(2) => \rgb_o_reg[20]_i_281_n_1\,
      CO(1) => \rgb_o_reg[20]_i_281_n_2\,
      CO(0) => \rgb_o_reg[20]_i_281_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box2(24 downto 21),
      S(3 downto 0) => p_0_in(24 downto 21)
    );
\rgb_o_reg[20]_i_282\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_317_n_0\,
      CO(3) => \rgb_o_reg[20]_i_282_n_0\,
      CO(2) => \rgb_o_reg[20]_i_282_n_1\,
      CO(1) => \rgb_o_reg[20]_i_282_n_2\,
      CO(0) => \rgb_o_reg[20]_i_282_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_318_n_0\,
      DI(2) => \rgb_o[20]_i_319_n_0\,
      DI(1) => \rgb_o[20]_i_320_n_0\,
      DI(0) => \rgb_o[20]_i_321_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_282_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_322_n_0\,
      S(2) => \rgb_o[20]_i_323_n_0\,
      S(1) => \rgb_o[20]_i_324_n_0\,
      S(0) => \rgb_o[20]_i_325_n_0\
    );
\rgb_o_reg[20]_i_291\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_292_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_291_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_291_n_2\,
      CO(0) => \rgb_o_reg[20]_i_291_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rgb_o_reg[20]_i_291_O_UNCONNECTED\(3),
      O(2 downto 0) => legal_box1(31 downto 29),
      S(3) => '0',
      S(2) => \rgb_o[20]_i_328_n_0\,
      S(1) => \rgb_o[20]_i_329_n_0\,
      S(0) => \rgb_o[20]_i_330_n_0\
    );
\rgb_o_reg[20]_i_292\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_293_n_0\,
      CO(3) => \rgb_o_reg[20]_i_292_n_0\,
      CO(2) => \rgb_o_reg[20]_i_292_n_1\,
      CO(1) => \rgb_o_reg[20]_i_292_n_2\,
      CO(0) => \rgb_o_reg[20]_i_292_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box1(28 downto 25),
      S(3) => \rgb_o[20]_i_331_n_0\,
      S(2) => \rgb_o[20]_i_332_n_0\,
      S(1) => \rgb_o[20]_i_333_n_0\,
      S(0) => \rgb_o[20]_i_334_n_0\
    );
\rgb_o_reg[20]_i_293\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_326_n_0\,
      CO(3) => \rgb_o_reg[20]_i_293_n_0\,
      CO(2) => \rgb_o_reg[20]_i_293_n_1\,
      CO(1) => \rgb_o_reg[20]_i_293_n_2\,
      CO(0) => \rgb_o_reg[20]_i_293_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box1(24 downto 21),
      S(3) => \rgb_o[20]_i_335_n_0\,
      S(2) => \rgb_o[20]_i_336_n_0\,
      S(1) => \rgb_o[20]_i_337_n_0\,
      S(0) => \rgb_o[20]_i_338_n_0\
    );
\rgb_o_reg[20]_i_295\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_295_n_0\,
      CO(2) => \rgb_o_reg[20]_i_295_n_1\,
      CO(1) => \rgb_o_reg[20]_i_295_n_2\,
      CO(0) => \rgb_o_reg[20]_i_295_n_3\,
      CYINIT => '1',
      DI(3) => \rgb_o[20]_i_339_n_0\,
      DI(2) => \rgb_o[20]_i_340_n_0\,
      DI(1) => \rgb_o[20]_i_341_n_0\,
      DI(0) => \rgb_o[20]_i_342_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_295_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_343_n_0\,
      S(2) => \rgb_o[20]_i_344_n_0\,
      S(1) => \rgb_o[20]_i_345_n_0\,
      S(0) => \rgb_o[20]_i_346_n_0\
    );
\rgb_o_reg[20]_i_304\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_305_n_0\,
      CO(3) => \rgb_o_reg[20]_i_304_n_0\,
      CO(2) => \rgb_o_reg[20]_i_304_n_1\,
      CO(1) => \rgb_o_reg[20]_i_304_n_2\,
      CO(0) => \rgb_o_reg[20]_i_304_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box2(20 downto 17),
      S(3 downto 0) => p_0_in(20 downto 17)
    );
\rgb_o_reg[20]_i_305\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_347_n_0\,
      CO(3) => \rgb_o_reg[20]_i_305_n_0\,
      CO(2) => \rgb_o_reg[20]_i_305_n_1\,
      CO(1) => \rgb_o_reg[20]_i_305_n_2\,
      CO(0) => \rgb_o_reg[20]_i_305_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box2(16 downto 13),
      S(3 downto 0) => p_0_in(16 downto 13)
    );
\rgb_o_reg[20]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_54_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dst_payload_reg[72]_0\(1),
      CO(0) => \NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(9),
      O(3 downto 1) => \NLW_rgb_o_reg[20]_i_31_O_UNCONNECTED\(3 downto 1),
      O(0) => \dst_payload_reg[72]_0\(0),
      S(3 downto 1) => B"001",
      S(0) => \rgb_o[20]_i_84_n_0\
    );
\rgb_o_reg[20]_i_317\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_317_n_0\,
      CO(2) => \rgb_o_reg[20]_i_317_n_1\,
      CO(1) => \rgb_o_reg[20]_i_317_n_2\,
      CO(0) => \rgb_o_reg[20]_i_317_n_3\,
      CYINIT => '1',
      DI(3) => \rgb_o[20]_i_357_n_0\,
      DI(2) => \rgb_o[20]_i_358_n_0\,
      DI(1) => \rgb_o[20]_i_359_n_0\,
      DI(0) => \rgb_o[20]_i_360_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_317_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_361_n_0\,
      S(2) => \rgb_o[20]_i_362_n_0\,
      S(1) => \rgb_o[20]_i_363_n_0\,
      S(0) => \rgb_o[20]_i_364_n_0\
    );
\rgb_o_reg[20]_i_326\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_327_n_0\,
      CO(3) => \rgb_o_reg[20]_i_326_n_0\,
      CO(2) => \rgb_o_reg[20]_i_326_n_1\,
      CO(1) => \rgb_o_reg[20]_i_326_n_2\,
      CO(0) => \rgb_o_reg[20]_i_326_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box1(20 downto 17),
      S(3) => \rgb_o[20]_i_367_n_0\,
      S(2) => \rgb_o[20]_i_368_n_0\,
      S(1) => \rgb_o[20]_i_369_n_0\,
      S(0) => \rgb_o[20]_i_370_n_0\
    );
\rgb_o_reg[20]_i_327\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_365_n_0\,
      CO(3) => \rgb_o_reg[20]_i_327_n_0\,
      CO(2) => \rgb_o_reg[20]_i_327_n_1\,
      CO(1) => \rgb_o_reg[20]_i_327_n_2\,
      CO(0) => \rgb_o_reg[20]_i_327_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box1(16 downto 13),
      S(3) => \rgb_o[20]_i_371_n_0\,
      S(2) => \rgb_o[20]_i_372_n_0\,
      S(1) => \rgb_o[20]_i_373_n_0\,
      S(0) => \rgb_o[20]_i_374_n_0\
    );
\rgb_o_reg[20]_i_347\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_348_n_0\,
      CO(3) => \rgb_o_reg[20]_i_347_n_0\,
      CO(2) => \rgb_o_reg[20]_i_347_n_1\,
      CO(1) => \rgb_o_reg[20]_i_347_n_2\,
      CO(0) => \rgb_o_reg[20]_i_347_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box2(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\rgb_o_reg[20]_i_348\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_375_n_0\,
      CO(3) => \rgb_o_reg[20]_i_348_n_0\,
      CO(2) => \rgb_o_reg[20]_i_348_n_1\,
      CO(1) => \rgb_o_reg[20]_i_348_n_2\,
      CO(0) => \rgb_o_reg[20]_i_348_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => p_0_in(8 downto 7),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => legal_box2(8 downto 5),
      S(3 downto 2) => applied_payload(40 downto 39),
      S(1 downto 0) => p_0_in(6 downto 5)
    );
\rgb_o_reg[20]_i_365\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_366_n_0\,
      CO(3) => \rgb_o_reg[20]_i_365_n_0\,
      CO(2) => \rgb_o_reg[20]_i_365_n_1\,
      CO(1) => \rgb_o_reg[20]_i_365_n_2\,
      CO(0) => \rgb_o_reg[20]_i_365_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => legal_box1(12 downto 9),
      S(3) => \rgb_o[20]_i_385_n_0\,
      S(2) => \rgb_o[20]_i_386_n_0\,
      S(1) => \rgb_o[20]_i_387_n_0\,
      S(0) => \rgb_o[20]_i_388_n_0\
    );
\rgb_o_reg[20]_i_366\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_384_n_0\,
      CO(3) => \rgb_o_reg[20]_i_366_n_0\,
      CO(2) => \rgb_o_reg[20]_i_366_n_1\,
      CO(1) => \rgb_o_reg[20]_i_366_n_2\,
      CO(0) => \rgb_o_reg[20]_i_366_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rgb_o[20]_i_389_n_0\,
      DI(1) => \rgb_o[20]_i_390_n_0\,
      DI(0) => \rgb_o[20]_i_391_n_0\,
      O(3 downto 0) => legal_box1(8 downto 5),
      S(3) => \rgb_o[20]_i_392_n_0\,
      S(2 downto 0) => applied_payload(71 downto 69)
    );
\rgb_o_reg[20]_i_375\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_375_n_0\,
      CO(2) => \rgb_o_reg[20]_i_375_n_1\,
      CO(1) => \rgb_o_reg[20]_i_375_n_2\,
      CO(0) => \rgb_o_reg[20]_i_375_n_3\,
      CYINIT => p_0_in(0),
      DI(3) => p_0_in(4),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => legal_box2(4 downto 1),
      S(3) => \^q\(4),
      S(2 downto 0) => p_0_in(3 downto 1)
    );
\rgb_o_reg[20]_i_384\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_384_n_0\,
      CO(2) => \rgb_o_reg[20]_i_384_n_1\,
      CO(1) => \rgb_o_reg[20]_i_384_n_2\,
      CO(0) => \rgb_o_reg[20]_i_384_n_3\,
      CYINIT => \rgb_o[20]_i_398_n_0\,
      DI(3) => \rgb_o[20]_i_399_n_0\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => legal_box1(4 downto 1),
      S(3) => applied_payload(68),
      S(2) => \rgb_o[20]_i_400_n_0\,
      S(1) => \rgb_o[20]_i_401_n_0\,
      S(0) => \rgb_o[20]_i_402_n_0\
    );
\rgb_o_reg[20]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_43_n_0\,
      CO(2) => \rgb_o_reg[20]_i_43_n_1\,
      CO(1) => \rgb_o_reg[20]_i_43_n_2\,
      CO(0) => \rgb_o_reg[20]_i_43_n_3\,
      CYINIT => '1',
      DI(3) => \rgb_o[20]_i_107_n_0\,
      DI(2) => \rgb_o[20]_i_108_n_0\,
      DI(1) => \rgb_o[20]_i_109_n_0\,
      DI(0) => \rgb_o_reg[20]_i_13_0\(0),
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_43_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_111_n_0\,
      S(2) => \rgb_o[20]_i_112_n_0\,
      S(1) => \rgb_o[20]_i_113_n_0\,
      S(0) => \rgb_o_reg[20]_i_13_1\(0)
    );
\rgb_o_reg[20]_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_52_n_0\,
      CO(2) => \rgb_o_reg[20]_i_52_n_1\,
      CO(1) => \rgb_o_reg[20]_i_52_n_2\,
      CO(0) => \rgb_o_reg[20]_i_52_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(8 downto 5),
      O(3 downto 0) => \dst_payload_reg[67]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_126_n_0\,
      S(2) => \rgb_o[20]_i_127_n_0\,
      S(1) => \rgb_o[20]_i_128_n_0\,
      S(0) => \rgb_o[20]_i_129_n_0\
    );
\rgb_o_reg[20]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_52_n_0\,
      CO(3) => \rgb_o_reg[20]_i_54_n_0\,
      CO(2) => \rgb_o_reg[20]_i_54_n_1\,
      CO(1) => \rgb_o_reg[20]_i_54_n_2\,
      CO(0) => \rgb_o_reg[20]_i_54_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => applied_payload(71 downto 68),
      O(3 downto 0) => \dst_payload_reg[71]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_130_n_0\,
      S(2) => \rgb_o[20]_i_131_n_0\,
      S(1) => \rgb_o[20]_i_132_n_0\,
      S(0) => \rgb_o[20]_i_133_n_0\
    );
\rgb_o_reg[20]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_134_n_0\,
      CO(3) => \rgb_o_reg[20]_i_56_n_0\,
      CO(2) => \NLW_rgb_o_reg[20]_i_56_CO_UNCONNECTED\(2),
      CO(1) => \rgb_o_reg[20]_i_56_n_2\,
      CO(0) => \rgb_o_reg[20]_i_56_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rgb_o[20]_i_20_0\(0),
      DI(1) => \rgb_o[20]_i_136_n_0\,
      DI(0) => \rgb_o[20]_i_137_n_0\,
      O(3) => \NLW_rgb_o_reg[20]_i_56_O_UNCONNECTED\(3),
      O(2) => \rgb_o_reg[20]_i_56_n_5\,
      O(1) => \rgb_o_reg[20]_i_56_n_6\,
      O(0) => \rgb_o_reg[20]_i_56_n_7\,
      S(3) => '1',
      S(2) => \rgb_o[20]_i_138_n_0\,
      S(1) => \rgb_o[20]_i_139_n_0\,
      S(0) => \rgb_o[20]_i_140_n_0\
    );
\rgb_o_reg[20]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_8_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => CO(0),
      CO(0) => \NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => applied_payload(40),
      O(3 downto 1) => \NLW_rgb_o_reg[20]_i_7_O_UNCONNECTED\(3 downto 1),
      O(0) => \dst_payload_reg[40]_0\(0),
      S(3 downto 1) => B"001",
      S(0) => \rgb_o[20]_i_24_n_0\
    );
\rgb_o_reg[20]_i_70\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o[20]_i_23\(0),
      CO(3) => \rgb_o_reg[20]_i_70_n_0\,
      CO(2) => \rgb_o_reg[20]_i_70_n_1\,
      CO(1) => \rgb_o_reg[20]_i_70_n_2\,
      CO(0) => \rgb_o_reg[20]_i_70_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_183_n_0\,
      DI(2) => \rgb_o[20]_i_184_n_0\,
      DI(1) => \rgb_o[20]_i_185_n_0\,
      DI(0) => \rgb_o[20]_i_186_n_0\,
      O(3 downto 0) => \active_y_reg[7]\(3 downto 0),
      S(3) => \rgb_o[20]_i_187_n_0\,
      S(2) => \rgb_o[20]_i_188_n_0\,
      S(1) => \rgb_o[20]_i_189_n_0\,
      S(0) => \rgb_o[20]_i_190_n_0\
    );
\rgb_o_reg[20]_i_71\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_70_n_0\,
      CO(3) => \NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED\(3),
      CO(2) => \active_y_reg[9]\(0),
      CO(1) => \NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED\(1),
      CO(0) => \rgb_o_reg[20]_i_71_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rgb_o[20]_i_191_n_0\,
      DI(0) => \rgb_o[20]_i_192_n_0\,
      O(3 downto 2) => \NLW_rgb_o_reg[20]_i_71_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \active_y_reg[9]_0\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => \rgb_o[20]_i_193_n_0\,
      S(0) => \rgb_o[20]_i_194_n_0\
    );
\rgb_o_reg[20]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_25_n_0\,
      CO(3) => \rgb_o_reg[20]_i_8_n_0\,
      CO(2) => \rgb_o_reg[20]_i_8_n_1\,
      CO(1) => \rgb_o_reg[20]_i_8_n_2\,
      CO(0) => \rgb_o_reg[20]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => applied_payload(39 downto 37),
      DI(0) => \^q\(4),
      O(3 downto 0) => \dst_payload_reg[39]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_26_n_0\,
      S(2) => \rgb_o[20]_i_27_n_0\,
      S(1) => \rgb_o[20]_i_28_n_0\,
      S(0) => \rgb_o[20]_i_29_n_0\
    );
\rgb_o_reg[20]_i_98\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_221_n_0\,
      CO(3) => \rgb_o_reg[20]_i_98_n_0\,
      CO(2) => \rgb_o_reg[20]_i_98_n_1\,
      CO(1) => \rgb_o_reg[20]_i_98_n_2\,
      CO(0) => \rgb_o_reg[20]_i_98_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_222_n_0\,
      DI(2) => \rgb_o[20]_i_223_n_0\,
      DI(1) => \rgb_o[20]_i_224_n_0\,
      DI(0) => \rgb_o[20]_i_225_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_98_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_226_n_0\,
      S(2) => \rgb_o[20]_i_227_n_0\,
      S(1) => \rgb_o[20]_i_228_n_0\,
      S(0) => \rgb_o[20]_i_229_n_0\
    );
src_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000008"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => ack_s(1),
      I4 => req,
      I5 => state136_out,
      O => src_ack_i_1_n_0
    );
src_ack_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_reset_pipe(1),
      O => src_ack_i_2_n_0
    );
src_ack_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => box_invalidate,
      I1 => box_recover,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => state136_out
    );
src_ack_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => src_ack_i_1_n_0,
      Q => box_ack
    );
src_reset_event_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_reset_pipe(1),
      O => src_reset_event_i_1_n_0
    );
src_reset_event_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_reset_event_i_1_n_0,
      D => reset_notice_pending,
      Q => box_reset_event
    );
\src_reset_pipe[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => box_src_rst_n,
      I1 => rst_n,
      O => \src_reset_pipe[1]_i_1_n_0\
    );
\src_reset_pipe_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => \src_reset_pipe[1]_i_1_n_0\,
      D => '1',
      Q => src_reset_pipe(0)
    );
\src_reset_pipe_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => \src_reset_pipe[1]_i_1_n_0\,
      D => src_reset_pipe(0),
      Q => src_reset_pipe(1)
    );
src_timeout_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => state1,
      I4 => state0,
      I5 => state136_out,
      O => src_timeout_i_1_n_0
    );
src_timeout_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(24),
      I1 => timeout_age(25),
      O => src_timeout_i_10_n_0
    );
src_timeout_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(22),
      I1 => timeout_age(23),
      O => src_timeout_i_12_n_0
    );
src_timeout_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(20),
      I1 => timeout_age(21),
      O => src_timeout_i_13_n_0
    );
src_timeout_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(18),
      I1 => timeout_age(19),
      O => src_timeout_i_14_n_0
    );
src_timeout_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(16),
      I1 => timeout_age(17),
      O => src_timeout_i_15_n_0
    );
src_timeout_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(12),
      I1 => timeout_age(13),
      O => src_timeout_i_17_n_0
    );
src_timeout_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timeout_age(10),
      I1 => timeout_age(11),
      O => src_timeout_i_18_n_0
    );
src_timeout_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timeout_age(8),
      I1 => timeout_age(9),
      O => src_timeout_i_19_n_0
    );
src_timeout_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => req,
      I1 => ack_s(1),
      O => state1
    );
src_timeout_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(14),
      I1 => timeout_age(15),
      O => src_timeout_i_20_n_0
    );
src_timeout_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(13),
      I1 => timeout_age(12),
      O => src_timeout_i_21_n_0
    );
src_timeout_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout_age(10),
      I1 => timeout_age(11),
      O => src_timeout_i_22_n_0
    );
src_timeout_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout_age(8),
      I1 => timeout_age(9),
      O => src_timeout_i_23_n_0
    );
src_timeout_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(6),
      I1 => timeout_age(7),
      O => src_timeout_i_24_n_0
    );
src_timeout_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(4),
      I1 => timeout_age(5),
      O => src_timeout_i_25_n_0
    );
src_timeout_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(2),
      I1 => timeout_age(3),
      O => src_timeout_i_26_n_0
    );
src_timeout_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => timeout_age(0),
      I1 => timeout_age(1),
      O => src_timeout_i_27_n_0
    );
src_timeout_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(30),
      I1 => timeout_age(31),
      O => src_timeout_i_5_n_0
    );
src_timeout_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timeout_age(28),
      I1 => timeout_age(29),
      O => src_timeout_i_6_n_0
    );
src_timeout_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout_age(30),
      I1 => timeout_age(31),
      O => src_timeout_i_7_n_0
    );
src_timeout_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout_age(28),
      I1 => timeout_age(29),
      O => src_timeout_i_8_n_0
    );
src_timeout_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timeout_age(26),
      I1 => timeout_age(27),
      O => src_timeout_i_9_n_0
    );
src_timeout_reg: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => '1',
      CLR => src_ack_i_2_n_0,
      D => src_timeout_i_1_n_0,
      Q => box_timeout
    );
src_timeout_reg_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => src_timeout_reg_i_16_n_0,
      CO(3) => src_timeout_reg_i_11_n_0,
      CO(2) => src_timeout_reg_i_11_n_1,
      CO(1) => src_timeout_reg_i_11_n_2,
      CO(0) => src_timeout_reg_i_11_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => src_timeout_i_17_n_0,
      DI(1) => src_timeout_i_18_n_0,
      DI(0) => src_timeout_i_19_n_0,
      O(3 downto 0) => NLW_src_timeout_reg_i_11_O_UNCONNECTED(3 downto 0),
      S(3) => src_timeout_i_20_n_0,
      S(2) => src_timeout_i_21_n_0,
      S(1) => src_timeout_i_22_n_0,
      S(0) => src_timeout_i_23_n_0
    );
src_timeout_reg_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => src_timeout_reg_i_16_n_0,
      CO(2) => src_timeout_reg_i_16_n_1,
      CO(1) => src_timeout_reg_i_16_n_2,
      CO(0) => src_timeout_reg_i_16_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_src_timeout_reg_i_16_O_UNCONNECTED(3 downto 0),
      S(3) => src_timeout_i_24_n_0,
      S(2) => src_timeout_i_25_n_0,
      S(1) => src_timeout_i_26_n_0,
      S(0) => src_timeout_i_27_n_0
    );
src_timeout_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => src_timeout_reg_i_4_n_0,
      CO(3) => state0,
      CO(2) => src_timeout_reg_i_3_n_1,
      CO(1) => src_timeout_reg_i_3_n_2,
      CO(0) => src_timeout_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => src_timeout_i_5_n_0,
      DI(2) => src_timeout_i_6_n_0,
      DI(1) => timeout_age(27),
      DI(0) => timeout_age(25),
      O(3 downto 0) => NLW_src_timeout_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => src_timeout_i_7_n_0,
      S(2) => src_timeout_i_8_n_0,
      S(1) => src_timeout_i_9_n_0,
      S(0) => src_timeout_i_10_n_0
    );
src_timeout_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => src_timeout_reg_i_11_n_0,
      CO(3) => src_timeout_reg_i_4_n_0,
      CO(2) => src_timeout_reg_i_4_n_1,
      CO(1) => src_timeout_reg_i_4_n_2,
      CO(0) => src_timeout_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => timeout_age(19),
      DI(0) => timeout_age(17),
      O(3 downto 0) => NLW_src_timeout_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => src_timeout_i_12_n_0,
      S(2) => src_timeout_i_13_n_0,
      S(1) => src_timeout_i_14_n_0,
      S(0) => src_timeout_i_15_n_0
    );
\timeout_age[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101010"
    )
        port map (
      I0 => timeout_age(0),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(0)
    );
\timeout_age[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(10),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(10)
    );
\timeout_age[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(11),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(11)
    );
\timeout_age[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(12),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(12)
    );
\timeout_age[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(13),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(13)
    );
\timeout_age[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(14),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(14)
    );
\timeout_age[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(15),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(15)
    );
\timeout_age[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(16),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(16)
    );
\timeout_age[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(17),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(17)
    );
\timeout_age[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(18),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(18)
    );
\timeout_age[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(19),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(19)
    );
\timeout_age[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(1)
    );
\timeout_age[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(20),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(20)
    );
\timeout_age[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(21),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(21)
    );
\timeout_age[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(22),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(22)
    );
\timeout_age[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(23),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(23)
    );
\timeout_age[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(24),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(24)
    );
\timeout_age[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(25),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(25)
    );
\timeout_age[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(26),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(26)
    );
\timeout_age[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(27),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(27)
    );
\timeout_age[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(28),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(28)
    );
\timeout_age[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(29),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(29)
    );
\timeout_age[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(2),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(2)
    );
\timeout_age[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(30),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(30)
    );
\timeout_age[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFBAAAAA"
    )
        port map (
      I0 => state136_out,
      I1 => \timeout_age[31]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => state029_out,
      I4 => \state__0\(1),
      I5 => \state__0\(2),
      O => \timeout_age[31]_i_1_n_0\
    );
\timeout_age[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(31),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(31)
    );
\timeout_age[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => ack_s(1),
      I1 => req,
      I2 => state0,
      O => \timeout_age[31]_i_3_n_0\
    );
\timeout_age[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => box_send,
      I1 => ready_s(1),
      O => state029_out
    );
\timeout_age[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(3),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(3)
    );
\timeout_age[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(4),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(4)
    );
\timeout_age[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(5),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(5)
    );
\timeout_age[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(6),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(6)
    );
\timeout_age[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(7),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(7)
    );
\timeout_age[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(8),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(8)
    );
\timeout_age[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => in8(9),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => box_recover,
      I5 => box_invalidate,
      O => \p_1_in__0\(9)
    );
\timeout_age_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(0),
      Q => timeout_age(0)
    );
\timeout_age_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(10),
      Q => timeout_age(10)
    );
\timeout_age_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(11),
      Q => timeout_age(11)
    );
\timeout_age_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(12),
      Q => timeout_age(12)
    );
\timeout_age_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[8]_i_2_n_0\,
      CO(3) => \timeout_age_reg[12]_i_2_n_0\,
      CO(2) => \timeout_age_reg[12]_i_2_n_1\,
      CO(1) => \timeout_age_reg[12]_i_2_n_2\,
      CO(0) => \timeout_age_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3 downto 0) => timeout_age(12 downto 9)
    );
\timeout_age_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(13),
      Q => timeout_age(13)
    );
\timeout_age_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(14),
      Q => timeout_age(14)
    );
\timeout_age_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(15),
      Q => timeout_age(15)
    );
\timeout_age_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(16),
      Q => timeout_age(16)
    );
\timeout_age_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[12]_i_2_n_0\,
      CO(3) => \timeout_age_reg[16]_i_2_n_0\,
      CO(2) => \timeout_age_reg[16]_i_2_n_1\,
      CO(1) => \timeout_age_reg[16]_i_2_n_2\,
      CO(0) => \timeout_age_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(16 downto 13),
      S(3 downto 0) => timeout_age(16 downto 13)
    );
\timeout_age_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(17),
      Q => timeout_age(17)
    );
\timeout_age_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(18),
      Q => timeout_age(18)
    );
\timeout_age_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(19),
      Q => timeout_age(19)
    );
\timeout_age_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(1),
      Q => timeout_age(1)
    );
\timeout_age_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(20),
      Q => timeout_age(20)
    );
\timeout_age_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[16]_i_2_n_0\,
      CO(3) => \timeout_age_reg[20]_i_2_n_0\,
      CO(2) => \timeout_age_reg[20]_i_2_n_1\,
      CO(1) => \timeout_age_reg[20]_i_2_n_2\,
      CO(0) => \timeout_age_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(20 downto 17),
      S(3 downto 0) => timeout_age(20 downto 17)
    );
\timeout_age_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(21),
      Q => timeout_age(21)
    );
\timeout_age_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(22),
      Q => timeout_age(22)
    );
\timeout_age_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(23),
      Q => timeout_age(23)
    );
\timeout_age_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(24),
      Q => timeout_age(24)
    );
\timeout_age_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[20]_i_2_n_0\,
      CO(3) => \timeout_age_reg[24]_i_2_n_0\,
      CO(2) => \timeout_age_reg[24]_i_2_n_1\,
      CO(1) => \timeout_age_reg[24]_i_2_n_2\,
      CO(0) => \timeout_age_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(24 downto 21),
      S(3 downto 0) => timeout_age(24 downto 21)
    );
\timeout_age_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(25),
      Q => timeout_age(25)
    );
\timeout_age_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(26),
      Q => timeout_age(26)
    );
\timeout_age_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(27),
      Q => timeout_age(27)
    );
\timeout_age_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(28),
      Q => timeout_age(28)
    );
\timeout_age_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[24]_i_2_n_0\,
      CO(3) => \timeout_age_reg[28]_i_2_n_0\,
      CO(2) => \timeout_age_reg[28]_i_2_n_1\,
      CO(1) => \timeout_age_reg[28]_i_2_n_2\,
      CO(0) => \timeout_age_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(28 downto 25),
      S(3 downto 0) => timeout_age(28 downto 25)
    );
\timeout_age_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(29),
      Q => timeout_age(29)
    );
\timeout_age_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(2),
      Q => timeout_age(2)
    );
\timeout_age_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(30),
      Q => timeout_age(30)
    );
\timeout_age_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(31),
      Q => timeout_age(31)
    );
\timeout_age_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_timeout_age_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timeout_age_reg[31]_i_5_n_2\,
      CO(0) => \timeout_age_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_timeout_age_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => in8(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => timeout_age(31 downto 29)
    );
\timeout_age_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(3),
      Q => timeout_age(3)
    );
\timeout_age_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(4),
      Q => timeout_age(4)
    );
\timeout_age_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timeout_age_reg[4]_i_2_n_0\,
      CO(2) => \timeout_age_reg[4]_i_2_n_1\,
      CO(1) => \timeout_age_reg[4]_i_2_n_2\,
      CO(0) => \timeout_age_reg[4]_i_2_n_3\,
      CYINIT => timeout_age(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(4 downto 1),
      S(3 downto 0) => timeout_age(4 downto 1)
    );
\timeout_age_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(5),
      Q => timeout_age(5)
    );
\timeout_age_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(6),
      Q => timeout_age(6)
    );
\timeout_age_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(7),
      Q => timeout_age(7)
    );
\timeout_age_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(8),
      Q => timeout_age(8)
    );
\timeout_age_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timeout_age_reg[4]_i_2_n_0\,
      CO(3) => \timeout_age_reg[8]_i_2_n_0\,
      CO(2) => \timeout_age_reg[8]_i_2_n_1\,
      CO(1) => \timeout_age_reg[8]_i_2_n_2\,
      CO(0) => \timeout_age_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3 downto 0) => timeout_age(8 downto 5)
    );
\timeout_age_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => box_src_clk,
      CE => \timeout_age[31]_i_1_n_0\,
      CLR => src_ack_i_2_n_0,
      D => \p_1_in__0\(9),
      Q => timeout_age(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay is
  port (
    overlay_de : out STD_LOGIC;
    overlay_hs : out STD_LOGIC;
    overlay_vs : out STD_LOGIC;
    \dst_payload_reg[40]\ : out STD_LOGIC;
    \dst_payload_reg[67]\ : out STD_LOGIC;
    \dst_payload_reg[67]_0\ : out STD_LOGIC;
    \rgb_o[20]_i_69_0\ : out STD_LOGIC;
    \rgb_o[20]_i_74_0\ : out STD_LOGIC;
    \rgb_o_reg[20]_i_134\ : out STD_LOGIC;
    \rgb_o[20]_i_64_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 20 downto 0 );
    text_s10 : out STD_LOGIC;
    \rgb_o_reg[8]_0\ : in STD_LOGIC;
    de : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    hs : in STD_LOGIC;
    vs : in STD_LOGIC;
    \rgb_o_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o_reg[8]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_202\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_16_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_22_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_22_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_23_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_23_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rgb_o[20]_i_23_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_23_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_20\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rgb_o[20]_i_20_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_21_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rgb_o[20]_i_21_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_21_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep_mode : in STD_LOGIC;
    \base_s1_reg[0]\ : in STD_LOGIC;
    \base_s1_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    text_s1_reg : in STD_LOGIC;
    text_s1_reg_0 : in STD_LOGIC;
    text_s1_reg_1 : in STD_LOGIC;
    \rgb_o_reg[0]_0\ : in STD_LOGIC;
    rgb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \rgb_o_reg[13]_0\ : in STD_LOGIC;
    \rgb_o_reg[12]_0\ : in STD_LOGIC;
    \rgb_o_reg[11]_0\ : in STD_LOGIC;
    \rgb_o_reg[10]_0\ : in STD_LOGIC;
    \rgb_o_reg[9]_0\ : in STD_LOGIC;
    \rgb_o_reg[8]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay : entity is "hdmi_bbox_overlay";
end facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay is
  signal \^dst_payload_reg[67]_0\ : STD_LOGIC;
  signal \^overlay_de\ : STD_LOGIC;
  signal overlay_rgb : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \rgb_o[20]_i_55_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_63_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_64_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_68_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_69_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_73_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_74_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \base_s1[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \base_s1[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \base_s1[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \base_s1[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \base_s1[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \base_s1[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \base_s1[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \base_s1[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \base_s1[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \base_s1[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \base_s1[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \base_s1[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \base_s1[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \base_s1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \base_s1[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \base_s1[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \base_s1[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \base_s1[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \base_s1[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \base_s1[9]_i_1\ : label is "soft_lutpair11";
begin
  \dst_payload_reg[67]_0\ <= \^dst_payload_reg[67]_0\;
  overlay_de <= \^overlay_de\;
\base_s1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(0),
      O => D(0)
    );
\base_s1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(10),
      O => D(9)
    );
\base_s1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(11),
      O => D(10)
    );
\base_s1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(12),
      O => D(11)
    );
\base_s1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(13),
      O => D(12)
    );
\base_s1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(8),
      O => D(13)
    );
\base_s1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(9),
      O => D(14)
    );
\base_s1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(16),
      O => D(15)
    );
\base_s1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(17),
      O => D(16)
    );
\base_s1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(18),
      O => D(17)
    );
\base_s1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(19),
      O => D(18)
    );
\base_s1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(1),
      O => D(1)
    );
\base_s1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(20),
      O => D(19)
    );
\base_s1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(17),
      O => D(20)
    );
\base_s1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(2),
      O => D(2)
    );
\base_s1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(3),
      O => D(3)
    );
\base_s1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(4),
      O => D(4)
    );
\base_s1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(0),
      O => D(5)
    );
\base_s1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(1),
      O => D(6)
    );
\base_s1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(8),
      O => D(7)
    );
\base_s1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]\,
      I2 => \base_s1_reg[0]_0\,
      I3 => overlay_rgb(9),
      O => D(8)
    );
de_o_reg: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => de,
      Q => \^overlay_de\,
      R => \rgb_o_reg[8]_0\
    );
hs_o_reg: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => hs,
      Q => overlay_hs,
      R => \rgb_o_reg[8]_0\
    );
\rgb_o[20]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE000000"
    )
        port map (
      I0 => \rgb_o[20]_i_202\(0),
      I1 => \rgb_o[20]_i_202\(1),
      I2 => \^dst_payload_reg[67]_0\,
      I3 => \rgb_o[20]_i_16_0\(0),
      I4 => \rgb_o[20]_i_16_0\(1),
      I5 => \rgb_o[20]_i_55_n_0\,
      O => \dst_payload_reg[67]\
    );
\rgb_o[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808888"
    )
        port map (
      I0 => \rgb_o_reg[8]_1\(0),
      I1 => \rgb_o_reg[8]_2\(3),
      I2 => \rgb_o_reg[8]_2\(1),
      I3 => \rgb_o_reg[8]_2\(2),
      I4 => \rgb_o[20]_i_9_n_0\,
      O => \dst_payload_reg[40]\
    );
\rgb_o[20]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rgb_o[20]_i_21_0\(2),
      I1 => \rgb_o[20]_i_6\(2),
      I2 => \rgb_o[20]_i_21_1\(1),
      I3 => \rgb_o[20]_i_21_1\(0),
      I4 => \rgb_o[20]_i_63_n_0\,
      I5 => \rgb_o[20]_i_64_n_0\,
      O => \rgb_o[20]_i_64_0\
    );
\rgb_o[20]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => O(2),
      I1 => CO(0),
      I2 => \rgb_o[20]_i_22_0\(2),
      I3 => O(0),
      I4 => \rgb_o[20]_i_68_n_0\,
      I5 => \rgb_o[20]_i_69_n_0\,
      O => \rgb_o[20]_i_69_0\
    );
\rgb_o[20]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \rgb_o[20]_i_23_0\(0),
      I1 => \rgb_o[20]_i_23_1\(0),
      I2 => \rgb_o[20]_i_23_2\(2),
      I3 => \rgb_o[20]_i_73_n_0\,
      I4 => \rgb_o[20]_i_74_n_0\,
      O => \rgb_o[20]_i_74_0\
    );
\rgb_o[20]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rgb_o[20]_i_202\(2),
      I1 => \rgb_o[20]_i_202\(3),
      O => \^dst_payload_reg[67]_0\
    );
\rgb_o[20]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rgb_o[20]_i_16_0\(2),
      I1 => \rgb_o[20]_i_16_0\(3),
      O => \rgb_o[20]_i_55_n_0\
    );
\rgb_o[20]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_20\(0),
      I1 => \rgb_o[20]_i_20\(2),
      I2 => \rgb_o[20]_i_20_0\(0),
      I3 => \rgb_o[20]_i_20\(1),
      O => \rgb_o_reg[20]_i_134\
    );
\rgb_o[20]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \rgb_o[20]_i_21_2\(0),
      I1 => \rgb_o[20]_i_6\(0),
      I2 => \rgb_o[20]_i_21_0\(1),
      I3 => \rgb_o[20]_i_21_1\(3),
      O => \rgb_o[20]_i_63_n_0\
    );
\rgb_o[20]_i_64\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_21_0\(3),
      I1 => \rgb_o[20]_i_21_1\(2),
      I2 => \rgb_o[20]_i_6\(1),
      I3 => \rgb_o[20]_i_21_0\(0),
      O => \rgb_o[20]_i_64_n_0\
    );
\rgb_o[20]_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_22_1\(0),
      I1 => \rgb_o[20]_i_22_1\(3),
      I2 => \rgb_o[20]_i_22_0\(3),
      I3 => \rgb_o[20]_i_22_1\(2),
      O => \rgb_o[20]_i_68_n_0\
    );
\rgb_o[20]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_22_0\(1),
      I1 => \rgb_o[20]_i_22_1\(1),
      I2 => O(1),
      I3 => \rgb_o[20]_i_22_0\(0),
      O => \rgb_o[20]_i_69_n_0\
    );
\rgb_o[20]_i_73\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \rgb_o[20]_i_23_0\(1),
      I1 => \rgb_o[20]_i_23_0\(2),
      I2 => \rgb_o[20]_i_23_3\(0),
      I3 => \rgb_o[20]_i_23_0\(3),
      O => \rgb_o[20]_i_73_n_0\
    );
\rgb_o[20]_i_74\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rgb_o[20]_i_23_2\(0),
      I1 => \rgb_o[20]_i_23_1\(1),
      I2 => \rgb_o[20]_i_23_2\(1),
      I3 => \rgb_o[20]_i_23_2\(3),
      O => \rgb_o[20]_i_74_n_0\
    );
\rgb_o[20]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => \rgb_o_reg[8]_2\(0),
      I1 => \rgb_o[20]_i_2_0\(1),
      I2 => \rgb_o[20]_i_2_0\(2),
      I3 => \rgb_o[20]_i_2_0\(3),
      I4 => \rgb_o[20]_i_2_0\(0),
      O => \rgb_o[20]_i_9_n_0\
    );
\rgb_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(0),
      Q => overlay_rgb(0),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[10]_0\,
      Q => overlay_rgb(10),
      R => \rgb_o_reg[8]_0\
    );
\rgb_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[11]_0\,
      Q => overlay_rgb(11),
      R => \rgb_o_reg[8]_0\
    );
\rgb_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[12]_0\,
      Q => overlay_rgb(12),
      R => \rgb_o_reg[8]_0\
    );
\rgb_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[13]_0\,
      Q => overlay_rgb(13),
      R => \rgb_o_reg[8]_0\
    );
\rgb_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(5),
      Q => overlay_rgb(16),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(6),
      Q => overlay_rgb(17),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(7),
      Q => overlay_rgb(18),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(8),
      Q => overlay_rgb(19),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(1),
      Q => overlay_rgb(1),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(9),
      Q => overlay_rgb(20),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(2),
      Q => overlay_rgb(2),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(3),
      Q => overlay_rgb(3),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => rgb(4),
      Q => overlay_rgb(4),
      R => \rgb_o_reg[0]_0\
    );
\rgb_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[8]_3\,
      Q => overlay_rgb(8),
      R => \rgb_o_reg[8]_0\
    );
\rgb_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \rgb_o_reg[9]_0\,
      Q => overlay_rgb(9),
      R => \rgb_o_reg[8]_0\
    );
text_s1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020200000200"
    )
        port map (
      I0 => \^overlay_de\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => text_s1_reg,
      I4 => text_s1_reg_0,
      I5 => text_s1_reg_1,
      O => text_s10
    );
vs_o_reg: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => vs,
      Q => overlay_vs,
      R => \rgb_o_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_raster is
  port (
    disable_sync_reg : out STD_LOGIC;
    disable_sync_reg_0 : out STD_LOGIC;
    disable_sync_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    active : out STD_LOGIC;
    \v_count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    disable_sync_reg_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    disable_sync_reg_3 : out STD_LOGIC;
    s_tready : out STD_LOGIC;
    raw_vs : out STD_LOGIC;
    frame_start0 : out STD_LOGIC;
    raw_hs : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    stream_locked_reg : in STD_LOGIC;
    underflow_sticky0 : in STD_LOGIC;
    status : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    \v_count_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_raster : entity is "tx2_raster";
end facebox_system_tx2_axis_sink_0_0_tx2_raster;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_raster is
  signal \^active\ : STD_LOGIC;
  signal \active_x[10]_i_2_n_0\ : STD_LOGIC;
  signal \active_x[8]_i_2_n_0\ : STD_LOGIC;
  signal \active_y[8]_i_2_n_0\ : STD_LOGIC;
  signal \active_y[9]_i_2_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal de_i_2_n_0 : STD_LOGIC;
  signal de_i_3_n_0 : STD_LOGIC;
  signal de_i_4_n_0 : STD_LOGIC;
  signal de_i_5_n_0 : STD_LOGIC;
  signal de_i_6_n_0 : STD_LOGIC;
  signal de_i_7_n_0 : STD_LOGIC;
  signal de_i_8_n_0 : STD_LOGIC;
  signal de_i_9_n_0 : STD_LOGIC;
  signal first_pixel : STD_LOGIC;
  signal frame_start_i_2_n_0 : STD_LOGIC;
  signal frame_start_i_3_n_0 : STD_LOGIC;
  signal frame_start_i_4_n_0 : STD_LOGIC;
  signal \frames_displayed[15]_i_6_n_0\ : STD_LOGIC;
  signal \frames_displayed[15]_i_7_n_0\ : STD_LOGIC;
  signal \frames_displayed[15]_i_9_n_0\ : STD_LOGIC;
  signal h_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_count[11]_i_3_n_0\ : STD_LOGIC;
  signal h_count_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_count_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \h_count_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \h_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \h_count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \h_count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \h_count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \h_count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \h_count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \h_count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal hs_i_2_n_0 : STD_LOGIC;
  signal last_column : STD_LOGIC;
  signal last_pixel : STD_LOGIC;
  signal rgb1 : STD_LOGIC;
  signal rgb111_out : STD_LOGIC;
  signal s_tready_INST_0_i_10_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_11_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_12_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_13_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_14_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_15_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_16_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_7_n_0 : STD_LOGIC;
  signal s_tready_INST_0_i_9_n_0 : STD_LOGIC;
  signal v_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_count0_carry__0_n_0\ : STD_LOGIC;
  signal \v_count0_carry__0_n_1\ : STD_LOGIC;
  signal \v_count0_carry__0_n_2\ : STD_LOGIC;
  signal \v_count0_carry__0_n_3\ : STD_LOGIC;
  signal \v_count0_carry__0_n_4\ : STD_LOGIC;
  signal \v_count0_carry__0_n_5\ : STD_LOGIC;
  signal \v_count0_carry__0_n_6\ : STD_LOGIC;
  signal \v_count0_carry__0_n_7\ : STD_LOGIC;
  signal \v_count0_carry__1_n_2\ : STD_LOGIC;
  signal \v_count0_carry__1_n_3\ : STD_LOGIC;
  signal \v_count0_carry__1_n_5\ : STD_LOGIC;
  signal \v_count0_carry__1_n_6\ : STD_LOGIC;
  signal \v_count0_carry__1_n_7\ : STD_LOGIC;
  signal v_count0_carry_n_0 : STD_LOGIC;
  signal v_count0_carry_n_1 : STD_LOGIC;
  signal v_count0_carry_n_2 : STD_LOGIC;
  signal v_count0_carry_n_3 : STD_LOGIC;
  signal v_count0_carry_n_4 : STD_LOGIC;
  signal v_count0_carry_n_5 : STD_LOGIC;
  signal v_count0_carry_n_6 : STD_LOGIC;
  signal v_count0_carry_n_7 : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[11]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[11]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[11]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[11]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal v_count_0 : STD_LOGIC;
  signal window1 : STD_LOGIC;
  signal \NLW_h_count_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h_count_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_count0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \active_x[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \active_x[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \active_x[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \active_x[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \active_x[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \active_x[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \active_x[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \active_x[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \active_x[8]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \active_x[9]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \active_y[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \active_y[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \active_y[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \active_y[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \active_y[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \active_y[8]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of de_i_3 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of de_i_6 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of de_i_9 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of frame_start_i_4 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \frames_displayed[15]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \h_count[10]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \h_count[11]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \h_count[5]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \h_count[8]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \h_count[9]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of hs_i_2 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of pixel_ok_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rgb[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rgb[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rgb[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rgb[12]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rgb[13]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rgb[16]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rgb[17]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rgb[18]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rgb[19]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rgb[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rgb[20]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rgb[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rgb[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rgb[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rgb[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rgb[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_10 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_12 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_13 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_14 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_15 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_16 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_3 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_5 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of s_tready_INST_0_i_9 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of stream_locked_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of underflow_sticky_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \v_count[11]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \v_count[11]_i_4\ : label is "soft_lutpair62";
begin
  active <= \^active\;
\active_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^active\,
      I1 => h_count(0),
      O => D(0)
    );
\active_x[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20008A"
    )
        port map (
      I0 => \^active\,
      I1 => \active_x[10]_i_2_n_0\,
      I2 => h_count(8),
      I3 => h_count(9),
      I4 => h_count(10),
      O => D(10)
    );
\active_x[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(3),
      I2 => h_count(2),
      I3 => h_count(4),
      I4 => h_count(7),
      I5 => h_count(6),
      O => \active_x[10]_i_2_n_0\
    );
\active_x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^active\,
      I1 => h_count(1),
      O => D(1)
    );
\active_x[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^active\,
      I1 => h_count(2),
      O => D(2)
    );
\active_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(3),
      I2 => \^active\,
      O => D(3)
    );
\active_x[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(4),
      I3 => \^active\,
      O => D(4)
    );
\active_x[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE010000"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(2),
      I2 => h_count(3),
      I3 => h_count(5),
      I4 => \^active\,
      O => D(5)
    );
\active_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => h_count(5),
      I1 => h_count(3),
      I2 => h_count(2),
      I3 => h_count(4),
      I4 => h_count(6),
      I5 => \^active\,
      O => D(6)
    );
\active_x[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A802"
    )
        port map (
      I0 => \^active\,
      I1 => h_count(5),
      I2 => \active_x[8]_i_2_n_0\,
      I3 => h_count(7),
      I4 => h_count(6),
      O => D(7)
    );
\active_x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAA8"
    )
        port map (
      I0 => \^active\,
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => \active_x[8]_i_2_n_0\,
      I4 => h_count(5),
      I5 => h_count(8),
      O => D(8)
    );
\active_x[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(4),
      O => \active_x[8]_i_2_n_0\
    );
\active_x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5900"
    )
        port map (
      I0 => h_count(9),
      I1 => h_count(8),
      I2 => \active_x[10]_i_2_n_0\,
      I3 => \^active\,
      O => D(9)
    );
\active_y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^active\,
      I1 => v_count(0),
      O => \v_count_reg[8]_0\(0)
    );
\active_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      I2 => \^active\,
      O => \v_count_reg[8]_0\(1)
    );
\active_y[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(2),
      I3 => \^active\,
      O => \v_count_reg[8]_0\(2)
    );
\active_y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AAA8"
    )
        port map (
      I0 => \^active\,
      I1 => v_count(2),
      I2 => v_count(0),
      I3 => v_count(1),
      I4 => v_count(3),
      O => \v_count_reg[8]_0\(3)
    );
\active_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222A88888880"
    )
        port map (
      I0 => \^active\,
      I1 => v_count(3),
      I2 => v_count(1),
      I3 => v_count(0),
      I4 => v_count(2),
      I5 => v_count(4),
      O => \v_count_reg[8]_0\(4)
    );
\active_y[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80002AAA"
    )
        port map (
      I0 => \^active\,
      I1 => de_i_3_n_0,
      I2 => v_count(3),
      I3 => v_count(4),
      I4 => v_count(5),
      O => \v_count_reg[8]_0\(5)
    );
\active_y[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C084848484848484"
    )
        port map (
      I0 => v_count(5),
      I1 => \^active\,
      I2 => v_count(6),
      I3 => de_i_3_n_0,
      I4 => v_count(3),
      I5 => v_count(4),
      O => \v_count_reg[8]_0\(6)
    );
\active_y[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9AA0000"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => \active_y[8]_i_2_n_0\,
      I4 => \^active\,
      O => \v_count_reg[8]_0\(7)
    );
\active_y[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC9CCCC00000000"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(8),
      I2 => v_count(5),
      I3 => v_count(6),
      I4 => \active_y[8]_i_2_n_0\,
      I5 => \^active\,
      O => \v_count_reg[8]_0\(8)
    );
\active_y[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => v_count(1),
      I3 => v_count(0),
      I4 => v_count(2),
      O => \active_y[8]_i_2_n_0\
    );
\active_y[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA20008"
    )
        port map (
      I0 => \^active\,
      I1 => \active_y[9]_i_2_n_0\,
      I2 => v_count(8),
      I3 => v_count(7),
      I4 => v_count(9),
      O => \v_count_reg[8]_0\(9)
    );
\active_y[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => de_i_3_n_0,
      I1 => v_count(3),
      I2 => v_count(4),
      I3 => v_count(6),
      I4 => v_count(5),
      O => \active_y[9]_i_2_n_0\
    );
de_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555400000000000"
    )
        port map (
      I0 => de_i_2_n_0,
      I1 => v_count(4),
      I2 => v_count(3),
      I3 => de_i_3_n_0,
      I4 => de_i_4_n_0,
      I5 => de_i_5_n_0,
      O => \^active\
    );
de_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF4FFF0FFFF"
    )
        port map (
      I0 => \active_x[8]_i_2_n_0\,
      I1 => frame_start_i_4_n_0,
      I2 => de_i_6_n_0,
      I3 => de_i_7_n_0,
      I4 => s_tready_INST_0_i_13_n_0,
      I5 => h_count(8),
      O => de_i_2_n_0
    );
de_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(2),
      O => de_i_3_n_0
    );
de_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      I2 => de_i_8_n_0,
      I3 => v_count(9),
      I4 => v_count(7),
      I5 => v_count(8),
      O => de_i_4_n_0
    );
de_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004FF0000FFFF"
    )
        port map (
      I0 => \active_x[8]_i_2_n_0\,
      I1 => frame_start_i_4_n_0,
      I2 => h_count(8),
      I3 => h_count(10),
      I4 => h_count(11),
      I5 => h_count(9),
      O => de_i_5_n_0
    );
de_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      I2 => v_count(10),
      I3 => v_count(11),
      O => de_i_6_n_0
    );
de_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A8000000A000"
    )
        port map (
      I0 => v_count(9),
      I1 => de_i_3_n_0,
      I2 => v_count(4),
      I3 => v_count(7),
      I4 => de_i_9_n_0,
      I5 => v_count(3),
      O => de_i_7_n_0
    );
de_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_count(11),
      I1 => v_count(10),
      O => de_i_8_n_0
    );
de_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      O => de_i_9_n_0
    );
frame_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => frame_start_i_2_n_0,
      I1 => frame_start_i_3_n_0,
      I2 => frame_start_i_4_n_0,
      I3 => h_count(10),
      I4 => h_count(9),
      I5 => h_count(11),
      O => frame_start0
    );
frame_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(3),
      I3 => v_count(4),
      I4 => v_count(2),
      I5 => de_i_4_n_0,
      O => frame_start_i_2_n_0
    );
frame_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(3),
      I2 => h_count(0),
      I3 => h_count(1),
      I4 => h_count(4),
      I5 => h_count(8),
      O => frame_start_i_3_n_0
    );
frame_start_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(6),
      I2 => h_count(5),
      O => frame_start_i_4_n_0
    );
\frames_displayed[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => last_pixel,
      O => disable_sync_reg_1
    );
\frames_displayed[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808880"
    )
        port map (
      I0 => \frames_displayed[15]_i_6_n_0\,
      I1 => rst_n,
      I2 => rgb111_out,
      I3 => s_tvalid,
      I4 => s_tuser,
      I5 => stream_locked_reg,
      O => rgb1
    );
\frames_displayed[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \frames_displayed[15]_i_7_n_0\,
      I1 => v_count(9),
      I2 => v_count(5),
      I3 => v_count(6),
      I4 => de_i_3_n_0,
      I5 => last_column,
      O => last_pixel
    );
\frames_displayed[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => s_tvalid,
      I1 => s_tlast,
      I2 => last_column,
      I3 => first_pixel,
      I4 => s_tuser,
      O => \frames_displayed[15]_i_6_n_0\
    );
\frames_displayed[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => v_count(11),
      I1 => v_count(10),
      I2 => v_count(4),
      I3 => v_count(3),
      I4 => v_count(7),
      I5 => v_count(8),
      O => \frames_displayed[15]_i_7_n_0\
    );
\frames_displayed[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \v_count[11]_i_4_n_0\,
      I1 => frame_start_i_4_n_0,
      I2 => \frames_displayed[15]_i_9_n_0\,
      I3 => h_count(8),
      I4 => h_count(4),
      I5 => h_count(1),
      O => last_column
    );
\frames_displayed[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(9),
      I1 => h_count(11),
      O => \frames_displayed[15]_i_9_n_0\
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \h_count[11]_i_3_n_0\,
      I1 => h_count(0),
      O => h_count_1(0)
    );
\h_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(10),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(10)
    );
\h_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(11),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(11)
    );
\h_count[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \v_count[11]_i_3_n_0\,
      I1 => \v_count[11]_i_4_n_0\,
      I2 => h_count(7),
      I3 => h_count(9),
      I4 => h_count(11),
      I5 => h_count(8),
      O => \h_count[11]_i_3_n_0\
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(1),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(2),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(3),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(4),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(5),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(6),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(7),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(7)
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(8),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(9),
      I1 => \h_count[11]_i_3_n_0\,
      O => h_count_1(9)
    );
\h_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(0),
      Q => h_count(0)
    );
\h_count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(10),
      Q => h_count(10)
    );
\h_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(11),
      Q => h_count(11)
    );
\h_count_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_h_count_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h_count_reg[11]_i_2_n_2\,
      CO(0) => \h_count_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_h_count_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => h_count(11 downto 9)
    );
\h_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(1),
      Q => h_count(1)
    );
\h_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(2),
      Q => h_count(2)
    );
\h_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(3),
      Q => h_count(3)
    );
\h_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(4),
      Q => h_count(4)
    );
\h_count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_count_reg[4]_i_2_n_0\,
      CO(2) => \h_count_reg[4]_i_2_n_1\,
      CO(1) => \h_count_reg[4]_i_2_n_2\,
      CO(0) => \h_count_reg[4]_i_2_n_3\,
      CYINIT => h_count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => h_count(4 downto 1)
    );
\h_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(5),
      Q => h_count(5)
    );
\h_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(6),
      Q => h_count(6)
    );
\h_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(7),
      Q => h_count(7)
    );
\h_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(8),
      Q => h_count(8)
    );
\h_count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_count_reg[4]_i_2_n_0\,
      CO(3) => \h_count_reg[8]_i_2_n_0\,
      CO(2) => \h_count_reg[8]_i_2_n_1\,
      CO(1) => \h_count_reg[8]_i_2_n_2\,
      CO(0) => \h_count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => h_count(8 downto 5)
    );
\h_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]_0\,
      D => h_count_1(9),
      Q => h_count(9)
    );
hs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020202"
    )
        port map (
      I0 => hs_i_2_n_0,
      I1 => h_count(7),
      I2 => h_count(6),
      I3 => h_count(5),
      I4 => h_count(4),
      I5 => h_count(3),
      O => raw_hs
    );
hs_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(9),
      I2 => h_count(11),
      I3 => h_count(8),
      O => hs_i_2_n_0
    );
pixel_ok_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \out\,
      I1 => rgb1,
      I2 => rgb111_out,
      O => disable_sync_reg_3
    );
\rgb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(2),
      O => disable_sync_reg_2(0)
    );
\rgb[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(5),
      O => disable_sync_reg_2(7)
    );
\rgb[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(6),
      O => disable_sync_reg_2(8)
    );
\rgb[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(7),
      O => disable_sync_reg_2(9)
    );
\rgb[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(8),
      O => disable_sync_reg_2(10)
    );
\rgb[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(13),
      O => disable_sync_reg_2(11)
    );
\rgb[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(14),
      O => disable_sync_reg_2(12)
    );
\rgb[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(15),
      O => disable_sync_reg_2(13)
    );
\rgb[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(11),
      O => disable_sync_reg_2(14)
    );
\rgb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(3),
      O => disable_sync_reg_2(1)
    );
\rgb[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(12),
      O => disable_sync_reg_2(15)
    );
\rgb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(4),
      O => disable_sync_reg_2(2)
    );
\rgb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(0),
      O => disable_sync_reg_2(3)
    );
\rgb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(1),
      O => disable_sync_reg_2(4)
    );
\rgb[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(9),
      O => disable_sync_reg_2(5)
    );
\rgb[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rgb111_out,
      I1 => rgb1,
      I2 => \out\,
      I3 => s_tdata(10),
      O => disable_sync_reg_2(6)
    );
s_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100000"
    )
        port map (
      I0 => stream_locked_reg,
      I1 => s_tuser,
      I2 => s_tvalid,
      I3 => rgb111_out,
      I4 => rst_n,
      O => s_tready
    );
s_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022202220220000"
    )
        port map (
      I0 => s_tready_INST_0_i_2_n_0,
      I1 => s_tready_INST_0_i_3_n_0,
      I2 => s_tready_INST_0_i_4_n_0,
      I3 => s_tready_INST_0_i_5_n_0,
      I4 => first_pixel,
      I5 => stream_locked_reg,
      O => rgb111_out
    );
s_tready_INST_0_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(11),
      I2 => v_count(10),
      I3 => v_count(6),
      I4 => v_count(5),
      O => s_tready_INST_0_i_10_n_0
    );
s_tready_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => s_tready_INST_0_i_16_n_0,
      I1 => v_count(7),
      I2 => v_count(8),
      I3 => v_count(2),
      I4 => v_count(4),
      I5 => v_count(3),
      O => s_tready_INST_0_i_11_n_0
    );
s_tready_INST_0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(2),
      I2 => h_count(3),
      I3 => h_count(8),
      I4 => h_count(7),
      O => s_tready_INST_0_i_12_n_0
    );
s_tready_INST_0_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count(11),
      I1 => h_count(9),
      I2 => h_count(10),
      O => s_tready_INST_0_i_13_n_0
    );
s_tready_INST_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(3),
      O => s_tready_INST_0_i_14_n_0
    );
s_tready_INST_0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => v_count(10),
      I1 => v_count(11),
      I2 => v_count(9),
      O => s_tready_INST_0_i_15_n_0
    );
s_tready_INST_0_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      O => s_tready_INST_0_i_16_n_0
    );
s_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C00C80008"
    )
        port map (
      I0 => s_tready_INST_0_i_7_n_0,
      I1 => window1,
      I2 => h_count(10),
      I3 => h_count(11),
      I4 => s_tready_INST_0_i_9_n_0,
      I5 => h_count(9),
      O => s_tready_INST_0_i_2_n_0
    );
s_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_count(10),
      I4 => v_count(11),
      O => s_tready_INST_0_i_3_n_0
    );
s_tready_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(9),
      O => s_tready_INST_0_i_4_n_0
    );
s_tready_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(2),
      I3 => v_count(3),
      I4 => v_count(4),
      O => s_tready_INST_0_i_5_n_0
    );
s_tready_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => s_tready_INST_0_i_10_n_0,
      I1 => s_tready_INST_0_i_11_n_0,
      I2 => s_tready_INST_0_i_12_n_0,
      I3 => \v_count[11]_i_3_n_0\,
      I4 => s_tready_INST_0_i_13_n_0,
      O => first_pixel
    );
s_tready_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(5),
      I2 => h_count(7),
      I3 => h_count(8),
      I4 => h_count(4),
      I5 => s_tready_INST_0_i_14_n_0,
      O => s_tready_INST_0_i_7_n_0
    );
s_tready_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FFFEFFF0"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(8),
      I3 => s_tready_INST_0_i_15_n_0,
      I4 => v_count(7),
      I5 => s_tready_INST_0_i_5_n_0,
      O => window1
    );
s_tready_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F00FFFF"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(4),
      I3 => frame_start_i_4_n_0,
      I4 => h_count(8),
      O => s_tready_INST_0_i_9_n_0
    );
stream_locked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020F0200"
    )
        port map (
      I0 => rgb1,
      I1 => last_pixel,
      I2 => \out\,
      I3 => rgb111_out,
      I4 => stream_locked_reg,
      O => disable_sync_reg
    );
underflow_sticky_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => rgb111_out,
      I1 => underflow_sticky0,
      I2 => \out\,
      I3 => rgb1,
      I4 => status(0),
      O => disable_sync_reg_0
    );
v_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_count0_carry_n_0,
      CO(2) => v_count0_carry_n_1,
      CO(1) => v_count0_carry_n_2,
      CO(0) => v_count0_carry_n_3,
      CYINIT => v_count(0),
      DI(3 downto 0) => B"0000",
      O(3) => v_count0_carry_n_4,
      O(2) => v_count0_carry_n_5,
      O(1) => v_count0_carry_n_6,
      O(0) => v_count0_carry_n_7,
      S(3 downto 0) => v_count(4 downto 1)
    );
\v_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_count0_carry_n_0,
      CO(3) => \v_count0_carry__0_n_0\,
      CO(2) => \v_count0_carry__0_n_1\,
      CO(1) => \v_count0_carry__0_n_2\,
      CO(0) => \v_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_count0_carry__0_n_4\,
      O(2) => \v_count0_carry__0_n_5\,
      O(1) => \v_count0_carry__0_n_6\,
      O(0) => \v_count0_carry__0_n_7\,
      S(3 downto 0) => v_count(8 downto 5)
    );
\v_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_count0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_v_count0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_count0_carry__1_n_2\,
      CO(0) => \v_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_count0_carry__1_O_UNCONNECTED\(3),
      O(2) => \v_count0_carry__1_n_5\,
      O(1) => \v_count0_carry__1_n_6\,
      O(0) => \v_count0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => v_count(11 downto 9)
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFBF"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => v_count(0),
      O => \v_count[0]_i_1_n_0\
    );
\v_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__1_n_6\,
      O => \v_count[10]_i_1_n_0\
    );
\v_count[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \v_count[11]_i_3_n_0\,
      I1 => h_count(8),
      I2 => h_count(7),
      I3 => h_count(11),
      I4 => h_count(9),
      I5 => \v_count[11]_i_4_n_0\,
      O => v_count_0
    );
\v_count[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__1_n_5\,
      O => \v_count[11]_i_2_n_0\
    );
\v_count[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => h_count(4),
      I1 => h_count(1),
      I2 => h_count(5),
      I3 => h_count(6),
      O => \v_count[11]_i_3_n_0\
    );
\v_count[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(0),
      I2 => h_count(3),
      I3 => h_count(2),
      O => \v_count[11]_i_4_n_0\
    );
\v_count[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(11),
      I2 => v_count(10),
      I3 => s_tready_INST_0_i_4_n_0,
      I4 => v_count(1),
      I5 => v_count(0),
      O => \v_count[11]_i_5_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => v_count0_carry_n_7,
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => v_count0_carry_n_6,
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => v_count0_carry_n_5,
      O => \v_count[3]_i_1_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => v_count0_carry_n_4,
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__0_n_7\,
      O => \v_count[5]_i_1_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__0_n_6\,
      O => \v_count[6]_i_1_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__0_n_5\,
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__0_n_4\,
      O => \v_count[8]_i_1_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000000"
    )
        port map (
      I0 => \v_count[11]_i_5_n_0\,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(8),
      I4 => v_count(4),
      I5 => \v_count0_carry__1_n_7\,
      O => \v_count[9]_i_1_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[0]_i_1_n_0\,
      Q => v_count(0)
    );
\v_count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[10]_i_1_n_0\,
      Q => v_count(10)
    );
\v_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[11]_i_2_n_0\,
      Q => v_count(11)
    );
\v_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[1]_i_1_n_0\,
      Q => v_count(1)
    );
\v_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[2]_i_1_n_0\,
      Q => v_count(2)
    );
\v_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[3]_i_1_n_0\,
      Q => v_count(3)
    );
\v_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[4]_i_1_n_0\,
      Q => v_count(4)
    );
\v_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[5]_i_1_n_0\,
      Q => v_count(5)
    );
\v_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[6]_i_1_n_0\,
      Q => v_count(6)
    );
\v_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[7]_i_1_n_0\,
      Q => v_count(7)
    );
\v_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[8]_i_1_n_0\,
      Q => v_count(8)
    );
\v_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => v_count_0,
      CLR => \v_count_reg[0]_0\,
      D => \v_count[9]_i_1_n_0\,
      Q => v_count(9)
    );
vs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(2),
      I3 => v_count(3),
      I4 => v_count(4),
      I5 => de_i_4_n_0,
      O => raw_vs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_serializer is
  port (
    tmds_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serial_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \serial_release_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_serializer : entity is "tx2_serializer";
end facebox_system_tx2_axis_sink_0_0_tx2_serializer;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_serializer is
  signal enable_meta : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of enable_meta : signal is std.standard.true;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of enable_meta : signal is "yes";
  attribute async_reg : string;
  attribute async_reg of enable_meta : signal is "true";
  signal \enable_meta_i_1__1_n_0\ : STD_LOGIC;
  signal enable_sync : STD_LOGIC;
  attribute DONT_TOUCH of enable_sync : signal is std.standard.true;
  attribute RTL_KEEP of enable_sync : signal is "yes";
  attribute async_reg of enable_sync : signal is "true";
  signal serial_data : STD_LOGIC;
  signal serial_release : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of serial_release : signal is std.standard.true;
  attribute RTL_KEEP of serial_release : signal is "yes";
  attribute async_reg of serial_release : signal is "true";
  signal shift1 : STD_LOGIC;
  signal shift2 : STD_LOGIC;
  signal NLW_u_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of enable_meta_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of enable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of enable_sync_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_sync_reg : label is std.standard.true;
  attribute KEEP of enable_sync_reg : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[0]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[1]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[1]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[1]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_master : label is "PRIMITIVE";
  attribute BOX_TYPE of u_output : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of u_output : label is "DONT_CARE";
  attribute BOX_TYPE of u_slave : label is "PRIMITIVE";
begin
\enable_meta_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_release(1),
      O => \enable_meta_i_1__1_n_0\
    );
enable_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__1_n_0\,
      D => '1',
      Q => enable_meta
    );
enable_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__1_n_0\,
      D => enable_meta,
      Q => enable_sync
    );
\serial_release_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => '1',
      Q => serial_release(0)
    );
\serial_release_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => serial_release(0),
      Q => serial_release(1)
    );
u_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => enable_sync,
      OFB => NLW_u_master_OFB_UNCONNECTED,
      OQ => serial_data,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => shift1,
      SHIFTIN2 => shift2,
      SHIFTOUT1 => NLW_u_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_u_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_master_TFB_UNCONNECTED,
      TQ => NLW_u_master_TQ_UNCONNECTED
    );
u_output: unisim.vcomponents.OBUFDS
     port map (
      I => serial_data,
      O => tmds_data_p(0),
      OB => tmds_data_n(0)
    );
u_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => enable_sync,
      OFB => NLW_u_slave_OFB_UNCONNECTED,
      OQ => NLW_u_slave_OQ_UNCONNECTED,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => shift1,
      SHIFTOUT2 => shift2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_slave_TFB_UNCONNECTED,
      TQ => NLW_u_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_serializer_0 is
  port (
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    serial_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    \serial_release_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_serializer_0 : entity is "tx2_serializer";
end facebox_system_tx2_axis_sink_0_0_tx2_serializer_0;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_serializer_0 is
  signal enable_meta : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of enable_meta : signal is std.standard.true;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of enable_meta : signal is "yes";
  attribute async_reg : string;
  attribute async_reg of enable_meta : signal is "true";
  signal \enable_meta_i_1__2_n_0\ : STD_LOGIC;
  signal enable_sync : STD_LOGIC;
  attribute DONT_TOUCH of enable_sync : signal is std.standard.true;
  attribute RTL_KEEP of enable_sync : signal is "yes";
  attribute async_reg of enable_sync : signal is "true";
  signal serial_data : STD_LOGIC;
  signal serial_release : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of serial_release : signal is std.standard.true;
  attribute RTL_KEEP of serial_release : signal is "yes";
  attribute async_reg of serial_release : signal is "true";
  signal shift1 : STD_LOGIC;
  signal shift2 : STD_LOGIC;
  signal NLW_u_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of enable_meta_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of enable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of enable_sync_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_sync_reg : label is std.standard.true;
  attribute KEEP of enable_sync_reg : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[0]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[1]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[1]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[1]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_master : label is "PRIMITIVE";
  attribute BOX_TYPE of u_output : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of u_output : label is "DONT_CARE";
  attribute BOX_TYPE of u_slave : label is "PRIMITIVE";
begin
\enable_meta_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_release(1),
      O => \enable_meta_i_1__2_n_0\
    );
enable_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__2_n_0\,
      D => '1',
      Q => enable_meta
    );
enable_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__2_n_0\,
      D => enable_meta,
      Q => enable_sync
    );
\serial_release_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => '1',
      Q => serial_release(0)
    );
\serial_release_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => serial_release(0),
      Q => serial_release(1)
    );
u_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => enable_sync,
      OFB => NLW_u_master_OFB_UNCONNECTED,
      OQ => serial_data,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => shift1,
      SHIFTIN2 => shift2,
      SHIFTOUT1 => NLW_u_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_u_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_master_TFB_UNCONNECTED,
      TQ => NLW_u_master_TQ_UNCONNECTED
    );
u_output: unisim.vcomponents.OBUFDS
     port map (
      I => serial_data,
      O => tmds_clk_p,
      OB => tmds_clk_n
    );
u_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => enable_sync,
      OFB => NLW_u_slave_OFB_UNCONNECTED,
      OQ => NLW_u_slave_OQ_UNCONNECTED,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => shift1,
      SHIFTOUT2 => shift2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_slave_TFB_UNCONNECTED,
      TQ => NLW_u_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_serializer_1 is
  port (
    tmds_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serial_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \serial_release_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_serializer_1 : entity is "tx2_serializer";
end facebox_system_tx2_axis_sink_0_0_tx2_serializer_1;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_serializer_1 is
  signal enable_meta : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of enable_meta : signal is std.standard.true;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of enable_meta : signal is "yes";
  attribute async_reg : string;
  attribute async_reg of enable_meta : signal is "true";
  signal \enable_meta_i_1__0_n_0\ : STD_LOGIC;
  signal enable_sync : STD_LOGIC;
  attribute DONT_TOUCH of enable_sync : signal is std.standard.true;
  attribute RTL_KEEP of enable_sync : signal is "yes";
  attribute async_reg of enable_sync : signal is "true";
  signal serial_data : STD_LOGIC;
  signal serial_release : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of serial_release : signal is std.standard.true;
  attribute RTL_KEEP of serial_release : signal is "yes";
  attribute async_reg of serial_release : signal is "true";
  signal shift1 : STD_LOGIC;
  signal shift2 : STD_LOGIC;
  signal NLW_u_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of enable_meta_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of enable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of enable_sync_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_sync_reg : label is std.standard.true;
  attribute KEEP of enable_sync_reg : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[0]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[1]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[1]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[1]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_master : label is "PRIMITIVE";
  attribute BOX_TYPE of u_output : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of u_output : label is "DONT_CARE";
  attribute BOX_TYPE of u_slave : label is "PRIMITIVE";
begin
\enable_meta_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_release(1),
      O => \enable_meta_i_1__0_n_0\
    );
enable_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__0_n_0\,
      D => '1',
      Q => enable_meta
    );
enable_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \enable_meta_i_1__0_n_0\,
      D => enable_meta,
      Q => enable_sync
    );
\serial_release_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => '1',
      Q => serial_release(0)
    );
\serial_release_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => serial_release(0),
      Q => serial_release(1)
    );
u_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => enable_sync,
      OFB => NLW_u_master_OFB_UNCONNECTED,
      OQ => serial_data,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => shift1,
      SHIFTIN2 => shift2,
      SHIFTOUT1 => NLW_u_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_u_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_master_TFB_UNCONNECTED,
      TQ => NLW_u_master_TQ_UNCONNECTED
    );
u_output: unisim.vcomponents.OBUFDS
     port map (
      I => serial_data,
      O => tmds_data_p(0),
      OB => tmds_data_n(0)
    );
u_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => enable_sync,
      OFB => NLW_u_slave_OFB_UNCONNECTED,
      OQ => NLW_u_slave_OQ_UNCONNECTED,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => shift1,
      SHIFTOUT2 => shift2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_slave_TFB_UNCONNECTED,
      TQ => NLW_u_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_serializer_3 is
  port (
    tmds_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serial_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \serial_release_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_serializer_3 : entity is "tx2_serializer";
end facebox_system_tx2_axis_sink_0_0_tx2_serializer_3;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_serializer_3 is
  signal enable_meta : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of enable_meta : signal is std.standard.true;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of enable_meta : signal is "yes";
  attribute async_reg : string;
  attribute async_reg of enable_meta : signal is "true";
  signal enable_meta_i_1_n_0 : STD_LOGIC;
  signal enable_sync : STD_LOGIC;
  attribute DONT_TOUCH of enable_sync : signal is std.standard.true;
  attribute RTL_KEEP of enable_sync : signal is "yes";
  attribute async_reg of enable_sync : signal is "true";
  signal serial_data : STD_LOGIC;
  signal serial_release : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of serial_release : signal is std.standard.true;
  attribute RTL_KEEP of serial_release : signal is "yes";
  attribute async_reg of serial_release : signal is "true";
  signal shift1 : STD_LOGIC;
  signal shift2 : STD_LOGIC;
  signal NLW_u_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_u_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of enable_meta_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of enable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of enable_sync_reg : label is std.standard.true;
  attribute DONT_TOUCH of enable_sync_reg : label is std.standard.true;
  attribute KEEP of enable_sync_reg : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[0]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \serial_release_reg[1]\ : label is std.standard.true;
  attribute DONT_TOUCH of \serial_release_reg[1]\ : label is std.standard.true;
  attribute KEEP of \serial_release_reg[1]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_master : label is "PRIMITIVE";
  attribute BOX_TYPE of u_output : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of u_output : label is "DONT_CARE";
  attribute BOX_TYPE of u_slave : label is "PRIMITIVE";
begin
enable_meta_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serial_release(1),
      O => enable_meta_i_1_n_0
    );
enable_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => enable_meta_i_1_n_0,
      D => '1',
      Q => enable_meta
    );
enable_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => enable_meta_i_1_n_0,
      D => enable_meta,
      Q => enable_sync
    );
\serial_release_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => '1',
      Q => serial_release(0)
    );
\serial_release_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => serial_clk,
      CE => '1',
      CLR => \serial_release_reg[1]_0\,
      D => serial_release(0),
      Q => serial_release(1)
    );
u_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => enable_sync,
      OFB => NLW_u_master_OFB_UNCONNECTED,
      OQ => serial_data,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => shift1,
      SHIFTIN2 => shift2,
      SHIFTOUT1 => NLW_u_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_u_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_master_TFB_UNCONNECTED,
      TQ => NLW_u_master_TQ_UNCONNECTED
    );
u_output: unisim.vcomponents.OBUFDS
     port map (
      I => serial_data,
      O => tmds_data_p(0),
      OB => tmds_data_n(0)
    );
u_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serial_clk,
      CLKDIV => pixel_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => enable_sync,
      OFB => NLW_u_slave_OFB_UNCONNECTED,
      OQ => NLW_u_slave_OQ_UNCONNECTED,
      RST => \serial_release_reg[1]_0\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => shift1,
      SHIFTOUT2 => shift2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_u_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_u_slave_TFB_UNCONNECTED,
      TQ => NLW_u_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd is
  port (
    status_de : out STD_LOGIC;
    status_hs : out STD_LOGIC;
    status_vs : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \osd_x_reg[10]\ : out STD_LOGIC;
    \osd_x_reg[10]_0\ : out STD_LOGIC;
    \osd_y_reg[8]\ : out STD_LOGIC;
    sleep_mode_reg : out STD_LOGIC;
    \osd_y_reg[9]\ : out STD_LOGIC;
    \rgb_o_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rgb_o_reg[13]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rgb_o_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[16]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_clk : in STD_LOGIC;
    text_s10 : in STD_LOGIC;
    vs_o_reg_0 : in STD_LOGIC;
    overlay_de : in STD_LOGIC;
    overlay_hs : in STD_LOGIC;
    overlay_vs : in STD_LOGIC;
    \base_s1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep_mode : in STD_LOGIC;
    \base_s1_reg[0]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \rgb_o_reg[23]_i_2_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd : entity is "tx2_sleep_osd";
end facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal base_s1 : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \base_s1[22]_i_4_n_0\ : STD_LOGIC;
  signal character : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \character__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal column : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal column_s1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal de_s1 : STD_LOGIC;
  signal glyph1 : STD_LOGIC;
  signal hs_s1 : STD_LOGIC;
  signal \ones_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_5_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_6_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \ones_q[1]_i_7_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_3_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_6_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \ones_q[2]_i_7_n_0\ : STD_LOGIC;
  signal \ones_q[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \ones_q[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \ones_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \ones_q[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \ones_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \ones_q_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \ones_q_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \ones_q_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \ones_q_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \ones_q_reg[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \ones_q_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ones_q_reg[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \ones_q_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_5_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_6_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \qm_q[1]_i_7_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_4_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_6_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \qm_q[3]_i_7_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_4_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_5_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_6_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_7__0_n_0\ : STD_LOGIC;
  signal \qm_q[5]_i_7_n_0\ : STD_LOGIC;
  signal \qm_q[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_6_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \qm_q[7]_i_7_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \qm_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q_reg[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q_reg[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \qm_q_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \qm_q_reg[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \qm_q_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \rgb_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[10]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[11]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[12]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[13]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[14]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[15]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[16]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[17]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[18]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[19]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[22]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_10_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_11_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_12_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_4_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_5_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_6_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_7_n_0\ : STD_LOGIC;
  signal \rgb_o[23]_i_9_n_0\ : STD_LOGIC;
  signal \rgb_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[8]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o[9]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal row_s1_reg_i_4_n_0 : STD_LOGIC;
  signal row_s1_reg_i_5_n_0 : STD_LOGIC;
  signal row_s1_reg_i_6_n_0 : STD_LOGIC;
  signal row_s1_reg_i_7_n_0 : STD_LOGIC;
  signal row_s1_reg_n_0 : STD_LOGIC;
  signal row_s1_reg_n_1 : STD_LOGIC;
  signal row_s1_reg_n_10 : STD_LOGIC;
  signal row_s1_reg_n_11 : STD_LOGIC;
  signal row_s1_reg_n_12 : STD_LOGIC;
  signal row_s1_reg_n_13 : STD_LOGIC;
  signal row_s1_reg_n_14 : STD_LOGIC;
  signal row_s1_reg_n_15 : STD_LOGIC;
  signal row_s1_reg_n_2 : STD_LOGIC;
  signal row_s1_reg_n_3 : STD_LOGIC;
  signal row_s1_reg_n_4 : STD_LOGIC;
  signal row_s1_reg_n_5 : STD_LOGIC;
  signal row_s1_reg_n_6 : STD_LOGIC;
  signal row_s1_reg_n_7 : STD_LOGIC;
  signal row_s1_reg_n_8 : STD_LOGIC;
  signal row_s1_reg_n_9 : STD_LOGIC;
  signal status_rgb : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal text_s1 : STD_LOGIC;
  signal vs_s1 : STD_LOGIC;
  signal NLW_row_s1_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_row_s1_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_row_s1_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \column_s1[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \column_s1[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \column_s1[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \column_s1[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ones_q[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ones_q[0]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ones_q[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ones_q[3]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ones_q[3]_i_2__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \qm_q[2]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \qm_q[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \qm_q[4]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \qm_q[4]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \qm_q[6]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \qm_q[6]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \qm_q[6]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rgb_o[18]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rgb_o[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rgb_o[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rgb_o[7]_i_1\ : label is "soft_lutpair16";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of row_s1_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of row_s1_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of row_s1_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of row_s1_reg : label is "row_s1";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of row_s1_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of row_s1_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of row_s1_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of row_s1_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of row_s1_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of row_s1_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of row_s1_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of row_s1_reg : label is 15;
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\base_s1[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFF"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(8),
      I1 => \base_s1_reg[0]_1\(7),
      I2 => \base_s1_reg[0]_1\(6),
      I3 => \base_s1_reg[0]_1\(5),
      I4 => \base_s1_reg[0]_1\(4),
      I5 => \base_s1_reg[0]_1\(3),
      O => \osd_y_reg[9]\
    );
\base_s1[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEEEFFEEEEEF"
    )
        port map (
      I0 => \base_s1[22]_i_4_n_0\,
      I1 => \base_s1_reg[0]_0\(9),
      I2 => \base_s1_reg[0]_0\(3),
      I3 => \base_s1_reg[0]_0\(6),
      I4 => \base_s1_reg[0]_0\(5),
      I5 => \base_s1_reg[0]_0\(4),
      O => \osd_x_reg[10]\
    );
\base_s1[22]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(8),
      I1 => \base_s1_reg[0]_0\(7),
      O => \base_s1[22]_i_4_n_0\
    );
\base_s1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(0),
      Q => base_s1(0)
    );
\base_s1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(9),
      Q => base_s1(10)
    );
\base_s1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(10),
      Q => base_s1(11)
    );
\base_s1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(11),
      Q => base_s1(12)
    );
\base_s1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(12),
      Q => base_s1(13)
    );
\base_s1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(13),
      Q => base_s1(14)
    );
\base_s1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(14),
      Q => base_s1(15)
    );
\base_s1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(15),
      Q => base_s1(16)
    );
\base_s1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(16),
      Q => base_s1(17)
    );
\base_s1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(17),
      Q => base_s1(18)
    );
\base_s1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(18),
      Q => base_s1(19)
    );
\base_s1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(1),
      Q => base_s1(1)
    );
\base_s1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(19),
      Q => base_s1(20)
    );
\base_s1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(20),
      Q => base_s1(22)
    );
\base_s1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(2),
      Q => base_s1(2)
    );
\base_s1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(3),
      Q => base_s1(3)
    );
\base_s1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(4),
      Q => base_s1(4)
    );
\base_s1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(5),
      Q => base_s1(5)
    );
\base_s1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(6),
      Q => base_s1(6)
    );
\base_s1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(7),
      Q => base_s1(8)
    );
\base_s1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => D(8),
      Q => base_s1(9)
    );
\column_s1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(1),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_0\(0),
      O => column(0)
    );
\column_s1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(2),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_0\(1),
      O => column(1)
    );
\column_s1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(3),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_0\(2),
      O => column(2)
    );
\column_s1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(4),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_0\(3),
      O => column(3)
    );
\column_s1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => column(0),
      Q => column_s1(0)
    );
\column_s1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => column(1),
      Q => column_s1(1)
    );
\column_s1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => column(2),
      Q => column_s1(2)
    );
\column_s1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => column(3),
      Q => column_s1(3)
    );
de_o_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => de_s1,
      Q => status_de
    );
de_s1_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => overlay_de,
      Q => de_s1
    );
hs_o_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => hs_s1,
      Q => status_hs
    );
hs_s1_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => overlay_hs,
      Q => hs_s1
    );
\ones_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => status_rgb(7),
      I1 => status_rgb(5),
      I2 => status_rgb(1),
      I3 => status_rgb(3),
      O => \rgb_o_reg[5]_0\(0)
    );
\ones_q[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => status_rgb(15),
      I1 => status_rgb(13),
      I2 => status_rgb(9),
      I3 => status_rgb(11),
      O => \rgb_o_reg[13]_0\(0)
    );
\ones_q[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(2),
      I1 => status_rgb(19),
      I2 => status_rgb(17),
      I3 => status_rgb(23),
      O => \rgb_o_reg[23]_0\(0)
    );
\ones_q[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7D23A0D872758D8"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(20),
      I2 => status_rgb(22),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \ones_q[1]_i_2_n_0\
    );
\ones_q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"772289CCDC99DBEE"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(17),
      I3 => status_rgb(20),
      I4 => status_rgb(19),
      I5 => status_rgb(18),
      O => \ones_q[1]_i_3_n_0\
    );
\ones_q[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777025AD9887D2D2"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(4),
      I2 => status_rgb(6),
      I3 => status_rgb(3),
      I4 => status_rgb(2),
      I5 => status_rgb(1),
      O => \ones_q[1]_i_4_n_0\
    );
\ones_q[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777025AD9887D2D2"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(12),
      I2 => status_rgb(14),
      I3 => status_rgb(11),
      I4 => status_rgb(10),
      I5 => status_rgb(9),
      O => \ones_q[1]_i_4__0_n_0\
    );
\ones_q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6363C9259D9832FA"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(3),
      I4 => status_rgb(2),
      I5 => status_rgb(1),
      O => \ones_q[1]_i_5_n_0\
    );
\ones_q[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6363C9259D9832FA"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(11),
      I4 => status_rgb(10),
      I5 => status_rgb(9),
      O => \ones_q[1]_i_5__0_n_0\
    );
\ones_q[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDD225D88F7F788"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(4),
      I2 => status_rgb(1),
      I3 => status_rgb(6),
      I4 => status_rgb(3),
      I5 => status_rgb(2),
      O => \ones_q[1]_i_6_n_0\
    );
\ones_q[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDD225D88F7F788"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(12),
      I2 => status_rgb(9),
      I3 => status_rgb(14),
      I4 => status_rgb(11),
      I5 => status_rgb(10),
      O => \ones_q[1]_i_6__0_n_0\
    );
\ones_q[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36379C98C9CD8FAF"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(1),
      I4 => status_rgb(2),
      I5 => status_rgb(3),
      O => \ones_q[1]_i_7_n_0\
    );
\ones_q[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36379C98C9CD8FAF"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(9),
      I4 => status_rgb(10),
      I5 => status_rgb(11),
      O => \ones_q[1]_i_7__0_n_0\
    );
\ones_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0138F8CF7CEF8B10"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \ones_q[2]_i_2_n_0\
    );
\ones_q[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0D2EF77FE3E17F"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(17),
      I4 => status_rgb(18),
      I5 => status_rgb(19),
      O => \ones_q[2]_i_3_n_0\
    );
\ones_q[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F6FA29B26F6D10"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \ones_q[2]_i_4_n_0\
    );
\ones_q[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F6FA29B26F6D10"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \ones_q[2]_i_4__0_n_0\
    );
\ones_q[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08B6F64D945F6F80"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \ones_q[2]_i_5_n_0\
    );
\ones_q[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08B6F64D945F6F80"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \ones_q[2]_i_5__0_n_0\
    );
\ones_q[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE4D0FFEEF92D6FE"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \ones_q[2]_i_6_n_0\
    );
\ones_q[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE4D0FFEEF92D6FE"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \ones_q[2]_i_6__0_n_0\
    );
\ones_q[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F6B7FF049F7B27F"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(3),
      I5 => status_rgb(1),
      O => \ones_q[2]_i_7_n_0\
    );
\ones_q[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F6B7FF049F7B27F"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(11),
      I5 => status_rgb(9),
      O => \ones_q[2]_i_7__0_n_0\
    );
\ones_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04000400000000"
    )
        port map (
      I0 => status_rgb(5),
      I1 => \ones_q[3]_i_2_n_0\,
      I2 => status_rgb(6),
      I3 => status_rgb(7),
      I4 => \ones_q[3]_i_3_n_0\,
      I5 => \^q\(0),
      O => \rgb_o_reg[5]_0\(3)
    );
\ones_q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04000400000000"
    )
        port map (
      I0 => status_rgb(13),
      I1 => \ones_q[3]_i_2__0_n_0\,
      I2 => status_rgb(14),
      I3 => status_rgb(15),
      I4 => \ones_q[3]_i_3__0_n_0\,
      I5 => \^q\(1),
      O => \rgb_o_reg[13]_0\(3)
    );
\ones_q[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(20),
      I2 => \ones_q[3]_i_2__1_n_0\,
      I3 => status_rgb(19),
      I4 => status_rgb(22),
      I5 => \^q\(2),
      O => \rgb_o_reg[23]_0\(3)
    );
\ones_q[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => status_rgb(2),
      I1 => status_rgb(3),
      I2 => status_rgb(1),
      I3 => status_rgb(4),
      O => \ones_q[3]_i_2_n_0\
    );
\ones_q[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => status_rgb(10),
      I1 => status_rgb(11),
      I2 => status_rgb(9),
      I3 => status_rgb(12),
      O => \ones_q[3]_i_2__0_n_0\
    );
\ones_q[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => status_rgb(18),
      I1 => status_rgb(17),
      O => \ones_q[3]_i_2__1_n_0\
    );
\ones_q[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => status_rgb(6),
      I1 => status_rgb(2),
      I2 => status_rgb(1),
      I3 => status_rgb(3),
      I4 => status_rgb(4),
      I5 => status_rgb(5),
      O => \ones_q[3]_i_3_n_0\
    );
\ones_q[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => status_rgb(14),
      I1 => status_rgb(10),
      I2 => status_rgb(9),
      I3 => status_rgb(11),
      I4 => status_rgb(12),
      I5 => status_rgb(13),
      O => \ones_q[3]_i_3__0_n_0\
    );
\ones_q_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ones_q_reg[1]_i_2_n_0\,
      I1 => \ones_q_reg[1]_i_3_n_0\,
      O => \rgb_o_reg[5]_0\(1),
      S => \^q\(0)
    );
\ones_q_reg[1]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ones_q_reg[1]_i_2__0_n_0\,
      I1 => \ones_q_reg[1]_i_3__0_n_0\,
      O => \rgb_o_reg[13]_0\(1),
      S => \^q\(1)
    );
\ones_q_reg[1]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[1]_i_2_n_0\,
      I1 => \ones_q[1]_i_3_n_0\,
      O => \rgb_o_reg[23]_0\(1),
      S => \^q\(2)
    );
\ones_q_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[1]_i_4_n_0\,
      I1 => \ones_q[1]_i_5_n_0\,
      O => \ones_q_reg[1]_i_2_n_0\,
      S => status_rgb(7)
    );
\ones_q_reg[1]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[1]_i_4__0_n_0\,
      I1 => \ones_q[1]_i_5__0_n_0\,
      O => \ones_q_reg[1]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\ones_q_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[1]_i_6_n_0\,
      I1 => \ones_q[1]_i_7_n_0\,
      O => \ones_q_reg[1]_i_3_n_0\,
      S => status_rgb(7)
    );
\ones_q_reg[1]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[1]_i_6__0_n_0\,
      I1 => \ones_q[1]_i_7__0_n_0\,
      O => \ones_q_reg[1]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\ones_q_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ones_q_reg[2]_i_2_n_0\,
      I1 => \ones_q_reg[2]_i_3_n_0\,
      O => \rgb_o_reg[5]_0\(2),
      S => \^q\(0)
    );
\ones_q_reg[2]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ones_q_reg[2]_i_2__0_n_0\,
      I1 => \ones_q_reg[2]_i_3__0_n_0\,
      O => \rgb_o_reg[13]_0\(2),
      S => \^q\(1)
    );
\ones_q_reg[2]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[2]_i_2_n_0\,
      I1 => \ones_q[2]_i_3_n_0\,
      O => \rgb_o_reg[23]_0\(2),
      S => \^q\(2)
    );
\ones_q_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[2]_i_4_n_0\,
      I1 => \ones_q[2]_i_5_n_0\,
      O => \ones_q_reg[2]_i_2_n_0\,
      S => status_rgb(7)
    );
\ones_q_reg[2]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[2]_i_4__0_n_0\,
      I1 => \ones_q[2]_i_5__0_n_0\,
      O => \ones_q_reg[2]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\ones_q_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[2]_i_6_n_0\,
      I1 => \ones_q[2]_i_7_n_0\,
      O => \ones_q_reg[2]_i_3_n_0\,
      S => status_rgb(7)
    );
\ones_q_reg[2]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ones_q[2]_i_6__0_n_0\,
      I1 => \ones_q[2]_i_7__0_n_0\,
      O => \ones_q_reg[2]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\qm_q[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177FE8808000"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(18),
      I3 => status_rgb(19),
      I4 => status_rgb(20),
      I5 => status_rgb(17),
      O => \qm_q[1]_i_2_n_0\
    );
\qm_q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEE80117177F"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(18),
      I4 => status_rgb(19),
      I5 => status_rgb(17),
      O => \qm_q[1]_i_3_n_0\
    );
\qm_q[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177FE8808000"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(3),
      I3 => status_rgb(2),
      I4 => status_rgb(4),
      I5 => status_rgb(1),
      O => \qm_q[1]_i_4_n_0\
    );
\qm_q[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177FE8808000"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(11),
      I3 => status_rgb(10),
      I4 => status_rgb(12),
      I5 => status_rgb(9),
      O => \qm_q[1]_i_4__0_n_0\
    );
\qm_q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010117FEE8E880"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(3),
      I4 => status_rgb(2),
      I5 => status_rgb(1),
      O => \qm_q[1]_i_5_n_0\
    );
\qm_q[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010117FEE8E880"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(11),
      I4 => status_rgb(10),
      I5 => status_rgb(9),
      O => \qm_q[1]_i_5__0_n_0\
    );
\qm_q[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880177F7FFF"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(3),
      I3 => status_rgb(2),
      I4 => status_rgb(4),
      I5 => status_rgb(1),
      O => \qm_q[1]_i_6_n_0\
    );
\qm_q[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880177F7FFF"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(11),
      I3 => status_rgb(10),
      I4 => status_rgb(12),
      I5 => status_rgb(9),
      O => \qm_q[1]_i_6__0_n_0\
    );
\qm_q[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEE80117177F"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(3),
      I4 => status_rgb(2),
      I5 => status_rgb(1),
      O => \qm_q[1]_i_7_n_0\
    );
\qm_q[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEE80117177F"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(11),
      I4 => status_rgb(10),
      I5 => status_rgb(9),
      O => \qm_q[1]_i_7__0_n_0\
    );
\qm_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => status_rgb(2),
      I2 => status_rgb(1),
      O => \rgb_o_reg[7]_0\(1)
    );
\qm_q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(1),
      I1 => status_rgb(10),
      I2 => status_rgb(9),
      O => \rgb_o_reg[15]_0\(1)
    );
\qm_q[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => status_rgb(17),
      I1 => status_rgb(18),
      I2 => \^q\(2),
      O => \rgb_o_reg[16]_0\(1)
    );
\qm_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E8E87FE87F7F00"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[3]_i_2_n_0\
    );
\qm_q[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0101E801E8E87F"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[3]_i_3_n_0\
    );
\qm_q[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E8E87FE87F7F00"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[3]_i_4_n_0\
    );
\qm_q[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01E8E87FE87F7F00"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[3]_i_4__0_n_0\
    );
\qm_q[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE17FE171780"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[3]_i_5_n_0\
    );
\qm_q[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE17FE171780"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[3]_i_5__0_n_0\
    );
\qm_q[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE171780178080FF"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[3]_i_6_n_0\
    );
\qm_q[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE171780178080FF"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[3]_i_6__0_n_0\
    );
\qm_q[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0101E801E8E87F"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[3]_i_7_n_0\
    );
\qm_q[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0101E801E8E87F"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[3]_i_7__0_n_0\
    );
\qm_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => status_rgb(4),
      I1 => status_rgb(3),
      I2 => status_rgb(1),
      I3 => \^q\(0),
      I4 => status_rgb(2),
      O => \rgb_o_reg[7]_0\(3)
    );
\qm_q[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => status_rgb(12),
      I1 => status_rgb(11),
      I2 => status_rgb(9),
      I3 => \^q\(1),
      I4 => status_rgb(10),
      O => \rgb_o_reg[15]_0\(3)
    );
\qm_q[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => status_rgb(20),
      I2 => status_rgb(19),
      I3 => status_rgb(18),
      I4 => status_rgb(17),
      O => \rgb_o_reg[16]_0\(3)
    );
\qm_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F118188F188F8FF0"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[5]_i_2_n_0\
    );
\qm_q[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00E0EE70EE7E770"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[5]_i_3_n_0\
    );
\qm_q[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5BB2B225B225255A"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[5]_i_4_n_0\
    );
\qm_q[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5BB2B225B225255A"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[5]_i_4__0_n_0\
    );
\qm_q[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA4A44DA44D4DDA"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[5]_i_5_n_0\
    );
\qm_q[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA4A44DA44D4DDA"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[5]_i_5__0_n_0\
    );
\qm_q[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A44D4DDA4DDADAA5"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[5]_i_6_n_0\
    );
\qm_q[5]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A44D4DDA4DDADAA5"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[5]_i_6__0_n_0\
    );
\qm_q[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55B5BB25BB2B225"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[5]_i_7_n_0\
    );
\qm_q[5]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55B5BB25BB2B225"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[5]_i_7__0_n_0\
    );
\qm_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => status_rgb(6),
      I1 => status_rgb(5),
      I2 => status_rgb(2),
      I3 => \^q\(0),
      I4 => status_rgb(4),
      I5 => \qm_q[6]_i_2_n_0\,
      O => \rgb_o_reg[7]_0\(5)
    );
\qm_q[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => status_rgb(14),
      I1 => status_rgb(13),
      I2 => status_rgb(10),
      I3 => \^q\(1),
      I4 => status_rgb(12),
      I5 => \qm_q[6]_i_2__0_n_0\,
      O => \rgb_o_reg[15]_0\(5)
    );
\qm_q[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => status_rgb(20),
      I1 => status_rgb(19),
      I2 => status_rgb(22),
      I3 => status_rgb(18),
      I4 => status_rgb(17),
      O => \rgb_o_reg[16]_0\(5)
    );
\qm_q[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => status_rgb(3),
      I1 => status_rgb(1),
      O => \qm_q[6]_i_2_n_0\
    );
\qm_q[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => status_rgb(11),
      I1 => status_rgb(9),
      O => \qm_q[6]_i_2__0_n_0\
    );
\qm_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977E7EE97EE9E996"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[7]_i_2_n_0\
    );
\qm_q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9668688168818116"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(19),
      I4 => status_rgb(17),
      I5 => status_rgb(18),
      O => \qm_q[7]_i_3_n_0\
    );
\qm_q[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977E7EE97EE9E996"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[7]_i_4_n_0\
    );
\qm_q[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977E7EE97EE9E996"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[7]_i_4__0_n_0\
    );
\qm_q[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6997977E977E7EE9"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[7]_i_5_n_0\
    );
\qm_q[7]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6997977E977E7EE9"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[7]_i_5__0_n_0\
    );
\qm_q[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6881811681161669"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[7]_i_6_n_0\
    );
\qm_q[7]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6881811681161669"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[7]_i_6__0_n_0\
    );
\qm_q[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9668688168818116"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(2),
      I4 => status_rgb(1),
      I5 => status_rgb(3),
      O => \qm_q[7]_i_7_n_0\
    );
\qm_q[7]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9668688168818116"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(10),
      I4 => status_rgb(9),
      I5 => status_rgb(11),
      O => \qm_q[7]_i_7__0_n_0\
    );
\qm_q[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177F177F7FFF"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(2),
      I3 => status_rgb(3),
      I4 => status_rgb(1),
      I5 => status_rgb(4),
      O => \qm_q[8]_i_2_n_0\
    );
\qm_q[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177F177F7FFF"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(10),
      I3 => status_rgb(11),
      I4 => status_rgb(9),
      I5 => status_rgb(12),
      O => \qm_q[8]_i_2__0_n_0\
    );
\qm_q[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0117177F177F7FFF"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(19),
      I3 => status_rgb(18),
      I4 => status_rgb(17),
      I5 => status_rgb(20),
      O => \qm_q[8]_i_2__1_n_0\
    );
\qm_q[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000101170117177F"
    )
        port map (
      I0 => status_rgb(5),
      I1 => status_rgb(6),
      I2 => status_rgb(4),
      I3 => status_rgb(1),
      I4 => status_rgb(3),
      I5 => status_rgb(2),
      O => \qm_q[8]_i_3_n_0\
    );
\qm_q[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000101170117177F"
    )
        port map (
      I0 => status_rgb(13),
      I1 => status_rgb(14),
      I2 => status_rgb(12),
      I3 => status_rgb(9),
      I4 => status_rgb(11),
      I5 => status_rgb(10),
      O => \qm_q[8]_i_3__0_n_0\
    );
\qm_q[8]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000101170117177F"
    )
        port map (
      I0 => status_rgb(23),
      I1 => status_rgb(22),
      I2 => status_rgb(20),
      I3 => status_rgb(17),
      I4 => status_rgb(18),
      I5 => status_rgb(19),
      O => \qm_q[8]_i_3__1_n_0\
    );
\qm_q_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[1]_i_2_n_0\,
      I1 => \qm_q_reg[1]_i_3_n_0\,
      O => \rgb_o_reg[7]_0\(0),
      S => \^q\(0)
    );
\qm_q_reg[1]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[1]_i_2__0_n_0\,
      I1 => \qm_q_reg[1]_i_3__0_n_0\,
      O => \rgb_o_reg[15]_0\(0),
      S => \^q\(1)
    );
\qm_q_reg[1]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[1]_i_2_n_0\,
      I1 => \qm_q[1]_i_3_n_0\,
      O => \rgb_o_reg[16]_0\(0),
      S => \^q\(2)
    );
\qm_q_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[1]_i_4_n_0\,
      I1 => \qm_q[1]_i_5_n_0\,
      O => \qm_q_reg[1]_i_2_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[1]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[1]_i_4__0_n_0\,
      I1 => \qm_q[1]_i_5__0_n_0\,
      O => \qm_q_reg[1]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[1]_i_6_n_0\,
      I1 => \qm_q[1]_i_7_n_0\,
      O => \qm_q_reg[1]_i_3_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[1]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[1]_i_6__0_n_0\,
      I1 => \qm_q[1]_i_7__0_n_0\,
      O => \qm_q_reg[1]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[3]_i_2_n_0\,
      I1 => \qm_q_reg[3]_i_3_n_0\,
      O => \rgb_o_reg[7]_0\(2),
      S => \^q\(0)
    );
\qm_q_reg[3]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[3]_i_2__0_n_0\,
      I1 => \qm_q_reg[3]_i_3__0_n_0\,
      O => \rgb_o_reg[15]_0\(2),
      S => \^q\(1)
    );
\qm_q_reg[3]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[3]_i_2_n_0\,
      I1 => \qm_q[3]_i_3_n_0\,
      O => \rgb_o_reg[16]_0\(2),
      S => \^q\(2)
    );
\qm_q_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[3]_i_4_n_0\,
      I1 => \qm_q[3]_i_5_n_0\,
      O => \qm_q_reg[3]_i_2_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[3]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[3]_i_4__0_n_0\,
      I1 => \qm_q[3]_i_5__0_n_0\,
      O => \qm_q_reg[3]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[3]_i_6_n_0\,
      I1 => \qm_q[3]_i_7_n_0\,
      O => \qm_q_reg[3]_i_3_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[3]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[3]_i_6__0_n_0\,
      I1 => \qm_q[3]_i_7__0_n_0\,
      O => \qm_q_reg[3]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[5]_i_2_n_0\,
      I1 => \qm_q_reg[5]_i_3_n_0\,
      O => \rgb_o_reg[7]_0\(4),
      S => \^q\(0)
    );
\qm_q_reg[5]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[5]_i_2__0_n_0\,
      I1 => \qm_q_reg[5]_i_3__0_n_0\,
      O => \rgb_o_reg[15]_0\(4),
      S => \^q\(1)
    );
\qm_q_reg[5]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[5]_i_2_n_0\,
      I1 => \qm_q[5]_i_3_n_0\,
      O => \rgb_o_reg[16]_0\(4),
      S => \^q\(2)
    );
\qm_q_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[5]_i_4_n_0\,
      I1 => \qm_q[5]_i_5_n_0\,
      O => \qm_q_reg[5]_i_2_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[5]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[5]_i_4__0_n_0\,
      I1 => \qm_q[5]_i_5__0_n_0\,
      O => \qm_q_reg[5]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[5]_i_6_n_0\,
      I1 => \qm_q[5]_i_7_n_0\,
      O => \qm_q_reg[5]_i_3_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[5]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[5]_i_6__0_n_0\,
      I1 => \qm_q[5]_i_7__0_n_0\,
      O => \qm_q_reg[5]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[7]_i_2_n_0\,
      I1 => \qm_q_reg[7]_i_3_n_0\,
      O => \rgb_o_reg[7]_0\(6),
      S => \^q\(0)
    );
\qm_q_reg[7]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qm_q_reg[7]_i_2__0_n_0\,
      I1 => \qm_q_reg[7]_i_3__0_n_0\,
      O => \rgb_o_reg[15]_0\(6),
      S => \^q\(1)
    );
\qm_q_reg[7]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[7]_i_2_n_0\,
      I1 => \qm_q[7]_i_3_n_0\,
      O => \rgb_o_reg[16]_0\(6),
      S => \^q\(2)
    );
\qm_q_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[7]_i_4_n_0\,
      I1 => \qm_q[7]_i_5_n_0\,
      O => \qm_q_reg[7]_i_2_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[7]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[7]_i_4__0_n_0\,
      I1 => \qm_q[7]_i_5__0_n_0\,
      O => \qm_q_reg[7]_i_2__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[7]_i_6_n_0\,
      I1 => \qm_q[7]_i_7_n_0\,
      O => \qm_q_reg[7]_i_3_n_0\,
      S => status_rgb(7)
    );
\qm_q_reg[7]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[7]_i_6__0_n_0\,
      I1 => \qm_q[7]_i_7__0_n_0\,
      O => \qm_q_reg[7]_i_3__0_n_0\,
      S => status_rgb(15)
    );
\qm_q_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[8]_i_2_n_0\,
      I1 => \qm_q[8]_i_3_n_0\,
      O => \rgb_o_reg[7]_0\(7),
      S => status_rgb(7)
    );
\qm_q_reg[8]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[8]_i_2__0_n_0\,
      I1 => \qm_q[8]_i_3__0_n_0\,
      O => \rgb_o_reg[15]_0\(7),
      S => status_rgb(15)
    );
\qm_q_reg[8]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qm_q[8]_i_2__1_n_0\,
      I1 => \qm_q[8]_i_3__1_n_0\,
      O => \rgb_o_reg[16]_0\(7),
      S => \^q\(2)
    );
\rgb_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(0),
      O => \rgb_o[0]_i_1_n_0\
    );
\rgb_o[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(10),
      O => \rgb_o[10]_i_1_n_0\
    );
\rgb_o[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(11),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[11]_i_1_n_0\
    );
\rgb_o[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(12),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[12]_i_1_n_0\
    );
\rgb_o[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(13),
      O => \rgb_o[13]_i_1_n_0\
    );
\rgb_o[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(14),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[14]_i_1_n_0\
    );
\rgb_o[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(15),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[15]_i_1_n_0\
    );
\rgb_o[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(16),
      O => \rgb_o[16]_i_1_n_0\
    );
\rgb_o[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(17),
      O => \rgb_o[17]_i_1_n_0\
    );
\rgb_o[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(18),
      O => \rgb_o[18]_i_1_n_0\
    );
\rgb_o[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(19),
      O => \rgb_o[19]_i_1_n_0\
    );
\rgb_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(1),
      O => \rgb_o[1]_i_1_n_0\
    );
\rgb_o[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(20),
      O => \rgb_o[20]_i_1_n_0\
    );
\rgb_o[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(22),
      O => \rgb_o[22]_i_1_n_0\
    );
\rgb_o[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(18),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[23]_i_1_n_0\
    );
\rgb_o[23]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => row_s1_reg_n_11,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_3,
      I3 => \rgb_o_reg[23]_i_2_0\,
      O => \rgb_o[23]_i_10_n_0\
    );
\rgb_o[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => row_s1_reg_n_8,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_0,
      I3 => \rgb_o_reg[23]_i_2_0\,
      O => \rgb_o[23]_i_11_n_0\
    );
\rgb_o[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => row_s1_reg_n_10,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_2,
      I3 => \rgb_o_reg[23]_i_2_0\,
      O => \rgb_o[23]_i_12_n_0\
    );
\rgb_o[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => row_s1_reg_n_13,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_5,
      I3 => \rgb_o_reg[23]_i_2_0\,
      I4 => column_s1(2),
      I5 => \rgb_o[23]_i_9_n_0\,
      O => \rgb_o[23]_i_4_n_0\
    );
\rgb_o[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => row_s1_reg_n_15,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_7,
      I3 => \rgb_o_reg[23]_i_2_0\,
      I4 => column_s1(2),
      I5 => \rgb_o[23]_i_10_n_0\,
      O => \rgb_o[23]_i_5_n_0\
    );
\rgb_o[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => row_s1_reg_n_12,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_4,
      I3 => \rgb_o_reg[23]_i_2_0\,
      I4 => column_s1(2),
      I5 => \rgb_o[23]_i_11_n_0\,
      O => \rgb_o[23]_i_6_n_0\
    );
\rgb_o[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => row_s1_reg_n_14,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_6,
      I3 => \rgb_o_reg[23]_i_2_0\,
      I4 => column_s1(2),
      I5 => \rgb_o[23]_i_12_n_0\,
      O => \rgb_o[23]_i_7_n_0\
    );
\rgb_o[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => row_s1_reg_n_9,
      I1 => column_s1(3),
      I2 => row_s1_reg_n_1,
      I3 => \rgb_o_reg[23]_i_2_0\,
      O => \rgb_o[23]_i_9_n_0\
    );
\rgb_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(2),
      O => \rgb_o[2]_i_1_n_0\
    );
\rgb_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(3),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[3]_i_1_n_0\
    );
\rgb_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(4),
      O => \rgb_o[4]_i_1_n_0\
    );
\rgb_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(5),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[5]_i_1_n_0\
    );
\rgb_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(6),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[6]_i_1_n_0\
    );
\rgb_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => base_s1(2),
      I1 => text_s1,
      I2 => \rgb_o_reg[23]_i_2_n_0\,
      I3 => column_s1(0),
      I4 => \rgb_o_reg[23]_i_3_n_0\,
      O => \rgb_o[7]_i_1_n_0\
    );
\rgb_o[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(8),
      O => \rgb_o[8]_i_1_n_0\
    );
\rgb_o[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F0000"
    )
        port map (
      I0 => text_s1,
      I1 => \rgb_o_reg[23]_i_2_n_0\,
      I2 => column_s1(0),
      I3 => \rgb_o_reg[23]_i_3_n_0\,
      I4 => base_s1(9),
      O => \rgb_o[9]_i_1_n_0\
    );
\rgb_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\rgb_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[10]_i_1_n_0\,
      Q => status_rgb(10)
    );
\rgb_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[11]_i_1_n_0\,
      Q => status_rgb(11)
    );
\rgb_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[12]_i_1_n_0\,
      Q => status_rgb(12)
    );
\rgb_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[13]_i_1_n_0\,
      Q => status_rgb(13)
    );
\rgb_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[14]_i_1_n_0\,
      Q => status_rgb(14)
    );
\rgb_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[15]_i_1_n_0\,
      Q => status_rgb(15)
    );
\rgb_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[16]_i_1_n_0\,
      Q => \^q\(2)
    );
\rgb_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[17]_i_1_n_0\,
      Q => status_rgb(17)
    );
\rgb_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[18]_i_1_n_0\,
      Q => status_rgb(18)
    );
\rgb_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[19]_i_1_n_0\,
      Q => status_rgb(19)
    );
\rgb_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[1]_i_1_n_0\,
      Q => status_rgb(1)
    );
\rgb_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[20]_i_1_n_0\,
      Q => status_rgb(20)
    );
\rgb_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[22]_i_1_n_0\,
      Q => status_rgb(22)
    );
\rgb_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[23]_i_1_n_0\,
      Q => status_rgb(23)
    );
\rgb_o_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rgb_o[23]_i_4_n_0\,
      I1 => \rgb_o[23]_i_5_n_0\,
      O => \rgb_o_reg[23]_i_2_n_0\,
      S => column_s1(1)
    );
\rgb_o_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rgb_o[23]_i_6_n_0\,
      I1 => \rgb_o[23]_i_7_n_0\,
      O => \rgb_o_reg[23]_i_3_n_0\,
      S => column_s1(1)
    );
\rgb_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[2]_i_1_n_0\,
      Q => status_rgb(2)
    );
\rgb_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[3]_i_1_n_0\,
      Q => status_rgb(3)
    );
\rgb_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[4]_i_1_n_0\,
      Q => status_rgb(4)
    );
\rgb_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[5]_i_1_n_0\,
      Q => status_rgb(5)
    );
\rgb_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[6]_i_1_n_0\,
      Q => status_rgb(6)
    );
\rgb_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[7]_i_1_n_0\,
      Q => status_rgb(7)
    );
\rgb_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[8]_i_1_n_0\,
      Q => \^q\(1)
    );
\rgb_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => \rgb_o[9]_i_1_n_0\,
      Q => status_rgb(9)
    );
row_s1_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000007FFE01800180018001800180018001800180018001803FFC00000000",
      INIT_01 => X"00001040104010401040107E104010405040507C3640334011FE198008800CC0",
      INIT_02 => X"00000002170710C8105013FE502075FC350439FC110411FC7C0010D813FE10D8",
      INIT_03 => X"00000000200E7C1A0FB20C200C200C603F400040004000C07FFE00C800D800C0",
      INIT_04 => X"0000104010401646124C1348115851D050E070E037FE30401040184018400000",
      INIT_05 => X"0000030E4BCA7B504B104B104B227BFE4B204B207BFC4B044B047B0403FC0000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10) => glyph1,
      ADDRARDADDR(9) => character(1),
      ADDRARDADDR(8) => \character__0\(0),
      ADDRARDADDR(7) => row_s1_reg_i_4_n_0,
      ADDRARDADDR(6) => row_s1_reg_i_5_n_0,
      ADDRARDADDR(5) => row_s1_reg_i_6_n_0,
      ADDRARDADDR(4) => row_s1_reg_i_7_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => pixel_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15) => row_s1_reg_n_0,
      DOADO(14) => row_s1_reg_n_1,
      DOADO(13) => row_s1_reg_n_2,
      DOADO(12) => row_s1_reg_n_3,
      DOADO(11) => row_s1_reg_n_4,
      DOADO(10) => row_s1_reg_n_5,
      DOADO(9) => row_s1_reg_n_6,
      DOADO(8) => row_s1_reg_n_7,
      DOADO(7) => row_s1_reg_n_8,
      DOADO(6) => row_s1_reg_n_9,
      DOADO(5) => row_s1_reg_n_10,
      DOADO(4) => row_s1_reg_n_11,
      DOADO(3) => row_s1_reg_n_12,
      DOADO(2) => row_s1_reg_n_13,
      DOADO(1) => row_s1_reg_n_14,
      DOADO(0) => row_s1_reg_n_15,
      DOBDO(15 downto 0) => NLW_row_s1_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_row_s1_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_row_s1_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
row_s1_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(6),
      I1 => sleep_mode,
      O => glyph1
    );
row_s1_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(5),
      I1 => \base_s1_reg[0]_0\(4),
      I2 => sleep_mode,
      I3 => \base_s1_reg[0]_0\(6),
      O => character(1)
    );
row_s1_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(5),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_0\(4),
      O => \character__0\(0)
    );
row_s1_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(4),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_1\(3),
      O => row_s1_reg_i_4_n_0
    );
row_s1_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(3),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_1\(2),
      O => row_s1_reg_i_5_n_0
    );
row_s1_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(2),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_1\(1),
      O => row_s1_reg_i_6_n_0
    );
row_s1_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(1),
      I1 => sleep_mode,
      I2 => \base_s1_reg[0]_1\(0),
      O => row_s1_reg_i_7_n_0
    );
text_s1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \base_s1_reg[0]_1\(7),
      I1 => \base_s1_reg[0]_1\(5),
      I2 => sleep_mode,
      I3 => \base_s1_reg[0]_1\(4),
      O => \osd_y_reg[8]\
    );
text_s1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEFF"
    )
        port map (
      I0 => \base_s1_reg[0]_0\(9),
      I1 => \base_s1_reg[0]_0\(8),
      I2 => \base_s1_reg[0]_0\(7),
      I3 => \base_s1_reg[0]_0\(6),
      I4 => \base_s1_reg[0]_0\(4),
      I5 => \base_s1_reg[0]_0\(5),
      O => \osd_x_reg[10]_0\
    );
text_s1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => sleep_mode,
      I1 => \base_s1_reg[0]_0\(7),
      I2 => \base_s1_reg[0]_1\(5),
      I3 => \base_s1_reg[0]_1\(7),
      I4 => \base_s1_reg[0]_0\(9),
      I5 => \base_s1_reg[0]_0\(8),
      O => sleep_mode_reg
    );
text_s1_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => text_s10,
      Q => text_s1
    );
vs_o_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => vs_s1,
      Q => status_vs
    );
vs_s1_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => vs_o_reg_0,
      D => overlay_vs,
      Q => vs_s1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder is
  port (
    de_q : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    status_de : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    status_hs : in STD_LOGIC;
    status_vs : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ones_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder : entity is "tx2_tmds_encoder";
end facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder is
  signal c0_q : STD_LOGIC;
  signal c1_q : STD_LOGIC;
  signal \^de_q\ : STD_LOGIC;
  signal \disparity0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \disparity0_carry__0_n_7\ : STD_LOGIC;
  signal disparity0_carry_i_2_n_0 : STD_LOGIC;
  signal disparity0_carry_i_3_n_0 : STD_LOGIC;
  signal disparity0_carry_i_4_n_0 : STD_LOGIC;
  signal disparity0_carry_i_5_n_0 : STD_LOGIC;
  signal disparity0_carry_n_0 : STD_LOGIC;
  signal disparity0_carry_n_1 : STD_LOGIC;
  signal disparity0_carry_n_2 : STD_LOGIC;
  signal disparity0_carry_n_3 : STD_LOGIC;
  signal disparity0_carry_n_4 : STD_LOGIC;
  signal disparity0_carry_n_5 : STD_LOGIC;
  signal disparity0_carry_n_6 : STD_LOGIC;
  signal disparity0_carry_n_7 : STD_LOGIC;
  signal disparity1 : STD_LOGIC;
  signal disparity13_out : STD_LOGIC;
  signal disparity22_in : STD_LOGIC;
  signal \disparity[1]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_6__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_8__1_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_out__1\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \qm_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal \symbol[0]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[1]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[2]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[3]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[4]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[5]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[6]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[7]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[8]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \NLW_disparity0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \disparity[3]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \disparity[3]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \disparity[3]_i_5__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \disparity[4]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \disparity[4]_i_4__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \disparity[4]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \disparity[5]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \disparity[5]_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \symbol[8]_i_1\ : label is "soft_lutpair28";
begin
  de_q <= \^de_q\;
  rst_n_0 <= \^rst_n_0\;
c0_q_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => status_hs,
      Q => c0_q
    );
c1_q_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => status_vs,
      Q => c1_q
    );
de_q_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => status_de,
      Q => \^de_q\
    );
disparity0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => disparity0_carry_n_0,
      CO(2) => disparity0_carry_n_1,
      CO(1) => disparity0_carry_n_2,
      CO(0) => disparity0_carry_n_3,
      CYINIT => \p_0_out__1\,
      DI(3) => \disparity_reg_n_0_[4]\,
      DI(2) => \disparity_reg_n_0_[3]\,
      DI(1) => \disparity_reg_n_0_[2]\,
      DI(0) => \disparity_reg_n_0_[1]\,
      O(3) => disparity0_carry_n_4,
      O(2) => disparity0_carry_n_5,
      O(1) => disparity0_carry_n_6,
      O(0) => disparity0_carry_n_7,
      S(3) => disparity0_carry_i_2_n_0,
      S(2) => disparity0_carry_i_3_n_0,
      S(1) => disparity0_carry_i_4_n_0,
      S(0) => disparity0_carry_i_5_n_0
    );
\disparity0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => disparity0_carry_n_0,
      CO(3 downto 0) => \NLW_disparity0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_disparity0_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \disparity0_carry__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \disparity0_carry__0_i_1_n_0\
    );
\disparity0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \disparity_reg_n_0_[5]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => \disparity0_carry__0_i_1_n_0\
    );
\disparity0_carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => \p_0_out__1\
    );
disparity0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => disparity0_carry_i_2_n_0
    );
disparity0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      I2 => p_1_in,
      O => disparity0_carry_i_3_n_0
    );
disparity0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_1_in,
      O => disparity0_carry_i_4_n_0
    );
disparity0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => p_0_in(1),
      I2 => p_1_in,
      O => disparity0_carry_i_5_n_0
    );
\disparity[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA288200002882"
    )
        port map (
      I0 => \^de_q\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[1]_i_2_n_0\,
      I3 => disparity1,
      I4 => disparity13_out,
      I5 => disparity0_carry_n_7,
      O => \disparity[1]_i_1_n_0\
    );
\disparity[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in(1),
      O => \disparity[1]_i_2_n_0\
    );
\disparity[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^de_q\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_6,
      O => \disparity[2]_i_1_n_0\
    );
\disparity[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB42DD287781EE1"
    )
        port map (
      I0 => disparity1,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => p_0_in(2),
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[2]_i_2_n_0\
    );
\disparity[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^de_q\,
      I1 => \disparity[3]_i_2__1_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_5,
      O => \disparity[3]_i_1__1_n_0\
    );
\disparity[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"748B748BB84747B8"
    )
        port map (
      I0 => \disparity[3]_i_3_n_0\,
      I1 => disparity1,
      I2 => \disparity[3]_i_4_n_0\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => p_0_in(2),
      O => \disparity[3]_i_2__1_n_0\
    );
\disparity[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F999909"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_3_n_0\
    );
\disparity[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9999990"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \disparity_reg_n_0_[2]\,
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_4_n_0\
    );
\disparity[3]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      O => \disparity[3]_i_5__1_n_0\
    );
\disparity[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^de_q\,
      I1 => \disparity[4]_i_2__1_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_4,
      O => \disparity[4]_i_1__1_n_0\
    );
\disparity[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F6F609F90606F"
    )
        port map (
      I0 => \disparity[5]_i_8__1_n_0\,
      I1 => \disparity[4]_i_3_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_6__1_n_0\,
      I4 => \disparity[4]_i_4__1_n_0\,
      I5 => \disparity[4]_i_5_n_0\,
      O => \disparity[4]_i_2__1_n_0\
    );
\disparity[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      O => \disparity[4]_i_3_n_0\
    );
\disparity[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \disparity_reg_n_0_[3]\,
      O => \disparity[4]_i_4__1_n_0\
    );
\disparity[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      O => \disparity[4]_i_5_n_0\
    );
\disparity[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \^de_q\,
      I1 => \disparity[5]_i_2__1_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_4__1_n_0\,
      I4 => disparity13_out,
      I5 => \disparity0_carry__0_n_7\,
      O => \disparity[5]_i_1__1_n_0\
    );
\disparity[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15EA7F807F80EA15"
    )
        port map (
      I0 => \disparity[5]_i_6__1_n_0\,
      I1 => p_0_in(3),
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[5]\,
      I4 => \disparity_reg_n_0_[4]\,
      I5 => p_0_in(4),
      O => \disparity[5]_i_2__1_n_0\
    );
\disparity[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0FFF0F0E000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => \disparity[5]_i_7_n_0\,
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => \disparity_reg_n_0_[5]\,
      O => disparity1
    );
\disparity[5]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E178F05A87E1A5F0"
    )
        port map (
      I0 => \disparity[5]_i_8__1_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[5]\,
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => \disparity_reg_n_0_[4]\,
      O => \disparity[5]_i_4__1_n_0\
    );
\disparity[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => disparity22_in,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(4),
      O => disparity13_out
    );
\disparity[5]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAEAEAEAEAA8"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_6__1_n_0\
    );
\disparity[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => \disparity[5]_i_7_n_0\
    );
\disparity[5]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A220BAA2A2A2"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_8__1_n_0\
    );
\disparity[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[4]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => disparity22_in
    );
\disparity_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \disparity[1]_i_1_n_0\,
      Q => \disparity_reg_n_0_[1]\
    );
\disparity_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \disparity[2]_i_1_n_0\,
      Q => \disparity_reg_n_0_[2]\
    );
\disparity_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \disparity[3]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[3]\
    );
\disparity_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \disparity[4]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[4]\
    );
\disparity_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \disparity[5]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[5]\
    );
\frames_displayed[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\ones_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ones_q_reg[3]_0\(0),
      Q => p_0_in(1)
    );
\ones_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ones_q_reg[3]_0\(1),
      Q => p_0_in(2)
    );
\ones_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ones_q_reg[3]_0\(2),
      Q => p_0_in(3)
    );
\ones_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \ones_q_reg[3]_0\(3),
      Q => p_0_in(4)
    );
\qm_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(0),
      Q => \qm_q_reg_n_0_[0]\
    );
\qm_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(1),
      Q => \qm_q_reg_n_0_[1]\
    );
\qm_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(2),
      Q => \qm_q_reg_n_0_[2]\
    );
\qm_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(3),
      Q => \qm_q_reg_n_0_[3]\
    );
\qm_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(4),
      Q => \qm_q_reg_n_0_[4]\
    );
\qm_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(5),
      Q => \qm_q_reg_n_0_[5]\
    );
\qm_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(6),
      Q => \qm_q_reg_n_0_[6]\
    );
\qm_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(7),
      Q => \qm_q_reg_n_0_[7]\
    );
\qm_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => D(8),
      Q => p_1_in
    );
\symbol[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B74FFFF8B740000"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[0]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[0]_i_1_n_0\
    );
\symbol[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B74FFFF8B740000"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[1]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[1]_i_1_n_0\
    );
\symbol[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B7400008B74FFFF"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[2]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[2]_i_1_n_0\
    );
\symbol[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B74FFFF8B740000"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[3]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[3]_i_1_n_0\
    );
\symbol[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B7400008B74FFFF"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[4]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[4]_i_1_n_0\
    );
\symbol[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B74FFFF8B740000"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[5]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[5]_i_1_n_0\
    );
\symbol[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B7400008B74FFFF"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[6]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[6]_i_1_n_0\
    );
\symbol[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B74FFFF8B740000"
    )
        port map (
      I0 => p_1_in,
      I1 => disparity13_out,
      I2 => disparity1,
      I3 => \qm_q_reg_n_0_[7]\,
      I4 => \^de_q\,
      I5 => c0_q,
      O => \symbol[7]_i_1_n_0\
    );
\symbol[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_1_in,
      I1 => \^de_q\,
      I2 => c0_q,
      O => \symbol[8]_i_1_n_0\
    );
\symbol[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09F9F9F909F90909"
    )
        port map (
      I0 => c0_q,
      I1 => c1_q,
      I2 => \^de_q\,
      I3 => p_1_in,
      I4 => disparity13_out,
      I5 => disparity1,
      O => \symbol[9]_i_1__1_n_0\
    );
\symbol_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \symbol[0]_i_1_n_0\,
      Q => Q(0)
    );
\symbol_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \symbol[1]_i_1_n_0\,
      Q => Q(1)
    );
\symbol_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[2]_i_1_n_0\,
      PRE => \^rst_n_0\,
      Q => Q(2)
    );
\symbol_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \symbol[3]_i_1_n_0\,
      Q => Q(3)
    );
\symbol_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[4]_i_1_n_0\,
      PRE => \^rst_n_0\,
      Q => Q(4)
    );
\symbol_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \symbol[5]_i_1_n_0\,
      Q => Q(5)
    );
\symbol_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[6]_i_1_n_0\,
      PRE => \^rst_n_0\,
      Q => Q(6)
    );
\symbol_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \symbol[7]_i_1_n_0\,
      Q => Q(7)
    );
\symbol_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[8]_i_1_n_0\,
      PRE => \^rst_n_0\,
      Q => Q(8)
    );
\symbol_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[9]_i_1__1_n_0\,
      PRE => \^rst_n_0\,
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    de_q : in STD_LOGIC;
    \qm_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pixel_clk : in STD_LOGIC;
    \symbol_reg[0]_0\ : in STD_LOGIC;
    \ones_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2 : entity is "tx2_tmds_encoder";
end facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2 is
  signal \disparity0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity0_carry__0_n_7\ : STD_LOGIC;
  signal \disparity0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal disparity0_carry_n_0 : STD_LOGIC;
  signal disparity0_carry_n_1 : STD_LOGIC;
  signal disparity0_carry_n_2 : STD_LOGIC;
  signal disparity0_carry_n_3 : STD_LOGIC;
  signal disparity0_carry_n_4 : STD_LOGIC;
  signal disparity0_carry_n_5 : STD_LOGIC;
  signal disparity0_carry_n_6 : STD_LOGIC;
  signal disparity0_carry_n_7 : STD_LOGIC;
  signal disparity1 : STD_LOGIC;
  signal disparity13_out : STD_LOGIC;
  signal disparity22_in : STD_LOGIC;
  signal \disparity[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \p_0_out__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \qm_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \symbol[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \symbol[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_disparity0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[3]_i_3__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \disparity[3]_i_4__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \disparity[3]_i_5__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \disparity[4]_i_3__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \disparity[4]_i_4__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \disparity[4]_i_5__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \disparity[5]_i_7__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \disparity[5]_i_9__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \symbol[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \symbol[6]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \symbol[8]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \symbol[9]_i_1__0\ : label is "soft_lutpair30";
begin
disparity0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => disparity0_carry_n_0,
      CO(2) => disparity0_carry_n_1,
      CO(1) => disparity0_carry_n_2,
      CO(0) => disparity0_carry_n_3,
      CYINIT => \p_0_out__0\,
      DI(3) => \disparity_reg_n_0_[4]\,
      DI(2) => \disparity_reg_n_0_[3]\,
      DI(1) => \disparity_reg_n_0_[2]\,
      DI(0) => \disparity_reg_n_0_[1]\,
      O(3) => disparity0_carry_n_4,
      O(2) => disparity0_carry_n_5,
      O(1) => disparity0_carry_n_6,
      O(0) => disparity0_carry_n_7,
      S(3) => \disparity0_carry_i_2__0_n_0\,
      S(2) => \disparity0_carry_i_3__0_n_0\,
      S(1) => \disparity0_carry_i_4__0_n_0\,
      S(0) => \disparity0_carry_i_5__0_n_0\
    );
\disparity0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => disparity0_carry_n_0,
      CO(3 downto 0) => \NLW_disparity0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_disparity0_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \disparity0_carry__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \disparity0_carry__0_i_1__0_n_0\
    );
\disparity0_carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \disparity_reg_n_0_[5]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => \disparity0_carry__0_i_1__0_n_0\
    );
\disparity0_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => \p_0_out__0\
    );
\disparity0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => \disparity0_carry_i_2__0_n_0\
    );
\disparity0_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      I2 => p_1_in,
      O => \disparity0_carry_i_3__0_n_0\
    );
\disparity0_carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_1_in,
      O => \disparity0_carry_i_4__0_n_0\
    );
\disparity0_carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => p_0_in(1),
      I2 => p_1_in,
      O => \disparity0_carry_i_5__0_n_0\
    );
\disparity[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA288200002882"
    )
        port map (
      I0 => de_q,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[1]_i_2__0_n_0\,
      I3 => disparity1,
      I4 => disparity13_out,
      I5 => disparity0_carry_n_7,
      O => \disparity[1]_i_1__0_n_0\
    );
\disparity[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in(1),
      O => \disparity[1]_i_2__0_n_0\
    );
\disparity[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[2]_i_2__0_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_6,
      O => \disparity[2]_i_1__0_n_0\
    );
\disparity[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB42DD287781EE1"
    )
        port map (
      I0 => disparity1,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => p_0_in(2),
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[2]_i_2__0_n_0\
    );
\disparity[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[3]_i_2__0_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_5,
      O => \disparity[3]_i_1__0_n_0\
    );
\disparity[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"748B748BB84747B8"
    )
        port map (
      I0 => \disparity[3]_i_3__0_n_0\,
      I1 => disparity1,
      I2 => \disparity[3]_i_4__0_n_0\,
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => p_0_in(2),
      O => \disparity[3]_i_2__0_n_0\
    );
\disparity[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F999909"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_3__0_n_0\
    );
\disparity[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9999990"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \disparity_reg_n_0_[2]\,
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_4__0_n_0\
    );
\disparity[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      O => \disparity[3]_i_5__0_n_0\
    );
\disparity[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[4]_i_2__0_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_4,
      O => \disparity[4]_i_1__0_n_0\
    );
\disparity[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F6F609F90606F"
    )
        port map (
      I0 => \disparity[5]_i_8__0_n_0\,
      I1 => \disparity[4]_i_3__0_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_6__0_n_0\,
      I4 => \disparity[4]_i_4__0_n_0\,
      I5 => \disparity[4]_i_5__0_n_0\,
      O => \disparity[4]_i_2__0_n_0\
    );
\disparity[4]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      O => \disparity[4]_i_3__0_n_0\
    );
\disparity[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \disparity_reg_n_0_[3]\,
      O => \disparity[4]_i_4__0_n_0\
    );
\disparity[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      O => \disparity[4]_i_5__0_n_0\
    );
\disparity[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[5]_i_2__0_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_4__0_n_0\,
      I4 => disparity13_out,
      I5 => \disparity0_carry__0_n_7\,
      O => \disparity[5]_i_1__0_n_0\
    );
\disparity[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15EA7F807F80EA15"
    )
        port map (
      I0 => \disparity[5]_i_6__0_n_0\,
      I1 => p_0_in(3),
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[5]\,
      I4 => \disparity_reg_n_0_[4]\,
      I5 => p_0_in(4),
      O => \disparity[5]_i_2__0_n_0\
    );
\disparity[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0FFF0F0E000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => \disparity[5]_i_7__0_n_0\,
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => \disparity_reg_n_0_[5]\,
      O => disparity1
    );
\disparity[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E178F05A87E1A5F0"
    )
        port map (
      I0 => \disparity[5]_i_8__0_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[5]\,
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => \disparity_reg_n_0_[4]\,
      O => \disparity[5]_i_4__0_n_0\
    );
\disparity[5]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => disparity22_in,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(4),
      O => disparity13_out
    );
\disparity[5]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAEAEAEAEAA8"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_6__0_n_0\
    );
\disparity[5]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => \disparity[5]_i_7__0_n_0\
    );
\disparity[5]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A220BAA2A2A2"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_8__0_n_0\
    );
\disparity[5]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[4]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => disparity22_in
    );
\disparity_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[1]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[1]\
    );
\disparity_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[2]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[2]\
    );
\disparity_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[3]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[3]\
    );
\disparity_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[4]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[4]\
    );
\disparity_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[5]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[5]\
    );
\ones_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(0),
      Q => p_0_in(1)
    );
\ones_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(1),
      Q => p_0_in(2)
    );
\ones_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(2),
      Q => p_0_in(3)
    );
\ones_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(3),
      Q => p_0_in(4)
    );
\qm_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(0),
      Q => \qm_q_reg_n_0_[0]\
    );
\qm_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(1),
      Q => \qm_q_reg_n_0_[1]\
    );
\qm_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(2),
      Q => \qm_q_reg_n_0_[2]\
    );
\qm_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(3),
      Q => \qm_q_reg_n_0_[3]\
    );
\qm_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(4),
      Q => \qm_q_reg_n_0_[4]\
    );
\qm_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(5),
      Q => \qm_q_reg_n_0_[5]\
    );
\qm_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(6),
      Q => \qm_q_reg_n_0_[6]\
    );
\qm_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(7),
      Q => \qm_q_reg_n_0_[7]\
    );
\qm_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(8),
      Q => p_1_in
    );
\symbol[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[0]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[0]_i_1__0_n_0\
    );
\symbol[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[1]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[1]_i_1__0_n_0\
    );
\symbol[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[2]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[2]_i_1__0_n_0\
    );
\symbol[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[3]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[3]_i_1__0_n_0\
    );
\symbol[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[4]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[4]_i_1__0_n_0\
    );
\symbol[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[5]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[5]_i_1__0_n_0\
    );
\symbol[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[6]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[6]_i_1__0_n_0\
    );
\symbol[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[7]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[7]_i_1__0_n_0\
    );
\symbol[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => de_q,
      O => \symbol[8]_i_1__0_n_0\
    );
\symbol[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EFF"
    )
        port map (
      I0 => disparity1,
      I1 => disparity13_out,
      I2 => p_1_in,
      I3 => de_q,
      O => \symbol[9]_i_1__0_n_0\
    );
\symbol_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[0]_i_1__0_n_0\,
      Q => Q(0)
    );
\symbol_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[1]_i_1__0_n_0\,
      Q => Q(1)
    );
\symbol_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[2]_i_1__0_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(2)
    );
\symbol_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[3]_i_1__0_n_0\,
      Q => Q(3)
    );
\symbol_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[4]_i_1__0_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(4)
    );
\symbol_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[5]_i_1__0_n_0\,
      Q => Q(5)
    );
\symbol_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[6]_i_1__0_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(6)
    );
\symbol_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[7]_i_1__0_n_0\,
      Q => Q(7)
    );
\symbol_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[8]_i_1__0_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(8)
    );
\symbol_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[9]_i_1__0_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    de_q : in STD_LOGIC;
    \qm_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pixel_clk : in STD_LOGIC;
    \symbol_reg[0]_0\ : in STD_LOGIC;
    \ones_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4 : entity is "tx2_tmds_encoder";
end facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4 is
  signal \disparity0_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity0_carry__0_n_7\ : STD_LOGIC;
  signal \disparity0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal disparity0_carry_n_0 : STD_LOGIC;
  signal disparity0_carry_n_1 : STD_LOGIC;
  signal disparity0_carry_n_2 : STD_LOGIC;
  signal disparity0_carry_n_3 : STD_LOGIC;
  signal disparity0_carry_n_4 : STD_LOGIC;
  signal disparity0_carry_n_5 : STD_LOGIC;
  signal disparity0_carry_n_6 : STD_LOGIC;
  signal disparity0_carry_n_7 : STD_LOGIC;
  signal disparity1 : STD_LOGIC;
  signal disparity13_out : STD_LOGIC;
  signal disparity22_in : STD_LOGIC;
  signal \disparity[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_7__1_n_0\ : STD_LOGIC;
  signal \disparity[5]_i_8_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \qm_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \qm_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \symbol[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \symbol[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_disparity0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[3]_i_3__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \disparity[3]_i_4__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \disparity[3]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \disparity[4]_i_3__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \disparity[4]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \disparity[4]_i_5__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \disparity[5]_i_7__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \disparity[5]_i_9__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \symbol[4]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \symbol[6]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \symbol[8]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \symbol[9]_i_1\ : label is "soft_lutpair36";
begin
disparity0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => disparity0_carry_n_0,
      CO(2) => disparity0_carry_n_1,
      CO(1) => disparity0_carry_n_2,
      CO(0) => disparity0_carry_n_3,
      CYINIT => p_0_out,
      DI(3) => \disparity_reg_n_0_[4]\,
      DI(2) => \disparity_reg_n_0_[3]\,
      DI(1) => \disparity_reg_n_0_[2]\,
      DI(0) => \disparity_reg_n_0_[1]\,
      O(3) => disparity0_carry_n_4,
      O(2) => disparity0_carry_n_5,
      O(1) => disparity0_carry_n_6,
      O(0) => disparity0_carry_n_7,
      S(3) => \disparity0_carry_i_2__1_n_0\,
      S(2) => \disparity0_carry_i_3__1_n_0\,
      S(1) => \disparity0_carry_i_4__1_n_0\,
      S(0) => \disparity0_carry_i_5__1_n_0\
    );
\disparity0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => disparity0_carry_n_0,
      CO(3 downto 0) => \NLW_disparity0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_disparity0_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \disparity0_carry__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \disparity0_carry__0_i_1__1_n_0\
    );
\disparity0_carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => \disparity_reg_n_0_[5]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => \disparity0_carry__0_i_1__1_n_0\
    );
disparity0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => p_0_out
    );
\disparity0_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(3),
      I2 => p_0_in(4),
      I3 => p_1_in,
      O => \disparity0_carry_i_2__1_n_0\
    );
\disparity0_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      I2 => p_1_in,
      O => \disparity0_carry_i_3__1_n_0\
    );
\disparity0_carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_1_in,
      O => \disparity0_carry_i_4__1_n_0\
    );
\disparity0_carry_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => p_0_in(1),
      I2 => p_1_in,
      O => \disparity0_carry_i_5__1_n_0\
    );
\disparity[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA288200002882"
    )
        port map (
      I0 => de_q,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[1]_i_2__1_n_0\,
      I3 => disparity1,
      I4 => disparity13_out,
      I5 => disparity0_carry_n_7,
      O => \disparity[1]_i_1__1_n_0\
    );
\disparity[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in(1),
      O => \disparity[1]_i_2__1_n_0\
    );
\disparity[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[2]_i_2__1_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_6,
      O => \disparity[2]_i_1__1_n_0\
    );
\disparity[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB42DD287781EE1"
    )
        port map (
      I0 => disparity1,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => p_0_in(2),
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[2]_i_2__1_n_0\
    );
\disparity[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[3]_i_2_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_5,
      O => \disparity[3]_i_1_n_0\
    );
\disparity[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"748B748BB84747B8"
    )
        port map (
      I0 => \disparity[3]_i_3__1_n_0\,
      I1 => disparity1,
      I2 => \disparity[3]_i_4__1_n_0\,
      I3 => \disparity[3]_i_5_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => p_0_in(2),
      O => \disparity[3]_i_2_n_0\
    );
\disparity[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F999909"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_3__1_n_0\
    );
\disparity[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9999990"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \disparity_reg_n_0_[2]\,
      I2 => p_0_in(1),
      I3 => p_1_in,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_4__1_n_0\
    );
\disparity[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => p_0_in(3),
      O => \disparity[3]_i_5_n_0\
    );
\disparity[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[4]_i_2_n_0\,
      I2 => disparity13_out,
      I3 => disparity0_carry_n_4,
      O => \disparity[4]_i_1_n_0\
    );
\disparity[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F6F609F90606F"
    )
        port map (
      I0 => \disparity[5]_i_8_n_0\,
      I1 => \disparity[4]_i_3__1_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_6_n_0\,
      I4 => \disparity[4]_i_4_n_0\,
      I5 => \disparity[4]_i_5__1_n_0\,
      O => \disparity[4]_i_2_n_0\
    );
\disparity[4]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      O => \disparity[4]_i_3__1_n_0\
    );
\disparity[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \disparity_reg_n_0_[3]\,
      O => \disparity[4]_i_4_n_0\
    );
\disparity[4]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => p_0_in(4),
      O => \disparity[4]_i_5__1_n_0\
    );
\disparity[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => de_q,
      I1 => \disparity[5]_i_2_n_0\,
      I2 => disparity1,
      I3 => \disparity[5]_i_4_n_0\,
      I4 => disparity13_out,
      I5 => \disparity0_carry__0_n_7\,
      O => \disparity[5]_i_1_n_0\
    );
\disparity[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15EA7F807F80EA15"
    )
        port map (
      I0 => \disparity[5]_i_6_n_0\,
      I1 => p_0_in(3),
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[5]\,
      I4 => \disparity_reg_n_0_[4]\,
      I5 => p_0_in(4),
      O => \disparity[5]_i_2_n_0\
    );
\disparity[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0FFF0F0E000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => \disparity[5]_i_7__1_n_0\,
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => \disparity_reg_n_0_[5]\,
      O => disparity1
    );
\disparity[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E178F05A87E1A5F0"
    )
        port map (
      I0 => \disparity[5]_i_8_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[5]\,
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => \disparity_reg_n_0_[4]\,
      O => \disparity[5]_i_4_n_0\
    );
\disparity[5]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => disparity22_in,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(4),
      O => disparity13_out
    );
\disparity[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAEAEAEAEAA8"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_6_n_0\
    );
\disparity[5]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => \disparity[5]_i_7__1_n_0\
    );
\disparity[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A220BAA2A2A2"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => p_0_in(2),
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => p_1_in,
      I5 => p_0_in(1),
      O => \disparity[5]_i_8_n_0\
    );
\disparity[5]_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[4]\,
      I4 => \disparity_reg_n_0_[5]\,
      O => disparity22_in
    );
\disparity_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[1]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[1]\
    );
\disparity_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[2]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[2]\
    );
\disparity_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[3]_i_1_n_0\,
      Q => \disparity_reg_n_0_[3]\
    );
\disparity_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[4]_i_1_n_0\,
      Q => \disparity_reg_n_0_[4]\
    );
\disparity_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \disparity[5]_i_1_n_0\,
      Q => \disparity_reg_n_0_[5]\
    );
\ones_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(0),
      Q => p_0_in(1)
    );
\ones_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(1),
      Q => p_0_in(2)
    );
\ones_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(2),
      Q => p_0_in(3)
    );
\ones_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \ones_q_reg[3]_0\(3),
      Q => p_0_in(4)
    );
\qm_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(0),
      Q => \qm_q_reg_n_0_[0]\
    );
\qm_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(1),
      Q => \qm_q_reg_n_0_[1]\
    );
\qm_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(2),
      Q => \qm_q_reg_n_0_[2]\
    );
\qm_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(3),
      Q => \qm_q_reg_n_0_[3]\
    );
\qm_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(4),
      Q => \qm_q_reg_n_0_[4]\
    );
\qm_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(5),
      Q => \qm_q_reg_n_0_[5]\
    );
\qm_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(6),
      Q => \qm_q_reg_n_0_[6]\
    );
\qm_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(7),
      Q => \qm_q_reg_n_0_[7]\
    );
\qm_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \qm_q_reg[8]_0\(8),
      Q => p_1_in
    );
\symbol[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[0]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[0]_i_1__1_n_0\
    );
\symbol[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[1]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[1]_i_1__1_n_0\
    );
\symbol[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[2]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[2]_i_1__1_n_0\
    );
\symbol[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[3]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[3]_i_1__1_n_0\
    );
\symbol[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[4]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[4]_i_1__1_n_0\
    );
\symbol[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[5]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[5]_i_1__1_n_0\
    );
\symbol[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656FFFF"
    )
        port map (
      I0 => \qm_q_reg_n_0_[6]\,
      I1 => disparity1,
      I2 => disparity13_out,
      I3 => p_1_in,
      I4 => de_q,
      O => \symbol[6]_i_1__1_n_0\
    );
\symbol[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_q,
      I1 => \qm_q_reg_n_0_[7]\,
      I2 => disparity1,
      I3 => disparity13_out,
      I4 => p_1_in,
      O => \symbol[7]_i_1__1_n_0\
    );
\symbol[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in,
      I1 => de_q,
      O => \symbol[8]_i_1__1_n_0\
    );
\symbol[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EFF"
    )
        port map (
      I0 => disparity1,
      I1 => disparity13_out,
      I2 => p_1_in,
      I3 => de_q,
      O => \symbol[9]_i_1_n_0\
    );
\symbol_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[0]_i_1__1_n_0\,
      Q => Q(0)
    );
\symbol_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[1]_i_1__1_n_0\,
      Q => Q(1)
    );
\symbol_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[2]_i_1__1_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(2)
    );
\symbol_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[3]_i_1__1_n_0\,
      Q => Q(3)
    );
\symbol_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[4]_i_1__1_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(4)
    );
\symbol_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[5]_i_1__1_n_0\,
      Q => Q(5)
    );
\symbol_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[6]_i_1__1_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(6)
    );
\symbol_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \symbol_reg[0]_0\,
      D => \symbol[7]_i_1__1_n_0\,
      Q => Q(7)
    );
\symbol_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[8]_i_1__1_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(8)
    );
\symbol_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \symbol[9]_i_1_n_0\,
      PRE => \symbol_reg[0]_0\,
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport is
  port (
    de : out STD_LOGIC;
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    frame_start : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \active_y_reg[9]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \active_y_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \active_x_reg[10]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    de_reg_0 : out STD_LOGIC;
    \active_x_reg[10]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \active_x_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \active_x_reg[10]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[20]_i_174_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dst_payload_reg[66]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dst_payload_reg[66]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dst_payload_reg[67]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \active_y_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \active_y_reg[9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[20]_i_62_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \active_x_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \active_x_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \active_x_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \active_x_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    disable_sync_reg : out STD_LOGIC;
    \active_y_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_reg[20]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_tready : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    \v_count_reg[0]\ : in STD_LOGIC;
    \rgb_o_reg[20]_i_85_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o_reg[20]_i_85_1\ : in STD_LOGIC;
    \rgb_o_reg[20]_i_85_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_10_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rgb_o_reg[20]_i_30_0\ : in STD_LOGIC;
    \rgb_o_reg[20]_i_30_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[20]_i_174_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o[20]_i_10_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \rgb_o_reg[20]_i_79_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rgb_o_reg[20]_i_79_1\ : in STD_LOGIC;
    left : in STD_LOGIC_VECTOR ( 0 to 0 );
    right : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_74\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_74_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bottom : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_21\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rgb_o[20]_i_20\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rgb_o_reg[20]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o_reg[20]_i_14_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rgb_o[20]_i_10_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_10_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    sleep_mode : in STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC;
    s_tvalid : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    s_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport : entity is "tx2_axis_viewport";
end facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal active : STD_LOGIC;
  signal active_x : STD_LOGIC_VECTOR ( 0 to 0 );
  signal active_y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^active_y_reg[9]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^de\ : STD_LOGIC;
  signal \^frame_start\ : STD_LOGIC;
  signal frame_start0 : STD_LOGIC;
  signal \frames_displayed[3]_i_2_n_0\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \frames_displayed_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \frames_displayed_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \frames_displayed_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \frames_displayed_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal pixel_ok : STD_LOGIC;
  signal raw_hs : STD_LOGIC;
  signal raw_vs : STD_LOGIC;
  signal \rgb_o[20]_i_117_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_118_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_119_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_121_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_123_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_141_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_142_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_143_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_147_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_148_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_149_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_150_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_151_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_152_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_153_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_154_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_155_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_157_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_158_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_159_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_160_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_163_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_164_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_167_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_168_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_170_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_171_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_172_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_173_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_175_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_176_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_177_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_179_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_180_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_181_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_182_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_196_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_197_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_198_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_201_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_202_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_203_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_204_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_205_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_206_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_207_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_208_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_209_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_212_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_213_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_214_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_215_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_254_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_256_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_258_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_259_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_260_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_261_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_262_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_263_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_264_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_265_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_266_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_267_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_268_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_32_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_81_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_83_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_174_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_174_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_174_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_174_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_211_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_211_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_211_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_211_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_30_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_30_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_47_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_47_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_47_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_57_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_57_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_57_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_60_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_60_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_60_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_60_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_61_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_61_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_61_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_61_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_62_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_62_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_62_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_62_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_65_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_65_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_65_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_65_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_67_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_67_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_67_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_67_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_72_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_72_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_72_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_79_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_79_n_1\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_79_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_79_n_3\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_85_n_2\ : STD_LOGIC;
  signal \rgb_o_reg[20]_i_85_n_3\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal stream_locked_reg_n_0 : STD_LOGIC;
  signal u_raster_n_0 : STD_LOGIC;
  signal u_raster_n_1 : STD_LOGIC;
  signal u_raster_n_10 : STD_LOGIC;
  signal u_raster_n_11 : STD_LOGIC;
  signal u_raster_n_12 : STD_LOGIC;
  signal u_raster_n_13 : STD_LOGIC;
  signal u_raster_n_15 : STD_LOGIC;
  signal u_raster_n_16 : STD_LOGIC;
  signal u_raster_n_17 : STD_LOGIC;
  signal u_raster_n_18 : STD_LOGIC;
  signal u_raster_n_19 : STD_LOGIC;
  signal u_raster_n_2 : STD_LOGIC;
  signal u_raster_n_20 : STD_LOGIC;
  signal u_raster_n_21 : STD_LOGIC;
  signal u_raster_n_22 : STD_LOGIC;
  signal u_raster_n_23 : STD_LOGIC;
  signal u_raster_n_24 : STD_LOGIC;
  signal u_raster_n_3 : STD_LOGIC;
  signal u_raster_n_4 : STD_LOGIC;
  signal u_raster_n_41 : STD_LOGIC;
  signal u_raster_n_5 : STD_LOGIC;
  signal u_raster_n_6 : STD_LOGIC;
  signal u_raster_n_7 : STD_LOGIC;
  signal u_raster_n_8 : STD_LOGIC;
  signal u_raster_n_9 : STD_LOGIC;
  signal underflow_sticky0 : STD_LOGIC;
  signal underflow_sticky_i_3_n_0 : STD_LOGIC;
  signal underflow_sticky_i_4_n_0 : STD_LOGIC;
  signal underflow_sticky_i_5_n_0 : STD_LOGIC;
  signal \NLW_frames_displayed_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_o_reg[20]_i_169_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_o_reg[20]_i_169_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_211_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_30_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_30_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_47_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_61_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_rgb_o_reg[20]_i_65_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_rgb_o_reg[20]_i_66_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_o_reg[20]_i_66_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_79_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_o_reg[20]_i_85_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_o_reg[20]_i_85_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \active_y_reg[9]_0\(8 downto 0) <= \^active_y_reg[9]_0\(8 downto 0);
  de <= \^de\;
  frame_start <= \^frame_start\;
  status(16 downto 0) <= \^status\(16 downto 0);
\active_x_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_13,
      Q => active_x(0)
    );
\active_x_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_3,
      Q => \^q\(9)
    );
\active_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_12,
      Q => \^q\(0)
    );
\active_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_11,
      Q => \^q\(1)
    );
\active_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_10,
      Q => \^q\(2)
    );
\active_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_9,
      Q => \^q\(3)
    );
\active_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_8,
      Q => \^q\(4)
    );
\active_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_7,
      Q => \^q\(5)
    );
\active_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_6,
      Q => \^q\(6)
    );
\active_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_5,
      Q => \^q\(7)
    );
\active_x_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_4,
      Q => \^q\(8)
    );
\active_y_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_24,
      Q => active_y(0)
    );
\active_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_23,
      Q => \^active_y_reg[9]_0\(0)
    );
\active_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_22,
      Q => \^active_y_reg[9]_0\(1)
    );
\active_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_21,
      Q => \^active_y_reg[9]_0\(2)
    );
\active_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_20,
      Q => \^active_y_reg[9]_0\(3)
    );
\active_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_19,
      Q => \^active_y_reg[9]_0\(4)
    );
\active_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_18,
      Q => \^active_y_reg[9]_0\(5)
    );
\active_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_17,
      Q => \^active_y_reg[9]_0\(6)
    );
\active_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_16,
      Q => \^active_y_reg[9]_0\(7)
    );
\active_y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_15,
      Q => \^active_y_reg[9]_0\(8)
    );
de_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => active,
      Q => \^de\
    );
frame_start_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => frame_start0,
      Q => \^frame_start\
    );
\frames_displayed[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(1),
      O => \frames_displayed[3]_i_2_n_0\
    );
\frames_displayed_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[3]_i_1_n_7\,
      Q => \^status\(1)
    );
\frames_displayed_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[11]_i_1_n_5\,
      Q => \^status\(11)
    );
\frames_displayed_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[11]_i_1_n_4\,
      Q => \^status\(12)
    );
\frames_displayed_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frames_displayed_reg[7]_i_1_n_0\,
      CO(3) => \frames_displayed_reg[11]_i_1_n_0\,
      CO(2) => \frames_displayed_reg[11]_i_1_n_1\,
      CO(1) => \frames_displayed_reg[11]_i_1_n_2\,
      CO(0) => \frames_displayed_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frames_displayed_reg[11]_i_1_n_4\,
      O(2) => \frames_displayed_reg[11]_i_1_n_5\,
      O(1) => \frames_displayed_reg[11]_i_1_n_6\,
      O(0) => \frames_displayed_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^status\(12 downto 9)
    );
\frames_displayed_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[15]_i_2_n_7\,
      Q => \^status\(13)
    );
\frames_displayed_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[15]_i_2_n_6\,
      Q => \^status\(14)
    );
\frames_displayed_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[15]_i_2_n_5\,
      Q => \^status\(15)
    );
\frames_displayed_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[15]_i_2_n_4\,
      Q => \^status\(16)
    );
\frames_displayed_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frames_displayed_reg[11]_i_1_n_0\,
      CO(3) => \NLW_frames_displayed_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \frames_displayed_reg[15]_i_2_n_1\,
      CO(1) => \frames_displayed_reg[15]_i_2_n_2\,
      CO(0) => \frames_displayed_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frames_displayed_reg[15]_i_2_n_4\,
      O(2) => \frames_displayed_reg[15]_i_2_n_5\,
      O(1) => \frames_displayed_reg[15]_i_2_n_6\,
      O(0) => \frames_displayed_reg[15]_i_2_n_7\,
      S(3 downto 0) => \^status\(16 downto 13)
    );
\frames_displayed_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[3]_i_1_n_6\,
      Q => \^status\(2)
    );
\frames_displayed_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[3]_i_1_n_5\,
      Q => \^status\(3)
    );
\frames_displayed_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[3]_i_1_n_4\,
      Q => \^status\(4)
    );
\frames_displayed_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frames_displayed_reg[3]_i_1_n_0\,
      CO(2) => \frames_displayed_reg[3]_i_1_n_1\,
      CO(1) => \frames_displayed_reg[3]_i_1_n_2\,
      CO(0) => \frames_displayed_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frames_displayed_reg[3]_i_1_n_4\,
      O(2) => \frames_displayed_reg[3]_i_1_n_5\,
      O(1) => \frames_displayed_reg[3]_i_1_n_6\,
      O(0) => \frames_displayed_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^status\(4 downto 2),
      S(0) => \frames_displayed[3]_i_2_n_0\
    );
\frames_displayed_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[7]_i_1_n_7\,
      Q => \^status\(5)
    );
\frames_displayed_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[7]_i_1_n_6\,
      Q => \^status\(6)
    );
\frames_displayed_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[7]_i_1_n_5\,
      Q => \^status\(7)
    );
\frames_displayed_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[7]_i_1_n_4\,
      Q => \^status\(8)
    );
\frames_displayed_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frames_displayed_reg[3]_i_1_n_0\,
      CO(3) => \frames_displayed_reg[7]_i_1_n_0\,
      CO(2) => \frames_displayed_reg[7]_i_1_n_1\,
      CO(1) => \frames_displayed_reg[7]_i_1_n_2\,
      CO(0) => \frames_displayed_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frames_displayed_reg[7]_i_1_n_4\,
      O(2) => \frames_displayed_reg[7]_i_1_n_5\,
      O(1) => \frames_displayed_reg[7]_i_1_n_6\,
      O(0) => \frames_displayed_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^status\(8 downto 5)
    );
\frames_displayed_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[11]_i_1_n_7\,
      Q => \^status\(9)
    );
\frames_displayed_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => u_raster_n_2,
      CLR => \v_count_reg[0]\,
      D => \frames_displayed_reg[11]_i_1_n_6\,
      Q => \^status\(10)
    );
hs_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => raw_hs,
      Q => hs
    );
pixel_ok_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_41,
      Q => pixel_ok
    );
\rgb_o[20]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_n_2\,
      I1 => \^de\,
      I2 => CO(0),
      I3 => \rgb_o[20]_i_10_0\(0),
      I4 => \rgb_o[20]_i_32_n_0\,
      O => de_reg_0
    );
\rgb_o[20]_i_110\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(0),
      I1 => \rgb_o[20]_i_10_1\(5),
      I2 => active_y(0),
      O => \active_y_reg[1]_0\(0)
    );
\rgb_o[20]_i_114\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => active_y(0),
      I1 => \rgb_o[20]_i_10_1\(5),
      I2 => \^active_y_reg[9]_0\(0),
      O => \active_y_reg[0]_0\(0)
    );
\rgb_o[20]_i_117\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B828"
    )
        port map (
      I0 => \^q\(4),
      I1 => \rgb_o[20]_i_10_1\(4),
      I2 => \rgb_o[20]_i_10_1\(3),
      I3 => \^q\(3),
      O => \rgb_o[20]_i_117_n_0\
    );
\rgb_o[20]_i_118\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \rgb_o[20]_i_10_1\(2),
      I2 => \^q\(1),
      I3 => \rgb_o[20]_i_10_1\(1),
      O => \rgb_o[20]_i_118_n_0\
    );
\rgb_o[20]_i_119\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \rgb_o[20]_i_10_1\(0),
      I2 => active_x(0),
      O => \rgb_o[20]_i_119_n_0\
    );
\rgb_o[20]_i_121\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => \^q\(3),
      I1 => \rgb_o[20]_i_10_1\(3),
      I2 => \rgb_o[20]_i_10_1\(4),
      I3 => \^q\(4),
      O => \rgb_o[20]_i_121_n_0\
    );
\rgb_o[20]_i_123\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => active_x(0),
      I1 => \rgb_o[20]_i_10_1\(0),
      I2 => \^q\(0),
      O => \rgb_o[20]_i_123_n_0\
    );
\rgb_o[20]_i_135\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => left(0),
      O => \active_x_reg[10]_1\(0)
    );
\rgb_o[20]_i_141\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \rgb_o[20]_i_10_1\(2),
      O => \rgb_o[20]_i_141_n_0\
    );
\rgb_o[20]_i_142\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \rgb_o[20]_i_10_1\(1),
      O => \rgb_o[20]_i_142_n_0\
    );
\rgb_o[20]_i_143\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \rgb_o[20]_i_10_1\(0),
      O => \rgb_o[20]_i_143_n_0\
    );
\rgb_o[20]_i_147\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \rgb_o[20]_i_10_1\(0),
      O => \rgb_o[20]_i_147_n_0\
    );
\rgb_o[20]_i_148\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(6),
      O => \rgb_o[20]_i_148_n_0\
    );
\rgb_o[20]_i_149\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(5),
      O => \rgb_o[20]_i_149_n_0\
    );
\rgb_o[20]_i_150\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(4),
      O => \rgb_o[20]_i_150_n_0\
    );
\rgb_o[20]_i_151\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(3),
      O => \rgb_o[20]_i_151_n_0\
    );
\rgb_o[20]_i_152\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556AAAAAAA9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_1\(2),
      I1 => \rgb_o_reg[20]_i_79_0\(2),
      I2 => \rgb_o_reg[20]_i_79_0\(3),
      I3 => \rgb_o_reg[20]_i_30_1\(0),
      I4 => \rgb_o_reg[20]_i_30_1\(1),
      I5 => \^active_y_reg[9]_0\(6),
      O => \rgb_o[20]_i_152_n_0\
    );
\rgb_o[20]_i_153\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0101FE"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_1\(0),
      I1 => \rgb_o_reg[20]_i_79_0\(3),
      I2 => \rgb_o_reg[20]_i_79_0\(2),
      I3 => \rgb_o_reg[20]_i_30_1\(1),
      I4 => \^active_y_reg[9]_0\(5),
      O => \rgb_o[20]_i_153_n_0\
    );
\rgb_o[20]_i_154\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(2),
      I1 => \rgb_o_reg[20]_i_79_0\(3),
      I2 => \rgb_o_reg[20]_i_30_1\(0),
      I3 => \^active_y_reg[9]_0\(4),
      O => \rgb_o[20]_i_154_n_0\
    );
\rgb_o[20]_i_155\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(3),
      I1 => \rgb_o_reg[20]_i_79_0\(2),
      I2 => \^active_y_reg[9]_0\(3),
      O => \rgb_o[20]_i_155_n_0\
    );
\rgb_o[20]_i_157\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(2),
      I1 => \^active_y_reg[9]_0\(2),
      O => \rgb_o[20]_i_157_n_0\
    );
\rgb_o[20]_i_158\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(1),
      I1 => \^active_y_reg[9]_0\(1),
      O => \rgb_o[20]_i_158_n_0\
    );
\rgb_o[20]_i_159\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(0),
      I1 => \^active_y_reg[9]_0\(0),
      O => \rgb_o[20]_i_159_n_0\
    );
\rgb_o[20]_i_160\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_y(0),
      O => \rgb_o[20]_i_160_n_0\
    );
\rgb_o[20]_i_163\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(8),
      O => \rgb_o[20]_i_163_n_0\
    );
\rgb_o[20]_i_164\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(7),
      O => \rgb_o[20]_i_164_n_0\
    );
\rgb_o[20]_i_167\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F70808F7"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_1\(2),
      I1 => \rgb_o_reg[20]_i_30_1\(3),
      I2 => \rgb_o_reg[20]_i_30_0\,
      I3 => \rgb_o[20]_i_10_0\(0),
      I4 => \^active_y_reg[9]_0\(8),
      O => \rgb_o[20]_i_167_n_0\
    );
\rgb_o[20]_i_168\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_0\,
      I1 => \rgb_o_reg[20]_i_30_1\(2),
      I2 => \rgb_o_reg[20]_i_30_1\(3),
      I3 => \^active_y_reg[9]_0\(7),
      O => \rgb_o[20]_i_168_n_0\
    );
\rgb_o[20]_i_170\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(2),
      I1 => \^q\(2),
      O => \rgb_o[20]_i_170_n_0\
    );
\rgb_o[20]_i_171\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(1),
      I1 => \^q\(1),
      O => \rgb_o[20]_i_171_n_0\
    );
\rgb_o[20]_i_172\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(0),
      I1 => \^q\(0),
      O => \rgb_o[20]_i_172_n_0\
    );
\rgb_o[20]_i_173\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_x(0),
      O => \rgb_o[20]_i_173_n_0\
    );
\rgb_o[20]_i_175\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \rgb_o[20]_i_175_n_0\
    );
\rgb_o[20]_i_176\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \rgb_o[20]_i_176_n_0\
    );
\rgb_o[20]_i_177\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \rgb_o[20]_i_177_n_0\
    );
\rgb_o[20]_i_179\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0101FE"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_2\(1),
      I1 => \rgb_o_reg[20]_i_85_2\(0),
      I2 => \rgb_o_reg[20]_i_174_1\(3),
      I3 => \rgb_o_reg[20]_i_85_2\(2),
      I4 => \^q\(6),
      O => \rgb_o[20]_i_179_n_0\
    );
\rgb_o[20]_i_180\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(3),
      I1 => \rgb_o_reg[20]_i_85_2\(0),
      I2 => \rgb_o_reg[20]_i_85_2\(1),
      I3 => \^q\(5),
      O => \rgb_o[20]_i_180_n_0\
    );
\rgb_o[20]_i_181\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_2\(0),
      I1 => \rgb_o_reg[20]_i_174_1\(3),
      I2 => \^q\(4),
      O => \rgb_o[20]_i_181_n_0\
    );
\rgb_o[20]_i_182\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(3),
      I1 => \^q\(3),
      O => \rgb_o[20]_i_182_n_0\
    );
\rgb_o[20]_i_196\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(1),
      I1 => \rgb_o[20]_i_10_1\(6),
      O => \rgb_o[20]_i_196_n_0\
    );
\rgb_o[20]_i_197\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(0),
      I1 => \rgb_o[20]_i_10_1\(5),
      O => \rgb_o[20]_i_197_n_0\
    );
\rgb_o[20]_i_198\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(2),
      I1 => \rgb_o[20]_i_10_1\(7),
      I2 => \rgb_o[20]_i_10_1\(8),
      I3 => \^active_y_reg[9]_0\(3),
      O => \rgb_o[20]_i_198_n_0\
    );
\rgb_o[20]_i_201\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(0),
      I1 => \rgb_o[20]_i_10_1\(5),
      O => \rgb_o[20]_i_201_n_0\
    );
\rgb_o[20]_i_202\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111147771111D"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(6),
      I1 => \rgb_o_reg[20]_i_30_1\(2),
      I2 => \rgb_o_reg[20]_i_79_1\,
      I3 => \rgb_o_reg[20]_i_30_1\(0),
      I4 => \rgb_o_reg[20]_i_30_1\(1),
      I5 => \^active_y_reg[9]_0\(5),
      O => \rgb_o[20]_i_202_n_0\
    );
\rgb_o[20]_i_203\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5401D543"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(4),
      I1 => \rgb_o_reg[20]_i_79_0\(2),
      I2 => \rgb_o_reg[20]_i_79_0\(3),
      I3 => \rgb_o_reg[20]_i_30_1\(0),
      I4 => \^active_y_reg[9]_0\(3),
      O => \rgb_o[20]_i_203_n_0\
    );
\rgb_o[20]_i_204\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1171"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(2),
      I1 => \rgb_o_reg[20]_i_79_0\(2),
      I2 => \rgb_o_reg[20]_i_79_0\(1),
      I3 => \^active_y_reg[9]_0\(1),
      O => \rgb_o[20]_i_204_n_0\
    );
\rgb_o[20]_i_205\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(0),
      I1 => \^active_y_reg[9]_0\(0),
      O => \rgb_o[20]_i_205_n_0\
    );
\rgb_o[20]_i_206\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660000900066660"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_1\(2),
      I1 => \^active_y_reg[9]_0\(6),
      I2 => \rgb_o_reg[20]_i_30_1\(0),
      I3 => \rgb_o_reg[20]_i_79_1\,
      I4 => \rgb_o_reg[20]_i_30_1\(1),
      I5 => \^active_y_reg[9]_0\(5),
      O => \rgb_o[20]_i_206_n_0\
    );
\rgb_o[20]_i_207\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_30_1\(0),
      I1 => \^active_y_reg[9]_0\(4),
      I2 => \rgb_o_reg[20]_i_79_0\(3),
      I3 => \rgb_o_reg[20]_i_79_0\(2),
      I4 => \^active_y_reg[9]_0\(3),
      O => \rgb_o[20]_i_207_n_0\
    );
\rgb_o[20]_i_208\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_79_0\(2),
      I1 => \^active_y_reg[9]_0\(2),
      I2 => \rgb_o_reg[20]_i_79_0\(1),
      I3 => \^active_y_reg[9]_0\(1),
      O => \rgb_o[20]_i_208_n_0\
    );
\rgb_o[20]_i_209\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => active_y(0),
      I1 => \rgb_o_reg[20]_i_79_0\(0),
      I2 => \^active_y_reg[9]_0\(0),
      O => \rgb_o[20]_i_209_n_0\
    );
\rgb_o[20]_i_212\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75551000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \rgb_o_reg[20]_i_85_1\,
      I2 => \rgb_o_reg[20]_i_85_2\(3),
      I3 => \rgb_o_reg[20]_i_85_0\(0),
      I4 => CO(0),
      O => \rgb_o[20]_i_212_n_0\
    );
\rgb_o[20]_i_213\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4414D41D"
    )
        port map (
      I0 => \^q\(8),
      I1 => \rgb_o_reg[20]_i_85_0\(0),
      I2 => \rgb_o_reg[20]_i_85_2\(3),
      I3 => \rgb_o_reg[20]_i_85_1\,
      I4 => \^q\(7),
      O => \rgb_o[20]_i_213_n_0\
    );
\rgb_o[20]_i_214\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A5595"
    )
        port map (
      I0 => \^q\(9),
      I1 => \rgb_o_reg[20]_i_85_0\(0),
      I2 => \rgb_o_reg[20]_i_85_2\(3),
      I3 => \rgb_o_reg[20]_i_85_1\,
      I4 => CO(0),
      O => \rgb_o[20]_i_214_n_0\
    );
\rgb_o[20]_i_215\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090690"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_0\(0),
      I1 => \^q\(8),
      I2 => \rgb_o_reg[20]_i_85_1\,
      I3 => \rgb_o_reg[20]_i_85_2\(3),
      I4 => \^q\(7),
      O => \rgb_o[20]_i_215_n_0\
    );
\rgb_o[20]_i_252\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(3),
      I1 => \rgb_o[20]_i_10_1\(3),
      I2 => \rgb_o[20]_i_10_1\(4),
      I3 => \^q\(4),
      O => \active_x_reg[4]_0\(0)
    );
\rgb_o[20]_i_254\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \rgb_o[20]_i_254_n_0\
    );
\rgb_o[20]_i_256\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \rgb_o[20]_i_256_n_0\
    );
\rgb_o[20]_i_258\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => CO(0),
      I1 => \rgb_o_reg[20]_i_85_0\(0),
      I2 => \rgb_o_reg[20]_i_85_2\(3),
      I3 => \rgb_o_reg[20]_i_85_1\,
      I4 => \^q\(9),
      O => \rgb_o[20]_i_258_n_0\
    );
\rgb_o[20]_i_259\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => right(1),
      I1 => \^q\(8),
      O => \rgb_o[20]_i_259_n_0\
    );
\rgb_o[20]_i_260\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFEFFFE0001"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_2\(1),
      I1 => \rgb_o_reg[20]_i_85_2\(2),
      I2 => \rgb_o_reg[20]_i_174_1\(3),
      I3 => \rgb_o_reg[20]_i_85_2\(0),
      I4 => \rgb_o_reg[20]_i_85_2\(3),
      I5 => \^q\(7),
      O => \rgb_o[20]_i_260_n_0\
    );
\rgb_o[20]_i_261\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55540001DDD54443"
    )
        port map (
      I0 => \^q\(6),
      I1 => \rgb_o_reg[20]_i_85_2\(1),
      I2 => \rgb_o_reg[20]_i_85_2\(0),
      I3 => \rgb_o_reg[20]_i_174_1\(3),
      I4 => \rgb_o_reg[20]_i_85_2\(2),
      I5 => \^q\(5),
      O => \rgb_o[20]_i_261_n_0\
    );
\rgb_o[20]_i_262\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4147"
    )
        port map (
      I0 => \^q\(4),
      I1 => \rgb_o_reg[20]_i_85_2\(0),
      I2 => \rgb_o_reg[20]_i_174_1\(3),
      I3 => \^q\(3),
      O => \rgb_o[20]_i_262_n_0\
    );
\rgb_o[20]_i_263\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^q\(2),
      I1 => \rgb_o_reg[20]_i_174_1\(2),
      I2 => \rgb_o_reg[20]_i_174_1\(1),
      I3 => \^q\(1),
      O => \rgb_o[20]_i_263_n_0\
    );
\rgb_o[20]_i_264\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(0),
      I1 => \^q\(0),
      O => \rgb_o[20]_i_264_n_0\
    );
\rgb_o[20]_i_265\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_2\(2),
      I1 => \^q\(6),
      I2 => \rgb_o_reg[20]_i_174_1\(3),
      I3 => \rgb_o_reg[20]_i_85_2\(0),
      I4 => \rgb_o_reg[20]_i_85_2\(1),
      I5 => \^q\(5),
      O => \rgb_o[20]_i_265_n_0\
    );
\rgb_o[20]_i_266\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_85_2\(0),
      I1 => \^q\(4),
      I2 => \rgb_o_reg[20]_i_174_1\(3),
      I3 => \^q\(3),
      O => \rgb_o[20]_i_266_n_0\
    );
\rgb_o[20]_i_267\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \rgb_o_reg[20]_i_174_1\(2),
      I1 => \^q\(2),
      I2 => \rgb_o_reg[20]_i_174_1\(1),
      I3 => \^q\(1),
      O => \rgb_o[20]_i_267_n_0\
    );
\rgb_o[20]_i_268\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => active_x(0),
      I1 => \rgb_o_reg[20]_i_174_1\(0),
      I2 => \^q\(0),
      O => \rgb_o[20]_i_268_n_0\
    );
\rgb_o[20]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => pixel_ok,
      I1 => \rgb_o[20]_i_10_0\(1),
      I2 => \rgb_o_reg[20]_i_85_n_2\,
      I3 => \rgb_o[20]_i_10_1\(9),
      O => \rgb_o[20]_i_32_n_0\
    );
\rgb_o[20]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => left(0),
      O => \active_x_reg[10]_0\(0)
    );
\rgb_o[20]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41444444D14DDD44"
    )
        port map (
      I0 => \^active_y_reg[9]_0\(8),
      I1 => \rgb_o[20]_i_10_0\(0),
      I2 => \rgb_o_reg[20]_i_30_0\,
      I3 => \rgb_o_reg[20]_i_30_1\(3),
      I4 => \rgb_o_reg[20]_i_30_1\(2),
      I5 => \^active_y_reg[9]_0\(7),
      O => \rgb_o[20]_i_81_n_0\
    );
\rgb_o[20]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099090006009099"
    )
        port map (
      I0 => \rgb_o[20]_i_10_0\(0),
      I1 => \^active_y_reg[9]_0\(8),
      I2 => \rgb_o_reg[20]_i_30_0\,
      I3 => \rgb_o_reg[20]_i_30_1\(2),
      I4 => \rgb_o_reg[20]_i_30_1\(3),
      I5 => \^active_y_reg[9]_0\(7),
      O => \rgb_o[20]_i_83_n_0\
    );
\rgb_o_reg[20]_i_169\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_62_n_0\,
      CO(3 downto 1) => \NLW_rgb_o_reg[20]_i_169_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_o_reg[20]_i_62_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_169_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\rgb_o_reg[20]_i_174\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_67_n_0\,
      CO(3) => \rgb_o_reg[20]_i_174_n_0\,
      CO(2) => \rgb_o_reg[20]_i_174_n_1\,
      CO(1) => \rgb_o_reg[20]_i_174_n_2\,
      CO(0) => \rgb_o_reg[20]_i_174_n_3\,
      CYINIT => '0',
      DI(3) => right(2),
      DI(2) => \rgb_o[20]_i_254_n_0\,
      DI(1) => right(1),
      DI(0) => \rgb_o[20]_i_256_n_0\,
      O(3 downto 0) => \active_x_reg[10]_2\(3 downto 0),
      S(3) => S(0),
      S(2) => \rgb_o[20]_i_258_n_0\,
      S(1) => \rgb_o[20]_i_259_n_0\,
      S(0) => \rgb_o[20]_i_260_n_0\
    );
\rgb_o_reg[20]_i_211\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_211_n_0\,
      CO(2) => \rgb_o_reg[20]_i_211_n_1\,
      CO(1) => \rgb_o_reg[20]_i_211_n_2\,
      CO(0) => \rgb_o_reg[20]_i_211_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_261_n_0\,
      DI(2) => \rgb_o[20]_i_262_n_0\,
      DI(1) => \rgb_o[20]_i_263_n_0\,
      DI(0) => \rgb_o[20]_i_264_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_211_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_265_n_0\,
      S(2) => \rgb_o[20]_i_266_n_0\,
      S(1) => \rgb_o[20]_i_267_n_0\,
      S(0) => \rgb_o[20]_i_268_n_0\
    );
\rgb_o_reg[20]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_79_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_30_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_30_n_2\,
      CO(0) => \rgb_o_reg[20]_i_30_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rgb_o[20]_i_10_2\(0),
      DI(0) => \rgb_o[20]_i_81_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_30_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgb_o[20]_i_10_3\(0),
      S(0) => \rgb_o[20]_i_83_n_0\
    );
\rgb_o_reg[20]_i_47\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \active_x_reg[7]_1\(0),
      CO(2) => \rgb_o_reg[20]_i_47_n_1\,
      CO(1) => \rgb_o_reg[20]_i_47_n_2\,
      CO(0) => \rgb_o_reg[20]_i_47_n_3\,
      CYINIT => '1',
      DI(3) => \rgb_o_reg[20]_i_14\(0),
      DI(2) => \rgb_o[20]_i_117_n_0\,
      DI(1) => \rgb_o[20]_i_118_n_0\,
      DI(0) => \rgb_o[20]_i_119_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_47_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o_reg[20]_i_14_0\(1),
      S(2) => \rgb_o[20]_i_121_n_0\,
      S(1) => \rgb_o_reg[20]_i_14_0\(0),
      S(0) => \rgb_o[20]_i_123_n_0\
    );
\rgb_o_reg[20]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \active_x_reg[3]_0\(0),
      CO(2) => \rgb_o_reg[20]_i_57_n_1\,
      CO(1) => \rgb_o_reg[20]_i_57_n_2\,
      CO(0) => \rgb_o_reg[20]_i_57_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_141_n_0\,
      DI(2) => \rgb_o[20]_i_142_n_0\,
      DI(1) => \rgb_o[20]_i_143_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \active_x_reg[3]_1\(3 downto 0),
      S(3 downto 1) => \rgb_o[20]_i_20\(2 downto 0),
      S(0) => \rgb_o[20]_i_147_n_0\
    );
\rgb_o_reg[20]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_61_n_0\,
      CO(3) => \rgb_o_reg[20]_i_60_n_0\,
      CO(2) => \rgb_o_reg[20]_i_60_n_1\,
      CO(1) => \rgb_o_reg[20]_i_60_n_2\,
      CO(0) => \rgb_o_reg[20]_i_60_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_148_n_0\,
      DI(2) => \rgb_o[20]_i_149_n_0\,
      DI(1) => \rgb_o[20]_i_150_n_0\,
      DI(0) => \rgb_o[20]_i_151_n_0\,
      O(3 downto 0) => \active_y_reg[7]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_152_n_0\,
      S(2) => \rgb_o[20]_i_153_n_0\,
      S(1) => \rgb_o[20]_i_154_n_0\,
      S(0) => \rgb_o[20]_i_155_n_0\
    );
\rgb_o_reg[20]_i_61\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_61_n_0\,
      CO(2) => \rgb_o_reg[20]_i_61_n_1\,
      CO(1) => \rgb_o_reg[20]_i_61_n_2\,
      CO(0) => \rgb_o_reg[20]_i_61_n_3\,
      CYINIT => '0',
      DI(3) => bottom(0),
      DI(2 downto 1) => \rgb_o_reg[20]_i_79_0\(1 downto 0),
      DI(0) => '0',
      O(3 downto 1) => \dst_payload_reg[67]\(2 downto 0),
      O(0) => \NLW_rgb_o_reg[20]_i_61_O_UNCONNECTED\(0),
      S(3) => \rgb_o[20]_i_157_n_0\,
      S(2) => \rgb_o[20]_i_158_n_0\,
      S(1) => \rgb_o[20]_i_159_n_0\,
      S(0) => \rgb_o[20]_i_160_n_0\
    );
\rgb_o_reg[20]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_60_n_0\,
      CO(3) => \rgb_o_reg[20]_i_62_n_0\,
      CO(2) => \rgb_o_reg[20]_i_62_n_1\,
      CO(1) => \rgb_o_reg[20]_i_62_n_2\,
      CO(0) => \rgb_o_reg[20]_i_62_n_3\,
      CYINIT => '0',
      DI(3) => bottom(1),
      DI(2) => DI(0),
      DI(1) => \rgb_o[20]_i_163_n_0\,
      DI(0) => \rgb_o[20]_i_164_n_0\,
      O(3 downto 0) => \active_y_reg[9]_1\(3 downto 0),
      S(3 downto 2) => \rgb_o[20]_i_21\(1 downto 0),
      S(1) => \rgb_o[20]_i_167_n_0\,
      S(0) => \rgb_o[20]_i_168_n_0\
    );
\rgb_o_reg[20]_i_65\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_65_n_0\,
      CO(2) => \rgb_o_reg[20]_i_65_n_1\,
      CO(1) => \rgb_o_reg[20]_i_65_n_2\,
      CO(0) => \rgb_o_reg[20]_i_65_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \rgb_o_reg[20]_i_174_1\(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => O(2 downto 0),
      O(0) => \NLW_rgb_o_reg[20]_i_65_O_UNCONNECTED\(0),
      S(3) => \rgb_o[20]_i_170_n_0\,
      S(2) => \rgb_o[20]_i_171_n_0\,
      S(1) => \rgb_o[20]_i_172_n_0\,
      S(0) => \rgb_o[20]_i_173_n_0\
    );
\rgb_o_reg[20]_i_66\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_174_n_0\,
      CO(3 downto 1) => \NLW_rgb_o_reg[20]_i_66_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_o_reg[20]_i_174_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_66_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\rgb_o_reg[20]_i_67\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_65_n_0\,
      CO(3) => \rgb_o_reg[20]_i_67_n_0\,
      CO(2) => \rgb_o_reg[20]_i_67_n_1\,
      CO(1) => \rgb_o_reg[20]_i_67_n_2\,
      CO(0) => \rgb_o_reg[20]_i_67_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_175_n_0\,
      DI(2) => \rgb_o[20]_i_176_n_0\,
      DI(1) => \rgb_o[20]_i_177_n_0\,
      DI(0) => right(0),
      O(3 downto 0) => \active_x_reg[7]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_179_n_0\,
      S(2) => \rgb_o[20]_i_180_n_0\,
      S(1) => \rgb_o[20]_i_181_n_0\,
      S(0) => \rgb_o[20]_i_182_n_0\
    );
\rgb_o_reg[20]_i_72\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dst_payload_reg[66]\(0),
      CO(2) => \rgb_o_reg[20]_i_72_n_1\,
      CO(1) => \rgb_o_reg[20]_i_72_n_2\,
      CO(0) => \rgb_o_reg[20]_i_72_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_74\(0),
      DI(2) => \rgb_o[20]_i_196_n_0\,
      DI(1) => \rgb_o[20]_i_197_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \dst_payload_reg[66]_0\(3 downto 0),
      S(3) => \rgb_o[20]_i_198_n_0\,
      S(2 downto 1) => \rgb_o[20]_i_74_0\(1 downto 0),
      S(0) => \rgb_o[20]_i_201_n_0\
    );
\rgb_o_reg[20]_i_79\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_o_reg[20]_i_79_n_0\,
      CO(2) => \rgb_o_reg[20]_i_79_n_1\,
      CO(1) => \rgb_o_reg[20]_i_79_n_2\,
      CO(0) => \rgb_o_reg[20]_i_79_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_o[20]_i_202_n_0\,
      DI(2) => \rgb_o[20]_i_203_n_0\,
      DI(1) => \rgb_o[20]_i_204_n_0\,
      DI(0) => \rgb_o[20]_i_205_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_79_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_o[20]_i_206_n_0\,
      S(2) => \rgb_o[20]_i_207_n_0\,
      S(1) => \rgb_o[20]_i_208_n_0\,
      S(0) => \rgb_o[20]_i_209_n_0\
    );
\rgb_o_reg[20]_i_85\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_o_reg[20]_i_211_n_0\,
      CO(3 downto 2) => \NLW_rgb_o_reg[20]_i_85_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_o_reg[20]_i_85_n_2\,
      CO(0) => \rgb_o_reg[20]_i_85_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rgb_o[20]_i_212_n_0\,
      DI(0) => \rgb_o[20]_i_213_n_0\,
      O(3 downto 0) => \NLW_rgb_o_reg[20]_i_85_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgb_o[20]_i_214_n_0\,
      S(0) => \rgb_o[20]_i_215_n_0\
    );
\rgb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(0),
      Q => \rgb_reg[20]_0\(0)
    );
\rgb_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(10),
      Q => \rgb_reg[20]_0\(7)
    );
\rgb_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(11),
      Q => \rgb_reg[20]_0\(8)
    );
\rgb_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(12),
      Q => \rgb_reg[20]_0\(9)
    );
\rgb_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(13),
      Q => \rgb_reg[20]_0\(10)
    );
\rgb_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(16),
      Q => \rgb_reg[20]_0\(11)
    );
\rgb_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(17),
      Q => \rgb_reg[20]_0\(12)
    );
\rgb_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(18),
      Q => \rgb_reg[20]_0\(13)
    );
\rgb_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(19),
      Q => \rgb_reg[20]_0\(14)
    );
\rgb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(1),
      Q => \rgb_reg[20]_0\(1)
    );
\rgb_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(20),
      Q => \rgb_reg[20]_0\(15)
    );
\rgb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(2),
      Q => \rgb_reg[20]_0\(2)
    );
\rgb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(3),
      Q => \rgb_reg[20]_0\(3)
    );
\rgb_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(4),
      Q => \rgb_reg[20]_0\(4)
    );
\rgb_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(8),
      Q => \rgb_reg[20]_0\(5)
    );
\rgb_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => p_0_in(9),
      Q => \rgb_reg[20]_0\(6)
    );
sleep_mode_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\,
      I1 => \^frame_start\,
      I2 => sleep_mode,
      O => disable_sync_reg
    );
stream_locked_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_0,
      Q => stream_locked_reg_n_0
    );
u_raster: entity work.facebox_system_tx2_axis_sink_0_0_tx2_raster
     port map (
      D(10) => u_raster_n_3,
      D(9) => u_raster_n_4,
      D(8) => u_raster_n_5,
      D(7) => u_raster_n_6,
      D(6) => u_raster_n_7,
      D(5) => u_raster_n_8,
      D(4) => u_raster_n_9,
      D(3) => u_raster_n_10,
      D(2) => u_raster_n_11,
      D(1) => u_raster_n_12,
      D(0) => u_raster_n_13,
      active => active,
      disable_sync_reg => u_raster_n_0,
      disable_sync_reg_0 => u_raster_n_1,
      disable_sync_reg_1 => u_raster_n_2,
      disable_sync_reg_2(15 downto 11) => p_0_in(20 downto 16),
      disable_sync_reg_2(10 downto 5) => p_0_in(13 downto 8),
      disable_sync_reg_2(4 downto 0) => p_0_in(4 downto 0),
      disable_sync_reg_3 => u_raster_n_41,
      frame_start0 => frame_start0,
      \out\ => \out\,
      pixel_clk => pixel_clk,
      raw_hs => raw_hs,
      raw_vs => raw_vs,
      rst_n => rst_n,
      s_tdata(15 downto 0) => s_tdata(15 downto 0),
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid,
      status(0) => \^status\(0),
      stream_locked_reg => stream_locked_reg_n_0,
      underflow_sticky0 => underflow_sticky0,
      \v_count_reg[0]_0\ => \v_count_reg[0]\,
      \v_count_reg[8]_0\(9) => u_raster_n_15,
      \v_count_reg[8]_0\(8) => u_raster_n_16,
      \v_count_reg[8]_0\(7) => u_raster_n_17,
      \v_count_reg[8]_0\(6) => u_raster_n_18,
      \v_count_reg[8]_0\(5) => u_raster_n_19,
      \v_count_reg[8]_0\(4) => u_raster_n_20,
      \v_count_reg[8]_0\(3) => u_raster_n_21,
      \v_count_reg[8]_0\(2) => u_raster_n_22,
      \v_count_reg[8]_0\(1) => u_raster_n_23,
      \v_count_reg[8]_0\(0) => u_raster_n_24
    );
underflow_sticky_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      I2 => \^status\(3),
      I3 => \^status\(4),
      I4 => underflow_sticky_i_3_n_0,
      I5 => underflow_sticky_i_4_n_0,
      O => underflow_sticky0
    );
underflow_sticky_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^status\(15),
      I1 => \^status\(16),
      I2 => \^status\(14),
      I3 => \^status\(13),
      I4 => s_tvalid,
      I5 => stream_locked_reg_n_0,
      O => underflow_sticky_i_3_n_0
    );
underflow_sticky_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^status\(8),
      I1 => \^status\(7),
      I2 => \^status\(6),
      I3 => \^status\(5),
      I4 => underflow_sticky_i_5_n_0,
      O => underflow_sticky_i_4_n_0
    );
underflow_sticky_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^status\(9),
      I1 => \^status\(10),
      I2 => \^status\(11),
      I3 => \^status\(12),
      O => underflow_sticky_i_5_n_0
    );
underflow_sticky_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => u_raster_n_1,
      Q => \^status\(0)
    );
vs_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \v_count_reg[0]\,
      D => raw_vs,
      Q => vs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_video_out is
  port (
    rst_n_0 : out STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    serial_clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    status_de : in STD_LOGIC;
    status_hs : in STD_LOGIC;
    status_vs : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ones_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \qm_q_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ones_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \qm_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ones_q_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_video_out : entity is "tx2_video_out";
end facebox_system_tx2_axis_sink_0_0_tx2_video_out;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_video_out is
  signal blue_word : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal de_q : STD_LOGIC;
  signal green_word : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal red_word : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
begin
  rst_n_0 <= \^rst_n_0\;
u_b: entity work.facebox_system_tx2_axis_sink_0_0_tx2_serializer
     port map (
      Q(9 downto 0) => blue_word(9 downto 0),
      pixel_clk => pixel_clk,
      serial_clk => serial_clk,
      \serial_release_reg[1]_0\ => \^rst_n_0\,
      tmds_data_n(0) => tmds_data_n(0),
      tmds_data_p(0) => tmds_data_p(0)
    );
u_blue: entity work.facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder
     port map (
      D(8 downto 0) => D(8 downto 0),
      Q(9 downto 0) => blue_word(9 downto 0),
      de_q => de_q,
      \ones_q_reg[3]_0\(3 downto 0) => \ones_q_reg[3]\(3 downto 0),
      pixel_clk => pixel_clk,
      rst_n => rst_n,
      rst_n_0 => \^rst_n_0\,
      status_de => status_de,
      status_hs => status_hs,
      status_vs => status_vs
    );
u_c: entity work.facebox_system_tx2_axis_sink_0_0_tx2_serializer_0
     port map (
      pixel_clk => pixel_clk,
      serial_clk => serial_clk,
      \serial_release_reg[1]_0\ => \^rst_n_0\,
      tmds_clk_n => tmds_clk_n,
      tmds_clk_p => tmds_clk_p
    );
u_g: entity work.facebox_system_tx2_axis_sink_0_0_tx2_serializer_1
     port map (
      Q(9 downto 0) => green_word(9 downto 0),
      pixel_clk => pixel_clk,
      serial_clk => serial_clk,
      \serial_release_reg[1]_0\ => \^rst_n_0\,
      tmds_data_n(0) => tmds_data_n(1),
      tmds_data_p(0) => tmds_data_p(1)
    );
u_green: entity work.facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2
     port map (
      Q(9 downto 0) => green_word(9 downto 0),
      de_q => de_q,
      \ones_q_reg[3]_0\(3 downto 0) => \ones_q_reg[3]_0\(3 downto 0),
      pixel_clk => pixel_clk,
      \qm_q_reg[8]_0\(8 downto 0) => \qm_q_reg[8]\(8 downto 0),
      \symbol_reg[0]_0\ => \^rst_n_0\
    );
u_r: entity work.facebox_system_tx2_axis_sink_0_0_tx2_serializer_3
     port map (
      Q(9 downto 0) => red_word(9 downto 0),
      pixel_clk => pixel_clk,
      serial_clk => serial_clk,
      \serial_release_reg[1]_0\ => \^rst_n_0\,
      tmds_data_n(0) => tmds_data_n(2),
      tmds_data_p(0) => tmds_data_p(2)
    );
u_red: entity work.facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4
     port map (
      Q(9 downto 0) => red_word(9 downto 0),
      de_q => de_q,
      \ones_q_reg[3]_0\(3 downto 0) => \ones_q_reg[3]_1\(3 downto 0),
      pixel_clk => pixel_clk,
      \qm_q_reg[8]_0\(8 downto 0) => \qm_q_reg[8]_0\(8 downto 0),
      \symbol_reg[0]_0\ => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0_tx2_axis_sink is
  port (
    RST0 : out STD_LOGIC;
    \dst_payload_reg[40]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \dst_payload_reg[72]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    box_ack : out STD_LOGIC;
    box_timeout : out STD_LOGIC;
    box_reset_event : out STD_LOGIC;
    box_expired : out STD_LOGIC;
    box_busy : out STD_LOGIC;
    box_channel_ready : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_tready : out STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    hdmi_disable : in STD_LOGIC;
    \rgb_o_reg[20]_i_85\ : in STD_LOGIC;
    \rgb_o_reg[20]_i_30\ : in STD_LOGIC;
    right : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    bottom : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_21\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rgb_o[20]_i_10\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rgb_o[20]_i_10_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    box_send : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    box_src_rst_n : in STD_LOGIC;
    \rgb_o_reg[23]_i_2\ : in STD_LOGIC;
    box_invalidate : in STD_LOGIC;
    box_recover : in STD_LOGIC;
    box_src_clk : in STD_LOGIC;
    box_payload : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_tvalid : in STD_LOGIC;
    s_tuser : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    serial_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of facebox_system_tx2_axis_sink_0_0_tx2_axis_sink : entity is "tx2_axis_sink";
end facebox_system_tx2_axis_sink_0_0_tx2_axis_sink;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0_tx2_axis_sink is
  signal \^rst0\ : STD_LOGIC;
  signal active_x : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal active_y : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal applied_payload : STD_LOGIC_VECTOR ( 72 downto 32 );
  signal de : STD_LOGIC;
  signal disable_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of disable_meta : signal is "true";
  signal disable_sync : STD_LOGIC;
  attribute async_reg of disable_sync : signal is "true";
  signal \^dst_payload_reg[40]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dst_payload_reg[72]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_start : STD_LOGIC;
  signal hs : STD_LOGIC;
  signal left : STD_LOGIC_VECTOR ( 10 to 10 );
  signal osd_x : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal osd_y : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal overlay_de : STD_LOGIC;
  signal overlay_hs : STD_LOGIC;
  signal overlay_vs : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal qm_ones : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rgb : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal sleep_mode : STD_LOGIC;
  signal status_de : STD_LOGIC;
  signal status_hs : STD_LOGIC;
  signal status_rgb : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal status_vs : STD_LOGIC;
  signal text_s10 : STD_LOGIC;
  signal \u_blue/p_0_in0_in\ : STD_LOGIC;
  signal \u_blue/p_0_in1_in\ : STD_LOGIC;
  signal \u_blue/p_0_in2_in\ : STD_LOGIC;
  signal \u_blue/p_0_in3_in\ : STD_LOGIC;
  signal \u_blue/p_0_in4_in\ : STD_LOGIC;
  signal \u_blue/p_0_in5_in\ : STD_LOGIC;
  signal \u_blue/qm\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal u_box_mailbox_n_11 : STD_LOGIC;
  signal u_box_mailbox_n_12 : STD_LOGIC;
  signal u_box_mailbox_n_13 : STD_LOGIC;
  signal u_box_mailbox_n_14 : STD_LOGIC;
  signal u_box_mailbox_n_35 : STD_LOGIC;
  signal u_box_mailbox_n_36 : STD_LOGIC;
  signal u_box_mailbox_n_37 : STD_LOGIC;
  signal u_box_mailbox_n_38 : STD_LOGIC;
  signal u_box_mailbox_n_39 : STD_LOGIC;
  signal u_box_mailbox_n_40 : STD_LOGIC;
  signal u_box_mailbox_n_41 : STD_LOGIC;
  signal u_box_mailbox_n_42 : STD_LOGIC;
  signal u_box_mailbox_n_43 : STD_LOGIC;
  signal u_box_mailbox_n_44 : STD_LOGIC;
  signal u_box_mailbox_n_45 : STD_LOGIC;
  signal u_box_mailbox_n_46 : STD_LOGIC;
  signal u_box_mailbox_n_47 : STD_LOGIC;
  signal u_box_mailbox_n_48 : STD_LOGIC;
  signal u_box_mailbox_n_49 : STD_LOGIC;
  signal u_box_mailbox_n_50 : STD_LOGIC;
  signal u_box_mailbox_n_51 : STD_LOGIC;
  signal u_box_mailbox_n_52 : STD_LOGIC;
  signal u_box_mailbox_n_53 : STD_LOGIC;
  signal u_box_mailbox_n_54 : STD_LOGIC;
  signal u_box_mailbox_n_55 : STD_LOGIC;
  signal u_box_mailbox_n_56 : STD_LOGIC;
  signal u_box_overlay_n_3 : STD_LOGIC;
  signal u_box_overlay_n_4 : STD_LOGIC;
  signal u_box_overlay_n_5 : STD_LOGIC;
  signal u_box_overlay_n_6 : STD_LOGIC;
  signal u_box_overlay_n_7 : STD_LOGIC;
  signal u_box_overlay_n_8 : STD_LOGIC;
  signal u_box_overlay_n_9 : STD_LOGIC;
  signal \u_green/p_0_in0_in\ : STD_LOGIC;
  signal \u_green/p_0_in1_in\ : STD_LOGIC;
  signal \u_green/p_0_in2_in\ : STD_LOGIC;
  signal \u_green/p_0_in3_in\ : STD_LOGIC;
  signal \u_green/p_0_in4_in\ : STD_LOGIC;
  signal \u_green/p_0_in5_in\ : STD_LOGIC;
  signal \u_green/qm\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \u_red/p_0_in0_in\ : STD_LOGIC;
  signal \u_red/p_0_in1_in\ : STD_LOGIC;
  signal \u_red/p_0_in2_in\ : STD_LOGIC;
  signal \u_red/p_0_in3_in\ : STD_LOGIC;
  signal \u_red/p_0_in4_in\ : STD_LOGIC;
  signal \u_red/p_0_in5_in\ : STD_LOGIC;
  signal \u_red/qm\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal u_sleep_osd_n_10 : STD_LOGIC;
  signal u_sleep_osd_n_22 : STD_LOGIC;
  signal u_sleep_osd_n_23 : STD_LOGIC;
  signal u_sleep_osd_n_24 : STD_LOGIC;
  signal u_sleep_osd_n_25 : STD_LOGIC;
  signal u_sleep_osd_n_26 : STD_LOGIC;
  signal u_sleep_osd_n_34 : STD_LOGIC;
  signal u_sleep_osd_n_35 : STD_LOGIC;
  signal u_sleep_osd_n_36 : STD_LOGIC;
  signal u_sleep_osd_n_37 : STD_LOGIC;
  signal u_sleep_osd_n_38 : STD_LOGIC;
  signal u_sleep_osd_n_46 : STD_LOGIC;
  signal u_sleep_osd_n_6 : STD_LOGIC;
  signal u_sleep_osd_n_7 : STD_LOGIC;
  signal u_sleep_osd_n_8 : STD_LOGIC;
  signal u_sleep_osd_n_9 : STD_LOGIC;
  signal u_view_n_23 : STD_LOGIC;
  signal u_view_n_24 : STD_LOGIC;
  signal u_view_n_25 : STD_LOGIC;
  signal u_view_n_26 : STD_LOGIC;
  signal u_view_n_27 : STD_LOGIC;
  signal u_view_n_28 : STD_LOGIC;
  signal u_view_n_29 : STD_LOGIC;
  signal u_view_n_30 : STD_LOGIC;
  signal u_view_n_31 : STD_LOGIC;
  signal u_view_n_32 : STD_LOGIC;
  signal u_view_n_33 : STD_LOGIC;
  signal u_view_n_34 : STD_LOGIC;
  signal u_view_n_35 : STD_LOGIC;
  signal u_view_n_36 : STD_LOGIC;
  signal u_view_n_37 : STD_LOGIC;
  signal u_view_n_38 : STD_LOGIC;
  signal u_view_n_39 : STD_LOGIC;
  signal u_view_n_40 : STD_LOGIC;
  signal u_view_n_41 : STD_LOGIC;
  signal u_view_n_42 : STD_LOGIC;
  signal u_view_n_43 : STD_LOGIC;
  signal u_view_n_44 : STD_LOGIC;
  signal u_view_n_45 : STD_LOGIC;
  signal u_view_n_46 : STD_LOGIC;
  signal u_view_n_47 : STD_LOGIC;
  signal u_view_n_48 : STD_LOGIC;
  signal u_view_n_49 : STD_LOGIC;
  signal u_view_n_50 : STD_LOGIC;
  signal u_view_n_51 : STD_LOGIC;
  signal u_view_n_52 : STD_LOGIC;
  signal u_view_n_53 : STD_LOGIC;
  signal u_view_n_54 : STD_LOGIC;
  signal u_view_n_55 : STD_LOGIC;
  signal u_view_n_56 : STD_LOGIC;
  signal u_view_n_57 : STD_LOGIC;
  signal u_view_n_58 : STD_LOGIC;
  signal u_view_n_59 : STD_LOGIC;
  signal u_view_n_60 : STD_LOGIC;
  signal u_view_n_61 : STD_LOGIC;
  signal u_view_n_62 : STD_LOGIC;
  signal u_view_n_63 : STD_LOGIC;
  signal u_view_n_64 : STD_LOGIC;
  signal vs : STD_LOGIC;
  signal x_end : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal y_end : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of disable_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of disable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of disable_sync_reg : label is std.standard.true;
  attribute KEEP of disable_sync_reg : label is "yes";
begin
  RST0 <= \^rst0\;
  \dst_payload_reg[40]\(6 downto 0) <= \^dst_payload_reg[40]\(6 downto 0);
  \dst_payload_reg[72]\(7 downto 0) <= \^dst_payload_reg[72]\(7 downto 0);
disable_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => hdmi_disable,
      Q => disable_meta
    );
disable_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => disable_meta,
      Q => disable_sync
    );
\osd_x_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(10),
      Q => osd_x(10)
    );
\osd_x_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(1),
      Q => osd_x(1)
    );
\osd_x_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(2),
      Q => osd_x(2)
    );
\osd_x_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(3),
      Q => osd_x(3)
    );
\osd_x_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(4),
      Q => osd_x(4)
    );
\osd_x_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(5),
      Q => osd_x(5)
    );
\osd_x_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(6),
      Q => osd_x(6)
    );
\osd_x_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(7),
      Q => osd_x(7)
    );
\osd_x_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(8),
      Q => osd_x(8)
    );
\osd_x_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_x(9),
      Q => osd_x(9)
    );
\osd_y_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(1),
      Q => osd_y(1)
    );
\osd_y_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(2),
      Q => osd_y(2)
    );
\osd_y_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(3),
      Q => osd_y(3)
    );
\osd_y_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(4),
      Q => osd_y(4)
    );
\osd_y_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(5),
      Q => osd_y(5)
    );
\osd_y_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(6),
      Q => osd_y(6)
    );
\osd_y_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(7),
      Q => osd_y(7)
    );
\osd_y_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(8),
      Q => osd_y(8)
    );
\osd_y_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => active_y(9),
      Q => osd_y(9)
    );
sleep_mode_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \^rst0\,
      D => u_view_n_63,
      Q => sleep_mode
    );
u_box_mailbox: entity work.facebox_system_tx2_axis_sink_0_0_bbox_mailbox
     port map (
      CO(0) => \^dst_payload_reg[40]\(6),
      DI(0) => u_box_mailbox_n_11,
      O(2) => u_view_n_57,
      O(1) => u_view_n_59,
      O(0) => u_view_n_60,
      Q(9) => applied_payload(72),
      Q(8 downto 5) => applied_payload(67 downto 64),
      Q(4 downto 0) => applied_payload(36 downto 32),
      S(1) => u_box_mailbox_n_12,
      S(0) => u_box_mailbox_n_13,
      active_x(9 downto 0) => active_x(10 downto 1),
      active_y(8 downto 0) => active_y(9 downto 1),
      \active_y_reg[7]\(3) => u_box_mailbox_n_35,
      \active_y_reg[7]\(2) => u_box_mailbox_n_36,
      \active_y_reg[7]\(1) => u_box_mailbox_n_37,
      \active_y_reg[7]\(0) => u_box_mailbox_n_38,
      \active_y_reg[9]\(0) => u_box_mailbox_n_39,
      \active_y_reg[9]_0\(1) => u_box_mailbox_n_40,
      \active_y_reg[9]_0\(0) => u_box_mailbox_n_41,
      box_ack => box_ack,
      box_busy => box_busy,
      box_channel_ready => box_channel_ready,
      box_expired => box_expired,
      box_invalidate => box_invalidate,
      box_payload(159 downto 0) => box_payload(159 downto 0),
      box_recover => box_recover,
      box_reset_event => box_reset_event,
      box_send => box_send,
      box_src_clk => box_src_clk,
      box_src_rst_n => box_src_rst_n,
      box_timeout => box_timeout,
      \dst_payload_reg[34]_0\(2) => u_box_mailbox_n_47,
      \dst_payload_reg[34]_0\(1) => u_box_mailbox_n_48,
      \dst_payload_reg[34]_0\(0) => u_box_mailbox_n_49,
      \dst_payload_reg[35]_0\(3) => \^dst_payload_reg[40]\(0),
      \dst_payload_reg[35]_0\(2 downto 0) => x_end(2 downto 0),
      \dst_payload_reg[37]_0\(2) => u_box_mailbox_n_42,
      \dst_payload_reg[37]_0\(1) => u_box_mailbox_n_43,
      \dst_payload_reg[37]_0\(0) => u_box_mailbox_n_44,
      \dst_payload_reg[39]_0\(3 downto 0) => \^dst_payload_reg[40]\(4 downto 1),
      \dst_payload_reg[40]_0\(0) => \^dst_payload_reg[40]\(5),
      \dst_payload_reg[65]_0\(1) => u_box_mailbox_n_45,
      \dst_payload_reg[65]_0\(0) => u_box_mailbox_n_46,
      \dst_payload_reg[66]_0\(0) => u_box_mailbox_n_14,
      \dst_payload_reg[67]_0\(3 downto 2) => \^dst_payload_reg[72]\(1 downto 0),
      \dst_payload_reg[67]_0\(1 downto 0) => y_end(1 downto 0),
      \dst_payload_reg[71]_0\(3 downto 0) => \^dst_payload_reg[72]\(5 downto 2),
      \dst_payload_reg[72]_0\(1 downto 0) => \^dst_payload_reg[72]\(7 downto 6),
      frame_start => frame_start,
      left(0) => left(10),
      pixel_clk => pixel_clk,
      rgb(5 downto 0) => rgb(13 downto 8),
      \rgb_o[20]_i_20_0\(0) => u_view_n_26,
      \rgb_o[20]_i_23\(0) => u_view_n_39,
      \rgb_o[20]_i_3_0\(0) => u_view_n_61,
      \rgb_o[20]_i_3_1\(0) => u_view_n_24,
      \rgb_o[20]_i_59_0\(0) => u_view_n_56,
      \rgb_o[20]_i_59_1\(0) => u_view_n_62,
      \rgb_o[20]_i_6_0\ => u_box_overlay_n_8,
      \rgb_o_reg[0]\ => u_view_n_25,
      \rgb_o_reg[0]_0\ => u_box_overlay_n_4,
      \rgb_o_reg[0]_1\ => u_box_overlay_n_9,
      \rgb_o_reg[0]_2\ => u_box_overlay_n_6,
      \rgb_o_reg[0]_3\ => u_box_overlay_n_7,
      \rgb_o_reg[20]_i_13_0\(0) => u_view_n_23,
      \rgb_o_reg[20]_i_13_1\(0) => u_view_n_64,
      \rgb_o_reg[8]\ => u_box_overlay_n_3,
      \rgb_reg[10]\ => u_box_mailbox_n_52,
      \rgb_reg[11]\ => u_box_mailbox_n_53,
      \rgb_reg[12]\ => u_box_mailbox_n_54,
      \rgb_reg[13]\ => u_box_mailbox_n_55,
      \rgb_reg[8]\ => u_box_mailbox_n_50,
      \rgb_reg[9]\ => u_box_mailbox_n_51,
      rst_n => rst_n,
      rst_n_0 => u_box_mailbox_n_56
    );
u_box_overlay: entity work.facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay
     port map (
      CO(0) => u_view_n_38,
      D(20) => p_0_in(22),
      D(19 downto 7) => p_0_in(20 downto 8),
      D(6 downto 0) => p_0_in(6 downto 0),
      O(2) => u_view_n_27,
      O(1) => u_view_n_28,
      O(0) => u_view_n_29,
      Q(1) => osd_y(9),
      Q(0) => osd_y(7),
      \base_s1_reg[0]\ => u_sleep_osd_n_10,
      \base_s1_reg[0]_0\ => u_sleep_osd_n_6,
      de => de,
      \dst_payload_reg[40]\ => u_box_overlay_n_3,
      \dst_payload_reg[67]\ => u_box_overlay_n_4,
      \dst_payload_reg[67]_0\ => u_box_overlay_n_5,
      hs => hs,
      overlay_de => overlay_de,
      overlay_hs => overlay_hs,
      overlay_vs => overlay_vs,
      pixel_clk => pixel_clk,
      rgb(9 downto 5) => rgb(20 downto 16),
      rgb(4 downto 0) => rgb(4 downto 0),
      \rgb_o[20]_i_16_0\(3 downto 0) => \^dst_payload_reg[72]\(5 downto 2),
      \rgb_o[20]_i_20\(2) => u_box_mailbox_n_42,
      \rgb_o[20]_i_20\(1) => u_box_mailbox_n_43,
      \rgb_o[20]_i_20\(0) => u_box_mailbox_n_44,
      \rgb_o[20]_i_202\(3 downto 2) => \^dst_payload_reg[72]\(1 downto 0),
      \rgb_o[20]_i_202\(1 downto 0) => y_end(1 downto 0),
      \rgb_o[20]_i_20_0\(0) => u_view_n_58,
      \rgb_o[20]_i_21_0\(3) => u_view_n_47,
      \rgb_o[20]_i_21_0\(2) => u_view_n_48,
      \rgb_o[20]_i_21_0\(1) => u_view_n_49,
      \rgb_o[20]_i_21_0\(0) => u_view_n_50,
      \rgb_o[20]_i_21_1\(3) => u_view_n_51,
      \rgb_o[20]_i_21_1\(2) => u_view_n_52,
      \rgb_o[20]_i_21_1\(1) => u_view_n_53,
      \rgb_o[20]_i_21_1\(0) => u_view_n_54,
      \rgb_o[20]_i_21_2\(0) => u_view_n_55,
      \rgb_o[20]_i_22_0\(3) => u_view_n_30,
      \rgb_o[20]_i_22_0\(2) => u_view_n_31,
      \rgb_o[20]_i_22_0\(1) => u_view_n_32,
      \rgb_o[20]_i_22_0\(0) => u_view_n_33,
      \rgb_o[20]_i_22_1\(3) => u_view_n_34,
      \rgb_o[20]_i_22_1\(2) => u_view_n_35,
      \rgb_o[20]_i_22_1\(1) => u_view_n_36,
      \rgb_o[20]_i_22_1\(0) => u_view_n_37,
      \rgb_o[20]_i_23_0\(3) => u_box_mailbox_n_35,
      \rgb_o[20]_i_23_0\(2) => u_box_mailbox_n_36,
      \rgb_o[20]_i_23_0\(1) => u_box_mailbox_n_37,
      \rgb_o[20]_i_23_0\(0) => u_box_mailbox_n_38,
      \rgb_o[20]_i_23_1\(1) => u_box_mailbox_n_40,
      \rgb_o[20]_i_23_1\(0) => u_box_mailbox_n_41,
      \rgb_o[20]_i_23_2\(3) => u_view_n_40,
      \rgb_o[20]_i_23_2\(2) => u_view_n_41,
      \rgb_o[20]_i_23_2\(1) => u_view_n_42,
      \rgb_o[20]_i_23_2\(0) => u_view_n_43,
      \rgb_o[20]_i_23_3\(0) => u_box_mailbox_n_39,
      \rgb_o[20]_i_2_0\(3) => \^dst_payload_reg[40]\(0),
      \rgb_o[20]_i_2_0\(2 downto 0) => x_end(2 downto 0),
      \rgb_o[20]_i_6\(2) => u_view_n_44,
      \rgb_o[20]_i_6\(1) => u_view_n_45,
      \rgb_o[20]_i_6\(0) => u_view_n_46,
      \rgb_o[20]_i_64_0\ => u_box_overlay_n_9,
      \rgb_o[20]_i_69_0\ => u_box_overlay_n_6,
      \rgb_o[20]_i_74_0\ => u_box_overlay_n_7,
      \rgb_o_reg[0]_0\ => u_box_mailbox_n_56,
      \rgb_o_reg[10]_0\ => u_box_mailbox_n_52,
      \rgb_o_reg[11]_0\ => u_box_mailbox_n_53,
      \rgb_o_reg[12]_0\ => u_box_mailbox_n_54,
      \rgb_o_reg[13]_0\ => u_box_mailbox_n_55,
      \rgb_o_reg[20]_i_134\ => u_box_overlay_n_8,
      \rgb_o_reg[8]_0\ => \^rst0\,
      \rgb_o_reg[8]_1\(0) => \^dst_payload_reg[40]\(5),
      \rgb_o_reg[8]_2\(3 downto 0) => \^dst_payload_reg[40]\(4 downto 1),
      \rgb_o_reg[8]_3\ => u_box_mailbox_n_50,
      \rgb_o_reg[9]_0\ => u_box_mailbox_n_51,
      sleep_mode => sleep_mode,
      text_s10 => text_s10,
      text_s1_reg => u_sleep_osd_n_8,
      text_s1_reg_0 => u_sleep_osd_n_7,
      text_s1_reg_1 => u_sleep_osd_n_9,
      vs => vs
    );
u_sleep_osd: entity work.facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd
     port map (
      D(20) => p_0_in(22),
      D(19 downto 7) => p_0_in(20 downto 8),
      D(6 downto 0) => p_0_in(6 downto 0),
      Q(2) => status_rgb(16),
      Q(1) => status_rgb(8),
      Q(0) => status_rgb(0),
      \base_s1_reg[0]_0\(9 downto 0) => osd_x(10 downto 1),
      \base_s1_reg[0]_1\(8 downto 0) => osd_y(9 downto 1),
      \osd_x_reg[10]\ => u_sleep_osd_n_6,
      \osd_x_reg[10]_0\ => u_sleep_osd_n_7,
      \osd_y_reg[8]\ => u_sleep_osd_n_8,
      \osd_y_reg[9]\ => u_sleep_osd_n_10,
      overlay_de => overlay_de,
      overlay_hs => overlay_hs,
      overlay_vs => overlay_vs,
      pixel_clk => pixel_clk,
      \rgb_o_reg[13]_0\(3) => u_sleep_osd_n_23,
      \rgb_o_reg[13]_0\(2) => u_sleep_osd_n_24,
      \rgb_o_reg[13]_0\(1) => u_sleep_osd_n_25,
      \rgb_o_reg[13]_0\(0) => u_sleep_osd_n_26,
      \rgb_o_reg[15]_0\(7) => \u_green/qm\(8),
      \rgb_o_reg[15]_0\(6) => \u_green/p_0_in5_in\,
      \rgb_o_reg[15]_0\(5) => \u_green/p_0_in4_in\,
      \rgb_o_reg[15]_0\(4) => \u_green/p_0_in3_in\,
      \rgb_o_reg[15]_0\(3) => \u_green/p_0_in2_in\,
      \rgb_o_reg[15]_0\(2) => \u_green/p_0_in1_in\,
      \rgb_o_reg[15]_0\(1) => \u_green/p_0_in0_in\,
      \rgb_o_reg[15]_0\(0) => u_sleep_osd_n_34,
      \rgb_o_reg[16]_0\(7) => \u_red/qm\(8),
      \rgb_o_reg[16]_0\(6) => \u_red/p_0_in5_in\,
      \rgb_o_reg[16]_0\(5) => \u_red/p_0_in4_in\,
      \rgb_o_reg[16]_0\(4) => \u_red/p_0_in3_in\,
      \rgb_o_reg[16]_0\(3) => \u_red/p_0_in2_in\,
      \rgb_o_reg[16]_0\(2) => \u_red/p_0_in1_in\,
      \rgb_o_reg[16]_0\(1) => \u_red/p_0_in0_in\,
      \rgb_o_reg[16]_0\(0) => u_sleep_osd_n_46,
      \rgb_o_reg[23]_0\(3) => u_sleep_osd_n_35,
      \rgb_o_reg[23]_0\(2) => u_sleep_osd_n_36,
      \rgb_o_reg[23]_0\(1) => u_sleep_osd_n_37,
      \rgb_o_reg[23]_0\(0) => u_sleep_osd_n_38,
      \rgb_o_reg[23]_i_2_0\ => \rgb_o_reg[23]_i_2\,
      \rgb_o_reg[5]_0\(3 downto 0) => qm_ones(3 downto 0),
      \rgb_o_reg[7]_0\(7) => \u_blue/qm\(8),
      \rgb_o_reg[7]_0\(6) => \u_blue/p_0_in5_in\,
      \rgb_o_reg[7]_0\(5) => \u_blue/p_0_in4_in\,
      \rgb_o_reg[7]_0\(4) => \u_blue/p_0_in3_in\,
      \rgb_o_reg[7]_0\(3) => \u_blue/p_0_in2_in\,
      \rgb_o_reg[7]_0\(2) => \u_blue/p_0_in1_in\,
      \rgb_o_reg[7]_0\(1) => \u_blue/p_0_in0_in\,
      \rgb_o_reg[7]_0\(0) => u_sleep_osd_n_22,
      sleep_mode => sleep_mode,
      sleep_mode_reg => u_sleep_osd_n_9,
      status_de => status_de,
      status_hs => status_hs,
      status_vs => status_vs,
      text_s10 => text_s10,
      vs_o_reg_0 => \^rst0\
    );
u_tx: entity work.facebox_system_tx2_axis_sink_0_0_tx2_video_out
     port map (
      D(8) => \u_blue/qm\(8),
      D(7) => \u_blue/p_0_in5_in\,
      D(6) => \u_blue/p_0_in4_in\,
      D(5) => \u_blue/p_0_in3_in\,
      D(4) => \u_blue/p_0_in2_in\,
      D(3) => \u_blue/p_0_in1_in\,
      D(2) => \u_blue/p_0_in0_in\,
      D(1) => u_sleep_osd_n_22,
      D(0) => status_rgb(0),
      \ones_q_reg[3]\(3 downto 0) => qm_ones(3 downto 0),
      \ones_q_reg[3]_0\(3) => u_sleep_osd_n_23,
      \ones_q_reg[3]_0\(2) => u_sleep_osd_n_24,
      \ones_q_reg[3]_0\(1) => u_sleep_osd_n_25,
      \ones_q_reg[3]_0\(0) => u_sleep_osd_n_26,
      \ones_q_reg[3]_1\(3) => u_sleep_osd_n_35,
      \ones_q_reg[3]_1\(2) => u_sleep_osd_n_36,
      \ones_q_reg[3]_1\(1) => u_sleep_osd_n_37,
      \ones_q_reg[3]_1\(0) => u_sleep_osd_n_38,
      pixel_clk => pixel_clk,
      \qm_q_reg[8]\(8) => \u_green/qm\(8),
      \qm_q_reg[8]\(7) => \u_green/p_0_in5_in\,
      \qm_q_reg[8]\(6) => \u_green/p_0_in4_in\,
      \qm_q_reg[8]\(5) => \u_green/p_0_in3_in\,
      \qm_q_reg[8]\(4) => \u_green/p_0_in2_in\,
      \qm_q_reg[8]\(3) => \u_green/p_0_in1_in\,
      \qm_q_reg[8]\(2) => \u_green/p_0_in0_in\,
      \qm_q_reg[8]\(1) => u_sleep_osd_n_34,
      \qm_q_reg[8]\(0) => status_rgb(8),
      \qm_q_reg[8]_0\(8) => \u_red/qm\(8),
      \qm_q_reg[8]_0\(7) => \u_red/p_0_in5_in\,
      \qm_q_reg[8]_0\(6) => \u_red/p_0_in4_in\,
      \qm_q_reg[8]_0\(5) => \u_red/p_0_in3_in\,
      \qm_q_reg[8]_0\(4) => \u_red/p_0_in2_in\,
      \qm_q_reg[8]_0\(3) => \u_red/p_0_in1_in\,
      \qm_q_reg[8]_0\(2) => \u_red/p_0_in0_in\,
      \qm_q_reg[8]_0\(1) => u_sleep_osd_n_46,
      \qm_q_reg[8]_0\(0) => status_rgb(16),
      rst_n => rst_n,
      rst_n_0 => \^rst0\,
      serial_clk => serial_clk,
      status_de => status_de,
      status_hs => status_hs,
      status_vs => status_vs,
      tmds_clk_n => tmds_clk_n,
      tmds_clk_p => tmds_clk_p,
      tmds_data_n(2 downto 0) => tmds_data_n(2 downto 0),
      tmds_data_p(2 downto 0) => tmds_data_p(2 downto 0)
    );
u_view: entity work.facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport
     port map (
      CO(0) => \^dst_payload_reg[40]\(6),
      DI(0) => DI(0),
      O(2) => u_view_n_27,
      O(1) => u_view_n_28,
      O(0) => u_view_n_29,
      Q(9 downto 0) => active_x(10 downto 1),
      S(0) => S(0),
      \active_x_reg[10]_0\(0) => u_view_n_24,
      \active_x_reg[10]_1\(0) => u_view_n_26,
      \active_x_reg[10]_2\(3) => u_view_n_34,
      \active_x_reg[10]_2\(2) => u_view_n_35,
      \active_x_reg[10]_2\(1) => u_view_n_36,
      \active_x_reg[10]_2\(0) => u_view_n_37,
      \active_x_reg[3]_0\(0) => u_view_n_56,
      \active_x_reg[3]_1\(3) => u_view_n_57,
      \active_x_reg[3]_1\(2) => u_view_n_58,
      \active_x_reg[3]_1\(1) => u_view_n_59,
      \active_x_reg[3]_1\(0) => u_view_n_60,
      \active_x_reg[4]_0\(0) => u_view_n_62,
      \active_x_reg[7]_0\(3) => u_view_n_30,
      \active_x_reg[7]_0\(2) => u_view_n_31,
      \active_x_reg[7]_0\(1) => u_view_n_32,
      \active_x_reg[7]_0\(0) => u_view_n_33,
      \active_x_reg[7]_1\(0) => u_view_n_61,
      \active_y_reg[0]_0\(0) => u_view_n_64,
      \active_y_reg[1]_0\(0) => u_view_n_23,
      \active_y_reg[7]_0\(3) => u_view_n_47,
      \active_y_reg[7]_0\(2) => u_view_n_48,
      \active_y_reg[7]_0\(1) => u_view_n_49,
      \active_y_reg[7]_0\(0) => u_view_n_50,
      \active_y_reg[9]_0\(8 downto 0) => active_y(9 downto 1),
      \active_y_reg[9]_1\(3) => u_view_n_51,
      \active_y_reg[9]_1\(2) => u_view_n_52,
      \active_y_reg[9]_1\(1) => u_view_n_53,
      \active_y_reg[9]_1\(0) => u_view_n_54,
      bottom(1 downto 0) => bottom(1 downto 0),
      de => de,
      de_reg_0 => u_view_n_25,
      disable_sync_reg => u_view_n_63,
      \dst_payload_reg[66]\(0) => u_view_n_39,
      \dst_payload_reg[66]_0\(3) => u_view_n_40,
      \dst_payload_reg[66]_0\(2) => u_view_n_41,
      \dst_payload_reg[66]_0\(1) => u_view_n_42,
      \dst_payload_reg[66]_0\(0) => u_view_n_43,
      \dst_payload_reg[67]\(2) => u_view_n_44,
      \dst_payload_reg[67]\(1) => u_view_n_45,
      \dst_payload_reg[67]\(0) => u_view_n_46,
      frame_start => frame_start,
      hs => hs,
      left(0) => left(10),
      \out\ => disable_sync,
      pixel_clk => pixel_clk,
      \rgb_o[20]_i_10_0\(1 downto 0) => \^dst_payload_reg[72]\(7 downto 6),
      \rgb_o[20]_i_10_1\(9) => applied_payload(72),
      \rgb_o[20]_i_10_1\(8 downto 5) => applied_payload(67 downto 64),
      \rgb_o[20]_i_10_1\(4 downto 0) => applied_payload(36 downto 32),
      \rgb_o[20]_i_10_2\(0) => \rgb_o[20]_i_10\(0),
      \rgb_o[20]_i_10_3\(0) => \rgb_o[20]_i_10_0\(0),
      \rgb_o[20]_i_20\(2) => u_box_mailbox_n_47,
      \rgb_o[20]_i_20\(1) => u_box_mailbox_n_48,
      \rgb_o[20]_i_20\(0) => u_box_mailbox_n_49,
      \rgb_o[20]_i_21\(1 downto 0) => \rgb_o[20]_i_21\(1 downto 0),
      \rgb_o[20]_i_74\(0) => u_box_mailbox_n_14,
      \rgb_o[20]_i_74_0\(1) => u_box_mailbox_n_45,
      \rgb_o[20]_i_74_0\(0) => u_box_mailbox_n_46,
      \rgb_o_reg[20]_i_14\(0) => u_box_mailbox_n_11,
      \rgb_o_reg[20]_i_14_0\(1) => u_box_mailbox_n_12,
      \rgb_o_reg[20]_i_14_0\(0) => u_box_mailbox_n_13,
      \rgb_o_reg[20]_i_174_0\(0) => u_view_n_38,
      \rgb_o_reg[20]_i_174_1\(3) => \^dst_payload_reg[40]\(0),
      \rgb_o_reg[20]_i_174_1\(2 downto 0) => x_end(2 downto 0),
      \rgb_o_reg[20]_i_30_0\ => \rgb_o_reg[20]_i_30\,
      \rgb_o_reg[20]_i_30_1\(3 downto 0) => \^dst_payload_reg[72]\(5 downto 2),
      \rgb_o_reg[20]_i_62_0\(0) => u_view_n_55,
      \rgb_o_reg[20]_i_79_0\(3 downto 2) => \^dst_payload_reg[72]\(1 downto 0),
      \rgb_o_reg[20]_i_79_0\(1 downto 0) => y_end(1 downto 0),
      \rgb_o_reg[20]_i_79_1\ => u_box_overlay_n_5,
      \rgb_o_reg[20]_i_85_0\(0) => \^dst_payload_reg[40]\(5),
      \rgb_o_reg[20]_i_85_1\ => \rgb_o_reg[20]_i_85\,
      \rgb_o_reg[20]_i_85_2\(3 downto 0) => \^dst_payload_reg[40]\(4 downto 1),
      \rgb_reg[20]_0\(15 downto 11) => rgb(20 downto 16),
      \rgb_reg[20]_0\(10 downto 5) => rgb(13 downto 8),
      \rgb_reg[20]_0\(4 downto 0) => rgb(4 downto 0),
      right(2 downto 0) => right(2 downto 0),
      rst_n => rst_n,
      s_tdata(15 downto 0) => s_tdata(15 downto 0),
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid,
      sleep_mode => sleep_mode,
      status(16 downto 0) => status(16 downto 0),
      \v_count_reg[0]\ => \^rst0\,
      vs => vs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity facebox_system_tx2_axis_sink_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of facebox_system_tx2_axis_sink_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of facebox_system_tx2_axis_sink_0_0 : entity is "facebox_system_tx2_axis_sink_0_0,tx2_axis_sink,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of facebox_system_tx2_axis_sink_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of facebox_system_tx2_axis_sink_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of facebox_system_tx2_axis_sink_0_0 : entity is "tx2_axis_sink,Vivado 2018.3";
end facebox_system_tx2_axis_sink_0_0;

architecture STRUCTURE of facebox_system_tx2_axis_sink_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \rgb_o[20]_i_162_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_165_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_166_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_210_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_257_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_269_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_80_n_0\ : STD_LOGIC;
  signal \rgb_o[20]_i_82_n_0\ : STD_LOGIC;
  signal \rgb_o_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \u_box_overlay/bottom\ : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal \u_box_overlay/right\ : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \u_box_overlay/x_end\ : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \u_box_overlay/y_end\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \u_tx/u_r/RST0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of box_src_clk : signal is "xilinx.com:signal:clock:1.0 box_src_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of box_src_clk : signal is "XIL_INTERFACENAME box_src_clk, ASSOCIATED_RESET box_src_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of box_src_rst_n : signal is "xilinx.com:signal:reset:1.0 box_src_rst_n RST";
  attribute X_INTERFACE_PARAMETER of box_src_rst_n : signal is "XIL_INTERFACENAME box_src_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute X_INTERFACE_PARAMETER of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET rst_n, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tlast : signal is "xilinx.com:interface:axis:1.0 s TLAST";
  attribute X_INTERFACE_PARAMETER of s_tlast : signal is "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tready : signal is "xilinx.com:interface:axis:1.0 s TREADY";
  attribute X_INTERFACE_INFO of s_tuser : signal is "xilinx.com:interface:axis:1.0 s TUSER";
  attribute X_INTERFACE_INFO of s_tvalid : signal is "xilinx.com:interface:axis:1.0 s TVALID";
  attribute X_INTERFACE_INFO of serial_clk : signal is "xilinx.com:signal:clock:1.0 serial_clk CLK";
  attribute X_INTERFACE_PARAMETER of serial_clk : signal is "XIL_INTERFACENAME serial_clk, FREQ_HZ 371250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tmds_clk_n : signal is "xilinx.com:signal:clock:1.0 tmds_clk_n CLK";
  attribute X_INTERFACE_PARAMETER of tmds_clk_n : signal is "XIL_INTERFACENAME tmds_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tmds_clk_p : signal is "xilinx.com:signal:clock:1.0 tmds_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of tmds_clk_p : signal is "XIL_INTERFACENAME tmds_clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_tdata : signal is "xilinx.com:interface:axis:1.0 s TDATA";
begin
  status(31 downto 16) <= \^status\(31 downto 16);
  status(15) <= \<const0>\;
  status(14) <= \<const0>\;
  status(13) <= \<const0>\;
  status(12) <= \<const0>\;
  status(11) <= \<const0>\;
  status(10) <= \<const0>\;
  status(9) <= \<const0>\;
  status(8) <= \<const0>\;
  status(7) <= \<const0>\;
  status(6) <= \<const0>\;
  status(5) <= \<const0>\;
  status(4) <= \<const0>\;
  status(3) <= \<const0>\;
  status(2) <= \<const0>\;
  status(1) <= \<const0>\;
  status(0) <= \^status\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.facebox_system_tx2_axis_sink_0_0_tx2_axis_sink
     port map (
      DI(0) => \rgb_o[20]_i_162_n_0\,
      RST0 => \u_tx/u_r/RST0\,
      S(0) => \rgb_o[20]_i_257_n_0\,
      bottom(1) => \u_box_overlay/bottom\(11),
      bottom(0) => \u_box_overlay/bottom\(3),
      box_ack => box_ack,
      box_busy => box_busy,
      box_channel_ready => box_channel_ready,
      box_expired => box_expired,
      box_invalidate => box_invalidate,
      box_payload(159 downto 0) => box_payload(159 downto 0),
      box_recover => box_recover,
      box_reset_event => box_reset_event,
      box_send => box_send,
      box_src_clk => box_src_clk,
      box_src_rst_n => box_src_rst_n,
      box_timeout => box_timeout,
      \dst_payload_reg[40]\(6 downto 0) => \u_box_overlay/x_end\(9 downto 3),
      \dst_payload_reg[72]\(7 downto 0) => \u_box_overlay/y_end\(9 downto 2),
      hdmi_disable => hdmi_disable,
      pixel_clk => pixel_clk,
      \rgb_o[20]_i_10\(0) => \rgb_o[20]_i_80_n_0\,
      \rgb_o[20]_i_10_0\(0) => \rgb_o[20]_i_82_n_0\,
      \rgb_o[20]_i_21\(1) => \rgb_o[20]_i_165_n_0\,
      \rgb_o[20]_i_21\(0) => \rgb_o[20]_i_166_n_0\,
      \rgb_o_reg[20]_i_30\ => \rgb_o[20]_i_210_n_0\,
      \rgb_o_reg[20]_i_85\ => \rgb_o[20]_i_269_n_0\,
      \rgb_o_reg[23]_i_2\ => \rgb_o_reg[23]_i_8_n_0\,
      right(2) => \u_box_overlay/right\(11),
      right(1) => \u_box_overlay/right\(9),
      right(0) => \u_box_overlay/right\(4),
      rst_n => rst_n,
      s_tdata(15 downto 0) => s_tdata(15 downto 0),
      s_tlast => s_tlast,
      s_tready => s_tready,
      s_tuser => s_tuser,
      s_tvalid => s_tvalid,
      serial_clk => serial_clk,
      status(16 downto 1) => \^status\(31 downto 16),
      status(0) => \^status\(0),
      tmds_clk_n => tmds_clk_n,
      tmds_clk_p => tmds_clk_p,
      tmds_data_n(2 downto 0) => tmds_data_n(2 downto 0),
      tmds_data_p(2 downto 0) => tmds_data_p(2 downto 0)
    );
\rgb_o[20]_i_156\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \u_box_overlay/y_end\(2),
      O => \u_box_overlay/bottom\(3)
    );
\rgb_o[20]_i_161\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \u_box_overlay/y_end\(9),
      I1 => \u_box_overlay/y_end\(8),
      I2 => \rgb_o[20]_i_210_n_0\,
      I3 => \u_box_overlay/y_end\(7),
      I4 => \u_box_overlay/y_end\(6),
      O => \u_box_overlay/bottom\(11)
    );
\rgb_o[20]_i_162\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \u_box_overlay/y_end\(8),
      I1 => \rgb_o[20]_i_210_n_0\,
      I2 => \u_box_overlay/y_end\(7),
      I3 => \u_box_overlay/y_end\(6),
      I4 => \u_box_overlay/y_end\(9),
      O => \rgb_o[20]_i_162_n_0\
    );
\rgb_o[20]_i_165\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \u_box_overlay/y_end\(6),
      I1 => \u_box_overlay/y_end\(7),
      I2 => \rgb_o[20]_i_210_n_0\,
      I3 => \u_box_overlay/y_end\(8),
      I4 => \u_box_overlay/y_end\(9),
      O => \rgb_o[20]_i_165_n_0\
    );
\rgb_o[20]_i_166\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55955555"
    )
        port map (
      I0 => \u_box_overlay/y_end\(9),
      I1 => \u_box_overlay/y_end\(6),
      I2 => \u_box_overlay/y_end\(7),
      I3 => \rgb_o[20]_i_210_n_0\,
      I4 => \u_box_overlay/y_end\(8),
      O => \rgb_o[20]_i_166_n_0\
    );
\rgb_o[20]_i_178\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \u_box_overlay/x_end\(3),
      O => \u_box_overlay/right\(4)
    );
\rgb_o[20]_i_210\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \u_box_overlay/y_end\(2),
      I1 => \u_box_overlay/y_end\(3),
      I2 => \u_box_overlay/y_end\(4),
      I3 => \u_box_overlay/y_end\(5),
      O => \rgb_o[20]_i_210_n_0\
    );
\rgb_o[20]_i_253\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \u_box_overlay/x_end\(9),
      I1 => \rgb_o[20]_i_269_n_0\,
      I2 => \u_box_overlay/x_end\(7),
      I3 => \u_box_overlay/x_end\(8),
      O => \u_box_overlay/right\(11)
    );
\rgb_o[20]_i_255\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \u_box_overlay/x_end\(4),
      I1 => \u_box_overlay/x_end\(3),
      I2 => \u_box_overlay/x_end\(6),
      I3 => \u_box_overlay/x_end\(5),
      I4 => \u_box_overlay/x_end\(7),
      I5 => \u_box_overlay/x_end\(8),
      O => \u_box_overlay/right\(9)
    );
\rgb_o[20]_i_257\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \u_box_overlay/x_end\(8),
      I1 => \u_box_overlay/x_end\(7),
      I2 => \rgb_o[20]_i_269_n_0\,
      I3 => \u_box_overlay/x_end\(9),
      O => \rgb_o[20]_i_257_n_0\
    );
\rgb_o[20]_i_269\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \u_box_overlay/x_end\(4),
      I1 => \u_box_overlay/x_end\(3),
      I2 => \u_box_overlay/x_end\(6),
      I3 => \u_box_overlay/x_end\(5),
      O => \rgb_o[20]_i_269_n_0\
    );
\rgb_o[20]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \u_box_overlay/y_end\(9),
      I1 => \u_box_overlay/y_end\(8),
      I2 => \rgb_o[20]_i_210_n_0\,
      I3 => \u_box_overlay/y_end\(7),
      I4 => \u_box_overlay/y_end\(6),
      O => \rgb_o[20]_i_80_n_0\
    );
\rgb_o[20]_i_82\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => \u_box_overlay/y_end\(6),
      I1 => \u_box_overlay/y_end\(7),
      I2 => \rgb_o[20]_i_210_n_0\,
      I3 => \u_box_overlay/y_end\(8),
      I4 => \u_box_overlay/y_end\(9),
      O => \rgb_o[20]_i_82_n_0\
    );
\rgb_o_reg[23]_i_8\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => \u_tx/u_r/RST0\,
      D => '1',
      Q => \rgb_o_reg[23]_i_8_n_0\
    );
end STRUCTURE;
