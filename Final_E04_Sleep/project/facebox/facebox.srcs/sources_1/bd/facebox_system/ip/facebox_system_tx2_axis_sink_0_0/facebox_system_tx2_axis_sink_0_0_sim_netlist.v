// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:22:44 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_tx2_axis_sink_0_0/facebox_system_tx2_axis_sink_0_0_sim_netlist.v
// Design      : facebox_system_tx2_axis_sink_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_tx2_axis_sink_0_0,tx2_axis_sink,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tx2_axis_sink,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_tx2_axis_sink_0_0
   (pixel_clk,
    serial_clk,
    rst_n,
    s_tvalid,
    s_tready,
    s_tdata,
    s_tuser,
    s_tlast,
    tmds_data_p,
    tmds_data_n,
    tmds_clk_p,
    tmds_clk_n,
    status,
    box_src_clk,
    box_src_rst_n,
    box_send,
    box_recover,
    box_invalidate,
    hdmi_disable,
    box_payload,
    box_busy,
    box_ack,
    box_timeout,
    box_channel_ready,
    box_reset_event,
    box_expired);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET rst_n, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0" *) input pixel_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 serial_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME serial_clk, FREQ_HZ 371250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, INSERT_VIP 0" *) input serial_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *) input s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *) output s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *) input [15:0]s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TUSER" *) input s_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /hdmi_video_clk_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_tlast;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tmds_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tmds_clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_p, INSERT_VIP 0" *) output tmds_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tmds_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tmds_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_tx2_axis_sink_0_0_tmds_clk_n, INSERT_VIP 0" *) output tmds_clk_n;
  output [31:0]status;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 box_src_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME box_src_clk, ASSOCIATED_RESET box_src_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input box_src_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 box_src_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME box_src_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input box_src_rst_n;
  input box_send;
  input box_recover;
  input box_invalidate;
  input hdmi_disable;
  input [447:0]box_payload;
  output box_busy;
  output box_ack;
  output box_timeout;
  output box_channel_ready;
  output box_reset_event;
  output box_expired;

  wire \<const0> ;
  wire box_ack;
  wire box_busy;
  wire box_channel_ready;
  wire box_expired;
  wire box_invalidate;
  wire [447:0]box_payload;
  wire box_recover;
  wire box_reset_event;
  wire box_send;
  wire box_src_clk;
  wire box_src_rst_n;
  wire box_timeout;
  wire hdmi_disable;
  wire pixel_clk;
  wire \rgb_o[20]_i_162_n_0 ;
  wire \rgb_o[20]_i_165_n_0 ;
  wire \rgb_o[20]_i_166_n_0 ;
  wire \rgb_o[20]_i_210_n_0 ;
  wire \rgb_o[20]_i_257_n_0 ;
  wire \rgb_o[20]_i_269_n_0 ;
  wire \rgb_o[20]_i_80_n_0 ;
  wire \rgb_o[20]_i_82_n_0 ;
  wire \rgb_o_reg[23]_i_8_n_0 ;
  wire rst_n;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;
  wire serial_clk;
  wire [31:0]\^status ;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire tmds_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire tmds_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]tmds_data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]tmds_data_p;
  wire [11:3]\u_box_overlay/bottom ;
  wire [11:4]\u_box_overlay/right ;
  wire [9:3]\u_box_overlay/x_end ;
  wire [9:2]\u_box_overlay/y_end ;
  wire \u_tx/u_r/RST0 ;

  assign status[31:16] = \^status [31:16];
  assign status[15] = \<const0> ;
  assign status[14] = \<const0> ;
  assign status[13] = \<const0> ;
  assign status[12] = \<const0> ;
  assign status[11] = \<const0> ;
  assign status[10] = \<const0> ;
  assign status[9] = \<const0> ;
  assign status[8] = \<const0> ;
  assign status[7] = \<const0> ;
  assign status[6] = \<const0> ;
  assign status[5] = \<const0> ;
  assign status[4] = \<const0> ;
  assign status[3] = \<const0> ;
  assign status[2] = \<const0> ;
  assign status[1] = \<const0> ;
  assign status[0] = \^status [0];
  GND GND
       (.G(\<const0> ));
  facebox_system_tx2_axis_sink_0_0_tx2_axis_sink inst
       (.DI(\rgb_o[20]_i_162_n_0 ),
        .RST0(\u_tx/u_r/RST0 ),
        .S(\rgb_o[20]_i_257_n_0 ),
        .bottom({\u_box_overlay/bottom [11],\u_box_overlay/bottom [3]}),
        .box_ack(box_ack),
        .box_busy(box_busy),
        .box_channel_ready(box_channel_ready),
        .box_expired(box_expired),
        .box_invalidate(box_invalidate),
        .box_payload(box_payload[159:0]),
        .box_recover(box_recover),
        .box_reset_event(box_reset_event),
        .box_send(box_send),
        .box_src_clk(box_src_clk),
        .box_src_rst_n(box_src_rst_n),
        .box_timeout(box_timeout),
        .\dst_payload_reg[40] (\u_box_overlay/x_end ),
        .\dst_payload_reg[72] (\u_box_overlay/y_end ),
        .hdmi_disable(hdmi_disable),
        .pixel_clk(pixel_clk),
        .\rgb_o[20]_i_10 (\rgb_o[20]_i_80_n_0 ),
        .\rgb_o[20]_i_10_0 (\rgb_o[20]_i_82_n_0 ),
        .\rgb_o[20]_i_21 ({\rgb_o[20]_i_165_n_0 ,\rgb_o[20]_i_166_n_0 }),
        .\rgb_o_reg[20]_i_30 (\rgb_o[20]_i_210_n_0 ),
        .\rgb_o_reg[20]_i_85 (\rgb_o[20]_i_269_n_0 ),
        .\rgb_o_reg[23]_i_2 (\rgb_o_reg[23]_i_8_n_0 ),
        .right({\u_box_overlay/right [11],\u_box_overlay/right [9],\u_box_overlay/right [4]}),
        .rst_n(rst_n),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid),
        .serial_clk(serial_clk),
        .status({\^status [31:16],\^status [0]}),
        .tmds_clk_n(tmds_clk_n),
        .tmds_clk_p(tmds_clk_p),
        .tmds_data_n(tmds_data_n),
        .tmds_data_p(tmds_data_p));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_156 
       (.I0(\u_box_overlay/y_end [2]),
        .O(\u_box_overlay/bottom [3]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \rgb_o[20]_i_161 
       (.I0(\u_box_overlay/y_end [9]),
        .I1(\u_box_overlay/y_end [8]),
        .I2(\rgb_o[20]_i_210_n_0 ),
        .I3(\u_box_overlay/y_end [7]),
        .I4(\u_box_overlay/y_end [6]),
        .O(\u_box_overlay/bottom [11]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \rgb_o[20]_i_162 
       (.I0(\u_box_overlay/y_end [8]),
        .I1(\rgb_o[20]_i_210_n_0 ),
        .I2(\u_box_overlay/y_end [7]),
        .I3(\u_box_overlay/y_end [6]),
        .I4(\u_box_overlay/y_end [9]),
        .O(\rgb_o[20]_i_162_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \rgb_o[20]_i_165 
       (.I0(\u_box_overlay/y_end [6]),
        .I1(\u_box_overlay/y_end [7]),
        .I2(\rgb_o[20]_i_210_n_0 ),
        .I3(\u_box_overlay/y_end [8]),
        .I4(\u_box_overlay/y_end [9]),
        .O(\rgb_o[20]_i_165_n_0 ));
  LUT5 #(
    .INIT(32'h55955555)) 
    \rgb_o[20]_i_166 
       (.I0(\u_box_overlay/y_end [9]),
        .I1(\u_box_overlay/y_end [6]),
        .I2(\u_box_overlay/y_end [7]),
        .I3(\rgb_o[20]_i_210_n_0 ),
        .I4(\u_box_overlay/y_end [8]),
        .O(\rgb_o[20]_i_166_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_178 
       (.I0(\u_box_overlay/x_end [3]),
        .O(\u_box_overlay/right [4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \rgb_o[20]_i_210 
       (.I0(\u_box_overlay/y_end [2]),
        .I1(\u_box_overlay/y_end [3]),
        .I2(\u_box_overlay/y_end [4]),
        .I3(\u_box_overlay/y_end [5]),
        .O(\rgb_o[20]_i_210_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \rgb_o[20]_i_253 
       (.I0(\u_box_overlay/x_end [9]),
        .I1(\rgb_o[20]_i_269_n_0 ),
        .I2(\u_box_overlay/x_end [7]),
        .I3(\u_box_overlay/x_end [8]),
        .O(\u_box_overlay/right [11]));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \rgb_o[20]_i_255 
       (.I0(\u_box_overlay/x_end [4]),
        .I1(\u_box_overlay/x_end [3]),
        .I2(\u_box_overlay/x_end [6]),
        .I3(\u_box_overlay/x_end [5]),
        .I4(\u_box_overlay/x_end [7]),
        .I5(\u_box_overlay/x_end [8]),
        .O(\u_box_overlay/right [9]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \rgb_o[20]_i_257 
       (.I0(\u_box_overlay/x_end [8]),
        .I1(\u_box_overlay/x_end [7]),
        .I2(\rgb_o[20]_i_269_n_0 ),
        .I3(\u_box_overlay/x_end [9]),
        .O(\rgb_o[20]_i_257_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rgb_o[20]_i_269 
       (.I0(\u_box_overlay/x_end [4]),
        .I1(\u_box_overlay/x_end [3]),
        .I2(\u_box_overlay/x_end [6]),
        .I3(\u_box_overlay/x_end [5]),
        .O(\rgb_o[20]_i_269_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \rgb_o[20]_i_80 
       (.I0(\u_box_overlay/y_end [9]),
        .I1(\u_box_overlay/y_end [8]),
        .I2(\rgb_o[20]_i_210_n_0 ),
        .I3(\u_box_overlay/y_end [7]),
        .I4(\u_box_overlay/y_end [6]),
        .O(\rgb_o[20]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \rgb_o[20]_i_82 
       (.I0(\u_box_overlay/y_end [6]),
        .I1(\u_box_overlay/y_end [7]),
        .I2(\rgb_o[20]_i_210_n_0 ),
        .I3(\u_box_overlay/y_end [8]),
        .I4(\u_box_overlay/y_end [9]),
        .O(\rgb_o[20]_i_82_n_0 ));
  FDCE \rgb_o_reg[23]_i_8 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\u_tx/u_r/RST0 ),
        .D(1'b1),
        .Q(\rgb_o_reg[23]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "bbox_mailbox" *) 
module facebox_system_tx2_axis_sink_0_0_bbox_mailbox
   (Q,
    left,
    DI,
    S,
    \dst_payload_reg[66]_0 ,
    \dst_payload_reg[35]_0 ,
    \dst_payload_reg[39]_0 ,
    CO,
    \dst_payload_reg[40]_0 ,
    \dst_payload_reg[67]_0 ,
    \dst_payload_reg[71]_0 ,
    \dst_payload_reg[72]_0 ,
    \active_y_reg[7] ,
    \active_y_reg[9] ,
    \active_y_reg[9]_0 ,
    \dst_payload_reg[37]_0 ,
    \dst_payload_reg[65]_0 ,
    \dst_payload_reg[34]_0 ,
    \rgb_reg[8] ,
    \rgb_reg[9] ,
    \rgb_reg[10] ,
    \rgb_reg[11] ,
    \rgb_reg[12] ,
    \rgb_reg[13] ,
    rst_n_0,
    box_ack,
    box_timeout,
    box_reset_event,
    box_expired,
    box_busy,
    box_channel_ready,
    active_y,
    \rgb_o_reg[0] ,
    \rgb_o_reg[0]_0 ,
    active_x,
    \rgb_o_reg[0]_1 ,
    \rgb_o_reg[0]_2 ,
    \rgb_o_reg[0]_3 ,
    O,
    \rgb_o[20]_i_6_0 ,
    \rgb_o[20]_i_23 ,
    \rgb_o[20]_i_59_0 ,
    \rgb_o[20]_i_59_1 ,
    \rgb_o[20]_i_20_0 ,
    \rgb_o[20]_i_3_0 ,
    \rgb_o[20]_i_3_1 ,
    \rgb_o_reg[20]_i_13_0 ,
    \rgb_o_reg[20]_i_13_1 ,
    box_send,
    rgb,
    \rgb_o_reg[8] ,
    rst_n,
    box_src_rst_n,
    box_invalidate,
    box_recover,
    box_src_clk,
    pixel_clk,
    box_payload,
    frame_start);
  output [9:0]Q;
  output [0:0]left;
  output [0:0]DI;
  output [1:0]S;
  output [0:0]\dst_payload_reg[66]_0 ;
  output [3:0]\dst_payload_reg[35]_0 ;
  output [3:0]\dst_payload_reg[39]_0 ;
  output [0:0]CO;
  output [0:0]\dst_payload_reg[40]_0 ;
  output [3:0]\dst_payload_reg[67]_0 ;
  output [3:0]\dst_payload_reg[71]_0 ;
  output [1:0]\dst_payload_reg[72]_0 ;
  output [3:0]\active_y_reg[7] ;
  output [0:0]\active_y_reg[9] ;
  output [1:0]\active_y_reg[9]_0 ;
  output [2:0]\dst_payload_reg[37]_0 ;
  output [1:0]\dst_payload_reg[65]_0 ;
  output [2:0]\dst_payload_reg[34]_0 ;
  output \rgb_reg[8] ;
  output \rgb_reg[9] ;
  output \rgb_reg[10] ;
  output \rgb_reg[11] ;
  output \rgb_reg[12] ;
  output \rgb_reg[13] ;
  output rst_n_0;
  output box_ack;
  output box_timeout;
  output box_reset_event;
  output box_expired;
  output box_busy;
  output box_channel_ready;
  input [8:0]active_y;
  input \rgb_o_reg[0] ;
  input \rgb_o_reg[0]_0 ;
  input [9:0]active_x;
  input \rgb_o_reg[0]_1 ;
  input \rgb_o_reg[0]_2 ;
  input \rgb_o_reg[0]_3 ;
  input [2:0]O;
  input \rgb_o[20]_i_6_0 ;
  input [0:0]\rgb_o[20]_i_23 ;
  input [0:0]\rgb_o[20]_i_59_0 ;
  input [0:0]\rgb_o[20]_i_59_1 ;
  input [0:0]\rgb_o[20]_i_20_0 ;
  input [0:0]\rgb_o[20]_i_3_0 ;
  input [0:0]\rgb_o[20]_i_3_1 ;
  input [0:0]\rgb_o_reg[20]_i_13_0 ;
  input [0:0]\rgb_o_reg[20]_i_13_1 ;
  input box_send;
  input [5:0]rgb;
  input \rgb_o_reg[8] ;
  input rst_n;
  input box_src_rst_n;
  input box_invalidate;
  input box_recover;
  input box_src_clk;
  input pixel_clk;
  input [159:0]box_payload;
  input frame_start;

  wire [0:0]CO;
  wire [0:0]DI;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire [2:0]O;
  wire [9:0]Q;
  wire [1:0]S;
  wire ack19_out;
  wire ack_i_1_n_0;
  wire ack_reg_n_0;
  (* async_reg = "true" *) wire [1:0]ack_s;
  wire [9:0]active_x;
  wire [8:0]active_y;
  wire [3:0]\active_y_reg[7] ;
  wire [0:0]\active_y_reg[9] ;
  wire [1:0]\active_y_reg[9]_0 ;
  wire [31:0]age_frames;
  wire [31:1]age_frames0;
  wire \age_frames[0]_i_1_n_0 ;
  wire \age_frames[10]_i_1_n_0 ;
  wire \age_frames[11]_i_1_n_0 ;
  wire \age_frames[12]_i_1_n_0 ;
  wire \age_frames[13]_i_1_n_0 ;
  wire \age_frames[14]_i_1_n_0 ;
  wire \age_frames[15]_i_1_n_0 ;
  wire \age_frames[16]_i_1_n_0 ;
  wire \age_frames[17]_i_1_n_0 ;
  wire \age_frames[18]_i_1_n_0 ;
  wire \age_frames[19]_i_1_n_0 ;
  wire \age_frames[1]_i_1_n_0 ;
  wire \age_frames[20]_i_1_n_0 ;
  wire \age_frames[21]_i_1_n_0 ;
  wire \age_frames[22]_i_1_n_0 ;
  wire \age_frames[23]_i_1_n_0 ;
  wire \age_frames[24]_i_1_n_0 ;
  wire \age_frames[25]_i_1_n_0 ;
  wire \age_frames[26]_i_1_n_0 ;
  wire \age_frames[27]_i_1_n_0 ;
  wire \age_frames[28]_i_1_n_0 ;
  wire \age_frames[29]_i_1_n_0 ;
  wire \age_frames[2]_i_1_n_0 ;
  wire \age_frames[30]_i_1_n_0 ;
  wire \age_frames[31]_i_10_n_0 ;
  wire \age_frames[31]_i_11_n_0 ;
  wire \age_frames[31]_i_12_n_0 ;
  wire \age_frames[31]_i_13_n_0 ;
  wire \age_frames[31]_i_15_n_0 ;
  wire \age_frames[31]_i_16_n_0 ;
  wire \age_frames[31]_i_17_n_0 ;
  wire \age_frames[31]_i_18_n_0 ;
  wire \age_frames[31]_i_19_n_0 ;
  wire \age_frames[31]_i_1_n_0 ;
  wire \age_frames[31]_i_20_n_0 ;
  wire \age_frames[31]_i_21_n_0 ;
  wire \age_frames[31]_i_22_n_0 ;
  wire \age_frames[31]_i_24_n_0 ;
  wire \age_frames[31]_i_25_n_0 ;
  wire \age_frames[31]_i_26_n_0 ;
  wire \age_frames[31]_i_27_n_0 ;
  wire \age_frames[31]_i_28_n_0 ;
  wire \age_frames[31]_i_29_n_0 ;
  wire \age_frames[31]_i_2_n_0 ;
  wire \age_frames[31]_i_30_n_0 ;
  wire \age_frames[31]_i_31_n_0 ;
  wire \age_frames[31]_i_32_n_0 ;
  wire \age_frames[31]_i_33_n_0 ;
  wire \age_frames[31]_i_34_n_0 ;
  wire \age_frames[31]_i_35_n_0 ;
  wire \age_frames[31]_i_36_n_0 ;
  wire \age_frames[31]_i_37_n_0 ;
  wire \age_frames[31]_i_6_n_0 ;
  wire \age_frames[31]_i_7_n_0 ;
  wire \age_frames[31]_i_8_n_0 ;
  wire \age_frames[31]_i_9_n_0 ;
  wire \age_frames[3]_i_1_n_0 ;
  wire \age_frames[4]_i_1_n_0 ;
  wire \age_frames[5]_i_1_n_0 ;
  wire \age_frames[6]_i_1_n_0 ;
  wire \age_frames[7]_i_1_n_0 ;
  wire \age_frames[8]_i_1_n_0 ;
  wire \age_frames[9]_i_1_n_0 ;
  wire \age_frames_reg[12]_i_2_n_0 ;
  wire \age_frames_reg[12]_i_2_n_1 ;
  wire \age_frames_reg[12]_i_2_n_2 ;
  wire \age_frames_reg[12]_i_2_n_3 ;
  wire \age_frames_reg[16]_i_2_n_0 ;
  wire \age_frames_reg[16]_i_2_n_1 ;
  wire \age_frames_reg[16]_i_2_n_2 ;
  wire \age_frames_reg[16]_i_2_n_3 ;
  wire \age_frames_reg[20]_i_2_n_0 ;
  wire \age_frames_reg[20]_i_2_n_1 ;
  wire \age_frames_reg[20]_i_2_n_2 ;
  wire \age_frames_reg[20]_i_2_n_3 ;
  wire \age_frames_reg[24]_i_2_n_0 ;
  wire \age_frames_reg[24]_i_2_n_1 ;
  wire \age_frames_reg[24]_i_2_n_2 ;
  wire \age_frames_reg[24]_i_2_n_3 ;
  wire \age_frames_reg[28]_i_2_n_0 ;
  wire \age_frames_reg[28]_i_2_n_1 ;
  wire \age_frames_reg[28]_i_2_n_2 ;
  wire \age_frames_reg[28]_i_2_n_3 ;
  wire \age_frames_reg[31]_i_14_n_0 ;
  wire \age_frames_reg[31]_i_14_n_1 ;
  wire \age_frames_reg[31]_i_14_n_2 ;
  wire \age_frames_reg[31]_i_14_n_3 ;
  wire \age_frames_reg[31]_i_23_n_0 ;
  wire \age_frames_reg[31]_i_23_n_1 ;
  wire \age_frames_reg[31]_i_23_n_2 ;
  wire \age_frames_reg[31]_i_23_n_3 ;
  wire \age_frames_reg[31]_i_3_n_1 ;
  wire \age_frames_reg[31]_i_3_n_2 ;
  wire \age_frames_reg[31]_i_3_n_3 ;
  wire \age_frames_reg[31]_i_4_n_2 ;
  wire \age_frames_reg[31]_i_4_n_3 ;
  wire \age_frames_reg[31]_i_5_n_0 ;
  wire \age_frames_reg[31]_i_5_n_1 ;
  wire \age_frames_reg[31]_i_5_n_2 ;
  wire \age_frames_reg[31]_i_5_n_3 ;
  wire \age_frames_reg[4]_i_2_n_0 ;
  wire \age_frames_reg[4]_i_2_n_1 ;
  wire \age_frames_reg[4]_i_2_n_2 ;
  wire \age_frames_reg[4]_i_2_n_3 ;
  wire \age_frames_reg[8]_i_2_n_0 ;
  wire \age_frames_reg[8]_i_2_n_1 ;
  wire \age_frames_reg[8]_i_2_n_2 ;
  wire \age_frames_reg[8]_i_2_n_3 ;
  wire [159:0]applied_payload;
  wire box_ack;
  wire box_busy;
  wire box_channel_ready;
  wire box_expired;
  wire box_invalidate;
  wire [159:0]box_payload;
  wire box_recover;
  wire box_reset_event;
  wire box_send;
  wire box_src_clk;
  wire box_src_rst_n;
  wire box_timeout;
  wire clear_ack;
  wire clear_ack_i_1_n_0;
  (* async_reg = "true" *) wire [1:0]clear_ack_s;
  (* async_reg = "true" *) wire [1:0]clear_d;
  wire clear_req;
  wire clear_req_i_1_n_0;
  wire clear_req_i_2_n_0;
  wire dst_box_valid0;
  wire dst_box_valid_i_1_n_0;
  wire dst_box_valid_i_2_n_0;
  wire dst_box_valid_i_3_n_0;
  wire dst_box_valid_i_4_n_0;
  wire dst_box_valid_i_5_n_0;
  wire dst_box_valid_i_6_n_0;
  wire dst_box_valid_i_7_n_0;
  wire dst_box_valid_i_8_n_0;
  wire \dst_payload[0]_i_1_n_0 ;
  wire \dst_payload[100]_i_1_n_0 ;
  wire \dst_payload[101]_i_1_n_0 ;
  wire \dst_payload[102]_i_1_n_0 ;
  wire \dst_payload[103]_i_1_n_0 ;
  wire \dst_payload[104]_i_1_n_0 ;
  wire \dst_payload[105]_i_1_n_0 ;
  wire \dst_payload[106]_i_1_n_0 ;
  wire \dst_payload[107]_i_1_n_0 ;
  wire \dst_payload[108]_i_1_n_0 ;
  wire \dst_payload[109]_i_1_n_0 ;
  wire \dst_payload[10]_i_1_n_0 ;
  wire \dst_payload[110]_i_1_n_0 ;
  wire \dst_payload[111]_i_1_n_0 ;
  wire \dst_payload[112]_i_1_n_0 ;
  wire \dst_payload[113]_i_1_n_0 ;
  wire \dst_payload[114]_i_1_n_0 ;
  wire \dst_payload[115]_i_1_n_0 ;
  wire \dst_payload[116]_i_1_n_0 ;
  wire \dst_payload[117]_i_1_n_0 ;
  wire \dst_payload[118]_i_1_n_0 ;
  wire \dst_payload[119]_i_1_n_0 ;
  wire \dst_payload[11]_i_1_n_0 ;
  wire \dst_payload[120]_i_1_n_0 ;
  wire \dst_payload[121]_i_1_n_0 ;
  wire \dst_payload[122]_i_1_n_0 ;
  wire \dst_payload[123]_i_1_n_0 ;
  wire \dst_payload[124]_i_1_n_0 ;
  wire \dst_payload[125]_i_1_n_0 ;
  wire \dst_payload[126]_i_1_n_0 ;
  wire \dst_payload[127]_i_1_n_0 ;
  wire \dst_payload[128]_i_1_n_0 ;
  wire \dst_payload[129]_i_1_n_0 ;
  wire \dst_payload[12]_i_1_n_0 ;
  wire \dst_payload[130]_i_1_n_0 ;
  wire \dst_payload[131]_i_1_n_0 ;
  wire \dst_payload[132]_i_1_n_0 ;
  wire \dst_payload[133]_i_1_n_0 ;
  wire \dst_payload[134]_i_1_n_0 ;
  wire \dst_payload[135]_i_1_n_0 ;
  wire \dst_payload[136]_i_1_n_0 ;
  wire \dst_payload[137]_i_1_n_0 ;
  wire \dst_payload[138]_i_1_n_0 ;
  wire \dst_payload[139]_i_1_n_0 ;
  wire \dst_payload[13]_i_1_n_0 ;
  wire \dst_payload[140]_i_1_n_0 ;
  wire \dst_payload[141]_i_1_n_0 ;
  wire \dst_payload[142]_i_1_n_0 ;
  wire \dst_payload[143]_i_1_n_0 ;
  wire \dst_payload[144]_i_1_n_0 ;
  wire \dst_payload[145]_i_1_n_0 ;
  wire \dst_payload[146]_i_1_n_0 ;
  wire \dst_payload[147]_i_1_n_0 ;
  wire \dst_payload[148]_i_1_n_0 ;
  wire \dst_payload[149]_i_1_n_0 ;
  wire \dst_payload[14]_i_1_n_0 ;
  wire \dst_payload[150]_i_1_n_0 ;
  wire \dst_payload[151]_i_1_n_0 ;
  wire \dst_payload[152]_i_1_n_0 ;
  wire \dst_payload[153]_i_1_n_0 ;
  wire \dst_payload[154]_i_1_n_0 ;
  wire \dst_payload[155]_i_1_n_0 ;
  wire \dst_payload[156]_i_1_n_0 ;
  wire \dst_payload[157]_i_1_n_0 ;
  wire \dst_payload[158]_i_1_n_0 ;
  wire \dst_payload[159]_i_1_n_0 ;
  wire \dst_payload[159]_i_2_n_0 ;
  wire \dst_payload[159]_i_3_n_0 ;
  wire \dst_payload[15]_i_1_n_0 ;
  wire \dst_payload[16]_i_1_n_0 ;
  wire \dst_payload[17]_i_1_n_0 ;
  wire \dst_payload[18]_i_1_n_0 ;
  wire \dst_payload[19]_i_1_n_0 ;
  wire \dst_payload[1]_i_1_n_0 ;
  wire \dst_payload[20]_i_1_n_0 ;
  wire \dst_payload[21]_i_1_n_0 ;
  wire \dst_payload[22]_i_1_n_0 ;
  wire \dst_payload[23]_i_1_n_0 ;
  wire \dst_payload[24]_i_1_n_0 ;
  wire \dst_payload[25]_i_1_n_0 ;
  wire \dst_payload[26]_i_1_n_0 ;
  wire \dst_payload[27]_i_1_n_0 ;
  wire \dst_payload[28]_i_1_n_0 ;
  wire \dst_payload[29]_i_1_n_0 ;
  wire \dst_payload[2]_i_1_n_0 ;
  wire \dst_payload[30]_i_1_n_0 ;
  wire \dst_payload[31]_i_1_n_0 ;
  wire \dst_payload[32]_i_1_n_0 ;
  wire \dst_payload[33]_i_1_n_0 ;
  wire \dst_payload[34]_i_1_n_0 ;
  wire \dst_payload[35]_i_1_n_0 ;
  wire \dst_payload[36]_i_1_n_0 ;
  wire \dst_payload[37]_i_1_n_0 ;
  wire \dst_payload[38]_i_1_n_0 ;
  wire \dst_payload[39]_i_1_n_0 ;
  wire \dst_payload[3]_i_1_n_0 ;
  wire \dst_payload[40]_i_1_n_0 ;
  wire \dst_payload[41]_i_1_n_0 ;
  wire \dst_payload[42]_i_1_n_0 ;
  wire \dst_payload[43]_i_1_n_0 ;
  wire \dst_payload[44]_i_1_n_0 ;
  wire \dst_payload[45]_i_1_n_0 ;
  wire \dst_payload[46]_i_1_n_0 ;
  wire \dst_payload[47]_i_1_n_0 ;
  wire \dst_payload[48]_i_1_n_0 ;
  wire \dst_payload[49]_i_1_n_0 ;
  wire \dst_payload[4]_i_1_n_0 ;
  wire \dst_payload[50]_i_1_n_0 ;
  wire \dst_payload[51]_i_1_n_0 ;
  wire \dst_payload[52]_i_1_n_0 ;
  wire \dst_payload[53]_i_1_n_0 ;
  wire \dst_payload[54]_i_1_n_0 ;
  wire \dst_payload[55]_i_1_n_0 ;
  wire \dst_payload[56]_i_1_n_0 ;
  wire \dst_payload[57]_i_1_n_0 ;
  wire \dst_payload[58]_i_1_n_0 ;
  wire \dst_payload[59]_i_1_n_0 ;
  wire \dst_payload[5]_i_1_n_0 ;
  wire \dst_payload[60]_i_1_n_0 ;
  wire \dst_payload[61]_i_1_n_0 ;
  wire \dst_payload[62]_i_1_n_0 ;
  wire \dst_payload[63]_i_1_n_0 ;
  wire \dst_payload[64]_i_1_n_0 ;
  wire \dst_payload[65]_i_1_n_0 ;
  wire \dst_payload[66]_i_1_n_0 ;
  wire \dst_payload[67]_i_1_n_0 ;
  wire \dst_payload[68]_i_1_n_0 ;
  wire \dst_payload[69]_i_1_n_0 ;
  wire \dst_payload[6]_i_1_n_0 ;
  wire \dst_payload[70]_i_1_n_0 ;
  wire \dst_payload[71]_i_1_n_0 ;
  wire \dst_payload[72]_i_1_n_0 ;
  wire \dst_payload[73]_i_1_n_0 ;
  wire \dst_payload[74]_i_1_n_0 ;
  wire \dst_payload[75]_i_1_n_0 ;
  wire \dst_payload[76]_i_1_n_0 ;
  wire \dst_payload[77]_i_1_n_0 ;
  wire \dst_payload[78]_i_1_n_0 ;
  wire \dst_payload[79]_i_1_n_0 ;
  wire \dst_payload[7]_i_1_n_0 ;
  wire \dst_payload[80]_i_1_n_0 ;
  wire \dst_payload[81]_i_1_n_0 ;
  wire \dst_payload[82]_i_1_n_0 ;
  wire \dst_payload[83]_i_1_n_0 ;
  wire \dst_payload[84]_i_1_n_0 ;
  wire \dst_payload[85]_i_1_n_0 ;
  wire \dst_payload[86]_i_1_n_0 ;
  wire \dst_payload[87]_i_1_n_0 ;
  wire \dst_payload[88]_i_1_n_0 ;
  wire \dst_payload[89]_i_1_n_0 ;
  wire \dst_payload[8]_i_1_n_0 ;
  wire \dst_payload[90]_i_1_n_0 ;
  wire \dst_payload[91]_i_1_n_0 ;
  wire \dst_payload[92]_i_1_n_0 ;
  wire \dst_payload[93]_i_1_n_0 ;
  wire \dst_payload[94]_i_1_n_0 ;
  wire \dst_payload[95]_i_1_n_0 ;
  wire \dst_payload[96]_i_1_n_0 ;
  wire \dst_payload[97]_i_1_n_0 ;
  wire \dst_payload[98]_i_1_n_0 ;
  wire \dst_payload[99]_i_1_n_0 ;
  wire \dst_payload[9]_i_1_n_0 ;
  wire [2:0]\dst_payload_reg[34]_0 ;
  wire [3:0]\dst_payload_reg[35]_0 ;
  wire [2:0]\dst_payload_reg[37]_0 ;
  wire [3:0]\dst_payload_reg[39]_0 ;
  wire [0:0]\dst_payload_reg[40]_0 ;
  wire [1:0]\dst_payload_reg[65]_0 ;
  wire [0:0]\dst_payload_reg[66]_0 ;
  wire [3:0]\dst_payload_reg[67]_0 ;
  wire [3:0]\dst_payload_reg[71]_0 ;
  wire [1:0]\dst_payload_reg[72]_0 ;
  wire dst_ready_i_1_n_0;
  wire dst_ready_reg_n_0;
  (* async_reg = "true" *) wire [1:0]dst_reset_pipe;
  wire expire_ack;
  (* async_reg = "true" *) wire [1:0]expire_ack_d;
  wire expire_req_i_1_n_0;
  wire expire_req_i_2_n_0;
  wire expire_req_i_3_n_0;
  wire expire_req_reg_n_0;
  (* async_reg = "true" *) wire [1:0]expire_s;
  wire expired0;
  wire frame_start;
  wire [159:0]held_payload;
  wire \held_payload[159]_i_1_n_0 ;
  wire [31:1]in8;
  wire [0:0]left;
  wire [31:1]legal_box1;
  wire [31:1]legal_box2;
  wire mailbox_box_valid;
  wire [31:0]p_0_in;
  wire [31:0]p_1_in__0;
  wire pending;
  wire pending_i_1_n_0;
  wire pending_i_2_n_0;
  wire \pending_payload[63]_i_1_n_0 ;
  wire \pending_payload_reg_n_0_[0] ;
  wire \pending_payload_reg_n_0_[100] ;
  wire \pending_payload_reg_n_0_[101] ;
  wire \pending_payload_reg_n_0_[102] ;
  wire \pending_payload_reg_n_0_[103] ;
  wire \pending_payload_reg_n_0_[104] ;
  wire \pending_payload_reg_n_0_[105] ;
  wire \pending_payload_reg_n_0_[106] ;
  wire \pending_payload_reg_n_0_[107] ;
  wire \pending_payload_reg_n_0_[108] ;
  wire \pending_payload_reg_n_0_[109] ;
  wire \pending_payload_reg_n_0_[10] ;
  wire \pending_payload_reg_n_0_[110] ;
  wire \pending_payload_reg_n_0_[111] ;
  wire \pending_payload_reg_n_0_[112] ;
  wire \pending_payload_reg_n_0_[113] ;
  wire \pending_payload_reg_n_0_[114] ;
  wire \pending_payload_reg_n_0_[115] ;
  wire \pending_payload_reg_n_0_[116] ;
  wire \pending_payload_reg_n_0_[117] ;
  wire \pending_payload_reg_n_0_[118] ;
  wire \pending_payload_reg_n_0_[119] ;
  wire \pending_payload_reg_n_0_[11] ;
  wire \pending_payload_reg_n_0_[120] ;
  wire \pending_payload_reg_n_0_[121] ;
  wire \pending_payload_reg_n_0_[122] ;
  wire \pending_payload_reg_n_0_[123] ;
  wire \pending_payload_reg_n_0_[124] ;
  wire \pending_payload_reg_n_0_[125] ;
  wire \pending_payload_reg_n_0_[126] ;
  wire \pending_payload_reg_n_0_[127] ;
  wire \pending_payload_reg_n_0_[128] ;
  wire \pending_payload_reg_n_0_[129] ;
  wire \pending_payload_reg_n_0_[12] ;
  wire \pending_payload_reg_n_0_[130] ;
  wire \pending_payload_reg_n_0_[131] ;
  wire \pending_payload_reg_n_0_[132] ;
  wire \pending_payload_reg_n_0_[133] ;
  wire \pending_payload_reg_n_0_[134] ;
  wire \pending_payload_reg_n_0_[135] ;
  wire \pending_payload_reg_n_0_[136] ;
  wire \pending_payload_reg_n_0_[137] ;
  wire \pending_payload_reg_n_0_[138] ;
  wire \pending_payload_reg_n_0_[139] ;
  wire \pending_payload_reg_n_0_[13] ;
  wire \pending_payload_reg_n_0_[140] ;
  wire \pending_payload_reg_n_0_[141] ;
  wire \pending_payload_reg_n_0_[142] ;
  wire \pending_payload_reg_n_0_[143] ;
  wire \pending_payload_reg_n_0_[144] ;
  wire \pending_payload_reg_n_0_[145] ;
  wire \pending_payload_reg_n_0_[146] ;
  wire \pending_payload_reg_n_0_[147] ;
  wire \pending_payload_reg_n_0_[148] ;
  wire \pending_payload_reg_n_0_[149] ;
  wire \pending_payload_reg_n_0_[14] ;
  wire \pending_payload_reg_n_0_[150] ;
  wire \pending_payload_reg_n_0_[151] ;
  wire \pending_payload_reg_n_0_[152] ;
  wire \pending_payload_reg_n_0_[153] ;
  wire \pending_payload_reg_n_0_[154] ;
  wire \pending_payload_reg_n_0_[155] ;
  wire \pending_payload_reg_n_0_[156] ;
  wire \pending_payload_reg_n_0_[157] ;
  wire \pending_payload_reg_n_0_[158] ;
  wire \pending_payload_reg_n_0_[159] ;
  wire \pending_payload_reg_n_0_[15] ;
  wire \pending_payload_reg_n_0_[16] ;
  wire \pending_payload_reg_n_0_[17] ;
  wire \pending_payload_reg_n_0_[18] ;
  wire \pending_payload_reg_n_0_[19] ;
  wire \pending_payload_reg_n_0_[1] ;
  wire \pending_payload_reg_n_0_[20] ;
  wire \pending_payload_reg_n_0_[21] ;
  wire \pending_payload_reg_n_0_[22] ;
  wire \pending_payload_reg_n_0_[23] ;
  wire \pending_payload_reg_n_0_[24] ;
  wire \pending_payload_reg_n_0_[25] ;
  wire \pending_payload_reg_n_0_[26] ;
  wire \pending_payload_reg_n_0_[27] ;
  wire \pending_payload_reg_n_0_[28] ;
  wire \pending_payload_reg_n_0_[29] ;
  wire \pending_payload_reg_n_0_[2] ;
  wire \pending_payload_reg_n_0_[30] ;
  wire \pending_payload_reg_n_0_[31] ;
  wire \pending_payload_reg_n_0_[32] ;
  wire \pending_payload_reg_n_0_[33] ;
  wire \pending_payload_reg_n_0_[34] ;
  wire \pending_payload_reg_n_0_[35] ;
  wire \pending_payload_reg_n_0_[36] ;
  wire \pending_payload_reg_n_0_[37] ;
  wire \pending_payload_reg_n_0_[38] ;
  wire \pending_payload_reg_n_0_[39] ;
  wire \pending_payload_reg_n_0_[3] ;
  wire \pending_payload_reg_n_0_[40] ;
  wire \pending_payload_reg_n_0_[41] ;
  wire \pending_payload_reg_n_0_[42] ;
  wire \pending_payload_reg_n_0_[43] ;
  wire \pending_payload_reg_n_0_[44] ;
  wire \pending_payload_reg_n_0_[45] ;
  wire \pending_payload_reg_n_0_[46] ;
  wire \pending_payload_reg_n_0_[47] ;
  wire \pending_payload_reg_n_0_[48] ;
  wire \pending_payload_reg_n_0_[49] ;
  wire \pending_payload_reg_n_0_[4] ;
  wire \pending_payload_reg_n_0_[50] ;
  wire \pending_payload_reg_n_0_[51] ;
  wire \pending_payload_reg_n_0_[52] ;
  wire \pending_payload_reg_n_0_[53] ;
  wire \pending_payload_reg_n_0_[54] ;
  wire \pending_payload_reg_n_0_[55] ;
  wire \pending_payload_reg_n_0_[56] ;
  wire \pending_payload_reg_n_0_[57] ;
  wire \pending_payload_reg_n_0_[58] ;
  wire \pending_payload_reg_n_0_[59] ;
  wire \pending_payload_reg_n_0_[5] ;
  wire \pending_payload_reg_n_0_[60] ;
  wire \pending_payload_reg_n_0_[61] ;
  wire \pending_payload_reg_n_0_[62] ;
  wire \pending_payload_reg_n_0_[63] ;
  wire \pending_payload_reg_n_0_[64] ;
  wire \pending_payload_reg_n_0_[65] ;
  wire \pending_payload_reg_n_0_[66] ;
  wire \pending_payload_reg_n_0_[67] ;
  wire \pending_payload_reg_n_0_[68] ;
  wire \pending_payload_reg_n_0_[69] ;
  wire \pending_payload_reg_n_0_[6] ;
  wire \pending_payload_reg_n_0_[70] ;
  wire \pending_payload_reg_n_0_[71] ;
  wire \pending_payload_reg_n_0_[72] ;
  wire \pending_payload_reg_n_0_[73] ;
  wire \pending_payload_reg_n_0_[74] ;
  wire \pending_payload_reg_n_0_[75] ;
  wire \pending_payload_reg_n_0_[76] ;
  wire \pending_payload_reg_n_0_[77] ;
  wire \pending_payload_reg_n_0_[78] ;
  wire \pending_payload_reg_n_0_[79] ;
  wire \pending_payload_reg_n_0_[7] ;
  wire \pending_payload_reg_n_0_[80] ;
  wire \pending_payload_reg_n_0_[81] ;
  wire \pending_payload_reg_n_0_[82] ;
  wire \pending_payload_reg_n_0_[83] ;
  wire \pending_payload_reg_n_0_[84] ;
  wire \pending_payload_reg_n_0_[85] ;
  wire \pending_payload_reg_n_0_[86] ;
  wire \pending_payload_reg_n_0_[87] ;
  wire \pending_payload_reg_n_0_[88] ;
  wire \pending_payload_reg_n_0_[89] ;
  wire \pending_payload_reg_n_0_[8] ;
  wire \pending_payload_reg_n_0_[90] ;
  wire \pending_payload_reg_n_0_[91] ;
  wire \pending_payload_reg_n_0_[92] ;
  wire \pending_payload_reg_n_0_[93] ;
  wire \pending_payload_reg_n_0_[94] ;
  wire \pending_payload_reg_n_0_[95] ;
  wire \pending_payload_reg_n_0_[96] ;
  wire \pending_payload_reg_n_0_[97] ;
  wire \pending_payload_reg_n_0_[98] ;
  wire \pending_payload_reg_n_0_[99] ;
  wire \pending_payload_reg_n_0_[9] ;
  wire pending_req;
  wire pending_req_reg_n_0;
  wire pixel_clk;
  (* async_reg = "true" *) wire [1:0]ready_s;
  wire req;
  (* async_reg = "true" *) wire [1:0]req_d;
  wire \req_d[1]_i_1_n_0 ;
  wire req_i_1_n_0;
  wire req_i_2_n_0;
  wire reset_notice_pending;
  wire [5:0]rgb;
  wire \rgb_o[20]_i_100_n_0 ;
  wire \rgb_o[20]_i_101_n_0 ;
  wire \rgb_o[20]_i_102_n_0 ;
  wire \rgb_o[20]_i_104_n_0 ;
  wire \rgb_o[20]_i_105_n_0 ;
  wire \rgb_o[20]_i_106_n_0 ;
  wire \rgb_o[20]_i_107_n_0 ;
  wire \rgb_o[20]_i_108_n_0 ;
  wire \rgb_o[20]_i_109_n_0 ;
  wire \rgb_o[20]_i_111_n_0 ;
  wire \rgb_o[20]_i_112_n_0 ;
  wire \rgb_o[20]_i_113_n_0 ;
  wire \rgb_o[20]_i_115_n_0 ;
  wire \rgb_o[20]_i_11_n_0 ;
  wire \rgb_o[20]_i_125_n_0 ;
  wire \rgb_o[20]_i_126_n_0 ;
  wire \rgb_o[20]_i_127_n_0 ;
  wire \rgb_o[20]_i_128_n_0 ;
  wire \rgb_o[20]_i_129_n_0 ;
  wire \rgb_o[20]_i_12_n_0 ;
  wire \rgb_o[20]_i_130_n_0 ;
  wire \rgb_o[20]_i_131_n_0 ;
  wire \rgb_o[20]_i_132_n_0 ;
  wire \rgb_o[20]_i_133_n_0 ;
  wire \rgb_o[20]_i_136_n_0 ;
  wire \rgb_o[20]_i_137_n_0 ;
  wire \rgb_o[20]_i_138_n_0 ;
  wire \rgb_o[20]_i_139_n_0 ;
  wire \rgb_o[20]_i_140_n_0 ;
  wire \rgb_o[20]_i_15_n_0 ;
  wire \rgb_o[20]_i_17_n_0 ;
  wire \rgb_o[20]_i_183_n_0 ;
  wire \rgb_o[20]_i_184_n_0 ;
  wire \rgb_o[20]_i_185_n_0 ;
  wire \rgb_o[20]_i_186_n_0 ;
  wire \rgb_o[20]_i_187_n_0 ;
  wire \rgb_o[20]_i_188_n_0 ;
  wire \rgb_o[20]_i_189_n_0 ;
  wire \rgb_o[20]_i_18_n_0 ;
  wire \rgb_o[20]_i_190_n_0 ;
  wire \rgb_o[20]_i_191_n_0 ;
  wire \rgb_o[20]_i_192_n_0 ;
  wire \rgb_o[20]_i_193_n_0 ;
  wire \rgb_o[20]_i_194_n_0 ;
  wire \rgb_o[20]_i_19_n_0 ;
  wire [0:0]\rgb_o[20]_i_20_0 ;
  wire \rgb_o[20]_i_20_n_0 ;
  wire \rgb_o[20]_i_216_n_0 ;
  wire \rgb_o[20]_i_217_n_0 ;
  wire \rgb_o[20]_i_218_n_0 ;
  wire \rgb_o[20]_i_219_n_0 ;
  wire \rgb_o[20]_i_220_n_0 ;
  wire \rgb_o[20]_i_222_n_0 ;
  wire \rgb_o[20]_i_223_n_0 ;
  wire \rgb_o[20]_i_224_n_0 ;
  wire \rgb_o[20]_i_225_n_0 ;
  wire \rgb_o[20]_i_226_n_0 ;
  wire \rgb_o[20]_i_227_n_0 ;
  wire \rgb_o[20]_i_228_n_0 ;
  wire \rgb_o[20]_i_229_n_0 ;
  wire [0:0]\rgb_o[20]_i_23 ;
  wire \rgb_o[20]_i_230_n_0 ;
  wire \rgb_o[20]_i_231_n_0 ;
  wire \rgb_o[20]_i_233_n_0 ;
  wire \rgb_o[20]_i_234_n_0 ;
  wire \rgb_o[20]_i_235_n_0 ;
  wire \rgb_o[20]_i_236_n_0 ;
  wire \rgb_o[20]_i_237_n_0 ;
  wire \rgb_o[20]_i_238_n_0 ;
  wire \rgb_o[20]_i_239_n_0 ;
  wire \rgb_o[20]_i_240_n_0 ;
  wire \rgb_o[20]_i_241_n_0 ;
  wire \rgb_o[20]_i_242_n_0 ;
  wire \rgb_o[20]_i_243_n_0 ;
  wire \rgb_o[20]_i_244_n_0 ;
  wire \rgb_o[20]_i_245_n_0 ;
  wire \rgb_o[20]_i_246_n_0 ;
  wire \rgb_o[20]_i_247_n_0 ;
  wire \rgb_o[20]_i_248_n_0 ;
  wire \rgb_o[20]_i_249_n_0 ;
  wire \rgb_o[20]_i_24_n_0 ;
  wire \rgb_o[20]_i_250_n_0 ;
  wire \rgb_o[20]_i_251_n_0 ;
  wire \rgb_o[20]_i_26_n_0 ;
  wire \rgb_o[20]_i_271_n_0 ;
  wire \rgb_o[20]_i_272_n_0 ;
  wire \rgb_o[20]_i_273_n_0 ;
  wire \rgb_o[20]_i_274_n_0 ;
  wire \rgb_o[20]_i_275_n_0 ;
  wire \rgb_o[20]_i_276_n_0 ;
  wire \rgb_o[20]_i_277_n_0 ;
  wire \rgb_o[20]_i_278_n_0 ;
  wire \rgb_o[20]_i_27_n_0 ;
  wire \rgb_o[20]_i_283_n_0 ;
  wire \rgb_o[20]_i_284_n_0 ;
  wire \rgb_o[20]_i_285_n_0 ;
  wire \rgb_o[20]_i_286_n_0 ;
  wire \rgb_o[20]_i_287_n_0 ;
  wire \rgb_o[20]_i_288_n_0 ;
  wire \rgb_o[20]_i_289_n_0 ;
  wire \rgb_o[20]_i_28_n_0 ;
  wire \rgb_o[20]_i_290_n_0 ;
  wire \rgb_o[20]_i_294_n_0 ;
  wire \rgb_o[20]_i_296_n_0 ;
  wire \rgb_o[20]_i_297_n_0 ;
  wire \rgb_o[20]_i_298_n_0 ;
  wire \rgb_o[20]_i_299_n_0 ;
  wire \rgb_o[20]_i_29_n_0 ;
  wire \rgb_o[20]_i_300_n_0 ;
  wire \rgb_o[20]_i_301_n_0 ;
  wire \rgb_o[20]_i_302_n_0 ;
  wire \rgb_o[20]_i_303_n_0 ;
  wire \rgb_o[20]_i_318_n_0 ;
  wire \rgb_o[20]_i_319_n_0 ;
  wire \rgb_o[20]_i_320_n_0 ;
  wire \rgb_o[20]_i_321_n_0 ;
  wire \rgb_o[20]_i_322_n_0 ;
  wire \rgb_o[20]_i_323_n_0 ;
  wire \rgb_o[20]_i_324_n_0 ;
  wire \rgb_o[20]_i_325_n_0 ;
  wire \rgb_o[20]_i_328_n_0 ;
  wire \rgb_o[20]_i_329_n_0 ;
  wire \rgb_o[20]_i_330_n_0 ;
  wire \rgb_o[20]_i_331_n_0 ;
  wire \rgb_o[20]_i_332_n_0 ;
  wire \rgb_o[20]_i_333_n_0 ;
  wire \rgb_o[20]_i_334_n_0 ;
  wire \rgb_o[20]_i_335_n_0 ;
  wire \rgb_o[20]_i_336_n_0 ;
  wire \rgb_o[20]_i_337_n_0 ;
  wire \rgb_o[20]_i_338_n_0 ;
  wire \rgb_o[20]_i_339_n_0 ;
  wire \rgb_o[20]_i_33_n_0 ;
  wire \rgb_o[20]_i_340_n_0 ;
  wire \rgb_o[20]_i_341_n_0 ;
  wire \rgb_o[20]_i_342_n_0 ;
  wire \rgb_o[20]_i_343_n_0 ;
  wire \rgb_o[20]_i_344_n_0 ;
  wire \rgb_o[20]_i_345_n_0 ;
  wire \rgb_o[20]_i_346_n_0 ;
  wire \rgb_o[20]_i_34_n_0 ;
  wire \rgb_o[20]_i_357_n_0 ;
  wire \rgb_o[20]_i_358_n_0 ;
  wire \rgb_o[20]_i_359_n_0 ;
  wire \rgb_o[20]_i_35_n_0 ;
  wire \rgb_o[20]_i_360_n_0 ;
  wire \rgb_o[20]_i_361_n_0 ;
  wire \rgb_o[20]_i_362_n_0 ;
  wire \rgb_o[20]_i_363_n_0 ;
  wire \rgb_o[20]_i_364_n_0 ;
  wire \rgb_o[20]_i_367_n_0 ;
  wire \rgb_o[20]_i_368_n_0 ;
  wire \rgb_o[20]_i_369_n_0 ;
  wire \rgb_o[20]_i_36_n_0 ;
  wire \rgb_o[20]_i_370_n_0 ;
  wire \rgb_o[20]_i_371_n_0 ;
  wire \rgb_o[20]_i_372_n_0 ;
  wire \rgb_o[20]_i_373_n_0 ;
  wire \rgb_o[20]_i_374_n_0 ;
  wire \rgb_o[20]_i_37_n_0 ;
  wire \rgb_o[20]_i_385_n_0 ;
  wire \rgb_o[20]_i_386_n_0 ;
  wire \rgb_o[20]_i_387_n_0 ;
  wire \rgb_o[20]_i_388_n_0 ;
  wire \rgb_o[20]_i_389_n_0 ;
  wire \rgb_o[20]_i_38_n_0 ;
  wire \rgb_o[20]_i_390_n_0 ;
  wire \rgb_o[20]_i_391_n_0 ;
  wire \rgb_o[20]_i_392_n_0 ;
  wire \rgb_o[20]_i_398_n_0 ;
  wire \rgb_o[20]_i_399_n_0 ;
  wire \rgb_o[20]_i_39_n_0 ;
  wire [0:0]\rgb_o[20]_i_3_0 ;
  wire [0:0]\rgb_o[20]_i_3_1 ;
  wire \rgb_o[20]_i_3_n_0 ;
  wire \rgb_o[20]_i_400_n_0 ;
  wire \rgb_o[20]_i_401_n_0 ;
  wire \rgb_o[20]_i_402_n_0 ;
  wire \rgb_o[20]_i_40_n_0 ;
  wire \rgb_o[20]_i_41_n_0 ;
  wire \rgb_o[20]_i_42_n_0 ;
  wire \rgb_o[20]_i_44_n_0 ;
  wire \rgb_o[20]_i_45_n_0 ;
  wire \rgb_o[20]_i_46_n_0 ;
  wire \rgb_o[20]_i_49_n_0 ;
  wire \rgb_o[20]_i_4_n_0 ;
  wire \rgb_o[20]_i_50_n_0 ;
  wire \rgb_o[20]_i_51_n_0 ;
  wire [0:0]\rgb_o[20]_i_59_0 ;
  wire [0:0]\rgb_o[20]_i_59_1 ;
  wire \rgb_o[20]_i_59_n_0 ;
  wire \rgb_o[20]_i_5_n_0 ;
  wire \rgb_o[20]_i_6_0 ;
  wire \rgb_o[20]_i_6_n_0 ;
  wire \rgb_o[20]_i_75_n_0 ;
  wire \rgb_o[20]_i_76_n_0 ;
  wire \rgb_o[20]_i_77_n_0 ;
  wire \rgb_o[20]_i_78_n_0 ;
  wire \rgb_o[20]_i_84_n_0 ;
  wire \rgb_o[20]_i_86_n_0 ;
  wire \rgb_o[20]_i_87_n_0 ;
  wire \rgb_o[20]_i_88_n_0 ;
  wire \rgb_o[20]_i_89_n_0 ;
  wire \rgb_o[20]_i_90_n_0 ;
  wire \rgb_o[20]_i_91_n_0 ;
  wire \rgb_o[20]_i_92_n_0 ;
  wire \rgb_o[20]_i_93_n_0 ;
  wire \rgb_o[20]_i_94_n_0 ;
  wire \rgb_o[20]_i_95_n_0 ;
  wire \rgb_o[20]_i_96_n_0 ;
  wire \rgb_o[20]_i_97_n_0 ;
  wire \rgb_o[20]_i_99_n_0 ;
  wire \rgb_o_reg[0] ;
  wire \rgb_o_reg[0]_0 ;
  wire \rgb_o_reg[0]_1 ;
  wire \rgb_o_reg[0]_2 ;
  wire \rgb_o_reg[0]_3 ;
  wire \rgb_o_reg[20]_i_103_n_0 ;
  wire \rgb_o_reg[20]_i_103_n_1 ;
  wire \rgb_o_reg[20]_i_103_n_2 ;
  wire \rgb_o_reg[20]_i_103_n_3 ;
  wire \rgb_o_reg[20]_i_134_n_0 ;
  wire \rgb_o_reg[20]_i_134_n_1 ;
  wire \rgb_o_reg[20]_i_134_n_2 ;
  wire \rgb_o_reg[20]_i_134_n_3 ;
  wire \rgb_o_reg[20]_i_134_n_7 ;
  wire [0:0]\rgb_o_reg[20]_i_13_0 ;
  wire [0:0]\rgb_o_reg[20]_i_13_1 ;
  wire \rgb_o_reg[20]_i_13_n_2 ;
  wire \rgb_o_reg[20]_i_13_n_3 ;
  wire \rgb_o_reg[20]_i_14_n_2 ;
  wire \rgb_o_reg[20]_i_14_n_3 ;
  wire \rgb_o_reg[20]_i_221_n_0 ;
  wire \rgb_o_reg[20]_i_221_n_1 ;
  wire \rgb_o_reg[20]_i_221_n_2 ;
  wire \rgb_o_reg[20]_i_221_n_3 ;
  wire \rgb_o_reg[20]_i_232_n_0 ;
  wire \rgb_o_reg[20]_i_232_n_1 ;
  wire \rgb_o_reg[20]_i_232_n_2 ;
  wire \rgb_o_reg[20]_i_232_n_3 ;
  wire \rgb_o_reg[20]_i_25_n_0 ;
  wire \rgb_o_reg[20]_i_25_n_1 ;
  wire \rgb_o_reg[20]_i_25_n_2 ;
  wire \rgb_o_reg[20]_i_25_n_3 ;
  wire \rgb_o_reg[20]_i_270_n_0 ;
  wire \rgb_o_reg[20]_i_270_n_1 ;
  wire \rgb_o_reg[20]_i_270_n_2 ;
  wire \rgb_o_reg[20]_i_270_n_3 ;
  wire \rgb_o_reg[20]_i_279_n_2 ;
  wire \rgb_o_reg[20]_i_279_n_3 ;
  wire \rgb_o_reg[20]_i_280_n_0 ;
  wire \rgb_o_reg[20]_i_280_n_1 ;
  wire \rgb_o_reg[20]_i_280_n_2 ;
  wire \rgb_o_reg[20]_i_280_n_3 ;
  wire \rgb_o_reg[20]_i_281_n_0 ;
  wire \rgb_o_reg[20]_i_281_n_1 ;
  wire \rgb_o_reg[20]_i_281_n_2 ;
  wire \rgb_o_reg[20]_i_281_n_3 ;
  wire \rgb_o_reg[20]_i_282_n_0 ;
  wire \rgb_o_reg[20]_i_282_n_1 ;
  wire \rgb_o_reg[20]_i_282_n_2 ;
  wire \rgb_o_reg[20]_i_282_n_3 ;
  wire \rgb_o_reg[20]_i_291_n_2 ;
  wire \rgb_o_reg[20]_i_291_n_3 ;
  wire \rgb_o_reg[20]_i_292_n_0 ;
  wire \rgb_o_reg[20]_i_292_n_1 ;
  wire \rgb_o_reg[20]_i_292_n_2 ;
  wire \rgb_o_reg[20]_i_292_n_3 ;
  wire \rgb_o_reg[20]_i_293_n_0 ;
  wire \rgb_o_reg[20]_i_293_n_1 ;
  wire \rgb_o_reg[20]_i_293_n_2 ;
  wire \rgb_o_reg[20]_i_293_n_3 ;
  wire \rgb_o_reg[20]_i_295_n_0 ;
  wire \rgb_o_reg[20]_i_295_n_1 ;
  wire \rgb_o_reg[20]_i_295_n_2 ;
  wire \rgb_o_reg[20]_i_295_n_3 ;
  wire \rgb_o_reg[20]_i_304_n_0 ;
  wire \rgb_o_reg[20]_i_304_n_1 ;
  wire \rgb_o_reg[20]_i_304_n_2 ;
  wire \rgb_o_reg[20]_i_304_n_3 ;
  wire \rgb_o_reg[20]_i_305_n_0 ;
  wire \rgb_o_reg[20]_i_305_n_1 ;
  wire \rgb_o_reg[20]_i_305_n_2 ;
  wire \rgb_o_reg[20]_i_305_n_3 ;
  wire \rgb_o_reg[20]_i_317_n_0 ;
  wire \rgb_o_reg[20]_i_317_n_1 ;
  wire \rgb_o_reg[20]_i_317_n_2 ;
  wire \rgb_o_reg[20]_i_317_n_3 ;
  wire \rgb_o_reg[20]_i_326_n_0 ;
  wire \rgb_o_reg[20]_i_326_n_1 ;
  wire \rgb_o_reg[20]_i_326_n_2 ;
  wire \rgb_o_reg[20]_i_326_n_3 ;
  wire \rgb_o_reg[20]_i_327_n_0 ;
  wire \rgb_o_reg[20]_i_327_n_1 ;
  wire \rgb_o_reg[20]_i_327_n_2 ;
  wire \rgb_o_reg[20]_i_327_n_3 ;
  wire \rgb_o_reg[20]_i_347_n_0 ;
  wire \rgb_o_reg[20]_i_347_n_1 ;
  wire \rgb_o_reg[20]_i_347_n_2 ;
  wire \rgb_o_reg[20]_i_347_n_3 ;
  wire \rgb_o_reg[20]_i_348_n_0 ;
  wire \rgb_o_reg[20]_i_348_n_1 ;
  wire \rgb_o_reg[20]_i_348_n_2 ;
  wire \rgb_o_reg[20]_i_348_n_3 ;
  wire \rgb_o_reg[20]_i_365_n_0 ;
  wire \rgb_o_reg[20]_i_365_n_1 ;
  wire \rgb_o_reg[20]_i_365_n_2 ;
  wire \rgb_o_reg[20]_i_365_n_3 ;
  wire \rgb_o_reg[20]_i_366_n_0 ;
  wire \rgb_o_reg[20]_i_366_n_1 ;
  wire \rgb_o_reg[20]_i_366_n_2 ;
  wire \rgb_o_reg[20]_i_366_n_3 ;
  wire \rgb_o_reg[20]_i_375_n_0 ;
  wire \rgb_o_reg[20]_i_375_n_1 ;
  wire \rgb_o_reg[20]_i_375_n_2 ;
  wire \rgb_o_reg[20]_i_375_n_3 ;
  wire \rgb_o_reg[20]_i_384_n_0 ;
  wire \rgb_o_reg[20]_i_384_n_1 ;
  wire \rgb_o_reg[20]_i_384_n_2 ;
  wire \rgb_o_reg[20]_i_384_n_3 ;
  wire \rgb_o_reg[20]_i_43_n_0 ;
  wire \rgb_o_reg[20]_i_43_n_1 ;
  wire \rgb_o_reg[20]_i_43_n_2 ;
  wire \rgb_o_reg[20]_i_43_n_3 ;
  wire \rgb_o_reg[20]_i_52_n_0 ;
  wire \rgb_o_reg[20]_i_52_n_1 ;
  wire \rgb_o_reg[20]_i_52_n_2 ;
  wire \rgb_o_reg[20]_i_52_n_3 ;
  wire \rgb_o_reg[20]_i_54_n_0 ;
  wire \rgb_o_reg[20]_i_54_n_1 ;
  wire \rgb_o_reg[20]_i_54_n_2 ;
  wire \rgb_o_reg[20]_i_54_n_3 ;
  wire \rgb_o_reg[20]_i_56_n_0 ;
  wire \rgb_o_reg[20]_i_56_n_2 ;
  wire \rgb_o_reg[20]_i_56_n_3 ;
  wire \rgb_o_reg[20]_i_56_n_5 ;
  wire \rgb_o_reg[20]_i_56_n_6 ;
  wire \rgb_o_reg[20]_i_56_n_7 ;
  wire \rgb_o_reg[20]_i_70_n_0 ;
  wire \rgb_o_reg[20]_i_70_n_1 ;
  wire \rgb_o_reg[20]_i_70_n_2 ;
  wire \rgb_o_reg[20]_i_70_n_3 ;
  wire \rgb_o_reg[20]_i_71_n_3 ;
  wire \rgb_o_reg[20]_i_8_n_0 ;
  wire \rgb_o_reg[20]_i_8_n_1 ;
  wire \rgb_o_reg[20]_i_8_n_2 ;
  wire \rgb_o_reg[20]_i_8_n_3 ;
  wire \rgb_o_reg[20]_i_98_n_0 ;
  wire \rgb_o_reg[20]_i_98_n_1 ;
  wire \rgb_o_reg[20]_i_98_n_2 ;
  wire \rgb_o_reg[20]_i_98_n_3 ;
  wire \rgb_o_reg[8] ;
  wire \rgb_reg[10] ;
  wire \rgb_reg[11] ;
  wire \rgb_reg[12] ;
  wire \rgb_reg[13] ;
  wire \rgb_reg[8] ;
  wire \rgb_reg[9] ;
  wire rst_n;
  wire rst_n_0;
  wire src_ack_i_1_n_0;
  wire src_ack_i_2_n_0;
  wire src_reset_event_i_1_n_0;
  (* async_reg = "true" *) wire [1:0]src_reset_pipe;
  wire \src_reset_pipe[1]_i_1_n_0 ;
  wire src_timeout_i_10_n_0;
  wire src_timeout_i_12_n_0;
  wire src_timeout_i_13_n_0;
  wire src_timeout_i_14_n_0;
  wire src_timeout_i_15_n_0;
  wire src_timeout_i_17_n_0;
  wire src_timeout_i_18_n_0;
  wire src_timeout_i_19_n_0;
  wire src_timeout_i_1_n_0;
  wire src_timeout_i_20_n_0;
  wire src_timeout_i_21_n_0;
  wire src_timeout_i_22_n_0;
  wire src_timeout_i_23_n_0;
  wire src_timeout_i_24_n_0;
  wire src_timeout_i_25_n_0;
  wire src_timeout_i_26_n_0;
  wire src_timeout_i_27_n_0;
  wire src_timeout_i_5_n_0;
  wire src_timeout_i_6_n_0;
  wire src_timeout_i_7_n_0;
  wire src_timeout_i_8_n_0;
  wire src_timeout_i_9_n_0;
  wire src_timeout_reg_i_11_n_0;
  wire src_timeout_reg_i_11_n_1;
  wire src_timeout_reg_i_11_n_2;
  wire src_timeout_reg_i_11_n_3;
  wire src_timeout_reg_i_16_n_0;
  wire src_timeout_reg_i_16_n_1;
  wire src_timeout_reg_i_16_n_2;
  wire src_timeout_reg_i_16_n_3;
  wire src_timeout_reg_i_3_n_1;
  wire src_timeout_reg_i_3_n_2;
  wire src_timeout_reg_i_3_n_3;
  wire src_timeout_reg_i_4_n_0;
  wire src_timeout_reg_i_4_n_1;
  wire src_timeout_reg_i_4_n_2;
  wire src_timeout_reg_i_4_n_3;
  wire state0;
  wire state029_out;
  wire state1;
  wire state136_out;
  wire [2:0]state__0;
  wire [31:0]timeout_age;
  wire \timeout_age[31]_i_1_n_0 ;
  wire \timeout_age[31]_i_3_n_0 ;
  wire \timeout_age_reg[12]_i_2_n_0 ;
  wire \timeout_age_reg[12]_i_2_n_1 ;
  wire \timeout_age_reg[12]_i_2_n_2 ;
  wire \timeout_age_reg[12]_i_2_n_3 ;
  wire \timeout_age_reg[16]_i_2_n_0 ;
  wire \timeout_age_reg[16]_i_2_n_1 ;
  wire \timeout_age_reg[16]_i_2_n_2 ;
  wire \timeout_age_reg[16]_i_2_n_3 ;
  wire \timeout_age_reg[20]_i_2_n_0 ;
  wire \timeout_age_reg[20]_i_2_n_1 ;
  wire \timeout_age_reg[20]_i_2_n_2 ;
  wire \timeout_age_reg[20]_i_2_n_3 ;
  wire \timeout_age_reg[24]_i_2_n_0 ;
  wire \timeout_age_reg[24]_i_2_n_1 ;
  wire \timeout_age_reg[24]_i_2_n_2 ;
  wire \timeout_age_reg[24]_i_2_n_3 ;
  wire \timeout_age_reg[28]_i_2_n_0 ;
  wire \timeout_age_reg[28]_i_2_n_1 ;
  wire \timeout_age_reg[28]_i_2_n_2 ;
  wire \timeout_age_reg[28]_i_2_n_3 ;
  wire \timeout_age_reg[31]_i_5_n_2 ;
  wire \timeout_age_reg[31]_i_5_n_3 ;
  wire \timeout_age_reg[4]_i_2_n_0 ;
  wire \timeout_age_reg[4]_i_2_n_1 ;
  wire \timeout_age_reg[4]_i_2_n_2 ;
  wire \timeout_age_reg[4]_i_2_n_3 ;
  wire \timeout_age_reg[8]_i_2_n_0 ;
  wire \timeout_age_reg[8]_i_2_n_1 ;
  wire \timeout_age_reg[8]_i_2_n_2 ;
  wire \timeout_age_reg[8]_i_2_n_3 ;
  wire [3:0]\NLW_age_frames_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_age_frames_reg[31]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_age_frames_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_age_frames_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_age_frames_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_age_frames_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_103_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_13_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_221_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_232_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_270_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_279_CO_UNCONNECTED ;
  wire [3:3]\NLW_rgb_o_reg[20]_i_279_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_282_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_291_CO_UNCONNECTED ;
  wire [3:3]\NLW_rgb_o_reg[20]_i_291_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_295_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_o_reg[20]_i_31_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_317_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_43_O_UNCONNECTED ;
  wire [2:2]\NLW_rgb_o_reg[20]_i_56_CO_UNCONNECTED ;
  wire [3:3]\NLW_rgb_o_reg[20]_i_56_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_o_reg[20]_i_7_O_UNCONNECTED ;
  wire [3:1]\NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_71_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_98_O_UNCONNECTED ;
  wire [3:0]NLW_src_timeout_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_src_timeout_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_src_timeout_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_src_timeout_reg_i_4_O_UNCONNECTED;
  wire [3:2]\NLW_timeout_age_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_timeout_age_reg[31]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFF001F0000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(box_invalidate),
        .I1(box_recover),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1011FFFF11000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state136_out),
        .I1(state__0[2]),
        .I2(state1),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00200000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(state1),
        .I2(state__0[1]),
        .I3(state136_out),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state136_out),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFF900F900F900)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(ack_s[1]),
        .I1(req),
        .I2(state0),
        .I3(state__0[0]),
        .I4(box_send),
        .I5(ready_s[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00400F40)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(ack_s[1]),
        .I1(ready_s[1]),
        .I2(state__0[0]),
        .I3(clear_ack_s[1]),
        .I4(box_invalidate),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "WAIT_HIGH:000,WAIT_LOW:001,WAIT_ACK:011,FAILED:100,IDLE:010" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    ack_i_1
       (.I0(req_d[1]),
        .I1(clear_ack),
        .I2(pending_req_reg_n_0),
        .I3(ack19_out),
        .I4(ack_reg_n_0),
        .O(ack_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000008000FF0080)) 
    ack_i_2
       (.I0(dst_ready_reg_n_0),
        .I1(frame_start),
        .I2(pending),
        .I3(clear_d[1]),
        .I4(clear_ack),
        .I5(req_d[1]),
        .O(ack19_out));
  FDCE ack_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(ack_i_1_n_0),
        .Q(ack_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \ack_s_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(ack_reg_n_0),
        .Q(ack_s[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \ack_s_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(ack_s[0]),
        .Q(ack_s[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \age_frames[0]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames[0]),
        .O(\age_frames[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[10]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[10]),
        .O(\age_frames[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[11]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[11]),
        .O(\age_frames[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[12]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[12]),
        .O(\age_frames[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[13]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[13]),
        .O(\age_frames[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[14]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[14]),
        .O(\age_frames[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[15]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[15]),
        .O(\age_frames[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[16]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[16]),
        .O(\age_frames[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[17]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[17]),
        .O(\age_frames[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[18]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[18]),
        .O(\age_frames[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[19]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[19]),
        .O(\age_frames[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[1]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[1]),
        .O(\age_frames[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[20]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[20]),
        .O(\age_frames[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[21]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[21]),
        .O(\age_frames[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[22]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[22]),
        .O(\age_frames[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[23]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[23]),
        .O(\age_frames[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[24]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[24]),
        .O(\age_frames[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[25]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[25]),
        .O(\age_frames[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[26]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[26]),
        .O(\age_frames[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[27]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[27]),
        .O(\age_frames[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[28]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[28]),
        .O(\age_frames[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[29]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[29]),
        .O(\age_frames[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \age_frames[2]_i_1 
       (.I0(age_frames0[2]),
        .I1(dst_box_valid0),
        .I2(pending),
        .I3(clear_d[1]),
        .O(\age_frames[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[30]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[30]),
        .O(\age_frames[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \age_frames[31]_i_1 
       (.I0(mailbox_box_valid),
        .I1(clear_ack),
        .I2(dst_ready_reg_n_0),
        .I3(frame_start),
        .I4(\dst_payload[159]_i_1_n_0 ),
        .O(\age_frames[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_10 
       (.I0(age_frames[30]),
        .I1(age_frames[31]),
        .O(\age_frames[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_11 
       (.I0(age_frames[28]),
        .I1(age_frames[29]),
        .O(\age_frames[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_12 
       (.I0(age_frames[26]),
        .I1(age_frames[27]),
        .O(\age_frames[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_13 
       (.I0(age_frames[24]),
        .I1(age_frames[25]),
        .O(\age_frames[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_15 
       (.I0(age_frames[22]),
        .I1(age_frames[23]),
        .O(\age_frames[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_16 
       (.I0(age_frames[20]),
        .I1(age_frames[21]),
        .O(\age_frames[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_17 
       (.I0(age_frames[18]),
        .I1(age_frames[19]),
        .O(\age_frames[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_18 
       (.I0(age_frames[16]),
        .I1(age_frames[17]),
        .O(\age_frames[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_19 
       (.I0(age_frames[22]),
        .I1(age_frames[23]),
        .O(\age_frames[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[31]_i_2 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[31]),
        .O(\age_frames[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_20 
       (.I0(age_frames[20]),
        .I1(age_frames[21]),
        .O(\age_frames[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_21 
       (.I0(age_frames[18]),
        .I1(age_frames[19]),
        .O(\age_frames[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_22 
       (.I0(age_frames[16]),
        .I1(age_frames[17]),
        .O(\age_frames[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_24 
       (.I0(age_frames[14]),
        .I1(age_frames[15]),
        .O(\age_frames[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_25 
       (.I0(age_frames[12]),
        .I1(age_frames[13]),
        .O(\age_frames[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_26 
       (.I0(age_frames[10]),
        .I1(age_frames[11]),
        .O(\age_frames[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_27 
       (.I0(age_frames[8]),
        .I1(age_frames[9]),
        .O(\age_frames[31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_28 
       (.I0(age_frames[14]),
        .I1(age_frames[15]),
        .O(\age_frames[31]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_29 
       (.I0(age_frames[12]),
        .I1(age_frames[13]),
        .O(\age_frames[31]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_30 
       (.I0(age_frames[10]),
        .I1(age_frames[11]),
        .O(\age_frames[31]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_31 
       (.I0(age_frames[8]),
        .I1(age_frames[9]),
        .O(\age_frames[31]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_32 
       (.I0(age_frames[6]),
        .I1(age_frames[7]),
        .O(\age_frames[31]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \age_frames[31]_i_33 
       (.I0(age_frames[2]),
        .I1(age_frames[3]),
        .O(\age_frames[31]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \age_frames[31]_i_34 
       (.I0(age_frames[6]),
        .I1(age_frames[7]),
        .O(\age_frames[31]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \age_frames[31]_i_35 
       (.I0(age_frames[4]),
        .I1(age_frames[5]),
        .O(\age_frames[31]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \age_frames[31]_i_36 
       (.I0(age_frames[3]),
        .I1(age_frames[2]),
        .O(\age_frames[31]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \age_frames[31]_i_37 
       (.I0(age_frames[0]),
        .I1(age_frames[1]),
        .O(\age_frames[31]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \age_frames[31]_i_6 
       (.I0(age_frames[30]),
        .I1(age_frames[31]),
        .O(\age_frames[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_7 
       (.I0(age_frames[28]),
        .I1(age_frames[29]),
        .O(\age_frames[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_8 
       (.I0(age_frames[26]),
        .I1(age_frames[27]),
        .O(\age_frames[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \age_frames[31]_i_9 
       (.I0(age_frames[24]),
        .I1(age_frames[25]),
        .O(\age_frames[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \age_frames[3]_i_1 
       (.I0(age_frames0[3]),
        .I1(dst_box_valid0),
        .I2(pending),
        .I3(clear_d[1]),
        .O(\age_frames[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \age_frames[4]_i_1 
       (.I0(age_frames0[4]),
        .I1(dst_box_valid0),
        .I2(pending),
        .I3(clear_d[1]),
        .O(\age_frames[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \age_frames[5]_i_1 
       (.I0(age_frames0[5]),
        .I1(dst_box_valid0),
        .I2(pending),
        .I3(clear_d[1]),
        .O(\age_frames[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[6]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[6]),
        .O(\age_frames[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[7]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[7]),
        .O(\age_frames[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[8]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[8]),
        .O(\age_frames[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \age_frames[9]_i_1 
       (.I0(dst_box_valid0),
        .I1(pending),
        .I2(clear_d[1]),
        .I3(age_frames0[9]),
        .O(\age_frames[9]_i_1_n_0 ));
  FDCE \age_frames_reg[0] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[0]_i_1_n_0 ),
        .Q(age_frames[0]));
  FDCE \age_frames_reg[10] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[10]_i_1_n_0 ),
        .Q(age_frames[10]));
  FDCE \age_frames_reg[11] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[11]_i_1_n_0 ),
        .Q(age_frames[11]));
  FDCE \age_frames_reg[12] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[12]_i_1_n_0 ),
        .Q(age_frames[12]));
  CARRY4 \age_frames_reg[12]_i_2 
       (.CI(\age_frames_reg[8]_i_2_n_0 ),
        .CO({\age_frames_reg[12]_i_2_n_0 ,\age_frames_reg[12]_i_2_n_1 ,\age_frames_reg[12]_i_2_n_2 ,\age_frames_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[12:9]),
        .S(age_frames[12:9]));
  FDCE \age_frames_reg[13] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[13]_i_1_n_0 ),
        .Q(age_frames[13]));
  FDCE \age_frames_reg[14] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[14]_i_1_n_0 ),
        .Q(age_frames[14]));
  FDCE \age_frames_reg[15] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[15]_i_1_n_0 ),
        .Q(age_frames[15]));
  FDCE \age_frames_reg[16] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[16]_i_1_n_0 ),
        .Q(age_frames[16]));
  CARRY4 \age_frames_reg[16]_i_2 
       (.CI(\age_frames_reg[12]_i_2_n_0 ),
        .CO({\age_frames_reg[16]_i_2_n_0 ,\age_frames_reg[16]_i_2_n_1 ,\age_frames_reg[16]_i_2_n_2 ,\age_frames_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[16:13]),
        .S(age_frames[16:13]));
  FDCE \age_frames_reg[17] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[17]_i_1_n_0 ),
        .Q(age_frames[17]));
  FDCE \age_frames_reg[18] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[18]_i_1_n_0 ),
        .Q(age_frames[18]));
  FDCE \age_frames_reg[19] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[19]_i_1_n_0 ),
        .Q(age_frames[19]));
  FDCE \age_frames_reg[1] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[1]_i_1_n_0 ),
        .Q(age_frames[1]));
  FDCE \age_frames_reg[20] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[20]_i_1_n_0 ),
        .Q(age_frames[20]));
  CARRY4 \age_frames_reg[20]_i_2 
       (.CI(\age_frames_reg[16]_i_2_n_0 ),
        .CO({\age_frames_reg[20]_i_2_n_0 ,\age_frames_reg[20]_i_2_n_1 ,\age_frames_reg[20]_i_2_n_2 ,\age_frames_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[20:17]),
        .S(age_frames[20:17]));
  FDCE \age_frames_reg[21] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[21]_i_1_n_0 ),
        .Q(age_frames[21]));
  FDCE \age_frames_reg[22] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[22]_i_1_n_0 ),
        .Q(age_frames[22]));
  FDCE \age_frames_reg[23] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[23]_i_1_n_0 ),
        .Q(age_frames[23]));
  FDCE \age_frames_reg[24] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[24]_i_1_n_0 ),
        .Q(age_frames[24]));
  CARRY4 \age_frames_reg[24]_i_2 
       (.CI(\age_frames_reg[20]_i_2_n_0 ),
        .CO({\age_frames_reg[24]_i_2_n_0 ,\age_frames_reg[24]_i_2_n_1 ,\age_frames_reg[24]_i_2_n_2 ,\age_frames_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[24:21]),
        .S(age_frames[24:21]));
  FDCE \age_frames_reg[25] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[25]_i_1_n_0 ),
        .Q(age_frames[25]));
  FDCE \age_frames_reg[26] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[26]_i_1_n_0 ),
        .Q(age_frames[26]));
  FDCE \age_frames_reg[27] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[27]_i_1_n_0 ),
        .Q(age_frames[27]));
  FDCE \age_frames_reg[28] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[28]_i_1_n_0 ),
        .Q(age_frames[28]));
  CARRY4 \age_frames_reg[28]_i_2 
       (.CI(\age_frames_reg[24]_i_2_n_0 ),
        .CO({\age_frames_reg[28]_i_2_n_0 ,\age_frames_reg[28]_i_2_n_1 ,\age_frames_reg[28]_i_2_n_2 ,\age_frames_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[28:25]),
        .S(age_frames[28:25]));
  FDCE \age_frames_reg[29] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[29]_i_1_n_0 ),
        .Q(age_frames[29]));
  FDCE \age_frames_reg[2] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[2]_i_1_n_0 ),
        .Q(age_frames[2]));
  FDCE \age_frames_reg[30] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[30]_i_1_n_0 ),
        .Q(age_frames[30]));
  FDCE \age_frames_reg[31] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[31]_i_2_n_0 ),
        .Q(age_frames[31]));
  CARRY4 \age_frames_reg[31]_i_14 
       (.CI(\age_frames_reg[31]_i_23_n_0 ),
        .CO({\age_frames_reg[31]_i_14_n_0 ,\age_frames_reg[31]_i_14_n_1 ,\age_frames_reg[31]_i_14_n_2 ,\age_frames_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\age_frames[31]_i_24_n_0 ,\age_frames[31]_i_25_n_0 ,\age_frames[31]_i_26_n_0 ,\age_frames[31]_i_27_n_0 }),
        .O(\NLW_age_frames_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\age_frames[31]_i_28_n_0 ,\age_frames[31]_i_29_n_0 ,\age_frames[31]_i_30_n_0 ,\age_frames[31]_i_31_n_0 }));
  CARRY4 \age_frames_reg[31]_i_23 
       (.CI(1'b0),
        .CO({\age_frames_reg[31]_i_23_n_0 ,\age_frames_reg[31]_i_23_n_1 ,\age_frames_reg[31]_i_23_n_2 ,\age_frames_reg[31]_i_23_n_3 }),
        .CYINIT(1'b1),
        .DI({\age_frames[31]_i_32_n_0 ,1'b0,\age_frames[31]_i_33_n_0 ,1'b0}),
        .O(\NLW_age_frames_reg[31]_i_23_O_UNCONNECTED [3:0]),
        .S({\age_frames[31]_i_34_n_0 ,\age_frames[31]_i_35_n_0 ,\age_frames[31]_i_36_n_0 ,\age_frames[31]_i_37_n_0 }));
  CARRY4 \age_frames_reg[31]_i_3 
       (.CI(\age_frames_reg[31]_i_5_n_0 ),
        .CO({dst_box_valid0,\age_frames_reg[31]_i_3_n_1 ,\age_frames_reg[31]_i_3_n_2 ,\age_frames_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\age_frames[31]_i_6_n_0 ,\age_frames[31]_i_7_n_0 ,\age_frames[31]_i_8_n_0 ,\age_frames[31]_i_9_n_0 }),
        .O(\NLW_age_frames_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({\age_frames[31]_i_10_n_0 ,\age_frames[31]_i_11_n_0 ,\age_frames[31]_i_12_n_0 ,\age_frames[31]_i_13_n_0 }));
  CARRY4 \age_frames_reg[31]_i_4 
       (.CI(\age_frames_reg[28]_i_2_n_0 ),
        .CO({\NLW_age_frames_reg[31]_i_4_CO_UNCONNECTED [3:2],\age_frames_reg[31]_i_4_n_2 ,\age_frames_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_age_frames_reg[31]_i_4_O_UNCONNECTED [3],age_frames0[31:29]}),
        .S({1'b0,age_frames[31:29]}));
  CARRY4 \age_frames_reg[31]_i_5 
       (.CI(\age_frames_reg[31]_i_14_n_0 ),
        .CO({\age_frames_reg[31]_i_5_n_0 ,\age_frames_reg[31]_i_5_n_1 ,\age_frames_reg[31]_i_5_n_2 ,\age_frames_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\age_frames[31]_i_15_n_0 ,\age_frames[31]_i_16_n_0 ,\age_frames[31]_i_17_n_0 ,\age_frames[31]_i_18_n_0 }),
        .O(\NLW_age_frames_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\age_frames[31]_i_19_n_0 ,\age_frames[31]_i_20_n_0 ,\age_frames[31]_i_21_n_0 ,\age_frames[31]_i_22_n_0 }));
  FDCE \age_frames_reg[3] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[3]_i_1_n_0 ),
        .Q(age_frames[3]));
  FDCE \age_frames_reg[4] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[4]_i_1_n_0 ),
        .Q(age_frames[4]));
  CARRY4 \age_frames_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\age_frames_reg[4]_i_2_n_0 ,\age_frames_reg[4]_i_2_n_1 ,\age_frames_reg[4]_i_2_n_2 ,\age_frames_reg[4]_i_2_n_3 }),
        .CYINIT(age_frames[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[4:1]),
        .S(age_frames[4:1]));
  FDCE \age_frames_reg[5] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[5]_i_1_n_0 ),
        .Q(age_frames[5]));
  FDCE \age_frames_reg[6] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[6]_i_1_n_0 ),
        .Q(age_frames[6]));
  FDCE \age_frames_reg[7] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[7]_i_1_n_0 ),
        .Q(age_frames[7]));
  FDCE \age_frames_reg[8] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[8]_i_1_n_0 ),
        .Q(age_frames[8]));
  CARRY4 \age_frames_reg[8]_i_2 
       (.CI(\age_frames_reg[4]_i_2_n_0 ),
        .CO({\age_frames_reg[8]_i_2_n_0 ,\age_frames_reg[8]_i_2_n_1 ,\age_frames_reg[8]_i_2_n_2 ,\age_frames_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(age_frames0[8:5]),
        .S(age_frames[8:5]));
  FDCE \age_frames_reg[9] 
       (.C(pixel_clk),
        .CE(\age_frames[31]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\age_frames[9]_i_1_n_0 ),
        .Q(age_frames[9]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    box_busy_INST_0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(ready_s[1]),
        .I4(box_invalidate),
        .O(box_busy));
  LUT4 #(
    .INIT(16'h0400)) 
    box_channel_ready_INST_0
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(box_invalidate),
        .I3(ready_s[1]),
        .O(box_channel_ready));
  LUT3 #(
    .INIT(8'hF8)) 
    clear_ack_i_1
       (.I0(req_d[1]),
        .I1(clear_ack),
        .I2(clear_d[1]),
        .O(clear_ack_i_1_n_0));
  FDCE clear_ack_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(clear_ack_i_1_n_0),
        .Q(clear_ack));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \clear_ack_s_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(clear_ack),
        .Q(clear_ack_s[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \clear_ack_s_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(clear_ack_s[0]),
        .Q(clear_ack_s[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \clear_d_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(clear_req),
        .PRE(\req_d[1]_i_1_n_0 ),
        .Q(clear_d[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \clear_d_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(clear_d[0]),
        .PRE(\req_d[1]_i_1_n_0 ),
        .Q(clear_d[1]));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    clear_req_i_1
       (.I0(state136_out),
        .I1(state__0[1]),
        .I2(box_invalidate),
        .I3(clear_ack_s[1]),
        .I4(clear_req_i_2_n_0),
        .I5(clear_req),
        .O(clear_req_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    clear_req_i_2
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(clear_req_i_2_n_0));
  FDPE clear_req_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .D(clear_req_i_1_n_0),
        .PRE(src_ack_i_2_n_0),
        .Q(clear_req));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    dst_box_valid_i_1
       (.I0(dst_box_valid_i_2_n_0),
        .I1(dst_box_valid_i_3_n_0),
        .I2(dst_box_valid_i_4_n_0),
        .I3(dst_box_valid_i_5_n_0),
        .I4(dst_box_valid_i_6_n_0),
        .I5(mailbox_box_valid),
        .O(dst_box_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dst_box_valid_i_2
       (.I0(\pending_payload_reg_n_0_[24] ),
        .I1(\pending_payload_reg_n_0_[25] ),
        .I2(\pending_payload_reg_n_0_[22] ),
        .I3(\pending_payload_reg_n_0_[23] ),
        .I4(\pending_payload_reg_n_0_[27] ),
        .I5(\pending_payload_reg_n_0_[26] ),
        .O(dst_box_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    dst_box_valid_i_3
       (.I0(\pending_payload_reg_n_0_[30] ),
        .I1(\pending_payload_reg_n_0_[31] ),
        .I2(\pending_payload_reg_n_0_[28] ),
        .I3(\pending_payload_reg_n_0_[29] ),
        .I4(clear_d[1]),
        .I5(pending),
        .O(dst_box_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dst_box_valid_i_4
       (.I0(\pending_payload_reg_n_0_[18] ),
        .I1(\pending_payload_reg_n_0_[19] ),
        .I2(\pending_payload_reg_n_0_[16] ),
        .I3(\pending_payload_reg_n_0_[17] ),
        .I4(\pending_payload_reg_n_0_[21] ),
        .I5(\pending_payload_reg_n_0_[20] ),
        .O(dst_box_valid_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    dst_box_valid_i_5
       (.I0(dst_box_valid_i_7_n_0),
        .I1(\pending_payload_reg_n_0_[1] ),
        .I2(\pending_payload_reg_n_0_[0] ),
        .I3(\pending_payload_reg_n_0_[3] ),
        .I4(\pending_payload_reg_n_0_[2] ),
        .I5(dst_box_valid_i_8_n_0),
        .O(dst_box_valid_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    dst_box_valid_i_6
       (.I0(clear_ack),
        .I1(dst_ready_reg_n_0),
        .I2(frame_start),
        .I3(dst_box_valid0),
        .I4(mailbox_box_valid),
        .I5(\dst_payload[159]_i_1_n_0 ),
        .O(dst_box_valid_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dst_box_valid_i_7
       (.I0(\pending_payload_reg_n_0_[6] ),
        .I1(\pending_payload_reg_n_0_[7] ),
        .I2(\pending_payload_reg_n_0_[4] ),
        .I3(\pending_payload_reg_n_0_[5] ),
        .I4(\pending_payload_reg_n_0_[9] ),
        .I5(\pending_payload_reg_n_0_[8] ),
        .O(dst_box_valid_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dst_box_valid_i_8
       (.I0(\pending_payload_reg_n_0_[12] ),
        .I1(\pending_payload_reg_n_0_[13] ),
        .I2(\pending_payload_reg_n_0_[10] ),
        .I3(\pending_payload_reg_n_0_[11] ),
        .I4(\pending_payload_reg_n_0_[15] ),
        .I5(\pending_payload_reg_n_0_[14] ),
        .O(dst_box_valid_i_8_n_0));
  FDCE dst_box_valid_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(dst_box_valid_i_1_n_0),
        .Q(mailbox_box_valid));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[0]_i_1 
       (.I0(\pending_payload_reg_n_0_[0] ),
        .I1(clear_d[1]),
        .O(\dst_payload[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[100]_i_1 
       (.I0(\pending_payload_reg_n_0_[100] ),
        .I1(clear_d[1]),
        .O(\dst_payload[100]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[101]_i_1 
       (.I0(\pending_payload_reg_n_0_[101] ),
        .I1(clear_d[1]),
        .O(\dst_payload[101]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[102]_i_1 
       (.I0(\pending_payload_reg_n_0_[102] ),
        .I1(clear_d[1]),
        .O(\dst_payload[102]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[103]_i_1 
       (.I0(\pending_payload_reg_n_0_[103] ),
        .I1(clear_d[1]),
        .O(\dst_payload[103]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[104]_i_1 
       (.I0(\pending_payload_reg_n_0_[104] ),
        .I1(clear_d[1]),
        .O(\dst_payload[104]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[105]_i_1 
       (.I0(\pending_payload_reg_n_0_[105] ),
        .I1(clear_d[1]),
        .O(\dst_payload[105]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[106]_i_1 
       (.I0(\pending_payload_reg_n_0_[106] ),
        .I1(clear_d[1]),
        .O(\dst_payload[106]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[107]_i_1 
       (.I0(\pending_payload_reg_n_0_[107] ),
        .I1(clear_d[1]),
        .O(\dst_payload[107]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[108]_i_1 
       (.I0(\pending_payload_reg_n_0_[108] ),
        .I1(clear_d[1]),
        .O(\dst_payload[108]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[109]_i_1 
       (.I0(\pending_payload_reg_n_0_[109] ),
        .I1(clear_d[1]),
        .O(\dst_payload[109]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[10]_i_1 
       (.I0(\pending_payload_reg_n_0_[10] ),
        .I1(clear_d[1]),
        .O(\dst_payload[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[110]_i_1 
       (.I0(\pending_payload_reg_n_0_[110] ),
        .I1(clear_d[1]),
        .O(\dst_payload[110]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[111]_i_1 
       (.I0(\pending_payload_reg_n_0_[111] ),
        .I1(clear_d[1]),
        .O(\dst_payload[111]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[112]_i_1 
       (.I0(\pending_payload_reg_n_0_[112] ),
        .I1(clear_d[1]),
        .O(\dst_payload[112]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[113]_i_1 
       (.I0(\pending_payload_reg_n_0_[113] ),
        .I1(clear_d[1]),
        .O(\dst_payload[113]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[114]_i_1 
       (.I0(\pending_payload_reg_n_0_[114] ),
        .I1(clear_d[1]),
        .O(\dst_payload[114]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[115]_i_1 
       (.I0(\pending_payload_reg_n_0_[115] ),
        .I1(clear_d[1]),
        .O(\dst_payload[115]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[116]_i_1 
       (.I0(\pending_payload_reg_n_0_[116] ),
        .I1(clear_d[1]),
        .O(\dst_payload[116]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[117]_i_1 
       (.I0(\pending_payload_reg_n_0_[117] ),
        .I1(clear_d[1]),
        .O(\dst_payload[117]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[118]_i_1 
       (.I0(\pending_payload_reg_n_0_[118] ),
        .I1(clear_d[1]),
        .O(\dst_payload[118]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[119]_i_1 
       (.I0(\pending_payload_reg_n_0_[119] ),
        .I1(clear_d[1]),
        .O(\dst_payload[119]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[11]_i_1 
       (.I0(\pending_payload_reg_n_0_[11] ),
        .I1(clear_d[1]),
        .O(\dst_payload[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[120]_i_1 
       (.I0(\pending_payload_reg_n_0_[120] ),
        .I1(clear_d[1]),
        .O(\dst_payload[120]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[121]_i_1 
       (.I0(\pending_payload_reg_n_0_[121] ),
        .I1(clear_d[1]),
        .O(\dst_payload[121]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[122]_i_1 
       (.I0(\pending_payload_reg_n_0_[122] ),
        .I1(clear_d[1]),
        .O(\dst_payload[122]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[123]_i_1 
       (.I0(\pending_payload_reg_n_0_[123] ),
        .I1(clear_d[1]),
        .O(\dst_payload[123]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[124]_i_1 
       (.I0(\pending_payload_reg_n_0_[124] ),
        .I1(clear_d[1]),
        .O(\dst_payload[124]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[125]_i_1 
       (.I0(\pending_payload_reg_n_0_[125] ),
        .I1(clear_d[1]),
        .O(\dst_payload[125]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[126]_i_1 
       (.I0(\pending_payload_reg_n_0_[126] ),
        .I1(clear_d[1]),
        .O(\dst_payload[126]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[127]_i_1 
       (.I0(\pending_payload_reg_n_0_[127] ),
        .I1(clear_d[1]),
        .O(\dst_payload[127]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[128]_i_1 
       (.I0(\pending_payload_reg_n_0_[128] ),
        .I1(clear_d[1]),
        .O(\dst_payload[128]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[129]_i_1 
       (.I0(\pending_payload_reg_n_0_[129] ),
        .I1(clear_d[1]),
        .O(\dst_payload[129]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[12]_i_1 
       (.I0(\pending_payload_reg_n_0_[12] ),
        .I1(clear_d[1]),
        .O(\dst_payload[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[130]_i_1 
       (.I0(\pending_payload_reg_n_0_[130] ),
        .I1(clear_d[1]),
        .O(\dst_payload[130]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[131]_i_1 
       (.I0(\pending_payload_reg_n_0_[131] ),
        .I1(clear_d[1]),
        .O(\dst_payload[131]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[132]_i_1 
       (.I0(\pending_payload_reg_n_0_[132] ),
        .I1(clear_d[1]),
        .O(\dst_payload[132]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[133]_i_1 
       (.I0(\pending_payload_reg_n_0_[133] ),
        .I1(clear_d[1]),
        .O(\dst_payload[133]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[134]_i_1 
       (.I0(\pending_payload_reg_n_0_[134] ),
        .I1(clear_d[1]),
        .O(\dst_payload[134]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[135]_i_1 
       (.I0(\pending_payload_reg_n_0_[135] ),
        .I1(clear_d[1]),
        .O(\dst_payload[135]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[136]_i_1 
       (.I0(\pending_payload_reg_n_0_[136] ),
        .I1(clear_d[1]),
        .O(\dst_payload[136]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[137]_i_1 
       (.I0(\pending_payload_reg_n_0_[137] ),
        .I1(clear_d[1]),
        .O(\dst_payload[137]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[138]_i_1 
       (.I0(\pending_payload_reg_n_0_[138] ),
        .I1(clear_d[1]),
        .O(\dst_payload[138]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[139]_i_1 
       (.I0(\pending_payload_reg_n_0_[139] ),
        .I1(clear_d[1]),
        .O(\dst_payload[139]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[13]_i_1 
       (.I0(\pending_payload_reg_n_0_[13] ),
        .I1(clear_d[1]),
        .O(\dst_payload[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[140]_i_1 
       (.I0(\pending_payload_reg_n_0_[140] ),
        .I1(clear_d[1]),
        .O(\dst_payload[140]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[141]_i_1 
       (.I0(\pending_payload_reg_n_0_[141] ),
        .I1(clear_d[1]),
        .O(\dst_payload[141]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[142]_i_1 
       (.I0(\pending_payload_reg_n_0_[142] ),
        .I1(clear_d[1]),
        .O(\dst_payload[142]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[143]_i_1 
       (.I0(\pending_payload_reg_n_0_[143] ),
        .I1(clear_d[1]),
        .O(\dst_payload[143]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[144]_i_1 
       (.I0(\pending_payload_reg_n_0_[144] ),
        .I1(clear_d[1]),
        .O(\dst_payload[144]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[145]_i_1 
       (.I0(\pending_payload_reg_n_0_[145] ),
        .I1(clear_d[1]),
        .O(\dst_payload[145]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[146]_i_1 
       (.I0(\pending_payload_reg_n_0_[146] ),
        .I1(clear_d[1]),
        .O(\dst_payload[146]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[147]_i_1 
       (.I0(\pending_payload_reg_n_0_[147] ),
        .I1(clear_d[1]),
        .O(\dst_payload[147]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[148]_i_1 
       (.I0(\pending_payload_reg_n_0_[148] ),
        .I1(clear_d[1]),
        .O(\dst_payload[148]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[149]_i_1 
       (.I0(\pending_payload_reg_n_0_[149] ),
        .I1(clear_d[1]),
        .O(\dst_payload[149]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[14]_i_1 
       (.I0(\pending_payload_reg_n_0_[14] ),
        .I1(clear_d[1]),
        .O(\dst_payload[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[150]_i_1 
       (.I0(\pending_payload_reg_n_0_[150] ),
        .I1(clear_d[1]),
        .O(\dst_payload[150]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[151]_i_1 
       (.I0(\pending_payload_reg_n_0_[151] ),
        .I1(clear_d[1]),
        .O(\dst_payload[151]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[152]_i_1 
       (.I0(\pending_payload_reg_n_0_[152] ),
        .I1(clear_d[1]),
        .O(\dst_payload[152]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[153]_i_1 
       (.I0(\pending_payload_reg_n_0_[153] ),
        .I1(clear_d[1]),
        .O(\dst_payload[153]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[154]_i_1 
       (.I0(\pending_payload_reg_n_0_[154] ),
        .I1(clear_d[1]),
        .O(\dst_payload[154]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[155]_i_1 
       (.I0(\pending_payload_reg_n_0_[155] ),
        .I1(clear_d[1]),
        .O(\dst_payload[155]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[156]_i_1 
       (.I0(\pending_payload_reg_n_0_[156] ),
        .I1(clear_d[1]),
        .O(\dst_payload[156]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[157]_i_1 
       (.I0(\pending_payload_reg_n_0_[157] ),
        .I1(clear_d[1]),
        .O(\dst_payload[157]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[158]_i_1 
       (.I0(\pending_payload_reg_n_0_[158] ),
        .I1(clear_d[1]),
        .O(\dst_payload[158]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \dst_payload[159]_i_1 
       (.I0(dst_ready_reg_n_0),
        .I1(pending),
        .I2(frame_start),
        .I3(clear_ack),
        .I4(clear_d[1]),
        .O(\dst_payload[159]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[159]_i_2 
       (.I0(\pending_payload_reg_n_0_[159] ),
        .I1(clear_d[1]),
        .O(\dst_payload[159]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dst_payload[159]_i_3 
       (.I0(dst_reset_pipe[1]),
        .O(\dst_payload[159]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[15]_i_1 
       (.I0(\pending_payload_reg_n_0_[15] ),
        .I1(clear_d[1]),
        .O(\dst_payload[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[16]_i_1 
       (.I0(\pending_payload_reg_n_0_[16] ),
        .I1(clear_d[1]),
        .O(\dst_payload[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[17]_i_1 
       (.I0(\pending_payload_reg_n_0_[17] ),
        .I1(clear_d[1]),
        .O(\dst_payload[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[18]_i_1 
       (.I0(\pending_payload_reg_n_0_[18] ),
        .I1(clear_d[1]),
        .O(\dst_payload[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[19]_i_1 
       (.I0(\pending_payload_reg_n_0_[19] ),
        .I1(clear_d[1]),
        .O(\dst_payload[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[1]_i_1 
       (.I0(\pending_payload_reg_n_0_[1] ),
        .I1(clear_d[1]),
        .O(\dst_payload[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[20]_i_1 
       (.I0(\pending_payload_reg_n_0_[20] ),
        .I1(clear_d[1]),
        .O(\dst_payload[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[21]_i_1 
       (.I0(\pending_payload_reg_n_0_[21] ),
        .I1(clear_d[1]),
        .O(\dst_payload[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[22]_i_1 
       (.I0(\pending_payload_reg_n_0_[22] ),
        .I1(clear_d[1]),
        .O(\dst_payload[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[23]_i_1 
       (.I0(\pending_payload_reg_n_0_[23] ),
        .I1(clear_d[1]),
        .O(\dst_payload[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[24]_i_1 
       (.I0(\pending_payload_reg_n_0_[24] ),
        .I1(clear_d[1]),
        .O(\dst_payload[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[25]_i_1 
       (.I0(\pending_payload_reg_n_0_[25] ),
        .I1(clear_d[1]),
        .O(\dst_payload[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[26]_i_1 
       (.I0(\pending_payload_reg_n_0_[26] ),
        .I1(clear_d[1]),
        .O(\dst_payload[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[27]_i_1 
       (.I0(\pending_payload_reg_n_0_[27] ),
        .I1(clear_d[1]),
        .O(\dst_payload[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[28]_i_1 
       (.I0(\pending_payload_reg_n_0_[28] ),
        .I1(clear_d[1]),
        .O(\dst_payload[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[29]_i_1 
       (.I0(\pending_payload_reg_n_0_[29] ),
        .I1(clear_d[1]),
        .O(\dst_payload[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[2]_i_1 
       (.I0(\pending_payload_reg_n_0_[2] ),
        .I1(clear_d[1]),
        .O(\dst_payload[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[30]_i_1 
       (.I0(\pending_payload_reg_n_0_[30] ),
        .I1(clear_d[1]),
        .O(\dst_payload[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[31]_i_1 
       (.I0(\pending_payload_reg_n_0_[31] ),
        .I1(clear_d[1]),
        .O(\dst_payload[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[32]_i_1 
       (.I0(\pending_payload_reg_n_0_[32] ),
        .I1(clear_d[1]),
        .O(\dst_payload[32]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[33]_i_1 
       (.I0(\pending_payload_reg_n_0_[33] ),
        .I1(clear_d[1]),
        .O(\dst_payload[33]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[34]_i_1 
       (.I0(\pending_payload_reg_n_0_[34] ),
        .I1(clear_d[1]),
        .O(\dst_payload[34]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[35]_i_1 
       (.I0(\pending_payload_reg_n_0_[35] ),
        .I1(clear_d[1]),
        .O(\dst_payload[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[36]_i_1 
       (.I0(\pending_payload_reg_n_0_[36] ),
        .I1(clear_d[1]),
        .O(\dst_payload[36]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[37]_i_1 
       (.I0(\pending_payload_reg_n_0_[37] ),
        .I1(clear_d[1]),
        .O(\dst_payload[37]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[38]_i_1 
       (.I0(\pending_payload_reg_n_0_[38] ),
        .I1(clear_d[1]),
        .O(\dst_payload[38]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[39]_i_1 
       (.I0(\pending_payload_reg_n_0_[39] ),
        .I1(clear_d[1]),
        .O(\dst_payload[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[3]_i_1 
       (.I0(\pending_payload_reg_n_0_[3] ),
        .I1(clear_d[1]),
        .O(\dst_payload[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[40]_i_1 
       (.I0(\pending_payload_reg_n_0_[40] ),
        .I1(clear_d[1]),
        .O(\dst_payload[40]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[41]_i_1 
       (.I0(\pending_payload_reg_n_0_[41] ),
        .I1(clear_d[1]),
        .O(\dst_payload[41]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[42]_i_1 
       (.I0(\pending_payload_reg_n_0_[42] ),
        .I1(clear_d[1]),
        .O(\dst_payload[42]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[43]_i_1 
       (.I0(\pending_payload_reg_n_0_[43] ),
        .I1(clear_d[1]),
        .O(\dst_payload[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[44]_i_1 
       (.I0(\pending_payload_reg_n_0_[44] ),
        .I1(clear_d[1]),
        .O(\dst_payload[44]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[45]_i_1 
       (.I0(\pending_payload_reg_n_0_[45] ),
        .I1(clear_d[1]),
        .O(\dst_payload[45]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[46]_i_1 
       (.I0(\pending_payload_reg_n_0_[46] ),
        .I1(clear_d[1]),
        .O(\dst_payload[46]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[47]_i_1 
       (.I0(\pending_payload_reg_n_0_[47] ),
        .I1(clear_d[1]),
        .O(\dst_payload[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[48]_i_1 
       (.I0(\pending_payload_reg_n_0_[48] ),
        .I1(clear_d[1]),
        .O(\dst_payload[48]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[49]_i_1 
       (.I0(\pending_payload_reg_n_0_[49] ),
        .I1(clear_d[1]),
        .O(\dst_payload[49]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[4]_i_1 
       (.I0(\pending_payload_reg_n_0_[4] ),
        .I1(clear_d[1]),
        .O(\dst_payload[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[50]_i_1 
       (.I0(\pending_payload_reg_n_0_[50] ),
        .I1(clear_d[1]),
        .O(\dst_payload[50]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[51]_i_1 
       (.I0(\pending_payload_reg_n_0_[51] ),
        .I1(clear_d[1]),
        .O(\dst_payload[51]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[52]_i_1 
       (.I0(\pending_payload_reg_n_0_[52] ),
        .I1(clear_d[1]),
        .O(\dst_payload[52]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[53]_i_1 
       (.I0(\pending_payload_reg_n_0_[53] ),
        .I1(clear_d[1]),
        .O(\dst_payload[53]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[54]_i_1 
       (.I0(\pending_payload_reg_n_0_[54] ),
        .I1(clear_d[1]),
        .O(\dst_payload[54]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[55]_i_1 
       (.I0(\pending_payload_reg_n_0_[55] ),
        .I1(clear_d[1]),
        .O(\dst_payload[55]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[56]_i_1 
       (.I0(\pending_payload_reg_n_0_[56] ),
        .I1(clear_d[1]),
        .O(\dst_payload[56]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[57]_i_1 
       (.I0(\pending_payload_reg_n_0_[57] ),
        .I1(clear_d[1]),
        .O(\dst_payload[57]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[58]_i_1 
       (.I0(\pending_payload_reg_n_0_[58] ),
        .I1(clear_d[1]),
        .O(\dst_payload[58]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[59]_i_1 
       (.I0(\pending_payload_reg_n_0_[59] ),
        .I1(clear_d[1]),
        .O(\dst_payload[59]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[5]_i_1 
       (.I0(\pending_payload_reg_n_0_[5] ),
        .I1(clear_d[1]),
        .O(\dst_payload[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[60]_i_1 
       (.I0(\pending_payload_reg_n_0_[60] ),
        .I1(clear_d[1]),
        .O(\dst_payload[60]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[61]_i_1 
       (.I0(\pending_payload_reg_n_0_[61] ),
        .I1(clear_d[1]),
        .O(\dst_payload[61]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[62]_i_1 
       (.I0(\pending_payload_reg_n_0_[62] ),
        .I1(clear_d[1]),
        .O(\dst_payload[62]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[63]_i_1 
       (.I0(\pending_payload_reg_n_0_[63] ),
        .I1(clear_d[1]),
        .O(\dst_payload[63]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[64]_i_1 
       (.I0(\pending_payload_reg_n_0_[64] ),
        .I1(clear_d[1]),
        .O(\dst_payload[64]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[65]_i_1 
       (.I0(\pending_payload_reg_n_0_[65] ),
        .I1(clear_d[1]),
        .O(\dst_payload[65]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[66]_i_1 
       (.I0(\pending_payload_reg_n_0_[66] ),
        .I1(clear_d[1]),
        .O(\dst_payload[66]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[67]_i_1 
       (.I0(\pending_payload_reg_n_0_[67] ),
        .I1(clear_d[1]),
        .O(\dst_payload[67]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[68]_i_1 
       (.I0(\pending_payload_reg_n_0_[68] ),
        .I1(clear_d[1]),
        .O(\dst_payload[68]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[69]_i_1 
       (.I0(\pending_payload_reg_n_0_[69] ),
        .I1(clear_d[1]),
        .O(\dst_payload[69]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[6]_i_1 
       (.I0(\pending_payload_reg_n_0_[6] ),
        .I1(clear_d[1]),
        .O(\dst_payload[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[70]_i_1 
       (.I0(\pending_payload_reg_n_0_[70] ),
        .I1(clear_d[1]),
        .O(\dst_payload[70]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[71]_i_1 
       (.I0(\pending_payload_reg_n_0_[71] ),
        .I1(clear_d[1]),
        .O(\dst_payload[71]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[72]_i_1 
       (.I0(\pending_payload_reg_n_0_[72] ),
        .I1(clear_d[1]),
        .O(\dst_payload[72]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[73]_i_1 
       (.I0(\pending_payload_reg_n_0_[73] ),
        .I1(clear_d[1]),
        .O(\dst_payload[73]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[74]_i_1 
       (.I0(\pending_payload_reg_n_0_[74] ),
        .I1(clear_d[1]),
        .O(\dst_payload[74]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[75]_i_1 
       (.I0(\pending_payload_reg_n_0_[75] ),
        .I1(clear_d[1]),
        .O(\dst_payload[75]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[76]_i_1 
       (.I0(\pending_payload_reg_n_0_[76] ),
        .I1(clear_d[1]),
        .O(\dst_payload[76]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[77]_i_1 
       (.I0(\pending_payload_reg_n_0_[77] ),
        .I1(clear_d[1]),
        .O(\dst_payload[77]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[78]_i_1 
       (.I0(\pending_payload_reg_n_0_[78] ),
        .I1(clear_d[1]),
        .O(\dst_payload[78]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[79]_i_1 
       (.I0(\pending_payload_reg_n_0_[79] ),
        .I1(clear_d[1]),
        .O(\dst_payload[79]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[7]_i_1 
       (.I0(\pending_payload_reg_n_0_[7] ),
        .I1(clear_d[1]),
        .O(\dst_payload[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[80]_i_1 
       (.I0(\pending_payload_reg_n_0_[80] ),
        .I1(clear_d[1]),
        .O(\dst_payload[80]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[81]_i_1 
       (.I0(\pending_payload_reg_n_0_[81] ),
        .I1(clear_d[1]),
        .O(\dst_payload[81]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[82]_i_1 
       (.I0(\pending_payload_reg_n_0_[82] ),
        .I1(clear_d[1]),
        .O(\dst_payload[82]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[83]_i_1 
       (.I0(\pending_payload_reg_n_0_[83] ),
        .I1(clear_d[1]),
        .O(\dst_payload[83]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[84]_i_1 
       (.I0(\pending_payload_reg_n_0_[84] ),
        .I1(clear_d[1]),
        .O(\dst_payload[84]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[85]_i_1 
       (.I0(\pending_payload_reg_n_0_[85] ),
        .I1(clear_d[1]),
        .O(\dst_payload[85]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[86]_i_1 
       (.I0(\pending_payload_reg_n_0_[86] ),
        .I1(clear_d[1]),
        .O(\dst_payload[86]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[87]_i_1 
       (.I0(\pending_payload_reg_n_0_[87] ),
        .I1(clear_d[1]),
        .O(\dst_payload[87]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[88]_i_1 
       (.I0(\pending_payload_reg_n_0_[88] ),
        .I1(clear_d[1]),
        .O(\dst_payload[88]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[89]_i_1 
       (.I0(\pending_payload_reg_n_0_[89] ),
        .I1(clear_d[1]),
        .O(\dst_payload[89]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[8]_i_1 
       (.I0(\pending_payload_reg_n_0_[8] ),
        .I1(clear_d[1]),
        .O(\dst_payload[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[90]_i_1 
       (.I0(\pending_payload_reg_n_0_[90] ),
        .I1(clear_d[1]),
        .O(\dst_payload[90]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[91]_i_1 
       (.I0(\pending_payload_reg_n_0_[91] ),
        .I1(clear_d[1]),
        .O(\dst_payload[91]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[92]_i_1 
       (.I0(\pending_payload_reg_n_0_[92] ),
        .I1(clear_d[1]),
        .O(\dst_payload[92]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[93]_i_1 
       (.I0(\pending_payload_reg_n_0_[93] ),
        .I1(clear_d[1]),
        .O(\dst_payload[93]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[94]_i_1 
       (.I0(\pending_payload_reg_n_0_[94] ),
        .I1(clear_d[1]),
        .O(\dst_payload[94]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[95]_i_1 
       (.I0(\pending_payload_reg_n_0_[95] ),
        .I1(clear_d[1]),
        .O(\dst_payload[95]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[96]_i_1 
       (.I0(\pending_payload_reg_n_0_[96] ),
        .I1(clear_d[1]),
        .O(\dst_payload[96]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[97]_i_1 
       (.I0(\pending_payload_reg_n_0_[97] ),
        .I1(clear_d[1]),
        .O(\dst_payload[97]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[98]_i_1 
       (.I0(\pending_payload_reg_n_0_[98] ),
        .I1(clear_d[1]),
        .O(\dst_payload[98]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[99]_i_1 
       (.I0(\pending_payload_reg_n_0_[99] ),
        .I1(clear_d[1]),
        .O(\dst_payload[99]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dst_payload[9]_i_1 
       (.I0(\pending_payload_reg_n_0_[9] ),
        .I1(clear_d[1]),
        .O(\dst_payload[9]_i_1_n_0 ));
  FDCE \dst_payload_reg[0] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[0]_i_1_n_0 ),
        .Q(applied_payload[0]));
  FDCE \dst_payload_reg[100] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[100]_i_1_n_0 ),
        .Q(applied_payload[100]));
  FDCE \dst_payload_reg[101] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[101]_i_1_n_0 ),
        .Q(applied_payload[101]));
  FDCE \dst_payload_reg[102] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[102]_i_1_n_0 ),
        .Q(applied_payload[102]));
  FDCE \dst_payload_reg[103] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[103]_i_1_n_0 ),
        .Q(applied_payload[103]));
  FDCE \dst_payload_reg[104] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[104]_i_1_n_0 ),
        .Q(applied_payload[104]));
  FDCE \dst_payload_reg[105] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[105]_i_1_n_0 ),
        .Q(applied_payload[105]));
  FDCE \dst_payload_reg[106] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[106]_i_1_n_0 ),
        .Q(applied_payload[106]));
  FDCE \dst_payload_reg[107] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[107]_i_1_n_0 ),
        .Q(applied_payload[107]));
  FDCE \dst_payload_reg[108] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[108]_i_1_n_0 ),
        .Q(applied_payload[108]));
  FDCE \dst_payload_reg[109] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[109]_i_1_n_0 ),
        .Q(applied_payload[109]));
  FDCE \dst_payload_reg[10] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[10]_i_1_n_0 ),
        .Q(applied_payload[10]));
  FDCE \dst_payload_reg[110] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[110]_i_1_n_0 ),
        .Q(applied_payload[110]));
  FDCE \dst_payload_reg[111] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[111]_i_1_n_0 ),
        .Q(applied_payload[111]));
  FDCE \dst_payload_reg[112] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[112]_i_1_n_0 ),
        .Q(applied_payload[112]));
  FDCE \dst_payload_reg[113] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[113]_i_1_n_0 ),
        .Q(applied_payload[113]));
  FDCE \dst_payload_reg[114] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[114]_i_1_n_0 ),
        .Q(applied_payload[114]));
  FDCE \dst_payload_reg[115] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[115]_i_1_n_0 ),
        .Q(applied_payload[115]));
  FDCE \dst_payload_reg[116] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[116]_i_1_n_0 ),
        .Q(applied_payload[116]));
  FDCE \dst_payload_reg[117] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[117]_i_1_n_0 ),
        .Q(applied_payload[117]));
  FDCE \dst_payload_reg[118] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[118]_i_1_n_0 ),
        .Q(applied_payload[118]));
  FDCE \dst_payload_reg[119] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[119]_i_1_n_0 ),
        .Q(applied_payload[119]));
  FDCE \dst_payload_reg[11] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[11]_i_1_n_0 ),
        .Q(applied_payload[11]));
  FDCE \dst_payload_reg[120] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[120]_i_1_n_0 ),
        .Q(applied_payload[120]));
  FDCE \dst_payload_reg[121] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[121]_i_1_n_0 ),
        .Q(applied_payload[121]));
  FDCE \dst_payload_reg[122] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[122]_i_1_n_0 ),
        .Q(applied_payload[122]));
  FDCE \dst_payload_reg[123] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[123]_i_1_n_0 ),
        .Q(applied_payload[123]));
  FDCE \dst_payload_reg[124] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[124]_i_1_n_0 ),
        .Q(applied_payload[124]));
  FDCE \dst_payload_reg[125] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[125]_i_1_n_0 ),
        .Q(applied_payload[125]));
  FDCE \dst_payload_reg[126] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[126]_i_1_n_0 ),
        .Q(applied_payload[126]));
  FDCE \dst_payload_reg[127] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[127]_i_1_n_0 ),
        .Q(applied_payload[127]));
  FDCE \dst_payload_reg[128] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[128]_i_1_n_0 ),
        .Q(applied_payload[128]));
  FDCE \dst_payload_reg[129] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[129]_i_1_n_0 ),
        .Q(applied_payload[129]));
  FDCE \dst_payload_reg[12] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[12]_i_1_n_0 ),
        .Q(applied_payload[12]));
  FDCE \dst_payload_reg[130] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[130]_i_1_n_0 ),
        .Q(applied_payload[130]));
  FDCE \dst_payload_reg[131] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[131]_i_1_n_0 ),
        .Q(applied_payload[131]));
  FDCE \dst_payload_reg[132] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[132]_i_1_n_0 ),
        .Q(applied_payload[132]));
  FDCE \dst_payload_reg[133] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[133]_i_1_n_0 ),
        .Q(applied_payload[133]));
  FDCE \dst_payload_reg[134] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[134]_i_1_n_0 ),
        .Q(applied_payload[134]));
  FDCE \dst_payload_reg[135] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[135]_i_1_n_0 ),
        .Q(applied_payload[135]));
  FDCE \dst_payload_reg[136] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[136]_i_1_n_0 ),
        .Q(applied_payload[136]));
  FDCE \dst_payload_reg[137] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[137]_i_1_n_0 ),
        .Q(applied_payload[137]));
  FDCE \dst_payload_reg[138] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[138]_i_1_n_0 ),
        .Q(applied_payload[138]));
  FDCE \dst_payload_reg[139] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[139]_i_1_n_0 ),
        .Q(applied_payload[139]));
  FDCE \dst_payload_reg[13] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[13]_i_1_n_0 ),
        .Q(applied_payload[13]));
  FDCE \dst_payload_reg[140] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[140]_i_1_n_0 ),
        .Q(applied_payload[140]));
  FDCE \dst_payload_reg[141] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[141]_i_1_n_0 ),
        .Q(applied_payload[141]));
  FDCE \dst_payload_reg[142] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[142]_i_1_n_0 ),
        .Q(applied_payload[142]));
  FDCE \dst_payload_reg[143] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[143]_i_1_n_0 ),
        .Q(applied_payload[143]));
  FDCE \dst_payload_reg[144] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[144]_i_1_n_0 ),
        .Q(applied_payload[144]));
  FDCE \dst_payload_reg[145] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[145]_i_1_n_0 ),
        .Q(applied_payload[145]));
  FDCE \dst_payload_reg[146] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[146]_i_1_n_0 ),
        .Q(applied_payload[146]));
  FDCE \dst_payload_reg[147] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[147]_i_1_n_0 ),
        .Q(applied_payload[147]));
  FDCE \dst_payload_reg[148] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[148]_i_1_n_0 ),
        .Q(applied_payload[148]));
  FDCE \dst_payload_reg[149] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[149]_i_1_n_0 ),
        .Q(applied_payload[149]));
  FDCE \dst_payload_reg[14] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[14]_i_1_n_0 ),
        .Q(applied_payload[14]));
  FDCE \dst_payload_reg[150] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[150]_i_1_n_0 ),
        .Q(applied_payload[150]));
  FDCE \dst_payload_reg[151] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[151]_i_1_n_0 ),
        .Q(applied_payload[151]));
  FDCE \dst_payload_reg[152] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[152]_i_1_n_0 ),
        .Q(applied_payload[152]));
  FDCE \dst_payload_reg[153] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[153]_i_1_n_0 ),
        .Q(applied_payload[153]));
  FDCE \dst_payload_reg[154] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[154]_i_1_n_0 ),
        .Q(applied_payload[154]));
  FDCE \dst_payload_reg[155] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[155]_i_1_n_0 ),
        .Q(applied_payload[155]));
  FDCE \dst_payload_reg[156] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[156]_i_1_n_0 ),
        .Q(applied_payload[156]));
  FDCE \dst_payload_reg[157] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[157]_i_1_n_0 ),
        .Q(applied_payload[157]));
  FDCE \dst_payload_reg[158] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[158]_i_1_n_0 ),
        .Q(applied_payload[158]));
  FDCE \dst_payload_reg[159] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[159]_i_2_n_0 ),
        .Q(applied_payload[159]));
  FDCE \dst_payload_reg[15] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[15]_i_1_n_0 ),
        .Q(applied_payload[15]));
  FDCE \dst_payload_reg[16] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[16]_i_1_n_0 ),
        .Q(applied_payload[16]));
  FDCE \dst_payload_reg[17] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[17]_i_1_n_0 ),
        .Q(applied_payload[17]));
  FDCE \dst_payload_reg[18] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[18]_i_1_n_0 ),
        .Q(applied_payload[18]));
  FDCE \dst_payload_reg[19] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[19]_i_1_n_0 ),
        .Q(applied_payload[19]));
  FDCE \dst_payload_reg[1] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[1]_i_1_n_0 ),
        .Q(applied_payload[1]));
  FDCE \dst_payload_reg[20] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[20]_i_1_n_0 ),
        .Q(applied_payload[20]));
  FDCE \dst_payload_reg[21] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[21]_i_1_n_0 ),
        .Q(applied_payload[21]));
  FDCE \dst_payload_reg[22] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[22]_i_1_n_0 ),
        .Q(applied_payload[22]));
  FDCE \dst_payload_reg[23] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[23]_i_1_n_0 ),
        .Q(applied_payload[23]));
  FDCE \dst_payload_reg[24] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[24]_i_1_n_0 ),
        .Q(applied_payload[24]));
  FDCE \dst_payload_reg[25] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[25]_i_1_n_0 ),
        .Q(applied_payload[25]));
  FDCE \dst_payload_reg[26] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\dst_payload[26]_i_1_n_0 ),
        .Q(applied_payload[26]));
  FDCE \dst_payload_reg[27] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[27]_i_1_n_0 ),
        .Q(applied_payload[27]));
  FDCE \dst_payload_reg[28] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[28]_i_1_n_0 ),
        .Q(applied_payload[28]));
  FDCE \dst_payload_reg[29] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[29]_i_1_n_0 ),
        .Q(applied_payload[29]));
  FDCE \dst_payload_reg[2] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[2]_i_1_n_0 ),
        .Q(applied_payload[2]));
  FDCE \dst_payload_reg[30] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[30]_i_1_n_0 ),
        .Q(applied_payload[30]));
  FDCE \dst_payload_reg[31] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[31]_i_1_n_0 ),
        .Q(applied_payload[31]));
  FDCE \dst_payload_reg[32] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[32]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \dst_payload_reg[33] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[33]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \dst_payload_reg[34] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[34]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \dst_payload_reg[35] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[35]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \dst_payload_reg[36] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[36]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \dst_payload_reg[37] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[37]_i_1_n_0 ),
        .Q(applied_payload[37]));
  FDCE \dst_payload_reg[38] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[38]_i_1_n_0 ),
        .Q(applied_payload[38]));
  FDCE \dst_payload_reg[39] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[39]_i_1_n_0 ),
        .Q(applied_payload[39]));
  FDCE \dst_payload_reg[3] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[3]_i_1_n_0 ),
        .Q(applied_payload[3]));
  FDCE \dst_payload_reg[40] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[40]_i_1_n_0 ),
        .Q(applied_payload[40]));
  FDCE \dst_payload_reg[41] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[41]_i_1_n_0 ),
        .Q(applied_payload[41]));
  FDCE \dst_payload_reg[42] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[42]_i_1_n_0 ),
        .Q(applied_payload[42]));
  FDCE \dst_payload_reg[43] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[43]_i_1_n_0 ),
        .Q(applied_payload[43]));
  FDCE \dst_payload_reg[44] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[44]_i_1_n_0 ),
        .Q(applied_payload[44]));
  FDCE \dst_payload_reg[45] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[45]_i_1_n_0 ),
        .Q(applied_payload[45]));
  FDCE \dst_payload_reg[46] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[46]_i_1_n_0 ),
        .Q(applied_payload[46]));
  FDCE \dst_payload_reg[47] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[47]_i_1_n_0 ),
        .Q(applied_payload[47]));
  FDCE \dst_payload_reg[48] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[48]_i_1_n_0 ),
        .Q(applied_payload[48]));
  FDCE \dst_payload_reg[49] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[49]_i_1_n_0 ),
        .Q(applied_payload[49]));
  FDCE \dst_payload_reg[4] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[4]_i_1_n_0 ),
        .Q(applied_payload[4]));
  FDCE \dst_payload_reg[50] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[50]_i_1_n_0 ),
        .Q(applied_payload[50]));
  FDCE \dst_payload_reg[51] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[51]_i_1_n_0 ),
        .Q(applied_payload[51]));
  FDCE \dst_payload_reg[52] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[52]_i_1_n_0 ),
        .Q(applied_payload[52]));
  FDCE \dst_payload_reg[53] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[53]_i_1_n_0 ),
        .Q(applied_payload[53]));
  FDCE \dst_payload_reg[54] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[54]_i_1_n_0 ),
        .Q(applied_payload[54]));
  FDCE \dst_payload_reg[55] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[55]_i_1_n_0 ),
        .Q(applied_payload[55]));
  FDCE \dst_payload_reg[56] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[56]_i_1_n_0 ),
        .Q(applied_payload[56]));
  FDCE \dst_payload_reg[57] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[57]_i_1_n_0 ),
        .Q(applied_payload[57]));
  FDCE \dst_payload_reg[58] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[58]_i_1_n_0 ),
        .Q(applied_payload[58]));
  FDCE \dst_payload_reg[59] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[59]_i_1_n_0 ),
        .Q(applied_payload[59]));
  FDCE \dst_payload_reg[5] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[5]_i_1_n_0 ),
        .Q(applied_payload[5]));
  FDCE \dst_payload_reg[60] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[60]_i_1_n_0 ),
        .Q(applied_payload[60]));
  FDCE \dst_payload_reg[61] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[61]_i_1_n_0 ),
        .Q(applied_payload[61]));
  FDCE \dst_payload_reg[62] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[62]_i_1_n_0 ),
        .Q(applied_payload[62]));
  FDCE \dst_payload_reg[63] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[63]_i_1_n_0 ),
        .Q(applied_payload[63]));
  FDCE \dst_payload_reg[64] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[64]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \dst_payload_reg[65] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[65]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \dst_payload_reg[66] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[66]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \dst_payload_reg[67] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[67]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE \dst_payload_reg[68] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[68]_i_1_n_0 ),
        .Q(applied_payload[68]));
  FDCE \dst_payload_reg[69] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[69]_i_1_n_0 ),
        .Q(applied_payload[69]));
  FDCE \dst_payload_reg[6] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[6]_i_1_n_0 ),
        .Q(applied_payload[6]));
  FDCE \dst_payload_reg[70] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[70]_i_1_n_0 ),
        .Q(applied_payload[70]));
  FDCE \dst_payload_reg[71] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[71]_i_1_n_0 ),
        .Q(applied_payload[71]));
  FDCE \dst_payload_reg[72] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[72]_i_1_n_0 ),
        .Q(Q[9]));
  FDCE \dst_payload_reg[73] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[73]_i_1_n_0 ),
        .Q(applied_payload[73]));
  FDCE \dst_payload_reg[74] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[74]_i_1_n_0 ),
        .Q(applied_payload[74]));
  FDCE \dst_payload_reg[75] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[75]_i_1_n_0 ),
        .Q(applied_payload[75]));
  FDCE \dst_payload_reg[76] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[76]_i_1_n_0 ),
        .Q(applied_payload[76]));
  FDCE \dst_payload_reg[77] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[77]_i_1_n_0 ),
        .Q(applied_payload[77]));
  FDCE \dst_payload_reg[78] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[78]_i_1_n_0 ),
        .Q(applied_payload[78]));
  FDCE \dst_payload_reg[79] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[79]_i_1_n_0 ),
        .Q(applied_payload[79]));
  FDCE \dst_payload_reg[7] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[7]_i_1_n_0 ),
        .Q(applied_payload[7]));
  FDCE \dst_payload_reg[80] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[80]_i_1_n_0 ),
        .Q(applied_payload[80]));
  FDCE \dst_payload_reg[81] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[81]_i_1_n_0 ),
        .Q(applied_payload[81]));
  FDCE \dst_payload_reg[82] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[82]_i_1_n_0 ),
        .Q(applied_payload[82]));
  FDCE \dst_payload_reg[83] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\dst_payload[83]_i_1_n_0 ),
        .Q(applied_payload[83]));
  FDCE \dst_payload_reg[84] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[84]_i_1_n_0 ),
        .Q(applied_payload[84]));
  FDCE \dst_payload_reg[85] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[85]_i_1_n_0 ),
        .Q(applied_payload[85]));
  FDCE \dst_payload_reg[86] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[86]_i_1_n_0 ),
        .Q(applied_payload[86]));
  FDCE \dst_payload_reg[87] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[87]_i_1_n_0 ),
        .Q(applied_payload[87]));
  FDCE \dst_payload_reg[88] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[88]_i_1_n_0 ),
        .Q(applied_payload[88]));
  FDCE \dst_payload_reg[89] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(\dst_payload[89]_i_1_n_0 ),
        .Q(applied_payload[89]));
  FDCE \dst_payload_reg[8] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[8]_i_1_n_0 ),
        .Q(applied_payload[8]));
  FDCE \dst_payload_reg[90] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[90]_i_1_n_0 ),
        .Q(applied_payload[90]));
  FDCE \dst_payload_reg[91] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[91]_i_1_n_0 ),
        .Q(applied_payload[91]));
  FDCE \dst_payload_reg[92] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[92]_i_1_n_0 ),
        .Q(applied_payload[92]));
  FDCE \dst_payload_reg[93] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[93]_i_1_n_0 ),
        .Q(applied_payload[93]));
  FDCE \dst_payload_reg[94] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[94]_i_1_n_0 ),
        .Q(applied_payload[94]));
  FDCE \dst_payload_reg[95] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[95]_i_1_n_0 ),
        .Q(applied_payload[95]));
  FDCE \dst_payload_reg[96] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[96]_i_1_n_0 ),
        .Q(applied_payload[96]));
  FDCE \dst_payload_reg[97] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[97]_i_1_n_0 ),
        .Q(applied_payload[97]));
  FDCE \dst_payload_reg[98] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[98]_i_1_n_0 ),
        .Q(applied_payload[98]));
  FDCE \dst_payload_reg[99] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[99]_i_1_n_0 ),
        .Q(applied_payload[99]));
  FDCE \dst_payload_reg[9] 
       (.C(pixel_clk),
        .CE(\dst_payload[159]_i_1_n_0 ),
        .CLR(\dst_payload[159]_i_3_n_0 ),
        .D(\dst_payload[9]_i_1_n_0 ),
        .Q(applied_payload[9]));
  LUT4 #(
    .INIT(16'h0F04)) 
    dst_ready_i_1
       (.I0(req_d[1]),
        .I1(clear_ack),
        .I2(clear_d[1]),
        .I3(dst_ready_reg_n_0),
        .O(dst_ready_i_1_n_0));
  FDCE dst_ready_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(dst_ready_i_1_n_0),
        .Q(dst_ready_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \dst_reset_pipe_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\src_reset_pipe[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(dst_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \dst_reset_pipe_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\src_reset_pipe[1]_i_1_n_0 ),
        .D(dst_reset_pipe[0]),
        .Q(dst_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \expire_ack_d_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(expire_ack),
        .Q(expire_ack_d[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \expire_ack_d_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(expire_ack_d[0]),
        .Q(expire_ack_d[1]));
  FDCE expire_ack_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_reset_event_i_1_n_0),
        .D(expire_s[1]),
        .Q(expire_ack));
  LUT6 #(
    .INIT(64'h7FFFFFFF00800000)) 
    expire_req_i_1
       (.I0(expire_req_i_2_n_0),
        .I1(dst_box_valid0),
        .I2(mailbox_box_valid),
        .I3(expire_ack_d[1]),
        .I4(expire_req_i_3_n_0),
        .I5(expire_req_reg_n_0),
        .O(expire_req_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    expire_req_i_2
       (.I0(pending),
        .I1(clear_d[1]),
        .O(expire_req_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    expire_req_i_3
       (.I0(clear_ack),
        .I1(dst_ready_reg_n_0),
        .I2(frame_start),
        .O(expire_req_i_3_n_0));
  FDCE expire_req_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(expire_req_i_1_n_0),
        .Q(expire_req_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \expire_s_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_reset_event_i_1_n_0),
        .D(expire_req_reg_n_0),
        .Q(expire_s[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \expire_s_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_reset_event_i_1_n_0),
        .D(expire_s[0]),
        .Q(expire_s[1]));
  LUT2 #(
    .INIT(4'h6)) 
    expired_i_1
       (.I0(expire_ack),
        .I1(expire_s[1]),
        .O(expired0));
  FDCE expired_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_reset_event_i_1_n_0),
        .D(expired0),
        .Q(box_expired));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \held_payload[159]_i_1 
       (.I0(ready_s[1]),
        .I1(box_send),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state136_out),
        .O(\held_payload[159]_i_1_n_0 ));
  FDCE \held_payload_reg[0] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[0]),
        .Q(held_payload[0]));
  FDCE \held_payload_reg[100] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[100]),
        .Q(held_payload[100]));
  FDCE \held_payload_reg[101] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[101]),
        .Q(held_payload[101]));
  FDCE \held_payload_reg[102] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[102]),
        .Q(held_payload[102]));
  FDCE \held_payload_reg[103] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[103]),
        .Q(held_payload[103]));
  FDCE \held_payload_reg[104] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[104]),
        .Q(held_payload[104]));
  FDCE \held_payload_reg[105] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[105]),
        .Q(held_payload[105]));
  FDCE \held_payload_reg[106] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[106]),
        .Q(held_payload[106]));
  FDCE \held_payload_reg[107] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[107]),
        .Q(held_payload[107]));
  FDCE \held_payload_reg[108] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[108]),
        .Q(held_payload[108]));
  FDCE \held_payload_reg[109] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[109]),
        .Q(held_payload[109]));
  FDCE \held_payload_reg[10] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[10]),
        .Q(held_payload[10]));
  FDCE \held_payload_reg[110] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[110]),
        .Q(held_payload[110]));
  FDCE \held_payload_reg[111] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[111]),
        .Q(held_payload[111]));
  FDCE \held_payload_reg[112] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[112]),
        .Q(held_payload[112]));
  FDCE \held_payload_reg[113] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[113]),
        .Q(held_payload[113]));
  FDCE \held_payload_reg[114] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[114]),
        .Q(held_payload[114]));
  FDCE \held_payload_reg[115] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[115]),
        .Q(held_payload[115]));
  FDCE \held_payload_reg[116] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[116]),
        .Q(held_payload[116]));
  FDCE \held_payload_reg[117] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[117]),
        .Q(held_payload[117]));
  FDCE \held_payload_reg[118] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[118]),
        .Q(held_payload[118]));
  FDCE \held_payload_reg[119] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[119]),
        .Q(held_payload[119]));
  FDCE \held_payload_reg[11] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[11]),
        .Q(held_payload[11]));
  FDCE \held_payload_reg[120] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[120]),
        .Q(held_payload[120]));
  FDCE \held_payload_reg[121] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[121]),
        .Q(held_payload[121]));
  FDCE \held_payload_reg[122] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[122]),
        .Q(held_payload[122]));
  FDCE \held_payload_reg[123] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[123]),
        .Q(held_payload[123]));
  FDCE \held_payload_reg[124] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[124]),
        .Q(held_payload[124]));
  FDCE \held_payload_reg[125] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[125]),
        .Q(held_payload[125]));
  FDCE \held_payload_reg[126] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[126]),
        .Q(held_payload[126]));
  FDCE \held_payload_reg[127] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[127]),
        .Q(held_payload[127]));
  FDCE \held_payload_reg[128] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[128]),
        .Q(held_payload[128]));
  FDCE \held_payload_reg[129] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[129]),
        .Q(held_payload[129]));
  FDCE \held_payload_reg[12] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[12]),
        .Q(held_payload[12]));
  FDCE \held_payload_reg[130] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[130]),
        .Q(held_payload[130]));
  FDCE \held_payload_reg[131] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[131]),
        .Q(held_payload[131]));
  FDCE \held_payload_reg[132] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[132]),
        .Q(held_payload[132]));
  FDCE \held_payload_reg[133] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[133]),
        .Q(held_payload[133]));
  FDCE \held_payload_reg[134] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[134]),
        .Q(held_payload[134]));
  FDCE \held_payload_reg[135] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[135]),
        .Q(held_payload[135]));
  FDCE \held_payload_reg[136] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[136]),
        .Q(held_payload[136]));
  FDCE \held_payload_reg[137] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[137]),
        .Q(held_payload[137]));
  FDCE \held_payload_reg[138] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[138]),
        .Q(held_payload[138]));
  FDCE \held_payload_reg[139] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[139]),
        .Q(held_payload[139]));
  FDCE \held_payload_reg[13] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[13]),
        .Q(held_payload[13]));
  FDCE \held_payload_reg[140] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[140]),
        .Q(held_payload[140]));
  FDCE \held_payload_reg[141] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[141]),
        .Q(held_payload[141]));
  FDCE \held_payload_reg[142] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[142]),
        .Q(held_payload[142]));
  FDCE \held_payload_reg[143] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[143]),
        .Q(held_payload[143]));
  FDCE \held_payload_reg[144] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[144]),
        .Q(held_payload[144]));
  FDCE \held_payload_reg[145] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[145]),
        .Q(held_payload[145]));
  FDCE \held_payload_reg[146] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[146]),
        .Q(held_payload[146]));
  FDCE \held_payload_reg[147] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[147]),
        .Q(held_payload[147]));
  FDCE \held_payload_reg[148] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[148]),
        .Q(held_payload[148]));
  FDCE \held_payload_reg[149] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[149]),
        .Q(held_payload[149]));
  FDCE \held_payload_reg[14] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[14]),
        .Q(held_payload[14]));
  FDCE \held_payload_reg[150] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[150]),
        .Q(held_payload[150]));
  FDCE \held_payload_reg[151] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[151]),
        .Q(held_payload[151]));
  FDCE \held_payload_reg[152] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[152]),
        .Q(held_payload[152]));
  FDCE \held_payload_reg[153] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[153]),
        .Q(held_payload[153]));
  FDCE \held_payload_reg[154] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[154]),
        .Q(held_payload[154]));
  FDCE \held_payload_reg[155] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[155]),
        .Q(held_payload[155]));
  FDCE \held_payload_reg[156] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[156]),
        .Q(held_payload[156]));
  FDCE \held_payload_reg[157] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[157]),
        .Q(held_payload[157]));
  FDCE \held_payload_reg[158] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[158]),
        .Q(held_payload[158]));
  FDCE \held_payload_reg[159] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[159]),
        .Q(held_payload[159]));
  FDCE \held_payload_reg[15] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[15]),
        .Q(held_payload[15]));
  FDCE \held_payload_reg[16] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[16]),
        .Q(held_payload[16]));
  FDCE \held_payload_reg[17] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[17]),
        .Q(held_payload[17]));
  FDCE \held_payload_reg[18] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[18]),
        .Q(held_payload[18]));
  FDCE \held_payload_reg[19] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[19]),
        .Q(held_payload[19]));
  FDCE \held_payload_reg[1] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[1]),
        .Q(held_payload[1]));
  FDCE \held_payload_reg[20] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[20]),
        .Q(held_payload[20]));
  FDCE \held_payload_reg[21] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[21]),
        .Q(held_payload[21]));
  FDCE \held_payload_reg[22] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[22]),
        .Q(held_payload[22]));
  FDCE \held_payload_reg[23] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[23]),
        .Q(held_payload[23]));
  FDCE \held_payload_reg[24] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[24]),
        .Q(held_payload[24]));
  FDCE \held_payload_reg[25] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[25]),
        .Q(held_payload[25]));
  FDCE \held_payload_reg[26] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[26]),
        .Q(held_payload[26]));
  FDCE \held_payload_reg[27] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[27]),
        .Q(held_payload[27]));
  FDCE \held_payload_reg[28] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[28]),
        .Q(held_payload[28]));
  FDCE \held_payload_reg[29] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[29]),
        .Q(held_payload[29]));
  FDCE \held_payload_reg[2] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[2]),
        .Q(held_payload[2]));
  FDCE \held_payload_reg[30] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[30]),
        .Q(held_payload[30]));
  FDCE \held_payload_reg[31] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[31]),
        .Q(held_payload[31]));
  FDCE \held_payload_reg[32] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[32]),
        .Q(held_payload[32]));
  FDCE \held_payload_reg[33] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[33]),
        .Q(held_payload[33]));
  FDCE \held_payload_reg[34] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[34]),
        .Q(held_payload[34]));
  FDCE \held_payload_reg[35] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[35]),
        .Q(held_payload[35]));
  FDCE \held_payload_reg[36] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[36]),
        .Q(held_payload[36]));
  FDCE \held_payload_reg[37] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[37]),
        .Q(held_payload[37]));
  FDCE \held_payload_reg[38] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[38]),
        .Q(held_payload[38]));
  FDCE \held_payload_reg[39] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[39]),
        .Q(held_payload[39]));
  FDCE \held_payload_reg[3] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[3]),
        .Q(held_payload[3]));
  FDCE \held_payload_reg[40] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[40]),
        .Q(held_payload[40]));
  FDCE \held_payload_reg[41] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[41]),
        .Q(held_payload[41]));
  FDCE \held_payload_reg[42] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[42]),
        .Q(held_payload[42]));
  FDCE \held_payload_reg[43] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[43]),
        .Q(held_payload[43]));
  FDCE \held_payload_reg[44] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[44]),
        .Q(held_payload[44]));
  FDCE \held_payload_reg[45] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[45]),
        .Q(held_payload[45]));
  FDCE \held_payload_reg[46] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[46]),
        .Q(held_payload[46]));
  FDCE \held_payload_reg[47] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[47]),
        .Q(held_payload[47]));
  FDCE \held_payload_reg[48] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[48]),
        .Q(held_payload[48]));
  FDCE \held_payload_reg[49] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[49]),
        .Q(held_payload[49]));
  FDCE \held_payload_reg[4] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[4]),
        .Q(held_payload[4]));
  FDCE \held_payload_reg[50] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[50]),
        .Q(held_payload[50]));
  FDCE \held_payload_reg[51] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[51]),
        .Q(held_payload[51]));
  FDCE \held_payload_reg[52] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[52]),
        .Q(held_payload[52]));
  FDCE \held_payload_reg[53] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[53]),
        .Q(held_payload[53]));
  FDCE \held_payload_reg[54] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[54]),
        .Q(held_payload[54]));
  FDCE \held_payload_reg[55] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[55]),
        .Q(held_payload[55]));
  FDCE \held_payload_reg[56] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[56]),
        .Q(held_payload[56]));
  FDCE \held_payload_reg[57] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[57]),
        .Q(held_payload[57]));
  FDCE \held_payload_reg[58] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[58]),
        .Q(held_payload[58]));
  FDCE \held_payload_reg[59] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[59]),
        .Q(held_payload[59]));
  FDCE \held_payload_reg[5] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[5]),
        .Q(held_payload[5]));
  FDCE \held_payload_reg[60] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[60]),
        .Q(held_payload[60]));
  FDCE \held_payload_reg[61] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[61]),
        .Q(held_payload[61]));
  FDCE \held_payload_reg[62] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[62]),
        .Q(held_payload[62]));
  FDCE \held_payload_reg[63] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[63]),
        .Q(held_payload[63]));
  FDCE \held_payload_reg[64] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[64]),
        .Q(held_payload[64]));
  FDCE \held_payload_reg[65] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[65]),
        .Q(held_payload[65]));
  FDCE \held_payload_reg[66] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[66]),
        .Q(held_payload[66]));
  FDCE \held_payload_reg[67] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[67]),
        .Q(held_payload[67]));
  FDCE \held_payload_reg[68] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[68]),
        .Q(held_payload[68]));
  FDCE \held_payload_reg[69] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[69]),
        .Q(held_payload[69]));
  FDCE \held_payload_reg[6] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[6]),
        .Q(held_payload[6]));
  FDCE \held_payload_reg[70] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[70]),
        .Q(held_payload[70]));
  FDCE \held_payload_reg[71] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[71]),
        .Q(held_payload[71]));
  FDCE \held_payload_reg[72] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[72]),
        .Q(held_payload[72]));
  FDCE \held_payload_reg[73] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[73]),
        .Q(held_payload[73]));
  FDCE \held_payload_reg[74] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[74]),
        .Q(held_payload[74]));
  FDCE \held_payload_reg[75] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[75]),
        .Q(held_payload[75]));
  FDCE \held_payload_reg[76] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[76]),
        .Q(held_payload[76]));
  FDCE \held_payload_reg[77] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[77]),
        .Q(held_payload[77]));
  FDCE \held_payload_reg[78] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[78]),
        .Q(held_payload[78]));
  FDCE \held_payload_reg[79] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[79]),
        .Q(held_payload[79]));
  FDCE \held_payload_reg[7] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[7]),
        .Q(held_payload[7]));
  FDCE \held_payload_reg[80] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[80]),
        .Q(held_payload[80]));
  FDCE \held_payload_reg[81] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[81]),
        .Q(held_payload[81]));
  FDCE \held_payload_reg[82] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[82]),
        .Q(held_payload[82]));
  FDCE \held_payload_reg[83] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[83]),
        .Q(held_payload[83]));
  FDCE \held_payload_reg[84] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[84]),
        .Q(held_payload[84]));
  FDCE \held_payload_reg[85] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[85]),
        .Q(held_payload[85]));
  FDCE \held_payload_reg[86] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[86]),
        .Q(held_payload[86]));
  FDCE \held_payload_reg[87] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[87]),
        .Q(held_payload[87]));
  FDCE \held_payload_reg[88] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[88]),
        .Q(held_payload[88]));
  FDCE \held_payload_reg[89] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[89]),
        .Q(held_payload[89]));
  FDCE \held_payload_reg[8] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[8]),
        .Q(held_payload[8]));
  FDCE \held_payload_reg[90] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[90]),
        .Q(held_payload[90]));
  FDCE \held_payload_reg[91] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[91]),
        .Q(held_payload[91]));
  FDCE \held_payload_reg[92] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[92]),
        .Q(held_payload[92]));
  FDCE \held_payload_reg[93] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[93]),
        .Q(held_payload[93]));
  FDCE \held_payload_reg[94] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[94]),
        .Q(held_payload[94]));
  FDCE \held_payload_reg[95] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[95]),
        .Q(held_payload[95]));
  FDCE \held_payload_reg[96] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[96]),
        .Q(held_payload[96]));
  FDCE \held_payload_reg[97] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[97]),
        .Q(held_payload[97]));
  FDCE \held_payload_reg[98] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[98]),
        .Q(held_payload[98]));
  FDCE \held_payload_reg[99] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_reset_event_i_1_n_0),
        .D(box_payload[99]),
        .Q(held_payload[99]));
  FDCE \held_payload_reg[9] 
       (.C(box_src_clk),
        .CE(\held_payload[159]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(box_payload[9]),
        .Q(held_payload[9]));
  LUT6 #(
    .INIT(64'h00C0FFFF00C60000)) 
    pending_i_1
       (.I0(ack_reg_n_0),
        .I1(req_d[1]),
        .I2(clear_ack),
        .I3(clear_d[1]),
        .I4(pending_i_2_n_0),
        .I5(pending),
        .O(pending_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55065500)) 
    pending_i_2
       (.I0(req_d[1]),
        .I1(ack_reg_n_0),
        .I2(pending),
        .I3(clear_ack),
        .I4(dst_ready_reg_n_0),
        .I5(\dst_payload[159]_i_1_n_0 ),
        .O(pending_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pending_payload[63]_i_1 
       (.I0(dst_reset_pipe[1]),
        .O(\pending_payload[63]_i_1_n_0 ));
  FDCE \pending_payload_reg[0] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[0]),
        .Q(\pending_payload_reg_n_0_[0] ));
  FDCE \pending_payload_reg[100] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[100]),
        .Q(\pending_payload_reg_n_0_[100] ));
  FDCE \pending_payload_reg[101] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[101]),
        .Q(\pending_payload_reg_n_0_[101] ));
  FDCE \pending_payload_reg[102] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[102]),
        .Q(\pending_payload_reg_n_0_[102] ));
  FDCE \pending_payload_reg[103] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[103]),
        .Q(\pending_payload_reg_n_0_[103] ));
  FDCE \pending_payload_reg[104] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[104]),
        .Q(\pending_payload_reg_n_0_[104] ));
  FDCE \pending_payload_reg[105] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[105]),
        .Q(\pending_payload_reg_n_0_[105] ));
  FDCE \pending_payload_reg[106] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[106]),
        .Q(\pending_payload_reg_n_0_[106] ));
  FDCE \pending_payload_reg[107] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[107]),
        .Q(\pending_payload_reg_n_0_[107] ));
  FDCE \pending_payload_reg[108] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[108]),
        .Q(\pending_payload_reg_n_0_[108] ));
  FDCE \pending_payload_reg[109] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[109]),
        .Q(\pending_payload_reg_n_0_[109] ));
  FDCE \pending_payload_reg[10] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[10]),
        .Q(\pending_payload_reg_n_0_[10] ));
  FDCE \pending_payload_reg[110] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[110]),
        .Q(\pending_payload_reg_n_0_[110] ));
  FDCE \pending_payload_reg[111] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[111]),
        .Q(\pending_payload_reg_n_0_[111] ));
  FDCE \pending_payload_reg[112] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[112]),
        .Q(\pending_payload_reg_n_0_[112] ));
  FDCE \pending_payload_reg[113] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[113]),
        .Q(\pending_payload_reg_n_0_[113] ));
  FDCE \pending_payload_reg[114] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[114]),
        .Q(\pending_payload_reg_n_0_[114] ));
  FDCE \pending_payload_reg[115] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[115]),
        .Q(\pending_payload_reg_n_0_[115] ));
  FDCE \pending_payload_reg[116] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[116]),
        .Q(\pending_payload_reg_n_0_[116] ));
  FDCE \pending_payload_reg[117] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[117]),
        .Q(\pending_payload_reg_n_0_[117] ));
  FDCE \pending_payload_reg[118] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[118]),
        .Q(\pending_payload_reg_n_0_[118] ));
  FDCE \pending_payload_reg[119] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[119]),
        .Q(\pending_payload_reg_n_0_[119] ));
  FDCE \pending_payload_reg[11] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[11]),
        .Q(\pending_payload_reg_n_0_[11] ));
  FDCE \pending_payload_reg[120] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[120]),
        .Q(\pending_payload_reg_n_0_[120] ));
  FDCE \pending_payload_reg[121] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[121]),
        .Q(\pending_payload_reg_n_0_[121] ));
  FDCE \pending_payload_reg[122] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[122]),
        .Q(\pending_payload_reg_n_0_[122] ));
  FDCE \pending_payload_reg[123] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[123]),
        .Q(\pending_payload_reg_n_0_[123] ));
  FDCE \pending_payload_reg[124] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[124]),
        .Q(\pending_payload_reg_n_0_[124] ));
  FDCE \pending_payload_reg[125] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[125]),
        .Q(\pending_payload_reg_n_0_[125] ));
  FDCE \pending_payload_reg[126] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[126]),
        .Q(\pending_payload_reg_n_0_[126] ));
  FDCE \pending_payload_reg[127] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[127]),
        .Q(\pending_payload_reg_n_0_[127] ));
  FDCE \pending_payload_reg[128] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[128]),
        .Q(\pending_payload_reg_n_0_[128] ));
  FDCE \pending_payload_reg[129] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[129]),
        .Q(\pending_payload_reg_n_0_[129] ));
  FDCE \pending_payload_reg[12] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[12]),
        .Q(\pending_payload_reg_n_0_[12] ));
  FDCE \pending_payload_reg[130] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[130]),
        .Q(\pending_payload_reg_n_0_[130] ));
  FDCE \pending_payload_reg[131] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[131]),
        .Q(\pending_payload_reg_n_0_[131] ));
  FDCE \pending_payload_reg[132] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[132]),
        .Q(\pending_payload_reg_n_0_[132] ));
  FDCE \pending_payload_reg[133] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[133]),
        .Q(\pending_payload_reg_n_0_[133] ));
  FDCE \pending_payload_reg[134] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[134]),
        .Q(\pending_payload_reg_n_0_[134] ));
  FDCE \pending_payload_reg[135] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[135]),
        .Q(\pending_payload_reg_n_0_[135] ));
  FDCE \pending_payload_reg[136] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[136]),
        .Q(\pending_payload_reg_n_0_[136] ));
  FDCE \pending_payload_reg[137] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[137]),
        .Q(\pending_payload_reg_n_0_[137] ));
  FDCE \pending_payload_reg[138] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[138]),
        .Q(\pending_payload_reg_n_0_[138] ));
  FDCE \pending_payload_reg[139] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[139]),
        .Q(\pending_payload_reg_n_0_[139] ));
  FDCE \pending_payload_reg[13] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[13]),
        .Q(\pending_payload_reg_n_0_[13] ));
  FDCE \pending_payload_reg[140] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[140]),
        .Q(\pending_payload_reg_n_0_[140] ));
  FDCE \pending_payload_reg[141] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[141]),
        .Q(\pending_payload_reg_n_0_[141] ));
  FDCE \pending_payload_reg[142] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[142]),
        .Q(\pending_payload_reg_n_0_[142] ));
  FDCE \pending_payload_reg[143] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[143]),
        .Q(\pending_payload_reg_n_0_[143] ));
  FDCE \pending_payload_reg[144] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[144]),
        .Q(\pending_payload_reg_n_0_[144] ));
  FDCE \pending_payload_reg[145] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[145]),
        .Q(\pending_payload_reg_n_0_[145] ));
  FDCE \pending_payload_reg[146] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[146]),
        .Q(\pending_payload_reg_n_0_[146] ));
  FDCE \pending_payload_reg[147] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[147]),
        .Q(\pending_payload_reg_n_0_[147] ));
  FDCE \pending_payload_reg[148] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[148]),
        .Q(\pending_payload_reg_n_0_[148] ));
  FDCE \pending_payload_reg[149] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[149]),
        .Q(\pending_payload_reg_n_0_[149] ));
  FDCE \pending_payload_reg[14] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[14]),
        .Q(\pending_payload_reg_n_0_[14] ));
  FDCE \pending_payload_reg[150] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[150]),
        .Q(\pending_payload_reg_n_0_[150] ));
  FDCE \pending_payload_reg[151] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[151]),
        .Q(\pending_payload_reg_n_0_[151] ));
  FDCE \pending_payload_reg[152] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[152]),
        .Q(\pending_payload_reg_n_0_[152] ));
  FDCE \pending_payload_reg[153] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[153]),
        .Q(\pending_payload_reg_n_0_[153] ));
  FDCE \pending_payload_reg[154] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[154]),
        .Q(\pending_payload_reg_n_0_[154] ));
  FDCE \pending_payload_reg[155] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[155]),
        .Q(\pending_payload_reg_n_0_[155] ));
  FDCE \pending_payload_reg[156] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[156]),
        .Q(\pending_payload_reg_n_0_[156] ));
  FDCE \pending_payload_reg[157] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[157]),
        .Q(\pending_payload_reg_n_0_[157] ));
  FDCE \pending_payload_reg[158] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[158]),
        .Q(\pending_payload_reg_n_0_[158] ));
  FDCE \pending_payload_reg[159] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[159]),
        .Q(\pending_payload_reg_n_0_[159] ));
  FDCE \pending_payload_reg[15] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[15]),
        .Q(\pending_payload_reg_n_0_[15] ));
  FDCE \pending_payload_reg[16] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[16]),
        .Q(\pending_payload_reg_n_0_[16] ));
  FDCE \pending_payload_reg[17] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[17]),
        .Q(\pending_payload_reg_n_0_[17] ));
  FDCE \pending_payload_reg[18] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[18]),
        .Q(\pending_payload_reg_n_0_[18] ));
  FDCE \pending_payload_reg[19] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[19]),
        .Q(\pending_payload_reg_n_0_[19] ));
  FDCE \pending_payload_reg[1] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[1]),
        .Q(\pending_payload_reg_n_0_[1] ));
  FDCE \pending_payload_reg[20] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[20]),
        .Q(\pending_payload_reg_n_0_[20] ));
  FDCE \pending_payload_reg[21] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[21]),
        .Q(\pending_payload_reg_n_0_[21] ));
  FDCE \pending_payload_reg[22] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[22]),
        .Q(\pending_payload_reg_n_0_[22] ));
  FDCE \pending_payload_reg[23] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[23]),
        .Q(\pending_payload_reg_n_0_[23] ));
  FDCE \pending_payload_reg[24] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[24]),
        .Q(\pending_payload_reg_n_0_[24] ));
  FDCE \pending_payload_reg[25] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[25]),
        .Q(\pending_payload_reg_n_0_[25] ));
  FDCE \pending_payload_reg[26] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[26]),
        .Q(\pending_payload_reg_n_0_[26] ));
  FDCE \pending_payload_reg[27] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[27]),
        .Q(\pending_payload_reg_n_0_[27] ));
  FDCE \pending_payload_reg[28] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[28]),
        .Q(\pending_payload_reg_n_0_[28] ));
  FDCE \pending_payload_reg[29] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[29]),
        .Q(\pending_payload_reg_n_0_[29] ));
  FDCE \pending_payload_reg[2] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[2]),
        .Q(\pending_payload_reg_n_0_[2] ));
  FDCE \pending_payload_reg[30] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[30]),
        .Q(\pending_payload_reg_n_0_[30] ));
  FDCE \pending_payload_reg[31] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[31]),
        .Q(\pending_payload_reg_n_0_[31] ));
  FDCE \pending_payload_reg[32] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[32]),
        .Q(\pending_payload_reg_n_0_[32] ));
  FDCE \pending_payload_reg[33] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[33]),
        .Q(\pending_payload_reg_n_0_[33] ));
  FDCE \pending_payload_reg[34] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[34]),
        .Q(\pending_payload_reg_n_0_[34] ));
  FDCE \pending_payload_reg[35] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[35]),
        .Q(\pending_payload_reg_n_0_[35] ));
  FDCE \pending_payload_reg[36] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[36]),
        .Q(\pending_payload_reg_n_0_[36] ));
  FDCE \pending_payload_reg[37] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[37]),
        .Q(\pending_payload_reg_n_0_[37] ));
  FDCE \pending_payload_reg[38] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[38]),
        .Q(\pending_payload_reg_n_0_[38] ));
  FDCE \pending_payload_reg[39] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[39]),
        .Q(\pending_payload_reg_n_0_[39] ));
  FDCE \pending_payload_reg[3] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[3]),
        .Q(\pending_payload_reg_n_0_[3] ));
  FDCE \pending_payload_reg[40] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[40]),
        .Q(\pending_payload_reg_n_0_[40] ));
  FDCE \pending_payload_reg[41] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[41]),
        .Q(\pending_payload_reg_n_0_[41] ));
  FDCE \pending_payload_reg[42] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[42]),
        .Q(\pending_payload_reg_n_0_[42] ));
  FDCE \pending_payload_reg[43] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[43]),
        .Q(\pending_payload_reg_n_0_[43] ));
  FDCE \pending_payload_reg[44] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[44]),
        .Q(\pending_payload_reg_n_0_[44] ));
  FDCE \pending_payload_reg[45] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[45]),
        .Q(\pending_payload_reg_n_0_[45] ));
  FDCE \pending_payload_reg[46] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[46]),
        .Q(\pending_payload_reg_n_0_[46] ));
  FDCE \pending_payload_reg[47] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[47]),
        .Q(\pending_payload_reg_n_0_[47] ));
  FDCE \pending_payload_reg[48] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[48]),
        .Q(\pending_payload_reg_n_0_[48] ));
  FDCE \pending_payload_reg[49] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[49]),
        .Q(\pending_payload_reg_n_0_[49] ));
  FDCE \pending_payload_reg[4] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[4]),
        .Q(\pending_payload_reg_n_0_[4] ));
  FDCE \pending_payload_reg[50] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[50]),
        .Q(\pending_payload_reg_n_0_[50] ));
  FDCE \pending_payload_reg[51] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[51]),
        .Q(\pending_payload_reg_n_0_[51] ));
  FDCE \pending_payload_reg[52] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[52]),
        .Q(\pending_payload_reg_n_0_[52] ));
  FDCE \pending_payload_reg[53] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[53]),
        .Q(\pending_payload_reg_n_0_[53] ));
  FDCE \pending_payload_reg[54] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[54]),
        .Q(\pending_payload_reg_n_0_[54] ));
  FDCE \pending_payload_reg[55] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[55]),
        .Q(\pending_payload_reg_n_0_[55] ));
  FDCE \pending_payload_reg[56] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[56]),
        .Q(\pending_payload_reg_n_0_[56] ));
  FDCE \pending_payload_reg[57] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[57]),
        .Q(\pending_payload_reg_n_0_[57] ));
  FDCE \pending_payload_reg[58] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[58]),
        .Q(\pending_payload_reg_n_0_[58] ));
  FDCE \pending_payload_reg[59] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[59]),
        .Q(\pending_payload_reg_n_0_[59] ));
  FDCE \pending_payload_reg[5] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[5]),
        .Q(\pending_payload_reg_n_0_[5] ));
  FDCE \pending_payload_reg[60] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[60]),
        .Q(\pending_payload_reg_n_0_[60] ));
  FDCE \pending_payload_reg[61] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[61]),
        .Q(\pending_payload_reg_n_0_[61] ));
  FDCE \pending_payload_reg[62] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[62]),
        .Q(\pending_payload_reg_n_0_[62] ));
  FDCE \pending_payload_reg[63] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[63]),
        .Q(\pending_payload_reg_n_0_[63] ));
  FDCE \pending_payload_reg[64] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[64]),
        .Q(\pending_payload_reg_n_0_[64] ));
  FDCE \pending_payload_reg[65] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[65]),
        .Q(\pending_payload_reg_n_0_[65] ));
  FDCE \pending_payload_reg[66] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[66]),
        .Q(\pending_payload_reg_n_0_[66] ));
  FDCE \pending_payload_reg[67] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[67]),
        .Q(\pending_payload_reg_n_0_[67] ));
  FDCE \pending_payload_reg[68] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[68]),
        .Q(\pending_payload_reg_n_0_[68] ));
  FDCE \pending_payload_reg[69] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[69]),
        .Q(\pending_payload_reg_n_0_[69] ));
  FDCE \pending_payload_reg[6] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[6]),
        .Q(\pending_payload_reg_n_0_[6] ));
  FDCE \pending_payload_reg[70] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[70]),
        .Q(\pending_payload_reg_n_0_[70] ));
  FDCE \pending_payload_reg[71] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[71]),
        .Q(\pending_payload_reg_n_0_[71] ));
  FDCE \pending_payload_reg[72] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[72]),
        .Q(\pending_payload_reg_n_0_[72] ));
  FDCE \pending_payload_reg[73] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[73]),
        .Q(\pending_payload_reg_n_0_[73] ));
  FDCE \pending_payload_reg[74] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[74]),
        .Q(\pending_payload_reg_n_0_[74] ));
  FDCE \pending_payload_reg[75] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[75]),
        .Q(\pending_payload_reg_n_0_[75] ));
  FDCE \pending_payload_reg[76] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[76]),
        .Q(\pending_payload_reg_n_0_[76] ));
  FDCE \pending_payload_reg[77] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[77]),
        .Q(\pending_payload_reg_n_0_[77] ));
  FDCE \pending_payload_reg[78] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[78]),
        .Q(\pending_payload_reg_n_0_[78] ));
  FDCE \pending_payload_reg[79] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[79]),
        .Q(\pending_payload_reg_n_0_[79] ));
  FDCE \pending_payload_reg[7] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[7]),
        .Q(\pending_payload_reg_n_0_[7] ));
  FDCE \pending_payload_reg[80] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[80]),
        .Q(\pending_payload_reg_n_0_[80] ));
  FDCE \pending_payload_reg[81] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[81]),
        .Q(\pending_payload_reg_n_0_[81] ));
  FDCE \pending_payload_reg[82] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[82]),
        .Q(\pending_payload_reg_n_0_[82] ));
  FDCE \pending_payload_reg[83] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[83]),
        .Q(\pending_payload_reg_n_0_[83] ));
  FDCE \pending_payload_reg[84] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[84]),
        .Q(\pending_payload_reg_n_0_[84] ));
  FDCE \pending_payload_reg[85] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[85]),
        .Q(\pending_payload_reg_n_0_[85] ));
  FDCE \pending_payload_reg[86] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[86]),
        .Q(\pending_payload_reg_n_0_[86] ));
  FDCE \pending_payload_reg[87] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[87]),
        .Q(\pending_payload_reg_n_0_[87] ));
  FDCE \pending_payload_reg[88] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[88]),
        .Q(\pending_payload_reg_n_0_[88] ));
  FDCE \pending_payload_reg[89] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[89]),
        .Q(\pending_payload_reg_n_0_[89] ));
  FDCE \pending_payload_reg[8] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[8]),
        .Q(\pending_payload_reg_n_0_[8] ));
  FDCE \pending_payload_reg[90] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[90]),
        .Q(\pending_payload_reg_n_0_[90] ));
  FDCE \pending_payload_reg[91] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[91]),
        .Q(\pending_payload_reg_n_0_[91] ));
  FDCE \pending_payload_reg[92] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[92]),
        .Q(\pending_payload_reg_n_0_[92] ));
  FDCE \pending_payload_reg[93] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[93]),
        .Q(\pending_payload_reg_n_0_[93] ));
  FDCE \pending_payload_reg[94] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[94]),
        .Q(\pending_payload_reg_n_0_[94] ));
  FDCE \pending_payload_reg[95] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[95]),
        .Q(\pending_payload_reg_n_0_[95] ));
  FDCE \pending_payload_reg[96] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[96]),
        .Q(\pending_payload_reg_n_0_[96] ));
  FDCE \pending_payload_reg[97] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[97]),
        .Q(\pending_payload_reg_n_0_[97] ));
  FDCE \pending_payload_reg[98] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[98]),
        .Q(\pending_payload_reg_n_0_[98] ));
  FDCE \pending_payload_reg[99] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(held_payload[99]),
        .Q(\pending_payload_reg_n_0_[99] ));
  FDCE \pending_payload_reg[9] 
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\pending_payload[63]_i_1_n_0 ),
        .D(held_payload[9]),
        .Q(\pending_payload_reg_n_0_[9] ));
  FDCE pending_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(pending_i_1_n_0),
        .Q(pending));
  LUT6 #(
    .INIT(64'h0000001000100000)) 
    pending_req_i_1
       (.I0(pending),
        .I1(clear_d[1]),
        .I2(dst_ready_reg_n_0),
        .I3(clear_ack),
        .I4(req_d[1]),
        .I5(ack_reg_n_0),
        .O(pending_req));
  FDCE pending_req_reg
       (.C(pixel_clk),
        .CE(pending_req),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(req_d[1]),
        .Q(pending_req_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \ready_s_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(dst_ready_reg_n_0),
        .Q(ready_s[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \ready_s_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(ready_s[0]),
        .Q(ready_s[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \req_d[1]_i_1 
       (.I0(dst_reset_pipe[1]),
        .O(\req_d[1]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \req_d_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(req),
        .Q(req_d[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \req_d_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\req_d[1]_i_1_n_0 ),
        .D(req_d[0]),
        .Q(req_d[1]));
  LUT6 #(
    .INIT(64'hFFFFFFF300000008)) 
    req_i_1
       (.I0(state__0[1]),
        .I1(req_i_2_n_0),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(state136_out),
        .I5(req),
        .O(req_i_1_n_0));
  LUT5 #(
    .INIT(32'h80808F80)) 
    req_i_2
       (.I0(box_send),
        .I1(ready_s[1]),
        .I2(state__0[1]),
        .I3(clear_ack_s[1]),
        .I4(box_invalidate),
        .O(req_i_2_n_0));
  FDCE req_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(req_i_1_n_0),
        .Q(req));
  FDPE reset_notice_pending_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_reset_event_i_1_n_0),
        .Q(reset_notice_pending));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[10]_i_1__0 
       (.I0(rgb[2]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[10] ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[11]_i_1__0 
       (.I0(rgb[3]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[11] ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[12]_i_1__0 
       (.I0(rgb[4]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[12] ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[13]_i_1__0 
       (.I0(rgb[5]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[13] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_100 
       (.I0(applied_payload[42]),
        .I1(applied_payload[44]),
        .I2(applied_payload[93]),
        .I3(applied_payload[60]),
        .O(\rgb_o[20]_i_100_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_101 
       (.I0(applied_payload[20]),
        .I1(applied_payload[29]),
        .I2(applied_payload[30]),
        .I3(applied_payload[55]),
        .I4(\rgb_o[20]_i_231_n_0 ),
        .O(\rgb_o[20]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rgb_o[20]_i_102 
       (.I0(applied_payload[83]),
        .I1(applied_payload[26]),
        .I2(mailbox_box_valid),
        .I3(applied_payload[89]),
        .O(\rgb_o[20]_i_102_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_104 
       (.I0(applied_payload[10]),
        .I1(applied_payload[17]),
        .I2(applied_payload[18]),
        .I3(applied_payload[24]),
        .I4(\rgb_o[20]_i_241_n_0 ),
        .O(\rgb_o[20]_i_104_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_105 
       (.I0(applied_payload[14]),
        .I1(applied_payload[12]),
        .I2(applied_payload[13]),
        .I3(applied_payload[7]),
        .O(\rgb_o[20]_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \rgb_o[20]_i_106 
       (.I0(applied_payload[70]),
        .I1(applied_payload[69]),
        .I2(applied_payload[71]),
        .I3(applied_payload[68]),
        .I4(\rgb_o[20]_i_242_n_0 ),
        .O(\rgb_o[20]_i_106_n_0 ));
  LUT5 #(
    .INIT(32'hE38AA208)) 
    \rgb_o[20]_i_107 
       (.I0(active_y[6]),
        .I1(\rgb_o[20]_i_243_n_0 ),
        .I2(applied_payload[69]),
        .I3(applied_payload[70]),
        .I4(active_y[5]),
        .O(\rgb_o[20]_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    \rgb_o[20]_i_108 
       (.I0(active_y[4]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(applied_payload[68]),
        .I4(active_y[3]),
        .O(\rgb_o[20]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h88E8)) 
    \rgb_o[20]_i_109 
       (.I0(Q[7]),
        .I1(active_y[2]),
        .I2(active_y[1]),
        .I3(Q[6]),
        .O(\rgb_o[20]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \rgb_o[20]_i_11 
       (.I0(\rgb_o[20]_i_33_n_0 ),
        .I1(\rgb_o[20]_i_34_n_0 ),
        .I2(\rgb_o[20]_i_35_n_0 ),
        .I3(\rgb_o[20]_i_36_n_0 ),
        .I4(\rgb_o[20]_i_37_n_0 ),
        .I5(\rgb_o[20]_i_38_n_0 ),
        .O(\rgb_o[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA95556)) 
    \rgb_o[20]_i_111 
       (.I0(applied_payload[69]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(applied_payload[68]),
        .I4(active_y[5]),
        .I5(\rgb_o[20]_i_244_n_0 ),
        .O(\rgb_o[20]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h84422118)) 
    \rgb_o[20]_i_112 
       (.I0(active_y[3]),
        .I1(applied_payload[68]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(active_y[4]),
        .O(\rgb_o[20]_i_112_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \rgb_o[20]_i_113 
       (.I0(Q[6]),
        .I1(active_y[1]),
        .I2(active_y[2]),
        .I3(Q[7]),
        .O(\rgb_o[20]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rgb_o[20]_i_115 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(applied_payload[68]),
        .I3(applied_payload[69]),
        .O(\rgb_o[20]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h222ABBBC0002AAA8)) 
    \rgb_o[20]_i_116 
       (.I0(active_x[6]),
        .I1(applied_payload[37]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(applied_payload[38]),
        .I5(active_x[5]),
        .O(DI));
  LUT4 #(
    .INIT(16'h0004)) 
    \rgb_o[20]_i_12 
       (.I0(\rgb_o[20]_i_39_n_0 ),
        .I1(\rgb_o[20]_i_40_n_0 ),
        .I2(\rgb_o[20]_i_41_n_0 ),
        .I3(\rgb_o[20]_i_42_n_0 ),
        .O(\rgb_o[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8884444222211118)) 
    \rgb_o[20]_i_120 
       (.I0(active_x[5]),
        .I1(applied_payload[38]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(applied_payload[37]),
        .I5(active_x[6]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_122 
       (.I0(Q[1]),
        .I1(active_x[1]),
        .I2(Q[2]),
        .I3(active_x[2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \rgb_o[20]_i_124 
       (.I0(applied_payload[39]),
        .I1(applied_payload[40]),
        .I2(applied_payload[38]),
        .I3(applied_payload[37]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(left));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rgb_o[20]_i_125 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(applied_payload[37]),
        .I3(applied_payload[38]),
        .O(\rgb_o[20]_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_126 
       (.I0(Q[8]),
        .I1(applied_payload[131]),
        .O(\rgb_o[20]_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_127 
       (.I0(Q[7]),
        .I1(applied_payload[130]),
        .O(\rgb_o[20]_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_128 
       (.I0(Q[6]),
        .I1(applied_payload[129]),
        .O(\rgb_o[20]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_129 
       (.I0(Q[5]),
        .I1(applied_payload[128]),
        .O(\rgb_o[20]_i_129_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_130 
       (.I0(applied_payload[71]),
        .I1(applied_payload[135]),
        .O(\rgb_o[20]_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_131 
       (.I0(applied_payload[70]),
        .I1(applied_payload[134]),
        .O(\rgb_o[20]_i_131_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_132 
       (.I0(applied_payload[69]),
        .I1(applied_payload[133]),
        .O(\rgb_o[20]_i_132_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_133 
       (.I0(applied_payload[68]),
        .I1(applied_payload[132]),
        .O(\rgb_o[20]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h08A2)) 
    \rgb_o[20]_i_136 
       (.I0(active_x[8]),
        .I1(applied_payload[39]),
        .I2(\rgb_o[20]_i_125_n_0 ),
        .I3(applied_payload[40]),
        .O(\rgb_o[20]_i_136_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \rgb_o[20]_i_137 
       (.I0(active_x[7]),
        .I1(applied_payload[38]),
        .I2(applied_payload[37]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(applied_payload[39]),
        .O(\rgb_o[20]_i_137_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rgb_o[20]_i_138 
       (.I0(left),
        .I1(active_x[9]),
        .O(\rgb_o[20]_i_138_n_0 ));
  LUT5 #(
    .INIT(32'h0A42F5BD)) 
    \rgb_o[20]_i_139 
       (.I0(active_x[8]),
        .I1(applied_payload[39]),
        .I2(applied_payload[40]),
        .I3(\rgb_o[20]_i_125_n_0 ),
        .I4(active_x[9]),
        .O(\rgb_o[20]_i_139_n_0 ));
  LUT5 #(
    .INIT(32'hC96C3693)) 
    \rgb_o[20]_i_140 
       (.I0(active_x[7]),
        .I1(applied_payload[40]),
        .I2(\rgb_o[20]_i_125_n_0 ),
        .I3(applied_payload[39]),
        .I4(active_x[8]),
        .O(\rgb_o[20]_i_140_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \rgb_o[20]_i_144 
       (.I0(Q[2]),
        .I1(active_x[2]),
        .I2(active_x[3]),
        .I3(Q[3]),
        .O(\dst_payload_reg[34]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \rgb_o[20]_i_145 
       (.I0(Q[1]),
        .I1(active_x[1]),
        .I2(Q[2]),
        .I3(active_x[2]),
        .O(\dst_payload_reg[34]_0 [1]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \rgb_o[20]_i_146 
       (.I0(Q[0]),
        .I1(active_x[0]),
        .I2(Q[1]),
        .I3(active_x[1]),
        .O(\dst_payload_reg[34]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rgb_o[20]_i_15 
       (.I0(applied_payload[70]),
        .I1(applied_payload[71]),
        .I2(applied_payload[68]),
        .I3(applied_payload[69]),
        .O(\rgb_o[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_17 
       (.I0(applied_payload[103]),
        .I1(applied_payload[102]),
        .I2(applied_payload[97]),
        .I3(applied_payload[98]),
        .I4(applied_payload[101]),
        .I5(applied_payload[104]),
        .O(\rgb_o[20]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_18 
       (.I0(applied_payload[132]),
        .I1(applied_payload[131]),
        .I2(applied_payload[128]),
        .I3(applied_payload[136]),
        .I4(applied_payload[129]),
        .I5(applied_payload[133]),
        .O(\rgb_o[20]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \rgb_o[20]_i_183 
       (.I0(active_y[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(applied_payload[68]),
        .I4(applied_payload[69]),
        .I5(applied_payload[70]),
        .O(\rgb_o[20]_i_183_n_0 ));
  LUT5 #(
    .INIT(32'h0002AAA8)) 
    \rgb_o[20]_i_184 
       (.I0(active_y[5]),
        .I1(applied_payload[68]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(applied_payload[69]),
        .O(\rgb_o[20]_i_184_n_0 ));
  LUT4 #(
    .INIT(16'h1E00)) 
    \rgb_o[20]_i_185 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(applied_payload[68]),
        .I3(active_y[4]),
        .O(\rgb_o[20]_i_185_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \rgb_o[20]_i_186 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(active_y[3]),
        .O(\rgb_o[20]_i_186_n_0 ));
  LUT5 #(
    .INIT(32'hC96C3693)) 
    \rgb_o[20]_i_187 
       (.I0(active_y[6]),
        .I1(applied_payload[71]),
        .I2(\rgb_o[20]_i_115_n_0 ),
        .I3(applied_payload[70]),
        .I4(active_y[7]),
        .O(\rgb_o[20]_i_187_n_0 ));
  LUT6 #(
    .INIT(64'h55560000AAA9FFFF)) 
    \rgb_o[20]_i_188 
       (.I0(applied_payload[69]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(applied_payload[68]),
        .I4(active_y[5]),
        .I5(\rgb_o[20]_i_244_n_0 ),
        .O(\rgb_o[20]_i_188_n_0 ));
  LUT6 #(
    .INIT(64'hCCC666633339999C)) 
    \rgb_o[20]_i_189 
       (.I0(active_y[4]),
        .I1(applied_payload[69]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(applied_payload[68]),
        .I5(active_y[5]),
        .O(\rgb_o[20]_i_189_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rgb_o[20]_i_19 
       (.I0(applied_payload[134]),
        .I1(applied_payload[135]),
        .I2(applied_payload[130]),
        .O(\rgb_o[20]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hC663399C)) 
    \rgb_o[20]_i_190 
       (.I0(active_y[3]),
        .I1(applied_payload[68]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(active_y[4]),
        .O(\rgb_o[20]_i_190_n_0 ));
  LUT5 #(
    .INIT(32'h0080AA2A)) 
    \rgb_o[20]_i_191 
       (.I0(active_y[8]),
        .I1(applied_payload[70]),
        .I2(applied_payload[71]),
        .I3(\rgb_o[20]_i_115_n_0 ),
        .I4(Q[9]),
        .O(\rgb_o[20]_i_191_n_0 ));
  LUT4 #(
    .INIT(16'h08A2)) 
    \rgb_o[20]_i_192 
       (.I0(active_y[7]),
        .I1(applied_payload[70]),
        .I2(\rgb_o[20]_i_115_n_0 ),
        .I3(applied_payload[71]),
        .O(\rgb_o[20]_i_192_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF55D5)) 
    \rgb_o[20]_i_193 
       (.I0(active_y[8]),
        .I1(applied_payload[70]),
        .I2(applied_payload[71]),
        .I3(\rgb_o[20]_i_115_n_0 ),
        .I4(Q[9]),
        .O(\rgb_o[20]_i_193_n_0 ));
  LUT6 #(
    .INIT(64'hC96CCC6636933399)) 
    \rgb_o[20]_i_194 
       (.I0(active_y[7]),
        .I1(Q[9]),
        .I2(\rgb_o[20]_i_115_n_0 ),
        .I3(applied_payload[71]),
        .I4(applied_payload[70]),
        .I5(active_y[8]),
        .O(\rgb_o[20]_i_194_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rgb_o[20]_i_195 
       (.I0(Q[7]),
        .I1(active_y[2]),
        .O(\dst_payload_reg[66]_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \rgb_o[20]_i_199 
       (.I0(Q[6]),
        .I1(active_y[1]),
        .I2(active_y[2]),
        .I3(Q[7]),
        .O(\dst_payload_reg[65]_0 [1]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \rgb_o[20]_i_1__0 
       (.I0(\rgb_o_reg[8] ),
        .I1(\rgb_o[20]_i_3_n_0 ),
        .I2(\rgb_o[20]_i_4_n_0 ),
        .I3(\rgb_o[20]_i_5_n_0 ),
        .I4(\rgb_o[20]_i_6_n_0 ),
        .I5(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rgb_o[20]_i_20 
       (.I0(\rgb_o_reg[20]_i_56_n_7 ),
        .I1(O[1]),
        .I2(\rgb_o_reg[20]_i_56_n_5 ),
        .I3(O[0]),
        .I4(\rgb_o[20]_i_6_0 ),
        .I5(\rgb_o[20]_i_59_n_0 ),
        .O(\rgb_o[20]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \rgb_o[20]_i_200 
       (.I0(Q[5]),
        .I1(active_y[0]),
        .I2(Q[6]),
        .I3(active_y[1]),
        .O(\dst_payload_reg[65]_0 [0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_216 
       (.I0(applied_payload[141]),
        .I1(applied_payload[140]),
        .I2(applied_payload[143]),
        .I3(applied_payload[142]),
        .O(\rgb_o[20]_i_216_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_217 
       (.I0(applied_payload[158]),
        .I1(applied_payload[157]),
        .I2(applied_payload[159]),
        .I3(applied_payload[156]),
        .O(\rgb_o[20]_i_217_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_218 
       (.I0(applied_payload[51]),
        .I1(applied_payload[62]),
        .I2(applied_payload[27]),
        .I3(applied_payload[5]),
        .O(\rgb_o[20]_i_218_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_219 
       (.I0(applied_payload[127]),
        .I1(applied_payload[124]),
        .I2(applied_payload[126]),
        .I3(applied_payload[125]),
        .O(\rgb_o[20]_i_219_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_220 
       (.I0(applied_payload[103]),
        .I1(applied_payload[100]),
        .I2(applied_payload[102]),
        .I3(applied_payload[101]),
        .O(\rgb_o[20]_i_220_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_222 
       (.I0(legal_box2[31]),
        .I1(applied_payload[127]),
        .I2(legal_box2[30]),
        .I3(applied_payload[126]),
        .O(\rgb_o[20]_i_222_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_223 
       (.I0(legal_box2[29]),
        .I1(applied_payload[125]),
        .I2(legal_box2[28]),
        .I3(applied_payload[124]),
        .O(\rgb_o[20]_i_223_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_224 
       (.I0(legal_box2[27]),
        .I1(applied_payload[123]),
        .I2(legal_box2[26]),
        .I3(applied_payload[122]),
        .O(\rgb_o[20]_i_224_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_225 
       (.I0(legal_box2[25]),
        .I1(applied_payload[121]),
        .I2(legal_box2[24]),
        .I3(applied_payload[120]),
        .O(\rgb_o[20]_i_225_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_226 
       (.I0(applied_payload[127]),
        .I1(legal_box2[31]),
        .I2(applied_payload[126]),
        .I3(legal_box2[30]),
        .O(\rgb_o[20]_i_226_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_227 
       (.I0(applied_payload[125]),
        .I1(legal_box2[29]),
        .I2(applied_payload[124]),
        .I3(legal_box2[28]),
        .O(\rgb_o[20]_i_227_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_228 
       (.I0(applied_payload[123]),
        .I1(legal_box2[27]),
        .I2(applied_payload[122]),
        .I3(legal_box2[26]),
        .O(\rgb_o[20]_i_228_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_229 
       (.I0(applied_payload[121]),
        .I1(legal_box2[25]),
        .I2(applied_payload[120]),
        .I3(legal_box2[24]),
        .O(\rgb_o[20]_i_229_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_230 
       (.I0(applied_payload[85]),
        .I1(applied_payload[88]),
        .I2(applied_payload[86]),
        .I3(applied_payload[91]),
        .O(\rgb_o[20]_i_230_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rgb_o[20]_i_231 
       (.I0(applied_payload[0]),
        .I1(applied_payload[87]),
        .I2(applied_payload[43]),
        .I3(applied_payload[46]),
        .O(\rgb_o[20]_i_231_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_233 
       (.I0(legal_box1[31]),
        .I1(applied_payload[159]),
        .I2(legal_box1[30]),
        .I3(applied_payload[158]),
        .O(\rgb_o[20]_i_233_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_234 
       (.I0(legal_box1[29]),
        .I1(applied_payload[157]),
        .I2(legal_box1[28]),
        .I3(applied_payload[156]),
        .O(\rgb_o[20]_i_234_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_235 
       (.I0(legal_box1[27]),
        .I1(applied_payload[155]),
        .I2(legal_box1[26]),
        .I3(applied_payload[154]),
        .O(\rgb_o[20]_i_235_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_236 
       (.I0(legal_box1[25]),
        .I1(applied_payload[153]),
        .I2(legal_box1[24]),
        .I3(applied_payload[152]),
        .O(\rgb_o[20]_i_236_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_237 
       (.I0(applied_payload[159]),
        .I1(legal_box1[31]),
        .I2(applied_payload[158]),
        .I3(legal_box1[30]),
        .O(\rgb_o[20]_i_237_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_238 
       (.I0(applied_payload[157]),
        .I1(legal_box1[29]),
        .I2(applied_payload[156]),
        .I3(legal_box1[28]),
        .O(\rgb_o[20]_i_238_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_239 
       (.I0(applied_payload[155]),
        .I1(legal_box1[27]),
        .I2(applied_payload[154]),
        .I3(legal_box1[26]),
        .O(\rgb_o[20]_i_239_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_24 
       (.I0(applied_payload[40]),
        .I1(applied_payload[104]),
        .O(\rgb_o[20]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_240 
       (.I0(applied_payload[153]),
        .I1(legal_box1[25]),
        .I2(applied_payload[152]),
        .I3(legal_box1[24]),
        .O(\rgb_o[20]_i_240_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_241 
       (.I0(applied_payload[47]),
        .I1(applied_payload[31]),
        .I2(applied_payload[16]),
        .I3(applied_payload[15]),
        .O(\rgb_o[20]_i_241_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_242 
       (.I0(applied_payload[95]),
        .I1(applied_payload[48]),
        .I2(applied_payload[75]),
        .I3(applied_payload[49]),
        .O(\rgb_o[20]_i_242_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rgb_o[20]_i_243 
       (.I0(applied_payload[68]),
        .I1(Q[8]),
        .I2(Q[7]),
        .O(\rgb_o[20]_i_243_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    \rgb_o[20]_i_244 
       (.I0(active_y[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(applied_payload[68]),
        .I4(applied_payload[69]),
        .I5(applied_payload[70]),
        .O(\rgb_o[20]_i_244_n_0 ));
  LUT5 #(
    .INIT(32'h01FE0000)) 
    \rgb_o[20]_i_245 
       (.I0(applied_payload[37]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(applied_payload[38]),
        .I4(active_x[6]),
        .O(\rgb_o[20]_i_245_n_0 ));
  LUT4 #(
    .INIT(16'h1E00)) 
    \rgb_o[20]_i_246 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(applied_payload[37]),
        .I3(active_x[5]),
        .O(\rgb_o[20]_i_246_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \rgb_o[20]_i_247 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(active_x[4]),
        .O(\rgb_o[20]_i_247_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rgb_o[20]_i_248 
       (.I0(Q[3]),
        .I1(active_x[3]),
        .O(\rgb_o[20]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'h3339999CCCC66663)) 
    \rgb_o[20]_i_249 
       (.I0(active_x[6]),
        .I1(applied_payload[39]),
        .I2(\rgb_o[20]_i_294_n_0 ),
        .I3(applied_payload[37]),
        .I4(applied_payload[38]),
        .I5(active_x[7]),
        .O(\rgb_o[20]_i_249_n_0 ));
  LUT6 #(
    .INIT(64'hCCC666633339999C)) 
    \rgb_o[20]_i_250 
       (.I0(active_x[5]),
        .I1(applied_payload[38]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(applied_payload[37]),
        .I5(active_x[6]),
        .O(\rgb_o[20]_i_250_n_0 ));
  LUT5 #(
    .INIT(32'hC663399C)) 
    \rgb_o[20]_i_251 
       (.I0(active_x[4]),
        .I1(applied_payload[37]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(active_x[5]),
        .O(\rgb_o[20]_i_251_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_26 
       (.I0(applied_payload[39]),
        .I1(applied_payload[103]),
        .O(\rgb_o[20]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_27 
       (.I0(applied_payload[38]),
        .I1(applied_payload[102]),
        .O(\rgb_o[20]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_271 
       (.I0(legal_box2[23]),
        .I1(applied_payload[119]),
        .I2(legal_box2[22]),
        .I3(applied_payload[118]),
        .O(\rgb_o[20]_i_271_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_272 
       (.I0(legal_box2[21]),
        .I1(applied_payload[117]),
        .I2(legal_box2[20]),
        .I3(applied_payload[116]),
        .O(\rgb_o[20]_i_272_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_273 
       (.I0(legal_box2[19]),
        .I1(applied_payload[115]),
        .I2(legal_box2[18]),
        .I3(applied_payload[114]),
        .O(\rgb_o[20]_i_273_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_274 
       (.I0(legal_box2[17]),
        .I1(applied_payload[113]),
        .I2(legal_box2[16]),
        .I3(applied_payload[112]),
        .O(\rgb_o[20]_i_274_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_275 
       (.I0(applied_payload[119]),
        .I1(legal_box2[23]),
        .I2(applied_payload[118]),
        .I3(legal_box2[22]),
        .O(\rgb_o[20]_i_275_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_276 
       (.I0(applied_payload[117]),
        .I1(legal_box2[21]),
        .I2(applied_payload[116]),
        .I3(legal_box2[20]),
        .O(\rgb_o[20]_i_276_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_277 
       (.I0(applied_payload[115]),
        .I1(legal_box2[19]),
        .I2(applied_payload[114]),
        .I3(legal_box2[18]),
        .O(\rgb_o[20]_i_277_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_278 
       (.I0(applied_payload[113]),
        .I1(legal_box2[17]),
        .I2(applied_payload[112]),
        .I3(legal_box2[16]),
        .O(\rgb_o[20]_i_278_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_28 
       (.I0(applied_payload[37]),
        .I1(applied_payload[101]),
        .O(\rgb_o[20]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_283 
       (.I0(legal_box1[23]),
        .I1(applied_payload[151]),
        .I2(legal_box1[22]),
        .I3(applied_payload[150]),
        .O(\rgb_o[20]_i_283_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_284 
       (.I0(legal_box1[21]),
        .I1(applied_payload[149]),
        .I2(legal_box1[20]),
        .I3(applied_payload[148]),
        .O(\rgb_o[20]_i_284_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_285 
       (.I0(legal_box1[19]),
        .I1(applied_payload[147]),
        .I2(legal_box1[18]),
        .I3(applied_payload[146]),
        .O(\rgb_o[20]_i_285_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_286 
       (.I0(legal_box1[17]),
        .I1(applied_payload[145]),
        .I2(legal_box1[16]),
        .I3(applied_payload[144]),
        .O(\rgb_o[20]_i_286_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_287 
       (.I0(applied_payload[151]),
        .I1(legal_box1[23]),
        .I2(applied_payload[150]),
        .I3(legal_box1[22]),
        .O(\rgb_o[20]_i_287_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_288 
       (.I0(applied_payload[149]),
        .I1(legal_box1[21]),
        .I2(applied_payload[148]),
        .I3(legal_box1[20]),
        .O(\rgb_o[20]_i_288_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_289 
       (.I0(applied_payload[147]),
        .I1(legal_box1[19]),
        .I2(applied_payload[146]),
        .I3(legal_box1[18]),
        .O(\rgb_o[20]_i_289_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_29 
       (.I0(Q[4]),
        .I1(applied_payload[100]),
        .O(\rgb_o[20]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_290 
       (.I0(applied_payload[145]),
        .I1(legal_box1[17]),
        .I2(applied_payload[144]),
        .I3(legal_box1[16]),
        .O(\rgb_o[20]_i_290_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rgb_o[20]_i_294 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\rgb_o[20]_i_294_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_296 
       (.I0(legal_box2[15]),
        .I1(applied_payload[111]),
        .I2(legal_box2[14]),
        .I3(applied_payload[110]),
        .O(\rgb_o[20]_i_296_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_297 
       (.I0(legal_box2[13]),
        .I1(applied_payload[109]),
        .I2(legal_box2[12]),
        .I3(applied_payload[108]),
        .O(\rgb_o[20]_i_297_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_298 
       (.I0(legal_box2[11]),
        .I1(applied_payload[107]),
        .I2(legal_box2[10]),
        .I3(applied_payload[106]),
        .O(\rgb_o[20]_i_298_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_299 
       (.I0(legal_box2[9]),
        .I1(applied_payload[105]),
        .I2(legal_box2[8]),
        .I3(applied_payload[104]),
        .O(\rgb_o[20]_i_299_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \rgb_o[20]_i_3 
       (.I0(\rgb_o_reg[0] ),
        .I1(\rgb_o[20]_i_11_n_0 ),
        .I2(\rgb_o[20]_i_12_n_0 ),
        .I3(\rgb_o_reg[20]_i_13_n_2 ),
        .I4(\rgb_o_reg[20]_i_14_n_2 ),
        .I5(\rgb_o[20]_i_15_n_0 ),
        .O(\rgb_o[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_300 
       (.I0(applied_payload[111]),
        .I1(legal_box2[15]),
        .I2(applied_payload[110]),
        .I3(legal_box2[14]),
        .O(\rgb_o[20]_i_300_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_301 
       (.I0(applied_payload[109]),
        .I1(legal_box2[13]),
        .I2(applied_payload[108]),
        .I3(legal_box2[12]),
        .O(\rgb_o[20]_i_301_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_302 
       (.I0(applied_payload[107]),
        .I1(legal_box2[11]),
        .I2(applied_payload[106]),
        .I3(legal_box2[10]),
        .O(\rgb_o[20]_i_302_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_303 
       (.I0(applied_payload[105]),
        .I1(legal_box2[9]),
        .I2(applied_payload[104]),
        .I3(legal_box2[8]),
        .O(\rgb_o[20]_i_303_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_306 
       (.I0(applied_payload[63]),
        .O(p_0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_307 
       (.I0(applied_payload[62]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_308 
       (.I0(applied_payload[61]),
        .O(p_0_in[29]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_309 
       (.I0(applied_payload[60]),
        .O(p_0_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_310 
       (.I0(applied_payload[59]),
        .O(p_0_in[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_311 
       (.I0(applied_payload[58]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_312 
       (.I0(applied_payload[57]),
        .O(p_0_in[25]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_313 
       (.I0(applied_payload[56]),
        .O(p_0_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_314 
       (.I0(applied_payload[55]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_315 
       (.I0(applied_payload[54]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_316 
       (.I0(applied_payload[53]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_318 
       (.I0(legal_box1[15]),
        .I1(applied_payload[143]),
        .I2(legal_box1[14]),
        .I3(applied_payload[142]),
        .O(\rgb_o[20]_i_318_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_319 
       (.I0(legal_box1[13]),
        .I1(applied_payload[141]),
        .I2(legal_box1[12]),
        .I3(applied_payload[140]),
        .O(\rgb_o[20]_i_319_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_320 
       (.I0(legal_box1[11]),
        .I1(applied_payload[139]),
        .I2(legal_box1[10]),
        .I3(applied_payload[138]),
        .O(\rgb_o[20]_i_320_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_321 
       (.I0(legal_box1[9]),
        .I1(applied_payload[137]),
        .I2(legal_box1[8]),
        .I3(applied_payload[136]),
        .O(\rgb_o[20]_i_321_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_322 
       (.I0(applied_payload[143]),
        .I1(legal_box1[15]),
        .I2(applied_payload[142]),
        .I3(legal_box1[14]),
        .O(\rgb_o[20]_i_322_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_323 
       (.I0(applied_payload[141]),
        .I1(legal_box1[13]),
        .I2(applied_payload[140]),
        .I3(legal_box1[12]),
        .O(\rgb_o[20]_i_323_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_324 
       (.I0(applied_payload[139]),
        .I1(legal_box1[11]),
        .I2(applied_payload[138]),
        .I3(legal_box1[10]),
        .O(\rgb_o[20]_i_324_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_325 
       (.I0(applied_payload[137]),
        .I1(legal_box1[9]),
        .I2(applied_payload[136]),
        .I3(legal_box1[8]),
        .O(\rgb_o[20]_i_325_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_328 
       (.I0(applied_payload[95]),
        .O(\rgb_o[20]_i_328_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_329 
       (.I0(applied_payload[94]),
        .O(\rgb_o[20]_i_329_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_33 
       (.I0(\rgb_o[20]_i_86_n_0 ),
        .I1(applied_payload[130]),
        .I2(applied_payload[129]),
        .I3(applied_payload[131]),
        .I4(applied_payload[128]),
        .I5(\rgb_o[20]_i_87_n_0 ),
        .O(\rgb_o[20]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_330 
       (.I0(applied_payload[93]),
        .O(\rgb_o[20]_i_330_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_331 
       (.I0(applied_payload[92]),
        .O(\rgb_o[20]_i_331_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_332 
       (.I0(applied_payload[91]),
        .O(\rgb_o[20]_i_332_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_333 
       (.I0(applied_payload[90]),
        .O(\rgb_o[20]_i_333_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_334 
       (.I0(applied_payload[89]),
        .O(\rgb_o[20]_i_334_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_335 
       (.I0(applied_payload[88]),
        .O(\rgb_o[20]_i_335_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_336 
       (.I0(applied_payload[87]),
        .O(\rgb_o[20]_i_336_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_337 
       (.I0(applied_payload[86]),
        .O(\rgb_o[20]_i_337_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_338 
       (.I0(applied_payload[85]),
        .O(\rgb_o[20]_i_338_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_339 
       (.I0(legal_box2[7]),
        .I1(applied_payload[103]),
        .I2(legal_box2[6]),
        .I3(applied_payload[102]),
        .O(\rgb_o[20]_i_339_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rgb_o[20]_i_34 
       (.I0(\rgb_o[20]_i_88_n_0 ),
        .I1(applied_payload[146]),
        .I2(applied_payload[145]),
        .I3(applied_payload[147]),
        .I4(applied_payload[144]),
        .I5(\rgb_o[20]_i_89_n_0 ),
        .O(\rgb_o[20]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_340 
       (.I0(legal_box2[5]),
        .I1(applied_payload[101]),
        .I2(legal_box2[4]),
        .I3(applied_payload[100]),
        .O(\rgb_o[20]_i_340_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_341 
       (.I0(legal_box2[3]),
        .I1(applied_payload[99]),
        .I2(legal_box2[2]),
        .I3(applied_payload[98]),
        .O(\rgb_o[20]_i_341_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_342 
       (.I0(legal_box2[1]),
        .I1(applied_payload[97]),
        .I2(Q[0]),
        .I3(applied_payload[96]),
        .O(\rgb_o[20]_i_342_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_343 
       (.I0(applied_payload[103]),
        .I1(legal_box2[7]),
        .I2(applied_payload[102]),
        .I3(legal_box2[6]),
        .O(\rgb_o[20]_i_343_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_344 
       (.I0(applied_payload[101]),
        .I1(legal_box2[5]),
        .I2(applied_payload[100]),
        .I3(legal_box2[4]),
        .O(\rgb_o[20]_i_344_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_345 
       (.I0(applied_payload[99]),
        .I1(legal_box2[3]),
        .I2(applied_payload[98]),
        .I3(legal_box2[2]),
        .O(\rgb_o[20]_i_345_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_346 
       (.I0(applied_payload[97]),
        .I1(legal_box2[1]),
        .I2(applied_payload[96]),
        .I3(Q[0]),
        .O(\rgb_o[20]_i_346_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_349 
       (.I0(applied_payload[52]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_35 
       (.I0(\rgb_o[20]_i_90_n_0 ),
        .I1(applied_payload[81]),
        .I2(applied_payload[84]),
        .I3(applied_payload[6]),
        .I4(applied_payload[4]),
        .I5(\rgb_o[20]_i_91_n_0 ),
        .O(\rgb_o[20]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_350 
       (.I0(applied_payload[51]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_351 
       (.I0(applied_payload[50]),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_352 
       (.I0(applied_payload[49]),
        .O(p_0_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_353 
       (.I0(applied_payload[48]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_354 
       (.I0(applied_payload[47]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_355 
       (.I0(applied_payload[46]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_356 
       (.I0(applied_payload[45]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_357 
       (.I0(legal_box1[7]),
        .I1(applied_payload[135]),
        .I2(legal_box1[6]),
        .I3(applied_payload[134]),
        .O(\rgb_o[20]_i_357_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_358 
       (.I0(legal_box1[5]),
        .I1(applied_payload[133]),
        .I2(legal_box1[4]),
        .I3(applied_payload[132]),
        .O(\rgb_o[20]_i_358_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_359 
       (.I0(legal_box1[3]),
        .I1(applied_payload[131]),
        .I2(legal_box1[2]),
        .I3(applied_payload[130]),
        .O(\rgb_o[20]_i_359_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    \rgb_o[20]_i_36 
       (.I0(applied_payload[39]),
        .I1(applied_payload[40]),
        .I2(applied_payload[38]),
        .I3(Q[4]),
        .I4(applied_payload[37]),
        .I5(\rgb_o[20]_i_92_n_0 ),
        .O(\rgb_o[20]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_360 
       (.I0(legal_box1[1]),
        .I1(applied_payload[129]),
        .I2(Q[5]),
        .I3(applied_payload[128]),
        .O(\rgb_o[20]_i_360_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_361 
       (.I0(applied_payload[135]),
        .I1(legal_box1[7]),
        .I2(applied_payload[134]),
        .I3(legal_box1[6]),
        .O(\rgb_o[20]_i_361_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_362 
       (.I0(applied_payload[133]),
        .I1(legal_box1[5]),
        .I2(applied_payload[132]),
        .I3(legal_box1[4]),
        .O(\rgb_o[20]_i_362_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_363 
       (.I0(applied_payload[131]),
        .I1(legal_box1[3]),
        .I2(applied_payload[130]),
        .I3(legal_box1[2]),
        .O(\rgb_o[20]_i_363_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_364 
       (.I0(applied_payload[129]),
        .I1(legal_box1[1]),
        .I2(applied_payload[128]),
        .I3(Q[5]),
        .O(\rgb_o[20]_i_364_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_367 
       (.I0(applied_payload[84]),
        .O(\rgb_o[20]_i_367_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_368 
       (.I0(applied_payload[83]),
        .O(\rgb_o[20]_i_368_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_369 
       (.I0(applied_payload[82]),
        .O(\rgb_o[20]_i_369_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rgb_o[20]_i_37 
       (.I0(\rgb_o[20]_i_93_n_0 ),
        .I1(applied_payload[123]),
        .I2(applied_payload[120]),
        .I3(applied_payload[122]),
        .I4(applied_payload[121]),
        .I5(\rgb_o[20]_i_94_n_0 ),
        .O(\rgb_o[20]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_370 
       (.I0(applied_payload[81]),
        .O(\rgb_o[20]_i_370_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_371 
       (.I0(applied_payload[80]),
        .O(\rgb_o[20]_i_371_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_372 
       (.I0(applied_payload[79]),
        .O(\rgb_o[20]_i_372_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_373 
       (.I0(applied_payload[78]),
        .O(\rgb_o[20]_i_373_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_374 
       (.I0(applied_payload[77]),
        .O(\rgb_o[20]_i_374_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_376 
       (.I0(applied_payload[44]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_377 
       (.I0(applied_payload[43]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_378 
       (.I0(applied_payload[42]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_379 
       (.I0(applied_payload[41]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_38 
       (.I0(\rgb_o[20]_i_95_n_0 ),
        .I1(applied_payload[99]),
        .I2(applied_payload[96]),
        .I3(applied_payload[98]),
        .I4(applied_payload[97]),
        .I5(\rgb_o[20]_i_96_n_0 ),
        .O(\rgb_o[20]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_380 
       (.I0(applied_payload[40]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_381 
       (.I0(applied_payload[39]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_382 
       (.I0(applied_payload[38]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_383 
       (.I0(applied_payload[37]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_385 
       (.I0(applied_payload[76]),
        .O(\rgb_o[20]_i_385_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_386 
       (.I0(applied_payload[75]),
        .O(\rgb_o[20]_i_386_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_387 
       (.I0(applied_payload[74]),
        .O(\rgb_o[20]_i_387_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_388 
       (.I0(applied_payload[73]),
        .O(\rgb_o[20]_i_388_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_389 
       (.I0(applied_payload[71]),
        .O(\rgb_o[20]_i_389_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \rgb_o[20]_i_39 
       (.I0(\rgb_o[20]_i_97_n_0 ),
        .I1(applied_payload[57]),
        .I2(applied_payload[59]),
        .I3(\rgb_o_reg[20]_i_98_n_0 ),
        .I4(applied_payload[58]),
        .I5(\rgb_o[20]_i_99_n_0 ),
        .O(\rgb_o[20]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_390 
       (.I0(applied_payload[70]),
        .O(\rgb_o[20]_i_390_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_391 
       (.I0(applied_payload[69]),
        .O(\rgb_o[20]_i_391_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_392 
       (.I0(Q[9]),
        .O(\rgb_o[20]_i_392_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_393 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_394 
       (.I0(Q[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_395 
       (.I0(Q[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_396 
       (.I0(Q[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_397 
       (.I0(Q[1]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_398 
       (.I0(Q[5]),
        .O(\rgb_o[20]_i_398_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_399 
       (.I0(applied_payload[68]),
        .O(\rgb_o[20]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \rgb_o[20]_i_4 
       (.I0(Q[4]),
        .I1(applied_payload[37]),
        .I2(applied_payload[38]),
        .I3(applied_payload[40]),
        .I4(applied_payload[39]),
        .I5(\rgb_o_reg[0]_0 ),
        .O(\rgb_o[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rgb_o[20]_i_40 
       (.I0(\rgb_o[20]_i_100_n_0 ),
        .I1(applied_payload[92]),
        .I2(applied_payload[11]),
        .I3(applied_payload[73]),
        .I4(applied_payload[9]),
        .I5(\rgb_o[20]_i_101_n_0 ),
        .O(\rgb_o[20]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_400 
       (.I0(Q[8]),
        .O(\rgb_o[20]_i_400_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_401 
       (.I0(Q[7]),
        .O(\rgb_o[20]_i_401_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_402 
       (.I0(Q[6]),
        .O(\rgb_o[20]_i_402_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \rgb_o[20]_i_41 
       (.I0(\rgb_o[20]_i_102_n_0 ),
        .I1(\rgb_o_reg[20]_i_103_n_0 ),
        .I2(applied_payload[80]),
        .I3(applied_payload[82]),
        .I4(applied_payload[41]),
        .I5(\rgb_o[20]_i_104_n_0 ),
        .O(\rgb_o[20]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_42 
       (.I0(\rgb_o[20]_i_105_n_0 ),
        .I1(applied_payload[63]),
        .I2(applied_payload[23]),
        .I3(applied_payload[61]),
        .I4(applied_payload[8]),
        .I5(\rgb_o[20]_i_106_n_0 ),
        .O(\rgb_o[20]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0AC2AFAB0080AA2A)) 
    \rgb_o[20]_i_44 
       (.I0(active_y[8]),
        .I1(applied_payload[70]),
        .I2(applied_payload[71]),
        .I3(\rgb_o[20]_i_115_n_0 ),
        .I4(Q[9]),
        .I5(active_y[7]),
        .O(\rgb_o[20]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rgb_o[20]_i_45 
       (.I0(Q[9]),
        .I1(\rgb_o[20]_i_115_n_0 ),
        .I2(applied_payload[71]),
        .I3(applied_payload[70]),
        .O(\rgb_o[20]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8148884424122211)) 
    \rgb_o[20]_i_46 
       (.I0(active_y[7]),
        .I1(Q[9]),
        .I2(\rgb_o[20]_i_115_n_0 ),
        .I3(applied_payload[71]),
        .I4(applied_payload[70]),
        .I5(active_y[8]),
        .O(\rgb_o[20]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h2CBA08A2)) 
    \rgb_o[20]_i_49 
       (.I0(active_x[8]),
        .I1(applied_payload[39]),
        .I2(\rgb_o[20]_i_125_n_0 ),
        .I3(applied_payload[40]),
        .I4(active_x[7]),
        .O(\rgb_o[20]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \rgb_o[20]_i_5 
       (.I0(\rgb_o[20]_i_17_n_0 ),
        .I1(applied_payload[100]),
        .I2(applied_payload[96]),
        .I3(applied_payload[99]),
        .I4(\rgb_o[20]_i_18_n_0 ),
        .I5(\rgb_o[20]_i_19_n_0 ),
        .O(\rgb_o[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_50 
       (.I0(left),
        .I1(active_x[9]),
        .O(\rgb_o[20]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h81482412)) 
    \rgb_o[20]_i_51 
       (.I0(active_x[7]),
        .I1(applied_payload[40]),
        .I2(\rgb_o[20]_i_125_n_0 ),
        .I3(applied_payload[39]),
        .I4(active_x[8]),
        .O(\rgb_o[20]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rgb_o[20]_i_59 
       (.I0(\rgb_o_reg[20]_i_56_n_0 ),
        .I1(\rgb_o_reg[20]_i_134_n_7 ),
        .I2(O[2]),
        .I3(\rgb_o_reg[20]_i_56_n_6 ),
        .O(\rgb_o[20]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_6 
       (.I0(\rgb_o[20]_i_20_n_0 ),
        .I1(\rgb_o_reg[0]_1 ),
        .I2(\rgb_o_reg[0]_2 ),
        .I3(\rgb_o_reg[0]_3 ),
        .O(\rgb_o[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_75 
       (.I0(Q[3]),
        .I1(applied_payload[99]),
        .O(\rgb_o[20]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_76 
       (.I0(Q[2]),
        .I1(applied_payload[98]),
        .O(\rgb_o[20]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_77 
       (.I0(Q[1]),
        .I1(applied_payload[97]),
        .O(\rgb_o[20]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_78 
       (.I0(Q[0]),
        .I1(applied_payload[96]),
        .O(\rgb_o[20]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_84 
       (.I0(Q[9]),
        .I1(applied_payload[136]),
        .O(\rgb_o[20]_i_84_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_86 
       (.I0(applied_payload[133]),
        .I1(applied_payload[132]),
        .I2(applied_payload[135]),
        .I3(applied_payload[134]),
        .O(\rgb_o[20]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_87 
       (.I0(applied_payload[136]),
        .I1(applied_payload[137]),
        .I2(applied_payload[138]),
        .I3(applied_payload[139]),
        .I4(\rgb_o[20]_i_216_n_0 ),
        .O(\rgb_o[20]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_88 
       (.I0(applied_payload[149]),
        .I1(applied_payload[148]),
        .I2(applied_payload[151]),
        .I3(applied_payload[150]),
        .O(\rgb_o[20]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_89 
       (.I0(applied_payload[152]),
        .I1(applied_payload[155]),
        .I2(applied_payload[153]),
        .I3(applied_payload[154]),
        .I4(\rgb_o[20]_i_217_n_0 ),
        .O(\rgb_o[20]_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_90 
       (.I0(Q[9]),
        .I1(applied_payload[77]),
        .I2(applied_payload[22]),
        .I3(applied_payload[19]),
        .O(\rgb_o[20]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_91 
       (.I0(applied_payload[53]),
        .I1(applied_payload[74]),
        .I2(applied_payload[3]),
        .I3(applied_payload[52]),
        .I4(\rgb_o[20]_i_218_n_0 ),
        .O(\rgb_o[20]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rgb_o[20]_i_92 
       (.I0(applied_payload[79]),
        .I1(applied_payload[25]),
        .I2(applied_payload[54]),
        .I3(applied_payload[78]),
        .I4(applied_payload[2]),
        .I5(applied_payload[1]),
        .O(\rgb_o[20]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_93 
       (.I0(applied_payload[107]),
        .I1(applied_payload[104]),
        .I2(applied_payload[106]),
        .I3(applied_payload[105]),
        .O(\rgb_o[20]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_94 
       (.I0(applied_payload[109]),
        .I1(applied_payload[110]),
        .I2(applied_payload[108]),
        .I3(applied_payload[111]),
        .I4(\rgb_o[20]_i_219_n_0 ),
        .O(\rgb_o[20]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_95 
       (.I0(applied_payload[115]),
        .I1(applied_payload[112]),
        .I2(applied_payload[114]),
        .I3(applied_payload[113]),
        .O(\rgb_o[20]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_96 
       (.I0(applied_payload[117]),
        .I1(applied_payload[118]),
        .I2(applied_payload[116]),
        .I3(applied_payload[119]),
        .I4(\rgb_o[20]_i_220_n_0 ),
        .O(\rgb_o[20]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_97 
       (.I0(applied_payload[50]),
        .I1(applied_payload[56]),
        .I2(applied_payload[28]),
        .I3(applied_payload[21]),
        .O(\rgb_o[20]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rgb_o[20]_i_99 
       (.I0(applied_payload[94]),
        .I1(applied_payload[90]),
        .I2(applied_payload[45]),
        .I3(applied_payload[76]),
        .I4(\rgb_o[20]_i_230_n_0 ),
        .O(\rgb_o[20]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[8]_i_1__0 
       (.I0(rgb[0]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[8] ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \rgb_o[9]_i_1__0 
       (.I0(rgb[1]),
        .I1(\rgb_o_reg[8] ),
        .I2(\rgb_o[20]_i_3_n_0 ),
        .I3(\rgb_o[20]_i_4_n_0 ),
        .I4(\rgb_o[20]_i_5_n_0 ),
        .I5(\rgb_o[20]_i_6_n_0 ),
        .O(\rgb_reg[9] ));
  CARRY4 \rgb_o_reg[20]_i_103 
       (.CI(\rgb_o_reg[20]_i_232_n_0 ),
        .CO({\rgb_o_reg[20]_i_103_n_0 ,\rgb_o_reg[20]_i_103_n_1 ,\rgb_o_reg[20]_i_103_n_2 ,\rgb_o_reg[20]_i_103_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_233_n_0 ,\rgb_o[20]_i_234_n_0 ,\rgb_o[20]_i_235_n_0 ,\rgb_o[20]_i_236_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_103_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_237_n_0 ,\rgb_o[20]_i_238_n_0 ,\rgb_o[20]_i_239_n_0 ,\rgb_o[20]_i_240_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_13 
       (.CI(\rgb_o_reg[20]_i_43_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_13_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_13_n_2 ,\rgb_o_reg[20]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rgb_o[20]_i_44_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb_o[20]_i_45_n_0 ,\rgb_o[20]_i_46_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_134 
       (.CI(\rgb_o[20]_i_59_0 ),
        .CO({\rgb_o_reg[20]_i_134_n_0 ,\rgb_o_reg[20]_i_134_n_1 ,\rgb_o_reg[20]_i_134_n_2 ,\rgb_o_reg[20]_i_134_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_245_n_0 ,\rgb_o[20]_i_246_n_0 ,\rgb_o[20]_i_247_n_0 ,\rgb_o[20]_i_248_n_0 }),
        .O({\dst_payload_reg[37]_0 ,\rgb_o_reg[20]_i_134_n_7 }),
        .S({\rgb_o[20]_i_249_n_0 ,\rgb_o[20]_i_250_n_0 ,\rgb_o[20]_i_251_n_0 ,\rgb_o[20]_i_59_1 }));
  CARRY4 \rgb_o_reg[20]_i_14 
       (.CI(\rgb_o[20]_i_3_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_14_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_14_n_2 ,\rgb_o_reg[20]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rgb_o[20]_i_3_1 ,\rgb_o[20]_i_49_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb_o[20]_i_50_n_0 ,\rgb_o[20]_i_51_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_221 
       (.CI(\rgb_o_reg[20]_i_270_n_0 ),
        .CO({\rgb_o_reg[20]_i_221_n_0 ,\rgb_o_reg[20]_i_221_n_1 ,\rgb_o_reg[20]_i_221_n_2 ,\rgb_o_reg[20]_i_221_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_271_n_0 ,\rgb_o[20]_i_272_n_0 ,\rgb_o[20]_i_273_n_0 ,\rgb_o[20]_i_274_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_221_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_275_n_0 ,\rgb_o[20]_i_276_n_0 ,\rgb_o[20]_i_277_n_0 ,\rgb_o[20]_i_278_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_232 
       (.CI(\rgb_o_reg[20]_i_282_n_0 ),
        .CO({\rgb_o_reg[20]_i_232_n_0 ,\rgb_o_reg[20]_i_232_n_1 ,\rgb_o_reg[20]_i_232_n_2 ,\rgb_o_reg[20]_i_232_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_283_n_0 ,\rgb_o[20]_i_284_n_0 ,\rgb_o[20]_i_285_n_0 ,\rgb_o[20]_i_286_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_232_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_287_n_0 ,\rgb_o[20]_i_288_n_0 ,\rgb_o[20]_i_289_n_0 ,\rgb_o[20]_i_290_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_25 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_25_n_0 ,\rgb_o_reg[20]_i_25_n_1 ,\rgb_o_reg[20]_i_25_n_2 ,\rgb_o_reg[20]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(\dst_payload_reg[35]_0 ),
        .S({\rgb_o[20]_i_75_n_0 ,\rgb_o[20]_i_76_n_0 ,\rgb_o[20]_i_77_n_0 ,\rgb_o[20]_i_78_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_270 
       (.CI(\rgb_o_reg[20]_i_295_n_0 ),
        .CO({\rgb_o_reg[20]_i_270_n_0 ,\rgb_o_reg[20]_i_270_n_1 ,\rgb_o_reg[20]_i_270_n_2 ,\rgb_o_reg[20]_i_270_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_296_n_0 ,\rgb_o[20]_i_297_n_0 ,\rgb_o[20]_i_298_n_0 ,\rgb_o[20]_i_299_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_270_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_300_n_0 ,\rgb_o[20]_i_301_n_0 ,\rgb_o[20]_i_302_n_0 ,\rgb_o[20]_i_303_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_279 
       (.CI(\rgb_o_reg[20]_i_280_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_279_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_279_n_2 ,\rgb_o_reg[20]_i_279_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_o_reg[20]_i_279_O_UNCONNECTED [3],legal_box2[31:29]}),
        .S({1'b0,p_0_in[31:29]}));
  CARRY4 \rgb_o_reg[20]_i_280 
       (.CI(\rgb_o_reg[20]_i_281_n_0 ),
        .CO({\rgb_o_reg[20]_i_280_n_0 ,\rgb_o_reg[20]_i_280_n_1 ,\rgb_o_reg[20]_i_280_n_2 ,\rgb_o_reg[20]_i_280_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box2[28:25]),
        .S(p_0_in[28:25]));
  CARRY4 \rgb_o_reg[20]_i_281 
       (.CI(\rgb_o_reg[20]_i_304_n_0 ),
        .CO({\rgb_o_reg[20]_i_281_n_0 ,\rgb_o_reg[20]_i_281_n_1 ,\rgb_o_reg[20]_i_281_n_2 ,\rgb_o_reg[20]_i_281_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box2[24:21]),
        .S(p_0_in[24:21]));
  CARRY4 \rgb_o_reg[20]_i_282 
       (.CI(\rgb_o_reg[20]_i_317_n_0 ),
        .CO({\rgb_o_reg[20]_i_282_n_0 ,\rgb_o_reg[20]_i_282_n_1 ,\rgb_o_reg[20]_i_282_n_2 ,\rgb_o_reg[20]_i_282_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_318_n_0 ,\rgb_o[20]_i_319_n_0 ,\rgb_o[20]_i_320_n_0 ,\rgb_o[20]_i_321_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_282_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_322_n_0 ,\rgb_o[20]_i_323_n_0 ,\rgb_o[20]_i_324_n_0 ,\rgb_o[20]_i_325_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_291 
       (.CI(\rgb_o_reg[20]_i_292_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_291_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_291_n_2 ,\rgb_o_reg[20]_i_291_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_o_reg[20]_i_291_O_UNCONNECTED [3],legal_box1[31:29]}),
        .S({1'b0,\rgb_o[20]_i_328_n_0 ,\rgb_o[20]_i_329_n_0 ,\rgb_o[20]_i_330_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_292 
       (.CI(\rgb_o_reg[20]_i_293_n_0 ),
        .CO({\rgb_o_reg[20]_i_292_n_0 ,\rgb_o_reg[20]_i_292_n_1 ,\rgb_o_reg[20]_i_292_n_2 ,\rgb_o_reg[20]_i_292_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box1[28:25]),
        .S({\rgb_o[20]_i_331_n_0 ,\rgb_o[20]_i_332_n_0 ,\rgb_o[20]_i_333_n_0 ,\rgb_o[20]_i_334_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_293 
       (.CI(\rgb_o_reg[20]_i_326_n_0 ),
        .CO({\rgb_o_reg[20]_i_293_n_0 ,\rgb_o_reg[20]_i_293_n_1 ,\rgb_o_reg[20]_i_293_n_2 ,\rgb_o_reg[20]_i_293_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box1[24:21]),
        .S({\rgb_o[20]_i_335_n_0 ,\rgb_o[20]_i_336_n_0 ,\rgb_o[20]_i_337_n_0 ,\rgb_o[20]_i_338_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_295 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_295_n_0 ,\rgb_o_reg[20]_i_295_n_1 ,\rgb_o_reg[20]_i_295_n_2 ,\rgb_o_reg[20]_i_295_n_3 }),
        .CYINIT(1'b1),
        .DI({\rgb_o[20]_i_339_n_0 ,\rgb_o[20]_i_340_n_0 ,\rgb_o[20]_i_341_n_0 ,\rgb_o[20]_i_342_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_295_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_343_n_0 ,\rgb_o[20]_i_344_n_0 ,\rgb_o[20]_i_345_n_0 ,\rgb_o[20]_i_346_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_304 
       (.CI(\rgb_o_reg[20]_i_305_n_0 ),
        .CO({\rgb_o_reg[20]_i_304_n_0 ,\rgb_o_reg[20]_i_304_n_1 ,\rgb_o_reg[20]_i_304_n_2 ,\rgb_o_reg[20]_i_304_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box2[20:17]),
        .S(p_0_in[20:17]));
  CARRY4 \rgb_o_reg[20]_i_305 
       (.CI(\rgb_o_reg[20]_i_347_n_0 ),
        .CO({\rgb_o_reg[20]_i_305_n_0 ,\rgb_o_reg[20]_i_305_n_1 ,\rgb_o_reg[20]_i_305_n_2 ,\rgb_o_reg[20]_i_305_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box2[16:13]),
        .S(p_0_in[16:13]));
  CARRY4 \rgb_o_reg[20]_i_31 
       (.CI(\rgb_o_reg[20]_i_54_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED [3:2],\dst_payload_reg[72]_0 [1],\NLW_rgb_o_reg[20]_i_31_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[9]}),
        .O({\NLW_rgb_o_reg[20]_i_31_O_UNCONNECTED [3:1],\dst_payload_reg[72]_0 [0]}),
        .S({1'b0,1'b0,1'b1,\rgb_o[20]_i_84_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_317 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_317_n_0 ,\rgb_o_reg[20]_i_317_n_1 ,\rgb_o_reg[20]_i_317_n_2 ,\rgb_o_reg[20]_i_317_n_3 }),
        .CYINIT(1'b1),
        .DI({\rgb_o[20]_i_357_n_0 ,\rgb_o[20]_i_358_n_0 ,\rgb_o[20]_i_359_n_0 ,\rgb_o[20]_i_360_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_317_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_361_n_0 ,\rgb_o[20]_i_362_n_0 ,\rgb_o[20]_i_363_n_0 ,\rgb_o[20]_i_364_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_326 
       (.CI(\rgb_o_reg[20]_i_327_n_0 ),
        .CO({\rgb_o_reg[20]_i_326_n_0 ,\rgb_o_reg[20]_i_326_n_1 ,\rgb_o_reg[20]_i_326_n_2 ,\rgb_o_reg[20]_i_326_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box1[20:17]),
        .S({\rgb_o[20]_i_367_n_0 ,\rgb_o[20]_i_368_n_0 ,\rgb_o[20]_i_369_n_0 ,\rgb_o[20]_i_370_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_327 
       (.CI(\rgb_o_reg[20]_i_365_n_0 ),
        .CO({\rgb_o_reg[20]_i_327_n_0 ,\rgb_o_reg[20]_i_327_n_1 ,\rgb_o_reg[20]_i_327_n_2 ,\rgb_o_reg[20]_i_327_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box1[16:13]),
        .S({\rgb_o[20]_i_371_n_0 ,\rgb_o[20]_i_372_n_0 ,\rgb_o[20]_i_373_n_0 ,\rgb_o[20]_i_374_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_347 
       (.CI(\rgb_o_reg[20]_i_348_n_0 ),
        .CO({\rgb_o_reg[20]_i_347_n_0 ,\rgb_o_reg[20]_i_347_n_1 ,\rgb_o_reg[20]_i_347_n_2 ,\rgb_o_reg[20]_i_347_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box2[12:9]),
        .S(p_0_in[12:9]));
  CARRY4 \rgb_o_reg[20]_i_348 
       (.CI(\rgb_o_reg[20]_i_375_n_0 ),
        .CO({\rgb_o_reg[20]_i_348_n_0 ,\rgb_o_reg[20]_i_348_n_1 ,\rgb_o_reg[20]_i_348_n_2 ,\rgb_o_reg[20]_i_348_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in[8:7],1'b0,1'b0}),
        .O(legal_box2[8:5]),
        .S({applied_payload[40:39],p_0_in[6:5]}));
  CARRY4 \rgb_o_reg[20]_i_365 
       (.CI(\rgb_o_reg[20]_i_366_n_0 ),
        .CO({\rgb_o_reg[20]_i_365_n_0 ,\rgb_o_reg[20]_i_365_n_1 ,\rgb_o_reg[20]_i_365_n_2 ,\rgb_o_reg[20]_i_365_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(legal_box1[12:9]),
        .S({\rgb_o[20]_i_385_n_0 ,\rgb_o[20]_i_386_n_0 ,\rgb_o[20]_i_387_n_0 ,\rgb_o[20]_i_388_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_366 
       (.CI(\rgb_o_reg[20]_i_384_n_0 ),
        .CO({\rgb_o_reg[20]_i_366_n_0 ,\rgb_o_reg[20]_i_366_n_1 ,\rgb_o_reg[20]_i_366_n_2 ,\rgb_o_reg[20]_i_366_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rgb_o[20]_i_389_n_0 ,\rgb_o[20]_i_390_n_0 ,\rgb_o[20]_i_391_n_0 }),
        .O(legal_box1[8:5]),
        .S({\rgb_o[20]_i_392_n_0 ,applied_payload[71:69]}));
  CARRY4 \rgb_o_reg[20]_i_375 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_375_n_0 ,\rgb_o_reg[20]_i_375_n_1 ,\rgb_o_reg[20]_i_375_n_2 ,\rgb_o_reg[20]_i_375_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({p_0_in[4],1'b0,1'b0,1'b0}),
        .O(legal_box2[4:1]),
        .S({Q[4],p_0_in[3:1]}));
  CARRY4 \rgb_o_reg[20]_i_384 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_384_n_0 ,\rgb_o_reg[20]_i_384_n_1 ,\rgb_o_reg[20]_i_384_n_2 ,\rgb_o_reg[20]_i_384_n_3 }),
        .CYINIT(\rgb_o[20]_i_398_n_0 ),
        .DI({\rgb_o[20]_i_399_n_0 ,1'b0,1'b0,1'b0}),
        .O(legal_box1[4:1]),
        .S({applied_payload[68],\rgb_o[20]_i_400_n_0 ,\rgb_o[20]_i_401_n_0 ,\rgb_o[20]_i_402_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_43 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_43_n_0 ,\rgb_o_reg[20]_i_43_n_1 ,\rgb_o_reg[20]_i_43_n_2 ,\rgb_o_reg[20]_i_43_n_3 }),
        .CYINIT(1'b1),
        .DI({\rgb_o[20]_i_107_n_0 ,\rgb_o[20]_i_108_n_0 ,\rgb_o[20]_i_109_n_0 ,\rgb_o_reg[20]_i_13_0 }),
        .O(\NLW_rgb_o_reg[20]_i_43_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_111_n_0 ,\rgb_o[20]_i_112_n_0 ,\rgb_o[20]_i_113_n_0 ,\rgb_o_reg[20]_i_13_1 }));
  CARRY4 \rgb_o_reg[20]_i_52 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_52_n_0 ,\rgb_o_reg[20]_i_52_n_1 ,\rgb_o_reg[20]_i_52_n_2 ,\rgb_o_reg[20]_i_52_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(\dst_payload_reg[67]_0 ),
        .S({\rgb_o[20]_i_126_n_0 ,\rgb_o[20]_i_127_n_0 ,\rgb_o[20]_i_128_n_0 ,\rgb_o[20]_i_129_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_54 
       (.CI(\rgb_o_reg[20]_i_52_n_0 ),
        .CO({\rgb_o_reg[20]_i_54_n_0 ,\rgb_o_reg[20]_i_54_n_1 ,\rgb_o_reg[20]_i_54_n_2 ,\rgb_o_reg[20]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI(applied_payload[71:68]),
        .O(\dst_payload_reg[71]_0 ),
        .S({\rgb_o[20]_i_130_n_0 ,\rgb_o[20]_i_131_n_0 ,\rgb_o[20]_i_132_n_0 ,\rgb_o[20]_i_133_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_56 
       (.CI(\rgb_o_reg[20]_i_134_n_0 ),
        .CO({\rgb_o_reg[20]_i_56_n_0 ,\NLW_rgb_o_reg[20]_i_56_CO_UNCONNECTED [2],\rgb_o_reg[20]_i_56_n_2 ,\rgb_o_reg[20]_i_56_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rgb_o[20]_i_20_0 ,\rgb_o[20]_i_136_n_0 ,\rgb_o[20]_i_137_n_0 }),
        .O({\NLW_rgb_o_reg[20]_i_56_O_UNCONNECTED [3],\rgb_o_reg[20]_i_56_n_5 ,\rgb_o_reg[20]_i_56_n_6 ,\rgb_o_reg[20]_i_56_n_7 }),
        .S({1'b1,\rgb_o[20]_i_138_n_0 ,\rgb_o[20]_i_139_n_0 ,\rgb_o[20]_i_140_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_7 
       (.CI(\rgb_o_reg[20]_i_8_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED [3:2],CO,\NLW_rgb_o_reg[20]_i_7_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,applied_payload[40]}),
        .O({\NLW_rgb_o_reg[20]_i_7_O_UNCONNECTED [3:1],\dst_payload_reg[40]_0 }),
        .S({1'b0,1'b0,1'b1,\rgb_o[20]_i_24_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_70 
       (.CI(\rgb_o[20]_i_23 ),
        .CO({\rgb_o_reg[20]_i_70_n_0 ,\rgb_o_reg[20]_i_70_n_1 ,\rgb_o_reg[20]_i_70_n_2 ,\rgb_o_reg[20]_i_70_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_183_n_0 ,\rgb_o[20]_i_184_n_0 ,\rgb_o[20]_i_185_n_0 ,\rgb_o[20]_i_186_n_0 }),
        .O(\active_y_reg[7] ),
        .S({\rgb_o[20]_i_187_n_0 ,\rgb_o[20]_i_188_n_0 ,\rgb_o[20]_i_189_n_0 ,\rgb_o[20]_i_190_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_71 
       (.CI(\rgb_o_reg[20]_i_70_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED [3],\active_y_reg[9] ,\NLW_rgb_o_reg[20]_i_71_CO_UNCONNECTED [1],\rgb_o_reg[20]_i_71_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rgb_o[20]_i_191_n_0 ,\rgb_o[20]_i_192_n_0 }),
        .O({\NLW_rgb_o_reg[20]_i_71_O_UNCONNECTED [3:2],\active_y_reg[9]_0 }),
        .S({1'b0,1'b1,\rgb_o[20]_i_193_n_0 ,\rgb_o[20]_i_194_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_8 
       (.CI(\rgb_o_reg[20]_i_25_n_0 ),
        .CO({\rgb_o_reg[20]_i_8_n_0 ,\rgb_o_reg[20]_i_8_n_1 ,\rgb_o_reg[20]_i_8_n_2 ,\rgb_o_reg[20]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({applied_payload[39:37],Q[4]}),
        .O(\dst_payload_reg[39]_0 ),
        .S({\rgb_o[20]_i_26_n_0 ,\rgb_o[20]_i_27_n_0 ,\rgb_o[20]_i_28_n_0 ,\rgb_o[20]_i_29_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_98 
       (.CI(\rgb_o_reg[20]_i_221_n_0 ),
        .CO({\rgb_o_reg[20]_i_98_n_0 ,\rgb_o_reg[20]_i_98_n_1 ,\rgb_o_reg[20]_i_98_n_2 ,\rgb_o_reg[20]_i_98_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_222_n_0 ,\rgb_o[20]_i_223_n_0 ,\rgb_o[20]_i_224_n_0 ,\rgb_o[20]_i_225_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_98_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_226_n_0 ,\rgb_o[20]_i_227_n_0 ,\rgb_o[20]_i_228_n_0 ,\rgb_o[20]_i_229_n_0 }));
  LUT6 #(
    .INIT(64'h0000000008000008)) 
    src_ack_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(ack_s[1]),
        .I4(req),
        .I5(state136_out),
        .O(src_ack_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    src_ack_i_2
       (.I0(src_reset_pipe[1]),
        .O(src_ack_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    src_ack_i_3
       (.I0(box_invalidate),
        .I1(box_recover),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(state136_out));
  FDCE src_ack_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(src_ack_i_1_n_0),
        .Q(box_ack));
  LUT1 #(
    .INIT(2'h1)) 
    src_reset_event_i_1
       (.I0(src_reset_pipe[1]),
        .O(src_reset_event_i_1_n_0));
  FDCE src_reset_event_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_reset_event_i_1_n_0),
        .D(reset_notice_pending),
        .Q(box_reset_event));
  LUT2 #(
    .INIT(4'h7)) 
    \src_reset_pipe[1]_i_1 
       (.I0(box_src_rst_n),
        .I1(rst_n),
        .O(\src_reset_pipe[1]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \src_reset_pipe_reg[0] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(\src_reset_pipe[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(src_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \src_reset_pipe_reg[1] 
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(\src_reset_pipe[1]_i_1_n_0 ),
        .D(src_reset_pipe[0]),
        .Q(src_reset_pipe[1]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    src_timeout_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state1),
        .I4(state0),
        .I5(state136_out),
        .O(src_timeout_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_10
       (.I0(timeout_age[24]),
        .I1(timeout_age[25]),
        .O(src_timeout_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_12
       (.I0(timeout_age[22]),
        .I1(timeout_age[23]),
        .O(src_timeout_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_13
       (.I0(timeout_age[20]),
        .I1(timeout_age[21]),
        .O(src_timeout_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_14
       (.I0(timeout_age[18]),
        .I1(timeout_age[19]),
        .O(src_timeout_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_15
       (.I0(timeout_age[16]),
        .I1(timeout_age[17]),
        .O(src_timeout_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_17
       (.I0(timeout_age[12]),
        .I1(timeout_age[13]),
        .O(src_timeout_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    src_timeout_i_18
       (.I0(timeout_age[10]),
        .I1(timeout_age[11]),
        .O(src_timeout_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    src_timeout_i_19
       (.I0(timeout_age[8]),
        .I1(timeout_age[9]),
        .O(src_timeout_i_19_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    src_timeout_i_2
       (.I0(req),
        .I1(ack_s[1]),
        .O(state1));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_20
       (.I0(timeout_age[14]),
        .I1(timeout_age[15]),
        .O(src_timeout_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_21
       (.I0(timeout_age[13]),
        .I1(timeout_age[12]),
        .O(src_timeout_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    src_timeout_i_22
       (.I0(timeout_age[10]),
        .I1(timeout_age[11]),
        .O(src_timeout_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    src_timeout_i_23
       (.I0(timeout_age[8]),
        .I1(timeout_age[9]),
        .O(src_timeout_i_23_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_24
       (.I0(timeout_age[6]),
        .I1(timeout_age[7]),
        .O(src_timeout_i_24_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_25
       (.I0(timeout_age[4]),
        .I1(timeout_age[5]),
        .O(src_timeout_i_25_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_26
       (.I0(timeout_age[2]),
        .I1(timeout_age[3]),
        .O(src_timeout_i_26_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    src_timeout_i_27
       (.I0(timeout_age[0]),
        .I1(timeout_age[1]),
        .O(src_timeout_i_27_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_5
       (.I0(timeout_age[30]),
        .I1(timeout_age[31]),
        .O(src_timeout_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    src_timeout_i_6
       (.I0(timeout_age[28]),
        .I1(timeout_age[29]),
        .O(src_timeout_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    src_timeout_i_7
       (.I0(timeout_age[30]),
        .I1(timeout_age[31]),
        .O(src_timeout_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    src_timeout_i_8
       (.I0(timeout_age[28]),
        .I1(timeout_age[29]),
        .O(src_timeout_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    src_timeout_i_9
       (.I0(timeout_age[26]),
        .I1(timeout_age[27]),
        .O(src_timeout_i_9_n_0));
  FDCE src_timeout_reg
       (.C(box_src_clk),
        .CE(1'b1),
        .CLR(src_ack_i_2_n_0),
        .D(src_timeout_i_1_n_0),
        .Q(box_timeout));
  CARRY4 src_timeout_reg_i_11
       (.CI(src_timeout_reg_i_16_n_0),
        .CO({src_timeout_reg_i_11_n_0,src_timeout_reg_i_11_n_1,src_timeout_reg_i_11_n_2,src_timeout_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,src_timeout_i_17_n_0,src_timeout_i_18_n_0,src_timeout_i_19_n_0}),
        .O(NLW_src_timeout_reg_i_11_O_UNCONNECTED[3:0]),
        .S({src_timeout_i_20_n_0,src_timeout_i_21_n_0,src_timeout_i_22_n_0,src_timeout_i_23_n_0}));
  CARRY4 src_timeout_reg_i_16
       (.CI(1'b0),
        .CO({src_timeout_reg_i_16_n_0,src_timeout_reg_i_16_n_1,src_timeout_reg_i_16_n_2,src_timeout_reg_i_16_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_src_timeout_reg_i_16_O_UNCONNECTED[3:0]),
        .S({src_timeout_i_24_n_0,src_timeout_i_25_n_0,src_timeout_i_26_n_0,src_timeout_i_27_n_0}));
  CARRY4 src_timeout_reg_i_3
       (.CI(src_timeout_reg_i_4_n_0),
        .CO({state0,src_timeout_reg_i_3_n_1,src_timeout_reg_i_3_n_2,src_timeout_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({src_timeout_i_5_n_0,src_timeout_i_6_n_0,timeout_age[27],timeout_age[25]}),
        .O(NLW_src_timeout_reg_i_3_O_UNCONNECTED[3:0]),
        .S({src_timeout_i_7_n_0,src_timeout_i_8_n_0,src_timeout_i_9_n_0,src_timeout_i_10_n_0}));
  CARRY4 src_timeout_reg_i_4
       (.CI(src_timeout_reg_i_11_n_0),
        .CO({src_timeout_reg_i_4_n_0,src_timeout_reg_i_4_n_1,src_timeout_reg_i_4_n_2,src_timeout_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,timeout_age[19],timeout_age[17]}),
        .O(NLW_src_timeout_reg_i_4_O_UNCONNECTED[3:0]),
        .S({src_timeout_i_12_n_0,src_timeout_i_13_n_0,src_timeout_i_14_n_0,src_timeout_i_15_n_0}));
  LUT6 #(
    .INIT(64'h0010001000101010)) 
    \timeout_age[0]_i_1 
       (.I0(timeout_age[0]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[10]_i_1 
       (.I0(in8[10]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[11]_i_1 
       (.I0(in8[11]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[11]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[12]_i_1 
       (.I0(in8[12]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[12]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[13]_i_1 
       (.I0(in8[13]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[13]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[14]_i_1 
       (.I0(in8[14]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[14]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[15]_i_1 
       (.I0(in8[15]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[15]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[16]_i_1 
       (.I0(in8[16]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[16]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[17]_i_1 
       (.I0(in8[17]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[17]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[18]_i_1 
       (.I0(in8[18]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[18]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[19]_i_1 
       (.I0(in8[19]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[19]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[1]_i_1 
       (.I0(in8[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[20]_i_1 
       (.I0(in8[20]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[20]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[21]_i_1 
       (.I0(in8[21]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[21]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[22]_i_1 
       (.I0(in8[22]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[22]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[23]_i_1 
       (.I0(in8[23]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[23]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[24]_i_1 
       (.I0(in8[24]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[24]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[25]_i_1 
       (.I0(in8[25]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[25]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[26]_i_1 
       (.I0(in8[26]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[26]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[27]_i_1 
       (.I0(in8[27]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[27]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[28]_i_1 
       (.I0(in8[28]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[28]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[29]_i_1 
       (.I0(in8[29]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[29]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[2]_i_1 
       (.I0(in8[2]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[30]_i_1 
       (.I0(in8[30]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBAAAAA)) 
    \timeout_age[31]_i_1 
       (.I0(state136_out),
        .I1(\timeout_age[31]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(state029_out),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(\timeout_age[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[31]_i_2 
       (.I0(in8[31]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[31]));
  LUT3 #(
    .INIT(8'hF9)) 
    \timeout_age[31]_i_3 
       (.I0(ack_s[1]),
        .I1(req),
        .I2(state0),
        .O(\timeout_age[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_age[31]_i_4 
       (.I0(box_send),
        .I1(ready_s[1]),
        .O(state029_out));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[3]_i_1 
       (.I0(in8[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[4]_i_1 
       (.I0(in8[4]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[5]_i_1 
       (.I0(in8[5]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[6]_i_1 
       (.I0(in8[6]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[7]_i_1 
       (.I0(in8[7]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[7]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[8]_i_1 
       (.I0(in8[8]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \timeout_age[9]_i_1 
       (.I0(in8[9]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(box_recover),
        .I5(box_invalidate),
        .O(p_1_in__0[9]));
  FDCE \timeout_age_reg[0] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[0]),
        .Q(timeout_age[0]));
  FDCE \timeout_age_reg[10] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[10]),
        .Q(timeout_age[10]));
  FDCE \timeout_age_reg[11] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[11]),
        .Q(timeout_age[11]));
  FDCE \timeout_age_reg[12] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[12]),
        .Q(timeout_age[12]));
  CARRY4 \timeout_age_reg[12]_i_2 
       (.CI(\timeout_age_reg[8]_i_2_n_0 ),
        .CO({\timeout_age_reg[12]_i_2_n_0 ,\timeout_age_reg[12]_i_2_n_1 ,\timeout_age_reg[12]_i_2_n_2 ,\timeout_age_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(timeout_age[12:9]));
  FDCE \timeout_age_reg[13] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[13]),
        .Q(timeout_age[13]));
  FDCE \timeout_age_reg[14] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[14]),
        .Q(timeout_age[14]));
  FDCE \timeout_age_reg[15] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[15]),
        .Q(timeout_age[15]));
  FDCE \timeout_age_reg[16] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[16]),
        .Q(timeout_age[16]));
  CARRY4 \timeout_age_reg[16]_i_2 
       (.CI(\timeout_age_reg[12]_i_2_n_0 ),
        .CO({\timeout_age_reg[16]_i_2_n_0 ,\timeout_age_reg[16]_i_2_n_1 ,\timeout_age_reg[16]_i_2_n_2 ,\timeout_age_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S(timeout_age[16:13]));
  FDCE \timeout_age_reg[17] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[17]),
        .Q(timeout_age[17]));
  FDCE \timeout_age_reg[18] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[18]),
        .Q(timeout_age[18]));
  FDCE \timeout_age_reg[19] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[19]),
        .Q(timeout_age[19]));
  FDCE \timeout_age_reg[1] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[1]),
        .Q(timeout_age[1]));
  FDCE \timeout_age_reg[20] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[20]),
        .Q(timeout_age[20]));
  CARRY4 \timeout_age_reg[20]_i_2 
       (.CI(\timeout_age_reg[16]_i_2_n_0 ),
        .CO({\timeout_age_reg[20]_i_2_n_0 ,\timeout_age_reg[20]_i_2_n_1 ,\timeout_age_reg[20]_i_2_n_2 ,\timeout_age_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S(timeout_age[20:17]));
  FDCE \timeout_age_reg[21] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[21]),
        .Q(timeout_age[21]));
  FDCE \timeout_age_reg[22] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[22]),
        .Q(timeout_age[22]));
  FDCE \timeout_age_reg[23] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[23]),
        .Q(timeout_age[23]));
  FDCE \timeout_age_reg[24] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[24]),
        .Q(timeout_age[24]));
  CARRY4 \timeout_age_reg[24]_i_2 
       (.CI(\timeout_age_reg[20]_i_2_n_0 ),
        .CO({\timeout_age_reg[24]_i_2_n_0 ,\timeout_age_reg[24]_i_2_n_1 ,\timeout_age_reg[24]_i_2_n_2 ,\timeout_age_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S(timeout_age[24:21]));
  FDCE \timeout_age_reg[25] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[25]),
        .Q(timeout_age[25]));
  FDCE \timeout_age_reg[26] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[26]),
        .Q(timeout_age[26]));
  FDCE \timeout_age_reg[27] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[27]),
        .Q(timeout_age[27]));
  FDCE \timeout_age_reg[28] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[28]),
        .Q(timeout_age[28]));
  CARRY4 \timeout_age_reg[28]_i_2 
       (.CI(\timeout_age_reg[24]_i_2_n_0 ),
        .CO({\timeout_age_reg[28]_i_2_n_0 ,\timeout_age_reg[28]_i_2_n_1 ,\timeout_age_reg[28]_i_2_n_2 ,\timeout_age_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S(timeout_age[28:25]));
  FDCE \timeout_age_reg[29] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[29]),
        .Q(timeout_age[29]));
  FDCE \timeout_age_reg[2] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[2]),
        .Q(timeout_age[2]));
  FDCE \timeout_age_reg[30] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[30]),
        .Q(timeout_age[30]));
  FDCE \timeout_age_reg[31] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[31]),
        .Q(timeout_age[31]));
  CARRY4 \timeout_age_reg[31]_i_5 
       (.CI(\timeout_age_reg[28]_i_2_n_0 ),
        .CO({\NLW_timeout_age_reg[31]_i_5_CO_UNCONNECTED [3:2],\timeout_age_reg[31]_i_5_n_2 ,\timeout_age_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timeout_age_reg[31]_i_5_O_UNCONNECTED [3],in8[31:29]}),
        .S({1'b0,timeout_age[31:29]}));
  FDCE \timeout_age_reg[3] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[3]),
        .Q(timeout_age[3]));
  FDCE \timeout_age_reg[4] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[4]),
        .Q(timeout_age[4]));
  CARRY4 \timeout_age_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timeout_age_reg[4]_i_2_n_0 ,\timeout_age_reg[4]_i_2_n_1 ,\timeout_age_reg[4]_i_2_n_2 ,\timeout_age_reg[4]_i_2_n_3 }),
        .CYINIT(timeout_age[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S(timeout_age[4:1]));
  FDCE \timeout_age_reg[5] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[5]),
        .Q(timeout_age[5]));
  FDCE \timeout_age_reg[6] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[6]),
        .Q(timeout_age[6]));
  FDCE \timeout_age_reg[7] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[7]),
        .Q(timeout_age[7]));
  FDCE \timeout_age_reg[8] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[8]),
        .Q(timeout_age[8]));
  CARRY4 \timeout_age_reg[8]_i_2 
       (.CI(\timeout_age_reg[4]_i_2_n_0 ),
        .CO({\timeout_age_reg[8]_i_2_n_0 ,\timeout_age_reg[8]_i_2_n_1 ,\timeout_age_reg[8]_i_2_n_2 ,\timeout_age_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(timeout_age[8:5]));
  FDCE \timeout_age_reg[9] 
       (.C(box_src_clk),
        .CE(\timeout_age[31]_i_1_n_0 ),
        .CLR(src_ack_i_2_n_0),
        .D(p_1_in__0[9]),
        .Q(timeout_age[9]));
endmodule

(* ORIG_REF_NAME = "hdmi_bbox_overlay" *) 
module facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay
   (overlay_de,
    overlay_hs,
    overlay_vs,
    \dst_payload_reg[40] ,
    \dst_payload_reg[67] ,
    \dst_payload_reg[67]_0 ,
    \rgb_o[20]_i_69_0 ,
    \rgb_o[20]_i_74_0 ,
    \rgb_o_reg[20]_i_134 ,
    \rgb_o[20]_i_64_0 ,
    D,
    text_s10,
    \rgb_o_reg[8]_0 ,
    de,
    pixel_clk,
    hs,
    vs,
    \rgb_o_reg[8]_1 ,
    \rgb_o_reg[8]_2 ,
    \rgb_o[20]_i_202 ,
    \rgb_o[20]_i_16_0 ,
    \rgb_o[20]_i_2_0 ,
    O,
    CO,
    \rgb_o[20]_i_22_0 ,
    \rgb_o[20]_i_22_1 ,
    \rgb_o[20]_i_23_0 ,
    \rgb_o[20]_i_23_1 ,
    \rgb_o[20]_i_23_2 ,
    \rgb_o[20]_i_23_3 ,
    \rgb_o[20]_i_20 ,
    \rgb_o[20]_i_20_0 ,
    \rgb_o[20]_i_21_0 ,
    \rgb_o[20]_i_6 ,
    \rgb_o[20]_i_21_1 ,
    \rgb_o[20]_i_21_2 ,
    sleep_mode,
    \base_s1_reg[0] ,
    \base_s1_reg[0]_0 ,
    Q,
    text_s1_reg,
    text_s1_reg_0,
    text_s1_reg_1,
    \rgb_o_reg[0]_0 ,
    rgb,
    \rgb_o_reg[13]_0 ,
    \rgb_o_reg[12]_0 ,
    \rgb_o_reg[11]_0 ,
    \rgb_o_reg[10]_0 ,
    \rgb_o_reg[9]_0 ,
    \rgb_o_reg[8]_3 );
  output overlay_de;
  output overlay_hs;
  output overlay_vs;
  output \dst_payload_reg[40] ;
  output \dst_payload_reg[67] ;
  output \dst_payload_reg[67]_0 ;
  output \rgb_o[20]_i_69_0 ;
  output \rgb_o[20]_i_74_0 ;
  output \rgb_o_reg[20]_i_134 ;
  output \rgb_o[20]_i_64_0 ;
  output [20:0]D;
  output text_s10;
  input \rgb_o_reg[8]_0 ;
  input de;
  input pixel_clk;
  input hs;
  input vs;
  input [0:0]\rgb_o_reg[8]_1 ;
  input [3:0]\rgb_o_reg[8]_2 ;
  input [3:0]\rgb_o[20]_i_202 ;
  input [3:0]\rgb_o[20]_i_16_0 ;
  input [3:0]\rgb_o[20]_i_2_0 ;
  input [2:0]O;
  input [0:0]CO;
  input [3:0]\rgb_o[20]_i_22_0 ;
  input [3:0]\rgb_o[20]_i_22_1 ;
  input [3:0]\rgb_o[20]_i_23_0 ;
  input [1:0]\rgb_o[20]_i_23_1 ;
  input [3:0]\rgb_o[20]_i_23_2 ;
  input [0:0]\rgb_o[20]_i_23_3 ;
  input [2:0]\rgb_o[20]_i_20 ;
  input [0:0]\rgb_o[20]_i_20_0 ;
  input [3:0]\rgb_o[20]_i_21_0 ;
  input [2:0]\rgb_o[20]_i_6 ;
  input [3:0]\rgb_o[20]_i_21_1 ;
  input [0:0]\rgb_o[20]_i_21_2 ;
  input sleep_mode;
  input \base_s1_reg[0] ;
  input \base_s1_reg[0]_0 ;
  input [1:0]Q;
  input text_s1_reg;
  input text_s1_reg_0;
  input text_s1_reg_1;
  input \rgb_o_reg[0]_0 ;
  input [9:0]rgb;
  input \rgb_o_reg[13]_0 ;
  input \rgb_o_reg[12]_0 ;
  input \rgb_o_reg[11]_0 ;
  input \rgb_o_reg[10]_0 ;
  input \rgb_o_reg[9]_0 ;
  input \rgb_o_reg[8]_3 ;

  wire [0:0]CO;
  wire [20:0]D;
  wire [2:0]O;
  wire [1:0]Q;
  wire \base_s1_reg[0] ;
  wire \base_s1_reg[0]_0 ;
  wire de;
  wire \dst_payload_reg[40] ;
  wire \dst_payload_reg[67] ;
  wire \dst_payload_reg[67]_0 ;
  wire hs;
  wire overlay_de;
  wire overlay_hs;
  wire [20:0]overlay_rgb;
  wire overlay_vs;
  wire pixel_clk;
  wire [9:0]rgb;
  wire [3:0]\rgb_o[20]_i_16_0 ;
  wire [2:0]\rgb_o[20]_i_20 ;
  wire [3:0]\rgb_o[20]_i_202 ;
  wire [0:0]\rgb_o[20]_i_20_0 ;
  wire [3:0]\rgb_o[20]_i_21_0 ;
  wire [3:0]\rgb_o[20]_i_21_1 ;
  wire [0:0]\rgb_o[20]_i_21_2 ;
  wire [3:0]\rgb_o[20]_i_22_0 ;
  wire [3:0]\rgb_o[20]_i_22_1 ;
  wire [3:0]\rgb_o[20]_i_23_0 ;
  wire [1:0]\rgb_o[20]_i_23_1 ;
  wire [3:0]\rgb_o[20]_i_23_2 ;
  wire [0:0]\rgb_o[20]_i_23_3 ;
  wire [3:0]\rgb_o[20]_i_2_0 ;
  wire \rgb_o[20]_i_55_n_0 ;
  wire [2:0]\rgb_o[20]_i_6 ;
  wire \rgb_o[20]_i_63_n_0 ;
  wire \rgb_o[20]_i_64_0 ;
  wire \rgb_o[20]_i_64_n_0 ;
  wire \rgb_o[20]_i_68_n_0 ;
  wire \rgb_o[20]_i_69_0 ;
  wire \rgb_o[20]_i_69_n_0 ;
  wire \rgb_o[20]_i_73_n_0 ;
  wire \rgb_o[20]_i_74_0 ;
  wire \rgb_o[20]_i_74_n_0 ;
  wire \rgb_o[20]_i_9_n_0 ;
  wire \rgb_o_reg[0]_0 ;
  wire \rgb_o_reg[10]_0 ;
  wire \rgb_o_reg[11]_0 ;
  wire \rgb_o_reg[12]_0 ;
  wire \rgb_o_reg[13]_0 ;
  wire \rgb_o_reg[20]_i_134 ;
  wire \rgb_o_reg[8]_0 ;
  wire [0:0]\rgb_o_reg[8]_1 ;
  wire [3:0]\rgb_o_reg[8]_2 ;
  wire \rgb_o_reg[8]_3 ;
  wire \rgb_o_reg[9]_0 ;
  wire sleep_mode;
  wire text_s10;
  wire text_s1_reg;
  wire text_s1_reg_0;
  wire text_s1_reg_1;
  wire vs;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[0]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[10]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[10]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \base_s1[11]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[11]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \base_s1[12]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[12]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[13]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[13]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[14]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[8]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[15]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[9]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[16]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[16]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[17]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[17]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[18]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[18]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[19]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[19]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[1]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \base_s1[20]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[20]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[22]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[17]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[2]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[3]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[4]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \base_s1[5]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \base_s1[6]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[8]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[8]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5501)) 
    \base_s1[9]_i_1 
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0] ),
        .I2(\base_s1_reg[0]_0 ),
        .I3(overlay_rgb[9]),
        .O(D[8]));
  FDRE de_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(de),
        .Q(overlay_de),
        .R(\rgb_o_reg[8]_0 ));
  FDRE hs_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(hs),
        .Q(overlay_hs),
        .R(\rgb_o_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \rgb_o[20]_i_16 
       (.I0(\rgb_o[20]_i_202 [0]),
        .I1(\rgb_o[20]_i_202 [1]),
        .I2(\dst_payload_reg[67]_0 ),
        .I3(\rgb_o[20]_i_16_0 [0]),
        .I4(\rgb_o[20]_i_16_0 [1]),
        .I5(\rgb_o[20]_i_55_n_0 ),
        .O(\dst_payload_reg[67] ));
  LUT5 #(
    .INIT(32'h88808888)) 
    \rgb_o[20]_i_2 
       (.I0(\rgb_o_reg[8]_1 ),
        .I1(\rgb_o_reg[8]_2 [3]),
        .I2(\rgb_o_reg[8]_2 [1]),
        .I3(\rgb_o_reg[8]_2 [2]),
        .I4(\rgb_o[20]_i_9_n_0 ),
        .O(\dst_payload_reg[40] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rgb_o[20]_i_21 
       (.I0(\rgb_o[20]_i_21_0 [2]),
        .I1(\rgb_o[20]_i_6 [2]),
        .I2(\rgb_o[20]_i_21_1 [1]),
        .I3(\rgb_o[20]_i_21_1 [0]),
        .I4(\rgb_o[20]_i_63_n_0 ),
        .I5(\rgb_o[20]_i_64_n_0 ),
        .O(\rgb_o[20]_i_64_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rgb_o[20]_i_22 
       (.I0(O[2]),
        .I1(CO),
        .I2(\rgb_o[20]_i_22_0 [2]),
        .I3(O[0]),
        .I4(\rgb_o[20]_i_68_n_0 ),
        .I5(\rgb_o[20]_i_69_n_0 ),
        .O(\rgb_o[20]_i_69_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rgb_o[20]_i_23 
       (.I0(\rgb_o[20]_i_23_0 [0]),
        .I1(\rgb_o[20]_i_23_1 [0]),
        .I2(\rgb_o[20]_i_23_2 [2]),
        .I3(\rgb_o[20]_i_73_n_0 ),
        .I4(\rgb_o[20]_i_74_n_0 ),
        .O(\rgb_o[20]_i_74_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rgb_o[20]_i_53 
       (.I0(\rgb_o[20]_i_202 [2]),
        .I1(\rgb_o[20]_i_202 [3]),
        .O(\dst_payload_reg[67]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rgb_o[20]_i_55 
       (.I0(\rgb_o[20]_i_16_0 [2]),
        .I1(\rgb_o[20]_i_16_0 [3]),
        .O(\rgb_o[20]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_58 
       (.I0(\rgb_o[20]_i_20 [0]),
        .I1(\rgb_o[20]_i_20 [2]),
        .I2(\rgb_o[20]_i_20_0 ),
        .I3(\rgb_o[20]_i_20 [1]),
        .O(\rgb_o_reg[20]_i_134 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rgb_o[20]_i_63 
       (.I0(\rgb_o[20]_i_21_2 ),
        .I1(\rgb_o[20]_i_6 [0]),
        .I2(\rgb_o[20]_i_21_0 [1]),
        .I3(\rgb_o[20]_i_21_1 [3]),
        .O(\rgb_o[20]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_64 
       (.I0(\rgb_o[20]_i_21_0 [3]),
        .I1(\rgb_o[20]_i_21_1 [2]),
        .I2(\rgb_o[20]_i_6 [1]),
        .I3(\rgb_o[20]_i_21_0 [0]),
        .O(\rgb_o[20]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_68 
       (.I0(\rgb_o[20]_i_22_1 [0]),
        .I1(\rgb_o[20]_i_22_1 [3]),
        .I2(\rgb_o[20]_i_22_0 [3]),
        .I3(\rgb_o[20]_i_22_1 [2]),
        .O(\rgb_o[20]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_69 
       (.I0(\rgb_o[20]_i_22_0 [1]),
        .I1(\rgb_o[20]_i_22_1 [1]),
        .I2(O[1]),
        .I3(\rgb_o[20]_i_22_0 [0]),
        .O(\rgb_o[20]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rgb_o[20]_i_73 
       (.I0(\rgb_o[20]_i_23_0 [1]),
        .I1(\rgb_o[20]_i_23_0 [2]),
        .I2(\rgb_o[20]_i_23_3 ),
        .I3(\rgb_o[20]_i_23_0 [3]),
        .O(\rgb_o[20]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_o[20]_i_74 
       (.I0(\rgb_o[20]_i_23_2 [0]),
        .I1(\rgb_o[20]_i_23_1 [1]),
        .I2(\rgb_o[20]_i_23_2 [1]),
        .I3(\rgb_o[20]_i_23_2 [3]),
        .O(\rgb_o[20]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h55555557)) 
    \rgb_o[20]_i_9 
       (.I0(\rgb_o_reg[8]_2 [0]),
        .I1(\rgb_o[20]_i_2_0 [1]),
        .I2(\rgb_o[20]_i_2_0 [2]),
        .I3(\rgb_o[20]_i_2_0 [3]),
        .I4(\rgb_o[20]_i_2_0 [0]),
        .O(\rgb_o[20]_i_9_n_0 ));
  FDRE \rgb_o_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[0]),
        .Q(overlay_rgb[0]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[10]_0 ),
        .Q(overlay_rgb[10]),
        .R(\rgb_o_reg[8]_0 ));
  FDRE \rgb_o_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[11]_0 ),
        .Q(overlay_rgb[11]),
        .R(\rgb_o_reg[8]_0 ));
  FDRE \rgb_o_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[12]_0 ),
        .Q(overlay_rgb[12]),
        .R(\rgb_o_reg[8]_0 ));
  FDRE \rgb_o_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[13]_0 ),
        .Q(overlay_rgb[13]),
        .R(\rgb_o_reg[8]_0 ));
  FDRE \rgb_o_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[5]),
        .Q(overlay_rgb[16]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[6]),
        .Q(overlay_rgb[17]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[7]),
        .Q(overlay_rgb[18]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[8]),
        .Q(overlay_rgb[19]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[1]),
        .Q(overlay_rgb[1]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[9]),
        .Q(overlay_rgb[20]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[2]),
        .Q(overlay_rgb[2]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[3]),
        .Q(overlay_rgb[3]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(rgb[4]),
        .Q(overlay_rgb[4]),
        .R(\rgb_o_reg[0]_0 ));
  FDRE \rgb_o_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[8]_3 ),
        .Q(overlay_rgb[8]),
        .R(\rgb_o_reg[8]_0 ));
  FDRE \rgb_o_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\rgb_o_reg[9]_0 ),
        .Q(overlay_rgb[9]),
        .R(\rgb_o_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0202020200000200)) 
    text_s1_i_1
       (.I0(overlay_de),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(text_s1_reg),
        .I4(text_s1_reg_0),
        .I5(text_s1_reg_1),
        .O(text_s10));
  FDRE vs_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(vs),
        .Q(overlay_vs),
        .R(\rgb_o_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "tx2_axis_sink" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_axis_sink
   (RST0,
    \dst_payload_reg[40] ,
    \dst_payload_reg[72] ,
    box_ack,
    box_timeout,
    box_reset_event,
    box_expired,
    box_busy,
    box_channel_ready,
    status,
    s_tready,
    tmds_data_p,
    tmds_data_n,
    tmds_clk_p,
    tmds_clk_n,
    pixel_clk,
    hdmi_disable,
    \rgb_o_reg[20]_i_85 ,
    \rgb_o_reg[20]_i_30 ,
    right,
    S,
    bottom,
    DI,
    \rgb_o[20]_i_21 ,
    \rgb_o[20]_i_10 ,
    \rgb_o[20]_i_10_0 ,
    box_send,
    rst_n,
    box_src_rst_n,
    \rgb_o_reg[23]_i_2 ,
    box_invalidate,
    box_recover,
    box_src_clk,
    box_payload,
    s_tdata,
    s_tvalid,
    s_tuser,
    s_tlast,
    serial_clk);
  output RST0;
  output [6:0]\dst_payload_reg[40] ;
  output [7:0]\dst_payload_reg[72] ;
  output box_ack;
  output box_timeout;
  output box_reset_event;
  output box_expired;
  output box_busy;
  output box_channel_ready;
  output [16:0]status;
  output s_tready;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_clk_p;
  output tmds_clk_n;
  input pixel_clk;
  input hdmi_disable;
  input \rgb_o_reg[20]_i_85 ;
  input \rgb_o_reg[20]_i_30 ;
  input [2:0]right;
  input [0:0]S;
  input [1:0]bottom;
  input [0:0]DI;
  input [1:0]\rgb_o[20]_i_21 ;
  input [0:0]\rgb_o[20]_i_10 ;
  input [0:0]\rgb_o[20]_i_10_0 ;
  input box_send;
  input rst_n;
  input box_src_rst_n;
  input \rgb_o_reg[23]_i_2 ;
  input box_invalidate;
  input box_recover;
  input box_src_clk;
  input [159:0]box_payload;
  input [15:0]s_tdata;
  input s_tvalid;
  input s_tuser;
  input s_tlast;
  input serial_clk;

  wire [0:0]DI;
  wire RST0;
  wire [0:0]S;
  wire [10:1]active_x;
  wire [9:1]active_y;
  wire [72:32]applied_payload;
  wire [1:0]bottom;
  wire box_ack;
  wire box_busy;
  wire box_channel_ready;
  wire box_expired;
  wire box_invalidate;
  wire [159:0]box_payload;
  wire box_recover;
  wire box_reset_event;
  wire box_send;
  wire box_src_clk;
  wire box_src_rst_n;
  wire box_timeout;
  wire de;
  (* async_reg = "true" *) wire disable_meta;
  (* async_reg = "true" *) wire disable_sync;
  wire [6:0]\dst_payload_reg[40] ;
  wire [7:0]\dst_payload_reg[72] ;
  wire frame_start;
  wire hdmi_disable;
  wire hs;
  wire [10:10]left;
  wire [10:1]osd_x;
  wire [9:1]osd_y;
  wire overlay_de;
  wire overlay_hs;
  wire overlay_vs;
  wire [22:0]p_0_in;
  wire pixel_clk;
  wire [3:0]qm_ones;
  wire [20:0]rgb;
  wire [0:0]\rgb_o[20]_i_10 ;
  wire [0:0]\rgb_o[20]_i_10_0 ;
  wire [1:0]\rgb_o[20]_i_21 ;
  wire \rgb_o_reg[20]_i_30 ;
  wire \rgb_o_reg[20]_i_85 ;
  wire \rgb_o_reg[23]_i_2 ;
  wire [2:0]right;
  wire rst_n;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;
  wire serial_clk;
  wire sleep_mode;
  wire [16:0]status;
  wire status_de;
  wire status_hs;
  wire [16:0]status_rgb;
  wire status_vs;
  wire text_s10;
  wire tmds_clk_n;
  wire tmds_clk_p;
  wire [2:0]tmds_data_n;
  wire [2:0]tmds_data_p;
  wire \u_blue/p_0_in0_in ;
  wire \u_blue/p_0_in1_in ;
  wire \u_blue/p_0_in2_in ;
  wire \u_blue/p_0_in3_in ;
  wire \u_blue/p_0_in4_in ;
  wire \u_blue/p_0_in5_in ;
  wire [8:8]\u_blue/qm ;
  wire u_box_mailbox_n_11;
  wire u_box_mailbox_n_12;
  wire u_box_mailbox_n_13;
  wire u_box_mailbox_n_14;
  wire u_box_mailbox_n_35;
  wire u_box_mailbox_n_36;
  wire u_box_mailbox_n_37;
  wire u_box_mailbox_n_38;
  wire u_box_mailbox_n_39;
  wire u_box_mailbox_n_40;
  wire u_box_mailbox_n_41;
  wire u_box_mailbox_n_42;
  wire u_box_mailbox_n_43;
  wire u_box_mailbox_n_44;
  wire u_box_mailbox_n_45;
  wire u_box_mailbox_n_46;
  wire u_box_mailbox_n_47;
  wire u_box_mailbox_n_48;
  wire u_box_mailbox_n_49;
  wire u_box_mailbox_n_50;
  wire u_box_mailbox_n_51;
  wire u_box_mailbox_n_52;
  wire u_box_mailbox_n_53;
  wire u_box_mailbox_n_54;
  wire u_box_mailbox_n_55;
  wire u_box_mailbox_n_56;
  wire u_box_overlay_n_3;
  wire u_box_overlay_n_4;
  wire u_box_overlay_n_5;
  wire u_box_overlay_n_6;
  wire u_box_overlay_n_7;
  wire u_box_overlay_n_8;
  wire u_box_overlay_n_9;
  wire \u_green/p_0_in0_in ;
  wire \u_green/p_0_in1_in ;
  wire \u_green/p_0_in2_in ;
  wire \u_green/p_0_in3_in ;
  wire \u_green/p_0_in4_in ;
  wire \u_green/p_0_in5_in ;
  wire [8:8]\u_green/qm ;
  wire \u_red/p_0_in0_in ;
  wire \u_red/p_0_in1_in ;
  wire \u_red/p_0_in2_in ;
  wire \u_red/p_0_in3_in ;
  wire \u_red/p_0_in4_in ;
  wire \u_red/p_0_in5_in ;
  wire [8:8]\u_red/qm ;
  wire u_sleep_osd_n_10;
  wire u_sleep_osd_n_22;
  wire u_sleep_osd_n_23;
  wire u_sleep_osd_n_24;
  wire u_sleep_osd_n_25;
  wire u_sleep_osd_n_26;
  wire u_sleep_osd_n_34;
  wire u_sleep_osd_n_35;
  wire u_sleep_osd_n_36;
  wire u_sleep_osd_n_37;
  wire u_sleep_osd_n_38;
  wire u_sleep_osd_n_46;
  wire u_sleep_osd_n_6;
  wire u_sleep_osd_n_7;
  wire u_sleep_osd_n_8;
  wire u_sleep_osd_n_9;
  wire u_view_n_23;
  wire u_view_n_24;
  wire u_view_n_25;
  wire u_view_n_26;
  wire u_view_n_27;
  wire u_view_n_28;
  wire u_view_n_29;
  wire u_view_n_30;
  wire u_view_n_31;
  wire u_view_n_32;
  wire u_view_n_33;
  wire u_view_n_34;
  wire u_view_n_35;
  wire u_view_n_36;
  wire u_view_n_37;
  wire u_view_n_38;
  wire u_view_n_39;
  wire u_view_n_40;
  wire u_view_n_41;
  wire u_view_n_42;
  wire u_view_n_43;
  wire u_view_n_44;
  wire u_view_n_45;
  wire u_view_n_46;
  wire u_view_n_47;
  wire u_view_n_48;
  wire u_view_n_49;
  wire u_view_n_50;
  wire u_view_n_51;
  wire u_view_n_52;
  wire u_view_n_53;
  wire u_view_n_54;
  wire u_view_n_55;
  wire u_view_n_56;
  wire u_view_n_57;
  wire u_view_n_58;
  wire u_view_n_59;
  wire u_view_n_60;
  wire u_view_n_61;
  wire u_view_n_62;
  wire u_view_n_63;
  wire u_view_n_64;
  wire vs;
  wire [2:0]x_end;
  wire [1:0]y_end;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE disable_meta_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(hdmi_disable),
        .Q(disable_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE disable_sync_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(disable_meta),
        .Q(disable_sync));
  FDCE \osd_x_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[10]),
        .Q(osd_x[10]));
  FDCE \osd_x_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[1]),
        .Q(osd_x[1]));
  FDCE \osd_x_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[2]),
        .Q(osd_x[2]));
  FDCE \osd_x_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[3]),
        .Q(osd_x[3]));
  FDCE \osd_x_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[4]),
        .Q(osd_x[4]));
  FDCE \osd_x_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[5]),
        .Q(osd_x[5]));
  FDCE \osd_x_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[6]),
        .Q(osd_x[6]));
  FDCE \osd_x_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[7]),
        .Q(osd_x[7]));
  FDCE \osd_x_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[8]),
        .Q(osd_x[8]));
  FDCE \osd_x_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_x[9]),
        .Q(osd_x[9]));
  FDCE \osd_y_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[1]),
        .Q(osd_y[1]));
  FDCE \osd_y_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[2]),
        .Q(osd_y[2]));
  FDCE \osd_y_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[3]),
        .Q(osd_y[3]));
  FDCE \osd_y_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[4]),
        .Q(osd_y[4]));
  FDCE \osd_y_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[5]),
        .Q(osd_y[5]));
  FDCE \osd_y_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[6]),
        .Q(osd_y[6]));
  FDCE \osd_y_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[7]),
        .Q(osd_y[7]));
  FDCE \osd_y_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[8]),
        .Q(osd_y[8]));
  FDCE \osd_y_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(active_y[9]),
        .Q(osd_y[9]));
  FDCE sleep_mode_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(RST0),
        .D(u_view_n_63),
        .Q(sleep_mode));
  facebox_system_tx2_axis_sink_0_0_bbox_mailbox u_box_mailbox
       (.CO(\dst_payload_reg[40] [6]),
        .DI(u_box_mailbox_n_11),
        .O({u_view_n_57,u_view_n_59,u_view_n_60}),
        .Q({applied_payload[72],applied_payload[67:64],applied_payload[36:32]}),
        .S({u_box_mailbox_n_12,u_box_mailbox_n_13}),
        .active_x(active_x),
        .active_y(active_y),
        .\active_y_reg[7] ({u_box_mailbox_n_35,u_box_mailbox_n_36,u_box_mailbox_n_37,u_box_mailbox_n_38}),
        .\active_y_reg[9] (u_box_mailbox_n_39),
        .\active_y_reg[9]_0 ({u_box_mailbox_n_40,u_box_mailbox_n_41}),
        .box_ack(box_ack),
        .box_busy(box_busy),
        .box_channel_ready(box_channel_ready),
        .box_expired(box_expired),
        .box_invalidate(box_invalidate),
        .box_payload(box_payload),
        .box_recover(box_recover),
        .box_reset_event(box_reset_event),
        .box_send(box_send),
        .box_src_clk(box_src_clk),
        .box_src_rst_n(box_src_rst_n),
        .box_timeout(box_timeout),
        .\dst_payload_reg[34]_0 ({u_box_mailbox_n_47,u_box_mailbox_n_48,u_box_mailbox_n_49}),
        .\dst_payload_reg[35]_0 ({\dst_payload_reg[40] [0],x_end}),
        .\dst_payload_reg[37]_0 ({u_box_mailbox_n_42,u_box_mailbox_n_43,u_box_mailbox_n_44}),
        .\dst_payload_reg[39]_0 (\dst_payload_reg[40] [4:1]),
        .\dst_payload_reg[40]_0 (\dst_payload_reg[40] [5]),
        .\dst_payload_reg[65]_0 ({u_box_mailbox_n_45,u_box_mailbox_n_46}),
        .\dst_payload_reg[66]_0 (u_box_mailbox_n_14),
        .\dst_payload_reg[67]_0 ({\dst_payload_reg[72] [1:0],y_end}),
        .\dst_payload_reg[71]_0 (\dst_payload_reg[72] [5:2]),
        .\dst_payload_reg[72]_0 (\dst_payload_reg[72] [7:6]),
        .frame_start(frame_start),
        .left(left),
        .pixel_clk(pixel_clk),
        .rgb(rgb[13:8]),
        .\rgb_o[20]_i_20_0 (u_view_n_26),
        .\rgb_o[20]_i_23 (u_view_n_39),
        .\rgb_o[20]_i_3_0 (u_view_n_61),
        .\rgb_o[20]_i_3_1 (u_view_n_24),
        .\rgb_o[20]_i_59_0 (u_view_n_56),
        .\rgb_o[20]_i_59_1 (u_view_n_62),
        .\rgb_o[20]_i_6_0 (u_box_overlay_n_8),
        .\rgb_o_reg[0] (u_view_n_25),
        .\rgb_o_reg[0]_0 (u_box_overlay_n_4),
        .\rgb_o_reg[0]_1 (u_box_overlay_n_9),
        .\rgb_o_reg[0]_2 (u_box_overlay_n_6),
        .\rgb_o_reg[0]_3 (u_box_overlay_n_7),
        .\rgb_o_reg[20]_i_13_0 (u_view_n_23),
        .\rgb_o_reg[20]_i_13_1 (u_view_n_64),
        .\rgb_o_reg[8] (u_box_overlay_n_3),
        .\rgb_reg[10] (u_box_mailbox_n_52),
        .\rgb_reg[11] (u_box_mailbox_n_53),
        .\rgb_reg[12] (u_box_mailbox_n_54),
        .\rgb_reg[13] (u_box_mailbox_n_55),
        .\rgb_reg[8] (u_box_mailbox_n_50),
        .\rgb_reg[9] (u_box_mailbox_n_51),
        .rst_n(rst_n),
        .rst_n_0(u_box_mailbox_n_56));
  facebox_system_tx2_axis_sink_0_0_hdmi_bbox_overlay u_box_overlay
       (.CO(u_view_n_38),
        .D({p_0_in[22],p_0_in[20:8],p_0_in[6:0]}),
        .O({u_view_n_27,u_view_n_28,u_view_n_29}),
        .Q({osd_y[9],osd_y[7]}),
        .\base_s1_reg[0] (u_sleep_osd_n_10),
        .\base_s1_reg[0]_0 (u_sleep_osd_n_6),
        .de(de),
        .\dst_payload_reg[40] (u_box_overlay_n_3),
        .\dst_payload_reg[67] (u_box_overlay_n_4),
        .\dst_payload_reg[67]_0 (u_box_overlay_n_5),
        .hs(hs),
        .overlay_de(overlay_de),
        .overlay_hs(overlay_hs),
        .overlay_vs(overlay_vs),
        .pixel_clk(pixel_clk),
        .rgb({rgb[20:16],rgb[4:0]}),
        .\rgb_o[20]_i_16_0 (\dst_payload_reg[72] [5:2]),
        .\rgb_o[20]_i_20 ({u_box_mailbox_n_42,u_box_mailbox_n_43,u_box_mailbox_n_44}),
        .\rgb_o[20]_i_202 ({\dst_payload_reg[72] [1:0],y_end}),
        .\rgb_o[20]_i_20_0 (u_view_n_58),
        .\rgb_o[20]_i_21_0 ({u_view_n_47,u_view_n_48,u_view_n_49,u_view_n_50}),
        .\rgb_o[20]_i_21_1 ({u_view_n_51,u_view_n_52,u_view_n_53,u_view_n_54}),
        .\rgb_o[20]_i_21_2 (u_view_n_55),
        .\rgb_o[20]_i_22_0 ({u_view_n_30,u_view_n_31,u_view_n_32,u_view_n_33}),
        .\rgb_o[20]_i_22_1 ({u_view_n_34,u_view_n_35,u_view_n_36,u_view_n_37}),
        .\rgb_o[20]_i_23_0 ({u_box_mailbox_n_35,u_box_mailbox_n_36,u_box_mailbox_n_37,u_box_mailbox_n_38}),
        .\rgb_o[20]_i_23_1 ({u_box_mailbox_n_40,u_box_mailbox_n_41}),
        .\rgb_o[20]_i_23_2 ({u_view_n_40,u_view_n_41,u_view_n_42,u_view_n_43}),
        .\rgb_o[20]_i_23_3 (u_box_mailbox_n_39),
        .\rgb_o[20]_i_2_0 ({\dst_payload_reg[40] [0],x_end}),
        .\rgb_o[20]_i_6 ({u_view_n_44,u_view_n_45,u_view_n_46}),
        .\rgb_o[20]_i_64_0 (u_box_overlay_n_9),
        .\rgb_o[20]_i_69_0 (u_box_overlay_n_6),
        .\rgb_o[20]_i_74_0 (u_box_overlay_n_7),
        .\rgb_o_reg[0]_0 (u_box_mailbox_n_56),
        .\rgb_o_reg[10]_0 (u_box_mailbox_n_52),
        .\rgb_o_reg[11]_0 (u_box_mailbox_n_53),
        .\rgb_o_reg[12]_0 (u_box_mailbox_n_54),
        .\rgb_o_reg[13]_0 (u_box_mailbox_n_55),
        .\rgb_o_reg[20]_i_134 (u_box_overlay_n_8),
        .\rgb_o_reg[8]_0 (RST0),
        .\rgb_o_reg[8]_1 (\dst_payload_reg[40] [5]),
        .\rgb_o_reg[8]_2 (\dst_payload_reg[40] [4:1]),
        .\rgb_o_reg[8]_3 (u_box_mailbox_n_50),
        .\rgb_o_reg[9]_0 (u_box_mailbox_n_51),
        .sleep_mode(sleep_mode),
        .text_s10(text_s10),
        .text_s1_reg(u_sleep_osd_n_8),
        .text_s1_reg_0(u_sleep_osd_n_7),
        .text_s1_reg_1(u_sleep_osd_n_9),
        .vs(vs));
  facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd u_sleep_osd
       (.D({p_0_in[22],p_0_in[20:8],p_0_in[6:0]}),
        .Q({status_rgb[16],status_rgb[8],status_rgb[0]}),
        .\base_s1_reg[0]_0 (osd_x),
        .\base_s1_reg[0]_1 (osd_y),
        .\osd_x_reg[10] (u_sleep_osd_n_6),
        .\osd_x_reg[10]_0 (u_sleep_osd_n_7),
        .\osd_y_reg[8] (u_sleep_osd_n_8),
        .\osd_y_reg[9] (u_sleep_osd_n_10),
        .overlay_de(overlay_de),
        .overlay_hs(overlay_hs),
        .overlay_vs(overlay_vs),
        .pixel_clk(pixel_clk),
        .\rgb_o_reg[13]_0 ({u_sleep_osd_n_23,u_sleep_osd_n_24,u_sleep_osd_n_25,u_sleep_osd_n_26}),
        .\rgb_o_reg[15]_0 ({\u_green/qm ,\u_green/p_0_in5_in ,\u_green/p_0_in4_in ,\u_green/p_0_in3_in ,\u_green/p_0_in2_in ,\u_green/p_0_in1_in ,\u_green/p_0_in0_in ,u_sleep_osd_n_34}),
        .\rgb_o_reg[16]_0 ({\u_red/qm ,\u_red/p_0_in5_in ,\u_red/p_0_in4_in ,\u_red/p_0_in3_in ,\u_red/p_0_in2_in ,\u_red/p_0_in1_in ,\u_red/p_0_in0_in ,u_sleep_osd_n_46}),
        .\rgb_o_reg[23]_0 ({u_sleep_osd_n_35,u_sleep_osd_n_36,u_sleep_osd_n_37,u_sleep_osd_n_38}),
        .\rgb_o_reg[23]_i_2_0 (\rgb_o_reg[23]_i_2 ),
        .\rgb_o_reg[5]_0 (qm_ones),
        .\rgb_o_reg[7]_0 ({\u_blue/qm ,\u_blue/p_0_in5_in ,\u_blue/p_0_in4_in ,\u_blue/p_0_in3_in ,\u_blue/p_0_in2_in ,\u_blue/p_0_in1_in ,\u_blue/p_0_in0_in ,u_sleep_osd_n_22}),
        .sleep_mode(sleep_mode),
        .sleep_mode_reg(u_sleep_osd_n_9),
        .status_de(status_de),
        .status_hs(status_hs),
        .status_vs(status_vs),
        .text_s10(text_s10),
        .vs_o_reg_0(RST0));
  facebox_system_tx2_axis_sink_0_0_tx2_video_out u_tx
       (.D({\u_blue/qm ,\u_blue/p_0_in5_in ,\u_blue/p_0_in4_in ,\u_blue/p_0_in3_in ,\u_blue/p_0_in2_in ,\u_blue/p_0_in1_in ,\u_blue/p_0_in0_in ,u_sleep_osd_n_22,status_rgb[0]}),
        .\ones_q_reg[3] (qm_ones),
        .\ones_q_reg[3]_0 ({u_sleep_osd_n_23,u_sleep_osd_n_24,u_sleep_osd_n_25,u_sleep_osd_n_26}),
        .\ones_q_reg[3]_1 ({u_sleep_osd_n_35,u_sleep_osd_n_36,u_sleep_osd_n_37,u_sleep_osd_n_38}),
        .pixel_clk(pixel_clk),
        .\qm_q_reg[8] ({\u_green/qm ,\u_green/p_0_in5_in ,\u_green/p_0_in4_in ,\u_green/p_0_in3_in ,\u_green/p_0_in2_in ,\u_green/p_0_in1_in ,\u_green/p_0_in0_in ,u_sleep_osd_n_34,status_rgb[8]}),
        .\qm_q_reg[8]_0 ({\u_red/qm ,\u_red/p_0_in5_in ,\u_red/p_0_in4_in ,\u_red/p_0_in3_in ,\u_red/p_0_in2_in ,\u_red/p_0_in1_in ,\u_red/p_0_in0_in ,u_sleep_osd_n_46,status_rgb[16]}),
        .rst_n(rst_n),
        .rst_n_0(RST0),
        .serial_clk(serial_clk),
        .status_de(status_de),
        .status_hs(status_hs),
        .status_vs(status_vs),
        .tmds_clk_n(tmds_clk_n),
        .tmds_clk_p(tmds_clk_p),
        .tmds_data_n(tmds_data_n),
        .tmds_data_p(tmds_data_p));
  facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport u_view
       (.CO(\dst_payload_reg[40] [6]),
        .DI(DI),
        .O({u_view_n_27,u_view_n_28,u_view_n_29}),
        .Q(active_x),
        .S(S),
        .\active_x_reg[10]_0 (u_view_n_24),
        .\active_x_reg[10]_1 (u_view_n_26),
        .\active_x_reg[10]_2 ({u_view_n_34,u_view_n_35,u_view_n_36,u_view_n_37}),
        .\active_x_reg[3]_0 (u_view_n_56),
        .\active_x_reg[3]_1 ({u_view_n_57,u_view_n_58,u_view_n_59,u_view_n_60}),
        .\active_x_reg[4]_0 (u_view_n_62),
        .\active_x_reg[7]_0 ({u_view_n_30,u_view_n_31,u_view_n_32,u_view_n_33}),
        .\active_x_reg[7]_1 (u_view_n_61),
        .\active_y_reg[0]_0 (u_view_n_64),
        .\active_y_reg[1]_0 (u_view_n_23),
        .\active_y_reg[7]_0 ({u_view_n_47,u_view_n_48,u_view_n_49,u_view_n_50}),
        .\active_y_reg[9]_0 (active_y),
        .\active_y_reg[9]_1 ({u_view_n_51,u_view_n_52,u_view_n_53,u_view_n_54}),
        .bottom(bottom),
        .de(de),
        .de_reg_0(u_view_n_25),
        .disable_sync_reg(u_view_n_63),
        .\dst_payload_reg[66] (u_view_n_39),
        .\dst_payload_reg[66]_0 ({u_view_n_40,u_view_n_41,u_view_n_42,u_view_n_43}),
        .\dst_payload_reg[67] ({u_view_n_44,u_view_n_45,u_view_n_46}),
        .frame_start(frame_start),
        .hs(hs),
        .left(left),
        .out(disable_sync),
        .pixel_clk(pixel_clk),
        .\rgb_o[20]_i_10_0 (\dst_payload_reg[72] [7:6]),
        .\rgb_o[20]_i_10_1 ({applied_payload[72],applied_payload[67:64],applied_payload[36:32]}),
        .\rgb_o[20]_i_10_2 (\rgb_o[20]_i_10 ),
        .\rgb_o[20]_i_10_3 (\rgb_o[20]_i_10_0 ),
        .\rgb_o[20]_i_20 ({u_box_mailbox_n_47,u_box_mailbox_n_48,u_box_mailbox_n_49}),
        .\rgb_o[20]_i_21 (\rgb_o[20]_i_21 ),
        .\rgb_o[20]_i_74 (u_box_mailbox_n_14),
        .\rgb_o[20]_i_74_0 ({u_box_mailbox_n_45,u_box_mailbox_n_46}),
        .\rgb_o_reg[20]_i_14 (u_box_mailbox_n_11),
        .\rgb_o_reg[20]_i_14_0 ({u_box_mailbox_n_12,u_box_mailbox_n_13}),
        .\rgb_o_reg[20]_i_174_0 (u_view_n_38),
        .\rgb_o_reg[20]_i_174_1 ({\dst_payload_reg[40] [0],x_end}),
        .\rgb_o_reg[20]_i_30_0 (\rgb_o_reg[20]_i_30 ),
        .\rgb_o_reg[20]_i_30_1 (\dst_payload_reg[72] [5:2]),
        .\rgb_o_reg[20]_i_62_0 (u_view_n_55),
        .\rgb_o_reg[20]_i_79_0 ({\dst_payload_reg[72] [1:0],y_end}),
        .\rgb_o_reg[20]_i_79_1 (u_box_overlay_n_5),
        .\rgb_o_reg[20]_i_85_0 (\dst_payload_reg[40] [5]),
        .\rgb_o_reg[20]_i_85_1 (\rgb_o_reg[20]_i_85 ),
        .\rgb_o_reg[20]_i_85_2 (\dst_payload_reg[40] [4:1]),
        .\rgb_reg[20]_0 ({rgb[20:16],rgb[13:8],rgb[4:0]}),
        .right(right),
        .rst_n(rst_n),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid),
        .sleep_mode(sleep_mode),
        .status(status),
        .\v_count_reg[0] (RST0),
        .vs(vs));
endmodule

(* ORIG_REF_NAME = "tx2_axis_viewport" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_axis_viewport
   (de,
    hs,
    vs,
    frame_start,
    Q,
    \active_y_reg[9]_0 ,
    \active_y_reg[1]_0 ,
    \active_x_reg[10]_0 ,
    de_reg_0,
    \active_x_reg[10]_1 ,
    O,
    \active_x_reg[7]_0 ,
    \active_x_reg[10]_2 ,
    \rgb_o_reg[20]_i_174_0 ,
    \dst_payload_reg[66] ,
    \dst_payload_reg[66]_0 ,
    \dst_payload_reg[67] ,
    \active_y_reg[7]_0 ,
    \active_y_reg[9]_1 ,
    \rgb_o_reg[20]_i_62_0 ,
    \active_x_reg[3]_0 ,
    \active_x_reg[3]_1 ,
    \active_x_reg[7]_1 ,
    \active_x_reg[4]_0 ,
    disable_sync_reg,
    \active_y_reg[0]_0 ,
    \rgb_reg[20]_0 ,
    status,
    s_tready,
    pixel_clk,
    \v_count_reg[0] ,
    \rgb_o_reg[20]_i_85_0 ,
    \rgb_o_reg[20]_i_85_1 ,
    \rgb_o_reg[20]_i_85_2 ,
    CO,
    \rgb_o[20]_i_10_0 ,
    \rgb_o_reg[20]_i_30_0 ,
    \rgb_o_reg[20]_i_30_1 ,
    \rgb_o_reg[20]_i_174_1 ,
    \rgb_o[20]_i_10_1 ,
    \rgb_o_reg[20]_i_79_0 ,
    \rgb_o_reg[20]_i_79_1 ,
    left,
    right,
    S,
    \rgb_o[20]_i_74 ,
    \rgb_o[20]_i_74_0 ,
    bottom,
    DI,
    \rgb_o[20]_i_21 ,
    \rgb_o[20]_i_20 ,
    \rgb_o_reg[20]_i_14 ,
    \rgb_o_reg[20]_i_14_0 ,
    \rgb_o[20]_i_10_2 ,
    \rgb_o[20]_i_10_3 ,
    out,
    sleep_mode,
    s_tdata,
    rst_n,
    s_tvalid,
    s_tuser,
    s_tlast);
  output de;
  output hs;
  output vs;
  output frame_start;
  output [9:0]Q;
  output [8:0]\active_y_reg[9]_0 ;
  output [0:0]\active_y_reg[1]_0 ;
  output [0:0]\active_x_reg[10]_0 ;
  output de_reg_0;
  output [0:0]\active_x_reg[10]_1 ;
  output [2:0]O;
  output [3:0]\active_x_reg[7]_0 ;
  output [3:0]\active_x_reg[10]_2 ;
  output [0:0]\rgb_o_reg[20]_i_174_0 ;
  output [0:0]\dst_payload_reg[66] ;
  output [3:0]\dst_payload_reg[66]_0 ;
  output [2:0]\dst_payload_reg[67] ;
  output [3:0]\active_y_reg[7]_0 ;
  output [3:0]\active_y_reg[9]_1 ;
  output [0:0]\rgb_o_reg[20]_i_62_0 ;
  output [0:0]\active_x_reg[3]_0 ;
  output [3:0]\active_x_reg[3]_1 ;
  output [0:0]\active_x_reg[7]_1 ;
  output [0:0]\active_x_reg[4]_0 ;
  output disable_sync_reg;
  output [0:0]\active_y_reg[0]_0 ;
  output [15:0]\rgb_reg[20]_0 ;
  output [16:0]status;
  output s_tready;
  input pixel_clk;
  input \v_count_reg[0] ;
  input [0:0]\rgb_o_reg[20]_i_85_0 ;
  input \rgb_o_reg[20]_i_85_1 ;
  input [3:0]\rgb_o_reg[20]_i_85_2 ;
  input [0:0]CO;
  input [1:0]\rgb_o[20]_i_10_0 ;
  input \rgb_o_reg[20]_i_30_0 ;
  input [3:0]\rgb_o_reg[20]_i_30_1 ;
  input [3:0]\rgb_o_reg[20]_i_174_1 ;
  input [9:0]\rgb_o[20]_i_10_1 ;
  input [3:0]\rgb_o_reg[20]_i_79_0 ;
  input \rgb_o_reg[20]_i_79_1 ;
  input [0:0]left;
  input [2:0]right;
  input [0:0]S;
  input [0:0]\rgb_o[20]_i_74 ;
  input [1:0]\rgb_o[20]_i_74_0 ;
  input [1:0]bottom;
  input [0:0]DI;
  input [1:0]\rgb_o[20]_i_21 ;
  input [2:0]\rgb_o[20]_i_20 ;
  input [0:0]\rgb_o_reg[20]_i_14 ;
  input [1:0]\rgb_o_reg[20]_i_14_0 ;
  input [0:0]\rgb_o[20]_i_10_2 ;
  input [0:0]\rgb_o[20]_i_10_3 ;
  input out;
  input sleep_mode;
  input [15:0]s_tdata;
  input rst_n;
  input s_tvalid;
  input s_tuser;
  input s_tlast;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [2:0]O;
  wire [9:0]Q;
  wire [0:0]S;
  wire active;
  wire [0:0]active_x;
  wire [0:0]\active_x_reg[10]_0 ;
  wire [0:0]\active_x_reg[10]_1 ;
  wire [3:0]\active_x_reg[10]_2 ;
  wire [0:0]\active_x_reg[3]_0 ;
  wire [3:0]\active_x_reg[3]_1 ;
  wire [0:0]\active_x_reg[4]_0 ;
  wire [3:0]\active_x_reg[7]_0 ;
  wire [0:0]\active_x_reg[7]_1 ;
  wire [0:0]active_y;
  wire [0:0]\active_y_reg[0]_0 ;
  wire [0:0]\active_y_reg[1]_0 ;
  wire [3:0]\active_y_reg[7]_0 ;
  wire [8:0]\active_y_reg[9]_0 ;
  wire [3:0]\active_y_reg[9]_1 ;
  wire [1:0]bottom;
  wire de;
  wire de_reg_0;
  wire disable_sync_reg;
  wire [0:0]\dst_payload_reg[66] ;
  wire [3:0]\dst_payload_reg[66]_0 ;
  wire [2:0]\dst_payload_reg[67] ;
  wire frame_start;
  wire frame_start0;
  wire \frames_displayed[3]_i_2_n_0 ;
  wire \frames_displayed_reg[11]_i_1_n_0 ;
  wire \frames_displayed_reg[11]_i_1_n_1 ;
  wire \frames_displayed_reg[11]_i_1_n_2 ;
  wire \frames_displayed_reg[11]_i_1_n_3 ;
  wire \frames_displayed_reg[11]_i_1_n_4 ;
  wire \frames_displayed_reg[11]_i_1_n_5 ;
  wire \frames_displayed_reg[11]_i_1_n_6 ;
  wire \frames_displayed_reg[11]_i_1_n_7 ;
  wire \frames_displayed_reg[15]_i_2_n_1 ;
  wire \frames_displayed_reg[15]_i_2_n_2 ;
  wire \frames_displayed_reg[15]_i_2_n_3 ;
  wire \frames_displayed_reg[15]_i_2_n_4 ;
  wire \frames_displayed_reg[15]_i_2_n_5 ;
  wire \frames_displayed_reg[15]_i_2_n_6 ;
  wire \frames_displayed_reg[15]_i_2_n_7 ;
  wire \frames_displayed_reg[3]_i_1_n_0 ;
  wire \frames_displayed_reg[3]_i_1_n_1 ;
  wire \frames_displayed_reg[3]_i_1_n_2 ;
  wire \frames_displayed_reg[3]_i_1_n_3 ;
  wire \frames_displayed_reg[3]_i_1_n_4 ;
  wire \frames_displayed_reg[3]_i_1_n_5 ;
  wire \frames_displayed_reg[3]_i_1_n_6 ;
  wire \frames_displayed_reg[3]_i_1_n_7 ;
  wire \frames_displayed_reg[7]_i_1_n_0 ;
  wire \frames_displayed_reg[7]_i_1_n_1 ;
  wire \frames_displayed_reg[7]_i_1_n_2 ;
  wire \frames_displayed_reg[7]_i_1_n_3 ;
  wire \frames_displayed_reg[7]_i_1_n_4 ;
  wire \frames_displayed_reg[7]_i_1_n_5 ;
  wire \frames_displayed_reg[7]_i_1_n_6 ;
  wire \frames_displayed_reg[7]_i_1_n_7 ;
  wire hs;
  wire [0:0]left;
  wire out;
  wire [20:0]p_0_in;
  wire pixel_clk;
  wire pixel_ok;
  wire raw_hs;
  wire raw_vs;
  wire [1:0]\rgb_o[20]_i_10_0 ;
  wire [9:0]\rgb_o[20]_i_10_1 ;
  wire [0:0]\rgb_o[20]_i_10_2 ;
  wire [0:0]\rgb_o[20]_i_10_3 ;
  wire \rgb_o[20]_i_117_n_0 ;
  wire \rgb_o[20]_i_118_n_0 ;
  wire \rgb_o[20]_i_119_n_0 ;
  wire \rgb_o[20]_i_121_n_0 ;
  wire \rgb_o[20]_i_123_n_0 ;
  wire \rgb_o[20]_i_141_n_0 ;
  wire \rgb_o[20]_i_142_n_0 ;
  wire \rgb_o[20]_i_143_n_0 ;
  wire \rgb_o[20]_i_147_n_0 ;
  wire \rgb_o[20]_i_148_n_0 ;
  wire \rgb_o[20]_i_149_n_0 ;
  wire \rgb_o[20]_i_150_n_0 ;
  wire \rgb_o[20]_i_151_n_0 ;
  wire \rgb_o[20]_i_152_n_0 ;
  wire \rgb_o[20]_i_153_n_0 ;
  wire \rgb_o[20]_i_154_n_0 ;
  wire \rgb_o[20]_i_155_n_0 ;
  wire \rgb_o[20]_i_157_n_0 ;
  wire \rgb_o[20]_i_158_n_0 ;
  wire \rgb_o[20]_i_159_n_0 ;
  wire \rgb_o[20]_i_160_n_0 ;
  wire \rgb_o[20]_i_163_n_0 ;
  wire \rgb_o[20]_i_164_n_0 ;
  wire \rgb_o[20]_i_167_n_0 ;
  wire \rgb_o[20]_i_168_n_0 ;
  wire \rgb_o[20]_i_170_n_0 ;
  wire \rgb_o[20]_i_171_n_0 ;
  wire \rgb_o[20]_i_172_n_0 ;
  wire \rgb_o[20]_i_173_n_0 ;
  wire \rgb_o[20]_i_175_n_0 ;
  wire \rgb_o[20]_i_176_n_0 ;
  wire \rgb_o[20]_i_177_n_0 ;
  wire \rgb_o[20]_i_179_n_0 ;
  wire \rgb_o[20]_i_180_n_0 ;
  wire \rgb_o[20]_i_181_n_0 ;
  wire \rgb_o[20]_i_182_n_0 ;
  wire \rgb_o[20]_i_196_n_0 ;
  wire \rgb_o[20]_i_197_n_0 ;
  wire \rgb_o[20]_i_198_n_0 ;
  wire [2:0]\rgb_o[20]_i_20 ;
  wire \rgb_o[20]_i_201_n_0 ;
  wire \rgb_o[20]_i_202_n_0 ;
  wire \rgb_o[20]_i_203_n_0 ;
  wire \rgb_o[20]_i_204_n_0 ;
  wire \rgb_o[20]_i_205_n_0 ;
  wire \rgb_o[20]_i_206_n_0 ;
  wire \rgb_o[20]_i_207_n_0 ;
  wire \rgb_o[20]_i_208_n_0 ;
  wire \rgb_o[20]_i_209_n_0 ;
  wire [1:0]\rgb_o[20]_i_21 ;
  wire \rgb_o[20]_i_212_n_0 ;
  wire \rgb_o[20]_i_213_n_0 ;
  wire \rgb_o[20]_i_214_n_0 ;
  wire \rgb_o[20]_i_215_n_0 ;
  wire \rgb_o[20]_i_254_n_0 ;
  wire \rgb_o[20]_i_256_n_0 ;
  wire \rgb_o[20]_i_258_n_0 ;
  wire \rgb_o[20]_i_259_n_0 ;
  wire \rgb_o[20]_i_260_n_0 ;
  wire \rgb_o[20]_i_261_n_0 ;
  wire \rgb_o[20]_i_262_n_0 ;
  wire \rgb_o[20]_i_263_n_0 ;
  wire \rgb_o[20]_i_264_n_0 ;
  wire \rgb_o[20]_i_265_n_0 ;
  wire \rgb_o[20]_i_266_n_0 ;
  wire \rgb_o[20]_i_267_n_0 ;
  wire \rgb_o[20]_i_268_n_0 ;
  wire \rgb_o[20]_i_32_n_0 ;
  wire [0:0]\rgb_o[20]_i_74 ;
  wire [1:0]\rgb_o[20]_i_74_0 ;
  wire \rgb_o[20]_i_81_n_0 ;
  wire \rgb_o[20]_i_83_n_0 ;
  wire [0:0]\rgb_o_reg[20]_i_14 ;
  wire [1:0]\rgb_o_reg[20]_i_14_0 ;
  wire [0:0]\rgb_o_reg[20]_i_174_0 ;
  wire [3:0]\rgb_o_reg[20]_i_174_1 ;
  wire \rgb_o_reg[20]_i_174_n_0 ;
  wire \rgb_o_reg[20]_i_174_n_1 ;
  wire \rgb_o_reg[20]_i_174_n_2 ;
  wire \rgb_o_reg[20]_i_174_n_3 ;
  wire \rgb_o_reg[20]_i_211_n_0 ;
  wire \rgb_o_reg[20]_i_211_n_1 ;
  wire \rgb_o_reg[20]_i_211_n_2 ;
  wire \rgb_o_reg[20]_i_211_n_3 ;
  wire \rgb_o_reg[20]_i_30_0 ;
  wire [3:0]\rgb_o_reg[20]_i_30_1 ;
  wire \rgb_o_reg[20]_i_30_n_2 ;
  wire \rgb_o_reg[20]_i_30_n_3 ;
  wire \rgb_o_reg[20]_i_47_n_1 ;
  wire \rgb_o_reg[20]_i_47_n_2 ;
  wire \rgb_o_reg[20]_i_47_n_3 ;
  wire \rgb_o_reg[20]_i_57_n_1 ;
  wire \rgb_o_reg[20]_i_57_n_2 ;
  wire \rgb_o_reg[20]_i_57_n_3 ;
  wire \rgb_o_reg[20]_i_60_n_0 ;
  wire \rgb_o_reg[20]_i_60_n_1 ;
  wire \rgb_o_reg[20]_i_60_n_2 ;
  wire \rgb_o_reg[20]_i_60_n_3 ;
  wire \rgb_o_reg[20]_i_61_n_0 ;
  wire \rgb_o_reg[20]_i_61_n_1 ;
  wire \rgb_o_reg[20]_i_61_n_2 ;
  wire \rgb_o_reg[20]_i_61_n_3 ;
  wire [0:0]\rgb_o_reg[20]_i_62_0 ;
  wire \rgb_o_reg[20]_i_62_n_0 ;
  wire \rgb_o_reg[20]_i_62_n_1 ;
  wire \rgb_o_reg[20]_i_62_n_2 ;
  wire \rgb_o_reg[20]_i_62_n_3 ;
  wire \rgb_o_reg[20]_i_65_n_0 ;
  wire \rgb_o_reg[20]_i_65_n_1 ;
  wire \rgb_o_reg[20]_i_65_n_2 ;
  wire \rgb_o_reg[20]_i_65_n_3 ;
  wire \rgb_o_reg[20]_i_67_n_0 ;
  wire \rgb_o_reg[20]_i_67_n_1 ;
  wire \rgb_o_reg[20]_i_67_n_2 ;
  wire \rgb_o_reg[20]_i_67_n_3 ;
  wire \rgb_o_reg[20]_i_72_n_1 ;
  wire \rgb_o_reg[20]_i_72_n_2 ;
  wire \rgb_o_reg[20]_i_72_n_3 ;
  wire [3:0]\rgb_o_reg[20]_i_79_0 ;
  wire \rgb_o_reg[20]_i_79_1 ;
  wire \rgb_o_reg[20]_i_79_n_0 ;
  wire \rgb_o_reg[20]_i_79_n_1 ;
  wire \rgb_o_reg[20]_i_79_n_2 ;
  wire \rgb_o_reg[20]_i_79_n_3 ;
  wire [0:0]\rgb_o_reg[20]_i_85_0 ;
  wire \rgb_o_reg[20]_i_85_1 ;
  wire [3:0]\rgb_o_reg[20]_i_85_2 ;
  wire \rgb_o_reg[20]_i_85_n_2 ;
  wire \rgb_o_reg[20]_i_85_n_3 ;
  wire [15:0]\rgb_reg[20]_0 ;
  wire [2:0]right;
  wire rst_n;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tuser;
  wire s_tvalid;
  wire sleep_mode;
  wire [16:0]status;
  wire stream_locked_reg_n_0;
  wire u_raster_n_0;
  wire u_raster_n_1;
  wire u_raster_n_10;
  wire u_raster_n_11;
  wire u_raster_n_12;
  wire u_raster_n_13;
  wire u_raster_n_15;
  wire u_raster_n_16;
  wire u_raster_n_17;
  wire u_raster_n_18;
  wire u_raster_n_19;
  wire u_raster_n_2;
  wire u_raster_n_20;
  wire u_raster_n_21;
  wire u_raster_n_22;
  wire u_raster_n_23;
  wire u_raster_n_24;
  wire u_raster_n_3;
  wire u_raster_n_4;
  wire u_raster_n_41;
  wire u_raster_n_5;
  wire u_raster_n_6;
  wire u_raster_n_7;
  wire u_raster_n_8;
  wire u_raster_n_9;
  wire underflow_sticky0;
  wire underflow_sticky_i_3_n_0;
  wire underflow_sticky_i_4_n_0;
  wire underflow_sticky_i_5_n_0;
  wire \v_count_reg[0] ;
  wire vs;
  wire [3:3]\NLW_frames_displayed_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_o_reg[20]_i_169_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_169_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_211_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_30_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_47_O_UNCONNECTED ;
  wire [0:0]\NLW_rgb_o_reg[20]_i_61_O_UNCONNECTED ;
  wire [0:0]\NLW_rgb_o_reg[20]_i_65_O_UNCONNECTED ;
  wire [3:1]\NLW_rgb_o_reg[20]_i_66_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_66_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_79_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_o_reg[20]_i_85_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_o_reg[20]_i_85_O_UNCONNECTED ;

  FDCE \active_x_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_13),
        .Q(active_x));
  FDCE \active_x_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_3),
        .Q(Q[9]));
  FDCE \active_x_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_12),
        .Q(Q[0]));
  FDCE \active_x_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_11),
        .Q(Q[1]));
  FDCE \active_x_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_10),
        .Q(Q[2]));
  FDCE \active_x_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_9),
        .Q(Q[3]));
  FDCE \active_x_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_8),
        .Q(Q[4]));
  FDCE \active_x_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_7),
        .Q(Q[5]));
  FDCE \active_x_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_6),
        .Q(Q[6]));
  FDCE \active_x_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_5),
        .Q(Q[7]));
  FDCE \active_x_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_4),
        .Q(Q[8]));
  FDCE \active_y_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_24),
        .Q(active_y));
  FDCE \active_y_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_23),
        .Q(\active_y_reg[9]_0 [0]));
  FDCE \active_y_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_22),
        .Q(\active_y_reg[9]_0 [1]));
  FDCE \active_y_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_21),
        .Q(\active_y_reg[9]_0 [2]));
  FDCE \active_y_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_20),
        .Q(\active_y_reg[9]_0 [3]));
  FDCE \active_y_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_19),
        .Q(\active_y_reg[9]_0 [4]));
  FDCE \active_y_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_18),
        .Q(\active_y_reg[9]_0 [5]));
  FDCE \active_y_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_17),
        .Q(\active_y_reg[9]_0 [6]));
  FDCE \active_y_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_16),
        .Q(\active_y_reg[9]_0 [7]));
  FDCE \active_y_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_15),
        .Q(\active_y_reg[9]_0 [8]));
  FDCE de_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(active),
        .Q(de));
  FDCE frame_start_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(frame_start0),
        .Q(frame_start));
  LUT1 #(
    .INIT(2'h1)) 
    \frames_displayed[3]_i_2 
       (.I0(status[1]),
        .O(\frames_displayed[3]_i_2_n_0 ));
  FDCE \frames_displayed_reg[0] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[3]_i_1_n_7 ),
        .Q(status[1]));
  FDCE \frames_displayed_reg[10] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[11]_i_1_n_5 ),
        .Q(status[11]));
  FDCE \frames_displayed_reg[11] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[11]_i_1_n_4 ),
        .Q(status[12]));
  CARRY4 \frames_displayed_reg[11]_i_1 
       (.CI(\frames_displayed_reg[7]_i_1_n_0 ),
        .CO({\frames_displayed_reg[11]_i_1_n_0 ,\frames_displayed_reg[11]_i_1_n_1 ,\frames_displayed_reg[11]_i_1_n_2 ,\frames_displayed_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_displayed_reg[11]_i_1_n_4 ,\frames_displayed_reg[11]_i_1_n_5 ,\frames_displayed_reg[11]_i_1_n_6 ,\frames_displayed_reg[11]_i_1_n_7 }),
        .S(status[12:9]));
  FDCE \frames_displayed_reg[12] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[15]_i_2_n_7 ),
        .Q(status[13]));
  FDCE \frames_displayed_reg[13] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[15]_i_2_n_6 ),
        .Q(status[14]));
  FDCE \frames_displayed_reg[14] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[15]_i_2_n_5 ),
        .Q(status[15]));
  FDCE \frames_displayed_reg[15] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[15]_i_2_n_4 ),
        .Q(status[16]));
  CARRY4 \frames_displayed_reg[15]_i_2 
       (.CI(\frames_displayed_reg[11]_i_1_n_0 ),
        .CO({\NLW_frames_displayed_reg[15]_i_2_CO_UNCONNECTED [3],\frames_displayed_reg[15]_i_2_n_1 ,\frames_displayed_reg[15]_i_2_n_2 ,\frames_displayed_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_displayed_reg[15]_i_2_n_4 ,\frames_displayed_reg[15]_i_2_n_5 ,\frames_displayed_reg[15]_i_2_n_6 ,\frames_displayed_reg[15]_i_2_n_7 }),
        .S(status[16:13]));
  FDCE \frames_displayed_reg[1] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[3]_i_1_n_6 ),
        .Q(status[2]));
  FDCE \frames_displayed_reg[2] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[3]_i_1_n_5 ),
        .Q(status[3]));
  FDCE \frames_displayed_reg[3] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[3]_i_1_n_4 ),
        .Q(status[4]));
  CARRY4 \frames_displayed_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\frames_displayed_reg[3]_i_1_n_0 ,\frames_displayed_reg[3]_i_1_n_1 ,\frames_displayed_reg[3]_i_1_n_2 ,\frames_displayed_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frames_displayed_reg[3]_i_1_n_4 ,\frames_displayed_reg[3]_i_1_n_5 ,\frames_displayed_reg[3]_i_1_n_6 ,\frames_displayed_reg[3]_i_1_n_7 }),
        .S({status[4:2],\frames_displayed[3]_i_2_n_0 }));
  FDCE \frames_displayed_reg[4] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[7]_i_1_n_7 ),
        .Q(status[5]));
  FDCE \frames_displayed_reg[5] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[7]_i_1_n_6 ),
        .Q(status[6]));
  FDCE \frames_displayed_reg[6] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[7]_i_1_n_5 ),
        .Q(status[7]));
  FDCE \frames_displayed_reg[7] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[7]_i_1_n_4 ),
        .Q(status[8]));
  CARRY4 \frames_displayed_reg[7]_i_1 
       (.CI(\frames_displayed_reg[3]_i_1_n_0 ),
        .CO({\frames_displayed_reg[7]_i_1_n_0 ,\frames_displayed_reg[7]_i_1_n_1 ,\frames_displayed_reg[7]_i_1_n_2 ,\frames_displayed_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_displayed_reg[7]_i_1_n_4 ,\frames_displayed_reg[7]_i_1_n_5 ,\frames_displayed_reg[7]_i_1_n_6 ,\frames_displayed_reg[7]_i_1_n_7 }),
        .S(status[8:5]));
  FDCE \frames_displayed_reg[8] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[11]_i_1_n_7 ),
        .Q(status[9]));
  FDCE \frames_displayed_reg[9] 
       (.C(pixel_clk),
        .CE(u_raster_n_2),
        .CLR(\v_count_reg[0] ),
        .D(\frames_displayed_reg[11]_i_1_n_6 ),
        .Q(status[10]));
  FDCE hs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(raw_hs),
        .Q(hs));
  FDCE pixel_ok_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_41),
        .Q(pixel_ok));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \rgb_o[20]_i_10 
       (.I0(\rgb_o_reg[20]_i_30_n_2 ),
        .I1(de),
        .I2(CO),
        .I3(\rgb_o[20]_i_10_0 [0]),
        .I4(\rgb_o[20]_i_32_n_0 ),
        .O(de_reg_0));
  LUT3 #(
    .INIT(8'hB2)) 
    \rgb_o[20]_i_110 
       (.I0(\active_y_reg[9]_0 [0]),
        .I1(\rgb_o[20]_i_10_1 [5]),
        .I2(active_y),
        .O(\active_y_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \rgb_o[20]_i_114 
       (.I0(active_y),
        .I1(\rgb_o[20]_i_10_1 [5]),
        .I2(\active_y_reg[9]_0 [0]),
        .O(\active_y_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB828)) 
    \rgb_o[20]_i_117 
       (.I0(Q[4]),
        .I1(\rgb_o[20]_i_10_1 [4]),
        .I2(\rgb_o[20]_i_10_1 [3]),
        .I3(Q[3]),
        .O(\rgb_o[20]_i_117_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \rgb_o[20]_i_118 
       (.I0(Q[2]),
        .I1(\rgb_o[20]_i_10_1 [2]),
        .I2(Q[1]),
        .I3(\rgb_o[20]_i_10_1 [1]),
        .O(\rgb_o[20]_i_118_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \rgb_o[20]_i_119 
       (.I0(Q[0]),
        .I1(\rgb_o[20]_i_10_1 [0]),
        .I2(active_x),
        .O(\rgb_o[20]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \rgb_o[20]_i_121 
       (.I0(Q[3]),
        .I1(\rgb_o[20]_i_10_1 [3]),
        .I2(\rgb_o[20]_i_10_1 [4]),
        .I3(Q[4]),
        .O(\rgb_o[20]_i_121_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \rgb_o[20]_i_123 
       (.I0(active_x),
        .I1(\rgb_o[20]_i_10_1 [0]),
        .I2(Q[0]),
        .O(\rgb_o[20]_i_123_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_135 
       (.I0(Q[9]),
        .I1(left),
        .O(\active_x_reg[10]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_141 
       (.I0(Q[2]),
        .I1(\rgb_o[20]_i_10_1 [2]),
        .O(\rgb_o[20]_i_141_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_142 
       (.I0(Q[1]),
        .I1(\rgb_o[20]_i_10_1 [1]),
        .O(\rgb_o[20]_i_142_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rgb_o[20]_i_143 
       (.I0(Q[0]),
        .I1(\rgb_o[20]_i_10_1 [0]),
        .O(\rgb_o[20]_i_143_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_147 
       (.I0(Q[0]),
        .I1(\rgb_o[20]_i_10_1 [0]),
        .O(\rgb_o[20]_i_147_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_148 
       (.I0(\active_y_reg[9]_0 [6]),
        .O(\rgb_o[20]_i_148_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_149 
       (.I0(\active_y_reg[9]_0 [5]),
        .O(\rgb_o[20]_i_149_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_150 
       (.I0(\active_y_reg[9]_0 [4]),
        .O(\rgb_o[20]_i_150_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_151 
       (.I0(\active_y_reg[9]_0 [3]),
        .O(\rgb_o[20]_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    \rgb_o[20]_i_152 
       (.I0(\rgb_o_reg[20]_i_30_1 [2]),
        .I1(\rgb_o_reg[20]_i_79_0 [2]),
        .I2(\rgb_o_reg[20]_i_79_0 [3]),
        .I3(\rgb_o_reg[20]_i_30_1 [0]),
        .I4(\rgb_o_reg[20]_i_30_1 [1]),
        .I5(\active_y_reg[9]_0 [6]),
        .O(\rgb_o[20]_i_152_n_0 ));
  LUT5 #(
    .INIT(32'hFE0101FE)) 
    \rgb_o[20]_i_153 
       (.I0(\rgb_o_reg[20]_i_30_1 [0]),
        .I1(\rgb_o_reg[20]_i_79_0 [3]),
        .I2(\rgb_o_reg[20]_i_79_0 [2]),
        .I3(\rgb_o_reg[20]_i_30_1 [1]),
        .I4(\active_y_reg[9]_0 [5]),
        .O(\rgb_o[20]_i_153_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \rgb_o[20]_i_154 
       (.I0(\rgb_o_reg[20]_i_79_0 [2]),
        .I1(\rgb_o_reg[20]_i_79_0 [3]),
        .I2(\rgb_o_reg[20]_i_30_1 [0]),
        .I3(\active_y_reg[9]_0 [4]),
        .O(\rgb_o[20]_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rgb_o[20]_i_155 
       (.I0(\rgb_o_reg[20]_i_79_0 [3]),
        .I1(\rgb_o_reg[20]_i_79_0 [2]),
        .I2(\active_y_reg[9]_0 [3]),
        .O(\rgb_o[20]_i_155_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_157 
       (.I0(\rgb_o_reg[20]_i_79_0 [2]),
        .I1(\active_y_reg[9]_0 [2]),
        .O(\rgb_o[20]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_158 
       (.I0(\rgb_o_reg[20]_i_79_0 [1]),
        .I1(\active_y_reg[9]_0 [1]),
        .O(\rgb_o[20]_i_158_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_159 
       (.I0(\rgb_o_reg[20]_i_79_0 [0]),
        .I1(\active_y_reg[9]_0 [0]),
        .O(\rgb_o[20]_i_159_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_160 
       (.I0(active_y),
        .O(\rgb_o[20]_i_160_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_163 
       (.I0(\active_y_reg[9]_0 [8]),
        .O(\rgb_o[20]_i_163_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_164 
       (.I0(\active_y_reg[9]_0 [7]),
        .O(\rgb_o[20]_i_164_n_0 ));
  LUT5 #(
    .INIT(32'hF70808F7)) 
    \rgb_o[20]_i_167 
       (.I0(\rgb_o_reg[20]_i_30_1 [2]),
        .I1(\rgb_o_reg[20]_i_30_1 [3]),
        .I2(\rgb_o_reg[20]_i_30_0 ),
        .I3(\rgb_o[20]_i_10_0 [0]),
        .I4(\active_y_reg[9]_0 [8]),
        .O(\rgb_o[20]_i_167_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \rgb_o[20]_i_168 
       (.I0(\rgb_o_reg[20]_i_30_0 ),
        .I1(\rgb_o_reg[20]_i_30_1 [2]),
        .I2(\rgb_o_reg[20]_i_30_1 [3]),
        .I3(\active_y_reg[9]_0 [7]),
        .O(\rgb_o[20]_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_170 
       (.I0(\rgb_o_reg[20]_i_174_1 [2]),
        .I1(Q[2]),
        .O(\rgb_o[20]_i_170_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_171 
       (.I0(\rgb_o_reg[20]_i_174_1 [1]),
        .I1(Q[1]),
        .O(\rgb_o[20]_i_171_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_172 
       (.I0(\rgb_o_reg[20]_i_174_1 [0]),
        .I1(Q[0]),
        .O(\rgb_o[20]_i_172_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_173 
       (.I0(active_x),
        .O(\rgb_o[20]_i_173_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_175 
       (.I0(Q[6]),
        .O(\rgb_o[20]_i_175_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_176 
       (.I0(Q[5]),
        .O(\rgb_o[20]_i_176_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_177 
       (.I0(Q[4]),
        .O(\rgb_o[20]_i_177_n_0 ));
  LUT5 #(
    .INIT(32'hFE0101FE)) 
    \rgb_o[20]_i_179 
       (.I0(\rgb_o_reg[20]_i_85_2 [1]),
        .I1(\rgb_o_reg[20]_i_85_2 [0]),
        .I2(\rgb_o_reg[20]_i_174_1 [3]),
        .I3(\rgb_o_reg[20]_i_85_2 [2]),
        .I4(Q[6]),
        .O(\rgb_o[20]_i_179_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \rgb_o[20]_i_180 
       (.I0(\rgb_o_reg[20]_i_174_1 [3]),
        .I1(\rgb_o_reg[20]_i_85_2 [0]),
        .I2(\rgb_o_reg[20]_i_85_2 [1]),
        .I3(Q[5]),
        .O(\rgb_o[20]_i_180_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rgb_o[20]_i_181 
       (.I0(\rgb_o_reg[20]_i_85_2 [0]),
        .I1(\rgb_o_reg[20]_i_174_1 [3]),
        .I2(Q[4]),
        .O(\rgb_o[20]_i_181_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_182 
       (.I0(\rgb_o_reg[20]_i_174_1 [3]),
        .I1(Q[3]),
        .O(\rgb_o[20]_i_182_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_196 
       (.I0(\active_y_reg[9]_0 [1]),
        .I1(\rgb_o[20]_i_10_1 [6]),
        .O(\rgb_o[20]_i_196_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rgb_o[20]_i_197 
       (.I0(\active_y_reg[9]_0 [0]),
        .I1(\rgb_o[20]_i_10_1 [5]),
        .O(\rgb_o[20]_i_197_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \rgb_o[20]_i_198 
       (.I0(\active_y_reg[9]_0 [2]),
        .I1(\rgb_o[20]_i_10_1 [7]),
        .I2(\rgb_o[20]_i_10_1 [8]),
        .I3(\active_y_reg[9]_0 [3]),
        .O(\rgb_o[20]_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_o[20]_i_201 
       (.I0(\active_y_reg[9]_0 [0]),
        .I1(\rgb_o[20]_i_10_1 [5]),
        .O(\rgb_o[20]_i_201_n_0 ));
  LUT6 #(
    .INIT(64'h111111147771111D)) 
    \rgb_o[20]_i_202 
       (.I0(\active_y_reg[9]_0 [6]),
        .I1(\rgb_o_reg[20]_i_30_1 [2]),
        .I2(\rgb_o_reg[20]_i_79_1 ),
        .I3(\rgb_o_reg[20]_i_30_1 [0]),
        .I4(\rgb_o_reg[20]_i_30_1 [1]),
        .I5(\active_y_reg[9]_0 [5]),
        .O(\rgb_o[20]_i_202_n_0 ));
  LUT5 #(
    .INIT(32'h5401D543)) 
    \rgb_o[20]_i_203 
       (.I0(\active_y_reg[9]_0 [4]),
        .I1(\rgb_o_reg[20]_i_79_0 [2]),
        .I2(\rgb_o_reg[20]_i_79_0 [3]),
        .I3(\rgb_o_reg[20]_i_30_1 [0]),
        .I4(\active_y_reg[9]_0 [3]),
        .O(\rgb_o[20]_i_203_n_0 ));
  LUT4 #(
    .INIT(16'h1171)) 
    \rgb_o[20]_i_204 
       (.I0(\active_y_reg[9]_0 [2]),
        .I1(\rgb_o_reg[20]_i_79_0 [2]),
        .I2(\rgb_o_reg[20]_i_79_0 [1]),
        .I3(\active_y_reg[9]_0 [1]),
        .O(\rgb_o[20]_i_204_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_205 
       (.I0(\rgb_o_reg[20]_i_79_0 [0]),
        .I1(\active_y_reg[9]_0 [0]),
        .O(\rgb_o[20]_i_205_n_0 ));
  LUT6 #(
    .INIT(64'h6660000900066660)) 
    \rgb_o[20]_i_206 
       (.I0(\rgb_o_reg[20]_i_30_1 [2]),
        .I1(\active_y_reg[9]_0 [6]),
        .I2(\rgb_o_reg[20]_i_30_1 [0]),
        .I3(\rgb_o_reg[20]_i_79_1 ),
        .I4(\rgb_o_reg[20]_i_30_1 [1]),
        .I5(\active_y_reg[9]_0 [5]),
        .O(\rgb_o[20]_i_206_n_0 ));
  LUT5 #(
    .INIT(32'h90060990)) 
    \rgb_o[20]_i_207 
       (.I0(\rgb_o_reg[20]_i_30_1 [0]),
        .I1(\active_y_reg[9]_0 [4]),
        .I2(\rgb_o_reg[20]_i_79_0 [3]),
        .I3(\rgb_o_reg[20]_i_79_0 [2]),
        .I4(\active_y_reg[9]_0 [3]),
        .O(\rgb_o[20]_i_207_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \rgb_o[20]_i_208 
       (.I0(\rgb_o_reg[20]_i_79_0 [2]),
        .I1(\active_y_reg[9]_0 [2]),
        .I2(\rgb_o_reg[20]_i_79_0 [1]),
        .I3(\active_y_reg[9]_0 [1]),
        .O(\rgb_o[20]_i_208_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \rgb_o[20]_i_209 
       (.I0(active_y),
        .I1(\rgb_o_reg[20]_i_79_0 [0]),
        .I2(\active_y_reg[9]_0 [0]),
        .O(\rgb_o[20]_i_209_n_0 ));
  LUT5 #(
    .INIT(32'h75551000)) 
    \rgb_o[20]_i_212 
       (.I0(Q[9]),
        .I1(\rgb_o_reg[20]_i_85_1 ),
        .I2(\rgb_o_reg[20]_i_85_2 [3]),
        .I3(\rgb_o_reg[20]_i_85_0 ),
        .I4(CO),
        .O(\rgb_o[20]_i_212_n_0 ));
  LUT5 #(
    .INIT(32'h4414D41D)) 
    \rgb_o[20]_i_213 
       (.I0(Q[8]),
        .I1(\rgb_o_reg[20]_i_85_0 ),
        .I2(\rgb_o_reg[20]_i_85_2 [3]),
        .I3(\rgb_o_reg[20]_i_85_1 ),
        .I4(Q[7]),
        .O(\rgb_o[20]_i_213_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A5595)) 
    \rgb_o[20]_i_214 
       (.I0(Q[9]),
        .I1(\rgb_o_reg[20]_i_85_0 ),
        .I2(\rgb_o_reg[20]_i_85_2 [3]),
        .I3(\rgb_o_reg[20]_i_85_1 ),
        .I4(CO),
        .O(\rgb_o[20]_i_214_n_0 ));
  LUT5 #(
    .INIT(32'h90090690)) 
    \rgb_o[20]_i_215 
       (.I0(\rgb_o_reg[20]_i_85_0 ),
        .I1(Q[8]),
        .I2(\rgb_o_reg[20]_i_85_1 ),
        .I3(\rgb_o_reg[20]_i_85_2 [3]),
        .I4(Q[7]),
        .O(\rgb_o[20]_i_215_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \rgb_o[20]_i_252 
       (.I0(Q[3]),
        .I1(\rgb_o[20]_i_10_1 [3]),
        .I2(\rgb_o[20]_i_10_1 [4]),
        .I3(Q[4]),
        .O(\active_x_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_254 
       (.I0(Q[9]),
        .O(\rgb_o[20]_i_254_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_o[20]_i_256 
       (.I0(Q[7]),
        .O(\rgb_o[20]_i_256_n_0 ));
  LUT5 #(
    .INIT(32'hAA6A5595)) 
    \rgb_o[20]_i_258 
       (.I0(CO),
        .I1(\rgb_o_reg[20]_i_85_0 ),
        .I2(\rgb_o_reg[20]_i_85_2 [3]),
        .I3(\rgb_o_reg[20]_i_85_1 ),
        .I4(Q[9]),
        .O(\rgb_o[20]_i_258_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_o[20]_i_259 
       (.I0(right[1]),
        .I1(Q[8]),
        .O(\rgb_o[20]_i_259_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFEFFFE0001)) 
    \rgb_o[20]_i_260 
       (.I0(\rgb_o_reg[20]_i_85_2 [1]),
        .I1(\rgb_o_reg[20]_i_85_2 [2]),
        .I2(\rgb_o_reg[20]_i_174_1 [3]),
        .I3(\rgb_o_reg[20]_i_85_2 [0]),
        .I4(\rgb_o_reg[20]_i_85_2 [3]),
        .I5(Q[7]),
        .O(\rgb_o[20]_i_260_n_0 ));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    \rgb_o[20]_i_261 
       (.I0(Q[6]),
        .I1(\rgb_o_reg[20]_i_85_2 [1]),
        .I2(\rgb_o_reg[20]_i_85_2 [0]),
        .I3(\rgb_o_reg[20]_i_174_1 [3]),
        .I4(\rgb_o_reg[20]_i_85_2 [2]),
        .I5(Q[5]),
        .O(\rgb_o[20]_i_261_n_0 ));
  LUT4 #(
    .INIT(16'h4147)) 
    \rgb_o[20]_i_262 
       (.I0(Q[4]),
        .I1(\rgb_o_reg[20]_i_85_2 [0]),
        .I2(\rgb_o_reg[20]_i_174_1 [3]),
        .I3(Q[3]),
        .O(\rgb_o[20]_i_262_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \rgb_o[20]_i_263 
       (.I0(Q[2]),
        .I1(\rgb_o_reg[20]_i_174_1 [2]),
        .I2(\rgb_o_reg[20]_i_174_1 [1]),
        .I3(Q[1]),
        .O(\rgb_o[20]_i_263_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_264 
       (.I0(\rgb_o_reg[20]_i_174_1 [0]),
        .I1(Q[0]),
        .O(\rgb_o[20]_i_264_n_0 ));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    \rgb_o[20]_i_265 
       (.I0(\rgb_o_reg[20]_i_85_2 [2]),
        .I1(Q[6]),
        .I2(\rgb_o_reg[20]_i_174_1 [3]),
        .I3(\rgb_o_reg[20]_i_85_2 [0]),
        .I4(\rgb_o_reg[20]_i_85_2 [1]),
        .I5(Q[5]),
        .O(\rgb_o[20]_i_265_n_0 ));
  LUT4 #(
    .INIT(16'h0690)) 
    \rgb_o[20]_i_266 
       (.I0(\rgb_o_reg[20]_i_85_2 [0]),
        .I1(Q[4]),
        .I2(\rgb_o_reg[20]_i_174_1 [3]),
        .I3(Q[3]),
        .O(\rgb_o[20]_i_266_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb_o[20]_i_267 
       (.I0(\rgb_o_reg[20]_i_174_1 [2]),
        .I1(Q[2]),
        .I2(\rgb_o_reg[20]_i_174_1 [1]),
        .I3(Q[1]),
        .O(\rgb_o[20]_i_267_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \rgb_o[20]_i_268 
       (.I0(active_x),
        .I1(\rgb_o_reg[20]_i_174_1 [0]),
        .I2(Q[0]),
        .O(\rgb_o[20]_i_268_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \rgb_o[20]_i_32 
       (.I0(pixel_ok),
        .I1(\rgb_o[20]_i_10_0 [1]),
        .I2(\rgb_o_reg[20]_i_85_n_2 ),
        .I3(\rgb_o[20]_i_10_1 [9]),
        .O(\rgb_o[20]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_o[20]_i_48 
       (.I0(Q[9]),
        .I1(left),
        .O(\active_x_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h41444444D14DDD44)) 
    \rgb_o[20]_i_81 
       (.I0(\active_y_reg[9]_0 [8]),
        .I1(\rgb_o[20]_i_10_0 [0]),
        .I2(\rgb_o_reg[20]_i_30_0 ),
        .I3(\rgb_o_reg[20]_i_30_1 [3]),
        .I4(\rgb_o_reg[20]_i_30_1 [2]),
        .I5(\active_y_reg[9]_0 [7]),
        .O(\rgb_o[20]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h9099090006009099)) 
    \rgb_o[20]_i_83 
       (.I0(\rgb_o[20]_i_10_0 [0]),
        .I1(\active_y_reg[9]_0 [8]),
        .I2(\rgb_o_reg[20]_i_30_0 ),
        .I3(\rgb_o_reg[20]_i_30_1 [2]),
        .I4(\rgb_o_reg[20]_i_30_1 [3]),
        .I5(\active_y_reg[9]_0 [7]),
        .O(\rgb_o[20]_i_83_n_0 ));
  CARRY4 \rgb_o_reg[20]_i_169 
       (.CI(\rgb_o_reg[20]_i_62_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_169_CO_UNCONNECTED [3:1],\rgb_o_reg[20]_i_62_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_o_reg[20]_i_169_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \rgb_o_reg[20]_i_174 
       (.CI(\rgb_o_reg[20]_i_67_n_0 ),
        .CO({\rgb_o_reg[20]_i_174_n_0 ,\rgb_o_reg[20]_i_174_n_1 ,\rgb_o_reg[20]_i_174_n_2 ,\rgb_o_reg[20]_i_174_n_3 }),
        .CYINIT(1'b0),
        .DI({right[2],\rgb_o[20]_i_254_n_0 ,right[1],\rgb_o[20]_i_256_n_0 }),
        .O(\active_x_reg[10]_2 ),
        .S({S,\rgb_o[20]_i_258_n_0 ,\rgb_o[20]_i_259_n_0 ,\rgb_o[20]_i_260_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_211 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_211_n_0 ,\rgb_o_reg[20]_i_211_n_1 ,\rgb_o_reg[20]_i_211_n_2 ,\rgb_o_reg[20]_i_211_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_261_n_0 ,\rgb_o[20]_i_262_n_0 ,\rgb_o[20]_i_263_n_0 ,\rgb_o[20]_i_264_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_211_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_265_n_0 ,\rgb_o[20]_i_266_n_0 ,\rgb_o[20]_i_267_n_0 ,\rgb_o[20]_i_268_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_30 
       (.CI(\rgb_o_reg[20]_i_79_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_30_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_30_n_2 ,\rgb_o_reg[20]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rgb_o[20]_i_10_2 ,\rgb_o[20]_i_81_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_30_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb_o[20]_i_10_3 ,\rgb_o[20]_i_83_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_47 
       (.CI(1'b0),
        .CO({\active_x_reg[7]_1 ,\rgb_o_reg[20]_i_47_n_1 ,\rgb_o_reg[20]_i_47_n_2 ,\rgb_o_reg[20]_i_47_n_3 }),
        .CYINIT(1'b1),
        .DI({\rgb_o_reg[20]_i_14 ,\rgb_o[20]_i_117_n_0 ,\rgb_o[20]_i_118_n_0 ,\rgb_o[20]_i_119_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_47_O_UNCONNECTED [3:0]),
        .S({\rgb_o_reg[20]_i_14_0 [1],\rgb_o[20]_i_121_n_0 ,\rgb_o_reg[20]_i_14_0 [0],\rgb_o[20]_i_123_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_57 
       (.CI(1'b0),
        .CO({\active_x_reg[3]_0 ,\rgb_o_reg[20]_i_57_n_1 ,\rgb_o_reg[20]_i_57_n_2 ,\rgb_o_reg[20]_i_57_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_141_n_0 ,\rgb_o[20]_i_142_n_0 ,\rgb_o[20]_i_143_n_0 ,1'b0}),
        .O(\active_x_reg[3]_1 ),
        .S({\rgb_o[20]_i_20 ,\rgb_o[20]_i_147_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_60 
       (.CI(\rgb_o_reg[20]_i_61_n_0 ),
        .CO({\rgb_o_reg[20]_i_60_n_0 ,\rgb_o_reg[20]_i_60_n_1 ,\rgb_o_reg[20]_i_60_n_2 ,\rgb_o_reg[20]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_148_n_0 ,\rgb_o[20]_i_149_n_0 ,\rgb_o[20]_i_150_n_0 ,\rgb_o[20]_i_151_n_0 }),
        .O(\active_y_reg[7]_0 ),
        .S({\rgb_o[20]_i_152_n_0 ,\rgb_o[20]_i_153_n_0 ,\rgb_o[20]_i_154_n_0 ,\rgb_o[20]_i_155_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_61 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_61_n_0 ,\rgb_o_reg[20]_i_61_n_1 ,\rgb_o_reg[20]_i_61_n_2 ,\rgb_o_reg[20]_i_61_n_3 }),
        .CYINIT(1'b0),
        .DI({bottom[0],\rgb_o_reg[20]_i_79_0 [1:0],1'b0}),
        .O({\dst_payload_reg[67] ,\NLW_rgb_o_reg[20]_i_61_O_UNCONNECTED [0]}),
        .S({\rgb_o[20]_i_157_n_0 ,\rgb_o[20]_i_158_n_0 ,\rgb_o[20]_i_159_n_0 ,\rgb_o[20]_i_160_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_62 
       (.CI(\rgb_o_reg[20]_i_60_n_0 ),
        .CO({\rgb_o_reg[20]_i_62_n_0 ,\rgb_o_reg[20]_i_62_n_1 ,\rgb_o_reg[20]_i_62_n_2 ,\rgb_o_reg[20]_i_62_n_3 }),
        .CYINIT(1'b0),
        .DI({bottom[1],DI,\rgb_o[20]_i_163_n_0 ,\rgb_o[20]_i_164_n_0 }),
        .O(\active_y_reg[9]_1 ),
        .S({\rgb_o[20]_i_21 ,\rgb_o[20]_i_167_n_0 ,\rgb_o[20]_i_168_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_65 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_65_n_0 ,\rgb_o_reg[20]_i_65_n_1 ,\rgb_o_reg[20]_i_65_n_2 ,\rgb_o_reg[20]_i_65_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o_reg[20]_i_174_1 [2:0],1'b0}),
        .O({O,\NLW_rgb_o_reg[20]_i_65_O_UNCONNECTED [0]}),
        .S({\rgb_o[20]_i_170_n_0 ,\rgb_o[20]_i_171_n_0 ,\rgb_o[20]_i_172_n_0 ,\rgb_o[20]_i_173_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_66 
       (.CI(\rgb_o_reg[20]_i_174_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_66_CO_UNCONNECTED [3:1],\rgb_o_reg[20]_i_174_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rgb_o_reg[20]_i_66_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \rgb_o_reg[20]_i_67 
       (.CI(\rgb_o_reg[20]_i_65_n_0 ),
        .CO({\rgb_o_reg[20]_i_67_n_0 ,\rgb_o_reg[20]_i_67_n_1 ,\rgb_o_reg[20]_i_67_n_2 ,\rgb_o_reg[20]_i_67_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_175_n_0 ,\rgb_o[20]_i_176_n_0 ,\rgb_o[20]_i_177_n_0 ,right[0]}),
        .O(\active_x_reg[7]_0 ),
        .S({\rgb_o[20]_i_179_n_0 ,\rgb_o[20]_i_180_n_0 ,\rgb_o[20]_i_181_n_0 ,\rgb_o[20]_i_182_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_72 
       (.CI(1'b0),
        .CO({\dst_payload_reg[66] ,\rgb_o_reg[20]_i_72_n_1 ,\rgb_o_reg[20]_i_72_n_2 ,\rgb_o_reg[20]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_74 ,\rgb_o[20]_i_196_n_0 ,\rgb_o[20]_i_197_n_0 ,1'b0}),
        .O(\dst_payload_reg[66]_0 ),
        .S({\rgb_o[20]_i_198_n_0 ,\rgb_o[20]_i_74_0 ,\rgb_o[20]_i_201_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_79 
       (.CI(1'b0),
        .CO({\rgb_o_reg[20]_i_79_n_0 ,\rgb_o_reg[20]_i_79_n_1 ,\rgb_o_reg[20]_i_79_n_2 ,\rgb_o_reg[20]_i_79_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_o[20]_i_202_n_0 ,\rgb_o[20]_i_203_n_0 ,\rgb_o[20]_i_204_n_0 ,\rgb_o[20]_i_205_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_79_O_UNCONNECTED [3:0]),
        .S({\rgb_o[20]_i_206_n_0 ,\rgb_o[20]_i_207_n_0 ,\rgb_o[20]_i_208_n_0 ,\rgb_o[20]_i_209_n_0 }));
  CARRY4 \rgb_o_reg[20]_i_85 
       (.CI(\rgb_o_reg[20]_i_211_n_0 ),
        .CO({\NLW_rgb_o_reg[20]_i_85_CO_UNCONNECTED [3:2],\rgb_o_reg[20]_i_85_n_2 ,\rgb_o_reg[20]_i_85_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rgb_o[20]_i_212_n_0 ,\rgb_o[20]_i_213_n_0 }),
        .O(\NLW_rgb_o_reg[20]_i_85_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rgb_o[20]_i_214_n_0 ,\rgb_o[20]_i_215_n_0 }));
  FDCE \rgb_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[0]),
        .Q(\rgb_reg[20]_0 [0]));
  FDCE \rgb_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[10]),
        .Q(\rgb_reg[20]_0 [7]));
  FDCE \rgb_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[11]),
        .Q(\rgb_reg[20]_0 [8]));
  FDCE \rgb_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[12]),
        .Q(\rgb_reg[20]_0 [9]));
  FDCE \rgb_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[13]),
        .Q(\rgb_reg[20]_0 [10]));
  FDCE \rgb_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[16]),
        .Q(\rgb_reg[20]_0 [11]));
  FDCE \rgb_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[17]),
        .Q(\rgb_reg[20]_0 [12]));
  FDCE \rgb_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[18]),
        .Q(\rgb_reg[20]_0 [13]));
  FDCE \rgb_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[19]),
        .Q(\rgb_reg[20]_0 [14]));
  FDCE \rgb_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[1]),
        .Q(\rgb_reg[20]_0 [1]));
  FDCE \rgb_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[20]),
        .Q(\rgb_reg[20]_0 [15]));
  FDCE \rgb_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[2]),
        .Q(\rgb_reg[20]_0 [2]));
  FDCE \rgb_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[3]),
        .Q(\rgb_reg[20]_0 [3]));
  FDCE \rgb_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[4]),
        .Q(\rgb_reg[20]_0 [4]));
  FDCE \rgb_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[8]),
        .Q(\rgb_reg[20]_0 [5]));
  FDCE \rgb_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(p_0_in[9]),
        .Q(\rgb_reg[20]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    sleep_mode_i_1
       (.I0(out),
        .I1(frame_start),
        .I2(sleep_mode),
        .O(disable_sync_reg));
  FDCE stream_locked_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_0),
        .Q(stream_locked_reg_n_0));
  facebox_system_tx2_axis_sink_0_0_tx2_raster u_raster
       (.D({u_raster_n_3,u_raster_n_4,u_raster_n_5,u_raster_n_6,u_raster_n_7,u_raster_n_8,u_raster_n_9,u_raster_n_10,u_raster_n_11,u_raster_n_12,u_raster_n_13}),
        .active(active),
        .disable_sync_reg(u_raster_n_0),
        .disable_sync_reg_0(u_raster_n_1),
        .disable_sync_reg_1(u_raster_n_2),
        .disable_sync_reg_2({p_0_in[20:16],p_0_in[13:8],p_0_in[4:0]}),
        .disable_sync_reg_3(u_raster_n_41),
        .frame_start0(frame_start0),
        .out(out),
        .pixel_clk(pixel_clk),
        .raw_hs(raw_hs),
        .raw_vs(raw_vs),
        .rst_n(rst_n),
        .s_tdata(s_tdata),
        .s_tlast(s_tlast),
        .s_tready(s_tready),
        .s_tuser(s_tuser),
        .s_tvalid(s_tvalid),
        .status(status[0]),
        .stream_locked_reg(stream_locked_reg_n_0),
        .underflow_sticky0(underflow_sticky0),
        .\v_count_reg[0]_0 (\v_count_reg[0] ),
        .\v_count_reg[8]_0 ({u_raster_n_15,u_raster_n_16,u_raster_n_17,u_raster_n_18,u_raster_n_19,u_raster_n_20,u_raster_n_21,u_raster_n_22,u_raster_n_23,u_raster_n_24}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    underflow_sticky_i_2
       (.I0(status[1]),
        .I1(status[2]),
        .I2(status[3]),
        .I3(status[4]),
        .I4(underflow_sticky_i_3_n_0),
        .I5(underflow_sticky_i_4_n_0),
        .O(underflow_sticky0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    underflow_sticky_i_3
       (.I0(status[15]),
        .I1(status[16]),
        .I2(status[14]),
        .I3(status[13]),
        .I4(s_tvalid),
        .I5(stream_locked_reg_n_0),
        .O(underflow_sticky_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    underflow_sticky_i_4
       (.I0(status[8]),
        .I1(status[7]),
        .I2(status[6]),
        .I3(status[5]),
        .I4(underflow_sticky_i_5_n_0),
        .O(underflow_sticky_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    underflow_sticky_i_5
       (.I0(status[9]),
        .I1(status[10]),
        .I2(status[11]),
        .I3(status[12]),
        .O(underflow_sticky_i_5_n_0));
  FDCE underflow_sticky_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(u_raster_n_1),
        .Q(status[0]));
  FDCE vs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0] ),
        .D(raw_vs),
        .Q(vs));
endmodule

(* ORIG_REF_NAME = "tx2_raster" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_raster
   (disable_sync_reg,
    disable_sync_reg_0,
    disable_sync_reg_1,
    D,
    active,
    \v_count_reg[8]_0 ,
    disable_sync_reg_2,
    disable_sync_reg_3,
    s_tready,
    raw_vs,
    frame_start0,
    raw_hs,
    out,
    stream_locked_reg,
    underflow_sticky0,
    status,
    s_tdata,
    rst_n,
    s_tvalid,
    s_tuser,
    s_tlast,
    pixel_clk,
    \v_count_reg[0]_0 );
  output disable_sync_reg;
  output disable_sync_reg_0;
  output disable_sync_reg_1;
  output [10:0]D;
  output active;
  output [9:0]\v_count_reg[8]_0 ;
  output [15:0]disable_sync_reg_2;
  output disable_sync_reg_3;
  output s_tready;
  output raw_vs;
  output frame_start0;
  output raw_hs;
  input out;
  input stream_locked_reg;
  input underflow_sticky0;
  input [0:0]status;
  input [15:0]s_tdata;
  input rst_n;
  input s_tvalid;
  input s_tuser;
  input s_tlast;
  input pixel_clk;
  input \v_count_reg[0]_0 ;

  wire [10:0]D;
  wire active;
  wire \active_x[10]_i_2_n_0 ;
  wire \active_x[8]_i_2_n_0 ;
  wire \active_y[8]_i_2_n_0 ;
  wire \active_y[9]_i_2_n_0 ;
  wire [11:1]data0;
  wire de_i_2_n_0;
  wire de_i_3_n_0;
  wire de_i_4_n_0;
  wire de_i_5_n_0;
  wire de_i_6_n_0;
  wire de_i_7_n_0;
  wire de_i_8_n_0;
  wire de_i_9_n_0;
  wire disable_sync_reg;
  wire disable_sync_reg_0;
  wire disable_sync_reg_1;
  wire [15:0]disable_sync_reg_2;
  wire disable_sync_reg_3;
  wire first_pixel;
  wire frame_start0;
  wire frame_start_i_2_n_0;
  wire frame_start_i_3_n_0;
  wire frame_start_i_4_n_0;
  wire \frames_displayed[15]_i_6_n_0 ;
  wire \frames_displayed[15]_i_7_n_0 ;
  wire \frames_displayed[15]_i_9_n_0 ;
  wire [11:0]h_count;
  wire \h_count[11]_i_3_n_0 ;
  wire [11:0]h_count_1;
  wire \h_count_reg[11]_i_2_n_2 ;
  wire \h_count_reg[11]_i_2_n_3 ;
  wire \h_count_reg[4]_i_2_n_0 ;
  wire \h_count_reg[4]_i_2_n_1 ;
  wire \h_count_reg[4]_i_2_n_2 ;
  wire \h_count_reg[4]_i_2_n_3 ;
  wire \h_count_reg[8]_i_2_n_0 ;
  wire \h_count_reg[8]_i_2_n_1 ;
  wire \h_count_reg[8]_i_2_n_2 ;
  wire \h_count_reg[8]_i_2_n_3 ;
  wire hs_i_2_n_0;
  wire last_column;
  wire last_pixel;
  wire out;
  wire pixel_clk;
  wire raw_hs;
  wire raw_vs;
  wire rgb1;
  wire rgb111_out;
  wire rst_n;
  wire [15:0]s_tdata;
  wire s_tlast;
  wire s_tready;
  wire s_tready_INST_0_i_10_n_0;
  wire s_tready_INST_0_i_11_n_0;
  wire s_tready_INST_0_i_12_n_0;
  wire s_tready_INST_0_i_13_n_0;
  wire s_tready_INST_0_i_14_n_0;
  wire s_tready_INST_0_i_15_n_0;
  wire s_tready_INST_0_i_16_n_0;
  wire s_tready_INST_0_i_2_n_0;
  wire s_tready_INST_0_i_3_n_0;
  wire s_tready_INST_0_i_4_n_0;
  wire s_tready_INST_0_i_5_n_0;
  wire s_tready_INST_0_i_7_n_0;
  wire s_tready_INST_0_i_9_n_0;
  wire s_tuser;
  wire s_tvalid;
  wire [0:0]status;
  wire stream_locked_reg;
  wire underflow_sticky0;
  wire [11:0]v_count;
  wire v_count0_carry__0_n_0;
  wire v_count0_carry__0_n_1;
  wire v_count0_carry__0_n_2;
  wire v_count0_carry__0_n_3;
  wire v_count0_carry__0_n_4;
  wire v_count0_carry__0_n_5;
  wire v_count0_carry__0_n_6;
  wire v_count0_carry__0_n_7;
  wire v_count0_carry__1_n_2;
  wire v_count0_carry__1_n_3;
  wire v_count0_carry__1_n_5;
  wire v_count0_carry__1_n_6;
  wire v_count0_carry__1_n_7;
  wire v_count0_carry_n_0;
  wire v_count0_carry_n_1;
  wire v_count0_carry_n_2;
  wire v_count0_carry_n_3;
  wire v_count0_carry_n_4;
  wire v_count0_carry_n_5;
  wire v_count0_carry_n_6;
  wire v_count0_carry_n_7;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[10]_i_1_n_0 ;
  wire \v_count[11]_i_2_n_0 ;
  wire \v_count[11]_i_3_n_0 ;
  wire \v_count[11]_i_4_n_0 ;
  wire \v_count[11]_i_5_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire v_count_0;
  wire \v_count_reg[0]_0 ;
  wire [9:0]\v_count_reg[8]_0 ;
  wire window1;
  wire [3:2]\NLW_h_count_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_count_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_v_count0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_v_count0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_x[0]_i_1 
       (.I0(active),
        .I1(h_count[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hAA20008A)) 
    \active_x[10]_i_1 
       (.I0(active),
        .I1(\active_x[10]_i_2_n_0 ),
        .I2(h_count[8]),
        .I3(h_count[9]),
        .I4(h_count[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \active_x[10]_i_2 
       (.I0(h_count[5]),
        .I1(h_count[3]),
        .I2(h_count[2]),
        .I3(h_count[4]),
        .I4(h_count[7]),
        .I5(h_count[6]),
        .O(\active_x[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_x[1]_i_1 
       (.I0(active),
        .I1(h_count[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active_x[2]_i_1 
       (.I0(active),
        .I1(h_count[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \active_x[3]_i_1 
       (.I0(h_count[2]),
        .I1(h_count[3]),
        .I2(active),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \active_x[4]_i_1 
       (.I0(h_count[3]),
        .I1(h_count[2]),
        .I2(h_count[4]),
        .I3(active),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \active_x[5]_i_1 
       (.I0(h_count[4]),
        .I1(h_count[2]),
        .I2(h_count[3]),
        .I3(h_count[5]),
        .I4(active),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \active_x[6]_i_1 
       (.I0(h_count[5]),
        .I1(h_count[3]),
        .I2(h_count[2]),
        .I3(h_count[4]),
        .I4(h_count[6]),
        .I5(active),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAA00A802)) 
    \active_x[7]_i_1 
       (.I0(active),
        .I1(h_count[5]),
        .I2(\active_x[8]_i_2_n_0 ),
        .I3(h_count[7]),
        .I4(h_count[6]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000002AAAAAAA8)) 
    \active_x[8]_i_1 
       (.I0(active),
        .I1(h_count[6]),
        .I2(h_count[7]),
        .I3(\active_x[8]_i_2_n_0 ),
        .I4(h_count[5]),
        .I5(h_count[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \active_x[8]_i_2 
       (.I0(h_count[3]),
        .I1(h_count[2]),
        .I2(h_count[4]),
        .O(\active_x[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h5900)) 
    \active_x[9]_i_1 
       (.I0(h_count[9]),
        .I1(h_count[8]),
        .I2(\active_x[10]_i_2_n_0 ),
        .I3(active),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active_y[0]_i_1 
       (.I0(active),
        .I1(v_count[0]),
        .O(\v_count_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \active_y[1]_i_1 
       (.I0(v_count[0]),
        .I1(v_count[1]),
        .I2(active),
        .O(\v_count_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \active_y[2]_i_1 
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .I3(active),
        .O(\v_count_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h0002AAA8)) 
    \active_y[3]_i_1 
       (.I0(active),
        .I1(v_count[2]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .I4(v_count[3]),
        .O(\v_count_reg[8]_0 [3]));
  LUT6 #(
    .INIT(64'h2222222A88888880)) 
    \active_y[4]_i_1 
       (.I0(active),
        .I1(v_count[3]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .I4(v_count[2]),
        .I5(v_count[4]),
        .O(\v_count_reg[8]_0 [4]));
  LUT5 #(
    .INIT(32'h80002AAA)) 
    \active_y[5]_i_1 
       (.I0(active),
        .I1(de_i_3_n_0),
        .I2(v_count[3]),
        .I3(v_count[4]),
        .I4(v_count[5]),
        .O(\v_count_reg[8]_0 [5]));
  LUT6 #(
    .INIT(64'hC084848484848484)) 
    \active_y[6]_i_1 
       (.I0(v_count[5]),
        .I1(active),
        .I2(v_count[6]),
        .I3(de_i_3_n_0),
        .I4(v_count[3]),
        .I5(v_count[4]),
        .O(\v_count_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hA9AA0000)) 
    \active_y[7]_i_1 
       (.I0(v_count[7]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(\active_y[8]_i_2_n_0 ),
        .I4(active),
        .O(\v_count_reg[8]_0 [7]));
  LUT6 #(
    .INIT(64'hCCC9CCCC00000000)) 
    \active_y[8]_i_1 
       (.I0(v_count[7]),
        .I1(v_count[8]),
        .I2(v_count[5]),
        .I3(v_count[6]),
        .I4(\active_y[8]_i_2_n_0 ),
        .I5(active),
        .O(\v_count_reg[8]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    \active_y[8]_i_2 
       (.I0(v_count[4]),
        .I1(v_count[3]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .I4(v_count[2]),
        .O(\active_y[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA20008)) 
    \active_y[9]_i_1 
       (.I0(active),
        .I1(\active_y[9]_i_2_n_0 ),
        .I2(v_count[8]),
        .I3(v_count[7]),
        .I4(v_count[9]),
        .O(\v_count_reg[8]_0 [9]));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \active_y[9]_i_2 
       (.I0(de_i_3_n_0),
        .I1(v_count[3]),
        .I2(v_count[4]),
        .I3(v_count[6]),
        .I4(v_count[5]),
        .O(\active_y[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555400000000000)) 
    de_i_1
       (.I0(de_i_2_n_0),
        .I1(v_count[4]),
        .I2(v_count[3]),
        .I3(de_i_3_n_0),
        .I4(de_i_4_n_0),
        .I5(de_i_5_n_0),
        .O(active));
  LUT6 #(
    .INIT(64'hFFF0FFF4FFF0FFFF)) 
    de_i_2
       (.I0(\active_x[8]_i_2_n_0 ),
        .I1(frame_start_i_4_n_0),
        .I2(de_i_6_n_0),
        .I3(de_i_7_n_0),
        .I4(s_tready_INST_0_i_13_n_0),
        .I5(h_count[8]),
        .O(de_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    de_i_3
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .O(de_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    de_i_4
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .I2(de_i_8_n_0),
        .I3(v_count[9]),
        .I4(v_count[7]),
        .I5(v_count[8]),
        .O(de_i_4_n_0));
  LUT6 #(
    .INIT(64'h000004FF0000FFFF)) 
    de_i_5
       (.I0(\active_x[8]_i_2_n_0 ),
        .I1(frame_start_i_4_n_0),
        .I2(h_count[8]),
        .I3(h_count[10]),
        .I4(h_count[11]),
        .I5(h_count[9]),
        .O(de_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    de_i_6
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .I2(v_count[10]),
        .I3(v_count[11]),
        .O(de_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000A8000000A000)) 
    de_i_7
       (.I0(v_count[9]),
        .I1(de_i_3_n_0),
        .I2(v_count[4]),
        .I3(v_count[7]),
        .I4(de_i_9_n_0),
        .I5(v_count[3]),
        .O(de_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    de_i_8
       (.I0(v_count[11]),
        .I1(v_count[10]),
        .O(de_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    de_i_9
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .O(de_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    frame_start_i_1
       (.I0(frame_start_i_2_n_0),
        .I1(frame_start_i_3_n_0),
        .I2(frame_start_i_4_n_0),
        .I3(h_count[10]),
        .I4(h_count[9]),
        .I5(h_count[11]),
        .O(frame_start0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    frame_start_i_2
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[3]),
        .I3(v_count[4]),
        .I4(v_count[2]),
        .I5(de_i_4_n_0),
        .O(frame_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    frame_start_i_3
       (.I0(h_count[2]),
        .I1(h_count[3]),
        .I2(h_count[0]),
        .I3(h_count[1]),
        .I4(h_count[4]),
        .I5(h_count[8]),
        .O(frame_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    frame_start_i_4
       (.I0(h_count[7]),
        .I1(h_count[6]),
        .I2(h_count[5]),
        .O(frame_start_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \frames_displayed[15]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(last_pixel),
        .O(disable_sync_reg_1));
  LUT6 #(
    .INIT(64'h8080808080808880)) 
    \frames_displayed[15]_i_4 
       (.I0(\frames_displayed[15]_i_6_n_0 ),
        .I1(rst_n),
        .I2(rgb111_out),
        .I3(s_tvalid),
        .I4(s_tuser),
        .I5(stream_locked_reg),
        .O(rgb1));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \frames_displayed[15]_i_5 
       (.I0(\frames_displayed[15]_i_7_n_0 ),
        .I1(v_count[9]),
        .I2(v_count[5]),
        .I3(v_count[6]),
        .I4(de_i_3_n_0),
        .I5(last_column),
        .O(last_pixel));
  LUT5 #(
    .INIT(32'h82000082)) 
    \frames_displayed[15]_i_6 
       (.I0(s_tvalid),
        .I1(s_tlast),
        .I2(last_column),
        .I3(first_pixel),
        .I4(s_tuser),
        .O(\frames_displayed[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \frames_displayed[15]_i_7 
       (.I0(v_count[11]),
        .I1(v_count[10]),
        .I2(v_count[4]),
        .I3(v_count[3]),
        .I4(v_count[7]),
        .I5(v_count[8]),
        .O(\frames_displayed[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \frames_displayed[15]_i_8 
       (.I0(\v_count[11]_i_4_n_0 ),
        .I1(frame_start_i_4_n_0),
        .I2(\frames_displayed[15]_i_9_n_0 ),
        .I3(h_count[8]),
        .I4(h_count[4]),
        .I5(h_count[1]),
        .O(last_column));
  LUT2 #(
    .INIT(4'hE)) 
    \frames_displayed[15]_i_9 
       (.I0(h_count[9]),
        .I1(h_count[11]),
        .O(\frames_displayed[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_count[0]_i_1 
       (.I0(\h_count[11]_i_3_n_0 ),
        .I1(h_count[0]),
        .O(h_count_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[10]_i_1 
       (.I0(data0[10]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[11]_i_1 
       (.I0(data0[11]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \h_count[11]_i_3 
       (.I0(\v_count[11]_i_3_n_0 ),
        .I1(\v_count[11]_i_4_n_0 ),
        .I2(h_count[7]),
        .I3(h_count[9]),
        .I4(h_count[11]),
        .I5(h_count[8]),
        .O(\h_count[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[1]_i_1 
       (.I0(data0[1]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[2]_i_1 
       (.I0(data0[2]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[3]_i_1 
       (.I0(data0[3]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[4]_i_1 
       (.I0(data0[4]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[5]_i_1 
       (.I0(data0[5]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[6]_i_1 
       (.I0(data0[6]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[7]_i_1 
       (.I0(data0[7]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[8]_i_1 
       (.I0(data0[8]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[9]_i_1 
       (.I0(data0[9]),
        .I1(\h_count[11]_i_3_n_0 ),
        .O(h_count_1[9]));
  FDCE \h_count_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[0]),
        .Q(h_count[0]));
  FDCE \h_count_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[10]),
        .Q(h_count[10]));
  FDCE \h_count_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[11]),
        .Q(h_count[11]));
  CARRY4 \h_count_reg[11]_i_2 
       (.CI(\h_count_reg[8]_i_2_n_0 ),
        .CO({\NLW_h_count_reg[11]_i_2_CO_UNCONNECTED [3:2],\h_count_reg[11]_i_2_n_2 ,\h_count_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_count_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,h_count[11:9]}));
  FDCE \h_count_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[1]),
        .Q(h_count[1]));
  FDCE \h_count_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[2]),
        .Q(h_count[2]));
  FDCE \h_count_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[3]),
        .Q(h_count[3]));
  FDCE \h_count_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[4]),
        .Q(h_count[4]));
  CARRY4 \h_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\h_count_reg[4]_i_2_n_0 ,\h_count_reg[4]_i_2_n_1 ,\h_count_reg[4]_i_2_n_2 ,\h_count_reg[4]_i_2_n_3 }),
        .CYINIT(h_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(h_count[4:1]));
  FDCE \h_count_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[5]),
        .Q(h_count[5]));
  FDCE \h_count_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[6]),
        .Q(h_count[6]));
  FDCE \h_count_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[7]),
        .Q(h_count[7]));
  FDCE \h_count_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[8]),
        .Q(h_count[8]));
  CARRY4 \h_count_reg[8]_i_2 
       (.CI(\h_count_reg[4]_i_2_n_0 ),
        .CO({\h_count_reg[8]_i_2_n_0 ,\h_count_reg[8]_i_2_n_1 ,\h_count_reg[8]_i_2_n_2 ,\h_count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(h_count[8:5]));
  FDCE \h_count_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\v_count_reg[0]_0 ),
        .D(h_count_1[9]),
        .Q(h_count[9]));
  LUT6 #(
    .INIT(64'h0002000200020202)) 
    hs_i_1
       (.I0(hs_i_2_n_0),
        .I1(h_count[7]),
        .I2(h_count[6]),
        .I3(h_count[5]),
        .I4(h_count[4]),
        .I5(h_count[3]),
        .O(raw_hs));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    hs_i_2
       (.I0(h_count[10]),
        .I1(h_count[9]),
        .I2(h_count[11]),
        .I3(h_count[8]),
        .O(hs_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    pixel_ok_i_1
       (.I0(out),
        .I1(rgb1),
        .I2(rgb111_out),
        .O(disable_sync_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[0]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[2]),
        .O(disable_sync_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[10]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[5]),
        .O(disable_sync_reg_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[11]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[6]),
        .O(disable_sync_reg_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[12]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[7]),
        .O(disable_sync_reg_2[9]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[13]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[8]),
        .O(disable_sync_reg_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[16]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[13]),
        .O(disable_sync_reg_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[17]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[14]),
        .O(disable_sync_reg_2[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[18]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[15]),
        .O(disable_sync_reg_2[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[19]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[11]),
        .O(disable_sync_reg_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[1]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[3]),
        .O(disable_sync_reg_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[20]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[12]),
        .O(disable_sync_reg_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[2]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[4]),
        .O(disable_sync_reg_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[3]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[0]),
        .O(disable_sync_reg_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[4]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[1]),
        .O(disable_sync_reg_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[8]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[9]),
        .O(disable_sync_reg_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rgb[9]_i_1 
       (.I0(rgb111_out),
        .I1(rgb1),
        .I2(out),
        .I3(s_tdata[10]),
        .O(disable_sync_reg_2[6]));
  LUT5 #(
    .INIT(32'hFF100000)) 
    s_tready_INST_0
       (.I0(stream_locked_reg),
        .I1(s_tuser),
        .I2(s_tvalid),
        .I3(rgb111_out),
        .I4(rst_n),
        .O(s_tready));
  LUT6 #(
    .INIT(64'h2022202220220000)) 
    s_tready_INST_0_i_1
       (.I0(s_tready_INST_0_i_2_n_0),
        .I1(s_tready_INST_0_i_3_n_0),
        .I2(s_tready_INST_0_i_4_n_0),
        .I3(s_tready_INST_0_i_5_n_0),
        .I4(first_pixel),
        .I5(stream_locked_reg),
        .O(rgb111_out));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_tready_INST_0_i_10
       (.I0(v_count[9]),
        .I1(v_count[11]),
        .I2(v_count[10]),
        .I3(v_count[6]),
        .I4(v_count[5]),
        .O(s_tready_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    s_tready_INST_0_i_11
       (.I0(s_tready_INST_0_i_16_n_0),
        .I1(v_count[7]),
        .I2(v_count[8]),
        .I3(v_count[2]),
        .I4(v_count[4]),
        .I5(v_count[3]),
        .O(s_tready_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    s_tready_INST_0_i_12
       (.I0(h_count[0]),
        .I1(h_count[2]),
        .I2(h_count[3]),
        .I3(h_count[8]),
        .I4(h_count[7]),
        .O(s_tready_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_tready_INST_0_i_13
       (.I0(h_count[11]),
        .I1(h_count[9]),
        .I2(h_count[10]),
        .O(s_tready_INST_0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_tready_INST_0_i_14
       (.I0(h_count[2]),
        .I1(h_count[3]),
        .O(s_tready_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_tready_INST_0_i_15
       (.I0(v_count[10]),
        .I1(v_count[11]),
        .I2(v_count[9]),
        .O(s_tready_INST_0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_tready_INST_0_i_16
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .O(s_tready_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h000C000C00C80008)) 
    s_tready_INST_0_i_2
       (.I0(s_tready_INST_0_i_7_n_0),
        .I1(window1),
        .I2(h_count[10]),
        .I3(h_count[11]),
        .I4(s_tready_INST_0_i_9_n_0),
        .I5(h_count[9]),
        .O(s_tready_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    s_tready_INST_0_i_3
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(v_count[10]),
        .I4(v_count[11]),
        .O(s_tready_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    s_tready_INST_0_i_4
       (.I0(v_count[6]),
        .I1(v_count[5]),
        .I2(v_count[9]),
        .O(s_tready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    s_tready_INST_0_i_5
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .I3(v_count[3]),
        .I4(v_count[4]),
        .O(s_tready_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000040)) 
    s_tready_INST_0_i_6
       (.I0(s_tready_INST_0_i_10_n_0),
        .I1(s_tready_INST_0_i_11_n_0),
        .I2(s_tready_INST_0_i_12_n_0),
        .I3(\v_count[11]_i_3_n_0 ),
        .I4(s_tready_INST_0_i_13_n_0),
        .O(first_pixel));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    s_tready_INST_0_i_7
       (.I0(h_count[6]),
        .I1(h_count[5]),
        .I2(h_count[7]),
        .I3(h_count[8]),
        .I4(h_count[4]),
        .I5(s_tready_INST_0_i_14_n_0),
        .O(s_tready_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFFEFFF0)) 
    s_tready_INST_0_i_8
       (.I0(v_count[6]),
        .I1(v_count[5]),
        .I2(v_count[8]),
        .I3(s_tready_INST_0_i_15_n_0),
        .I4(v_count[7]),
        .I5(s_tready_INST_0_i_5_n_0),
        .O(window1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h1F00FFFF)) 
    s_tready_INST_0_i_9
       (.I0(h_count[3]),
        .I1(h_count[2]),
        .I2(h_count[4]),
        .I3(frame_start_i_4_n_0),
        .I4(h_count[8]),
        .O(s_tready_INST_0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h020F0200)) 
    stream_locked_i_1
       (.I0(rgb1),
        .I1(last_pixel),
        .I2(out),
        .I3(rgb111_out),
        .I4(stream_locked_reg),
        .O(disable_sync_reg));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    underflow_sticky_i_1
       (.I0(rgb111_out),
        .I1(underflow_sticky0),
        .I2(out),
        .I3(rgb1),
        .I4(status),
        .O(disable_sync_reg_0));
  CARRY4 v_count0_carry
       (.CI(1'b0),
        .CO({v_count0_carry_n_0,v_count0_carry_n_1,v_count0_carry_n_2,v_count0_carry_n_3}),
        .CYINIT(v_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_count0_carry_n_4,v_count0_carry_n_5,v_count0_carry_n_6,v_count0_carry_n_7}),
        .S(v_count[4:1]));
  CARRY4 v_count0_carry__0
       (.CI(v_count0_carry_n_0),
        .CO({v_count0_carry__0_n_0,v_count0_carry__0_n_1,v_count0_carry__0_n_2,v_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_count0_carry__0_n_4,v_count0_carry__0_n_5,v_count0_carry__0_n_6,v_count0_carry__0_n_7}),
        .S(v_count[8:5]));
  CARRY4 v_count0_carry__1
       (.CI(v_count0_carry__0_n_0),
        .CO({NLW_v_count0_carry__1_CO_UNCONNECTED[3:2],v_count0_carry__1_n_2,v_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v_count0_carry__1_O_UNCONNECTED[3],v_count0_carry__1_n_5,v_count0_carry__1_n_6,v_count0_carry__1_n_7}),
        .S({1'b0,v_count[11:9]}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFBF)) 
    \v_count[0]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count[0]),
        .O(\v_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[10]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__1_n_6),
        .O(\v_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \v_count[11]_i_1 
       (.I0(\v_count[11]_i_3_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[7]),
        .I3(h_count[11]),
        .I4(h_count[9]),
        .I5(\v_count[11]_i_4_n_0 ),
        .O(v_count_0));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[11]_i_2 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__1_n_5),
        .O(\v_count[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \v_count[11]_i_3 
       (.I0(h_count[4]),
        .I1(h_count[1]),
        .I2(h_count[5]),
        .I3(h_count[6]),
        .O(\v_count[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \v_count[11]_i_4 
       (.I0(h_count[10]),
        .I1(h_count[0]),
        .I2(h_count[3]),
        .I3(h_count[2]),
        .O(\v_count[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \v_count[11]_i_5 
       (.I0(v_count[7]),
        .I1(v_count[11]),
        .I2(v_count[10]),
        .I3(s_tready_INST_0_i_4_n_0),
        .I4(v_count[1]),
        .I5(v_count[0]),
        .O(\v_count[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[1]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry_n_7),
        .O(\v_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[2]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry_n_6),
        .O(\v_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[3]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry_n_5),
        .O(\v_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[4]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry_n_4),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[5]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__0_n_7),
        .O(\v_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[6]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__0_n_6),
        .O(\v_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[7]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__0_n_5),
        .O(\v_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[8]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__0_n_4),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000000)) 
    \v_count[9]_i_1 
       (.I0(\v_count[11]_i_5_n_0 ),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[8]),
        .I4(v_count[4]),
        .I5(v_count0_carry__1_n_7),
        .O(\v_count[9]_i_1_n_0 ));
  FDCE \v_count_reg[0] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count[0]));
  FDCE \v_count_reg[10] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[10]_i_1_n_0 ),
        .Q(v_count[10]));
  FDCE \v_count_reg[11] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[11]_i_2_n_0 ),
        .Q(v_count[11]));
  FDCE \v_count_reg[1] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(v_count[1]));
  FDCE \v_count_reg[2] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(v_count[2]));
  FDCE \v_count_reg[3] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(v_count[3]));
  FDCE \v_count_reg[4] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(v_count[4]));
  FDCE \v_count_reg[5] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(v_count[5]));
  FDCE \v_count_reg[6] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(v_count[6]));
  FDCE \v_count_reg[7] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(v_count[7]));
  FDCE \v_count_reg[8] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(v_count[8]));
  FDCE \v_count_reg[9] 
       (.C(pixel_clk),
        .CE(v_count_0),
        .CLR(\v_count_reg[0]_0 ),
        .D(\v_count[9]_i_1_n_0 ),
        .Q(v_count[9]));
  LUT6 #(
    .INIT(64'h000000000000001F)) 
    vs_i_1
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .I3(v_count[3]),
        .I4(v_count[4]),
        .I5(de_i_4_n_0),
        .O(raw_vs));
endmodule

(* ORIG_REF_NAME = "tx2_serializer" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_serializer
   (tmds_data_p,
    tmds_data_n,
    serial_clk,
    pixel_clk,
    Q,
    \serial_release_reg[1]_0 );
  output [0:0]tmds_data_p;
  output [0:0]tmds_data_n;
  input serial_clk;
  input pixel_clk;
  input [9:0]Q;
  input \serial_release_reg[1]_0 ;

  wire [9:0]Q;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_meta;
  wire enable_meta_i_1__1_n_0;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_sync;
  wire pixel_clk;
  wire serial_clk;
  wire serial_data;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire [1:0]serial_release;
  wire \serial_release_reg[1]_0 ;
  wire shift1;
  wire shift2;
  wire [0:0]tmds_data_n;
  wire [0:0]tmds_data_p;
  wire NLW_u_master_OFB_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_u_master_TBYTEOUT_UNCONNECTED;
  wire NLW_u_master_TFB_UNCONNECTED;
  wire NLW_u_master_TQ_UNCONNECTED;
  wire NLW_u_slave_OFB_UNCONNECTED;
  wire NLW_u_slave_OQ_UNCONNECTED;
  wire NLW_u_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_u_slave_TFB_UNCONNECTED;
  wire NLW_u_slave_TQ_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    enable_meta_i_1__1
       (.I0(serial_release[1]),
        .O(enable_meta_i_1__1_n_0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_meta_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__1_n_0),
        .D(1'b1),
        .Q(enable_meta));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_sync_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__1_n_0),
        .D(enable_meta),
        .Q(enable_sync));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[0] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(1'b1),
        .Q(serial_release[0]));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[1] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(serial_release[0]),
        .Q(serial_release[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_master
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(enable_sync),
        .OFB(NLW_u_master_OFB_UNCONNECTED),
        .OQ(serial_data),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_u_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_u_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_master_TFB_UNCONNECTED),
        .TQ(NLW_u_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS u_output
       (.I(serial_data),
        .O(tmds_data_p),
        .OB(tmds_data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_slave
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(enable_sync),
        .OFB(NLW_u_slave_OFB_UNCONNECTED),
        .OQ(NLW_u_slave_OQ_UNCONNECTED),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_slave_TFB_UNCONNECTED),
        .TQ(NLW_u_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tx2_serializer" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_serializer_0
   (tmds_clk_p,
    tmds_clk_n,
    serial_clk,
    pixel_clk,
    \serial_release_reg[1]_0 );
  output tmds_clk_p;
  output tmds_clk_n;
  input serial_clk;
  input pixel_clk;
  input \serial_release_reg[1]_0 ;

  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_meta;
  wire enable_meta_i_1__2_n_0;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_sync;
  wire pixel_clk;
  wire serial_clk;
  wire serial_data;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire [1:0]serial_release;
  wire \serial_release_reg[1]_0 ;
  wire shift1;
  wire shift2;
  wire tmds_clk_n;
  wire tmds_clk_p;
  wire NLW_u_master_OFB_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_u_master_TBYTEOUT_UNCONNECTED;
  wire NLW_u_master_TFB_UNCONNECTED;
  wire NLW_u_master_TQ_UNCONNECTED;
  wire NLW_u_slave_OFB_UNCONNECTED;
  wire NLW_u_slave_OQ_UNCONNECTED;
  wire NLW_u_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_u_slave_TFB_UNCONNECTED;
  wire NLW_u_slave_TQ_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    enable_meta_i_1__2
       (.I0(serial_release[1]),
        .O(enable_meta_i_1__2_n_0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_meta_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__2_n_0),
        .D(1'b1),
        .Q(enable_meta));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_sync_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__2_n_0),
        .D(enable_meta),
        .Q(enable_sync));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[0] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(1'b1),
        .Q(serial_release[0]));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[1] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(serial_release[0]),
        .Q(serial_release[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_master
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(enable_sync),
        .OFB(NLW_u_master_OFB_UNCONNECTED),
        .OQ(serial_data),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_u_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_u_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_master_TFB_UNCONNECTED),
        .TQ(NLW_u_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS u_output
       (.I(serial_data),
        .O(tmds_clk_p),
        .OB(tmds_clk_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_slave
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(enable_sync),
        .OFB(NLW_u_slave_OFB_UNCONNECTED),
        .OQ(NLW_u_slave_OQ_UNCONNECTED),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_slave_TFB_UNCONNECTED),
        .TQ(NLW_u_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tx2_serializer" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_serializer_1
   (tmds_data_p,
    tmds_data_n,
    serial_clk,
    pixel_clk,
    Q,
    \serial_release_reg[1]_0 );
  output [0:0]tmds_data_p;
  output [0:0]tmds_data_n;
  input serial_clk;
  input pixel_clk;
  input [9:0]Q;
  input \serial_release_reg[1]_0 ;

  wire [9:0]Q;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_meta;
  wire enable_meta_i_1__0_n_0;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_sync;
  wire pixel_clk;
  wire serial_clk;
  wire serial_data;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire [1:0]serial_release;
  wire \serial_release_reg[1]_0 ;
  wire shift1;
  wire shift2;
  wire [0:0]tmds_data_n;
  wire [0:0]tmds_data_p;
  wire NLW_u_master_OFB_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_u_master_TBYTEOUT_UNCONNECTED;
  wire NLW_u_master_TFB_UNCONNECTED;
  wire NLW_u_master_TQ_UNCONNECTED;
  wire NLW_u_slave_OFB_UNCONNECTED;
  wire NLW_u_slave_OQ_UNCONNECTED;
  wire NLW_u_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_u_slave_TFB_UNCONNECTED;
  wire NLW_u_slave_TQ_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    enable_meta_i_1__0
       (.I0(serial_release[1]),
        .O(enable_meta_i_1__0_n_0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_meta_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__0_n_0),
        .D(1'b1),
        .Q(enable_meta));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_sync_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1__0_n_0),
        .D(enable_meta),
        .Q(enable_sync));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[0] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(1'b1),
        .Q(serial_release[0]));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[1] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(serial_release[0]),
        .Q(serial_release[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_master
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(enable_sync),
        .OFB(NLW_u_master_OFB_UNCONNECTED),
        .OQ(serial_data),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_u_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_u_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_master_TFB_UNCONNECTED),
        .TQ(NLW_u_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS u_output
       (.I(serial_data),
        .O(tmds_data_p),
        .OB(tmds_data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_slave
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(enable_sync),
        .OFB(NLW_u_slave_OFB_UNCONNECTED),
        .OQ(NLW_u_slave_OQ_UNCONNECTED),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_slave_TFB_UNCONNECTED),
        .TQ(NLW_u_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tx2_serializer" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_serializer_3
   (tmds_data_p,
    tmds_data_n,
    serial_clk,
    pixel_clk,
    Q,
    \serial_release_reg[1]_0 );
  output [0:0]tmds_data_p;
  output [0:0]tmds_data_n;
  input serial_clk;
  input pixel_clk;
  input [9:0]Q;
  input \serial_release_reg[1]_0 ;

  wire [9:0]Q;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_meta;
  wire enable_meta_i_1_n_0;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire enable_sync;
  wire pixel_clk;
  wire serial_clk;
  wire serial_data;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire [1:0]serial_release;
  wire \serial_release_reg[1]_0 ;
  wire shift1;
  wire shift2;
  wire [0:0]tmds_data_n;
  wire [0:0]tmds_data_p;
  wire NLW_u_master_OFB_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_u_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_u_master_TBYTEOUT_UNCONNECTED;
  wire NLW_u_master_TFB_UNCONNECTED;
  wire NLW_u_master_TQ_UNCONNECTED;
  wire NLW_u_slave_OFB_UNCONNECTED;
  wire NLW_u_slave_OQ_UNCONNECTED;
  wire NLW_u_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_u_slave_TFB_UNCONNECTED;
  wire NLW_u_slave_TQ_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    enable_meta_i_1
       (.I0(serial_release[1]),
        .O(enable_meta_i_1_n_0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_meta_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1_n_0),
        .D(1'b1),
        .Q(enable_meta));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE enable_sync_reg
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(enable_meta_i_1_n_0),
        .D(enable_meta),
        .Q(enable_sync));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[0] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(1'b1),
        .Q(serial_release[0]));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDCE \serial_release_reg[1] 
       (.C(serial_clk),
        .CE(1'b1),
        .CLR(\serial_release_reg[1]_0 ),
        .D(serial_release[0]),
        .Q(serial_release[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_master
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(enable_sync),
        .OFB(NLW_u_master_OFB_UNCONNECTED),
        .OQ(serial_data),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .SHIFTOUT1(NLW_u_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_u_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_master_TFB_UNCONNECTED),
        .TQ(NLW_u_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS u_output
       (.I(serial_data),
        .O(tmds_data_p),
        .OB(tmds_data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    u_slave
       (.CLK(serial_clk),
        .CLKDIV(pixel_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(enable_sync),
        .OFB(NLW_u_slave_OFB_UNCONNECTED),
        .OQ(NLW_u_slave_OQ_UNCONNECTED),
        .RST(\serial_release_reg[1]_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_u_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_u_slave_TFB_UNCONNECTED),
        .TQ(NLW_u_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tx2_sleep_osd" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_sleep_osd
   (status_de,
    status_hs,
    status_vs,
    Q,
    \osd_x_reg[10] ,
    \osd_x_reg[10]_0 ,
    \osd_y_reg[8] ,
    sleep_mode_reg,
    \osd_y_reg[9] ,
    \rgb_o_reg[5]_0 ,
    \rgb_o_reg[7]_0 ,
    \rgb_o_reg[13]_0 ,
    \rgb_o_reg[15]_0 ,
    \rgb_o_reg[23]_0 ,
    \rgb_o_reg[16]_0 ,
    pixel_clk,
    text_s10,
    vs_o_reg_0,
    overlay_de,
    overlay_hs,
    overlay_vs,
    \base_s1_reg[0]_0 ,
    sleep_mode,
    \base_s1_reg[0]_1 ,
    D,
    \rgb_o_reg[23]_i_2_0 );
  output status_de;
  output status_hs;
  output status_vs;
  output [2:0]Q;
  output \osd_x_reg[10] ;
  output \osd_x_reg[10]_0 ;
  output \osd_y_reg[8] ;
  output sleep_mode_reg;
  output \osd_y_reg[9] ;
  output [3:0]\rgb_o_reg[5]_0 ;
  output [7:0]\rgb_o_reg[7]_0 ;
  output [3:0]\rgb_o_reg[13]_0 ;
  output [7:0]\rgb_o_reg[15]_0 ;
  output [3:0]\rgb_o_reg[23]_0 ;
  output [7:0]\rgb_o_reg[16]_0 ;
  input pixel_clk;
  input text_s10;
  input vs_o_reg_0;
  input overlay_de;
  input overlay_hs;
  input overlay_vs;
  input [9:0]\base_s1_reg[0]_0 ;
  input sleep_mode;
  input [8:0]\base_s1_reg[0]_1 ;
  input [20:0]D;
  input \rgb_o_reg[23]_i_2_0 ;

  wire [20:0]D;
  wire [2:0]Q;
  wire [22:0]base_s1;
  wire \base_s1[22]_i_4_n_0 ;
  wire [9:0]\base_s1_reg[0]_0 ;
  wire [8:0]\base_s1_reg[0]_1 ;
  wire [1:1]character;
  wire [0:0]character__0;
  wire [3:0]column;
  wire [3:0]column_s1;
  wire de_s1;
  wire glyph1;
  wire hs_s1;
  wire \ones_q[1]_i_2_n_0 ;
  wire \ones_q[1]_i_3_n_0 ;
  wire \ones_q[1]_i_4__0_n_0 ;
  wire \ones_q[1]_i_4_n_0 ;
  wire \ones_q[1]_i_5__0_n_0 ;
  wire \ones_q[1]_i_5_n_0 ;
  wire \ones_q[1]_i_6__0_n_0 ;
  wire \ones_q[1]_i_6_n_0 ;
  wire \ones_q[1]_i_7__0_n_0 ;
  wire \ones_q[1]_i_7_n_0 ;
  wire \ones_q[2]_i_2_n_0 ;
  wire \ones_q[2]_i_3_n_0 ;
  wire \ones_q[2]_i_4__0_n_0 ;
  wire \ones_q[2]_i_4_n_0 ;
  wire \ones_q[2]_i_5__0_n_0 ;
  wire \ones_q[2]_i_5_n_0 ;
  wire \ones_q[2]_i_6__0_n_0 ;
  wire \ones_q[2]_i_6_n_0 ;
  wire \ones_q[2]_i_7__0_n_0 ;
  wire \ones_q[2]_i_7_n_0 ;
  wire \ones_q[3]_i_2__0_n_0 ;
  wire \ones_q[3]_i_2__1_n_0 ;
  wire \ones_q[3]_i_2_n_0 ;
  wire \ones_q[3]_i_3__0_n_0 ;
  wire \ones_q[3]_i_3_n_0 ;
  wire \ones_q_reg[1]_i_2__0_n_0 ;
  wire \ones_q_reg[1]_i_2_n_0 ;
  wire \ones_q_reg[1]_i_3__0_n_0 ;
  wire \ones_q_reg[1]_i_3_n_0 ;
  wire \ones_q_reg[2]_i_2__0_n_0 ;
  wire \ones_q_reg[2]_i_2_n_0 ;
  wire \ones_q_reg[2]_i_3__0_n_0 ;
  wire \ones_q_reg[2]_i_3_n_0 ;
  wire \osd_x_reg[10] ;
  wire \osd_x_reg[10]_0 ;
  wire \osd_y_reg[8] ;
  wire \osd_y_reg[9] ;
  wire overlay_de;
  wire overlay_hs;
  wire overlay_vs;
  wire pixel_clk;
  wire \qm_q[1]_i_2_n_0 ;
  wire \qm_q[1]_i_3_n_0 ;
  wire \qm_q[1]_i_4__0_n_0 ;
  wire \qm_q[1]_i_4_n_0 ;
  wire \qm_q[1]_i_5__0_n_0 ;
  wire \qm_q[1]_i_5_n_0 ;
  wire \qm_q[1]_i_6__0_n_0 ;
  wire \qm_q[1]_i_6_n_0 ;
  wire \qm_q[1]_i_7__0_n_0 ;
  wire \qm_q[1]_i_7_n_0 ;
  wire \qm_q[3]_i_2_n_0 ;
  wire \qm_q[3]_i_3_n_0 ;
  wire \qm_q[3]_i_4__0_n_0 ;
  wire \qm_q[3]_i_4_n_0 ;
  wire \qm_q[3]_i_5__0_n_0 ;
  wire \qm_q[3]_i_5_n_0 ;
  wire \qm_q[3]_i_6__0_n_0 ;
  wire \qm_q[3]_i_6_n_0 ;
  wire \qm_q[3]_i_7__0_n_0 ;
  wire \qm_q[3]_i_7_n_0 ;
  wire \qm_q[5]_i_2_n_0 ;
  wire \qm_q[5]_i_3_n_0 ;
  wire \qm_q[5]_i_4__0_n_0 ;
  wire \qm_q[5]_i_4_n_0 ;
  wire \qm_q[5]_i_5__0_n_0 ;
  wire \qm_q[5]_i_5_n_0 ;
  wire \qm_q[5]_i_6__0_n_0 ;
  wire \qm_q[5]_i_6_n_0 ;
  wire \qm_q[5]_i_7__0_n_0 ;
  wire \qm_q[5]_i_7_n_0 ;
  wire \qm_q[6]_i_2__0_n_0 ;
  wire \qm_q[6]_i_2_n_0 ;
  wire \qm_q[7]_i_2_n_0 ;
  wire \qm_q[7]_i_3_n_0 ;
  wire \qm_q[7]_i_4__0_n_0 ;
  wire \qm_q[7]_i_4_n_0 ;
  wire \qm_q[7]_i_5__0_n_0 ;
  wire \qm_q[7]_i_5_n_0 ;
  wire \qm_q[7]_i_6__0_n_0 ;
  wire \qm_q[7]_i_6_n_0 ;
  wire \qm_q[7]_i_7__0_n_0 ;
  wire \qm_q[7]_i_7_n_0 ;
  wire \qm_q[8]_i_2__0_n_0 ;
  wire \qm_q[8]_i_2__1_n_0 ;
  wire \qm_q[8]_i_2_n_0 ;
  wire \qm_q[8]_i_3__0_n_0 ;
  wire \qm_q[8]_i_3__1_n_0 ;
  wire \qm_q[8]_i_3_n_0 ;
  wire \qm_q_reg[1]_i_2__0_n_0 ;
  wire \qm_q_reg[1]_i_2_n_0 ;
  wire \qm_q_reg[1]_i_3__0_n_0 ;
  wire \qm_q_reg[1]_i_3_n_0 ;
  wire \qm_q_reg[3]_i_2__0_n_0 ;
  wire \qm_q_reg[3]_i_2_n_0 ;
  wire \qm_q_reg[3]_i_3__0_n_0 ;
  wire \qm_q_reg[3]_i_3_n_0 ;
  wire \qm_q_reg[5]_i_2__0_n_0 ;
  wire \qm_q_reg[5]_i_2_n_0 ;
  wire \qm_q_reg[5]_i_3__0_n_0 ;
  wire \qm_q_reg[5]_i_3_n_0 ;
  wire \qm_q_reg[7]_i_2__0_n_0 ;
  wire \qm_q_reg[7]_i_2_n_0 ;
  wire \qm_q_reg[7]_i_3__0_n_0 ;
  wire \qm_q_reg[7]_i_3_n_0 ;
  wire \rgb_o[0]_i_1_n_0 ;
  wire \rgb_o[10]_i_1_n_0 ;
  wire \rgb_o[11]_i_1_n_0 ;
  wire \rgb_o[12]_i_1_n_0 ;
  wire \rgb_o[13]_i_1_n_0 ;
  wire \rgb_o[14]_i_1_n_0 ;
  wire \rgb_o[15]_i_1_n_0 ;
  wire \rgb_o[16]_i_1_n_0 ;
  wire \rgb_o[17]_i_1_n_0 ;
  wire \rgb_o[18]_i_1_n_0 ;
  wire \rgb_o[19]_i_1_n_0 ;
  wire \rgb_o[1]_i_1_n_0 ;
  wire \rgb_o[20]_i_1_n_0 ;
  wire \rgb_o[22]_i_1_n_0 ;
  wire \rgb_o[23]_i_10_n_0 ;
  wire \rgb_o[23]_i_11_n_0 ;
  wire \rgb_o[23]_i_12_n_0 ;
  wire \rgb_o[23]_i_1_n_0 ;
  wire \rgb_o[23]_i_4_n_0 ;
  wire \rgb_o[23]_i_5_n_0 ;
  wire \rgb_o[23]_i_6_n_0 ;
  wire \rgb_o[23]_i_7_n_0 ;
  wire \rgb_o[23]_i_9_n_0 ;
  wire \rgb_o[2]_i_1_n_0 ;
  wire \rgb_o[3]_i_1_n_0 ;
  wire \rgb_o[4]_i_1_n_0 ;
  wire \rgb_o[5]_i_1_n_0 ;
  wire \rgb_o[6]_i_1_n_0 ;
  wire \rgb_o[7]_i_1_n_0 ;
  wire \rgb_o[8]_i_1_n_0 ;
  wire \rgb_o[9]_i_1_n_0 ;
  wire [3:0]\rgb_o_reg[13]_0 ;
  wire [7:0]\rgb_o_reg[15]_0 ;
  wire [7:0]\rgb_o_reg[16]_0 ;
  wire [3:0]\rgb_o_reg[23]_0 ;
  wire \rgb_o_reg[23]_i_2_0 ;
  wire \rgb_o_reg[23]_i_2_n_0 ;
  wire \rgb_o_reg[23]_i_3_n_0 ;
  wire [3:0]\rgb_o_reg[5]_0 ;
  wire [7:0]\rgb_o_reg[7]_0 ;
  wire row_s1_reg_i_4_n_0;
  wire row_s1_reg_i_5_n_0;
  wire row_s1_reg_i_6_n_0;
  wire row_s1_reg_i_7_n_0;
  wire row_s1_reg_n_0;
  wire row_s1_reg_n_1;
  wire row_s1_reg_n_10;
  wire row_s1_reg_n_11;
  wire row_s1_reg_n_12;
  wire row_s1_reg_n_13;
  wire row_s1_reg_n_14;
  wire row_s1_reg_n_15;
  wire row_s1_reg_n_2;
  wire row_s1_reg_n_3;
  wire row_s1_reg_n_4;
  wire row_s1_reg_n_5;
  wire row_s1_reg_n_6;
  wire row_s1_reg_n_7;
  wire row_s1_reg_n_8;
  wire row_s1_reg_n_9;
  wire sleep_mode;
  wire sleep_mode_reg;
  wire status_de;
  wire status_hs;
  wire [23:1]status_rgb;
  wire status_vs;
  wire text_s1;
  wire text_s10;
  wire vs_o_reg_0;
  wire vs_s1;
  wire [15:0]NLW_row_s1_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_row_s1_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_row_s1_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFF)) 
    \base_s1[22]_i_2 
       (.I0(\base_s1_reg[0]_1 [8]),
        .I1(\base_s1_reg[0]_1 [7]),
        .I2(\base_s1_reg[0]_1 [6]),
        .I3(\base_s1_reg[0]_1 [5]),
        .I4(\base_s1_reg[0]_1 [4]),
        .I5(\base_s1_reg[0]_1 [3]),
        .O(\osd_y_reg[9] ));
  LUT6 #(
    .INIT(64'hFFEEFEEEFFEEEEEF)) 
    \base_s1[22]_i_3 
       (.I0(\base_s1[22]_i_4_n_0 ),
        .I1(\base_s1_reg[0]_0 [9]),
        .I2(\base_s1_reg[0]_0 [3]),
        .I3(\base_s1_reg[0]_0 [6]),
        .I4(\base_s1_reg[0]_0 [5]),
        .I5(\base_s1_reg[0]_0 [4]),
        .O(\osd_x_reg[10] ));
  LUT2 #(
    .INIT(4'hE)) 
    \base_s1[22]_i_4 
       (.I0(\base_s1_reg[0]_0 [8]),
        .I1(\base_s1_reg[0]_0 [7]),
        .O(\base_s1[22]_i_4_n_0 ));
  FDCE \base_s1_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[0]),
        .Q(base_s1[0]));
  FDCE \base_s1_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[9]),
        .Q(base_s1[10]));
  FDCE \base_s1_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[10]),
        .Q(base_s1[11]));
  FDCE \base_s1_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[11]),
        .Q(base_s1[12]));
  FDCE \base_s1_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[12]),
        .Q(base_s1[13]));
  FDCE \base_s1_reg[14] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[13]),
        .Q(base_s1[14]));
  FDCE \base_s1_reg[15] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[14]),
        .Q(base_s1[15]));
  FDCE \base_s1_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[15]),
        .Q(base_s1[16]));
  FDCE \base_s1_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[16]),
        .Q(base_s1[17]));
  FDCE \base_s1_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[17]),
        .Q(base_s1[18]));
  FDCE \base_s1_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[18]),
        .Q(base_s1[19]));
  FDCE \base_s1_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[1]),
        .Q(base_s1[1]));
  FDCE \base_s1_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[19]),
        .Q(base_s1[20]));
  FDCE \base_s1_reg[22] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[20]),
        .Q(base_s1[22]));
  FDCE \base_s1_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[2]),
        .Q(base_s1[2]));
  FDCE \base_s1_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[3]),
        .Q(base_s1[3]));
  FDCE \base_s1_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[4]),
        .Q(base_s1[4]));
  FDCE \base_s1_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[5]),
        .Q(base_s1[5]));
  FDCE \base_s1_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[6]),
        .Q(base_s1[6]));
  FDCE \base_s1_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[7]),
        .Q(base_s1[8]));
  FDCE \base_s1_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(D[8]),
        .Q(base_s1[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \column_s1[0]_i_1 
       (.I0(\base_s1_reg[0]_0 [1]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_0 [0]),
        .O(column[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \column_s1[1]_i_1 
       (.I0(\base_s1_reg[0]_0 [2]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_0 [1]),
        .O(column[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \column_s1[2]_i_1 
       (.I0(\base_s1_reg[0]_0 [3]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_0 [2]),
        .O(column[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \column_s1[3]_i_1 
       (.I0(\base_s1_reg[0]_0 [4]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_0 [3]),
        .O(column[3]));
  FDCE \column_s1_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(column[0]),
        .Q(column_s1[0]));
  FDCE \column_s1_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(column[1]),
        .Q(column_s1[1]));
  FDCE \column_s1_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(column[2]),
        .Q(column_s1[2]));
  FDCE \column_s1_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(column[3]),
        .Q(column_s1[3]));
  FDCE de_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(de_s1),
        .Q(status_de));
  FDCE de_s1_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(overlay_de),
        .Q(de_s1));
  FDCE hs_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(hs_s1),
        .Q(status_hs));
  FDCE hs_s1_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(overlay_hs),
        .Q(hs_s1));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ones_q[0]_i_1 
       (.I0(status_rgb[7]),
        .I1(status_rgb[5]),
        .I2(status_rgb[1]),
        .I3(status_rgb[3]),
        .O(\rgb_o_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ones_q[0]_i_1__0 
       (.I0(status_rgb[15]),
        .I1(status_rgb[13]),
        .I2(status_rgb[9]),
        .I3(status_rgb[11]),
        .O(\rgb_o_reg[13]_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \ones_q[0]_i_1__1 
       (.I0(Q[2]),
        .I1(status_rgb[19]),
        .I2(status_rgb[17]),
        .I3(status_rgb[23]),
        .O(\rgb_o_reg[23]_0 [0]));
  LUT6 #(
    .INIT(64'hD7D23A0D872758D8)) 
    \ones_q[1]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[20]),
        .I2(status_rgb[22]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\ones_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h772289CCDC99DBEE)) 
    \ones_q[1]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[17]),
        .I3(status_rgb[20]),
        .I4(status_rgb[19]),
        .I5(status_rgb[18]),
        .O(\ones_q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h777025AD9887D2D2)) 
    \ones_q[1]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[4]),
        .I2(status_rgb[6]),
        .I3(status_rgb[3]),
        .I4(status_rgb[2]),
        .I5(status_rgb[1]),
        .O(\ones_q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h777025AD9887D2D2)) 
    \ones_q[1]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[12]),
        .I2(status_rgb[14]),
        .I3(status_rgb[11]),
        .I4(status_rgb[10]),
        .I5(status_rgb[9]),
        .O(\ones_q[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h6363C9259D9832FA)) 
    \ones_q[1]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[3]),
        .I4(status_rgb[2]),
        .I5(status_rgb[1]),
        .O(\ones_q[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6363C9259D9832FA)) 
    \ones_q[1]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[11]),
        .I4(status_rgb[10]),
        .I5(status_rgb[9]),
        .O(\ones_q[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hDCDD225D88F7F788)) 
    \ones_q[1]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[4]),
        .I2(status_rgb[1]),
        .I3(status_rgb[6]),
        .I4(status_rgb[3]),
        .I5(status_rgb[2]),
        .O(\ones_q[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCDD225D88F7F788)) 
    \ones_q[1]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[12]),
        .I2(status_rgb[9]),
        .I3(status_rgb[14]),
        .I4(status_rgb[11]),
        .I5(status_rgb[10]),
        .O(\ones_q[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h36379C98C9CD8FAF)) 
    \ones_q[1]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[1]),
        .I4(status_rgb[2]),
        .I5(status_rgb[3]),
        .O(\ones_q[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h36379C98C9CD8FAF)) 
    \ones_q[1]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[9]),
        .I4(status_rgb[10]),
        .I5(status_rgb[11]),
        .O(\ones_q[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0138F8CF7CEF8B10)) 
    \ones_q[2]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\ones_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F0D2EF77FE3E17F)) 
    \ones_q[2]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[17]),
        .I4(status_rgb[18]),
        .I5(status_rgb[19]),
        .O(\ones_q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01F6FA29B26F6D10)) 
    \ones_q[2]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\ones_q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01F6FA29B26F6D10)) 
    \ones_q[2]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\ones_q[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h08B6F64D945F6F80)) 
    \ones_q[2]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\ones_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h08B6F64D945F6F80)) 
    \ones_q[2]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\ones_q[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE4D0FFEEF92D6FE)) 
    \ones_q[2]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\ones_q[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE4D0FFEEF92D6FE)) 
    \ones_q[2]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\ones_q[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F6B7FF049F7B27F)) 
    \ones_q[2]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[3]),
        .I5(status_rgb[1]),
        .O(\ones_q[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7F6B7FF049F7B27F)) 
    \ones_q[2]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[11]),
        .I5(status_rgb[9]),
        .O(\ones_q[2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF04000400000000)) 
    \ones_q[3]_i_1 
       (.I0(status_rgb[5]),
        .I1(\ones_q[3]_i_2_n_0 ),
        .I2(status_rgb[6]),
        .I3(status_rgb[7]),
        .I4(\ones_q[3]_i_3_n_0 ),
        .I5(Q[0]),
        .O(\rgb_o_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hFF04000400000000)) 
    \ones_q[3]_i_1__0 
       (.I0(status_rgb[13]),
        .I1(\ones_q[3]_i_2__0_n_0 ),
        .I2(status_rgb[14]),
        .I3(status_rgb[15]),
        .I4(\ones_q[3]_i_3__0_n_0 ),
        .I5(Q[1]),
        .O(\rgb_o_reg[13]_0 [3]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \ones_q[3]_i_1__1 
       (.I0(status_rgb[23]),
        .I1(status_rgb[20]),
        .I2(\ones_q[3]_i_2__1_n_0 ),
        .I3(status_rgb[19]),
        .I4(status_rgb[22]),
        .I5(Q[2]),
        .O(\rgb_o_reg[23]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ones_q[3]_i_2 
       (.I0(status_rgb[2]),
        .I1(status_rgb[3]),
        .I2(status_rgb[1]),
        .I3(status_rgb[4]),
        .O(\ones_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ones_q[3]_i_2__0 
       (.I0(status_rgb[10]),
        .I1(status_rgb[11]),
        .I2(status_rgb[9]),
        .I3(status_rgb[12]),
        .O(\ones_q[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ones_q[3]_i_2__1 
       (.I0(status_rgb[18]),
        .I1(status_rgb[17]),
        .O(\ones_q[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ones_q[3]_i_3 
       (.I0(status_rgb[6]),
        .I1(status_rgb[2]),
        .I2(status_rgb[1]),
        .I3(status_rgb[3]),
        .I4(status_rgb[4]),
        .I5(status_rgb[5]),
        .O(\ones_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ones_q[3]_i_3__0 
       (.I0(status_rgb[14]),
        .I1(status_rgb[10]),
        .I2(status_rgb[9]),
        .I3(status_rgb[11]),
        .I4(status_rgb[12]),
        .I5(status_rgb[13]),
        .O(\ones_q[3]_i_3__0_n_0 ));
  MUXF8 \ones_q_reg[1]_i_1 
       (.I0(\ones_q_reg[1]_i_2_n_0 ),
        .I1(\ones_q_reg[1]_i_3_n_0 ),
        .O(\rgb_o_reg[5]_0 [1]),
        .S(Q[0]));
  MUXF8 \ones_q_reg[1]_i_1__0 
       (.I0(\ones_q_reg[1]_i_2__0_n_0 ),
        .I1(\ones_q_reg[1]_i_3__0_n_0 ),
        .O(\rgb_o_reg[13]_0 [1]),
        .S(Q[1]));
  MUXF7 \ones_q_reg[1]_i_1__1 
       (.I0(\ones_q[1]_i_2_n_0 ),
        .I1(\ones_q[1]_i_3_n_0 ),
        .O(\rgb_o_reg[23]_0 [1]),
        .S(Q[2]));
  MUXF7 \ones_q_reg[1]_i_2 
       (.I0(\ones_q[1]_i_4_n_0 ),
        .I1(\ones_q[1]_i_5_n_0 ),
        .O(\ones_q_reg[1]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \ones_q_reg[1]_i_2__0 
       (.I0(\ones_q[1]_i_4__0_n_0 ),
        .I1(\ones_q[1]_i_5__0_n_0 ),
        .O(\ones_q_reg[1]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \ones_q_reg[1]_i_3 
       (.I0(\ones_q[1]_i_6_n_0 ),
        .I1(\ones_q[1]_i_7_n_0 ),
        .O(\ones_q_reg[1]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \ones_q_reg[1]_i_3__0 
       (.I0(\ones_q[1]_i_6__0_n_0 ),
        .I1(\ones_q[1]_i_7__0_n_0 ),
        .O(\ones_q_reg[1]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  MUXF8 \ones_q_reg[2]_i_1 
       (.I0(\ones_q_reg[2]_i_2_n_0 ),
        .I1(\ones_q_reg[2]_i_3_n_0 ),
        .O(\rgb_o_reg[5]_0 [2]),
        .S(Q[0]));
  MUXF8 \ones_q_reg[2]_i_1__0 
       (.I0(\ones_q_reg[2]_i_2__0_n_0 ),
        .I1(\ones_q_reg[2]_i_3__0_n_0 ),
        .O(\rgb_o_reg[13]_0 [2]),
        .S(Q[1]));
  MUXF7 \ones_q_reg[2]_i_1__1 
       (.I0(\ones_q[2]_i_2_n_0 ),
        .I1(\ones_q[2]_i_3_n_0 ),
        .O(\rgb_o_reg[23]_0 [2]),
        .S(Q[2]));
  MUXF7 \ones_q_reg[2]_i_2 
       (.I0(\ones_q[2]_i_4_n_0 ),
        .I1(\ones_q[2]_i_5_n_0 ),
        .O(\ones_q_reg[2]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \ones_q_reg[2]_i_2__0 
       (.I0(\ones_q[2]_i_4__0_n_0 ),
        .I1(\ones_q[2]_i_5__0_n_0 ),
        .O(\ones_q_reg[2]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \ones_q_reg[2]_i_3 
       (.I0(\ones_q[2]_i_6_n_0 ),
        .I1(\ones_q[2]_i_7_n_0 ),
        .O(\ones_q_reg[2]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \ones_q_reg[2]_i_3__0 
       (.I0(\ones_q[2]_i_6__0_n_0 ),
        .I1(\ones_q[2]_i_7__0_n_0 ),
        .O(\ones_q_reg[2]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  LUT6 #(
    .INIT(64'h0117177FE8808000)) 
    \qm_q[1]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[18]),
        .I3(status_rgb[19]),
        .I4(status_rgb[20]),
        .I5(status_rgb[17]),
        .O(\qm_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE80117177F)) 
    \qm_q[1]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[18]),
        .I4(status_rgb[19]),
        .I5(status_rgb[17]),
        .O(\qm_q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0117177FE8808000)) 
    \qm_q[1]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[3]),
        .I3(status_rgb[2]),
        .I4(status_rgb[4]),
        .I5(status_rgb[1]),
        .O(\qm_q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0117177FE8808000)) 
    \qm_q[1]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[11]),
        .I3(status_rgb[10]),
        .I4(status_rgb[12]),
        .I5(status_rgb[9]),
        .O(\qm_q[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00010117FEE8E880)) 
    \qm_q[1]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[3]),
        .I4(status_rgb[2]),
        .I5(status_rgb[1]),
        .O(\qm_q[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00010117FEE8E880)) 
    \qm_q[1]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[11]),
        .I4(status_rgb[10]),
        .I5(status_rgb[9]),
        .O(\qm_q[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880177F7FFF)) 
    \qm_q[1]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[3]),
        .I3(status_rgb[2]),
        .I4(status_rgb[4]),
        .I5(status_rgb[1]),
        .O(\qm_q[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880177F7FFF)) 
    \qm_q[1]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[11]),
        .I3(status_rgb[10]),
        .I4(status_rgb[12]),
        .I5(status_rgb[9]),
        .O(\qm_q[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE80117177F)) 
    \qm_q[1]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[3]),
        .I4(status_rgb[2]),
        .I5(status_rgb[1]),
        .O(\qm_q[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE80117177F)) 
    \qm_q[1]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[11]),
        .I4(status_rgb[10]),
        .I5(status_rgb[9]),
        .O(\qm_q[1]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \qm_q[2]_i_1 
       (.I0(Q[0]),
        .I1(status_rgb[2]),
        .I2(status_rgb[1]),
        .O(\rgb_o_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \qm_q[2]_i_1__0 
       (.I0(Q[1]),
        .I1(status_rgb[10]),
        .I2(status_rgb[9]),
        .O(\rgb_o_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \qm_q[2]_i_1__1 
       (.I0(status_rgb[17]),
        .I1(status_rgb[18]),
        .I2(Q[2]),
        .O(\rgb_o_reg[16]_0 [1]));
  LUT6 #(
    .INIT(64'h01E8E87FE87F7F00)) 
    \qm_q[3]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0101E801E8E87F)) 
    \qm_q[3]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01E8E87FE87F7F00)) 
    \qm_q[3]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01E8E87FE87F7F00)) 
    \qm_q[3]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE17FE171780)) 
    \qm_q[3]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE17FE171780)) 
    \qm_q[3]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE171780178080FF)) 
    \qm_q[3]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE171780178080FF)) 
    \qm_q[3]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF0101E801E8E87F)) 
    \qm_q[3]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF0101E801E8E87F)) 
    \qm_q[3]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[3]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \qm_q[4]_i_1 
       (.I0(status_rgb[4]),
        .I1(status_rgb[3]),
        .I2(status_rgb[1]),
        .I3(Q[0]),
        .I4(status_rgb[2]),
        .O(\rgb_o_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \qm_q[4]_i_1__0 
       (.I0(status_rgb[12]),
        .I1(status_rgb[11]),
        .I2(status_rgb[9]),
        .I3(Q[1]),
        .I4(status_rgb[10]),
        .O(\rgb_o_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \qm_q[4]_i_1__1 
       (.I0(Q[2]),
        .I1(status_rgb[20]),
        .I2(status_rgb[19]),
        .I3(status_rgb[18]),
        .I4(status_rgb[17]),
        .O(\rgb_o_reg[16]_0 [3]));
  LUT6 #(
    .INIT(64'hF118188F188F8FF0)) 
    \qm_q[5]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF00E0EE70EE7E770)) 
    \qm_q[5]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5BB2B225B225255A)) 
    \qm_q[5]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5BB2B225B225255A)) 
    \qm_q[5]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h5AA4A44DA44D4DDA)) 
    \qm_q[5]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5AA4A44DA44D4DDA)) 
    \qm_q[5]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hA44D4DDA4DDADAA5)) 
    \qm_q[5]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA44D4DDA4DDADAA5)) 
    \qm_q[5]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hA55B5BB25BB2B225)) 
    \qm_q[5]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA55B5BB25BB2B225)) 
    \qm_q[5]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \qm_q[6]_i_1 
       (.I0(status_rgb[6]),
        .I1(status_rgb[5]),
        .I2(status_rgb[2]),
        .I3(Q[0]),
        .I4(status_rgb[4]),
        .I5(\qm_q[6]_i_2_n_0 ),
        .O(\rgb_o_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \qm_q[6]_i_1__0 
       (.I0(status_rgb[14]),
        .I1(status_rgb[13]),
        .I2(status_rgb[10]),
        .I3(Q[1]),
        .I4(status_rgb[12]),
        .I5(\qm_q[6]_i_2__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \qm_q[6]_i_1__1 
       (.I0(status_rgb[20]),
        .I1(status_rgb[19]),
        .I2(status_rgb[22]),
        .I3(status_rgb[18]),
        .I4(status_rgb[17]),
        .O(\rgb_o_reg[16]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \qm_q[6]_i_2 
       (.I0(status_rgb[3]),
        .I1(status_rgb[1]),
        .O(\qm_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \qm_q[6]_i_2__0 
       (.I0(status_rgb[11]),
        .I1(status_rgb[9]),
        .O(\qm_q[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h977E7EE97EE9E996)) 
    \qm_q[7]_i_2 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9668688168818116)) 
    \qm_q[7]_i_3 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[19]),
        .I4(status_rgb[17]),
        .I5(status_rgb[18]),
        .O(\qm_q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h977E7EE97EE9E996)) 
    \qm_q[7]_i_4 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h977E7EE97EE9E996)) 
    \qm_q[7]_i_4__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h6997977E977E7EE9)) 
    \qm_q[7]_i_5 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6997977E977E7EE9)) 
    \qm_q[7]_i_5__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[7]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6881811681161669)) 
    \qm_q[7]_i_6 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6881811681161669)) 
    \qm_q[7]_i_6__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h9668688168818116)) 
    \qm_q[7]_i_7 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[2]),
        .I4(status_rgb[1]),
        .I5(status_rgb[3]),
        .O(\qm_q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9668688168818116)) 
    \qm_q[7]_i_7__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[10]),
        .I4(status_rgb[9]),
        .I5(status_rgb[11]),
        .O(\qm_q[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0117177F177F7FFF)) 
    \qm_q[8]_i_2 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[2]),
        .I3(status_rgb[3]),
        .I4(status_rgb[1]),
        .I5(status_rgb[4]),
        .O(\qm_q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0117177F177F7FFF)) 
    \qm_q[8]_i_2__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[10]),
        .I3(status_rgb[11]),
        .I4(status_rgb[9]),
        .I5(status_rgb[12]),
        .O(\qm_q[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0117177F177F7FFF)) 
    \qm_q[8]_i_2__1 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[19]),
        .I3(status_rgb[18]),
        .I4(status_rgb[17]),
        .I5(status_rgb[20]),
        .O(\qm_q[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    \qm_q[8]_i_3 
       (.I0(status_rgb[5]),
        .I1(status_rgb[6]),
        .I2(status_rgb[4]),
        .I3(status_rgb[1]),
        .I4(status_rgb[3]),
        .I5(status_rgb[2]),
        .O(\qm_q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    \qm_q[8]_i_3__0 
       (.I0(status_rgb[13]),
        .I1(status_rgb[14]),
        .I2(status_rgb[12]),
        .I3(status_rgb[9]),
        .I4(status_rgb[11]),
        .I5(status_rgb[10]),
        .O(\qm_q[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    \qm_q[8]_i_3__1 
       (.I0(status_rgb[23]),
        .I1(status_rgb[22]),
        .I2(status_rgb[20]),
        .I3(status_rgb[17]),
        .I4(status_rgb[18]),
        .I5(status_rgb[19]),
        .O(\qm_q[8]_i_3__1_n_0 ));
  MUXF8 \qm_q_reg[1]_i_1 
       (.I0(\qm_q_reg[1]_i_2_n_0 ),
        .I1(\qm_q_reg[1]_i_3_n_0 ),
        .O(\rgb_o_reg[7]_0 [0]),
        .S(Q[0]));
  MUXF8 \qm_q_reg[1]_i_1__0 
       (.I0(\qm_q_reg[1]_i_2__0_n_0 ),
        .I1(\qm_q_reg[1]_i_3__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [0]),
        .S(Q[1]));
  MUXF7 \qm_q_reg[1]_i_1__1 
       (.I0(\qm_q[1]_i_2_n_0 ),
        .I1(\qm_q[1]_i_3_n_0 ),
        .O(\rgb_o_reg[16]_0 [0]),
        .S(Q[2]));
  MUXF7 \qm_q_reg[1]_i_2 
       (.I0(\qm_q[1]_i_4_n_0 ),
        .I1(\qm_q[1]_i_5_n_0 ),
        .O(\qm_q_reg[1]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[1]_i_2__0 
       (.I0(\qm_q[1]_i_4__0_n_0 ),
        .I1(\qm_q[1]_i_5__0_n_0 ),
        .O(\qm_q_reg[1]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[1]_i_3 
       (.I0(\qm_q[1]_i_6_n_0 ),
        .I1(\qm_q[1]_i_7_n_0 ),
        .O(\qm_q_reg[1]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[1]_i_3__0 
       (.I0(\qm_q[1]_i_6__0_n_0 ),
        .I1(\qm_q[1]_i_7__0_n_0 ),
        .O(\qm_q_reg[1]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  MUXF8 \qm_q_reg[3]_i_1 
       (.I0(\qm_q_reg[3]_i_2_n_0 ),
        .I1(\qm_q_reg[3]_i_3_n_0 ),
        .O(\rgb_o_reg[7]_0 [2]),
        .S(Q[0]));
  MUXF8 \qm_q_reg[3]_i_1__0 
       (.I0(\qm_q_reg[3]_i_2__0_n_0 ),
        .I1(\qm_q_reg[3]_i_3__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [2]),
        .S(Q[1]));
  MUXF7 \qm_q_reg[3]_i_1__1 
       (.I0(\qm_q[3]_i_2_n_0 ),
        .I1(\qm_q[3]_i_3_n_0 ),
        .O(\rgb_o_reg[16]_0 [2]),
        .S(Q[2]));
  MUXF7 \qm_q_reg[3]_i_2 
       (.I0(\qm_q[3]_i_4_n_0 ),
        .I1(\qm_q[3]_i_5_n_0 ),
        .O(\qm_q_reg[3]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[3]_i_2__0 
       (.I0(\qm_q[3]_i_4__0_n_0 ),
        .I1(\qm_q[3]_i_5__0_n_0 ),
        .O(\qm_q_reg[3]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[3]_i_3 
       (.I0(\qm_q[3]_i_6_n_0 ),
        .I1(\qm_q[3]_i_7_n_0 ),
        .O(\qm_q_reg[3]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[3]_i_3__0 
       (.I0(\qm_q[3]_i_6__0_n_0 ),
        .I1(\qm_q[3]_i_7__0_n_0 ),
        .O(\qm_q_reg[3]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  MUXF8 \qm_q_reg[5]_i_1 
       (.I0(\qm_q_reg[5]_i_2_n_0 ),
        .I1(\qm_q_reg[5]_i_3_n_0 ),
        .O(\rgb_o_reg[7]_0 [4]),
        .S(Q[0]));
  MUXF8 \qm_q_reg[5]_i_1__0 
       (.I0(\qm_q_reg[5]_i_2__0_n_0 ),
        .I1(\qm_q_reg[5]_i_3__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [4]),
        .S(Q[1]));
  MUXF7 \qm_q_reg[5]_i_1__1 
       (.I0(\qm_q[5]_i_2_n_0 ),
        .I1(\qm_q[5]_i_3_n_0 ),
        .O(\rgb_o_reg[16]_0 [4]),
        .S(Q[2]));
  MUXF7 \qm_q_reg[5]_i_2 
       (.I0(\qm_q[5]_i_4_n_0 ),
        .I1(\qm_q[5]_i_5_n_0 ),
        .O(\qm_q_reg[5]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[5]_i_2__0 
       (.I0(\qm_q[5]_i_4__0_n_0 ),
        .I1(\qm_q[5]_i_5__0_n_0 ),
        .O(\qm_q_reg[5]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[5]_i_3 
       (.I0(\qm_q[5]_i_6_n_0 ),
        .I1(\qm_q[5]_i_7_n_0 ),
        .O(\qm_q_reg[5]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[5]_i_3__0 
       (.I0(\qm_q[5]_i_6__0_n_0 ),
        .I1(\qm_q[5]_i_7__0_n_0 ),
        .O(\qm_q_reg[5]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  MUXF8 \qm_q_reg[7]_i_1 
       (.I0(\qm_q_reg[7]_i_2_n_0 ),
        .I1(\qm_q_reg[7]_i_3_n_0 ),
        .O(\rgb_o_reg[7]_0 [6]),
        .S(Q[0]));
  MUXF8 \qm_q_reg[7]_i_1__0 
       (.I0(\qm_q_reg[7]_i_2__0_n_0 ),
        .I1(\qm_q_reg[7]_i_3__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [6]),
        .S(Q[1]));
  MUXF7 \qm_q_reg[7]_i_1__1 
       (.I0(\qm_q[7]_i_2_n_0 ),
        .I1(\qm_q[7]_i_3_n_0 ),
        .O(\rgb_o_reg[16]_0 [6]),
        .S(Q[2]));
  MUXF7 \qm_q_reg[7]_i_2 
       (.I0(\qm_q[7]_i_4_n_0 ),
        .I1(\qm_q[7]_i_5_n_0 ),
        .O(\qm_q_reg[7]_i_2_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[7]_i_2__0 
       (.I0(\qm_q[7]_i_4__0_n_0 ),
        .I1(\qm_q[7]_i_5__0_n_0 ),
        .O(\qm_q_reg[7]_i_2__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[7]_i_3 
       (.I0(\qm_q[7]_i_6_n_0 ),
        .I1(\qm_q[7]_i_7_n_0 ),
        .O(\qm_q_reg[7]_i_3_n_0 ),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[7]_i_3__0 
       (.I0(\qm_q[7]_i_6__0_n_0 ),
        .I1(\qm_q[7]_i_7__0_n_0 ),
        .O(\qm_q_reg[7]_i_3__0_n_0 ),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[8]_i_1 
       (.I0(\qm_q[8]_i_2_n_0 ),
        .I1(\qm_q[8]_i_3_n_0 ),
        .O(\rgb_o_reg[7]_0 [7]),
        .S(status_rgb[7]));
  MUXF7 \qm_q_reg[8]_i_1__0 
       (.I0(\qm_q[8]_i_2__0_n_0 ),
        .I1(\qm_q[8]_i_3__0_n_0 ),
        .O(\rgb_o_reg[15]_0 [7]),
        .S(status_rgb[15]));
  MUXF7 \qm_q_reg[8]_i_1__1 
       (.I0(\qm_q[8]_i_2__1_n_0 ),
        .I1(\qm_q[8]_i_3__1_n_0 ),
        .O(\rgb_o_reg[16]_0 [7]),
        .S(Q[2]));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[0]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[0]),
        .O(\rgb_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[10]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[10]),
        .O(\rgb_o[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[11]_i_1 
       (.I0(base_s1[11]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[12]_i_1 
       (.I0(base_s1[12]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[13]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[13]),
        .O(\rgb_o[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[14]_i_1 
       (.I0(base_s1[14]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[15]_i_1 
       (.I0(base_s1[15]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[16]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[16]),
        .O(\rgb_o[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[17]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[17]),
        .O(\rgb_o[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[18]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[18]),
        .O(\rgb_o[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[19]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[19]),
        .O(\rgb_o[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[1]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[1]),
        .O(\rgb_o[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[20]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[20]),
        .O(\rgb_o[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[22]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[22]),
        .O(\rgb_o[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[23]_i_1 
       (.I0(base_s1[18]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \rgb_o[23]_i_10 
       (.I0(row_s1_reg_n_11),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_3),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .O(\rgb_o[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \rgb_o[23]_i_11 
       (.I0(row_s1_reg_n_8),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_0),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .O(\rgb_o[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \rgb_o[23]_i_12 
       (.I0(row_s1_reg_n_10),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_2),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .O(\rgb_o[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \rgb_o[23]_i_4 
       (.I0(row_s1_reg_n_13),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_5),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .I4(column_s1[2]),
        .I5(\rgb_o[23]_i_9_n_0 ),
        .O(\rgb_o[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \rgb_o[23]_i_5 
       (.I0(row_s1_reg_n_15),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_7),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .I4(column_s1[2]),
        .I5(\rgb_o[23]_i_10_n_0 ),
        .O(\rgb_o[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \rgb_o[23]_i_6 
       (.I0(row_s1_reg_n_12),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_4),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .I4(column_s1[2]),
        .I5(\rgb_o[23]_i_11_n_0 ),
        .O(\rgb_o[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \rgb_o[23]_i_7 
       (.I0(row_s1_reg_n_14),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_6),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .I4(column_s1[2]),
        .I5(\rgb_o[23]_i_12_n_0 ),
        .O(\rgb_o[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB800)) 
    \rgb_o[23]_i_9 
       (.I0(row_s1_reg_n_9),
        .I1(column_s1[3]),
        .I2(row_s1_reg_n_1),
        .I3(\rgb_o_reg[23]_i_2_0 ),
        .O(\rgb_o[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[2]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[2]),
        .O(\rgb_o[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[3]_i_1 
       (.I0(base_s1[3]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[4]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[4]),
        .O(\rgb_o[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[5]_i_1 
       (.I0(base_s1[5]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[6]_i_1 
       (.I0(base_s1[6]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \rgb_o[7]_i_1 
       (.I0(base_s1[2]),
        .I1(text_s1),
        .I2(\rgb_o_reg[23]_i_2_n_0 ),
        .I3(column_s1[0]),
        .I4(\rgb_o_reg[23]_i_3_n_0 ),
        .O(\rgb_o[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[8]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[8]),
        .O(\rgb_o[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    \rgb_o[9]_i_1 
       (.I0(text_s1),
        .I1(\rgb_o_reg[23]_i_2_n_0 ),
        .I2(column_s1[0]),
        .I3(\rgb_o_reg[23]_i_3_n_0 ),
        .I4(base_s1[9]),
        .O(\rgb_o[9]_i_1_n_0 ));
  FDCE \rgb_o_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \rgb_o_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[10]_i_1_n_0 ),
        .Q(status_rgb[10]));
  FDCE \rgb_o_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[11]_i_1_n_0 ),
        .Q(status_rgb[11]));
  FDCE \rgb_o_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[12]_i_1_n_0 ),
        .Q(status_rgb[12]));
  FDCE \rgb_o_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[13]_i_1_n_0 ),
        .Q(status_rgb[13]));
  FDCE \rgb_o_reg[14] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[14]_i_1_n_0 ),
        .Q(status_rgb[14]));
  FDCE \rgb_o_reg[15] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[15]_i_1_n_0 ),
        .Q(status_rgb[15]));
  FDCE \rgb_o_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[16]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \rgb_o_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[17]_i_1_n_0 ),
        .Q(status_rgb[17]));
  FDCE \rgb_o_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[18]_i_1_n_0 ),
        .Q(status_rgb[18]));
  FDCE \rgb_o_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[19]_i_1_n_0 ),
        .Q(status_rgb[19]));
  FDCE \rgb_o_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[1]_i_1_n_0 ),
        .Q(status_rgb[1]));
  FDCE \rgb_o_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[20]_i_1_n_0 ),
        .Q(status_rgb[20]));
  FDCE \rgb_o_reg[22] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[22]_i_1_n_0 ),
        .Q(status_rgb[22]));
  FDCE \rgb_o_reg[23] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[23]_i_1_n_0 ),
        .Q(status_rgb[23]));
  MUXF7 \rgb_o_reg[23]_i_2 
       (.I0(\rgb_o[23]_i_4_n_0 ),
        .I1(\rgb_o[23]_i_5_n_0 ),
        .O(\rgb_o_reg[23]_i_2_n_0 ),
        .S(column_s1[1]));
  MUXF7 \rgb_o_reg[23]_i_3 
       (.I0(\rgb_o[23]_i_6_n_0 ),
        .I1(\rgb_o[23]_i_7_n_0 ),
        .O(\rgb_o_reg[23]_i_3_n_0 ),
        .S(column_s1[1]));
  FDCE \rgb_o_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[2]_i_1_n_0 ),
        .Q(status_rgb[2]));
  FDCE \rgb_o_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[3]_i_1_n_0 ),
        .Q(status_rgb[3]));
  FDCE \rgb_o_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[4]_i_1_n_0 ),
        .Q(status_rgb[4]));
  FDCE \rgb_o_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[5]_i_1_n_0 ),
        .Q(status_rgb[5]));
  FDCE \rgb_o_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[6]_i_1_n_0 ),
        .Q(status_rgb[6]));
  FDCE \rgb_o_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[7]_i_1_n_0 ),
        .Q(status_rgb[7]));
  FDCE \rgb_o_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[8]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \rgb_o_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(\rgb_o[9]_i_1_n_0 ),
        .Q(status_rgb[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "row_s1" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007FFE01800180018001800180018001800180018001803FFC00000000),
    .INIT_01(256'h00001040104010401040107E104010405040507C3640334011FE198008800CC0),
    .INIT_02(256'h00000002170710C8105013FE502075FC350439FC110411FC7C0010D813FE10D8),
    .INIT_03(256'h00000000200E7C1A0FB20C200C200C603F400040004000C07FFE00C800D800C0),
    .INIT_04(256'h0000104010401646124C1348115851D050E070E037FE30401040184018400000),
    .INIT_05(256'h0000030E4BCA7B504B104B104B227BFE4B204B207BFC4B044B047B0403FC0000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    row_s1_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,glyph1,character,character__0,row_s1_reg_i_4_n_0,row_s1_reg_i_5_n_0,row_s1_reg_i_6_n_0,row_s1_reg_i_7_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(pixel_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({row_s1_reg_n_0,row_s1_reg_n_1,row_s1_reg_n_2,row_s1_reg_n_3,row_s1_reg_n_4,row_s1_reg_n_5,row_s1_reg_n_6,row_s1_reg_n_7,row_s1_reg_n_8,row_s1_reg_n_9,row_s1_reg_n_10,row_s1_reg_n_11,row_s1_reg_n_12,row_s1_reg_n_13,row_s1_reg_n_14,row_s1_reg_n_15}),
        .DOBDO(NLW_row_s1_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_row_s1_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_row_s1_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    row_s1_reg_i_1
       (.I0(\base_s1_reg[0]_0 [6]),
        .I1(sleep_mode),
        .O(glyph1));
  LUT4 #(
    .INIT(16'hF909)) 
    row_s1_reg_i_2
       (.I0(\base_s1_reg[0]_0 [5]),
        .I1(\base_s1_reg[0]_0 [4]),
        .I2(sleep_mode),
        .I3(\base_s1_reg[0]_0 [6]),
        .O(character));
  LUT3 #(
    .INIT(8'h8B)) 
    row_s1_reg_i_3
       (.I0(\base_s1_reg[0]_0 [5]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_0 [4]),
        .O(character__0));
  LUT3 #(
    .INIT(8'hB8)) 
    row_s1_reg_i_4
       (.I0(\base_s1_reg[0]_1 [4]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_1 [3]),
        .O(row_s1_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    row_s1_reg_i_5
       (.I0(\base_s1_reg[0]_1 [3]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_1 [2]),
        .O(row_s1_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    row_s1_reg_i_6
       (.I0(\base_s1_reg[0]_1 [2]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_1 [1]),
        .O(row_s1_reg_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    row_s1_reg_i_7
       (.I0(\base_s1_reg[0]_1 [1]),
        .I1(sleep_mode),
        .I2(\base_s1_reg[0]_1 [0]),
        .O(row_s1_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    text_s1_i_2
       (.I0(\base_s1_reg[0]_1 [7]),
        .I1(\base_s1_reg[0]_1 [5]),
        .I2(sleep_mode),
        .I3(\base_s1_reg[0]_1 [4]),
        .O(\osd_y_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFF)) 
    text_s1_i_3
       (.I0(\base_s1_reg[0]_0 [9]),
        .I1(\base_s1_reg[0]_0 [8]),
        .I2(\base_s1_reg[0]_0 [7]),
        .I3(\base_s1_reg[0]_0 [6]),
        .I4(\base_s1_reg[0]_0 [4]),
        .I5(\base_s1_reg[0]_0 [5]),
        .O(\osd_x_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    text_s1_i_4
       (.I0(sleep_mode),
        .I1(\base_s1_reg[0]_0 [7]),
        .I2(\base_s1_reg[0]_1 [5]),
        .I3(\base_s1_reg[0]_1 [7]),
        .I4(\base_s1_reg[0]_0 [9]),
        .I5(\base_s1_reg[0]_0 [8]),
        .O(sleep_mode_reg));
  FDCE text_s1_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(text_s10),
        .Q(text_s1));
  FDCE vs_o_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(vs_s1),
        .Q(status_vs));
  FDCE vs_s1_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(vs_o_reg_0),
        .D(overlay_vs),
        .Q(vs_s1));
endmodule

(* ORIG_REF_NAME = "tx2_tmds_encoder" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder
   (de_q,
    rst_n_0,
    Q,
    status_de,
    pixel_clk,
    status_hs,
    status_vs,
    rst_n,
    D,
    \ones_q_reg[3]_0 );
  output de_q;
  output rst_n_0;
  output [9:0]Q;
  input status_de;
  input pixel_clk;
  input status_hs;
  input status_vs;
  input rst_n;
  input [8:0]D;
  input [3:0]\ones_q_reg[3]_0 ;

  wire [8:0]D;
  wire [9:0]Q;
  wire c0_q;
  wire c1_q;
  wire de_q;
  wire disparity0_carry__0_i_1_n_0;
  wire disparity0_carry__0_n_7;
  wire disparity0_carry_i_2_n_0;
  wire disparity0_carry_i_3_n_0;
  wire disparity0_carry_i_4_n_0;
  wire disparity0_carry_i_5_n_0;
  wire disparity0_carry_n_0;
  wire disparity0_carry_n_1;
  wire disparity0_carry_n_2;
  wire disparity0_carry_n_3;
  wire disparity0_carry_n_4;
  wire disparity0_carry_n_5;
  wire disparity0_carry_n_6;
  wire disparity0_carry_n_7;
  wire disparity1;
  wire disparity13_out;
  wire disparity22_in;
  wire \disparity[1]_i_1_n_0 ;
  wire \disparity[1]_i_2_n_0 ;
  wire \disparity[2]_i_1_n_0 ;
  wire \disparity[2]_i_2_n_0 ;
  wire \disparity[3]_i_1__1_n_0 ;
  wire \disparity[3]_i_2__1_n_0 ;
  wire \disparity[3]_i_3_n_0 ;
  wire \disparity[3]_i_4_n_0 ;
  wire \disparity[3]_i_5__1_n_0 ;
  wire \disparity[4]_i_1__1_n_0 ;
  wire \disparity[4]_i_2__1_n_0 ;
  wire \disparity[4]_i_3_n_0 ;
  wire \disparity[4]_i_4__1_n_0 ;
  wire \disparity[4]_i_5_n_0 ;
  wire \disparity[5]_i_1__1_n_0 ;
  wire \disparity[5]_i_2__1_n_0 ;
  wire \disparity[5]_i_4__1_n_0 ;
  wire \disparity[5]_i_6__1_n_0 ;
  wire \disparity[5]_i_7_n_0 ;
  wire \disparity[5]_i_8__1_n_0 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire \disparity_reg_n_0_[5] ;
  wire [3:0]\ones_q_reg[3]_0 ;
  wire [4:1]p_0_in;
  wire p_0_out__1;
  wire p_1_in;
  wire pixel_clk;
  wire \qm_q_reg_n_0_[0] ;
  wire \qm_q_reg_n_0_[1] ;
  wire \qm_q_reg_n_0_[2] ;
  wire \qm_q_reg_n_0_[3] ;
  wire \qm_q_reg_n_0_[4] ;
  wire \qm_q_reg_n_0_[5] ;
  wire \qm_q_reg_n_0_[6] ;
  wire \qm_q_reg_n_0_[7] ;
  wire rst_n;
  wire rst_n_0;
  wire status_de;
  wire status_hs;
  wire status_vs;
  wire \symbol[0]_i_1_n_0 ;
  wire \symbol[1]_i_1_n_0 ;
  wire \symbol[2]_i_1_n_0 ;
  wire \symbol[3]_i_1_n_0 ;
  wire \symbol[4]_i_1_n_0 ;
  wire \symbol[5]_i_1_n_0 ;
  wire \symbol[6]_i_1_n_0 ;
  wire \symbol[7]_i_1_n_0 ;
  wire \symbol[8]_i_1_n_0 ;
  wire \symbol[9]_i_1__1_n_0 ;
  wire [3:0]NLW_disparity0_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_disparity0_carry__0_O_UNCONNECTED;

  FDCE c0_q_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(status_hs),
        .Q(c0_q));
  FDCE c1_q_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(status_vs),
        .Q(c1_q));
  FDCE de_q_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(status_de),
        .Q(de_q));
  CARRY4 disparity0_carry
       (.CI(1'b0),
        .CO({disparity0_carry_n_0,disparity0_carry_n_1,disparity0_carry_n_2,disparity0_carry_n_3}),
        .CYINIT(p_0_out__1),
        .DI({\disparity_reg_n_0_[4] ,\disparity_reg_n_0_[3] ,\disparity_reg_n_0_[2] ,\disparity_reg_n_0_[1] }),
        .O({disparity0_carry_n_4,disparity0_carry_n_5,disparity0_carry_n_6,disparity0_carry_n_7}),
        .S({disparity0_carry_i_2_n_0,disparity0_carry_i_3_n_0,disparity0_carry_i_4_n_0,disparity0_carry_i_5_n_0}));
  CARRY4 disparity0_carry__0
       (.CI(disparity0_carry_n_0),
        .CO(NLW_disparity0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_disparity0_carry__0_O_UNCONNECTED[3:1],disparity0_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,disparity0_carry__0_i_1_n_0}));
  LUT4 #(
    .INIT(16'hA956)) 
    disparity0_carry__0_i_1
       (.I0(\disparity_reg_n_0_[5] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    disparity0_carry_i_1__1
       (.I0(p_1_in),
        .O(p_0_out__1));
  LUT4 #(
    .INIT(16'h6996)) 
    disparity0_carry_i_2
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    disparity0_carry_i_3
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .I2(p_1_in),
        .O(disparity0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_4
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_1_in),
        .O(disparity0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_5
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(p_1_in),
        .O(disparity0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAA288200002882)) 
    \disparity[1]_i_1 
       (.I0(de_q),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[1]_i_2_n_0 ),
        .I3(disparity1),
        .I4(disparity13_out),
        .I5(disparity0_carry_n_7),
        .O(\disparity[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2 
       (.I0(p_1_in),
        .I1(p_0_in[1]),
        .O(\disparity[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[2]_i_1 
       (.I0(de_q),
        .I1(\disparity[2]_i_2_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_6),
        .O(\disparity[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4BB42DD287781EE1)) 
    \disparity[2]_i_2 
       (.I0(disparity1),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(p_0_in[2]),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[3]_i_1__1 
       (.I0(de_q),
        .I1(\disparity[3]_i_2__1_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_5),
        .O(\disparity[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h748B748BB84747B8)) 
    \disparity[3]_i_2__1 
       (.I0(\disparity[3]_i_3_n_0 ),
        .I1(disparity1),
        .I2(\disparity[3]_i_4_n_0 ),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(p_0_in[2]),
        .O(\disparity[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h9F999909)) 
    \disparity[3]_i_3 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF9999990)) 
    \disparity[3]_i_4 
       (.I0(p_0_in[2]),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[3]_i_5__1 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .O(\disparity[3]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[4]_i_1__1 
       (.I0(de_q),
        .I1(\disparity[4]_i_2__1_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_4),
        .O(\disparity[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h909F6F609F90606F)) 
    \disparity[4]_i_2__1 
       (.I0(\disparity[5]_i_8__1_n_0 ),
        .I1(\disparity[4]_i_3_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_6__1_n_0 ),
        .I4(\disparity[4]_i_4__1_n_0 ),
        .I5(\disparity[4]_i_5_n_0 ),
        .O(\disparity[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \disparity[4]_i_3 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(\disparity[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \disparity[4]_i_4__1 
       (.I0(p_0_in[3]),
        .I1(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[4]_i_5 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .O(\disparity[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \disparity[5]_i_1__1 
       (.I0(de_q),
        .I1(\disparity[5]_i_2__1_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_4__1_n_0 ),
        .I4(disparity13_out),
        .I5(disparity0_carry__0_n_7),
        .O(\disparity[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h15EA7F807F80EA15)) 
    \disparity[5]_i_2__1 
       (.I0(\disparity[5]_i_6__1_n_0 ),
        .I1(p_0_in[3]),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[5] ),
        .I4(\disparity_reg_n_0_[4] ),
        .I5(p_0_in[4]),
        .O(\disparity[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0FFF0F0E000)) 
    \disparity[5]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\disparity[5]_i_7_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\disparity_reg_n_0_[5] ),
        .O(disparity1));
  LUT6 #(
    .INIT(64'hE178F05A87E1A5F0)) 
    \disparity[5]_i_4__1 
       (.I0(\disparity[5]_i_8__1_n_0 ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[5] ),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(\disparity_reg_n_0_[4] ),
        .O(\disparity[5]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \disparity[5]_i_5 
       (.I0(disparity22_in),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .O(disparity13_out));
  LUT6 #(
    .INIT(64'hFEEAEAEAEAEAEAA8)) 
    \disparity[5]_i_6__1 
       (.I0(\disparity[3]_i_5__1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \disparity[5]_i_7 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(\disparity[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A220BAA2A2A2)) 
    \disparity[5]_i_8__1 
       (.I0(\disparity[3]_i_5__1_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \disparity[5]_i_9 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[4] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(disparity22_in));
  FDCE \disparity_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\disparity[1]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ));
  FDCE \disparity_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\disparity[2]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ));
  FDCE \disparity_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\disparity[3]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[3] ));
  FDCE \disparity_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\disparity[4]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[4] ));
  FDCE \disparity_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\disparity[5]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    \frames_displayed[15]_i_3 
       (.I0(rst_n),
        .O(rst_n_0));
  FDCE \ones_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ones_q_reg[3]_0 [0]),
        .Q(p_0_in[1]));
  FDCE \ones_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ones_q_reg[3]_0 [1]),
        .Q(p_0_in[2]));
  FDCE \ones_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ones_q_reg[3]_0 [2]),
        .Q(p_0_in[3]));
  FDCE \ones_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\ones_q_reg[3]_0 [3]),
        .Q(p_0_in[4]));
  FDCE \qm_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[0]),
        .Q(\qm_q_reg_n_0_[0] ));
  FDCE \qm_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[1]),
        .Q(\qm_q_reg_n_0_[1] ));
  FDCE \qm_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[2]),
        .Q(\qm_q_reg_n_0_[2] ));
  FDCE \qm_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[3]),
        .Q(\qm_q_reg_n_0_[3] ));
  FDCE \qm_q_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[4]),
        .Q(\qm_q_reg_n_0_[4] ));
  FDCE \qm_q_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[5]),
        .Q(\qm_q_reg_n_0_[5] ));
  FDCE \qm_q_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[6]),
        .Q(\qm_q_reg_n_0_[6] ));
  FDCE \qm_q_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[7]),
        .Q(\qm_q_reg_n_0_[7] ));
  FDCE \qm_q_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(D[8]),
        .Q(p_1_in));
  LUT6 #(
    .INIT(64'h8B74FFFF8B740000)) 
    \symbol[0]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[0] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B74FFFF8B740000)) 
    \symbol[1]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[1] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B7400008B74FFFF)) 
    \symbol[2]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[2] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B74FFFF8B740000)) 
    \symbol[3]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[3] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B7400008B74FFFF)) 
    \symbol[4]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[4] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B74FFFF8B740000)) 
    \symbol[5]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[5] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B7400008B74FFFF)) 
    \symbol[6]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[6] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B74FFFF8B740000)) 
    \symbol[7]_i_1 
       (.I0(p_1_in),
        .I1(disparity13_out),
        .I2(disparity1),
        .I3(\qm_q_reg_n_0_[7] ),
        .I4(de_q),
        .I5(c0_q),
        .O(\symbol[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \symbol[8]_i_1 
       (.I0(p_1_in),
        .I1(de_q),
        .I2(c0_q),
        .O(\symbol[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h09F9F9F909F90909)) 
    \symbol[9]_i_1__1 
       (.I0(c0_q),
        .I1(c1_q),
        .I2(de_q),
        .I3(p_1_in),
        .I4(disparity13_out),
        .I5(disparity1),
        .O(\symbol[9]_i_1__1_n_0 ));
  FDCE \symbol_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\symbol[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \symbol_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\symbol[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDPE \symbol_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[2]_i_1_n_0 ),
        .PRE(rst_n_0),
        .Q(Q[2]));
  FDCE \symbol_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\symbol[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDPE \symbol_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[4]_i_1_n_0 ),
        .PRE(rst_n_0),
        .Q(Q[4]));
  FDCE \symbol_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\symbol[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDPE \symbol_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[6]_i_1_n_0 ),
        .PRE(rst_n_0),
        .Q(Q[6]));
  FDCE \symbol_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\symbol[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDPE \symbol_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[8]_i_1_n_0 ),
        .PRE(rst_n_0),
        .Q(Q[8]));
  FDPE \symbol_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[9]_i_1__1_n_0 ),
        .PRE(rst_n_0),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "tx2_tmds_encoder" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2
   (Q,
    de_q,
    \qm_q_reg[8]_0 ,
    pixel_clk,
    \symbol_reg[0]_0 ,
    \ones_q_reg[3]_0 );
  output [9:0]Q;
  input de_q;
  input [8:0]\qm_q_reg[8]_0 ;
  input pixel_clk;
  input \symbol_reg[0]_0 ;
  input [3:0]\ones_q_reg[3]_0 ;

  wire [9:0]Q;
  wire de_q;
  wire disparity0_carry__0_i_1__0_n_0;
  wire disparity0_carry__0_n_7;
  wire disparity0_carry_i_2__0_n_0;
  wire disparity0_carry_i_3__0_n_0;
  wire disparity0_carry_i_4__0_n_0;
  wire disparity0_carry_i_5__0_n_0;
  wire disparity0_carry_n_0;
  wire disparity0_carry_n_1;
  wire disparity0_carry_n_2;
  wire disparity0_carry_n_3;
  wire disparity0_carry_n_4;
  wire disparity0_carry_n_5;
  wire disparity0_carry_n_6;
  wire disparity0_carry_n_7;
  wire disparity1;
  wire disparity13_out;
  wire disparity22_in;
  wire \disparity[1]_i_1__0_n_0 ;
  wire \disparity[1]_i_2__0_n_0 ;
  wire \disparity[2]_i_1__0_n_0 ;
  wire \disparity[2]_i_2__0_n_0 ;
  wire \disparity[3]_i_1__0_n_0 ;
  wire \disparity[3]_i_2__0_n_0 ;
  wire \disparity[3]_i_3__0_n_0 ;
  wire \disparity[3]_i_4__0_n_0 ;
  wire \disparity[3]_i_5__0_n_0 ;
  wire \disparity[4]_i_1__0_n_0 ;
  wire \disparity[4]_i_2__0_n_0 ;
  wire \disparity[4]_i_3__0_n_0 ;
  wire \disparity[4]_i_4__0_n_0 ;
  wire \disparity[4]_i_5__0_n_0 ;
  wire \disparity[5]_i_1__0_n_0 ;
  wire \disparity[5]_i_2__0_n_0 ;
  wire \disparity[5]_i_4__0_n_0 ;
  wire \disparity[5]_i_6__0_n_0 ;
  wire \disparity[5]_i_7__0_n_0 ;
  wire \disparity[5]_i_8__0_n_0 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire \disparity_reg_n_0_[5] ;
  wire [3:0]\ones_q_reg[3]_0 ;
  wire [4:1]p_0_in;
  wire p_0_out__0;
  wire p_1_in;
  wire pixel_clk;
  wire [8:0]\qm_q_reg[8]_0 ;
  wire \qm_q_reg_n_0_[0] ;
  wire \qm_q_reg_n_0_[1] ;
  wire \qm_q_reg_n_0_[2] ;
  wire \qm_q_reg_n_0_[3] ;
  wire \qm_q_reg_n_0_[4] ;
  wire \qm_q_reg_n_0_[5] ;
  wire \qm_q_reg_n_0_[6] ;
  wire \qm_q_reg_n_0_[7] ;
  wire \symbol[0]_i_1__0_n_0 ;
  wire \symbol[1]_i_1__0_n_0 ;
  wire \symbol[2]_i_1__0_n_0 ;
  wire \symbol[3]_i_1__0_n_0 ;
  wire \symbol[4]_i_1__0_n_0 ;
  wire \symbol[5]_i_1__0_n_0 ;
  wire \symbol[6]_i_1__0_n_0 ;
  wire \symbol[7]_i_1__0_n_0 ;
  wire \symbol[8]_i_1__0_n_0 ;
  wire \symbol[9]_i_1__0_n_0 ;
  wire \symbol_reg[0]_0 ;
  wire [3:0]NLW_disparity0_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_disparity0_carry__0_O_UNCONNECTED;

  CARRY4 disparity0_carry
       (.CI(1'b0),
        .CO({disparity0_carry_n_0,disparity0_carry_n_1,disparity0_carry_n_2,disparity0_carry_n_3}),
        .CYINIT(p_0_out__0),
        .DI({\disparity_reg_n_0_[4] ,\disparity_reg_n_0_[3] ,\disparity_reg_n_0_[2] ,\disparity_reg_n_0_[1] }),
        .O({disparity0_carry_n_4,disparity0_carry_n_5,disparity0_carry_n_6,disparity0_carry_n_7}),
        .S({disparity0_carry_i_2__0_n_0,disparity0_carry_i_3__0_n_0,disparity0_carry_i_4__0_n_0,disparity0_carry_i_5__0_n_0}));
  CARRY4 disparity0_carry__0
       (.CI(disparity0_carry_n_0),
        .CO(NLW_disparity0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_disparity0_carry__0_O_UNCONNECTED[3:1],disparity0_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,disparity0_carry__0_i_1__0_n_0}));
  LUT4 #(
    .INIT(16'hA956)) 
    disparity0_carry__0_i_1__0
       (.I0(\disparity_reg_n_0_[5] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    disparity0_carry_i_1__0
       (.I0(p_1_in),
        .O(p_0_out__0));
  LUT4 #(
    .INIT(16'h6996)) 
    disparity0_carry_i_2__0
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    disparity0_carry_i_3__0
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .I2(p_1_in),
        .O(disparity0_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_4__0
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_1_in),
        .O(disparity0_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_5__0
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(p_1_in),
        .O(disparity0_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hAAAA288200002882)) 
    \disparity[1]_i_1__0 
       (.I0(de_q),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[1]_i_2__0_n_0 ),
        .I3(disparity1),
        .I4(disparity13_out),
        .I5(disparity0_carry_n_7),
        .O(\disparity[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2__0 
       (.I0(p_1_in),
        .I1(p_0_in[1]),
        .O(\disparity[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[2]_i_1__0 
       (.I0(de_q),
        .I1(\disparity[2]_i_2__0_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_6),
        .O(\disparity[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4BB42DD287781EE1)) 
    \disparity[2]_i_2__0 
       (.I0(disparity1),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(p_0_in[2]),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[3]_i_1__0 
       (.I0(de_q),
        .I1(\disparity[3]_i_2__0_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_5),
        .O(\disparity[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h748B748BB84747B8)) 
    \disparity[3]_i_2__0 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(disparity1),
        .I2(\disparity[3]_i_4__0_n_0 ),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(p_0_in[2]),
        .O(\disparity[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h9F999909)) 
    \disparity[3]_i_3__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF9999990)) 
    \disparity[3]_i_4__0 
       (.I0(p_0_in[2]),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[3]_i_5__0 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .O(\disparity[3]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[4]_i_1__0 
       (.I0(de_q),
        .I1(\disparity[4]_i_2__0_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_4),
        .O(\disparity[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h909F6F609F90606F)) 
    \disparity[4]_i_2__0 
       (.I0(\disparity[5]_i_8__0_n_0 ),
        .I1(\disparity[4]_i_3__0_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_6__0_n_0 ),
        .I4(\disparity[4]_i_4__0_n_0 ),
        .I5(\disparity[4]_i_5__0_n_0 ),
        .O(\disparity[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \disparity[4]_i_3__0 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(\disparity[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \disparity[4]_i_4__0 
       (.I0(p_0_in[3]),
        .I1(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[4]_i_5__0 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .O(\disparity[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \disparity[5]_i_1__0 
       (.I0(de_q),
        .I1(\disparity[5]_i_2__0_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_4__0_n_0 ),
        .I4(disparity13_out),
        .I5(disparity0_carry__0_n_7),
        .O(\disparity[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h15EA7F807F80EA15)) 
    \disparity[5]_i_2__0 
       (.I0(\disparity[5]_i_6__0_n_0 ),
        .I1(p_0_in[3]),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[5] ),
        .I4(\disparity_reg_n_0_[4] ),
        .I5(p_0_in[4]),
        .O(\disparity[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0FFF0F0E000)) 
    \disparity[5]_i_3__0 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\disparity[5]_i_7__0_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\disparity_reg_n_0_[5] ),
        .O(disparity1));
  LUT6 #(
    .INIT(64'hE178F05A87E1A5F0)) 
    \disparity[5]_i_4__0 
       (.I0(\disparity[5]_i_8__0_n_0 ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[5] ),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(\disparity_reg_n_0_[4] ),
        .O(\disparity[5]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \disparity[5]_i_5__0 
       (.I0(disparity22_in),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .O(disparity13_out));
  LUT6 #(
    .INIT(64'hFEEAEAEAEAEAEAA8)) 
    \disparity[5]_i_6__0 
       (.I0(\disparity[3]_i_5__0_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \disparity[5]_i_7__0 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(\disparity[5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A220BAA2A2A2)) 
    \disparity[5]_i_8__0 
       (.I0(\disparity[3]_i_5__0_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \disparity[5]_i_9__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[4] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(disparity22_in));
  FDCE \disparity_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[1]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[1] ));
  FDCE \disparity_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[2]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[2] ));
  FDCE \disparity_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[3]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[3] ));
  FDCE \disparity_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[4]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[4] ));
  FDCE \disparity_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[5]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[5] ));
  FDCE \ones_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [0]),
        .Q(p_0_in[1]));
  FDCE \ones_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [1]),
        .Q(p_0_in[2]));
  FDCE \ones_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [2]),
        .Q(p_0_in[3]));
  FDCE \ones_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [3]),
        .Q(p_0_in[4]));
  FDCE \qm_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [0]),
        .Q(\qm_q_reg_n_0_[0] ));
  FDCE \qm_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [1]),
        .Q(\qm_q_reg_n_0_[1] ));
  FDCE \qm_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [2]),
        .Q(\qm_q_reg_n_0_[2] ));
  FDCE \qm_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [3]),
        .Q(\qm_q_reg_n_0_[3] ));
  FDCE \qm_q_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [4]),
        .Q(\qm_q_reg_n_0_[4] ));
  FDCE \qm_q_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [5]),
        .Q(\qm_q_reg_n_0_[5] ));
  FDCE \qm_q_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [6]),
        .Q(\qm_q_reg_n_0_[6] ));
  FDCE \qm_q_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [7]),
        .Q(\qm_q_reg_n_0_[7] ));
  FDCE \qm_q_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [8]),
        .Q(p_1_in));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[0]_i_1__0 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[0] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[1]_i_1__0 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[1] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[2]_i_1__0 
       (.I0(\qm_q_reg_n_0_[2] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[3]_i_1__0 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[3] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[4]_i_1__0 
       (.I0(\qm_q_reg_n_0_[4] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[5]_i_1__0 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[5] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[6]_i_1__0 
       (.I0(\qm_q_reg_n_0_[6] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[7]_i_1__0 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[7] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \symbol[8]_i_1__0 
       (.I0(p_1_in),
        .I1(de_q),
        .O(\symbol[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2EFF)) 
    \symbol[9]_i_1__0 
       (.I0(disparity1),
        .I1(disparity13_out),
        .I2(p_1_in),
        .I3(de_q),
        .O(\symbol[9]_i_1__0_n_0 ));
  FDCE \symbol_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \symbol_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDPE \symbol_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[2]_i_1__0_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[2]));
  FDCE \symbol_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDPE \symbol_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[4]_i_1__0_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[4]));
  FDCE \symbol_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDPE \symbol_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[6]_i_1__0_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[6]));
  FDCE \symbol_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[7]_i_1__0_n_0 ),
        .Q(Q[7]));
  FDPE \symbol_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[8]_i_1__0_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[8]));
  FDPE \symbol_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[9]_i_1__0_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "tx2_tmds_encoder" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4
   (Q,
    de_q,
    \qm_q_reg[8]_0 ,
    pixel_clk,
    \symbol_reg[0]_0 ,
    \ones_q_reg[3]_0 );
  output [9:0]Q;
  input de_q;
  input [8:0]\qm_q_reg[8]_0 ;
  input pixel_clk;
  input \symbol_reg[0]_0 ;
  input [3:0]\ones_q_reg[3]_0 ;

  wire [9:0]Q;
  wire de_q;
  wire disparity0_carry__0_i_1__1_n_0;
  wire disparity0_carry__0_n_7;
  wire disparity0_carry_i_2__1_n_0;
  wire disparity0_carry_i_3__1_n_0;
  wire disparity0_carry_i_4__1_n_0;
  wire disparity0_carry_i_5__1_n_0;
  wire disparity0_carry_n_0;
  wire disparity0_carry_n_1;
  wire disparity0_carry_n_2;
  wire disparity0_carry_n_3;
  wire disparity0_carry_n_4;
  wire disparity0_carry_n_5;
  wire disparity0_carry_n_6;
  wire disparity0_carry_n_7;
  wire disparity1;
  wire disparity13_out;
  wire disparity22_in;
  wire \disparity[1]_i_1__1_n_0 ;
  wire \disparity[1]_i_2__1_n_0 ;
  wire \disparity[2]_i_1__1_n_0 ;
  wire \disparity[2]_i_2__1_n_0 ;
  wire \disparity[3]_i_1_n_0 ;
  wire \disparity[3]_i_2_n_0 ;
  wire \disparity[3]_i_3__1_n_0 ;
  wire \disparity[3]_i_4__1_n_0 ;
  wire \disparity[3]_i_5_n_0 ;
  wire \disparity[4]_i_1_n_0 ;
  wire \disparity[4]_i_2_n_0 ;
  wire \disparity[4]_i_3__1_n_0 ;
  wire \disparity[4]_i_4_n_0 ;
  wire \disparity[4]_i_5__1_n_0 ;
  wire \disparity[5]_i_1_n_0 ;
  wire \disparity[5]_i_2_n_0 ;
  wire \disparity[5]_i_4_n_0 ;
  wire \disparity[5]_i_6_n_0 ;
  wire \disparity[5]_i_7__1_n_0 ;
  wire \disparity[5]_i_8_n_0 ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \disparity_reg_n_0_[3] ;
  wire \disparity_reg_n_0_[4] ;
  wire \disparity_reg_n_0_[5] ;
  wire [3:0]\ones_q_reg[3]_0 ;
  wire [4:1]p_0_in;
  wire p_0_out;
  wire p_1_in;
  wire pixel_clk;
  wire [8:0]\qm_q_reg[8]_0 ;
  wire \qm_q_reg_n_0_[0] ;
  wire \qm_q_reg_n_0_[1] ;
  wire \qm_q_reg_n_0_[2] ;
  wire \qm_q_reg_n_0_[3] ;
  wire \qm_q_reg_n_0_[4] ;
  wire \qm_q_reg_n_0_[5] ;
  wire \qm_q_reg_n_0_[6] ;
  wire \qm_q_reg_n_0_[7] ;
  wire \symbol[0]_i_1__1_n_0 ;
  wire \symbol[1]_i_1__1_n_0 ;
  wire \symbol[2]_i_1__1_n_0 ;
  wire \symbol[3]_i_1__1_n_0 ;
  wire \symbol[4]_i_1__1_n_0 ;
  wire \symbol[5]_i_1__1_n_0 ;
  wire \symbol[6]_i_1__1_n_0 ;
  wire \symbol[7]_i_1__1_n_0 ;
  wire \symbol[8]_i_1__1_n_0 ;
  wire \symbol[9]_i_1_n_0 ;
  wire \symbol_reg[0]_0 ;
  wire [3:0]NLW_disparity0_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_disparity0_carry__0_O_UNCONNECTED;

  CARRY4 disparity0_carry
       (.CI(1'b0),
        .CO({disparity0_carry_n_0,disparity0_carry_n_1,disparity0_carry_n_2,disparity0_carry_n_3}),
        .CYINIT(p_0_out),
        .DI({\disparity_reg_n_0_[4] ,\disparity_reg_n_0_[3] ,\disparity_reg_n_0_[2] ,\disparity_reg_n_0_[1] }),
        .O({disparity0_carry_n_4,disparity0_carry_n_5,disparity0_carry_n_6,disparity0_carry_n_7}),
        .S({disparity0_carry_i_2__1_n_0,disparity0_carry_i_3__1_n_0,disparity0_carry_i_4__1_n_0,disparity0_carry_i_5__1_n_0}));
  CARRY4 disparity0_carry__0
       (.CI(disparity0_carry_n_0),
        .CO(NLW_disparity0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_disparity0_carry__0_O_UNCONNECTED[3:1],disparity0_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,disparity0_carry__0_i_1__1_n_0}));
  LUT4 #(
    .INIT(16'hA956)) 
    disparity0_carry__0_i_1__1
       (.I0(\disparity_reg_n_0_[5] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    disparity0_carry_i_1
       (.I0(p_1_in),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'h6996)) 
    disparity0_carry_i_2__1
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[4]),
        .I3(p_1_in),
        .O(disparity0_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    disparity0_carry_i_3__1
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .I2(p_1_in),
        .O(disparity0_carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_4__1
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_1_in),
        .O(disparity0_carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    disparity0_carry_i_5__1
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(p_1_in),
        .O(disparity0_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'hAAAA288200002882)) 
    \disparity[1]_i_1__1 
       (.I0(de_q),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[1]_i_2__1_n_0 ),
        .I3(disparity1),
        .I4(disparity13_out),
        .I5(disparity0_carry_n_7),
        .O(\disparity[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2__1 
       (.I0(p_1_in),
        .I1(p_0_in[1]),
        .O(\disparity[1]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[2]_i_1__1 
       (.I0(de_q),
        .I1(\disparity[2]_i_2__1_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_6),
        .O(\disparity[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4BB42DD287781EE1)) 
    \disparity[2]_i_2__1 
       (.I0(disparity1),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(p_0_in[2]),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[2]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[3]_i_1 
       (.I0(de_q),
        .I1(\disparity[3]_i_2_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_5),
        .O(\disparity[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h748B748BB84747B8)) 
    \disparity[3]_i_2 
       (.I0(\disparity[3]_i_3__1_n_0 ),
        .I1(disparity1),
        .I2(\disparity[3]_i_4__1_n_0 ),
        .I3(\disparity[3]_i_5_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(p_0_in[2]),
        .O(\disparity[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h9F999909)) 
    \disparity[3]_i_3__1 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF9999990)) 
    \disparity[3]_i_4__1 
       (.I0(p_0_in[2]),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(p_0_in[1]),
        .I3(p_1_in),
        .I4(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[3]_i_5 
       (.I0(\disparity_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .O(\disparity[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \disparity[4]_i_1 
       (.I0(de_q),
        .I1(\disparity[4]_i_2_n_0 ),
        .I2(disparity13_out),
        .I3(disparity0_carry_n_4),
        .O(\disparity[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h909F6F609F90606F)) 
    \disparity[4]_i_2 
       (.I0(\disparity[5]_i_8_n_0 ),
        .I1(\disparity[4]_i_3__1_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_6_n_0 ),
        .I4(\disparity[4]_i_4_n_0 ),
        .I5(\disparity[4]_i_5__1_n_0 ),
        .O(\disparity[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \disparity[4]_i_3__1 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(\disparity[4]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \disparity[4]_i_4 
       (.I0(p_0_in[3]),
        .I1(\disparity_reg_n_0_[3] ),
        .O(\disparity[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[4]_i_5__1 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .O(\disparity[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \disparity[5]_i_1 
       (.I0(de_q),
        .I1(\disparity[5]_i_2_n_0 ),
        .I2(disparity1),
        .I3(\disparity[5]_i_4_n_0 ),
        .I4(disparity13_out),
        .I5(disparity0_carry__0_n_7),
        .O(\disparity[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15EA7F807F80EA15)) 
    \disparity[5]_i_2 
       (.I0(\disparity[5]_i_6_n_0 ),
        .I1(p_0_in[3]),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[5] ),
        .I4(\disparity_reg_n_0_[4] ),
        .I5(p_0_in[4]),
        .O(\disparity[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0FFF0F0E000)) 
    \disparity[5]_i_3__1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\disparity[5]_i_7__1_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(\disparity_reg_n_0_[5] ),
        .O(disparity1));
  LUT6 #(
    .INIT(64'hE178F05A87E1A5F0)) 
    \disparity[5]_i_4 
       (.I0(\disparity[5]_i_8_n_0 ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[5] ),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(\disparity_reg_n_0_[4] ),
        .O(\disparity[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \disparity[5]_i_5__1 
       (.I0(disparity22_in),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[4]),
        .O(disparity13_out));
  LUT6 #(
    .INIT(64'hFEEAEAEAEAEAEAA8)) 
    \disparity[5]_i_6 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \disparity[5]_i_7__1 
       (.I0(\disparity_reg_n_0_[4] ),
        .I1(\disparity_reg_n_0_[3] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(\disparity[5]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A220BAA2A2A2)) 
    \disparity[5]_i_8 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(p_0_in[2]),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(p_0_in[1]),
        .O(\disparity[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \disparity[5]_i_9__1 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[3] ),
        .I3(\disparity_reg_n_0_[4] ),
        .I4(\disparity_reg_n_0_[5] ),
        .O(disparity22_in));
  FDCE \disparity_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[1]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ));
  FDCE \disparity_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[2]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ));
  FDCE \disparity_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[3]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[3] ));
  FDCE \disparity_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[4]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[4] ));
  FDCE \disparity_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\disparity[5]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[5] ));
  FDCE \ones_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [0]),
        .Q(p_0_in[1]));
  FDCE \ones_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [1]),
        .Q(p_0_in[2]));
  FDCE \ones_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [2]),
        .Q(p_0_in[3]));
  FDCE \ones_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\ones_q_reg[3]_0 [3]),
        .Q(p_0_in[4]));
  FDCE \qm_q_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [0]),
        .Q(\qm_q_reg_n_0_[0] ));
  FDCE \qm_q_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [1]),
        .Q(\qm_q_reg_n_0_[1] ));
  FDCE \qm_q_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [2]),
        .Q(\qm_q_reg_n_0_[2] ));
  FDCE \qm_q_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [3]),
        .Q(\qm_q_reg_n_0_[3] ));
  FDCE \qm_q_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [4]),
        .Q(\qm_q_reg_n_0_[4] ));
  FDCE \qm_q_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [5]),
        .Q(\qm_q_reg_n_0_[5] ));
  FDCE \qm_q_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [6]),
        .Q(\qm_q_reg_n_0_[6] ));
  FDCE \qm_q_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [7]),
        .Q(\qm_q_reg_n_0_[7] ));
  FDCE \qm_q_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\qm_q_reg[8]_0 [8]),
        .Q(p_1_in));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[0]_i_1__1 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[0] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[1]_i_1__1 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[1] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[2]_i_1__1 
       (.I0(\qm_q_reg_n_0_[2] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[3]_i_1__1 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[3] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[4]_i_1__1 
       (.I0(\qm_q_reg_n_0_[4] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[5]_i_1__1 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[5] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \symbol[6]_i_1__1 
       (.I0(\qm_q_reg_n_0_[6] ),
        .I1(disparity1),
        .I2(disparity13_out),
        .I3(p_1_in),
        .I4(de_q),
        .O(\symbol[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \symbol[7]_i_1__1 
       (.I0(de_q),
        .I1(\qm_q_reg_n_0_[7] ),
        .I2(disparity1),
        .I3(disparity13_out),
        .I4(p_1_in),
        .O(\symbol[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \symbol[8]_i_1__1 
       (.I0(p_1_in),
        .I1(de_q),
        .O(\symbol[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2EFF)) 
    \symbol[9]_i_1 
       (.I0(disparity1),
        .I1(disparity13_out),
        .I2(p_1_in),
        .I3(de_q),
        .O(\symbol[9]_i_1_n_0 ));
  FDCE \symbol_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \symbol_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDPE \symbol_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[2]_i_1__1_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[2]));
  FDCE \symbol_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDPE \symbol_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[4]_i_1__1_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[4]));
  FDCE \symbol_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDPE \symbol_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[6]_i_1__1_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[6]));
  FDCE \symbol_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(\symbol_reg[0]_0 ),
        .D(\symbol[7]_i_1__1_n_0 ),
        .Q(Q[7]));
  FDPE \symbol_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[8]_i_1__1_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[8]));
  FDPE \symbol_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\symbol[9]_i_1_n_0 ),
        .PRE(\symbol_reg[0]_0 ),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "tx2_video_out" *) 
module facebox_system_tx2_axis_sink_0_0_tx2_video_out
   (rst_n_0,
    tmds_data_p,
    tmds_data_n,
    tmds_clk_p,
    tmds_clk_n,
    serial_clk,
    pixel_clk,
    status_de,
    status_hs,
    status_vs,
    rst_n,
    D,
    \ones_q_reg[3] ,
    \qm_q_reg[8] ,
    \ones_q_reg[3]_0 ,
    \qm_q_reg[8]_0 ,
    \ones_q_reg[3]_1 );
  output rst_n_0;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_clk_p;
  output tmds_clk_n;
  input serial_clk;
  input pixel_clk;
  input status_de;
  input status_hs;
  input status_vs;
  input rst_n;
  input [8:0]D;
  input [3:0]\ones_q_reg[3] ;
  input [8:0]\qm_q_reg[8] ;
  input [3:0]\ones_q_reg[3]_0 ;
  input [8:0]\qm_q_reg[8]_0 ;
  input [3:0]\ones_q_reg[3]_1 ;

  wire [8:0]D;
  wire [9:0]blue_word;
  wire de_q;
  wire [9:0]green_word;
  wire [3:0]\ones_q_reg[3] ;
  wire [3:0]\ones_q_reg[3]_0 ;
  wire [3:0]\ones_q_reg[3]_1 ;
  wire pixel_clk;
  wire [8:0]\qm_q_reg[8] ;
  wire [8:0]\qm_q_reg[8]_0 ;
  wire [9:0]red_word;
  wire rst_n;
  wire rst_n_0;
  wire serial_clk;
  wire status_de;
  wire status_hs;
  wire status_vs;
  wire tmds_clk_n;
  wire tmds_clk_p;
  wire [2:0]tmds_data_n;
  wire [2:0]tmds_data_p;

  facebox_system_tx2_axis_sink_0_0_tx2_serializer u_b
       (.Q(blue_word),
        .pixel_clk(pixel_clk),
        .serial_clk(serial_clk),
        .\serial_release_reg[1]_0 (rst_n_0),
        .tmds_data_n(tmds_data_n[0]),
        .tmds_data_p(tmds_data_p[0]));
  facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder u_blue
       (.D(D),
        .Q(blue_word),
        .de_q(de_q),
        .\ones_q_reg[3]_0 (\ones_q_reg[3] ),
        .pixel_clk(pixel_clk),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .status_de(status_de),
        .status_hs(status_hs),
        .status_vs(status_vs));
  facebox_system_tx2_axis_sink_0_0_tx2_serializer_0 u_c
       (.pixel_clk(pixel_clk),
        .serial_clk(serial_clk),
        .\serial_release_reg[1]_0 (rst_n_0),
        .tmds_clk_n(tmds_clk_n),
        .tmds_clk_p(tmds_clk_p));
  facebox_system_tx2_axis_sink_0_0_tx2_serializer_1 u_g
       (.Q(green_word),
        .pixel_clk(pixel_clk),
        .serial_clk(serial_clk),
        .\serial_release_reg[1]_0 (rst_n_0),
        .tmds_data_n(tmds_data_n[1]),
        .tmds_data_p(tmds_data_p[1]));
  facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_2 u_green
       (.Q(green_word),
        .de_q(de_q),
        .\ones_q_reg[3]_0 (\ones_q_reg[3]_0 ),
        .pixel_clk(pixel_clk),
        .\qm_q_reg[8]_0 (\qm_q_reg[8] ),
        .\symbol_reg[0]_0 (rst_n_0));
  facebox_system_tx2_axis_sink_0_0_tx2_serializer_3 u_r
       (.Q(red_word),
        .pixel_clk(pixel_clk),
        .serial_clk(serial_clk),
        .\serial_release_reg[1]_0 (rst_n_0),
        .tmds_data_n(tmds_data_n[2]),
        .tmds_data_p(tmds_data_p[2]));
  facebox_system_tx2_axis_sink_0_0_tx2_tmds_encoder_4 u_red
       (.Q(red_word),
        .de_q(de_q),
        .\ones_q_reg[3]_0 (\ones_q_reg[3]_1 ),
        .pixel_clk(pixel_clk),
        .\qm_q_reg[8]_0 (\qm_q_reg[8]_0 ),
        .\symbol_reg[0]_0 (rst_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
