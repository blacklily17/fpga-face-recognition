// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:20:35 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_real_camera_source_0_0/facebox_system_real_camera_source_0_0_sim_netlist.v
// Design      : facebox_system_real_camera_source_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_real_camera_source_0_0,real_camera_wp2_wp3_axis_source,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "real_camera_wp2_wp3_axis_source,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_real_camera_source_0_0
   (sys_clk50,
    sys_rst_n,
    xclk24,
    cam_xclk,
    cam_scl,
    cam_sda,
    cam_pclk,
    cam_vsync,
    cam_href,
    cam_data,
    aclk,
    aresetn,
    capture_enable,
    sleep_request,
    sleep_status,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    status,
    gray_tap_valid,
    gray_tap_data,
    gray_tap_sof,
    gray_tap_eol,
    gray_tap_abort,
    gray_tap_commit,
    gray_tap_frame_id,
    gray_tap_resetn,
    gray_tap_source_id,
    gray_tap_verdict_source_id,
    gray_tap_verdict_valid,
    gray_tap_verdict_good,
    gray_tap_provenance_fault);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk50 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk50, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /camera_clk_wiz_clk_out1, INSERT_VIP 0" *) input sys_clk50;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  input xclk24;
  output cam_xclk;
  output cam_scl;
  inout cam_sda;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN facebox_system_cam_pclk_0, INSERT_VIP 0" *) input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input capture_enable;
  input sleep_request;
  output [31:0]sleep_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  output [31:0]status;
  output gray_tap_valid;
  output [7:0]gray_tap_data;
  output gray_tap_sof;
  output gray_tap_eol;
  output gray_tap_abort;
  output gray_tap_commit;
  output [31:0]gray_tap_frame_id;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 gray_tap_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gray_tap_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output gray_tap_resetn;
  output [31:0]gray_tap_source_id;
  output [31:0]gray_tap_verdict_source_id;
  output gray_tap_verdict_valid;
  output gray_tap_verdict_good;
  output gray_tap_provenance_fault;

  wire aclk;
  wire aresetn;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire cam_sda;
  wire cam_vsync;
  wire cam_xclk;
  wire capture_enable;
  wire gray_tap_abort;
  wire gray_tap_commit;
  wire [7:0]gray_tap_data;
  wire gray_tap_eol;
  wire [31:0]gray_tap_frame_id;
  wire gray_tap_provenance_fault;
  wire gray_tap_resetn;
  wire gray_tap_sof;
  wire [31:0]gray_tap_source_id;
  wire gray_tap_valid;
  wire gray_tap_verdict_good;
  wire [31:0]gray_tap_verdict_source_id;
  wire gray_tap_verdict_valid;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire sleep_request;
  wire [31:0]sleep_status;
  wire [31:0]status;
  wire sys_clk50;
  wire sys_rst_n;
  wire xclk24;

  facebox_system_real_camera_source_0_0_real_camera_wp2_wp3_axis_source inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .capture_enable(capture_enable),
        .gray_tap_abort(gray_tap_abort),
        .gray_tap_commit(gray_tap_commit),
        .gray_tap_data(gray_tap_data),
        .gray_tap_eol(gray_tap_eol),
        .gray_tap_frame_id(gray_tap_frame_id),
        .gray_tap_provenance_fault(gray_tap_provenance_fault),
        .gray_tap_resetn(gray_tap_resetn),
        .gray_tap_sof(gray_tap_sof),
        .gray_tap_source_id(gray_tap_source_id),
        .gray_tap_valid(gray_tap_valid),
        .gray_tap_verdict_good(gray_tap_verdict_good),
        .gray_tap_verdict_source_id(gray_tap_verdict_source_id),
        .gray_tap_verdict_valid(gray_tap_verdict_valid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .sleep_request(sleep_request),
        .sleep_status(sleep_status),
        .status(status),
        .sys_clk50(sys_clk50),
        .sys_rst_n(sys_rst_n),
        .xclk24(xclk24));
endmodule

(* ORIG_REF_NAME = "axis_data_fifo_v2_0_0_top" *) 
module facebox_system_real_camera_source_0_0_axis_data_fifo_v2_0_0_top
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    prog_full,
    s_axis_aresetn,
    s_axis_aclk,
    m_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready);
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output [32:0]m_axis_tuser;
  output prog_full;
  input s_axis_aresetn;
  input s_axis_aclk;
  input m_axis_aclk;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input s_axis_tlast;
  input [32:0]s_axis_tuser;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_10 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_11 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_13 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_14 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_49 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_50 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_51 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_52 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_53 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_54 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_55 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_56 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_57 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_58 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_59 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_60 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_61 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_62 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_63 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_64 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_65 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_66 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_67 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_68 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_69 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_70 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_71 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_72 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_73 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_74 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_75 ;
  wire m_axis_aclk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [32:0]s_axis_tuser;
  wire s_axis_tvalid;

  (* AXIS_DATA_WIDTH = "46" *) 
  (* AXIS_FINAL_DATA_WIDTH = "46" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "independent_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000010" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000010" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "1024" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "10" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "960" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* TDATA_OFFSET = "8" *) 
  (* TDATA_WIDTH = "8" *) 
  (* TDEST_OFFSET = "12" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "11" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "10" *) 
  (* TSTRB_OFFSET = "9" *) 
  (* TUSER_MAX_WIDTH = "4083" *) 
  (* TUSER_OFFSET = "45" *) 
  (* TUSER_WIDTH = "33" *) 
  (* USE_ADV_FEATURES = "825241650" *) 
  (* USE_ADV_FEATURES_INT = "825241650" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_73 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_60 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_75 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(m_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\gen_fifo.xpm_fifo_axis_inst_n_14 ),
        .m_axis_tid(\gen_fifo.xpm_fifo_axis_inst_n_13 ),
        .m_axis_tkeep(\gen_fifo.xpm_fifo_axis_inst_n_11 ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\gen_fifo.xpm_fifo_axis_inst_n_10 ),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_61 ),
        .prog_full_axis(prog_full),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_62 ,\gen_fifo.xpm_fifo_axis_inst_n_63 ,\gen_fifo.xpm_fifo_axis_inst_n_64 ,\gen_fifo.xpm_fifo_axis_inst_n_65 ,\gen_fifo.xpm_fifo_axis_inst_n_66 ,\gen_fifo.xpm_fifo_axis_inst_n_67 ,\gen_fifo.xpm_fifo_axis_inst_n_68 ,\gen_fifo.xpm_fifo_axis_inst_n_69 ,\gen_fifo.xpm_fifo_axis_inst_n_70 ,\gen_fifo.xpm_fifo_axis_inst_n_71 ,\gen_fifo.xpm_fifo_axis_inst_n_72 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_74 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_49 ,\gen_fifo.xpm_fifo_axis_inst_n_50 ,\gen_fifo.xpm_fifo_axis_inst_n_51 ,\gen_fifo.xpm_fifo_axis_inst_n_52 ,\gen_fifo.xpm_fifo_axis_inst_n_53 ,\gen_fifo.xpm_fifo_axis_inst_n_54 ,\gen_fifo.xpm_fifo_axis_inst_n_55 ,\gen_fifo.xpm_fifo_axis_inst_n_56 ,\gen_fifo.xpm_fifo_axis_inst_n_57 ,\gen_fifo.xpm_fifo_axis_inst_n_58 ,\gen_fifo.xpm_fifo_axis_inst_n_59 }));
endmodule

(* ORIG_REF_NAME = "axis_data_fifo_v2_0_0_top" *) 
module facebox_system_real_camera_source_0_0_axis_data_fifo_v2_0_0_top__parameterized0
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    prog_full,
    s_axis_aresetn,
    s_axis_aclk,
    m_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready);
  output s_axis_tready;
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  output prog_full;
  input s_axis_aresetn;
  input s_axis_aclk;
  input m_axis_aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_18 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_19 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_20 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_21 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_23 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_24 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_32 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_33 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_34 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_35 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_36 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_37 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_38 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_39 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_40 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_41 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_42 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_43 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_44 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_45 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_46 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_47 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_48 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_49 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_50 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_51 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_52 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_53 ;
  wire m_axis_aclk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  (* AXIS_DATA_WIDTH = "24" *) 
  (* AXIS_FINAL_DATA_WIDTH = "24" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "independent_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000010" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000010" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "1024" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "10" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "960" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* TDATA_OFFSET = "16" *) 
  (* TDATA_WIDTH = "16" *) 
  (* TDEST_OFFSET = "22" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "21" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "20" *) 
  (* TSTRB_OFFSET = "18" *) 
  (* TUSER_MAX_WIDTH = "4073" *) 
  (* TUSER_OFFSET = "23" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825241650" *) 
  (* USE_ADV_FEATURES_INT = "825241650" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_fifo_axis__parameterized0 \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_51 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_38 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_53 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(m_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\gen_fifo.xpm_fifo_axis_inst_n_24 ),
        .m_axis_tid(\gen_fifo.xpm_fifo_axis_inst_n_23 ),
        .m_axis_tkeep({\gen_fifo.xpm_fifo_axis_inst_n_20 ,\gen_fifo.xpm_fifo_axis_inst_n_21 }),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb({\gen_fifo.xpm_fifo_axis_inst_n_18 ,\gen_fifo.xpm_fifo_axis_inst_n_19 }),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_39 ),
        .prog_full_axis(prog_full),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_40 ,\gen_fifo.xpm_fifo_axis_inst_n_41 ,\gen_fifo.xpm_fifo_axis_inst_n_42 ,\gen_fifo.xpm_fifo_axis_inst_n_43 ,\gen_fifo.xpm_fifo_axis_inst_n_44 ,\gen_fifo.xpm_fifo_axis_inst_n_45 ,\gen_fifo.xpm_fifo_axis_inst_n_46 ,\gen_fifo.xpm_fifo_axis_inst_n_47 ,\gen_fifo.xpm_fifo_axis_inst_n_48 ,\gen_fifo.xpm_fifo_axis_inst_n_49 ,\gen_fifo.xpm_fifo_axis_inst_n_50 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_52 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 ,\gen_fifo.xpm_fifo_axis_inst_n_29 ,\gen_fifo.xpm_fifo_axis_inst_n_30 ,\gen_fifo.xpm_fifo_axis_inst_n_31 ,\gen_fifo.xpm_fifo_axis_inst_n_32 ,\gen_fifo.xpm_fifo_axis_inst_n_33 ,\gen_fifo.xpm_fifo_axis_inst_n_34 ,\gen_fifo.xpm_fifo_axis_inst_n_35 ,\gen_fifo.xpm_fifo_axis_inst_n_36 ,\gen_fifo.xpm_fifo_axis_inst_n_37 }));
endmodule

(* CHECK_LICENSE_TYPE = "axis_fifo_gray_tag_cdc,axis_data_fifo_v2_0_0_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axis_fifo_gray_tag_cdc" *) 
(* X_CORE_INFO = "axis_data_fifo_v2_0_0_top,Vivado 2018.3" *) 
module facebox_system_real_camera_source_0_0_axis_fifo_gray_tag_cdc
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    prog_full);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [32:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [32:0]m_axis_tuser;
  output prog_full;

  wire m_axis_aclk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [32:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [32:0]s_axis_tuser;
  wire s_axis_tvalid;

  facebox_system_real_camera_source_0_0_axis_data_fifo_v2_0_0_top inst
       (.m_axis_aclk(m_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_full(prog_full),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axis_fifo_rgb_cdc,axis_data_fifo_v2_0_0_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axis_fifo_rgb_cdc" *) 
(* X_CORE_INFO = "axis_data_fifo_v2_0_0_top,Vivado 2018.3" *) 
module facebox_system_real_camera_source_0_0_axis_fifo_rgb_cdc
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    prog_full);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_tuser;
  output prog_full;

  wire m_axis_aclk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  facebox_system_real_camera_source_0_0_axis_data_fifo_v2_0_0_top__parameterized0 inst
       (.m_axis_aclk(m_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_full(prog_full),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_frame_resync" *) 
module facebox_system_real_camera_source_0_0_axis_frame_resync
   (drop_active_reg_0,
    D,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    rgb_frame_done_pulse5_out,
    m_axis_tready,
    aclk,
    drop_active_reg_1,
    Q,
    \rgb_line_count_reg[6] ,
    drop_active_reg_2,
    \rgb_line_count_reg[0] ,
    m_axis_tuser,
    drop_active_reg_3,
    m_axis_tvalid);
  output drop_active_reg_0;
  output [8:0]D;
  output \gen_wr_a.gen_word_narrow.mem_reg ;
  output rgb_frame_done_pulse5_out;
  output m_axis_tready;
  input aclk;
  input drop_active_reg_1;
  input [8:0]Q;
  input \rgb_line_count_reg[6] ;
  input drop_active_reg_2;
  input \rgb_line_count_reg[0] ;
  input [0:0]m_axis_tuser;
  input drop_active_reg_3;
  input m_axis_tvalid;

  wire [8:0]D;
  wire [8:0]Q;
  wire aclk;
  wire drop_active_i_1_n_0;
  wire drop_active_reg_0;
  wire drop_active_reg_1;
  wire drop_active_reg_2;
  wire drop_active_reg_3;
  wire \gen_wr_a.gen_word_narrow.mem_reg ;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rgb_frame_done_pulse5_out;
  wire \rgb_line_count_reg[0] ;
  wire \rgb_line_count_reg[6] ;

  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT5 #(
    .INIT(32'hFFFF4CCC)) 
    drop_active_i_1
       (.I0(drop_active_reg_2),
        .I1(drop_active_reg_0),
        .I2(m_axis_tuser),
        .I3(m_axis_tvalid),
        .I4(drop_active_reg_3),
        .O(drop_active_i_1_n_0));
  FDPE drop_active_reg
       (.C(aclk),
        .CE(1'b1),
        .D(drop_active_i_1_n_0),
        .PRE(drop_active_reg_1),
        .Q(drop_active_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    rgb_fifo_i_3
       (.I0(drop_active_reg_2),
        .I1(drop_active_reg_0),
        .I2(m_axis_tuser),
        .I3(drop_active_reg_3),
        .O(m_axis_tready));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    rgb_frame_done_pulse_i_1
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(\rgb_line_count_reg[6] ),
        .I5(Q[5]),
        .O(rgb_frame_done_pulse5_out));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_line_count[0]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rgb_line_count[1]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rgb_line_count[2]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rgb_line_count[3]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rgb_line_count[4]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFF00000000007F00)) 
    \rgb_line_count[5]_i_1 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I4(\rgb_line_count_reg[6] ),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h8820882888288828)) 
    \rgb_line_count[6]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\rgb_line_count_reg[6] ),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h8280888882888888)) 
    \rgb_line_count[7]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(Q[7]),
        .I2(\rgb_line_count_reg[6] ),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h88AAAAAA20000000)) 
    \rgb_line_count[8]_i_2 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I1(\rgb_line_count_reg[6] ),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000880800000000)) 
    \rgb_line_count[8]_i_3 
       (.I0(drop_active_reg_2),
        .I1(\rgb_line_count_reg[0] ),
        .I2(drop_active_reg_0),
        .I3(m_axis_tuser),
        .I4(drop_active_reg_3),
        .I5(m_axis_tvalid),
        .O(\gen_wr_a.gen_word_narrow.mem_reg ));
endmodule

(* ORIG_REF_NAME = "axis_frame_resync" *) 
module facebox_system_real_camera_source_0_0_axis_frame_resync__parameterized0
   (drop_active_reg_0,
    drop_active_reg_1,
    aclk,
    drop_active_reg_2);
  output drop_active_reg_0;
  input drop_active_reg_1;
  input aclk;
  input drop_active_reg_2;

  wire aclk;
  wire drop_active_reg_0;
  wire drop_active_reg_1;
  wire drop_active_reg_2;

  FDPE drop_active_reg
       (.C(aclk),
        .CE(1'b1),
        .D(drop_active_reg_1),
        .PRE(drop_active_reg_2),
        .Q(drop_active_reg_0));
endmodule

(* ORIG_REF_NAME = "axis_frame_resync" *) 
module facebox_system_real_camera_source_0_0_axis_frame_resync__parameterized0_0
   (drop_active_reg_0,
    m_axis_tready,
    aclk,
    drop_active_reg_1,
    drop_active_reg_2,
    m_axis_tuser,
    drop_active_reg_3,
    m_axis_tvalid);
  output drop_active_reg_0;
  output m_axis_tready;
  input aclk;
  input drop_active_reg_1;
  input drop_active_reg_2;
  input [0:0]m_axis_tuser;
  input drop_active_reg_3;
  input m_axis_tvalid;

  wire aclk;
  wire drop_active_i_1__0_n_0;
  wire drop_active_reg_0;
  wire drop_active_reg_1;
  wire drop_active_reg_2;
  wire drop_active_reg_3;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT5 #(
    .INIT(32'hFFFF70F0)) 
    drop_active_i_1__0
       (.I0(drop_active_reg_2),
        .I1(m_axis_tvalid),
        .I2(drop_active_reg_0),
        .I3(m_axis_tuser),
        .I4(drop_active_reg_3),
        .O(drop_active_i_1__0_n_0));
  FDPE drop_active_reg
       (.C(aclk),
        .CE(1'b1),
        .D(drop_active_i_1__0_n_0),
        .PRE(drop_active_reg_1),
        .Q(drop_active_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \tagged_gray.gray_fifo_i_1 
       (.I0(drop_active_reg_2),
        .I1(drop_active_reg_0),
        .I2(m_axis_tuser),
        .I3(drop_active_reg_3),
        .O(m_axis_tready));
endmodule

(* ORIG_REF_NAME = "camera_dual_axis_guard" *) 
module facebox_system_real_camera_source_0_0_camera_dual_axis_guard
   (status,
    \FSM_onehot_state_reg[0]_0 ,
    fifo_overflow_pulse,
    abort_req_toggle,
    s_axis_tvalid,
    abort_req_toggle_reg_0,
    \FSM_onehot_state_reg[2]_0 ,
    cam_pclk,
    fifo_overflow_pulse_reg_0,
    \FSM_onehot_state_reg[0]_1 ,
    fifo_overflow_pulse_reg_1,
    fifo_overflow_sticky_reg_0,
    fifo_overflow_sticky_reg_1,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    s_axis_tuser,
    out,
    px_valid,
    s_axis_tready,
    \FSM_onehot_state_reg[2]_3 ,
    prog_full,
    \FSM_onehot_state_reg[2]_4 ,
    frame_done,
    frame_good);
  output [1:0]status;
  output \FSM_onehot_state_reg[0]_0 ;
  output fifo_overflow_pulse;
  output abort_req_toggle;
  output s_axis_tvalid;
  output abort_req_toggle_reg_0;
  output \FSM_onehot_state_reg[2]_0 ;
  input cam_pclk;
  input fifo_overflow_pulse_reg_0;
  input \FSM_onehot_state_reg[0]_1 ;
  input fifo_overflow_pulse_reg_1;
  input fifo_overflow_sticky_reg_0;
  input fifo_overflow_sticky_reg_1;
  input \FSM_onehot_state_reg[2]_1 ;
  input \FSM_onehot_state_reg[2]_2 ;
  input [0:0]s_axis_tuser;
  input out;
  input px_valid;
  input s_axis_tready;
  input \FSM_onehot_state_reg[2]_3 ;
  input prog_full;
  input \FSM_onehot_state_reg[2]_4 ;
  input frame_done;
  input frame_good;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire \FSM_onehot_state_reg[2]_4 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire abort_req_toggle;
  wire abort_req_toggle_i_1_n_0;
  wire abort_req_toggle_reg_0;
  wire cam_pclk;
  wire fifo_overflow_pulse;
  wire fifo_overflow_pulse_reg_0;
  wire fifo_overflow_pulse_reg_1;
  wire fifo_overflow_sticky_reg_0;
  wire fifo_overflow_sticky_reg_1;
  wire frame_done;
  wire frame_good;
  wire out;
  wire prog_full;
  wire px_valid;
  wire rgb_fifo_i_4_n_0;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [1:0]status;

  LUT3 #(
    .INIT(8'h74)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[1]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[2]_2 ),
        .I2(status[0]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000828200FF)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(rgb_fifo_i_4_n_0),
        .I1(out),
        .I2(abort_req_toggle),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .I5(\FSM_onehot_state_reg[2]_1 ),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF0FF60FFF0F)) 
    \FSM_onehot_state[1]_i_5 
       (.I0(abort_req_toggle),
        .I1(out),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(rgb_fifo_i_4_n_0),
        .I4(s_axis_tuser),
        .I5(\FSM_onehot_state_reg[0]_0 ),
        .O(abort_req_toggle_reg_0));
  LUT6 #(
    .INIT(64'h0020FFFF002F0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rgb_fifo_i_4_n_0),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg[2]_2 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(abort_req_toggle),
        .I1(out),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,iSTATE:010,FORWARD:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[0]_1 ),
        .PRE(fifo_overflow_pulse_reg_0),
        .Q(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,iSTATE:010,FORWARD:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(fifo_overflow_pulse_reg_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(status[0]));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,iSTATE:010,FORWARD:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(fifo_overflow_pulse_reg_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000FBFFFFFF0004)) 
    abort_req_toggle_i_1
       (.I0(status[0]),
        .I1(frame_done),
        .I2(frame_good),
        .I3(out),
        .I4(fifo_overflow_pulse_reg_1),
        .I5(abort_req_toggle),
        .O(abort_req_toggle_i_1_n_0));
  FDCE abort_req_toggle_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(fifo_overflow_pulse_reg_0),
        .D(abort_req_toggle_i_1_n_0),
        .Q(abort_req_toggle));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT5 #(
    .INIT(32'h54000054)) 
    fifo_overflow_pulse_i_2
       (.I0(rgb_fifo_i_4_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(s_axis_tuser),
        .I3(out),
        .I4(abort_req_toggle),
        .O(\FSM_onehot_state_reg[2]_0 ));
  FDCE fifo_overflow_pulse_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(fifo_overflow_pulse_reg_0),
        .D(fifo_overflow_pulse_reg_1),
        .Q(fifo_overflow_pulse));
  FDCE fifo_overflow_sticky_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(fifo_overflow_sticky_reg_1),
        .D(fifo_overflow_sticky_reg_0),
        .Q(status[1]));
  LUT6 #(
    .INIT(64'hFF82000000000000)) 
    rgb_fifo_i_2
       (.I0(s_axis_tuser),
        .I1(out),
        .I2(abort_req_toggle),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(rgb_fifo_i_4_n_0),
        .I5(px_valid),
        .O(s_axis_tvalid));
  LUT4 #(
    .INIT(16'h0008)) 
    rgb_fifo_i_4
       (.I0(s_axis_tready),
        .I1(\FSM_onehot_state_reg[2]_3 ),
        .I2(prog_full),
        .I3(\FSM_onehot_state_reg[2]_4 ),
        .O(rgb_fifo_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "dvp_rx" *) 
module facebox_system_real_camera_source_0_0_dvp_rx
   (raw_valid,
    raw_sof,
    frame_done_reg_0,
    frame_good_reg_0,
    \FSM_onehot_state_reg[0] ,
    frame_good_reg_1,
    E,
    eol_s0,
    raw_valid_reg_0,
    source_frame_id0,
    px_valid_reg,
    frame_done_reg_1,
    D,
    \frame_error_reg[0]_0 ,
    fifo_overflow_pulse_reg,
    frame_done_reg_2,
    fifo_overflow_pulse_reg_0,
    raw_sof_reg_0,
    raw_sof_reg_1,
    fifo_overflow_sticky_reg,
    Q,
    cam_vsync_q,
    cam_pclk,
    \error_acc_reg[2]_0 ,
    cam_href_q,
    \raw_data_reg[2]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    have_first_reg,
    fifo_overflow_pulse_reg_1,
    px_valid,
    \FSM_onehot_state_reg[0]_1 ,
    source_dropped,
    fifo_overflow_pulse,
    overflow_seen_reg,
    source_started_reg,
    sof_pending_reg,
    status,
    \raw_data_reg[7]_0 );
  output raw_valid;
  output raw_sof;
  output frame_done_reg_0;
  output frame_good_reg_0;
  output \FSM_onehot_state_reg[0] ;
  output frame_good_reg_1;
  output [0:0]E;
  output eol_s0;
  output [0:0]raw_valid_reg_0;
  output source_frame_id0;
  output px_valid_reg;
  output frame_done_reg_1;
  output [0:0]D;
  output \frame_error_reg[0]_0 ;
  output fifo_overflow_pulse_reg;
  output frame_done_reg_2;
  output fifo_overflow_pulse_reg_0;
  output raw_sof_reg_0;
  output raw_sof_reg_1;
  output fifo_overflow_sticky_reg;
  output [7:0]Q;
  input cam_vsync_q;
  input cam_pclk;
  input \error_acc_reg[2]_0 ;
  input cam_href_q;
  input \raw_data_reg[2]_0 ;
  input \FSM_onehot_state_reg[0]_0 ;
  input have_first_reg;
  input fifo_overflow_pulse_reg_1;
  input px_valid;
  input \FSM_onehot_state_reg[0]_1 ;
  input source_dropped;
  input fifo_overflow_pulse;
  input overflow_seen_reg;
  input source_started_reg;
  input sof_pending_reg;
  input [0:0]status;
  input [7:0]\raw_data_reg[7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [7:0]Q;
  wire cam_href_q;
  wire cam_pclk;
  wire cam_vsync_q;
  wire eol_s0;
  wire [3:0]error_acc;
  wire \error_acc[0]_i_1_n_0 ;
  wire \error_acc[0]_i_2_n_0 ;
  wire \error_acc[1]_i_1_n_0 ;
  wire \error_acc[2]_i_1_n_0 ;
  wire \error_acc[2]_i_2_n_0 ;
  wire \error_acc[2]_i_3_n_0 ;
  wire \error_acc[2]_i_4_n_0 ;
  wire \error_acc[2]_i_5_n_0 ;
  wire \error_acc[3]_i_1_n_0 ;
  wire \error_acc[3]_i_2_n_0 ;
  wire \error_acc_reg[2]_0 ;
  wire [3:0]error_now;
  wire fifo_overflow_pulse;
  wire fifo_overflow_pulse_reg;
  wire fifo_overflow_pulse_reg_0;
  wire fifo_overflow_pulse_reg_1;
  wire fifo_overflow_sticky_reg;
  wire first_seen_i_1_n_0;
  wire first_seen_reg_n_0;
  wire frame_done_i_1_n_0;
  wire frame_done_reg_0;
  wire frame_done_reg_1;
  wire frame_done_reg_2;
  wire \frame_error[0]_i_2_n_0 ;
  wire \frame_error_reg[0]_0 ;
  wire \frame_error_reg_n_0_[0] ;
  wire \frame_error_reg_n_0_[1] ;
  wire \frame_error_reg_n_0_[2] ;
  wire \frame_error_reg_n_0_[3] ;
  wire frame_good_i_1_n_0;
  wire frame_good_reg_0;
  wire frame_good_reg_1;
  wire frame_open;
  wire frame_open0;
  wire frame_open_i_1_n_0;
  wire have_first_reg;
  wire href_d;
  wire in_line;
  wire in_line_i_1_n_0;
  wire in_line_i_2_n_0;
  wire in_line_reg_n_0;
  wire \line_count[0]_i_1_n_0 ;
  wire \line_count[10]_i_1_n_0 ;
  wire \line_count[10]_i_2_n_0 ;
  wire \line_count[10]_i_3_n_0 ;
  wire \line_count[10]_i_5_n_0 ;
  wire \line_count[10]_i_7_n_0 ;
  wire \line_count[10]_i_8_n_0 ;
  wire \line_count[10]_i_9_n_0 ;
  wire \line_count[4]_i_1_n_0 ;
  wire \line_count[4]_i_2_n_0 ;
  wire \line_count[5]_i_1_n_0 ;
  wire \line_count[5]_i_2_n_0 ;
  wire \line_count[6]_i_1_n_0 ;
  wire \line_count[7]_i_1_n_0 ;
  wire \line_count[8]_i_1_n_0 ;
  wire \line_count[8]_i_2_n_0 ;
  wire \line_count[9]_i_1_n_0 ;
  wire \line_count_reg_n_0_[0] ;
  wire \line_count_reg_n_0_[10] ;
  wire \line_count_reg_n_0_[1] ;
  wire \line_count_reg_n_0_[2] ;
  wire \line_count_reg_n_0_[3] ;
  wire \line_count_reg_n_0_[4] ;
  wire \line_count_reg_n_0_[5] ;
  wire \line_count_reg_n_0_[6] ;
  wire \line_count_reg_n_0_[7] ;
  wire \line_count_reg_n_0_[8] ;
  wire \line_count_reg_n_0_[9] ;
  wire overflow_seen_reg;
  wire [9:0]p_0_in;
  wire [3:1]p_1_in;
  wire px_valid;
  wire px_valid_reg;
  wire \raw_data_reg[2]_0 ;
  wire [7:0]\raw_data_reg[7]_0 ;
  wire raw_eol_i_1_n_0;
  wire raw_eol_i_2_n_0;
  wire raw_eol_i_3_n_0;
  wire raw_eol_i_4_n_0;
  wire raw_eol_i_5_n_0;
  wire raw_eol_i_6_n_0;
  wire raw_eol_reg_n_0;
  wire raw_sof;
  wire raw_sof_i_1_n_0;
  wire raw_sof_reg_0;
  wire raw_sof_reg_1;
  wire raw_valid;
  wire raw_valid20_out;
  wire raw_valid_i_2_n_0;
  wire [0:0]raw_valid_reg_0;
  wire \row_count[3]_i_1_n_0 ;
  wire \row_count[4]_i_1_n_0 ;
  wire \row_count[5]_i_1_n_0 ;
  wire \row_count[6]_i_1_n_0 ;
  wire \row_count[7]_i_1_n_0 ;
  wire \row_count[7]_i_2_n_0 ;
  wire \row_count[8]_i_1_n_0 ;
  wire \row_count[9]_i_1_n_0 ;
  wire \row_count[9]_i_3_n_0 ;
  wire \row_count[9]_i_4_n_0 ;
  wire \row_count[9]_i_5_n_0 ;
  wire [9:0]row_count_reg__0;
  wire sof_pending_reg;
  wire source_dropped;
  wire source_frame_id0;
  wire source_started_reg;
  wire [0:0]status;
  wire sync_seen;
  wire sync_seen_i_1_n_0;
  wire vsync_d;

  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(frame_good_reg_1),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(frame_good_reg_0),
        .I1(frame_done_reg_0),
        .I2(\FSM_onehot_state_reg[0]_1 ),
        .I3(px_valid),
        .O(frame_good_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(frame_done_reg_0),
        .I1(frame_good_reg_0),
        .O(frame_done_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    \bundle[32]_i_2 
       (.I0(frame_good_reg_0),
        .I1(source_dropped),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    eol_s0_i_1
       (.I0(raw_eol_reg_n_0),
        .I1(have_first_reg),
        .I2(raw_sof),
        .I3(raw_valid),
        .O(eol_s0));
  LUT4 #(
    .INIT(16'h00BF)) 
    \error_acc[0]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\error_acc[0]_i_2_n_0 ),
        .O(\error_acc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5455555555555555)) 
    \error_acc[0]_i_2 
       (.I0(error_acc[0]),
        .I1(\frame_error[0]_i_2_n_0 ),
        .I2(cam_href_q),
        .I3(frame_open),
        .I4(href_d),
        .I5(in_line_reg_n_0),
        .O(\error_acc[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \error_acc[1]_i_1 
       (.I0(error_now[1]),
        .I1(cam_vsync_q),
        .I2(vsync_d),
        .I3(sync_seen),
        .O(\error_acc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \error_acc[2]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\error_acc[2]_i_2_n_0 ),
        .O(\error_acc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \error_acc[2]_i_2 
       (.I0(\error_acc[2]_i_3_n_0 ),
        .I1(in_line),
        .I2(raw_valid_i_2_n_0),
        .I3(error_acc[2]),
        .O(\error_acc[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0F0D0F0D000D0F0)) 
    \error_acc[2]_i_3 
       (.I0(\error_acc[2]_i_4_n_0 ),
        .I1(\row_count[7]_i_2_n_0 ),
        .I2(frame_done_i_1_n_0),
        .I3(\row_count[9]_i_3_n_0 ),
        .I4(\error_acc[2]_i_5_n_0 ),
        .I5(\row_count[9]_i_4_n_0 ),
        .O(\error_acc[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \error_acc[2]_i_4 
       (.I0(row_count_reg__0[7]),
        .I1(row_count_reg__0[6]),
        .I2(row_count_reg__0[9]),
        .I3(row_count_reg__0[4]),
        .I4(row_count_reg__0[5]),
        .I5(row_count_reg__0[8]),
        .O(\error_acc[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \error_acc[2]_i_5 
       (.I0(row_count_reg__0[7]),
        .I1(row_count_reg__0[6]),
        .I2(row_count_reg__0[8]),
        .I3(row_count_reg__0[5]),
        .O(\error_acc[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h55F8)) 
    \error_acc[3]_i_1 
       (.I0(vsync_d),
        .I1(sync_seen),
        .I2(frame_open),
        .I3(cam_vsync_q),
        .O(\error_acc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000F8F0F0F0F8F0)) 
    \error_acc[3]_i_2 
       (.I0(cam_href_q),
        .I1(frame_open),
        .I2(error_acc[3]),
        .I3(cam_vsync_q),
        .I4(vsync_d),
        .I5(sync_seen),
        .O(\error_acc[3]_i_2_n_0 ));
  FDCE \error_acc_reg[0] 
       (.C(cam_pclk),
        .CE(\error_acc[3]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\error_acc[0]_i_1_n_0 ),
        .Q(error_acc[0]));
  FDCE \error_acc_reg[1] 
       (.C(cam_pclk),
        .CE(\error_acc[3]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\error_acc[1]_i_1_n_0 ),
        .Q(error_acc[1]));
  FDCE \error_acc_reg[2] 
       (.C(cam_pclk),
        .CE(\error_acc[3]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\error_acc[2]_i_1_n_0 ),
        .Q(error_acc[2]));
  FDCE \error_acc_reg[3] 
       (.C(cam_pclk),
        .CE(\error_acc[3]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\error_acc[3]_i_2_n_0 ),
        .Q(error_acc[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    fifo_overflow_pulse_i_1
       (.I0(fifo_overflow_pulse_reg_1),
        .I1(px_valid),
        .I2(frame_done_reg_0),
        .I3(frame_good_reg_0),
        .O(px_valid_reg));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_overflow_sticky_i_1
       (.I0(px_valid_reg),
        .I1(status),
        .O(fifo_overflow_sticky_reg));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \first_byte[7]_i_1 
       (.I0(raw_valid),
        .I1(raw_sof),
        .I2(have_first_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hBFBFBFBF00BF0000)) 
    first_seen_i_1
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(raw_valid_i_2_n_0),
        .I4(in_line),
        .I5(first_seen_reg_n_0),
        .O(first_seen_i_1_n_0));
  FDCE first_seen_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(first_seen_i_1_n_0),
        .Q(first_seen_reg_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    frame_done_i_1
       (.I0(frame_open),
        .I1(vsync_d),
        .I2(cam_vsync_q),
        .O(frame_done_i_1_n_0));
  FDCE frame_done_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\raw_data_reg[2]_0 ),
        .D(frame_done_i_1_n_0),
        .Q(frame_done_reg_0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \frame_error[0]_i_1 
       (.I0(in_line_reg_n_0),
        .I1(href_d),
        .I2(cam_href_q),
        .I3(\frame_error[0]_i_2_n_0 ),
        .I4(error_acc[0]),
        .O(error_now[0]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \frame_error[0]_i_2 
       (.I0(\line_count_reg_n_0_[9] ),
        .I1(\line_count_reg_n_0_[10] ),
        .I2(\line_count_reg_n_0_[8] ),
        .I3(\line_count_reg_n_0_[7] ),
        .I4(\line_count_reg_n_0_[6] ),
        .O(\frame_error[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \frame_error[1]_i_1 
       (.I0(error_acc[1]),
        .I1(\line_count_reg_n_0_[6] ),
        .I2(\line_count_reg_n_0_[9] ),
        .I3(\line_count_reg_n_0_[10] ),
        .I4(\line_count[10]_i_5_n_0 ),
        .O(error_now[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_error[2]_i_1 
       (.I0(\error_acc[2]_i_2_n_0 ),
        .O(error_now[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \frame_error[3]_i_1 
       (.I0(error_acc[3]),
        .I1(cam_href_q),
        .O(error_now[3]));
  FDCE \frame_error_reg[0] 
       (.C(cam_pclk),
        .CE(frame_done_i_1_n_0),
        .CLR(\raw_data_reg[2]_0 ),
        .D(error_now[0]),
        .Q(\frame_error_reg_n_0_[0] ));
  FDCE \frame_error_reg[1] 
       (.C(cam_pclk),
        .CE(frame_done_i_1_n_0),
        .CLR(\raw_data_reg[2]_0 ),
        .D(error_now[1]),
        .Q(\frame_error_reg_n_0_[1] ));
  FDCE \frame_error_reg[2] 
       (.C(cam_pclk),
        .CE(frame_done_i_1_n_0),
        .CLR(\raw_data_reg[2]_0 ),
        .D(error_now[2]),
        .Q(\frame_error_reg_n_0_[2] ));
  FDCE \frame_error_reg[3] 
       (.C(cam_pclk),
        .CE(frame_done_i_1_n_0),
        .CLR(\raw_data_reg[2]_0 ),
        .D(error_now[3]),
        .Q(\frame_error_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    frame_good_i_1
       (.I0(\error_acc[2]_i_2_n_0 ),
        .I1(\error_acc[0]_i_2_n_0 ),
        .I2(error_acc[3]),
        .I3(frame_done_i_1_n_0),
        .I4(cam_href_q),
        .I5(error_now[1]),
        .O(frame_good_i_1_n_0));
  FDCE frame_good_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\raw_data_reg[2]_0 ),
        .D(frame_good_i_1_n_0),
        .Q(frame_good_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hCF08)) 
    frame_open_i_1
       (.I0(sync_seen),
        .I1(vsync_d),
        .I2(cam_vsync_q),
        .I3(frame_open),
        .O(frame_open_i_1_n_0));
  FDCE frame_open_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(frame_open_i_1_n_0),
        .Q(frame_open));
  LUT5 #(
    .INIT(32'h00000004)) 
    \frames_good[0]_i_5 
       (.I0(\frame_error_reg_n_0_[0] ),
        .I1(frame_good_reg_0),
        .I2(\frame_error_reg_n_0_[3] ),
        .I3(\frame_error_reg_n_0_[2] ),
        .I4(\frame_error_reg_n_0_[1] ),
        .O(\frame_error_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h2330)) 
    have_first_i_1
       (.I0(raw_sof),
        .I1(raw_eol_reg_n_0),
        .I2(raw_valid),
        .I3(have_first_reg),
        .O(raw_sof_reg_1));
  FDCE href_d_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(cam_href_q),
        .Q(href_d));
  LUT6 #(
    .INIT(64'hFFFF0B0FF4F40000)) 
    in_line_i_1
       (.I0(cam_vsync_q),
        .I1(frame_open),
        .I2(in_line_i_2_n_0),
        .I3(\row_count[9]_i_3_n_0 ),
        .I4(in_line),
        .I5(in_line_reg_n_0),
        .O(in_line_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h38)) 
    in_line_i_2
       (.I0(sync_seen),
        .I1(vsync_d),
        .I2(cam_vsync_q),
        .O(in_line_i_2_n_0));
  FDCE in_line_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(in_line_i_1_n_0),
        .Q(in_line_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hBF00BFBF)) 
    \line_count[0]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(in_line),
        .I4(\line_count_reg_n_0_[0] ),
        .O(\line_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \line_count[10]_i_1 
       (.I0(\line_count[10]_i_3_n_0 ),
        .I1(cam_vsync_q),
        .I2(vsync_d),
        .I3(sync_seen),
        .I4(in_line),
        .I5(\line_count[10]_i_5_n_0 ),
        .O(\line_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004144)) 
    \line_count[10]_i_2 
       (.I0(frame_open0),
        .I1(\line_count_reg_n_0_[10] ),
        .I2(\line_count[10]_i_7_n_0 ),
        .I3(\line_count_reg_n_0_[9] ),
        .I4(in_line),
        .O(\line_count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \line_count[10]_i_3 
       (.I0(in_line_reg_n_0),
        .I1(cam_href_q),
        .I2(vsync_d),
        .I3(frame_open),
        .I4(cam_vsync_q),
        .I5(\frame_error[0]_i_2_n_0 ),
        .O(\line_count[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \line_count[10]_i_4 
       (.I0(cam_vsync_q),
        .I1(frame_open),
        .I2(vsync_d),
        .I3(in_line_reg_n_0),
        .I4(cam_href_q),
        .I5(href_d),
        .O(in_line));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \line_count[10]_i_5 
       (.I0(\line_count[10]_i_8_n_0 ),
        .I1(\line_count[10]_i_9_n_0 ),
        .I2(\line_count_reg_n_0_[2] ),
        .I3(\line_count_reg_n_0_[3] ),
        .I4(\line_count_reg_n_0_[4] ),
        .I5(\line_count_reg_n_0_[5] ),
        .O(\line_count[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \line_count[10]_i_6 
       (.I0(sync_seen),
        .I1(vsync_d),
        .I2(cam_vsync_q),
        .O(frame_open0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \line_count[10]_i_7 
       (.I0(\line_count_reg_n_0_[7] ),
        .I1(\line_count[8]_i_2_n_0 ),
        .I2(\line_count_reg_n_0_[6] ),
        .I3(\line_count_reg_n_0_[8] ),
        .O(\line_count[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \line_count[10]_i_8 
       (.I0(cam_vsync_q),
        .I1(frame_open),
        .I2(vsync_d),
        .I3(cam_href_q),
        .I4(in_line_reg_n_0),
        .O(\line_count[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \line_count[10]_i_9 
       (.I0(\line_count_reg_n_0_[7] ),
        .I1(\line_count_reg_n_0_[8] ),
        .I2(\line_count_reg_n_0_[0] ),
        .I3(\line_count_reg_n_0_[1] ),
        .O(\line_count[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000551555150000)) 
    \line_count[1]_i_1 
       (.I0(in_line),
        .I1(sync_seen),
        .I2(vsync_d),
        .I3(cam_vsync_q),
        .I4(\line_count_reg_n_0_[1] ),
        .I5(\line_count_reg_n_0_[0] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \line_count[2]_i_1 
       (.I0(in_line),
        .I1(frame_open0),
        .I2(\line_count_reg_n_0_[1] ),
        .I3(\line_count_reg_n_0_[0] ),
        .I4(\line_count_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \line_count[3]_i_1 
       (.I0(in_line),
        .I1(frame_open0),
        .I2(\line_count_reg_n_0_[0] ),
        .I3(\line_count_reg_n_0_[1] ),
        .I4(\line_count_reg_n_0_[2] ),
        .I5(\line_count_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000044144444)) 
    \line_count[4]_i_1 
       (.I0(frame_open0),
        .I1(\line_count_reg_n_0_[4] ),
        .I2(\line_count_reg_n_0_[3] ),
        .I3(\line_count[4]_i_2_n_0 ),
        .I4(\line_count_reg_n_0_[2] ),
        .I5(in_line),
        .O(\line_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \line_count[4]_i_2 
       (.I0(\line_count_reg_n_0_[1] ),
        .I1(\line_count_reg_n_0_[0] ),
        .O(\line_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BF0000BF)) 
    \line_count[5]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\line_count_reg_n_0_[5] ),
        .I4(\line_count[5]_i_2_n_0 ),
        .I5(in_line),
        .O(\line_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \line_count[5]_i_2 
       (.I0(\line_count_reg_n_0_[3] ),
        .I1(\line_count_reg_n_0_[0] ),
        .I2(\line_count_reg_n_0_[1] ),
        .I3(\line_count_reg_n_0_[2] ),
        .I4(\line_count_reg_n_0_[4] ),
        .O(\line_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BF0000BF)) 
    \line_count[6]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\line_count_reg_n_0_[6] ),
        .I4(\line_count[8]_i_2_n_0 ),
        .I5(in_line),
        .O(\line_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004414)) 
    \line_count[7]_i_1 
       (.I0(frame_open0),
        .I1(\line_count_reg_n_0_[7] ),
        .I2(\line_count_reg_n_0_[6] ),
        .I3(\line_count[8]_i_2_n_0 ),
        .I4(in_line),
        .O(\line_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044144444)) 
    \line_count[8]_i_1 
       (.I0(frame_open0),
        .I1(\line_count_reg_n_0_[8] ),
        .I2(\line_count_reg_n_0_[7] ),
        .I3(\line_count[8]_i_2_n_0 ),
        .I4(\line_count_reg_n_0_[6] ),
        .I5(in_line),
        .O(\line_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \line_count[8]_i_2 
       (.I0(\line_count_reg_n_0_[4] ),
        .I1(\line_count_reg_n_0_[2] ),
        .I2(\line_count_reg_n_0_[1] ),
        .I3(\line_count_reg_n_0_[0] ),
        .I4(\line_count_reg_n_0_[3] ),
        .I5(\line_count_reg_n_0_[5] ),
        .O(\line_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BF0000BF)) 
    \line_count[9]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\line_count_reg_n_0_[9] ),
        .I4(\line_count[10]_i_7_n_0 ),
        .I5(in_line),
        .O(\line_count[9]_i_1_n_0 ));
  FDCE \line_count_reg[0] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[0]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[0] ));
  FDCE \line_count_reg[10] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[10]_i_2_n_0 ),
        .Q(\line_count_reg_n_0_[10] ));
  FDCE \line_count_reg[1] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_1_in[1]),
        .Q(\line_count_reg_n_0_[1] ));
  FDCE \line_count_reg[2] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_1_in[2]),
        .Q(\line_count_reg_n_0_[2] ));
  FDCE \line_count_reg[3] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_1_in[3]),
        .Q(\line_count_reg_n_0_[3] ));
  FDCE \line_count_reg[4] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[4]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[4] ));
  FDCE \line_count_reg[5] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[5]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[5] ));
  FDCE \line_count_reg[6] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[6]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[6] ));
  FDCE \line_count_reg[7] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[7]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[7] ));
  FDCE \line_count_reg[8] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[8]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[8] ));
  FDCE \line_count_reg[9] 
       (.C(cam_pclk),
        .CE(\line_count[10]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\line_count[9]_i_1_n_0 ),
        .Q(\line_count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h32)) 
    overflow_seen_i_1
       (.I0(fifo_overflow_pulse),
        .I1(frame_done_reg_0),
        .I2(overflow_seen_reg),
        .O(fifo_overflow_pulse_reg));
  FDCE \raw_data_reg[0] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\raw_data_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE \raw_data_reg[1] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\raw_data_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE \raw_data_reg[2] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\raw_data_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE \raw_data_reg[3] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE \raw_data_reg[4] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE \raw_data_reg[5] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [5]),
        .Q(Q[5]));
  FDCE \raw_data_reg[6] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE \raw_data_reg[7] 
       (.C(cam_pclk),
        .CE(raw_valid20_out),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\raw_data_reg[7]_0 [7]),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'h5554545444444444)) 
    raw_eol_i_1
       (.I0(frame_open0),
        .I1(raw_eol_i_2_n_0),
        .I2(raw_eol_i_3_n_0),
        .I3(in_line_reg_n_0),
        .I4(cam_href_q),
        .I5(frame_done_i_1_n_0),
        .O(raw_eol_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF08)) 
    raw_eol_i_2
       (.I0(raw_eol_i_4_n_0),
        .I1(raw_eol_i_5_n_0),
        .I2(\line_count[8]_i_2_n_0 ),
        .I3(\row_count[9]_i_3_n_0 ),
        .I4(\frame_error[0]_i_2_n_0 ),
        .I5(raw_eol_i_6_n_0),
        .O(raw_eol_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    raw_eol_i_3
       (.I0(\row_count[9]_i_3_n_0 ),
        .I1(\line_count_reg_n_0_[6] ),
        .I2(\line_count_reg_n_0_[7] ),
        .I3(\line_count_reg_n_0_[8] ),
        .I4(\line_count_reg_n_0_[10] ),
        .I5(\line_count_reg_n_0_[9] ),
        .O(raw_eol_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    raw_eol_i_4
       (.I0(\line_count[10]_i_3_n_0 ),
        .I1(row_count_reg__0[7]),
        .I2(row_count_reg__0[6]),
        .I3(row_count_reg__0[8]),
        .I4(row_count_reg__0[5]),
        .I5(row_count_reg__0[9]),
        .O(raw_eol_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    raw_eol_i_5
       (.I0(\line_count_reg_n_0_[10] ),
        .I1(\line_count_reg_n_0_[9] ),
        .O(raw_eol_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hB)) 
    raw_eol_i_6
       (.I0(cam_vsync_q),
        .I1(frame_open),
        .O(raw_eol_i_6_n_0));
  FDCE raw_eol_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\raw_data_reg[2]_0 ),
        .D(raw_eol_i_1_n_0),
        .Q(raw_eol_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h02)) 
    raw_sof_i_1
       (.I0(in_line),
        .I1(raw_valid_i_2_n_0),
        .I2(first_seen_reg_n_0),
        .O(raw_sof_i_1_n_0));
  FDCE raw_sof_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\raw_data_reg[2]_0 ),
        .D(raw_sof_i_1_n_0),
        .Q(raw_sof));
  LUT3 #(
    .INIT(8'h32)) 
    raw_valid_i_1
       (.I0(in_line),
        .I1(raw_valid_i_2_n_0),
        .I2(\line_count[10]_i_3_n_0 ),
        .O(raw_valid20_out));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    raw_valid_i_2
       (.I0(row_count_reg__0[9]),
        .I1(row_count_reg__0[5]),
        .I2(row_count_reg__0[8]),
        .I3(row_count_reg__0[6]),
        .I4(row_count_reg__0[7]),
        .O(raw_valid_i_2_n_0));
  FDCE raw_valid_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\raw_data_reg[2]_0 ),
        .D(raw_valid20_out),
        .Q(raw_valid));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \row_count[0]_i_1 
       (.I0(row_count_reg__0[0]),
        .I1(cam_vsync_q),
        .I2(vsync_d),
        .I3(sync_seen),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h60666666)) 
    \row_count[1]_i_1 
       (.I0(row_count_reg__0[1]),
        .I1(row_count_reg__0[0]),
        .I2(cam_vsync_q),
        .I3(vsync_d),
        .I4(sync_seen),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h7800787878787878)) 
    \row_count[2]_i_1 
       (.I0(row_count_reg__0[0]),
        .I1(row_count_reg__0[1]),
        .I2(row_count_reg__0[2]),
        .I3(cam_vsync_q),
        .I4(vsync_d),
        .I5(sync_seen),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \row_count[3]_i_1 
       (.I0(frame_open0),
        .I1(row_count_reg__0[1]),
        .I2(row_count_reg__0[0]),
        .I3(row_count_reg__0[2]),
        .I4(row_count_reg__0[3]),
        .O(\row_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \row_count[4]_i_1 
       (.I0(frame_open0),
        .I1(row_count_reg__0[2]),
        .I2(row_count_reg__0[0]),
        .I3(row_count_reg__0[1]),
        .I4(row_count_reg__0[3]),
        .I5(row_count_reg__0[4]),
        .O(\row_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF00BFBF00BF0000)) 
    \row_count[5]_i_1 
       (.I0(cam_vsync_q),
        .I1(vsync_d),
        .I2(sync_seen),
        .I3(\row_count[7]_i_2_n_0 ),
        .I4(row_count_reg__0[4]),
        .I5(row_count_reg__0[5]),
        .O(\row_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51550400)) 
    \row_count[6]_i_1 
       (.I0(frame_open0),
        .I1(row_count_reg__0[4]),
        .I2(\row_count[7]_i_2_n_0 ),
        .I3(row_count_reg__0[5]),
        .I4(row_count_reg__0[6]),
        .O(\row_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \row_count[7]_i_1 
       (.I0(frame_open0),
        .I1(row_count_reg__0[5]),
        .I2(\row_count[7]_i_2_n_0 ),
        .I3(row_count_reg__0[4]),
        .I4(row_count_reg__0[6]),
        .I5(row_count_reg__0[7]),
        .O(\row_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_count[7]_i_2 
       (.I0(row_count_reg__0[2]),
        .I1(row_count_reg__0[0]),
        .I2(row_count_reg__0[1]),
        .I3(row_count_reg__0[3]),
        .O(\row_count[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55150040)) 
    \row_count[8]_i_1 
       (.I0(frame_open0),
        .I1(row_count_reg__0[7]),
        .I2(row_count_reg__0[6]),
        .I3(\row_count[9]_i_5_n_0 ),
        .I4(row_count_reg__0[8]),
        .O(\row_count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0888)) 
    \row_count[9]_i_1 
       (.I0(\error_acc[3]_i_1_n_0 ),
        .I1(\row_count[9]_i_3_n_0 ),
        .I2(\row_count[9]_i_4_n_0 ),
        .I3(raw_valid_i_2_n_0),
        .I4(frame_open0),
        .O(\row_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \row_count[9]_i_2 
       (.I0(\row_count[9]_i_5_n_0 ),
        .I1(row_count_reg__0[6]),
        .I2(row_count_reg__0[7]),
        .I3(row_count_reg__0[8]),
        .I4(row_count_reg__0[9]),
        .I5(frame_open0),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \row_count[9]_i_3 
       (.I0(cam_href_q),
        .I1(frame_open),
        .I2(href_d),
        .I3(in_line_reg_n_0),
        .O(\row_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \row_count[9]_i_4 
       (.I0(row_count_reg__0[2]),
        .I1(row_count_reg__0[3]),
        .I2(row_count_reg__0[4]),
        .I3(row_count_reg__0[9]),
        .I4(row_count_reg__0[1]),
        .I5(row_count_reg__0[0]),
        .O(\row_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \row_count[9]_i_5 
       (.I0(row_count_reg__0[4]),
        .I1(row_count_reg__0[2]),
        .I2(row_count_reg__0[0]),
        .I3(row_count_reg__0[1]),
        .I4(row_count_reg__0[3]),
        .I5(row_count_reg__0[5]),
        .O(\row_count[9]_i_5_n_0 ));
  FDCE \row_count_reg[0] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_0_in[0]),
        .Q(row_count_reg__0[0]));
  FDCE \row_count_reg[1] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_0_in[1]),
        .Q(row_count_reg__0[1]));
  FDCE \row_count_reg[2] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_0_in[2]),
        .Q(row_count_reg__0[2]));
  FDCE \row_count_reg[3] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[3]_i_1_n_0 ),
        .Q(row_count_reg__0[3]));
  FDCE \row_count_reg[4] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[4]_i_1_n_0 ),
        .Q(row_count_reg__0[4]));
  FDCE \row_count_reg[5] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[5]_i_1_n_0 ),
        .Q(row_count_reg__0[5]));
  FDCE \row_count_reg[6] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[6]_i_1_n_0 ),
        .Q(row_count_reg__0[6]));
  FDCE \row_count_reg[7] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[7]_i_1_n_0 ),
        .Q(row_count_reg__0[7]));
  FDCE \row_count_reg[8] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(\row_count[8]_i_1_n_0 ),
        .Q(row_count_reg__0[8]));
  FDCE \row_count_reg[9] 
       (.C(cam_pclk),
        .CE(\row_count[9]_i_1_n_0 ),
        .CLR(\error_acc_reg[2]_0 ),
        .D(p_0_in[9]),
        .Q(row_count_reg__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    sof_pending_i_1
       (.I0(raw_sof),
        .I1(raw_eol_reg_n_0),
        .I2(raw_valid),
        .I3(sof_pending_reg),
        .O(raw_sof_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    source_dropped_i_1
       (.I0(fifo_overflow_pulse),
        .I1(raw_sof),
        .I2(raw_valid),
        .I3(source_dropped),
        .O(fifo_overflow_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \source_frame_id[0]_i_1 
       (.I0(raw_valid),
        .I1(raw_sof),
        .O(source_frame_id0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    source_started_i_1
       (.I0(frame_done_reg_0),
        .I1(raw_sof),
        .I2(raw_valid),
        .I3(source_started_reg),
        .O(frame_done_reg_2));
  LUT2 #(
    .INIT(4'hE)) 
    sync_seen_i_1
       (.I0(cam_vsync_q),
        .I1(sync_seen),
        .O(sync_seen_i_1_n_0));
  FDCE sync_seen_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(sync_seen_i_1_n_0),
        .Q(sync_seen));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h20)) 
    valid_s0_i_1
       (.I0(raw_valid),
        .I1(raw_sof),
        .I2(have_first_reg),
        .O(raw_valid_reg_0));
  FDCE vsync_d_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\error_acc_reg[2]_0 ),
        .D(cam_vsync_q),
        .Q(vsync_d));
endmodule

(* ORIG_REF_NAME = "frame_stats" *) 
module facebox_system_real_camera_source_0_0_frame_stats
   (init_sync_reg,
    overflow_seen_reg_0,
    \frames_dropped_reg[18]_0 ,
    \frames_good_reg[4]_0 ,
    cam_pclk,
    \frames_good_reg[12]_0 ,
    overflow_seen_reg_1,
    overflow_seen_reg_2,
    \frames_bad_reg[31]_0 ,
    \frames_dropped_reg[31]_0 ,
    fifo_overflow_pulse,
    out,
    \frames_bad_reg[26]_0 );
  output init_sync_reg;
  output overflow_seen_reg_0;
  output \frames_dropped_reg[18]_0 ;
  output \frames_good_reg[4]_0 ;
  input cam_pclk;
  input \frames_good_reg[12]_0 ;
  input overflow_seen_reg_1;
  input overflow_seen_reg_2;
  input \frames_bad_reg[31]_0 ;
  input \frames_dropped_reg[31]_0 ;
  input fifo_overflow_pulse;
  input out;
  input \frames_bad_reg[26]_0 ;

  wire bad_seen_cam_i_10_n_0;
  wire bad_seen_cam_i_11_n_0;
  wire bad_seen_cam_i_12_n_0;
  wire bad_seen_cam_i_13_n_0;
  wire bad_seen_cam_i_14_n_0;
  wire bad_seen_cam_i_15_n_0;
  wire bad_seen_cam_i_16_n_0;
  wire bad_seen_cam_i_17_n_0;
  wire bad_seen_cam_i_2_n_0;
  wire bad_seen_cam_i_3_n_0;
  wire bad_seen_cam_i_4_n_0;
  wire bad_seen_cam_i_5_n_0;
  wire bad_seen_cam_i_6_n_0;
  wire bad_seen_cam_i_7_n_0;
  wire bad_seen_cam_i_8_n_0;
  wire bad_seen_cam_i_9_n_0;
  wire cam_pclk;
  wire fifo_overflow_pulse;
  wire [31:0]frames_bad;
  wire \frames_bad[0]_i_10_n_0 ;
  wire \frames_bad[0]_i_11_n_0 ;
  wire \frames_bad[0]_i_1_n_0 ;
  wire \frames_bad[0]_i_3_n_0 ;
  wire \frames_bad[0]_i_4_n_0 ;
  wire \frames_bad[0]_i_5_n_0 ;
  wire \frames_bad[0]_i_6_n_0 ;
  wire \frames_bad[0]_i_7_n_0 ;
  wire \frames_bad[0]_i_8_n_0 ;
  wire \frames_bad[0]_i_9_n_0 ;
  wire \frames_bad_reg[0]_i_2_n_0 ;
  wire \frames_bad_reg[0]_i_2_n_1 ;
  wire \frames_bad_reg[0]_i_2_n_2 ;
  wire \frames_bad_reg[0]_i_2_n_3 ;
  wire \frames_bad_reg[0]_i_2_n_4 ;
  wire \frames_bad_reg[0]_i_2_n_5 ;
  wire \frames_bad_reg[0]_i_2_n_6 ;
  wire \frames_bad_reg[0]_i_2_n_7 ;
  wire \frames_bad_reg[12]_i_1_n_0 ;
  wire \frames_bad_reg[12]_i_1_n_1 ;
  wire \frames_bad_reg[12]_i_1_n_2 ;
  wire \frames_bad_reg[12]_i_1_n_3 ;
  wire \frames_bad_reg[12]_i_1_n_4 ;
  wire \frames_bad_reg[12]_i_1_n_5 ;
  wire \frames_bad_reg[12]_i_1_n_6 ;
  wire \frames_bad_reg[12]_i_1_n_7 ;
  wire \frames_bad_reg[16]_i_1_n_0 ;
  wire \frames_bad_reg[16]_i_1_n_1 ;
  wire \frames_bad_reg[16]_i_1_n_2 ;
  wire \frames_bad_reg[16]_i_1_n_3 ;
  wire \frames_bad_reg[16]_i_1_n_4 ;
  wire \frames_bad_reg[16]_i_1_n_5 ;
  wire \frames_bad_reg[16]_i_1_n_6 ;
  wire \frames_bad_reg[16]_i_1_n_7 ;
  wire \frames_bad_reg[20]_i_1_n_0 ;
  wire \frames_bad_reg[20]_i_1_n_1 ;
  wire \frames_bad_reg[20]_i_1_n_2 ;
  wire \frames_bad_reg[20]_i_1_n_3 ;
  wire \frames_bad_reg[20]_i_1_n_4 ;
  wire \frames_bad_reg[20]_i_1_n_5 ;
  wire \frames_bad_reg[20]_i_1_n_6 ;
  wire \frames_bad_reg[20]_i_1_n_7 ;
  wire \frames_bad_reg[24]_i_1_n_0 ;
  wire \frames_bad_reg[24]_i_1_n_1 ;
  wire \frames_bad_reg[24]_i_1_n_2 ;
  wire \frames_bad_reg[24]_i_1_n_3 ;
  wire \frames_bad_reg[24]_i_1_n_4 ;
  wire \frames_bad_reg[24]_i_1_n_5 ;
  wire \frames_bad_reg[24]_i_1_n_6 ;
  wire \frames_bad_reg[24]_i_1_n_7 ;
  wire \frames_bad_reg[26]_0 ;
  wire \frames_bad_reg[28]_i_1_n_1 ;
  wire \frames_bad_reg[28]_i_1_n_2 ;
  wire \frames_bad_reg[28]_i_1_n_3 ;
  wire \frames_bad_reg[28]_i_1_n_4 ;
  wire \frames_bad_reg[28]_i_1_n_5 ;
  wire \frames_bad_reg[28]_i_1_n_6 ;
  wire \frames_bad_reg[28]_i_1_n_7 ;
  wire \frames_bad_reg[31]_0 ;
  wire \frames_bad_reg[4]_i_1_n_0 ;
  wire \frames_bad_reg[4]_i_1_n_1 ;
  wire \frames_bad_reg[4]_i_1_n_2 ;
  wire \frames_bad_reg[4]_i_1_n_3 ;
  wire \frames_bad_reg[4]_i_1_n_4 ;
  wire \frames_bad_reg[4]_i_1_n_5 ;
  wire \frames_bad_reg[4]_i_1_n_6 ;
  wire \frames_bad_reg[4]_i_1_n_7 ;
  wire \frames_bad_reg[8]_i_1_n_0 ;
  wire \frames_bad_reg[8]_i_1_n_1 ;
  wire \frames_bad_reg[8]_i_1_n_2 ;
  wire \frames_bad_reg[8]_i_1_n_3 ;
  wire \frames_bad_reg[8]_i_1_n_4 ;
  wire \frames_bad_reg[8]_i_1_n_5 ;
  wire \frames_bad_reg[8]_i_1_n_6 ;
  wire \frames_bad_reg[8]_i_1_n_7 ;
  wire [31:0]frames_dropped;
  wire \frames_dropped[0]_i_10_n_0 ;
  wire \frames_dropped[0]_i_11_n_0 ;
  wire \frames_dropped[0]_i_1_n_0 ;
  wire \frames_dropped[0]_i_3_n_0 ;
  wire \frames_dropped[0]_i_4_n_0 ;
  wire \frames_dropped[0]_i_5_n_0 ;
  wire \frames_dropped[0]_i_6_n_0 ;
  wire \frames_dropped[0]_i_7_n_0 ;
  wire \frames_dropped[0]_i_8_n_0 ;
  wire \frames_dropped[0]_i_9_n_0 ;
  wire \frames_dropped_reg[0]_i_2_n_0 ;
  wire \frames_dropped_reg[0]_i_2_n_1 ;
  wire \frames_dropped_reg[0]_i_2_n_2 ;
  wire \frames_dropped_reg[0]_i_2_n_3 ;
  wire \frames_dropped_reg[0]_i_2_n_4 ;
  wire \frames_dropped_reg[0]_i_2_n_5 ;
  wire \frames_dropped_reg[0]_i_2_n_6 ;
  wire \frames_dropped_reg[0]_i_2_n_7 ;
  wire \frames_dropped_reg[12]_i_1_n_0 ;
  wire \frames_dropped_reg[12]_i_1_n_1 ;
  wire \frames_dropped_reg[12]_i_1_n_2 ;
  wire \frames_dropped_reg[12]_i_1_n_3 ;
  wire \frames_dropped_reg[12]_i_1_n_4 ;
  wire \frames_dropped_reg[12]_i_1_n_5 ;
  wire \frames_dropped_reg[12]_i_1_n_6 ;
  wire \frames_dropped_reg[12]_i_1_n_7 ;
  wire \frames_dropped_reg[16]_i_1_n_0 ;
  wire \frames_dropped_reg[16]_i_1_n_1 ;
  wire \frames_dropped_reg[16]_i_1_n_2 ;
  wire \frames_dropped_reg[16]_i_1_n_3 ;
  wire \frames_dropped_reg[16]_i_1_n_4 ;
  wire \frames_dropped_reg[16]_i_1_n_5 ;
  wire \frames_dropped_reg[16]_i_1_n_6 ;
  wire \frames_dropped_reg[16]_i_1_n_7 ;
  wire \frames_dropped_reg[18]_0 ;
  wire \frames_dropped_reg[20]_i_1_n_0 ;
  wire \frames_dropped_reg[20]_i_1_n_1 ;
  wire \frames_dropped_reg[20]_i_1_n_2 ;
  wire \frames_dropped_reg[20]_i_1_n_3 ;
  wire \frames_dropped_reg[20]_i_1_n_4 ;
  wire \frames_dropped_reg[20]_i_1_n_5 ;
  wire \frames_dropped_reg[20]_i_1_n_6 ;
  wire \frames_dropped_reg[20]_i_1_n_7 ;
  wire \frames_dropped_reg[24]_i_1_n_0 ;
  wire \frames_dropped_reg[24]_i_1_n_1 ;
  wire \frames_dropped_reg[24]_i_1_n_2 ;
  wire \frames_dropped_reg[24]_i_1_n_3 ;
  wire \frames_dropped_reg[24]_i_1_n_4 ;
  wire \frames_dropped_reg[24]_i_1_n_5 ;
  wire \frames_dropped_reg[24]_i_1_n_6 ;
  wire \frames_dropped_reg[24]_i_1_n_7 ;
  wire \frames_dropped_reg[28]_i_1_n_1 ;
  wire \frames_dropped_reg[28]_i_1_n_2 ;
  wire \frames_dropped_reg[28]_i_1_n_3 ;
  wire \frames_dropped_reg[28]_i_1_n_4 ;
  wire \frames_dropped_reg[28]_i_1_n_5 ;
  wire \frames_dropped_reg[28]_i_1_n_6 ;
  wire \frames_dropped_reg[28]_i_1_n_7 ;
  wire \frames_dropped_reg[31]_0 ;
  wire \frames_dropped_reg[4]_i_1_n_0 ;
  wire \frames_dropped_reg[4]_i_1_n_1 ;
  wire \frames_dropped_reg[4]_i_1_n_2 ;
  wire \frames_dropped_reg[4]_i_1_n_3 ;
  wire \frames_dropped_reg[4]_i_1_n_4 ;
  wire \frames_dropped_reg[4]_i_1_n_5 ;
  wire \frames_dropped_reg[4]_i_1_n_6 ;
  wire \frames_dropped_reg[4]_i_1_n_7 ;
  wire \frames_dropped_reg[8]_i_1_n_0 ;
  wire \frames_dropped_reg[8]_i_1_n_1 ;
  wire \frames_dropped_reg[8]_i_1_n_2 ;
  wire \frames_dropped_reg[8]_i_1_n_3 ;
  wire \frames_dropped_reg[8]_i_1_n_4 ;
  wire \frames_dropped_reg[8]_i_1_n_5 ;
  wire \frames_dropped_reg[8]_i_1_n_6 ;
  wire \frames_dropped_reg[8]_i_1_n_7 ;
  wire [31:0]frames_good;
  wire \frames_good[0]_i_10_n_0 ;
  wire \frames_good[0]_i_11_n_0 ;
  wire \frames_good[0]_i_12_n_0 ;
  wire \frames_good[0]_i_1_n_0 ;
  wire \frames_good[0]_i_3_n_0 ;
  wire \frames_good[0]_i_4_n_0 ;
  wire \frames_good[0]_i_6_n_0 ;
  wire \frames_good[0]_i_7_n_0 ;
  wire \frames_good[0]_i_8_n_0 ;
  wire \frames_good[0]_i_9_n_0 ;
  wire \frames_good_reg[0]_i_2_n_0 ;
  wire \frames_good_reg[0]_i_2_n_1 ;
  wire \frames_good_reg[0]_i_2_n_2 ;
  wire \frames_good_reg[0]_i_2_n_3 ;
  wire \frames_good_reg[0]_i_2_n_4 ;
  wire \frames_good_reg[0]_i_2_n_5 ;
  wire \frames_good_reg[0]_i_2_n_6 ;
  wire \frames_good_reg[0]_i_2_n_7 ;
  wire \frames_good_reg[12]_0 ;
  wire \frames_good_reg[12]_i_1_n_0 ;
  wire \frames_good_reg[12]_i_1_n_1 ;
  wire \frames_good_reg[12]_i_1_n_2 ;
  wire \frames_good_reg[12]_i_1_n_3 ;
  wire \frames_good_reg[12]_i_1_n_4 ;
  wire \frames_good_reg[12]_i_1_n_5 ;
  wire \frames_good_reg[12]_i_1_n_6 ;
  wire \frames_good_reg[12]_i_1_n_7 ;
  wire \frames_good_reg[16]_i_1_n_0 ;
  wire \frames_good_reg[16]_i_1_n_1 ;
  wire \frames_good_reg[16]_i_1_n_2 ;
  wire \frames_good_reg[16]_i_1_n_3 ;
  wire \frames_good_reg[16]_i_1_n_4 ;
  wire \frames_good_reg[16]_i_1_n_5 ;
  wire \frames_good_reg[16]_i_1_n_6 ;
  wire \frames_good_reg[16]_i_1_n_7 ;
  wire \frames_good_reg[20]_i_1_n_0 ;
  wire \frames_good_reg[20]_i_1_n_1 ;
  wire \frames_good_reg[20]_i_1_n_2 ;
  wire \frames_good_reg[20]_i_1_n_3 ;
  wire \frames_good_reg[20]_i_1_n_4 ;
  wire \frames_good_reg[20]_i_1_n_5 ;
  wire \frames_good_reg[20]_i_1_n_6 ;
  wire \frames_good_reg[20]_i_1_n_7 ;
  wire \frames_good_reg[24]_i_1_n_0 ;
  wire \frames_good_reg[24]_i_1_n_1 ;
  wire \frames_good_reg[24]_i_1_n_2 ;
  wire \frames_good_reg[24]_i_1_n_3 ;
  wire \frames_good_reg[24]_i_1_n_4 ;
  wire \frames_good_reg[24]_i_1_n_5 ;
  wire \frames_good_reg[24]_i_1_n_6 ;
  wire \frames_good_reg[24]_i_1_n_7 ;
  wire \frames_good_reg[28]_i_1_n_1 ;
  wire \frames_good_reg[28]_i_1_n_2 ;
  wire \frames_good_reg[28]_i_1_n_3 ;
  wire \frames_good_reg[28]_i_1_n_4 ;
  wire \frames_good_reg[28]_i_1_n_5 ;
  wire \frames_good_reg[28]_i_1_n_6 ;
  wire \frames_good_reg[28]_i_1_n_7 ;
  wire \frames_good_reg[4]_0 ;
  wire \frames_good_reg[4]_i_1_n_0 ;
  wire \frames_good_reg[4]_i_1_n_1 ;
  wire \frames_good_reg[4]_i_1_n_2 ;
  wire \frames_good_reg[4]_i_1_n_3 ;
  wire \frames_good_reg[4]_i_1_n_4 ;
  wire \frames_good_reg[4]_i_1_n_5 ;
  wire \frames_good_reg[4]_i_1_n_6 ;
  wire \frames_good_reg[4]_i_1_n_7 ;
  wire \frames_good_reg[8]_i_1_n_0 ;
  wire \frames_good_reg[8]_i_1_n_1 ;
  wire \frames_good_reg[8]_i_1_n_2 ;
  wire \frames_good_reg[8]_i_1_n_3 ;
  wire \frames_good_reg[8]_i_1_n_4 ;
  wire \frames_good_reg[8]_i_1_n_5 ;
  wire \frames_good_reg[8]_i_1_n_6 ;
  wire \frames_good_reg[8]_i_1_n_7 ;
  wire good_seen_cam_i_2_n_0;
  wire good_seen_cam_i_3_n_0;
  wire good_seen_cam_i_4_n_0;
  wire good_seen_cam_i_5_n_0;
  wire good_seen_cam_i_6_n_0;
  wire good_seen_cam_i_7_n_0;
  wire good_seen_cam_i_8_n_0;
  wire good_seen_cam_i_9_n_0;
  wire init_sync_reg;
  wire out;
  wire overflow_seen_reg_0;
  wire overflow_seen_reg_1;
  wire overflow_seen_reg_2;
  wire [3:3]\NLW_frames_bad_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_frames_dropped_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_frames_good_reg[28]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_1
       (.I0(bad_seen_cam_i_2_n_0),
        .I1(bad_seen_cam_i_3_n_0),
        .I2(bad_seen_cam_i_4_n_0),
        .I3(bad_seen_cam_i_5_n_0),
        .O(\frames_dropped_reg[18]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_10
       (.I0(frames_bad[5]),
        .I1(frames_bad[4]),
        .I2(frames_bad[7]),
        .I3(frames_bad[6]),
        .O(bad_seen_cam_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    bad_seen_cam_i_11
       (.I0(frames_bad[8]),
        .I1(frames_bad[11]),
        .I2(frames_bad[9]),
        .I3(frames_bad[10]),
        .I4(bad_seen_cam_i_16_n_0),
        .O(bad_seen_cam_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_12
       (.I0(frames_bad[30]),
        .I1(frames_bad[28]),
        .I2(frames_bad[31]),
        .I3(frames_bad[29]),
        .O(bad_seen_cam_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    bad_seen_cam_i_13
       (.I0(frames_bad[16]),
        .I1(frames_bad[19]),
        .I2(frames_bad[17]),
        .I3(frames_bad[18]),
        .I4(bad_seen_cam_i_17_n_0),
        .O(bad_seen_cam_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_14
       (.I0(frames_dropped[29]),
        .I1(frames_dropped[28]),
        .I2(frames_dropped[30]),
        .I3(frames_dropped[31]),
        .O(bad_seen_cam_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_15
       (.I0(frames_dropped[5]),
        .I1(frames_dropped[4]),
        .I2(frames_dropped[7]),
        .I3(frames_dropped[6]),
        .O(bad_seen_cam_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_16
       (.I0(frames_bad[13]),
        .I1(frames_bad[12]),
        .I2(frames_bad[15]),
        .I3(frames_bad[14]),
        .O(bad_seen_cam_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_17
       (.I0(frames_bad[21]),
        .I1(frames_bad[20]),
        .I2(frames_bad[23]),
        .I3(frames_bad[22]),
        .O(bad_seen_cam_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bad_seen_cam_i_2
       (.I0(bad_seen_cam_i_6_n_0),
        .I1(frames_dropped[18]),
        .I2(frames_dropped[17]),
        .I3(frames_dropped[19]),
        .I4(frames_dropped[16]),
        .I5(bad_seen_cam_i_7_n_0),
        .O(bad_seen_cam_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bad_seen_cam_i_3
       (.I0(bad_seen_cam_i_8_n_0),
        .I1(frames_dropped[10]),
        .I2(frames_dropped[9]),
        .I3(frames_dropped[11]),
        .I4(frames_dropped[8]),
        .I5(bad_seen_cam_i_9_n_0),
        .O(bad_seen_cam_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bad_seen_cam_i_4
       (.I0(bad_seen_cam_i_10_n_0),
        .I1(frames_bad[2]),
        .I2(frames_bad[1]),
        .I3(frames_bad[3]),
        .I4(frames_bad[0]),
        .I5(bad_seen_cam_i_11_n_0),
        .O(bad_seen_cam_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bad_seen_cam_i_5
       (.I0(bad_seen_cam_i_12_n_0),
        .I1(frames_bad[26]),
        .I2(frames_bad[25]),
        .I3(frames_bad[27]),
        .I4(frames_bad[24]),
        .I5(bad_seen_cam_i_13_n_0),
        .O(bad_seen_cam_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_6
       (.I0(frames_dropped[23]),
        .I1(frames_dropped[22]),
        .I2(frames_dropped[21]),
        .I3(frames_dropped[20]),
        .O(bad_seen_cam_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    bad_seen_cam_i_7
       (.I0(frames_dropped[26]),
        .I1(frames_dropped[27]),
        .I2(frames_dropped[24]),
        .I3(frames_dropped[25]),
        .I4(bad_seen_cam_i_14_n_0),
        .O(bad_seen_cam_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    bad_seen_cam_i_8
       (.I0(frames_dropped[14]),
        .I1(frames_dropped[13]),
        .I2(frames_dropped[15]),
        .I3(frames_dropped[12]),
        .O(bad_seen_cam_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    bad_seen_cam_i_9
       (.I0(frames_dropped[0]),
        .I1(frames_dropped[3]),
        .I2(frames_dropped[1]),
        .I3(frames_dropped[2]),
        .I4(bad_seen_cam_i_15_n_0),
        .O(bad_seen_cam_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000E00)) 
    \frames_bad[0]_i_1 
       (.I0(\frames_bad[0]_i_3_n_0 ),
        .I1(\frames_bad[0]_i_4_n_0 ),
        .I2(\frames_bad_reg[31]_0 ),
        .I3(\frames_dropped_reg[31]_0 ),
        .I4(overflow_seen_reg_0),
        .I5(fifo_overflow_pulse),
        .O(\frames_bad[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_bad[0]_i_10 
       (.I0(frames_bad[4]),
        .I1(frames_bad[3]),
        .I2(frames_bad[21]),
        .I3(frames_bad[2]),
        .O(\frames_bad[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_bad[0]_i_11 
       (.I0(frames_bad[25]),
        .I1(frames_bad[24]),
        .I2(frames_bad[30]),
        .I3(frames_bad[20]),
        .O(\frames_bad[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_bad[0]_i_3 
       (.I0(\frames_bad[0]_i_6_n_0 ),
        .I1(frames_bad[12]),
        .I2(frames_bad[9]),
        .I3(frames_bad[14]),
        .I4(frames_bad[5]),
        .I5(\frames_bad[0]_i_7_n_0 ),
        .O(\frames_bad[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_bad[0]_i_4 
       (.I0(\frames_bad[0]_i_8_n_0 ),
        .I1(frames_bad[29]),
        .I2(frames_bad[10]),
        .I3(frames_bad[22]),
        .I4(frames_bad[11]),
        .I5(\frames_bad[0]_i_9_n_0 ),
        .O(\frames_bad[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frames_bad[0]_i_5 
       (.I0(frames_bad[0]),
        .O(\frames_bad[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_bad[0]_i_6 
       (.I0(frames_bad[15]),
        .I1(frames_bad[8]),
        .I2(frames_bad[23]),
        .I3(frames_bad[16]),
        .O(\frames_bad[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_bad[0]_i_7 
       (.I0(frames_bad[26]),
        .I1(frames_bad[31]),
        .I2(frames_bad[18]),
        .I3(frames_bad[27]),
        .I4(\frames_bad[0]_i_10_n_0 ),
        .O(\frames_bad[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_bad[0]_i_8 
       (.I0(frames_bad[28]),
        .I1(frames_bad[13]),
        .I2(frames_bad[6]),
        .I3(frames_bad[1]),
        .O(\frames_bad[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_bad[0]_i_9 
       (.I0(frames_bad[0]),
        .I1(frames_bad[7]),
        .I2(frames_bad[17]),
        .I3(frames_bad[19]),
        .I4(\frames_bad[0]_i_11_n_0 ),
        .O(\frames_bad[0]_i_9_n_0 ));
  FDCE \frames_bad_reg[0] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[0]_i_2_n_7 ),
        .Q(frames_bad[0]));
  CARRY4 \frames_bad_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frames_bad_reg[0]_i_2_n_0 ,\frames_bad_reg[0]_i_2_n_1 ,\frames_bad_reg[0]_i_2_n_2 ,\frames_bad_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frames_bad_reg[0]_i_2_n_4 ,\frames_bad_reg[0]_i_2_n_5 ,\frames_bad_reg[0]_i_2_n_6 ,\frames_bad_reg[0]_i_2_n_7 }),
        .S({frames_bad[3:1],\frames_bad[0]_i_5_n_0 }));
  FDCE \frames_bad_reg[10] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[8]_i_1_n_5 ),
        .Q(frames_bad[10]));
  FDCE \frames_bad_reg[11] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[8]_i_1_n_4 ),
        .Q(frames_bad[11]));
  FDCE \frames_bad_reg[12] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[12]_i_1_n_7 ),
        .Q(frames_bad[12]));
  CARRY4 \frames_bad_reg[12]_i_1 
       (.CI(\frames_bad_reg[8]_i_1_n_0 ),
        .CO({\frames_bad_reg[12]_i_1_n_0 ,\frames_bad_reg[12]_i_1_n_1 ,\frames_bad_reg[12]_i_1_n_2 ,\frames_bad_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[12]_i_1_n_4 ,\frames_bad_reg[12]_i_1_n_5 ,\frames_bad_reg[12]_i_1_n_6 ,\frames_bad_reg[12]_i_1_n_7 }),
        .S(frames_bad[15:12]));
  FDCE \frames_bad_reg[13] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[12]_i_1_n_6 ),
        .Q(frames_bad[13]));
  FDCE \frames_bad_reg[14] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[12]_i_1_n_5 ),
        .Q(frames_bad[14]));
  FDCE \frames_bad_reg[15] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[12]_i_1_n_4 ),
        .Q(frames_bad[15]));
  FDCE \frames_bad_reg[16] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[16]_i_1_n_7 ),
        .Q(frames_bad[16]));
  CARRY4 \frames_bad_reg[16]_i_1 
       (.CI(\frames_bad_reg[12]_i_1_n_0 ),
        .CO({\frames_bad_reg[16]_i_1_n_0 ,\frames_bad_reg[16]_i_1_n_1 ,\frames_bad_reg[16]_i_1_n_2 ,\frames_bad_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[16]_i_1_n_4 ,\frames_bad_reg[16]_i_1_n_5 ,\frames_bad_reg[16]_i_1_n_6 ,\frames_bad_reg[16]_i_1_n_7 }),
        .S(frames_bad[19:16]));
  FDCE \frames_bad_reg[17] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[16]_i_1_n_6 ),
        .Q(frames_bad[17]));
  FDCE \frames_bad_reg[18] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[16]_i_1_n_5 ),
        .Q(frames_bad[18]));
  FDCE \frames_bad_reg[19] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[16]_i_1_n_4 ),
        .Q(frames_bad[19]));
  FDCE \frames_bad_reg[1] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[0]_i_2_n_6 ),
        .Q(frames_bad[1]));
  FDCE \frames_bad_reg[20] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[20]_i_1_n_7 ),
        .Q(frames_bad[20]));
  CARRY4 \frames_bad_reg[20]_i_1 
       (.CI(\frames_bad_reg[16]_i_1_n_0 ),
        .CO({\frames_bad_reg[20]_i_1_n_0 ,\frames_bad_reg[20]_i_1_n_1 ,\frames_bad_reg[20]_i_1_n_2 ,\frames_bad_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[20]_i_1_n_4 ,\frames_bad_reg[20]_i_1_n_5 ,\frames_bad_reg[20]_i_1_n_6 ,\frames_bad_reg[20]_i_1_n_7 }),
        .S(frames_bad[23:20]));
  FDCE \frames_bad_reg[21] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[20]_i_1_n_6 ),
        .Q(frames_bad[21]));
  FDCE \frames_bad_reg[22] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[20]_i_1_n_5 ),
        .Q(frames_bad[22]));
  FDCE \frames_bad_reg[23] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[20]_i_1_n_4 ),
        .Q(frames_bad[23]));
  FDCE \frames_bad_reg[24] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[24]_i_1_n_7 ),
        .Q(frames_bad[24]));
  CARRY4 \frames_bad_reg[24]_i_1 
       (.CI(\frames_bad_reg[20]_i_1_n_0 ),
        .CO({\frames_bad_reg[24]_i_1_n_0 ,\frames_bad_reg[24]_i_1_n_1 ,\frames_bad_reg[24]_i_1_n_2 ,\frames_bad_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[24]_i_1_n_4 ,\frames_bad_reg[24]_i_1_n_5 ,\frames_bad_reg[24]_i_1_n_6 ,\frames_bad_reg[24]_i_1_n_7 }),
        .S(frames_bad[27:24]));
  FDCE \frames_bad_reg[25] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[24]_i_1_n_6 ),
        .Q(frames_bad[25]));
  FDCE \frames_bad_reg[26] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[24]_i_1_n_5 ),
        .Q(frames_bad[26]));
  FDCE \frames_bad_reg[27] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(overflow_seen_reg_1),
        .D(\frames_bad_reg[24]_i_1_n_4 ),
        .Q(frames_bad[27]));
  FDCE \frames_bad_reg[28] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(overflow_seen_reg_1),
        .D(\frames_bad_reg[28]_i_1_n_7 ),
        .Q(frames_bad[28]));
  CARRY4 \frames_bad_reg[28]_i_1 
       (.CI(\frames_bad_reg[24]_i_1_n_0 ),
        .CO({\NLW_frames_bad_reg[28]_i_1_CO_UNCONNECTED [3],\frames_bad_reg[28]_i_1_n_1 ,\frames_bad_reg[28]_i_1_n_2 ,\frames_bad_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[28]_i_1_n_4 ,\frames_bad_reg[28]_i_1_n_5 ,\frames_bad_reg[28]_i_1_n_6 ,\frames_bad_reg[28]_i_1_n_7 }),
        .S(frames_bad[31:28]));
  FDCE \frames_bad_reg[29] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(overflow_seen_reg_1),
        .D(\frames_bad_reg[28]_i_1_n_6 ),
        .Q(frames_bad[29]));
  FDCE \frames_bad_reg[2] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[0]_i_2_n_5 ),
        .Q(frames_bad[2]));
  FDCE \frames_bad_reg[30] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(overflow_seen_reg_1),
        .D(\frames_bad_reg[28]_i_1_n_5 ),
        .Q(frames_bad[30]));
  FDCE \frames_bad_reg[31] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(overflow_seen_reg_1),
        .D(\frames_bad_reg[28]_i_1_n_4 ),
        .Q(frames_bad[31]));
  FDCE \frames_bad_reg[3] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[0]_i_2_n_4 ),
        .Q(frames_bad[3]));
  FDCE \frames_bad_reg[4] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[4]_i_1_n_7 ),
        .Q(frames_bad[4]));
  CARRY4 \frames_bad_reg[4]_i_1 
       (.CI(\frames_bad_reg[0]_i_2_n_0 ),
        .CO({\frames_bad_reg[4]_i_1_n_0 ,\frames_bad_reg[4]_i_1_n_1 ,\frames_bad_reg[4]_i_1_n_2 ,\frames_bad_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[4]_i_1_n_4 ,\frames_bad_reg[4]_i_1_n_5 ,\frames_bad_reg[4]_i_1_n_6 ,\frames_bad_reg[4]_i_1_n_7 }),
        .S(frames_bad[7:4]));
  FDCE \frames_bad_reg[5] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[4]_i_1_n_6 ),
        .Q(frames_bad[5]));
  FDCE \frames_bad_reg[6] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[4]_i_1_n_5 ),
        .Q(frames_bad[6]));
  FDCE \frames_bad_reg[7] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[4]_i_1_n_4 ),
        .Q(frames_bad[7]));
  FDCE \frames_bad_reg[8] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[8]_i_1_n_7 ),
        .Q(frames_bad[8]));
  CARRY4 \frames_bad_reg[8]_i_1 
       (.CI(\frames_bad_reg[4]_i_1_n_0 ),
        .CO({\frames_bad_reg[8]_i_1_n_0 ,\frames_bad_reg[8]_i_1_n_1 ,\frames_bad_reg[8]_i_1_n_2 ,\frames_bad_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_bad_reg[8]_i_1_n_4 ,\frames_bad_reg[8]_i_1_n_5 ,\frames_bad_reg[8]_i_1_n_6 ,\frames_bad_reg[8]_i_1_n_7 }),
        .S(frames_bad[11:8]));
  FDCE \frames_bad_reg[9] 
       (.C(cam_pclk),
        .CE(\frames_bad[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_bad_reg[8]_i_1_n_6 ),
        .Q(frames_bad[9]));
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    \frames_dropped[0]_i_1 
       (.I0(\frames_dropped[0]_i_3_n_0 ),
        .I1(\frames_dropped[0]_i_4_n_0 ),
        .I2(\frames_dropped_reg[31]_0 ),
        .I3(fifo_overflow_pulse),
        .I4(overflow_seen_reg_0),
        .O(\frames_dropped[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_dropped[0]_i_10 
       (.I0(frames_dropped[31]),
        .I1(frames_dropped[24]),
        .I2(frames_dropped[29]),
        .I3(frames_dropped[22]),
        .O(\frames_dropped[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_dropped[0]_i_11 
       (.I0(frames_dropped[30]),
        .I1(frames_dropped[17]),
        .I2(frames_dropped[28]),
        .I3(frames_dropped[8]),
        .O(\frames_dropped[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_dropped[0]_i_3 
       (.I0(\frames_dropped[0]_i_6_n_0 ),
        .I1(frames_dropped[9]),
        .I2(frames_dropped[2]),
        .I3(frames_dropped[25]),
        .I4(frames_dropped[1]),
        .I5(\frames_dropped[0]_i_7_n_0 ),
        .O(\frames_dropped[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_dropped[0]_i_4 
       (.I0(\frames_dropped[0]_i_8_n_0 ),
        .I1(frames_dropped[27]),
        .I2(frames_dropped[26]),
        .I3(frames_dropped[18]),
        .I4(frames_dropped[11]),
        .I5(\frames_dropped[0]_i_9_n_0 ),
        .O(\frames_dropped[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frames_dropped[0]_i_5 
       (.I0(frames_dropped[0]),
        .O(\frames_dropped[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_dropped[0]_i_6 
       (.I0(frames_dropped[15]),
        .I1(frames_dropped[14]),
        .I2(frames_dropped[13]),
        .I3(frames_dropped[4]),
        .O(\frames_dropped[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_dropped[0]_i_7 
       (.I0(frames_dropped[10]),
        .I1(frames_dropped[12]),
        .I2(frames_dropped[5]),
        .I3(frames_dropped[6]),
        .I4(\frames_dropped[0]_i_10_n_0 ),
        .O(\frames_dropped[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_dropped[0]_i_8 
       (.I0(frames_dropped[3]),
        .I1(frames_dropped[0]),
        .I2(frames_dropped[23]),
        .I3(frames_dropped[16]),
        .O(\frames_dropped[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_dropped[0]_i_9 
       (.I0(frames_dropped[19]),
        .I1(frames_dropped[20]),
        .I2(frames_dropped[7]),
        .I3(frames_dropped[21]),
        .I4(\frames_dropped[0]_i_11_n_0 ),
        .O(\frames_dropped[0]_i_9_n_0 ));
  FDCE \frames_dropped_reg[0] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[0]_i_2_n_7 ),
        .Q(frames_dropped[0]));
  CARRY4 \frames_dropped_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frames_dropped_reg[0]_i_2_n_0 ,\frames_dropped_reg[0]_i_2_n_1 ,\frames_dropped_reg[0]_i_2_n_2 ,\frames_dropped_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frames_dropped_reg[0]_i_2_n_4 ,\frames_dropped_reg[0]_i_2_n_5 ,\frames_dropped_reg[0]_i_2_n_6 ,\frames_dropped_reg[0]_i_2_n_7 }),
        .S({frames_dropped[3:1],\frames_dropped[0]_i_5_n_0 }));
  FDCE \frames_dropped_reg[10] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[8]_i_1_n_5 ),
        .Q(frames_dropped[10]));
  FDCE \frames_dropped_reg[11] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[8]_i_1_n_4 ),
        .Q(frames_dropped[11]));
  FDCE \frames_dropped_reg[12] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[12]_i_1_n_7 ),
        .Q(frames_dropped[12]));
  CARRY4 \frames_dropped_reg[12]_i_1 
       (.CI(\frames_dropped_reg[8]_i_1_n_0 ),
        .CO({\frames_dropped_reg[12]_i_1_n_0 ,\frames_dropped_reg[12]_i_1_n_1 ,\frames_dropped_reg[12]_i_1_n_2 ,\frames_dropped_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[12]_i_1_n_4 ,\frames_dropped_reg[12]_i_1_n_5 ,\frames_dropped_reg[12]_i_1_n_6 ,\frames_dropped_reg[12]_i_1_n_7 }),
        .S(frames_dropped[15:12]));
  FDCE \frames_dropped_reg[13] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[12]_i_1_n_6 ),
        .Q(frames_dropped[13]));
  FDCE \frames_dropped_reg[14] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[12]_i_1_n_5 ),
        .Q(frames_dropped[14]));
  FDCE \frames_dropped_reg[15] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[12]_i_1_n_4 ),
        .Q(frames_dropped[15]));
  FDCE \frames_dropped_reg[16] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[16]_i_1_n_7 ),
        .Q(frames_dropped[16]));
  CARRY4 \frames_dropped_reg[16]_i_1 
       (.CI(\frames_dropped_reg[12]_i_1_n_0 ),
        .CO({\frames_dropped_reg[16]_i_1_n_0 ,\frames_dropped_reg[16]_i_1_n_1 ,\frames_dropped_reg[16]_i_1_n_2 ,\frames_dropped_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[16]_i_1_n_4 ,\frames_dropped_reg[16]_i_1_n_5 ,\frames_dropped_reg[16]_i_1_n_6 ,\frames_dropped_reg[16]_i_1_n_7 }),
        .S(frames_dropped[19:16]));
  FDCE \frames_dropped_reg[17] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[16]_i_1_n_6 ),
        .Q(frames_dropped[17]));
  FDCE \frames_dropped_reg[18] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[16]_i_1_n_5 ),
        .Q(frames_dropped[18]));
  FDCE \frames_dropped_reg[19] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[16]_i_1_n_4 ),
        .Q(frames_dropped[19]));
  FDCE \frames_dropped_reg[1] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[0]_i_2_n_6 ),
        .Q(frames_dropped[1]));
  FDCE \frames_dropped_reg[20] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[20]_i_1_n_7 ),
        .Q(frames_dropped[20]));
  CARRY4 \frames_dropped_reg[20]_i_1 
       (.CI(\frames_dropped_reg[16]_i_1_n_0 ),
        .CO({\frames_dropped_reg[20]_i_1_n_0 ,\frames_dropped_reg[20]_i_1_n_1 ,\frames_dropped_reg[20]_i_1_n_2 ,\frames_dropped_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[20]_i_1_n_4 ,\frames_dropped_reg[20]_i_1_n_5 ,\frames_dropped_reg[20]_i_1_n_6 ,\frames_dropped_reg[20]_i_1_n_7 }),
        .S(frames_dropped[23:20]));
  FDCE \frames_dropped_reg[21] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[20]_i_1_n_6 ),
        .Q(frames_dropped[21]));
  FDCE \frames_dropped_reg[22] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[20]_i_1_n_5 ),
        .Q(frames_dropped[22]));
  FDCE \frames_dropped_reg[23] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[20]_i_1_n_4 ),
        .Q(frames_dropped[23]));
  FDCE \frames_dropped_reg[24] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[24]_i_1_n_7 ),
        .Q(frames_dropped[24]));
  CARRY4 \frames_dropped_reg[24]_i_1 
       (.CI(\frames_dropped_reg[20]_i_1_n_0 ),
        .CO({\frames_dropped_reg[24]_i_1_n_0 ,\frames_dropped_reg[24]_i_1_n_1 ,\frames_dropped_reg[24]_i_1_n_2 ,\frames_dropped_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[24]_i_1_n_4 ,\frames_dropped_reg[24]_i_1_n_5 ,\frames_dropped_reg[24]_i_1_n_6 ,\frames_dropped_reg[24]_i_1_n_7 }),
        .S(frames_dropped[27:24]));
  FDCE \frames_dropped_reg[25] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[24]_i_1_n_6 ),
        .Q(frames_dropped[25]));
  FDCE \frames_dropped_reg[26] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[24]_i_1_n_5 ),
        .Q(frames_dropped[26]));
  FDCE \frames_dropped_reg[27] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[24]_i_1_n_4 ),
        .Q(frames_dropped[27]));
  FDCE \frames_dropped_reg[28] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[28]_i_1_n_7 ),
        .Q(frames_dropped[28]));
  CARRY4 \frames_dropped_reg[28]_i_1 
       (.CI(\frames_dropped_reg[24]_i_1_n_0 ),
        .CO({\NLW_frames_dropped_reg[28]_i_1_CO_UNCONNECTED [3],\frames_dropped_reg[28]_i_1_n_1 ,\frames_dropped_reg[28]_i_1_n_2 ,\frames_dropped_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[28]_i_1_n_4 ,\frames_dropped_reg[28]_i_1_n_5 ,\frames_dropped_reg[28]_i_1_n_6 ,\frames_dropped_reg[28]_i_1_n_7 }),
        .S(frames_dropped[31:28]));
  FDCE \frames_dropped_reg[29] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[28]_i_1_n_6 ),
        .Q(frames_dropped[29]));
  FDCE \frames_dropped_reg[2] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[0]_i_2_n_5 ),
        .Q(frames_dropped[2]));
  FDCE \frames_dropped_reg[30] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[28]_i_1_n_5 ),
        .Q(frames_dropped[30]));
  FDCE \frames_dropped_reg[31] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[28]_i_1_n_4 ),
        .Q(frames_dropped[31]));
  FDCE \frames_dropped_reg[3] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[0]_i_2_n_4 ),
        .Q(frames_dropped[3]));
  FDCE \frames_dropped_reg[4] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[4]_i_1_n_7 ),
        .Q(frames_dropped[4]));
  CARRY4 \frames_dropped_reg[4]_i_1 
       (.CI(\frames_dropped_reg[0]_i_2_n_0 ),
        .CO({\frames_dropped_reg[4]_i_1_n_0 ,\frames_dropped_reg[4]_i_1_n_1 ,\frames_dropped_reg[4]_i_1_n_2 ,\frames_dropped_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[4]_i_1_n_4 ,\frames_dropped_reg[4]_i_1_n_5 ,\frames_dropped_reg[4]_i_1_n_6 ,\frames_dropped_reg[4]_i_1_n_7 }),
        .S(frames_dropped[7:4]));
  FDCE \frames_dropped_reg[5] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[4]_i_1_n_6 ),
        .Q(frames_dropped[5]));
  FDCE \frames_dropped_reg[6] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[4]_i_1_n_5 ),
        .Q(frames_dropped[6]));
  FDCE \frames_dropped_reg[7] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[4]_i_1_n_4 ),
        .Q(frames_dropped[7]));
  FDCE \frames_dropped_reg[8] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[8]_i_1_n_7 ),
        .Q(frames_dropped[8]));
  CARRY4 \frames_dropped_reg[8]_i_1 
       (.CI(\frames_dropped_reg[4]_i_1_n_0 ),
        .CO({\frames_dropped_reg[8]_i_1_n_0 ,\frames_dropped_reg[8]_i_1_n_1 ,\frames_dropped_reg[8]_i_1_n_2 ,\frames_dropped_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_dropped_reg[8]_i_1_n_4 ,\frames_dropped_reg[8]_i_1_n_5 ,\frames_dropped_reg[8]_i_1_n_6 ,\frames_dropped_reg[8]_i_1_n_7 }),
        .S(frames_dropped[11:8]));
  FDCE \frames_dropped_reg[9] 
       (.C(cam_pclk),
        .CE(\frames_dropped[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_dropped_reg[8]_i_1_n_6 ),
        .Q(frames_dropped[9]));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \frames_good[0]_i_1 
       (.I0(\frames_good[0]_i_3_n_0 ),
        .I1(\frames_good[0]_i_4_n_0 ),
        .I2(\frames_bad_reg[31]_0 ),
        .I3(\frames_dropped_reg[31]_0 ),
        .I4(overflow_seen_reg_0),
        .I5(fifo_overflow_pulse),
        .O(\frames_good[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_good[0]_i_10 
       (.I0(frames_good[17]),
        .I1(frames_good[23]),
        .I2(frames_good[21]),
        .I3(frames_good[22]),
        .I4(\frames_good[0]_i_12_n_0 ),
        .O(\frames_good[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_good[0]_i_11 
       (.I0(frames_good[30]),
        .I1(frames_good[9]),
        .I2(frames_good[29]),
        .I3(frames_good[1]),
        .O(\frames_good[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_good[0]_i_12 
       (.I0(frames_good[25]),
        .I1(frames_good[16]),
        .I2(frames_good[26]),
        .I3(frames_good[24]),
        .O(\frames_good[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_good[0]_i_3 
       (.I0(\frames_good[0]_i_7_n_0 ),
        .I1(frames_good[11]),
        .I2(frames_good[10]),
        .I3(frames_good[31]),
        .I4(frames_good[19]),
        .I5(\frames_good[0]_i_8_n_0 ),
        .O(\frames_good[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \frames_good[0]_i_4 
       (.I0(\frames_good[0]_i_9_n_0 ),
        .I1(frames_good[5]),
        .I2(frames_good[4]),
        .I3(frames_good[27]),
        .I4(frames_good[2]),
        .I5(\frames_good[0]_i_10_n_0 ),
        .O(\frames_good[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frames_good[0]_i_6 
       (.I0(frames_good[0]),
        .O(\frames_good[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_good[0]_i_7 
       (.I0(frames_good[15]),
        .I1(frames_good[14]),
        .I2(frames_good[13]),
        .I3(frames_good[12]),
        .O(\frames_good[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \frames_good[0]_i_8 
       (.I0(frames_good[0]),
        .I1(frames_good[20]),
        .I2(frames_good[3]),
        .I3(frames_good[28]),
        .I4(\frames_good[0]_i_11_n_0 ),
        .O(\frames_good[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frames_good[0]_i_9 
       (.I0(frames_good[18]),
        .I1(frames_good[8]),
        .I2(frames_good[7]),
        .I3(frames_good[6]),
        .O(\frames_good[0]_i_9_n_0 ));
  FDCE \frames_good_reg[0] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[0]_i_2_n_7 ),
        .Q(frames_good[0]));
  CARRY4 \frames_good_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frames_good_reg[0]_i_2_n_0 ,\frames_good_reg[0]_i_2_n_1 ,\frames_good_reg[0]_i_2_n_2 ,\frames_good_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frames_good_reg[0]_i_2_n_4 ,\frames_good_reg[0]_i_2_n_5 ,\frames_good_reg[0]_i_2_n_6 ,\frames_good_reg[0]_i_2_n_7 }),
        .S({frames_good[3:1],\frames_good[0]_i_6_n_0 }));
  FDCE \frames_good_reg[10] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[8]_i_1_n_5 ),
        .Q(frames_good[10]));
  FDCE \frames_good_reg[11] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[8]_i_1_n_4 ),
        .Q(frames_good[11]));
  FDCE \frames_good_reg[12] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[12]_i_1_n_7 ),
        .Q(frames_good[12]));
  CARRY4 \frames_good_reg[12]_i_1 
       (.CI(\frames_good_reg[8]_i_1_n_0 ),
        .CO({\frames_good_reg[12]_i_1_n_0 ,\frames_good_reg[12]_i_1_n_1 ,\frames_good_reg[12]_i_1_n_2 ,\frames_good_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[12]_i_1_n_4 ,\frames_good_reg[12]_i_1_n_5 ,\frames_good_reg[12]_i_1_n_6 ,\frames_good_reg[12]_i_1_n_7 }),
        .S(frames_good[15:12]));
  FDCE \frames_good_reg[13] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[12]_i_1_n_6 ),
        .Q(frames_good[13]));
  FDCE \frames_good_reg[14] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[12]_i_1_n_5 ),
        .Q(frames_good[14]));
  FDCE \frames_good_reg[15] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[12]_i_1_n_4 ),
        .Q(frames_good[15]));
  FDCE \frames_good_reg[16] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[16]_i_1_n_7 ),
        .Q(frames_good[16]));
  CARRY4 \frames_good_reg[16]_i_1 
       (.CI(\frames_good_reg[12]_i_1_n_0 ),
        .CO({\frames_good_reg[16]_i_1_n_0 ,\frames_good_reg[16]_i_1_n_1 ,\frames_good_reg[16]_i_1_n_2 ,\frames_good_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[16]_i_1_n_4 ,\frames_good_reg[16]_i_1_n_5 ,\frames_good_reg[16]_i_1_n_6 ,\frames_good_reg[16]_i_1_n_7 }),
        .S(frames_good[19:16]));
  FDCE \frames_good_reg[17] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[16]_i_1_n_6 ),
        .Q(frames_good[17]));
  FDCE \frames_good_reg[18] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[16]_i_1_n_5 ),
        .Q(frames_good[18]));
  FDCE \frames_good_reg[19] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[16]_i_1_n_4 ),
        .Q(frames_good[19]));
  FDCE \frames_good_reg[1] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[0]_i_2_n_6 ),
        .Q(frames_good[1]));
  FDCE \frames_good_reg[20] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[20]_i_1_n_7 ),
        .Q(frames_good[20]));
  CARRY4 \frames_good_reg[20]_i_1 
       (.CI(\frames_good_reg[16]_i_1_n_0 ),
        .CO({\frames_good_reg[20]_i_1_n_0 ,\frames_good_reg[20]_i_1_n_1 ,\frames_good_reg[20]_i_1_n_2 ,\frames_good_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[20]_i_1_n_4 ,\frames_good_reg[20]_i_1_n_5 ,\frames_good_reg[20]_i_1_n_6 ,\frames_good_reg[20]_i_1_n_7 }),
        .S(frames_good[23:20]));
  FDCE \frames_good_reg[21] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[20]_i_1_n_6 ),
        .Q(frames_good[21]));
  FDCE \frames_good_reg[22] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[20]_i_1_n_5 ),
        .Q(frames_good[22]));
  FDCE \frames_good_reg[23] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[20]_i_1_n_4 ),
        .Q(frames_good[23]));
  FDCE \frames_good_reg[24] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[24]_i_1_n_7 ),
        .Q(frames_good[24]));
  CARRY4 \frames_good_reg[24]_i_1 
       (.CI(\frames_good_reg[20]_i_1_n_0 ),
        .CO({\frames_good_reg[24]_i_1_n_0 ,\frames_good_reg[24]_i_1_n_1 ,\frames_good_reg[24]_i_1_n_2 ,\frames_good_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[24]_i_1_n_4 ,\frames_good_reg[24]_i_1_n_5 ,\frames_good_reg[24]_i_1_n_6 ,\frames_good_reg[24]_i_1_n_7 }),
        .S(frames_good[27:24]));
  FDCE \frames_good_reg[25] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[24]_i_1_n_6 ),
        .Q(frames_good[25]));
  FDCE \frames_good_reg[26] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[24]_i_1_n_5 ),
        .Q(frames_good[26]));
  FDCE \frames_good_reg[27] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[24]_i_1_n_4 ),
        .Q(frames_good[27]));
  FDCE \frames_good_reg[28] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[28]_i_1_n_7 ),
        .Q(frames_good[28]));
  CARRY4 \frames_good_reg[28]_i_1 
       (.CI(\frames_good_reg[24]_i_1_n_0 ),
        .CO({\NLW_frames_good_reg[28]_i_1_CO_UNCONNECTED [3],\frames_good_reg[28]_i_1_n_1 ,\frames_good_reg[28]_i_1_n_2 ,\frames_good_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[28]_i_1_n_4 ,\frames_good_reg[28]_i_1_n_5 ,\frames_good_reg[28]_i_1_n_6 ,\frames_good_reg[28]_i_1_n_7 }),
        .S(frames_good[31:28]));
  FDCE \frames_good_reg[29] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[28]_i_1_n_6 ),
        .Q(frames_good[29]));
  FDCE \frames_good_reg[2] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[0]_i_2_n_5 ),
        .Q(frames_good[2]));
  FDCE \frames_good_reg[30] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[28]_i_1_n_5 ),
        .Q(frames_good[30]));
  FDCE \frames_good_reg[31] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(init_sync_reg),
        .D(\frames_good_reg[28]_i_1_n_4 ),
        .Q(frames_good[31]));
  FDCE \frames_good_reg[3] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[0]_i_2_n_4 ),
        .Q(frames_good[3]));
  FDCE \frames_good_reg[4] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[4]_i_1_n_7 ),
        .Q(frames_good[4]));
  CARRY4 \frames_good_reg[4]_i_1 
       (.CI(\frames_good_reg[0]_i_2_n_0 ),
        .CO({\frames_good_reg[4]_i_1_n_0 ,\frames_good_reg[4]_i_1_n_1 ,\frames_good_reg[4]_i_1_n_2 ,\frames_good_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[4]_i_1_n_4 ,\frames_good_reg[4]_i_1_n_5 ,\frames_good_reg[4]_i_1_n_6 ,\frames_good_reg[4]_i_1_n_7 }),
        .S(frames_good[7:4]));
  FDCE \frames_good_reg[5] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[4]_i_1_n_6 ),
        .Q(frames_good[5]));
  FDCE \frames_good_reg[6] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[4]_i_1_n_5 ),
        .Q(frames_good[6]));
  FDCE \frames_good_reg[7] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[4]_i_1_n_4 ),
        .Q(frames_good[7]));
  FDCE \frames_good_reg[8] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[8]_i_1_n_7 ),
        .Q(frames_good[8]));
  CARRY4 \frames_good_reg[8]_i_1 
       (.CI(\frames_good_reg[4]_i_1_n_0 ),
        .CO({\frames_good_reg[8]_i_1_n_0 ,\frames_good_reg[8]_i_1_n_1 ,\frames_good_reg[8]_i_1_n_2 ,\frames_good_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frames_good_reg[8]_i_1_n_4 ,\frames_good_reg[8]_i_1_n_5 ,\frames_good_reg[8]_i_1_n_6 ,\frames_good_reg[8]_i_1_n_7 }),
        .S(frames_good[11:8]));
  FDCE \frames_good_reg[9] 
       (.C(cam_pclk),
        .CE(\frames_good[0]_i_1_n_0 ),
        .CLR(\frames_good_reg[12]_0 ),
        .D(\frames_good_reg[8]_i_1_n_6 ),
        .Q(frames_good[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_seen_cam_i_1
       (.I0(good_seen_cam_i_2_n_0),
        .I1(good_seen_cam_i_3_n_0),
        .I2(good_seen_cam_i_4_n_0),
        .I3(good_seen_cam_i_5_n_0),
        .O(\frames_good_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_seen_cam_i_2
       (.I0(frames_good[4]),
        .I1(frames_good[5]),
        .I2(frames_good[6]),
        .I3(frames_good[7]),
        .I4(good_seen_cam_i_6_n_0),
        .O(good_seen_cam_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_seen_cam_i_3
       (.I0(frames_good[9]),
        .I1(frames_good[10]),
        .I2(frames_good[8]),
        .I3(frames_good[11]),
        .I4(good_seen_cam_i_7_n_0),
        .O(good_seen_cam_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_seen_cam_i_4
       (.I0(frames_good[21]),
        .I1(frames_good[22]),
        .I2(frames_good[20]),
        .I3(frames_good[23]),
        .I4(good_seen_cam_i_8_n_0),
        .O(good_seen_cam_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    good_seen_cam_i_5
       (.I0(frames_good[24]),
        .I1(frames_good[25]),
        .I2(frames_good[26]),
        .I3(frames_good[27]),
        .I4(good_seen_cam_i_9_n_0),
        .O(good_seen_cam_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_seen_cam_i_6
       (.I0(frames_good[1]),
        .I1(frames_good[0]),
        .I2(frames_good[3]),
        .I3(frames_good[2]),
        .O(good_seen_cam_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_seen_cam_i_7
       (.I0(frames_good[13]),
        .I1(frames_good[12]),
        .I2(frames_good[15]),
        .I3(frames_good[14]),
        .O(good_seen_cam_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_seen_cam_i_8
       (.I0(frames_good[17]),
        .I1(frames_good[16]),
        .I2(frames_good[19]),
        .I3(frames_good[18]),
        .O(good_seen_cam_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    good_seen_cam_i_9
       (.I0(frames_good[30]),
        .I1(frames_good[28]),
        .I2(frames_good[31]),
        .I3(frames_good[29]),
        .O(good_seen_cam_i_9_n_0));
  FDCE overflow_seen_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(overflow_seen_reg_1),
        .D(overflow_seen_reg_2),
        .Q(overflow_seen_reg_0));
  LUT2 #(
    .INIT(4'h7)) 
    \rgb_s2[7]_i_1 
       (.I0(out),
        .I1(\frames_bad_reg[26]_0 ),
        .O(init_sync_reg));
endmodule

(* ORIG_REF_NAME = "gray_downscale_2x" *) 
module facebox_system_real_camera_source_0_0_gray_downscale_2x
   (m_tuser_reg_0,
    gray_tap_eol,
    \gray_line_count_reg[6] ,
    m_tlast_reg_0,
    gray_frame_done_pulse3_out,
    gray_tap_valid,
    m_tvalid_reg_0,
    Q,
    \y_count_reg[1]_0 ,
    A,
    dst_pulse_reg,
    m_tuser_reg_1,
    gray_tap_data,
    E,
    aclk,
    \y_count_reg[8]_0 ,
    capture_axi_sync,
    aresetn,
    gray_frame_done_pulse_reg,
    gray_frame_done_pulse_reg_0,
    m_tvalid_reg_1,
    gray_tap_valid_0,
    m_tvalid_reg_2,
    m_tuser_reg_2,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tdata,
    x_count0,
    D,
    \x_count_reg[4]_0 ,
    \left_column_sum_reg[8]_0 );
  output m_tuser_reg_0;
  output gray_tap_eol;
  output [7:0]\gray_line_count_reg[6] ;
  output m_tlast_reg_0;
  output gray_frame_done_pulse3_out;
  output gray_tap_valid;
  output m_tvalid_reg_0;
  output [3:0]Q;
  output [1:0]\y_count_reg[1]_0 ;
  output [0:0]A;
  output dst_pulse_reg;
  output m_tuser_reg_1;
  output [7:0]gray_tap_data;
  input [0:0]E;
  input aclk;
  input \y_count_reg[8]_0 ;
  input capture_axi_sync;
  input aresetn;
  input [7:0]gray_frame_done_pulse_reg;
  input gray_frame_done_pulse_reg_0;
  input m_tvalid_reg_1;
  input gray_tap_valid_0;
  input m_tvalid_reg_2;
  input m_tuser_reg_2;
  input [0:0]m_axis_tuser;
  input m_axis_tlast;
  input [7:0]m_axis_tdata;
  input x_count0;
  input [1:0]D;
  input [2:0]\x_count_reg[4]_0 ;
  input [0:0]\left_column_sum_reg[8]_0 ;

  wire [0:0]A;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire aresetn;
  wire capture_axi_sync;
  wire dst_pulse_reg;
  wire gray_frame_done_pulse3_out;
  wire [7:0]gray_frame_done_pulse_reg;
  wire gray_frame_done_pulse_reg_0;
  wire [7:0]\gray_line_count_reg[6] ;
  wire [7:0]gray_tap_data;
  wire gray_tap_eol;
  wire gray_tap_valid;
  wire gray_tap_valid_0;
  wire [8:0]left_column_sum;
  wire \left_column_sum[3]_i_10_n_0 ;
  wire \left_column_sum[3]_i_11_n_0 ;
  wire \left_column_sum[3]_i_12_n_0 ;
  wire \left_column_sum[3]_i_13_n_0 ;
  wire \left_column_sum[3]_i_2_n_0 ;
  wire \left_column_sum[3]_i_3_n_0 ;
  wire \left_column_sum[3]_i_4_n_0 ;
  wire \left_column_sum[3]_i_5_n_0 ;
  wire \left_column_sum[3]_i_6_n_0 ;
  wire \left_column_sum[3]_i_7_n_0 ;
  wire \left_column_sum[3]_i_8_n_0 ;
  wire \left_column_sum[3]_i_9_n_0 ;
  wire \left_column_sum[7]_i_10_n_0 ;
  wire \left_column_sum[7]_i_11_n_0 ;
  wire \left_column_sum[7]_i_12_n_0 ;
  wire \left_column_sum[7]_i_13_n_0 ;
  wire \left_column_sum[7]_i_14_n_0 ;
  wire \left_column_sum[7]_i_2_n_0 ;
  wire \left_column_sum[7]_i_3_n_0 ;
  wire \left_column_sum[7]_i_4_n_0 ;
  wire \left_column_sum[7]_i_5_n_0 ;
  wire \left_column_sum[7]_i_6_n_0 ;
  wire \left_column_sum[7]_i_7_n_0 ;
  wire \left_column_sum[7]_i_8_n_0 ;
  wire \left_column_sum[7]_i_9_n_0 ;
  wire \left_column_sum_reg[3]_i_1_n_0 ;
  wire \left_column_sum_reg[3]_i_1_n_1 ;
  wire \left_column_sum_reg[3]_i_1_n_2 ;
  wire \left_column_sum_reg[3]_i_1_n_3 ;
  wire \left_column_sum_reg[3]_i_1_n_4 ;
  wire \left_column_sum_reg[3]_i_1_n_5 ;
  wire \left_column_sum_reg[3]_i_1_n_6 ;
  wire \left_column_sum_reg[3]_i_1_n_7 ;
  wire \left_column_sum_reg[7]_i_1_n_0 ;
  wire \left_column_sum_reg[7]_i_1_n_1 ;
  wire \left_column_sum_reg[7]_i_1_n_2 ;
  wire \left_column_sum_reg[7]_i_1_n_3 ;
  wire \left_column_sum_reg[7]_i_1_n_4 ;
  wire \left_column_sum_reg[7]_i_1_n_5 ;
  wire \left_column_sum_reg[7]_i_1_n_6 ;
  wire \left_column_sum_reg[7]_i_1_n_7 ;
  wire [0:0]\left_column_sum_reg[8]_0 ;
  wire \left_column_sum_reg[8]_i_2_n_3 ;
  wire line_buffer_reg_0_255_0_0_i_1_n_0;
  wire line_buffer_reg_0_255_0_0_i_2_n_0;
  wire line_buffer_reg_0_255_0_0_i_3_n_0;
  wire line_buffer_reg_0_255_0_0_i_4_n_0;
  wire line_buffer_reg_0_255_0_0_i_6_n_0;
  wire line_buffer_reg_0_255_0_0_i_7_n_0;
  wire line_buffer_reg_0_255_0_0_i_8_n_0;
  wire line_buffer_reg_0_255_0_0_i_9_n_0;
  wire line_buffer_reg_0_255_0_0_n_0;
  wire line_buffer_reg_0_255_1_1_n_0;
  wire line_buffer_reg_0_255_2_2_n_0;
  wire line_buffer_reg_0_255_3_3_n_0;
  wire line_buffer_reg_0_255_4_4_n_0;
  wire line_buffer_reg_0_255_5_5_n_0;
  wire line_buffer_reg_0_255_6_6_n_0;
  wire line_buffer_reg_0_255_7_7_n_0;
  wire line_buffer_reg_0_31_0_0__0_n_0;
  wire line_buffer_reg_0_31_0_0__1_n_0;
  wire line_buffer_reg_0_31_0_0__2_n_0;
  wire line_buffer_reg_0_31_0_0__3_n_0;
  wire line_buffer_reg_0_31_0_0__4_n_0;
  wire line_buffer_reg_0_31_0_0__5_n_0;
  wire line_buffer_reg_0_31_0_0__6_n_0;
  wire line_buffer_reg_0_31_0_0_i_1_n_0;
  wire line_buffer_reg_0_31_0_0_i_2_n_0;
  wire line_buffer_reg_0_31_0_0_i_3_n_0;
  wire line_buffer_reg_0_31_0_0_i_4_n_0;
  wire line_buffer_reg_0_31_0_0_n_0;
  wire line_buffer_reg_256_511_0_0_i_1_n_0;
  wire line_buffer_reg_256_511_0_0_n_0;
  wire line_buffer_reg_256_511_1_1_n_0;
  wire line_buffer_reg_256_511_2_2_n_0;
  wire line_buffer_reg_256_511_3_3_n_0;
  wire line_buffer_reg_256_511_4_4_n_0;
  wire line_buffer_reg_256_511_5_5_n_0;
  wire line_buffer_reg_256_511_6_6_n_0;
  wire line_buffer_reg_256_511_7_7_n_0;
  wire line_buffer_reg_512_767_0_0_i_1_n_0;
  wire line_buffer_reg_512_767_0_0_n_0;
  wire line_buffer_reg_512_767_1_1_n_0;
  wire line_buffer_reg_512_767_2_2_n_0;
  wire line_buffer_reg_512_767_3_3_n_0;
  wire line_buffer_reg_512_767_4_4_n_0;
  wire line_buffer_reg_512_767_5_5_n_0;
  wire line_buffer_reg_512_767_6_6_n_0;
  wire line_buffer_reg_512_767_7_7_n_0;
  wire m8_tvalid;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire [0:0]m_axis_tuser;
  wire \m_tdata[1]_i_2_n_0 ;
  wire \m_tdata[1]_i_3_n_0 ;
  wire \m_tdata[1]_i_4_n_0 ;
  wire \m_tdata[1]_i_5_n_0 ;
  wire \m_tdata[1]_i_6_n_0 ;
  wire \m_tdata[1]_i_7_n_0 ;
  wire \m_tdata[1]_i_8_n_0 ;
  wire \m_tdata[5]_i_2_n_0 ;
  wire \m_tdata[5]_i_3_n_0 ;
  wire \m_tdata[5]_i_4_n_0 ;
  wire \m_tdata[5]_i_5_n_0 ;
  wire \m_tdata[5]_i_6_n_0 ;
  wire \m_tdata[5]_i_7_n_0 ;
  wire \m_tdata[5]_i_8_n_0 ;
  wire \m_tdata[5]_i_9_n_0 ;
  wire \m_tdata[7]_i_5_n_0 ;
  wire \m_tdata_reg[1]_i_1_n_0 ;
  wire \m_tdata_reg[1]_i_1_n_1 ;
  wire \m_tdata_reg[1]_i_1_n_2 ;
  wire \m_tdata_reg[1]_i_1_n_3 ;
  wire \m_tdata_reg[5]_i_1_n_0 ;
  wire \m_tdata_reg[5]_i_1_n_1 ;
  wire \m_tdata_reg[5]_i_1_n_2 ;
  wire \m_tdata_reg[5]_i_1_n_3 ;
  wire m_tlast_i_1_n_0;
  wire m_tlast_i_2_n_0;
  wire m_tlast_i_3_n_0;
  wire m_tlast_reg_0;
  wire m_tuser0;
  wire m_tuser_i_2_n_0;
  wire m_tuser_i_4_n_0;
  wire m_tuser_i_5_n_0;
  wire m_tuser_i_6_n_0;
  wire m_tuser_reg_0;
  wire m_tuser_reg_1;
  wire m_tuser_reg_2;
  wire m_tvalid_i_1_n_0;
  wire m_tvalid_reg_0;
  wire m_tvalid_reg_1;
  wire m_tvalid_reg_2;
  wire [7:0]p_0_in;
  wire path_axi_rst_n;
  wire [9:4]x_count;
  wire x_count0;
  wire \x_count[2]_i_1_n_0 ;
  wire \x_count[3]_i_1_n_0 ;
  wire \x_count[5]_i_1_n_0 ;
  wire \x_count[6]_i_1_n_0 ;
  wire \x_count[7]_i_1_n_0 ;
  wire \x_count[8]_i_1_n_0 ;
  wire \x_count[9]_i_1_n_0 ;
  wire \x_count[9]_i_2_n_0 ;
  wire [2:0]\x_count_reg[4]_0 ;
  wire \y_count[2]_i_1_n_0 ;
  wire \y_count[3]_i_1_n_0 ;
  wire \y_count[3]_i_2_n_0 ;
  wire \y_count[4]_i_1_n_0 ;
  wire \y_count[5]_i_1_n_0 ;
  wire \y_count[6]_i_1_n_0 ;
  wire \y_count[6]_i_2_n_0 ;
  wire \y_count[7]_i_1_n_0 ;
  wire \y_count[7]_i_2_n_0 ;
  wire \y_count[8]_i_2_n_0 ;
  wire \y_count[8]_i_3_n_0 ;
  wire \y_count[8]_i_4_n_0 ;
  wire \y_count[8]_i_5_n_0 ;
  wire \y_count[8]_i_6_n_0 ;
  wire [1:0]\y_count_reg[1]_0 ;
  wire \y_count_reg[8]_0 ;
  wire \y_count_reg_n_0_[2] ;
  wire \y_count_reg_n_0_[3] ;
  wire \y_count_reg_n_0_[4] ;
  wire \y_count_reg_n_0_[5] ;
  wire \y_count_reg_n_0_[6] ;
  wire \y_count_reg_n_0_[7] ;
  wire \y_count_reg_n_0_[8] ;
  wire [3:1]\NLW_left_column_sum_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_left_column_sum_reg[8]_i_2_O_UNCONNECTED ;
  wire [1:0]\NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT5 #(
    .INIT(32'hFFCCFF4C)) 
    drop_active_i_1__1
       (.I0(m_tuser_reg_0),
        .I1(m_tvalid_reg_1),
        .I2(m8_tvalid),
        .I3(gray_tap_valid_0),
        .I4(m_tvalid_reg_2),
        .O(m_tuser_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    frame_active_i_3
       (.I0(gray_tap_valid_0),
        .I1(m8_tvalid),
        .I2(m_tvalid_reg_2),
        .I3(m_tuser_reg_0),
        .O(dst_pulse_reg));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    gray_frame_done_pulse_i_1
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[4]),
        .I2(gray_frame_done_pulse_reg[6]),
        .I3(gray_frame_done_pulse_reg[7]),
        .I4(gray_frame_done_pulse_reg[5]),
        .I5(gray_frame_done_pulse_reg_0),
        .O(gray_frame_done_pulse3_out));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gray_line_count[0]_i_1 
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[0]),
        .O(\gray_line_count_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gray_line_count[1]_i_1 
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[1]),
        .I2(gray_frame_done_pulse_reg[0]),
        .O(\gray_line_count_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \gray_line_count[2]_i_1 
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[0]),
        .I2(gray_frame_done_pulse_reg[1]),
        .I3(gray_frame_done_pulse_reg[2]),
        .O(\gray_line_count_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \gray_line_count[3]_i_1 
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[1]),
        .I2(gray_frame_done_pulse_reg[0]),
        .I3(gray_frame_done_pulse_reg[2]),
        .I4(gray_frame_done_pulse_reg[3]),
        .O(\gray_line_count_reg[6] [3]));
  LUT6 #(
    .INIT(64'hFF00000000007F00)) 
    \gray_line_count[4]_i_1 
       (.I0(gray_frame_done_pulse_reg[6]),
        .I1(gray_frame_done_pulse_reg[7]),
        .I2(gray_frame_done_pulse_reg[5]),
        .I3(m_tlast_reg_0),
        .I4(gray_frame_done_pulse_reg_0),
        .I5(gray_frame_done_pulse_reg[4]),
        .O(\gray_line_count_reg[6] [4]));
  LUT6 #(
    .INIT(64'hF0F000700000F000)) 
    \gray_line_count[5]_i_1 
       (.I0(gray_frame_done_pulse_reg[7]),
        .I1(gray_frame_done_pulse_reg[6]),
        .I2(m_tlast_reg_0),
        .I3(gray_frame_done_pulse_reg[4]),
        .I4(gray_frame_done_pulse_reg_0),
        .I5(gray_frame_done_pulse_reg[5]),
        .O(\gray_line_count_reg[6] [5]));
  LUT6 #(
    .INIT(64'hBB44BF0000000000)) 
    \gray_line_count[6]_i_1 
       (.I0(gray_frame_done_pulse_reg_0),
        .I1(gray_frame_done_pulse_reg[5]),
        .I2(gray_frame_done_pulse_reg[7]),
        .I3(gray_frame_done_pulse_reg[6]),
        .I4(gray_frame_done_pulse_reg[4]),
        .I5(m_tlast_reg_0),
        .O(\gray_line_count_reg[6] [6]));
  LUT6 #(
    .INIT(64'hAAAA2A2A00008000)) 
    \gray_line_count[7]_i_2 
       (.I0(m_tlast_reg_0),
        .I1(gray_frame_done_pulse_reg[6]),
        .I2(gray_frame_done_pulse_reg[5]),
        .I3(gray_frame_done_pulse_reg[4]),
        .I4(gray_frame_done_pulse_reg_0),
        .I5(gray_frame_done_pulse_reg[7]),
        .O(\gray_line_count_reg[6] [7]));
  LUT6 #(
    .INIT(64'h0000000000A20000)) 
    \gray_line_count[7]_i_3 
       (.I0(gray_tap_eol),
        .I1(m_tvalid_reg_1),
        .I2(m_tuser_reg_0),
        .I3(gray_tap_valid_0),
        .I4(m8_tvalid),
        .I5(m_tvalid_reg_2),
        .O(m_tlast_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h00000D00)) 
    gray_tap_valid_INST_0
       (.I0(m_tvalid_reg_1),
        .I1(m_tuser_reg_0),
        .I2(gray_tap_valid_0),
        .I3(m8_tvalid),
        .I4(m_tvalid_reg_2),
        .O(gray_tap_valid));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[3]_i_10 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__2_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[3]_i_11 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__1_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[3]_i_12 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__0_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[3]_i_13 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[3]_i_2 
       (.I0(\left_column_sum[3]_i_10_n_0 ),
        .I1(line_buffer_reg_512_767_3_3_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_3_3_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_3_3_n_0),
        .O(\left_column_sum[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[3]_i_3 
       (.I0(\left_column_sum[3]_i_11_n_0 ),
        .I1(line_buffer_reg_512_767_2_2_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_2_2_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_2_2_n_0),
        .O(\left_column_sum[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[3]_i_4 
       (.I0(\left_column_sum[3]_i_12_n_0 ),
        .I1(line_buffer_reg_512_767_1_1_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_1_1_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_1_1_n_0),
        .O(\left_column_sum[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[3]_i_5 
       (.I0(\left_column_sum[3]_i_13_n_0 ),
        .I1(line_buffer_reg_512_767_0_0_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_0_0_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_0_0_n_0),
        .O(\left_column_sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[3]_i_6 
       (.I0(\left_column_sum[3]_i_2_n_0 ),
        .I1(m_axis_tdata[3]),
        .O(\left_column_sum[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[3]_i_7 
       (.I0(\left_column_sum[3]_i_3_n_0 ),
        .I1(m_axis_tdata[2]),
        .O(\left_column_sum[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[3]_i_8 
       (.I0(\left_column_sum[3]_i_4_n_0 ),
        .I1(m_axis_tdata[1]),
        .O(\left_column_sum[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[3]_i_9 
       (.I0(\left_column_sum[3]_i_5_n_0 ),
        .I1(m_axis_tdata[0]),
        .O(\left_column_sum[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[7]_i_10 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__6_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \left_column_sum[7]_i_11 
       (.I0(x_count[9]),
        .I1(m_axis_tuser),
        .O(\left_column_sum[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[7]_i_12 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__5_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[7]_i_13 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__4_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCC00CC04)) 
    \left_column_sum[7]_i_14 
       (.I0(x_count[6]),
        .I1(line_buffer_reg_0_31_0_0__3_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[7]),
        .O(\left_column_sum[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[7]_i_2 
       (.I0(\left_column_sum[7]_i_10_n_0 ),
        .I1(line_buffer_reg_512_767_7_7_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_7_7_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_7_7_n_0),
        .O(\left_column_sum[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[7]_i_3 
       (.I0(\left_column_sum[7]_i_12_n_0 ),
        .I1(line_buffer_reg_512_767_6_6_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_6_6_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_6_6_n_0),
        .O(\left_column_sum[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[7]_i_4 
       (.I0(\left_column_sum[7]_i_13_n_0 ),
        .I1(line_buffer_reg_512_767_5_5_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_5_5_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_5_5_n_0),
        .O(\left_column_sum[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \left_column_sum[7]_i_5 
       (.I0(\left_column_sum[7]_i_14_n_0 ),
        .I1(line_buffer_reg_512_767_4_4_n_0),
        .I2(\left_column_sum[7]_i_11_n_0 ),
        .I3(line_buffer_reg_256_511_4_4_n_0),
        .I4(m_tlast_i_3_n_0),
        .I5(line_buffer_reg_0_255_4_4_n_0),
        .O(\left_column_sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[7]_i_6 
       (.I0(\left_column_sum[7]_i_2_n_0 ),
        .I1(m_axis_tdata[7]),
        .O(\left_column_sum[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[7]_i_7 
       (.I0(\left_column_sum[7]_i_3_n_0 ),
        .I1(m_axis_tdata[6]),
        .O(\left_column_sum[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[7]_i_8 
       (.I0(\left_column_sum[7]_i_4_n_0 ),
        .I1(m_axis_tdata[5]),
        .O(\left_column_sum[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \left_column_sum[7]_i_9 
       (.I0(\left_column_sum[7]_i_5_n_0 ),
        .I1(m_axis_tdata[4]),
        .O(\left_column_sum[7]_i_9_n_0 ));
  FDCE \left_column_sum_reg[0] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[3]_i_1_n_7 ),
        .Q(left_column_sum[0]));
  FDCE \left_column_sum_reg[1] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[3]_i_1_n_6 ),
        .Q(left_column_sum[1]));
  FDCE \left_column_sum_reg[2] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[3]_i_1_n_5 ),
        .Q(left_column_sum[2]));
  FDCE \left_column_sum_reg[3] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[3]_i_1_n_4 ),
        .Q(left_column_sum[3]));
  CARRY4 \left_column_sum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\left_column_sum_reg[3]_i_1_n_0 ,\left_column_sum_reg[3]_i_1_n_1 ,\left_column_sum_reg[3]_i_1_n_2 ,\left_column_sum_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\left_column_sum[3]_i_2_n_0 ,\left_column_sum[3]_i_3_n_0 ,\left_column_sum[3]_i_4_n_0 ,\left_column_sum[3]_i_5_n_0 }),
        .O({\left_column_sum_reg[3]_i_1_n_4 ,\left_column_sum_reg[3]_i_1_n_5 ,\left_column_sum_reg[3]_i_1_n_6 ,\left_column_sum_reg[3]_i_1_n_7 }),
        .S({\left_column_sum[3]_i_6_n_0 ,\left_column_sum[3]_i_7_n_0 ,\left_column_sum[3]_i_8_n_0 ,\left_column_sum[3]_i_9_n_0 }));
  FDCE \left_column_sum_reg[4] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[7]_i_1_n_7 ),
        .Q(left_column_sum[4]));
  FDCE \left_column_sum_reg[5] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[7]_i_1_n_6 ),
        .Q(left_column_sum[5]));
  FDCE \left_column_sum_reg[6] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[7]_i_1_n_5 ),
        .Q(left_column_sum[6]));
  FDCE \left_column_sum_reg[7] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[7]_i_1_n_4 ),
        .Q(left_column_sum[7]));
  CARRY4 \left_column_sum_reg[7]_i_1 
       (.CI(\left_column_sum_reg[3]_i_1_n_0 ),
        .CO({\left_column_sum_reg[7]_i_1_n_0 ,\left_column_sum_reg[7]_i_1_n_1 ,\left_column_sum_reg[7]_i_1_n_2 ,\left_column_sum_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\left_column_sum[7]_i_2_n_0 ,\left_column_sum[7]_i_3_n_0 ,\left_column_sum[7]_i_4_n_0 ,\left_column_sum[7]_i_5_n_0 }),
        .O({\left_column_sum_reg[7]_i_1_n_4 ,\left_column_sum_reg[7]_i_1_n_5 ,\left_column_sum_reg[7]_i_1_n_6 ,\left_column_sum_reg[7]_i_1_n_7 }),
        .S({\left_column_sum[7]_i_6_n_0 ,\left_column_sum[7]_i_7_n_0 ,\left_column_sum[7]_i_8_n_0 ,\left_column_sum[7]_i_9_n_0 }));
  FDCE \left_column_sum_reg[8] 
       (.C(aclk),
        .CE(\left_column_sum_reg[8]_0 ),
        .CLR(\y_count_reg[8]_0 ),
        .D(\left_column_sum_reg[8]_i_2_n_3 ),
        .Q(left_column_sum[8]));
  CARRY4 \left_column_sum_reg[8]_i_2 
       (.CI(\left_column_sum_reg[7]_i_1_n_0 ),
        .CO({\NLW_left_column_sum_reg[8]_i_2_CO_UNCONNECTED [3:1],\left_column_sum_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_left_column_sum_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S line_buffer_reg_0_255_0_0
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[0]),
        .O(line_buffer_reg_0_255_0_0_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hC0C00000C0C00040)) 
    line_buffer_reg_0_255_0_0_i_1
       (.I0(\y_count_reg[1]_0 [0]),
        .I1(x_count0),
        .I2(path_axi_rst_n),
        .I3(x_count[8]),
        .I4(m_axis_tuser),
        .I5(x_count[9]),
        .O(line_buffer_reg_0_255_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    line_buffer_reg_0_255_0_0_i_10
       (.I0(capture_axi_sync),
        .I1(aresetn),
        .O(path_axi_rst_n));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_2
       (.I0(x_count[7]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_3
       (.I0(x_count[6]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_4
       (.I0(x_count[5]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_5
       (.I0(x_count[4]),
        .I1(m_axis_tuser),
        .O(A));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_6
       (.I0(Q[3]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_7
       (.I0(Q[2]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_8
       (.I0(Q[1]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_255_0_0_i_9
       (.I0(Q[0]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_255_0_0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S line_buffer_reg_0_255_1_1
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[1]),
        .O(line_buffer_reg_0_255_1_1_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S line_buffer_reg_0_255_2_2
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[2]),
        .O(line_buffer_reg_0_255_2_2_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S line_buffer_reg_0_255_3_3
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[3]),
        .O(line_buffer_reg_0_255_3_3_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S line_buffer_reg_0_255_4_4
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[4]),
        .O(line_buffer_reg_0_255_4_4_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S line_buffer_reg_0_255_5_5
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[5]),
        .O(line_buffer_reg_0_255_5_5_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S line_buffer_reg_0_255_6_6
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[6]),
        .O(line_buffer_reg_0_255_6_6_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S line_buffer_reg_0_255_7_7
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[7]),
        .O(line_buffer_reg_0_255_7_7_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_255_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[0]),
        .O(line_buffer_reg_0_31_0_0_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__0
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[1]),
        .O(line_buffer_reg_0_31_0_0__0_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__1
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[2]),
        .O(line_buffer_reg_0_31_0_0__1_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__2
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[3]),
        .O(line_buffer_reg_0_31_0_0__2_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__3
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[4]),
        .O(line_buffer_reg_0_31_0_0__3_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__4
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[5]),
        .O(line_buffer_reg_0_31_0_0__4_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__5
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[6]),
        .O(line_buffer_reg_0_31_0_0__5_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  RAM32X1S line_buffer_reg_0_31_0_0__6
       (.A0(line_buffer_reg_0_255_0_0_i_9_n_0),
        .A1(line_buffer_reg_0_255_0_0_i_8_n_0),
        .A2(line_buffer_reg_0_255_0_0_i_7_n_0),
        .A3(line_buffer_reg_0_255_0_0_i_6_n_0),
        .A4(A),
        .D(m_axis_tdata[7]),
        .O(line_buffer_reg_0_31_0_0__6_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_0_31_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    line_buffer_reg_0_31_0_0_i_1
       (.I0(line_buffer_reg_0_31_0_0_i_2_n_0),
        .I1(line_buffer_reg_0_31_0_0_i_3_n_0),
        .I2(line_buffer_reg_0_255_0_0_i_4_n_0),
        .I3(line_buffer_reg_0_31_0_0_i_4_n_0),
        .I4(x_count0),
        .I5(path_axi_rst_n),
        .O(line_buffer_reg_0_31_0_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h32)) 
    line_buffer_reg_0_31_0_0_i_2
       (.I0(x_count[7]),
        .I1(m_axis_tuser),
        .I2(x_count[6]),
        .O(line_buffer_reg_0_31_0_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    line_buffer_reg_0_31_0_0_i_3
       (.I0(x_count[9]),
        .I1(m_axis_tuser),
        .I2(x_count[8]),
        .O(line_buffer_reg_0_31_0_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h2)) 
    line_buffer_reg_0_31_0_0_i_4
       (.I0(\y_count_reg[1]_0 [0]),
        .I1(m_axis_tuser),
        .O(line_buffer_reg_0_31_0_0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S line_buffer_reg_256_511_0_0
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[0]),
        .O(line_buffer_reg_256_511_0_0_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    line_buffer_reg_256_511_0_0_i_1
       (.I0(x_count[9]),
        .I1(x_count[8]),
        .I2(m_axis_tuser),
        .I3(path_axi_rst_n),
        .I4(x_count0),
        .I5(\y_count_reg[1]_0 [0]),
        .O(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S line_buffer_reg_256_511_1_1
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[1]),
        .O(line_buffer_reg_256_511_1_1_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S line_buffer_reg_256_511_2_2
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[2]),
        .O(line_buffer_reg_256_511_2_2_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S line_buffer_reg_256_511_3_3
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[3]),
        .O(line_buffer_reg_256_511_3_3_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S line_buffer_reg_256_511_4_4
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[4]),
        .O(line_buffer_reg_256_511_4_4_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S line_buffer_reg_256_511_5_5
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[5]),
        .O(line_buffer_reg_256_511_5_5_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S line_buffer_reg_256_511_6_6
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[6]),
        .O(line_buffer_reg_256_511_6_6_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S line_buffer_reg_256_511_7_7
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[7]),
        .O(line_buffer_reg_256_511_7_7_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S line_buffer_reg_512_767_0_0
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[0]),
        .O(line_buffer_reg_512_767_0_0_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    line_buffer_reg_512_767_0_0_i_1
       (.I0(x_count[8]),
        .I1(x_count[9]),
        .I2(m_axis_tuser),
        .I3(path_axi_rst_n),
        .I4(x_count0),
        .I5(\y_count_reg[1]_0 [0]),
        .O(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S line_buffer_reg_512_767_1_1
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[1]),
        .O(line_buffer_reg_512_767_1_1_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S line_buffer_reg_512_767_2_2
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[2]),
        .O(line_buffer_reg_512_767_2_2_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S line_buffer_reg_512_767_3_3
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[3]),
        .O(line_buffer_reg_512_767_3_3_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S line_buffer_reg_512_767_4_4
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[4]),
        .O(line_buffer_reg_512_767_4_4_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S line_buffer_reg_512_767_5_5
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[5]),
        .O(line_buffer_reg_512_767_5_5_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S line_buffer_reg_512_767_6_6
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[6]),
        .O(line_buffer_reg_512_767_6_6_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S line_buffer_reg_512_767_7_7
       (.A({line_buffer_reg_0_255_0_0_i_2_n_0,line_buffer_reg_0_255_0_0_i_3_n_0,line_buffer_reg_0_255_0_0_i_4_n_0,A,line_buffer_reg_0_255_0_0_i_6_n_0,line_buffer_reg_0_255_0_0_i_7_n_0,line_buffer_reg_0_255_0_0_i_8_n_0,line_buffer_reg_0_255_0_0_i_9_n_0}),
        .D(m_axis_tdata[7]),
        .O(line_buffer_reg_512_767_7_7_n_0),
        .WCLK(aclk),
        .WE(line_buffer_reg_512_767_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[1]_i_2 
       (.I0(\left_column_sum[3]_i_3_n_0 ),
        .I1(m_axis_tdata[2]),
        .I2(left_column_sum[2]),
        .O(\m_tdata[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[1]_i_3 
       (.I0(\left_column_sum[3]_i_4_n_0 ),
        .I1(m_axis_tdata[1]),
        .I2(left_column_sum[1]),
        .O(\m_tdata[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[1]_i_4 
       (.I0(\left_column_sum[3]_i_5_n_0 ),
        .I1(m_axis_tdata[0]),
        .I2(left_column_sum[0]),
        .O(\m_tdata[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[1]_i_5 
       (.I0(\left_column_sum[3]_i_2_n_0 ),
        .I1(m_axis_tdata[3]),
        .I2(left_column_sum[3]),
        .I3(\m_tdata[1]_i_2_n_0 ),
        .O(\m_tdata[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[1]_i_6 
       (.I0(\left_column_sum[3]_i_3_n_0 ),
        .I1(m_axis_tdata[2]),
        .I2(left_column_sum[2]),
        .I3(\m_tdata[1]_i_3_n_0 ),
        .O(\m_tdata[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[1]_i_7 
       (.I0(\left_column_sum[3]_i_4_n_0 ),
        .I1(m_axis_tdata[1]),
        .I2(left_column_sum[1]),
        .I3(\m_tdata[1]_i_4_n_0 ),
        .O(\m_tdata[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \m_tdata[1]_i_8 
       (.I0(\left_column_sum[3]_i_5_n_0 ),
        .I1(m_axis_tdata[0]),
        .I2(left_column_sum[0]),
        .O(\m_tdata[1]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[5]_i_2 
       (.I0(\left_column_sum[7]_i_3_n_0 ),
        .I1(m_axis_tdata[6]),
        .I2(left_column_sum[6]),
        .O(\m_tdata[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[5]_i_3 
       (.I0(\left_column_sum[7]_i_4_n_0 ),
        .I1(m_axis_tdata[5]),
        .I2(left_column_sum[5]),
        .O(\m_tdata[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[5]_i_4 
       (.I0(\left_column_sum[7]_i_5_n_0 ),
        .I1(m_axis_tdata[4]),
        .I2(left_column_sum[4]),
        .O(\m_tdata[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \m_tdata[5]_i_5 
       (.I0(\left_column_sum[3]_i_2_n_0 ),
        .I1(m_axis_tdata[3]),
        .I2(left_column_sum[3]),
        .O(\m_tdata[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[5]_i_6 
       (.I0(\m_tdata[5]_i_2_n_0 ),
        .I1(m_axis_tdata[7]),
        .I2(\left_column_sum[7]_i_2_n_0 ),
        .I3(left_column_sum[7]),
        .O(\m_tdata[5]_i_6_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[5]_i_7 
       (.I0(\left_column_sum[7]_i_3_n_0 ),
        .I1(m_axis_tdata[6]),
        .I2(left_column_sum[6]),
        .I3(\m_tdata[5]_i_3_n_0 ),
        .O(\m_tdata[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[5]_i_8 
       (.I0(\left_column_sum[7]_i_4_n_0 ),
        .I1(m_axis_tdata[5]),
        .I2(left_column_sum[5]),
        .I3(\m_tdata[5]_i_4_n_0 ),
        .O(\m_tdata[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \m_tdata[5]_i_9 
       (.I0(\left_column_sum[7]_i_5_n_0 ),
        .I1(m_axis_tdata[4]),
        .I2(left_column_sum[4]),
        .I3(\m_tdata[5]_i_5_n_0 ),
        .O(\m_tdata[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT5 #(
    .INIT(32'hDFDDFFFF)) 
    \m_tdata[7]_i_4 
       (.I0(m8_tvalid),
        .I1(gray_tap_valid_0),
        .I2(m_tuser_reg_0),
        .I3(m_tvalid_reg_1),
        .I4(m_tvalid_reg_2),
        .O(m_tvalid_reg_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    \m_tdata[7]_i_5 
       (.I0(left_column_sum[7]),
        .I1(m_axis_tdata[7]),
        .I2(\left_column_sum[7]_i_2_n_0 ),
        .I3(left_column_sum[8]),
        .O(\m_tdata[7]_i_5_n_0 ));
  FDCE \m_tdata_reg[0] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[0]),
        .Q(gray_tap_data[0]));
  FDCE \m_tdata_reg[1] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[1]),
        .Q(gray_tap_data[1]));
  CARRY4 \m_tdata_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\m_tdata_reg[1]_i_1_n_0 ,\m_tdata_reg[1]_i_1_n_1 ,\m_tdata_reg[1]_i_1_n_2 ,\m_tdata_reg[1]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\m_tdata[1]_i_2_n_0 ,\m_tdata[1]_i_3_n_0 ,\m_tdata[1]_i_4_n_0 ,1'b1}),
        .O({p_0_in[1:0],\NLW_m_tdata_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\m_tdata[1]_i_5_n_0 ,\m_tdata[1]_i_6_n_0 ,\m_tdata[1]_i_7_n_0 ,\m_tdata[1]_i_8_n_0 }));
  FDCE \m_tdata_reg[2] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[2]),
        .Q(gray_tap_data[2]));
  FDCE \m_tdata_reg[3] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[3]),
        .Q(gray_tap_data[3]));
  FDCE \m_tdata_reg[4] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[4]),
        .Q(gray_tap_data[4]));
  FDCE \m_tdata_reg[5] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[5]),
        .Q(gray_tap_data[5]));
  CARRY4 \m_tdata_reg[5]_i_1 
       (.CI(\m_tdata_reg[1]_i_1_n_0 ),
        .CO({\m_tdata_reg[5]_i_1_n_0 ,\m_tdata_reg[5]_i_1_n_1 ,\m_tdata_reg[5]_i_1_n_2 ,\m_tdata_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_tdata[5]_i_2_n_0 ,\m_tdata[5]_i_3_n_0 ,\m_tdata[5]_i_4_n_0 ,\m_tdata[5]_i_5_n_0 }),
        .O(p_0_in[5:2]),
        .S({\m_tdata[5]_i_6_n_0 ,\m_tdata[5]_i_7_n_0 ,\m_tdata[5]_i_8_n_0 ,\m_tdata[5]_i_9_n_0 }));
  FDCE \m_tdata_reg[6] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[6]),
        .Q(gray_tap_data[6]));
  FDCE \m_tdata_reg[7] 
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(p_0_in[7]),
        .Q(gray_tap_data[7]));
  CARRY4 \m_tdata_reg[7]_i_2 
       (.CI(\m_tdata_reg[5]_i_1_n_0 ),
        .CO({\NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED [3:2],p_0_in[7],\NLW_m_tdata_reg[7]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,left_column_sum[8]}),
        .O({\NLW_m_tdata_reg[7]_i_2_O_UNCONNECTED [3:1],p_0_in[6]}),
        .S({1'b0,1'b0,1'b1,\m_tdata[7]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    m_tlast_i_1
       (.I0(m_tlast_i_2_n_0),
        .I1(m_tlast_i_3_n_0),
        .I2(x_count[5]),
        .I3(x_count[9]),
        .I4(line_buffer_reg_0_255_0_0_i_3_n_0),
        .I5(line_buffer_reg_0_255_0_0_i_2_n_0),
        .O(m_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    m_tlast_i_2
       (.I0(x_count[4]),
        .I1(Q[1]),
        .I2(m_axis_tuser),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(m_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_tlast_i_3
       (.I0(x_count[8]),
        .I1(m_axis_tuser),
        .O(m_tlast_i_3_n_0));
  FDCE m_tlast_reg
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(m_tlast_i_1_n_0),
        .Q(gray_tap_eol));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_tuser_i_1
       (.I0(line_buffer_reg_0_255_0_0_i_2_n_0),
        .I1(line_buffer_reg_0_255_0_0_i_3_n_0),
        .I2(m_tuser_i_2_n_0),
        .I3(Q[1]),
        .I4(m_tuser_reg_2),
        .I5(m_tuser_i_4_n_0),
        .O(m_tuser0));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    m_tuser_i_2
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(\y_count_reg[1]_0 [1]),
        .I2(m_axis_tuser),
        .O(m_tuser_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F0F0F0E)) 
    m_tuser_i_4
       (.I0(\y_count_reg_n_0_[8] ),
        .I1(Q[3]),
        .I2(m_axis_tuser),
        .I3(x_count[5]),
        .I4(\y_count_reg_n_0_[7] ),
        .I5(m_tuser_i_5_n_0),
        .O(m_tuser_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    m_tuser_i_5
       (.I0(x_count[4]),
        .I1(m_axis_tuser),
        .I2(x_count[8]),
        .I3(Q[2]),
        .I4(\y_count_reg_n_0_[5] ),
        .I5(m_tuser_i_6_n_0),
        .O(m_tuser_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    m_tuser_i_6
       (.I0(\y_count_reg_n_0_[6] ),
        .I1(x_count[9]),
        .I2(\y_count_reg_n_0_[3] ),
        .I3(\y_count_reg[1]_0 [0]),
        .I4(m_axis_tuser),
        .I5(\y_count_reg_n_0_[4] ),
        .O(m_tuser_i_6_n_0));
  FDCE m_tuser_reg
       (.C(aclk),
        .CE(E),
        .CLR(\y_count_reg[8]_0 ),
        .D(m_tuser0),
        .Q(m_tuser_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00A20000)) 
    m_tvalid_i_1
       (.I0(m_tvalid_reg_2),
        .I1(m_tvalid_reg_1),
        .I2(m_tuser_reg_0),
        .I3(gray_tap_valid_0),
        .I4(m8_tvalid),
        .I5(E),
        .O(m_tvalid_i_1_n_0));
  FDCE m_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\y_count_reg[8]_0 ),
        .D(m_tvalid_i_1_n_0),
        .Q(m8_tvalid));
  LUT5 #(
    .INIT(32'h01050400)) 
    \x_count[2]_i_1 
       (.I0(m_axis_tlast),
        .I1(Q[0]),
        .I2(m_axis_tuser),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\x_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0105050504000000)) 
    \x_count[3]_i_1 
       (.I0(m_axis_tlast),
        .I1(Q[1]),
        .I2(m_axis_tuser),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\x_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \x_count[5]_i_1 
       (.I0(m_tlast_i_2_n_0),
        .I1(x_count[5]),
        .I2(m_axis_tuser),
        .I3(m_axis_tlast),
        .O(\x_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \x_count[6]_i_1 
       (.I0(m_axis_tlast),
        .I1(m_axis_tuser),
        .I2(x_count[5]),
        .I3(m_tlast_i_2_n_0),
        .I4(x_count[6]),
        .O(\x_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015005500400000)) 
    \x_count[7]_i_1 
       (.I0(m_axis_tlast),
        .I1(m_tlast_i_2_n_0),
        .I2(x_count[5]),
        .I3(m_axis_tuser),
        .I4(x_count[6]),
        .I5(x_count[7]),
        .O(\x_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \x_count[8]_i_1 
       (.I0(m_axis_tlast),
        .I1(line_buffer_reg_0_255_0_0_i_2_n_0),
        .I2(line_buffer_reg_0_255_0_0_i_3_n_0),
        .I3(line_buffer_reg_0_255_0_0_i_4_n_0),
        .I4(m_tlast_i_2_n_0),
        .I5(m_tlast_i_3_n_0),
        .O(\x_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT5 #(
    .INIT(32'h00001320)) 
    \x_count[9]_i_1 
       (.I0(\x_count[9]_i_2_n_0 ),
        .I1(m_axis_tuser),
        .I2(x_count[8]),
        .I3(x_count[9]),
        .I4(m_axis_tlast),
        .O(\x_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \x_count[9]_i_2 
       (.I0(x_count[7]),
        .I1(x_count[6]),
        .I2(m_axis_tuser),
        .I3(x_count[5]),
        .I4(m_tlast_i_2_n_0),
        .O(\x_count[9]_i_2_n_0 ));
  FDCE \x_count_reg[0] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count_reg[4]_0 [0]),
        .Q(Q[0]));
  FDCE \x_count_reg[1] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count_reg[4]_0 [1]),
        .Q(Q[1]));
  FDCE \x_count_reg[2] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \x_count_reg[3] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \x_count_reg[4] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count_reg[4]_0 [2]),
        .Q(x_count[4]));
  FDCE \x_count_reg[5] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[5]_i_1_n_0 ),
        .Q(x_count[5]));
  FDCE \x_count_reg[6] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[6]_i_1_n_0 ),
        .Q(x_count[6]));
  FDCE \x_count_reg[7] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[7]_i_1_n_0 ),
        .Q(x_count[7]));
  FDCE \x_count_reg[8] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[8]_i_1_n_0 ),
        .Q(x_count[8]));
  FDCE \x_count_reg[9] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\x_count[9]_i_1_n_0 ),
        .Q(x_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \y_count[2]_i_1 
       (.I0(m_axis_tuser),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(m_axis_tlast),
        .I3(\y_count_reg[1]_0 [0]),
        .I4(\y_count_reg[1]_0 [1]),
        .O(\y_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000414400004444)) 
    \y_count[3]_i_1 
       (.I0(\y_count[8]_i_4_n_0 ),
        .I1(\y_count_reg_n_0_[3] ),
        .I2(\y_count[3]_i_2_n_0 ),
        .I3(\y_count_reg[1]_0 [1]),
        .I4(m_axis_tuser),
        .I5(\y_count_reg_n_0_[2] ),
        .O(\y_count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \y_count[3]_i_2 
       (.I0(\y_count_reg[1]_0 [0]),
        .I1(m_axis_tlast),
        .O(\y_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'h0025)) 
    \y_count[4]_i_1 
       (.I0(\y_count[6]_i_2_n_0 ),
        .I1(m_axis_tuser),
        .I2(\y_count_reg_n_0_[4] ),
        .I3(\y_count[8]_i_4_n_0 ),
        .O(\y_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT5 #(
    .INIT(32'h00002D22)) 
    \y_count[5]_i_1 
       (.I0(\y_count_reg_n_0_[4] ),
        .I1(\y_count[6]_i_2_n_0 ),
        .I2(m_axis_tuser),
        .I3(\y_count_reg_n_0_[5] ),
        .I4(\y_count[8]_i_4_n_0 ),
        .O(\y_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0051005500040000)) 
    \y_count[6]_i_1 
       (.I0(\y_count[8]_i_4_n_0 ),
        .I1(\y_count_reg_n_0_[4] ),
        .I2(\y_count[6]_i_2_n_0 ),
        .I3(m_axis_tuser),
        .I4(\y_count_reg_n_0_[5] ),
        .I5(\y_count_reg_n_0_[6] ),
        .O(\y_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \y_count[6]_i_2 
       (.I0(\y_count_reg_n_0_[3] ),
        .I1(\y_count_reg[1]_0 [0]),
        .I2(m_axis_tlast),
        .I3(\y_count_reg[1]_0 [1]),
        .I4(m_axis_tuser),
        .I5(\y_count_reg_n_0_[2] ),
        .O(\y_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000090A0A0A)) 
    \y_count[7]_i_1 
       (.I0(\y_count_reg_n_0_[7] ),
        .I1(\y_count[7]_i_2_n_0 ),
        .I2(m_axis_tuser),
        .I3(\y_count_reg_n_0_[5] ),
        .I4(\y_count_reg_n_0_[6] ),
        .I5(\y_count[8]_i_4_n_0 ),
        .O(\y_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \y_count[7]_i_2 
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(m_axis_tuser),
        .I2(\y_count_reg[1]_0 [1]),
        .I3(\y_count[3]_i_2_n_0 ),
        .I4(\y_count_reg_n_0_[3] ),
        .I5(\y_count_reg_n_0_[4] ),
        .O(\y_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'h004B)) 
    \y_count[8]_i_2 
       (.I0(m_axis_tuser),
        .I1(\y_count_reg_n_0_[8] ),
        .I2(\y_count[8]_i_3_n_0 ),
        .I3(\y_count[8]_i_4_n_0 ),
        .O(\y_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \y_count[8]_i_3 
       (.I0(\y_count_reg_n_0_[7] ),
        .I1(\y_count_reg_n_0_[4] ),
        .I2(\y_count[6]_i_2_n_0 ),
        .I3(m_axis_tuser),
        .I4(\y_count_reg_n_0_[5] ),
        .I5(\y_count_reg_n_0_[6] ),
        .O(\y_count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \y_count[8]_i_4 
       (.I0(\y_count_reg_n_0_[7] ),
        .I1(\y_count_reg[1]_0 [0]),
        .I2(\y_count_reg_n_0_[6] ),
        .I3(\y_count_reg_n_0_[5] ),
        .I4(\y_count[8]_i_5_n_0 ),
        .I5(\y_count[8]_i_6_n_0 ),
        .O(\y_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_count[8]_i_5 
       (.I0(\y_count_reg_n_0_[4] ),
        .I1(m_axis_tuser),
        .O(\y_count[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \y_count[8]_i_6 
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(m_axis_tuser),
        .I2(\y_count_reg[1]_0 [1]),
        .I3(\y_count_reg_n_0_[8] ),
        .I4(m_axis_tlast),
        .I5(\y_count_reg_n_0_[3] ),
        .O(\y_count[8]_i_6_n_0 ));
  FDCE \y_count_reg[0] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(D[0]),
        .Q(\y_count_reg[1]_0 [0]));
  FDCE \y_count_reg[1] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(D[1]),
        .Q(\y_count_reg[1]_0 [1]));
  FDCE \y_count_reg[2] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[2]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[2] ));
  FDCE \y_count_reg[3] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[3]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[3] ));
  FDCE \y_count_reg[4] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[4]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[4] ));
  FDCE \y_count_reg[5] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[5]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[5] ));
  FDCE \y_count_reg[6] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[6]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[6] ));
  FDCE \y_count_reg[7] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[7]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[7] ));
  FDCE \y_count_reg[8] 
       (.C(aclk),
        .CE(x_count0),
        .CLR(\y_count_reg[8]_0 ),
        .D(\y_count[8]_i_2_n_0 ),
        .Q(\y_count_reg_n_0_[8] ));
endmodule

(* ORIG_REF_NAME = "ov5640_init" *) 
module facebox_system_real_camera_source_0_0_ov5640_init
   (start_d,
    init_cmd_read,
    status,
    sys_rst_n_0,
    init_done_reg_0,
    init_cmd_valid,
    Q,
    \rom_index_reg[4]_0 ,
    D,
    \reg_addr_reg[15]_0 ,
    \wr_data_reg[7]_0 ,
    \reg_addr_reg[9]_0 ,
    sys_clk50,
    cmd_read_reg_0,
    \state_reg[0]_0 ,
    \error_code_reg[5]_0 ,
    \error_code_reg[5]_1 ,
    init_error_reg_0,
    cmd_valid_reg_0,
    sys_rst_n,
    rsp_valid,
    \rom_index_reg_rep[0]_0 ,
    init_done_reg_1,
    \sensor_id_reg[0]_0 ,
    \wait_count_reg[0]_0 ,
    init_error_reg_1,
    \state_reg[3]_0 ,
    \state_reg[0]_1 ,
    \sensor_id_reg[15]_0 ,
    \reg_addr_latched_reg[11] ,
    \reg_addr_latched_reg[11]_0 ,
    \wait_count_reg[29]_0 );
  output start_d;
  output init_cmd_read;
  output [20:0]status;
  output sys_rst_n_0;
  output init_done_reg_0;
  output init_cmd_valid;
  output [3:0]Q;
  output \rom_index_reg[4]_0 ;
  output [0:0]D;
  output [12:0]\reg_addr_reg[15]_0 ;
  output [6:0]\wr_data_reg[7]_0 ;
  output [2:0]\reg_addr_reg[9]_0 ;
  input sys_clk50;
  input cmd_read_reg_0;
  input \state_reg[0]_0 ;
  input \error_code_reg[5]_0 ;
  input \error_code_reg[5]_1 ;
  input init_error_reg_0;
  input cmd_valid_reg_0;
  input sys_rst_n;
  input rsp_valid;
  input \rom_index_reg_rep[0]_0 ;
  input init_done_reg_1;
  input \sensor_id_reg[0]_0 ;
  input \wait_count_reg[0]_0 ;
  input init_error_reg_1;
  input \state_reg[3]_0 ;
  input \state_reg[0]_1 ;
  input [7:0]\sensor_id_reg[15]_0 ;
  input \reg_addr_latched_reg[11] ;
  input \reg_addr_latched_reg[11]_0 ;
  input \wait_count_reg[29]_0 ;

  wire [0:0]D;
  wire [3:0]Q;
  wire cmd_read_i_1_n_0;
  wire cmd_read_reg_0;
  wire cmd_valid_i_1_n_0;
  wire cmd_valid_i_2_n_0;
  wire cmd_valid_i_3_n_0;
  wire cmd_valid_reg_0;
  wire error_code;
  wire [5:0]error_code0_in;
  wire \error_code[5]_i_10_n_0 ;
  wire \error_code[5]_i_13_n_0 ;
  wire \error_code[5]_i_14_n_0 ;
  wire \error_code[5]_i_15_n_0 ;
  wire \error_code[5]_i_16_n_0 ;
  wire \error_code[5]_i_4_n_0 ;
  wire \error_code[5]_i_5_n_0 ;
  wire \error_code[5]_i_6_n_0 ;
  wire \error_code[5]_i_7_n_0 ;
  wire \error_code[5]_i_8_n_0 ;
  wire \error_code[5]_i_9_n_0 ;
  wire \error_code_reg[5]_0 ;
  wire \error_code_reg[5]_1 ;
  wire g0_b0__0_n_0;
  wire init_cmd_read;
  wire init_cmd_valid;
  wire init_done_i_1_n_0;
  wire init_done_i_3_n_0;
  wire init_done_i_4_n_0;
  wire init_done_i_5_n_0;
  wire init_done_reg_0;
  wire init_done_reg_1;
  wire init_error_i_1_n_0;
  wire init_error_reg_0;
  wire init_error_reg_1;
  wire \reg_addr[0]_i_1_n_0 ;
  wire \reg_addr[10]_i_1_n_0 ;
  wire \reg_addr[11]_i_1_n_0 ;
  wire \reg_addr[12]_i_1_n_0 ;
  wire \reg_addr[13]_i_1_n_0 ;
  wire \reg_addr[14]_i_1_n_0 ;
  wire \reg_addr[15]_i_1_n_0 ;
  wire \reg_addr[1]_i_1_n_0 ;
  wire \reg_addr[2]_i_1_n_0 ;
  wire \reg_addr[3]_i_1_n_0 ;
  wire \reg_addr[4]_i_1_n_0 ;
  wire \reg_addr[5]_i_1_n_0 ;
  wire \reg_addr[6]_i_1_n_0 ;
  wire \reg_addr[7]_i_1_n_0 ;
  wire \reg_addr[8]_i_1_n_0 ;
  wire \reg_addr[9]_i_1_n_0 ;
  wire \reg_addr_latched_reg[11] ;
  wire \reg_addr_latched_reg[11]_0 ;
  wire [12:0]\reg_addr_reg[15]_0 ;
  wire [2:0]\reg_addr_reg[9]_0 ;
  wire \reg_addr_reg_n_0_[10] ;
  wire \reg_addr_reg_n_0_[11] ;
  wire \reg_addr_reg_n_0_[12] ;
  wire \reg_addr_reg_n_0_[13] ;
  wire \reg_addr_reg_n_0_[14] ;
  wire \reg_addr_reg_n_0_[15] ;
  wire \reg_addr_reg_n_0_[1] ;
  wire \reg_addr_reg_n_0_[2] ;
  wire \reg_addr_reg_n_0_[3] ;
  wire \reg_addr_reg_n_0_[5] ;
  wire \reg_addr_reg_n_0_[6] ;
  wire \reg_addr_reg_n_0_[7] ;
  wire \reg_addr_reg_n_0_[8] ;
  wire [23:0]rom_data_reg__0;
  wire \rom_index[0]_i_1_n_0 ;
  wire \rom_index[1]_i_1_n_0 ;
  wire \rom_index[2]_i_1_n_0 ;
  wire \rom_index[3]_i_1_n_0 ;
  wire \rom_index[4]_i_1_n_0 ;
  wire \rom_index[5]_i_1_n_0 ;
  wire \rom_index[6]_i_1_n_0 ;
  wire \rom_index[7]_i_1_n_0 ;
  wire \rom_index[8]_i_1_n_0 ;
  wire \rom_index[8]_i_2_n_0 ;
  wire \rom_index[8]_i_3_n_0 ;
  wire \rom_index[8]_i_5_n_0 ;
  wire \rom_index_reg[4]_0 ;
  wire \rom_index_reg_rep[0]_0 ;
  wire \rom_index_reg_rep_n_0_[0] ;
  wire \rom_index_reg_rep_n_0_[1] ;
  wire \rom_index_reg_rep_n_0_[2] ;
  wire \rom_index_reg_rep_n_0_[3] ;
  wire \rom_index_reg_rep_n_0_[4] ;
  wire \rom_index_reg_rep_n_0_[5] ;
  wire \rom_index_reg_rep_n_0_[6] ;
  wire \rom_index_reg_rep_n_0_[7] ;
  wire rsp_valid;
  wire [8:0]sel0;
  wire [15:7]sensor_id;
  wire \sensor_id[10]_i_1_n_0 ;
  wire \sensor_id[11]_i_1_n_0 ;
  wire \sensor_id[12]_i_1_n_0 ;
  wire \sensor_id[13]_i_1_n_0 ;
  wire \sensor_id[14]_i_1_n_0 ;
  wire \sensor_id[15]_i_2_n_0 ;
  wire \sensor_id[15]_i_4_n_0 ;
  wire \sensor_id[15]_i_5_n_0 ;
  wire \sensor_id[15]_i_6_n_0 ;
  wire \sensor_id[8]_i_1_n_0 ;
  wire \sensor_id[9]_i_1_n_0 ;
  wire \sensor_id_reg[0]_0 ;
  wire [7:0]\sensor_id_reg[15]_0 ;
  wire start_d;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2__0_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[4]_i_10_n_0 ;
  wire \state[4]_i_11_n_0 ;
  wire \state[4]_i_12_n_0 ;
  wire \state[4]_i_13_n_0 ;
  wire \state[4]_i_1__0_n_0 ;
  wire \state[4]_i_2__0_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4__0_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[3]_0 ;
  wire \state_reg_n_0_[4] ;
  wire [20:0]status;
  wire sys_clk50;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire [31:0]wait_count;
  wire wait_count0_carry__0_n_0;
  wire wait_count0_carry__0_n_1;
  wire wait_count0_carry__0_n_2;
  wire wait_count0_carry__0_n_3;
  wire wait_count0_carry__0_n_4;
  wire wait_count0_carry__0_n_5;
  wire wait_count0_carry__0_n_6;
  wire wait_count0_carry__0_n_7;
  wire wait_count0_carry__1_n_0;
  wire wait_count0_carry__1_n_1;
  wire wait_count0_carry__1_n_2;
  wire wait_count0_carry__1_n_3;
  wire wait_count0_carry__1_n_4;
  wire wait_count0_carry__1_n_5;
  wire wait_count0_carry__1_n_6;
  wire wait_count0_carry__1_n_7;
  wire wait_count0_carry__2_n_0;
  wire wait_count0_carry__2_n_1;
  wire wait_count0_carry__2_n_2;
  wire wait_count0_carry__2_n_3;
  wire wait_count0_carry__2_n_4;
  wire wait_count0_carry__2_n_5;
  wire wait_count0_carry__2_n_6;
  wire wait_count0_carry__2_n_7;
  wire wait_count0_carry__3_n_0;
  wire wait_count0_carry__3_n_1;
  wire wait_count0_carry__3_n_2;
  wire wait_count0_carry__3_n_3;
  wire wait_count0_carry__3_n_4;
  wire wait_count0_carry__3_n_5;
  wire wait_count0_carry__3_n_6;
  wire wait_count0_carry__3_n_7;
  wire wait_count0_carry__4_n_0;
  wire wait_count0_carry__4_n_1;
  wire wait_count0_carry__4_n_2;
  wire wait_count0_carry__4_n_3;
  wire wait_count0_carry__4_n_4;
  wire wait_count0_carry__4_n_5;
  wire wait_count0_carry__4_n_6;
  wire wait_count0_carry__4_n_7;
  wire wait_count0_carry__5_n_0;
  wire wait_count0_carry__5_n_1;
  wire wait_count0_carry__5_n_2;
  wire wait_count0_carry__5_n_3;
  wire wait_count0_carry__5_n_4;
  wire wait_count0_carry__5_n_5;
  wire wait_count0_carry__5_n_6;
  wire wait_count0_carry__5_n_7;
  wire wait_count0_carry__6_n_2;
  wire wait_count0_carry__6_n_3;
  wire wait_count0_carry__6_n_5;
  wire wait_count0_carry__6_n_6;
  wire wait_count0_carry__6_n_7;
  wire wait_count0_carry_n_0;
  wire wait_count0_carry_n_1;
  wire wait_count0_carry_n_2;
  wire wait_count0_carry_n_3;
  wire wait_count0_carry_n_4;
  wire wait_count0_carry_n_5;
  wire wait_count0_carry_n_6;
  wire wait_count0_carry_n_7;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[10]_i_1_n_0 ;
  wire \wait_count[11]_i_1_n_0 ;
  wire \wait_count[12]_i_1_n_0 ;
  wire \wait_count[13]_i_1_n_0 ;
  wire \wait_count[14]_i_1_n_0 ;
  wire \wait_count[15]_i_1_n_0 ;
  wire \wait_count[16]_i_1_n_0 ;
  wire \wait_count[17]_i_1_n_0 ;
  wire \wait_count[18]_i_1_n_0 ;
  wire \wait_count[19]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count[20]_i_1_n_0 ;
  wire \wait_count[21]_i_1_n_0 ;
  wire \wait_count[22]_i_1_n_0 ;
  wire \wait_count[23]_i_1_n_0 ;
  wire \wait_count[24]_i_1_n_0 ;
  wire \wait_count[25]_i_1_n_0 ;
  wire \wait_count[26]_i_1_n_0 ;
  wire \wait_count[27]_i_1_n_0 ;
  wire \wait_count[28]_i_1_n_0 ;
  wire \wait_count[29]_i_1_n_0 ;
  wire \wait_count[2]_i_1_n_0 ;
  wire \wait_count[30]_i_1_n_0 ;
  wire \wait_count[31]_i_10_n_0 ;
  wire \wait_count[31]_i_11_n_0 ;
  wire \wait_count[31]_i_12_n_0 ;
  wire \wait_count[31]_i_13_n_0 ;
  wire \wait_count[31]_i_14_n_0 ;
  wire \wait_count[31]_i_15_n_0 ;
  wire \wait_count[31]_i_16_n_0 ;
  wire \wait_count[31]_i_17_n_0 ;
  wire \wait_count[31]_i_18_n_0 ;
  wire \wait_count[31]_i_19_n_0 ;
  wire \wait_count[31]_i_2_n_0 ;
  wire \wait_count[31]_i_3_n_0 ;
  wire \wait_count[31]_i_5_n_0 ;
  wire \wait_count[31]_i_6_n_0 ;
  wire \wait_count[31]_i_7_n_0 ;
  wire \wait_count[31]_i_8_n_0 ;
  wire \wait_count[31]_i_9_n_0 ;
  wire \wait_count[3]_i_1_n_0 ;
  wire \wait_count[4]_i_1_n_0 ;
  wire \wait_count[5]_i_1_n_0 ;
  wire \wait_count[6]_i_1_n_0 ;
  wire \wait_count[7]_i_1_n_0 ;
  wire \wait_count[8]_i_1_n_0 ;
  wire \wait_count[9]_i_1_n_0 ;
  wire wait_count_0;
  wire \wait_count_reg[0]_0 ;
  wire \wait_count_reg[29]_0 ;
  wire \wr_data[0]_i_1_n_0 ;
  wire \wr_data[1]_i_1_n_0 ;
  wire \wr_data[2]_i_1_n_0 ;
  wire \wr_data[3]_i_1_n_0 ;
  wire \wr_data[4]_i_1_n_0 ;
  wire \wr_data[5]_i_1_n_0 ;
  wire \wr_data[6]_i_1_n_0 ;
  wire \wr_data[7]_i_1_n_0 ;
  wire [6:0]\wr_data_reg[7]_0 ;
  wire \wr_data_reg_n_0_[3] ;
  wire [15:6]NLW_rom_data_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_rom_data_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]NLW_wait_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_wait_count0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    cmd_read_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(cmd_read_i_1_n_0));
  FDCE cmd_read_reg
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(cmd_read_i_1_n_0),
        .Q(init_cmd_read));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h54551111)) 
    cmd_valid_i_1
       (.I0(cmd_valid_i_2_n_0),
        .I1(cmd_valid_i_3_n_0),
        .I2(init_done_reg_0),
        .I3(cmd_valid_reg_0),
        .I4(init_cmd_valid),
        .O(cmd_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBAAB)) 
    cmd_valid_i_2
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(cmd_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9AE4)) 
    cmd_valid_i_3
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(cmd_valid_i_3_n_0));
  FDCE cmd_valid_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(\state_reg[0]_0 ),
        .D(cmd_valid_i_1_n_0),
        .Q(init_cmd_valid));
  LUT6 #(
    .INIT(64'hFFFFFCFCA0AAA8A8)) 
    \error_code[0]_i_1 
       (.I0(\error_code_reg[5]_1 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\state_reg_n_0_[4] ),
        .O(error_code0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \error_code[1]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(error_code0_in[1]));
  LUT6 #(
    .INIT(64'h4040400044444444)) 
    \error_code[4]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\error_code_reg[5]_1 ),
        .I4(\error_code_reg[5]_0 ),
        .I5(Q[3]),
        .O(error_code0_in[4]));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFFFEFE)) 
    \error_code[5]_i_1 
       (.I0(\error_code[5]_i_4_n_0 ),
        .I1(\error_code[5]_i_5_n_0 ),
        .I2(\error_code[5]_i_6_n_0 ),
        .I3(\error_code[5]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\error_code[5]_i_8_n_0 ),
        .O(error_code));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \error_code[5]_i_10 
       (.I0(\error_code[5]_i_13_n_0 ),
        .I1(status[6]),
        .I2(status[15]),
        .I3(status[20]),
        .I4(status[7]),
        .I5(\error_code[5]_i_14_n_0 ),
        .O(\error_code[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \error_code[5]_i_12 
       (.I0(sel0[4]),
        .I1(sel0[7]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(\error_code[5]_i_15_n_0 ),
        .O(\rom_index_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \error_code[5]_i_13 
       (.I0(status[16]),
        .I1(status[12]),
        .I2(status[11]),
        .I3(status[18]),
        .O(\error_code[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \error_code[5]_i_14 
       (.I0(status[10]),
        .I1(status[13]),
        .I2(status[5]),
        .I3(status[19]),
        .I4(\error_code[5]_i_16_n_0 ),
        .O(\error_code[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \error_code[5]_i_15 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[8]),
        .I4(sel0[2]),
        .O(\error_code[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \error_code[5]_i_16 
       (.I0(status[14]),
        .I1(status[9]),
        .I2(status[17]),
        .I3(status[8]),
        .O(\error_code[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h44444404)) 
    \error_code[5]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\error_code_reg[5]_0 ),
        .I4(\error_code_reg[5]_1 ),
        .O(error_code0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \error_code[5]_i_3 
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  LUT6 #(
    .INIT(64'h0020002000200222)) 
    \error_code[5]_i_4 
       (.I0(\error_code[5]_i_9_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\error_code[5]_i_10_n_0 ),
        .I4(\error_code[5]_i_7_n_0 ),
        .I5(init_error_reg_0),
        .O(\error_code[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    \error_code[5]_i_5 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[4] ),
        .I5(start_d),
        .O(\error_code[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAABA0AAB0)) 
    \error_code[5]_i_6 
       (.I0(\state_reg_n_0_[4] ),
        .I1(init_error_reg_1),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\error_code[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \error_code[5]_i_7 
       (.I0(init_done_reg_0),
        .I1(rsp_valid),
        .O(\error_code[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02FFFFFFFFFFFFFF)) 
    \error_code[5]_i_8 
       (.I0(\rom_index_reg[4]_0 ),
        .I1(\error_code_reg[5]_0 ),
        .I2(\error_code_reg[5]_1 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\error_code[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \error_code[5]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\error_code[5]_i_9_n_0 ));
  FDCE \error_code_reg[0] 
       (.C(sys_clk50),
        .CE(error_code),
        .CLR(sys_rst_n_0),
        .D(error_code0_in[0]),
        .Q(status[1]));
  FDCE \error_code_reg[1] 
       (.C(sys_clk50),
        .CE(error_code),
        .CLR(sys_rst_n_0),
        .D(error_code0_in[1]),
        .Q(status[2]));
  FDCE \error_code_reg[4] 
       (.C(sys_clk50),
        .CE(error_code),
        .CLR(sys_rst_n_0),
        .D(error_code0_in[4]),
        .Q(status[3]));
  FDCE \error_code_reg[5] 
       (.C(sys_clk50),
        .CE(error_code),
        .CLR(sys_rst_n_0),
        .D(error_code0_in[5]),
        .Q(status[4]));
  LUT5 #(
    .INIT(32'h00002294)) 
    g0_b0__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\state_reg_n_0_[4] ),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'h0000000F88888880)) 
    init_done_i_1
       (.I0(init_done_i_3_n_0),
        .I1(rsp_valid),
        .I2(init_done_i_4_n_0),
        .I3(\error_code[5]_i_5_n_0 ),
        .I4(init_done_i_5_n_0),
        .I5(init_done_reg_0),
        .O(init_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    init_done_i_3
       (.I0(Q[3]),
        .I1(\state_reg_n_0_[4] ),
        .O(init_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    init_done_i_4
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(init_done_i_4_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    init_done_i_5
       (.I0(init_done_reg_1),
        .I1(\state_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(init_done_i_5_n_0));
  FDCE init_done_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(\state_reg[0]_0 ),
        .D(init_done_i_1_n_0),
        .Q(init_done_reg_0));
  LUT6 #(
    .INIT(64'hFEFEFEFE3000FEFE)) 
    init_error_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(init_error_reg_0),
        .I5(\state_reg_n_0_[4] ),
        .O(init_error_i_1_n_0));
  FDCE init_error_reg
       (.C(sys_clk50),
        .CE(error_code),
        .CLR(sys_rst_n_0),
        .D(init_error_i_1_n_0),
        .Q(status[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \reg_addr[0]_i_1 
       (.I0(rom_data_reg__0[8]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[10]_i_1 
       (.I0(rom_data_reg__0[18]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[11]_i_1 
       (.I0(rom_data_reg__0[19]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \reg_addr[12]_i_1 
       (.I0(rom_data_reg__0[20]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\reg_addr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \reg_addr[13]_i_1 
       (.I0(rom_data_reg__0[21]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\reg_addr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[14]_i_1 
       (.I0(rom_data_reg__0[22]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[15]_i_1 
       (.I0(rom_data_reg__0[23]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \reg_addr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(rom_data_reg__0[9]),
        .I3(Q[3]),
        .O(\reg_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[2]_i_1 
       (.I0(rom_data_reg__0[10]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDA)) 
    \reg_addr[3]_i_1 
       (.I0(Q[3]),
        .I1(rom_data_reg__0[11]),
        .I2(Q[2]),
        .O(\reg_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[4]_i_1 
       (.I0(rom_data_reg__0[12]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[5]_i_1 
       (.I0(rom_data_reg__0[13]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[6]_i_1 
       (.I0(rom_data_reg__0[14]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[7]_i_1 
       (.I0(rom_data_reg__0[15]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h85)) 
    \reg_addr[8]_i_1 
       (.I0(Q[3]),
        .I1(rom_data_reg__0[16]),
        .I2(Q[2]),
        .O(\reg_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_addr[9]_i_1 
       (.I0(rom_data_reg__0[17]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\reg_addr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[10]_i_1 
       (.I0(\reg_addr_reg_n_0_[10] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \reg_addr_latched[11]_i_1 
       (.I0(\reg_addr_reg_n_0_[11] ),
        .I1(init_done_reg_0),
        .I2(\reg_addr_latched_reg[11] ),
        .I3(\reg_addr_latched_reg[11]_0 ),
        .O(\reg_addr_reg[15]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addr_latched[12]_i_1 
       (.I0(init_done_reg_0),
        .I1(\reg_addr_reg_n_0_[12] ),
        .O(\reg_addr_reg[15]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addr_latched[13]_i_1 
       (.I0(init_done_reg_0),
        .I1(\reg_addr_reg_n_0_[13] ),
        .O(\reg_addr_reg[15]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[14]_i_1 
       (.I0(\reg_addr_reg_n_0_[14] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[15]_i_1 
       (.I0(\reg_addr_reg_n_0_[15] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addr_latched[1]_i_1 
       (.I0(init_done_reg_0),
        .I1(\reg_addr_reg_n_0_[1] ),
        .O(\reg_addr_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \reg_addr_latched[2]_i_1 
       (.I0(\reg_addr_reg_n_0_[2] ),
        .I1(init_done_reg_0),
        .I2(\reg_addr_latched_reg[11] ),
        .I3(\reg_addr_latched_reg[11]_0 ),
        .O(\reg_addr_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \reg_addr_latched[3]_i_1 
       (.I0(\reg_addr_reg_n_0_[3] ),
        .I1(init_done_reg_0),
        .I2(\reg_addr_latched_reg[11] ),
        .I3(\reg_addr_latched_reg[11]_0 ),
        .O(\reg_addr_reg[15]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[5]_i_1 
       (.I0(\reg_addr_reg_n_0_[5] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[6]_i_1 
       (.I0(\reg_addr_reg_n_0_[6] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[7]_i_1 
       (.I0(\reg_addr_reg_n_0_[7] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_addr_latched[8]_i_1 
       (.I0(\reg_addr_reg_n_0_[8] ),
        .I1(init_done_reg_0),
        .O(\reg_addr_reg[15]_0 [6]));
  FDCE \reg_addr_reg[0] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[0]_i_1_n_0 ),
        .Q(\reg_addr_reg[9]_0 [0]));
  FDCE \reg_addr_reg[10] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[10]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[10] ));
  FDCE \reg_addr_reg[11] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[11]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[11] ));
  FDCE \reg_addr_reg[12] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[12]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[12] ));
  FDCE \reg_addr_reg[13] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[13]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[13] ));
  FDCE \reg_addr_reg[14] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[14]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[14] ));
  FDCE \reg_addr_reg[15] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[15]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[15] ));
  FDCE \reg_addr_reg[1] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[1]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[1] ));
  FDCE \reg_addr_reg[2] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[2]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[2] ));
  FDCE \reg_addr_reg[3] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[3]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[3] ));
  FDCE \reg_addr_reg[4] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[4]_i_1_n_0 ),
        .Q(\reg_addr_reg[9]_0 [1]));
  FDCE \reg_addr_reg[5] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[5]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[5] ));
  FDCE \reg_addr_reg[6] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[6]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[6] ));
  FDCE \reg_addr_reg[7] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[7]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[7] ));
  FDCE \reg_addr_reg[8] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[8]_i_1_n_0 ),
        .Q(\reg_addr_reg_n_0_[8] ));
  FDCE \reg_addr_reg[9] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\reg_addr[9]_i_1_n_0 ),
        .Q(\reg_addr_reg[9]_0 [2]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "6144" *) 
  (* RTL_RAM_NAME = "rom_data" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "255" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "23" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h50000000000000000000000000000000AAA03000C000002AAAF8AD5FFFAA9004),
    .INITP_01(256'h0001028C0AAFA0000000000000FFFFFF1557FFFFF00000000155555555555555),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h17011578035A04A021E0331232E2310E303608013713341A18FF17FF03030842),
    .INIT_01(256'h351319F8180013431C501B2020522D60013300083112010A06100502051A0B60),
    .INIT_02(256'h08641200111010000B400A9C091C080007080600059804280134220134403603),
    .INIT_03(256'h1F1411601E261B3010280F3000270E001F01006F2E000E5804FF0000051A0102),
    .INIT_04(256'h0F000E000D030C080B0D0A08090508050708060C05260412030F020F01140023),
    .INIT_05(256'h1F171E291D0E1C081B061A051908180D17081603150114001303120711091003),
    .INIT_06(256'h2F222E062D242C242B222A242926286427262608252624462328221521112011),
    .INIT_07(256'h81F280FF3DCE3C423B283A263924384437263622352234243326322431423040),
    .INIT_08(256'h91F890468F568E3D8D428CB28BE08A5489758809870986098524842583148200),
    .INIT_09(256'h8214810880019E389D829C069B009A04991298049701960395F094F093709204),
    .INIT_0A(256'h825B811E901D8FEA8EDD8DCD8CB88BAA8A9A89918887877D8671856584518328),
    .INIT_0B(256'h1D408BF88A0089108410834080068B988A018910886C877C8688857E840A8308),
    .INIT_0C(256'h36723521080225000C060B040A30090807160608053004080300021001300008),
    .INIT_0D(256'h0A010920080307E40606053F040A03BE02000100000015311431210720410708),
    .INIT_0E(256'h021C040215C6141203C602120C0309521229180013060F210E030D690C070BE0),
    .INIT_0F(256'h0601050004040300020401000006030001A3240237220C220B350704130306C3),
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
    .INIT_20(256'h000D000D000D000D000D000D000D000D000D000C000C000C000C000C000C000C),
    .INIT_21(256'h000D000E000E000E0011000D000D000C000D000D000D000E000E000E000D000D),
    .INIT_22(256'h000D000E000E000E000F000F000F000F000F000F000F000F000F000D000D000D),
    .INIT_23(256'h000E000E000E000E000E000E0014001100140010000C000C000C000C00100010),
    .INIT_24(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_25(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_26(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_27(256'h0014001400160016001600160016001600160016001600160016001600160016),
    .INIT_28(256'h0014001400140014001400140014001400140014001400140014001400140014),
    .INIT_29(256'h0015001500150014001400140014001400140014001400140014001400140014),
    .INIT_2A(256'h0014001400150015001500150015001500150015001500150015001500150015),
    .INIT_2B(256'h0014001500150015001500150015001400140014001400140014001400140014),
    .INIT_2C(256'h000C000C000C0014001400140014001400140014001400140014001400140014),
    .INIT_2D(256'h000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000F),
    .INIT_2E(256'h000C0010000E000E000E000E000D000D000D000D000E000E000E000E000E000E),
    .INIT_2F(256'h000D000D000D000D000D000D000D000D0014000E00120011001100110011000C),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    rom_data_reg
       (.ADDRARDADDR({1'b0,1'b0,\rom_index_reg_rep_n_0_[7] ,\rom_index_reg_rep_n_0_[6] ,\rom_index_reg_rep_n_0_[5] ,\rom_index_reg_rep_n_0_[4] ,\rom_index_reg_rep_n_0_[3] ,\rom_index_reg_rep_n_0_[2] ,\rom_index_reg_rep_n_0_[1] ,\rom_index_reg_rep_n_0_[0] ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,\rom_index_reg_rep_n_0_[7] ,\rom_index_reg_rep_n_0_[6] ,\rom_index_reg_rep_n_0_[5] ,\rom_index_reg_rep_n_0_[4] ,\rom_index_reg_rep_n_0_[3] ,\rom_index_reg_rep_n_0_[2] ,\rom_index_reg_rep_n_0_[1] ,\rom_index_reg_rep_n_0_[0] ,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(sys_clk50),
        .CLKBWRCLK(sys_clk50),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(rom_data_reg__0[15:0]),
        .DOBDO({NLW_rom_data_reg_DOBDO_UNCONNECTED[15:6],rom_data_reg__0[23:18]}),
        .DOPADOP(rom_data_reg__0[17:16]),
        .DOPBDOP(NLW_rom_data_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rom_index[0]_i_1 
       (.I0(Q[2]),
        .I1(sel0[0]),
        .O(\rom_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \rom_index[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(Q[2]),
        .O(\rom_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rom_index[2]_i_1 
       (.I0(Q[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(\rom_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rom_index[3]_i_1 
       (.I0(Q[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\rom_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \rom_index[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(Q[2]),
        .O(\rom_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rom_index[5]_i_1 
       (.I0(Q[2]),
        .I1(\rom_index[8]_i_5_n_0 ),
        .I2(sel0[5]),
        .O(\rom_index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \rom_index[6]_i_1 
       (.I0(Q[2]),
        .I1(\rom_index[8]_i_5_n_0 ),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(\rom_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7080000)) 
    \rom_index[7]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(\rom_index[8]_i_5_n_0 ),
        .I3(sel0[7]),
        .I4(Q[2]),
        .O(\rom_index[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \rom_index[8]_i_1 
       (.I0(\sensor_id[15]_i_4_n_0 ),
        .I1(\rom_index[8]_i_3_n_0 ),
        .I2(init_done_i_3_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\rom_index_reg_rep[0]_0 ),
        .O(\rom_index[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \rom_index[8]_i_2 
       (.I0(Q[2]),
        .I1(sel0[7]),
        .I2(\rom_index[8]_i_5_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .I5(sel0[8]),
        .O(\rom_index[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rom_index[8]_i_3 
       (.I0(Q[2]),
        .I1(\error_code[5]_i_10_n_0 ),
        .O(\rom_index[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rom_index[8]_i_5 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .O(\rom_index[8]_i_5_n_0 ));
  FDCE \rom_index_reg[0] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \rom_index_reg[1] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE \rom_index_reg[2] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE \rom_index_reg[3] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[3]_i_1_n_0 ),
        .Q(sel0[3]));
  FDCE \rom_index_reg[4] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[4]_i_1_n_0 ),
        .Q(sel0[4]));
  FDCE \rom_index_reg[5] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[5]_i_1_n_0 ),
        .Q(sel0[5]));
  FDCE \rom_index_reg[6] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[6]_i_1_n_0 ),
        .Q(sel0[6]));
  FDCE \rom_index_reg[7] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[7]_i_1_n_0 ),
        .Q(sel0[7]));
  FDCE \rom_index_reg[8] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\rom_index[8]_i_2_n_0 ),
        .Q(sel0[8]));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[0] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[0]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[0] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[1] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[1]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[2] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[2]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[2] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[3] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[3]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[3] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[4] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[4]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[4] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[5] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[5]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[5] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[6] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[6]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[6] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \rom_index_reg_rep[7] 
       (.C(sys_clk50),
        .CE(\rom_index[8]_i_1_n_0 ),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\rom_index[7]_i_1_n_0 ),
        .Q(\rom_index_reg_rep_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[10]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [2]),
        .O(\sensor_id[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[11]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [3]),
        .O(\sensor_id[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[12]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [4]),
        .O(\sensor_id[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[13]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [5]),
        .O(\sensor_id[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[14]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [6]),
        .O(\sensor_id[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \sensor_id[15]_i_1 
       (.I0(\sensor_id[15]_i_4_n_0 ),
        .I1(init_done_reg_0),
        .I2(rsp_valid),
        .I3(Q[3]),
        .I4(\sensor_id[15]_i_5_n_0 ),
        .I5(\sensor_id[15]_i_6_n_0 ),
        .O(sensor_id[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[15]_i_2 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [7]),
        .O(\sensor_id[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000B)) 
    \sensor_id[15]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(start_d),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\sensor_id[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sensor_id[15]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\sensor_id[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \sensor_id[15]_i_6 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\error_code_reg[5]_0 ),
        .I2(\error_code_reg[5]_1 ),
        .I3(Q[0]),
        .O(\sensor_id[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020082)) 
    \sensor_id[7]_i_1 
       (.I0(\sensor_id_reg[0]_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(sensor_id[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[8]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [0]),
        .O(\sensor_id[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sensor_id[9]_i_1 
       (.I0(Q[3]),
        .I1(\sensor_id_reg[15]_0 [1]),
        .O(\sensor_id[9]_i_1_n_0 ));
  FDCE \sensor_id_reg[0] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[8]_i_1_n_0 ),
        .Q(status[5]));
  FDCE \sensor_id_reg[10] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[10]_i_1_n_0 ),
        .Q(status[15]));
  FDCE \sensor_id_reg[11] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[11]_i_1_n_0 ),
        .Q(status[16]));
  FDCE \sensor_id_reg[12] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[12]_i_1_n_0 ),
        .Q(status[17]));
  FDCE \sensor_id_reg[13] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[13]_i_1_n_0 ),
        .Q(status[18]));
  FDCE \sensor_id_reg[14] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[14]_i_1_n_0 ),
        .Q(status[19]));
  FDCE \sensor_id_reg[15] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[15]_i_2_n_0 ),
        .Q(status[20]));
  FDCE \sensor_id_reg[1] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[9]_i_1_n_0 ),
        .Q(status[6]));
  FDCE \sensor_id_reg[2] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[10]_i_1_n_0 ),
        .Q(status[7]));
  FDCE \sensor_id_reg[3] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[11]_i_1_n_0 ),
        .Q(status[8]));
  FDCE \sensor_id_reg[4] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[12]_i_1_n_0 ),
        .Q(status[9]));
  FDCE \sensor_id_reg[5] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[13]_i_1_n_0 ),
        .Q(status[10]));
  FDCE \sensor_id_reg[6] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[14]_i_1_n_0 ),
        .Q(status[11]));
  FDCE \sensor_id_reg[7] 
       (.C(sys_clk50),
        .CE(sensor_id[7]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[15]_i_2_n_0 ),
        .Q(status[12]));
  FDCE \sensor_id_reg[8] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[8]_i_1_n_0 ),
        .Q(status[13]));
  FDCE \sensor_id_reg[9] 
       (.C(sys_clk50),
        .CE(sensor_id[15]),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\sensor_id[9]_i_1_n_0 ),
        .Q(status[14]));
  FDCE start_d_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(cmd_read_reg_0),
        .D(1'b1),
        .Q(start_d));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B030)) 
    \state[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\rom_index[8]_i_3_n_0 ),
        .I4(\state_reg[0]_1 ),
        .I5(\state[0]_i_3_n_0 ),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF557D)) 
    \state[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(init_error_reg_0),
        .I4(\state_reg_n_0_[4] ),
        .I5(Q[3]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1414141014041414)) 
    \state[1]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(init_error_reg_0),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\state[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \state[2]_i_1__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .O(\state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000110F0F0)) 
    \state[2]_i_2 
       (.I0(\error_code_reg[5]_1 ),
        .I1(\error_code_reg[5]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h57777777FFFFFFFF)) 
    \state[2]_i_3 
       (.I0(\error_code[5]_i_8_n_0 ),
        .I1(Q[2]),
        .I2(\error_code[5]_i_10_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE2E2222)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2__0_n_0 ),
        .I1(Q[3]),
        .I2(\state_reg[3]_0 ),
        .I3(\state[3]_i_3_n_0 ),
        .I4(\error_code[5]_i_8_n_0 ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state[3]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \state[3]_i_3 
       (.I0(Q[0]),
        .I1(\error_code[5]_i_10_n_0 ),
        .I2(Q[2]),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[4]_i_10 
       (.I0(init_cmd_valid),
        .I1(init_done_reg_0),
        .O(\state[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1501014B)) 
    \state[4]_i_11 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\state[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAAA)) 
    \state[4]_i_12 
       (.I0(wait_count[15]),
        .I1(\wait_count[31]_i_17_n_0 ),
        .I2(wait_count[9]),
        .I3(\state[4]_i_13_n_0 ),
        .I4(wait_count[14]),
        .O(\state[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[4]_i_13 
       (.I0(wait_count[10]),
        .I1(wait_count[11]),
        .I2(wait_count[13]),
        .I3(wait_count[12]),
        .O(\state[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h50CF5FCF)) 
    \state[4]_i_1__0 
       (.I0(start_d),
        .I1(\state[4]_i_3_n_0 ),
        .I2(\state[4]_i_4__0_n_0 ),
        .I3(\state[4]_i_5_n_0 ),
        .I4(\state[4]_i_6_n_0 ),
        .O(\state[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD550000)) 
    \state[4]_i_2__0 
       (.I0(\error_code[5]_i_8_n_0 ),
        .I1(\state[4]_i_7_n_0 ),
        .I2(\rom_index[8]_i_3_n_0 ),
        .I3(\state_reg[3]_0 ),
        .I4(init_done_i_3_n_0),
        .I5(\state[4]_i_9_n_0 ),
        .O(\state[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808F80)) 
    \state[4]_i_3 
       (.I0(cmd_valid_reg_0),
        .I1(\state[4]_i_10_n_0 ),
        .I2(\state[4]_i_11_n_0 ),
        .I3(\wait_count[31]_i_10_n_0 ),
        .I4(\wait_count[31]_i_11_n_0 ),
        .I5(\state[4]_i_12_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01434017)) 
    \state[4]_i_4__0 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(\state[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00038659)) 
    \state[4]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB8BB)) 
    \state[4]_i_6 
       (.I0(\wait_count[31]_i_9_n_0 ),
        .I1(\state[4]_i_11_n_0 ),
        .I2(init_done_reg_0),
        .I3(rsp_valid),
        .O(\state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[4]_i_7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA88AABABA88)) 
    \state[4]_i_9 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(init_error_reg_0),
        .O(\state[4]_i_9_n_0 ));
  FDCE \state_reg[0] 
       (.C(sys_clk50),
        .CE(\state[4]_i_1__0_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \state_reg[1] 
       (.C(sys_clk50),
        .CE(\state[4]_i_1__0_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \state_reg[2] 
       (.C(sys_clk50),
        .CE(\state[4]_i_1__0_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \state_reg[3] 
       (.C(sys_clk50),
        .CE(\state[4]_i_1__0_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \state_reg[4] 
       (.C(sys_clk50),
        .CE(\state[4]_i_1__0_n_0 ),
        .CLR(\state_reg[0]_0 ),
        .D(\state[4]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  CARRY4 wait_count0_carry
       (.CI(1'b0),
        .CO({wait_count0_carry_n_0,wait_count0_carry_n_1,wait_count0_carry_n_2,wait_count0_carry_n_3}),
        .CYINIT(wait_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry_n_4,wait_count0_carry_n_5,wait_count0_carry_n_6,wait_count0_carry_n_7}),
        .S(wait_count[4:1]));
  CARRY4 wait_count0_carry__0
       (.CI(wait_count0_carry_n_0),
        .CO({wait_count0_carry__0_n_0,wait_count0_carry__0_n_1,wait_count0_carry__0_n_2,wait_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__0_n_4,wait_count0_carry__0_n_5,wait_count0_carry__0_n_6,wait_count0_carry__0_n_7}),
        .S(wait_count[8:5]));
  CARRY4 wait_count0_carry__1
       (.CI(wait_count0_carry__0_n_0),
        .CO({wait_count0_carry__1_n_0,wait_count0_carry__1_n_1,wait_count0_carry__1_n_2,wait_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__1_n_4,wait_count0_carry__1_n_5,wait_count0_carry__1_n_6,wait_count0_carry__1_n_7}),
        .S(wait_count[12:9]));
  CARRY4 wait_count0_carry__2
       (.CI(wait_count0_carry__1_n_0),
        .CO({wait_count0_carry__2_n_0,wait_count0_carry__2_n_1,wait_count0_carry__2_n_2,wait_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__2_n_4,wait_count0_carry__2_n_5,wait_count0_carry__2_n_6,wait_count0_carry__2_n_7}),
        .S(wait_count[16:13]));
  CARRY4 wait_count0_carry__3
       (.CI(wait_count0_carry__2_n_0),
        .CO({wait_count0_carry__3_n_0,wait_count0_carry__3_n_1,wait_count0_carry__3_n_2,wait_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__3_n_4,wait_count0_carry__3_n_5,wait_count0_carry__3_n_6,wait_count0_carry__3_n_7}),
        .S(wait_count[20:17]));
  CARRY4 wait_count0_carry__4
       (.CI(wait_count0_carry__3_n_0),
        .CO({wait_count0_carry__4_n_0,wait_count0_carry__4_n_1,wait_count0_carry__4_n_2,wait_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__4_n_4,wait_count0_carry__4_n_5,wait_count0_carry__4_n_6,wait_count0_carry__4_n_7}),
        .S(wait_count[24:21]));
  CARRY4 wait_count0_carry__5
       (.CI(wait_count0_carry__4_n_0),
        .CO({wait_count0_carry__5_n_0,wait_count0_carry__5_n_1,wait_count0_carry__5_n_2,wait_count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wait_count0_carry__5_n_4,wait_count0_carry__5_n_5,wait_count0_carry__5_n_6,wait_count0_carry__5_n_7}),
        .S(wait_count[28:25]));
  CARRY4 wait_count0_carry__6
       (.CI(wait_count0_carry__5_n_0),
        .CO({NLW_wait_count0_carry__6_CO_UNCONNECTED[3:2],wait_count0_carry__6_n_2,wait_count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wait_count0_carry__6_O_UNCONNECTED[3],wait_count0_carry__6_n_5,wait_count0_carry__6_n_6,wait_count0_carry__6_n_7}),
        .S({1'b0,wait_count[31:29]}));
  LUT6 #(
    .INIT(64'h000000000000F111)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count[0]),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[10]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__1_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[11]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__1_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[12]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__1_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[13]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__2_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[14]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__2_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[15]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__2_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[16]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__2_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[17]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__3_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[18]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__3_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[19]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__3_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[20]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__3_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[21]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__4_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[22]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__4_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[23]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__4_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[24]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__4_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[25]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__5_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[26]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__5_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[27]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__5_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[28]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__5_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[29]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__6_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[2]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[30]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__6_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F555544C455F5)) 
    \wait_count[31]_i_1 
       (.I0(\wait_count[31]_i_3_n_0 ),
        .I1(\wait_count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(\wait_count[31]_i_5_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(wait_count_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_count[31]_i_10 
       (.I0(\wait_count[31]_i_15_n_0 ),
        .I1(wait_count[29]),
        .I2(wait_count[31]),
        .I3(wait_count[30]),
        .I4(\wait_count[31]_i_16_n_0 ),
        .O(\wait_count[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_count[31]_i_11 
       (.I0(wait_count[16]),
        .I1(wait_count[17]),
        .I2(wait_count[18]),
        .I3(wait_count[19]),
        .O(\wait_count[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \wait_count[31]_i_12 
       (.I0(\wait_count[31]_i_17_n_0 ),
        .I1(wait_count[9]),
        .I2(wait_count[12]),
        .I3(wait_count[13]),
        .I4(wait_count[11]),
        .I5(wait_count[10]),
        .O(\wait_count[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \wait_count[31]_i_13 
       (.I0(wait_count[16]),
        .I1(wait_count[17]),
        .I2(wait_count[15]),
        .I3(wait_count[14]),
        .I4(wait_count[12]),
        .I5(wait_count[13]),
        .O(\wait_count[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \wait_count[31]_i_14 
       (.I0(\wait_count[31]_i_18_n_0 ),
        .I1(wait_count[5]),
        .I2(wait_count[4]),
        .I3(wait_count[6]),
        .I4(wait_count[7]),
        .I5(\wait_count[31]_i_19_n_0 ),
        .O(\wait_count[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_count[31]_i_15 
       (.I0(wait_count[20]),
        .I1(wait_count[24]),
        .I2(wait_count[23]),
        .I3(wait_count[22]),
        .I4(wait_count[21]),
        .O(\wait_count[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_count[31]_i_16 
       (.I0(wait_count[26]),
        .I1(wait_count[27]),
        .I2(wait_count[25]),
        .I3(wait_count[28]),
        .O(\wait_count[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFE)) 
    \wait_count[31]_i_17 
       (.I0(wait_count[7]),
        .I1(wait_count[8]),
        .I2(wait_count[6]),
        .I3(wait_count[5]),
        .I4(wait_count[4]),
        .I5(\wait_count[31]_i_18_n_0 ),
        .O(\wait_count[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_count[31]_i_18 
       (.I0(wait_count[1]),
        .I1(wait_count[2]),
        .I2(wait_count[3]),
        .I3(wait_count[0]),
        .O(\wait_count[31]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_count[31]_i_19 
       (.I0(wait_count[10]),
        .I1(wait_count[11]),
        .I2(wait_count[9]),
        .I3(wait_count[8]),
        .I4(wait_count[13]),
        .O(\wait_count[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[31]_i_2 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__6_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_count[31]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(start_d),
        .O(\wait_count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wait_count[31]_i_5 
       (.I0(Q[3]),
        .I1(\state_reg_n_0_[4] ),
        .O(\wait_count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \wait_count[31]_i_6 
       (.I0(\wait_count[31]_i_10_n_0 ),
        .I1(\wait_count[31]_i_11_n_0 ),
        .I2(wait_count[15]),
        .I3(\wait_count[31]_i_12_n_0 ),
        .I4(wait_count[14]),
        .O(\wait_count[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \wait_count[31]_i_7 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\wait_count[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wait_count[31]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\wait_count[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000000B)) 
    \wait_count[31]_i_9 
       (.I0(\wait_count[31]_i_13_n_0 ),
        .I1(\wait_count[31]_i_14_n_0 ),
        .I2(wait_count[19]),
        .I3(wait_count[18]),
        .I4(\wait_count[31]_i_10_n_0 ),
        .O(\wait_count[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[3]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[4]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[5]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__0_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[6]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__0_n_6),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[7]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__0_n_5),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[8]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__0_n_4),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \wait_count[9]_i_1 
       (.I0(\wait_count[31]_i_6_n_0 ),
        .I1(\wait_count[31]_i_7_n_0 ),
        .I2(\wait_count[31]_i_8_n_0 ),
        .I3(\wait_count[31]_i_9_n_0 ),
        .I4(wait_count0_carry__1_n_7),
        .I5(\state_reg_n_0_[4] ),
        .O(\wait_count[9]_i_1_n_0 ));
  FDCE \wait_count_reg[0] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(wait_count[0]));
  FDCE \wait_count_reg[10] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[10]_i_1_n_0 ),
        .Q(wait_count[10]));
  FDCE \wait_count_reg[11] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[11]_i_1_n_0 ),
        .Q(wait_count[11]));
  FDCE \wait_count_reg[12] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[12]_i_1_n_0 ),
        .Q(wait_count[12]));
  FDCE \wait_count_reg[13] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[13]_i_1_n_0 ),
        .Q(wait_count[13]));
  FDCE \wait_count_reg[14] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[14]_i_1_n_0 ),
        .Q(wait_count[14]));
  FDCE \wait_count_reg[15] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[15]_i_1_n_0 ),
        .Q(wait_count[15]));
  FDCE \wait_count_reg[16] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[16]_i_1_n_0 ),
        .Q(wait_count[16]));
  FDCE \wait_count_reg[17] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[17]_i_1_n_0 ),
        .Q(wait_count[17]));
  FDCE \wait_count_reg[18] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[18]_i_1_n_0 ),
        .Q(wait_count[18]));
  FDCE \wait_count_reg[19] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[19]_i_1_n_0 ),
        .Q(wait_count[19]));
  FDCE \wait_count_reg[1] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[1]_i_1_n_0 ),
        .Q(wait_count[1]));
  FDCE \wait_count_reg[20] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[20]_i_1_n_0 ),
        .Q(wait_count[20]));
  FDCE \wait_count_reg[21] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[21]_i_1_n_0 ),
        .Q(wait_count[21]));
  FDCE \wait_count_reg[22] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[22]_i_1_n_0 ),
        .Q(wait_count[22]));
  FDCE \wait_count_reg[23] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[23]_i_1_n_0 ),
        .Q(wait_count[23]));
  FDCE \wait_count_reg[24] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[24]_i_1_n_0 ),
        .Q(wait_count[24]));
  FDCE \wait_count_reg[25] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[25]_i_1_n_0 ),
        .Q(wait_count[25]));
  FDCE \wait_count_reg[26] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[26]_i_1_n_0 ),
        .Q(wait_count[26]));
  FDCE \wait_count_reg[27] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[27]_i_1_n_0 ),
        .Q(wait_count[27]));
  FDCE \wait_count_reg[28] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[28]_i_1_n_0 ),
        .Q(wait_count[28]));
  FDCE \wait_count_reg[29] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[29]_i_1_n_0 ),
        .Q(wait_count[29]));
  FDCE \wait_count_reg[2] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[2]_i_1_n_0 ),
        .Q(wait_count[2]));
  FDCE \wait_count_reg[30] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[30]_i_1_n_0 ),
        .Q(wait_count[30]));
  FDCE \wait_count_reg[31] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\wait_count_reg[29]_0 ),
        .D(\wait_count[31]_i_2_n_0 ),
        .Q(wait_count[31]));
  FDCE \wait_count_reg[3] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[3]_i_1_n_0 ),
        .Q(wait_count[3]));
  FDCE \wait_count_reg[4] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[4]_i_1_n_0 ),
        .Q(wait_count[4]));
  FDCE \wait_count_reg[5] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[5]_i_1_n_0 ),
        .Q(wait_count[5]));
  FDCE \wait_count_reg[6] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[6]_i_1_n_0 ),
        .Q(wait_count[6]));
  FDCE \wait_count_reg[7] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[7]_i_1_n_0 ),
        .Q(wait_count[7]));
  FDCE \wait_count_reg[8] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[8]_i_1_n_0 ),
        .Q(wait_count[8]));
  FDCE \wait_count_reg[9] 
       (.C(sys_clk50),
        .CE(wait_count_0),
        .CLR(\state_reg[0]_0 ),
        .D(\wait_count[9]_i_1_n_0 ),
        .Q(wait_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h85)) 
    \wr_data[0]_i_1 
       (.I0(Q[3]),
        .I1(rom_data_reg__0[0]),
        .I2(Q[2]),
        .O(\wr_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \wr_data[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(rom_data_reg__0[1]),
        .I3(Q[3]),
        .O(\wr_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wr_data[2]_i_1 
       (.I0(rom_data_reg__0[2]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\wr_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wr_data[3]_i_1 
       (.I0(rom_data_reg__0[3]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\wr_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h85)) 
    \wr_data[4]_i_1 
       (.I0(Q[3]),
        .I1(rom_data_reg__0[4]),
        .I2(Q[2]),
        .O(\wr_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wr_data[5]_i_1 
       (.I0(rom_data_reg__0[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\wr_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wr_data[6]_i_1 
       (.I0(rom_data_reg__0[6]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\wr_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \wr_data[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(rom_data_reg__0[7]),
        .I3(Q[3]),
        .O(\wr_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_latched[3]_i_1 
       (.I0(\wr_data_reg_n_0_[3] ),
        .I1(init_done_reg_0),
        .O(D));
  FDCE \wr_data_reg[0] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[0]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [0]));
  FDCE \wr_data_reg[1] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[1]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [1]));
  FDCE \wr_data_reg[2] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[2]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [2]));
  FDCE \wr_data_reg[3] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[3]_i_1_n_0 ),
        .Q(\wr_data_reg_n_0_[3] ));
  FDCE \wr_data_reg[4] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[4]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [3]));
  FDCE \wr_data_reg[5] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[5]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [4]));
  FDCE \wr_data_reg[6] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[6]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [5]));
  FDCE \wr_data_reg[7] 
       (.C(sys_clk50),
        .CE(g0_b0__0_n_0),
        .CLR(cmd_read_reg_0),
        .D(\wr_data[7]_i_1_n_0 ),
        .Q(\wr_data_reg[7]_0 [6]));
endmodule

(* ORIG_REF_NAME = "ov5640_rate_control" *) 
module facebox_system_real_camera_source_0_0_ov5640_rate_control
   (target_slow,
    slow_applied_reg_0,
    busy_reg_0,
    fault_reg_0,
    waiting_reg_0,
    cmd_valid_reg,
    \index_reg[2]_0 ,
    \index_reg[1]_0 ,
    \index_reg[0]_0 ,
    \index_reg[0]_1 ,
    settling_reg_0,
    D,
    \index_reg[1]_1 ,
    cmd_read,
    \index_reg[2]_1 ,
    sleep_request,
    sys_clk50,
    waiting_reg_1,
    \age_reg[31]_0 ,
    init_cmd_valid,
    \reg_addr_latched_reg[4] ,
    slow_applied_reg_1,
    rsp_valid,
    settling_reg_1,
    waiting_reg_2,
    \wr_data_latched_reg[7] ,
    \reg_addr_latched_reg[9] ,
    init_cmd_read,
    waiting_reg_3,
    \settle_count_reg[28]_0 );
  output target_slow;
  output slow_applied_reg_0;
  output busy_reg_0;
  output fault_reg_0;
  output waiting_reg_0;
  output cmd_valid_reg;
  output \index_reg[2]_0 ;
  output \index_reg[1]_0 ;
  output \index_reg[0]_0 ;
  output \index_reg[0]_1 ;
  output settling_reg_0;
  output [6:0]D;
  output [2:0]\index_reg[1]_1 ;
  output cmd_read;
  output \index_reg[2]_1 ;
  input sleep_request;
  input sys_clk50;
  input waiting_reg_1;
  input \age_reg[31]_0 ;
  input init_cmd_valid;
  input \reg_addr_latched_reg[4] ;
  input slow_applied_reg_1;
  input rsp_valid;
  input settling_reg_1;
  input waiting_reg_2;
  input [6:0]\wr_data_latched_reg[7] ;
  input [2:0]\reg_addr_latched_reg[9] ;
  input init_cmd_read;
  input waiting_reg_3;
  input \settle_count_reg[28]_0 ;

  wire [6:0]D;
  wire \age[0]_i_1_n_0 ;
  wire \age[0]_i_3_n_0 ;
  wire \age[0]_i_4_n_0 ;
  wire \age[0]_i_5_n_0 ;
  wire \age[0]_i_6_n_0 ;
  wire \age[0]_i_7_n_0 ;
  wire \age[12]_i_2_n_0 ;
  wire \age[12]_i_3_n_0 ;
  wire \age[12]_i_4_n_0 ;
  wire \age[12]_i_5_n_0 ;
  wire \age[16]_i_2_n_0 ;
  wire \age[16]_i_3_n_0 ;
  wire \age[16]_i_4_n_0 ;
  wire \age[16]_i_5_n_0 ;
  wire \age[20]_i_2_n_0 ;
  wire \age[20]_i_3_n_0 ;
  wire \age[20]_i_4_n_0 ;
  wire \age[20]_i_5_n_0 ;
  wire \age[24]_i_2_n_0 ;
  wire \age[24]_i_3_n_0 ;
  wire \age[24]_i_4_n_0 ;
  wire \age[24]_i_5_n_0 ;
  wire \age[28]_i_2_n_0 ;
  wire \age[28]_i_3_n_0 ;
  wire \age[28]_i_4_n_0 ;
  wire \age[28]_i_5_n_0 ;
  wire \age[4]_i_2_n_0 ;
  wire \age[4]_i_3_n_0 ;
  wire \age[4]_i_4_n_0 ;
  wire \age[4]_i_5_n_0 ;
  wire \age[8]_i_2_n_0 ;
  wire \age[8]_i_3_n_0 ;
  wire \age[8]_i_4_n_0 ;
  wire \age[8]_i_5_n_0 ;
  wire [31:0]age_reg;
  wire \age_reg[0]_i_2_n_0 ;
  wire \age_reg[0]_i_2_n_1 ;
  wire \age_reg[0]_i_2_n_2 ;
  wire \age_reg[0]_i_2_n_3 ;
  wire \age_reg[0]_i_2_n_4 ;
  wire \age_reg[0]_i_2_n_5 ;
  wire \age_reg[0]_i_2_n_6 ;
  wire \age_reg[0]_i_2_n_7 ;
  wire \age_reg[12]_i_1_n_0 ;
  wire \age_reg[12]_i_1_n_1 ;
  wire \age_reg[12]_i_1_n_2 ;
  wire \age_reg[12]_i_1_n_3 ;
  wire \age_reg[12]_i_1_n_4 ;
  wire \age_reg[12]_i_1_n_5 ;
  wire \age_reg[12]_i_1_n_6 ;
  wire \age_reg[12]_i_1_n_7 ;
  wire \age_reg[16]_i_1_n_0 ;
  wire \age_reg[16]_i_1_n_1 ;
  wire \age_reg[16]_i_1_n_2 ;
  wire \age_reg[16]_i_1_n_3 ;
  wire \age_reg[16]_i_1_n_4 ;
  wire \age_reg[16]_i_1_n_5 ;
  wire \age_reg[16]_i_1_n_6 ;
  wire \age_reg[16]_i_1_n_7 ;
  wire \age_reg[20]_i_1_n_0 ;
  wire \age_reg[20]_i_1_n_1 ;
  wire \age_reg[20]_i_1_n_2 ;
  wire \age_reg[20]_i_1_n_3 ;
  wire \age_reg[20]_i_1_n_4 ;
  wire \age_reg[20]_i_1_n_5 ;
  wire \age_reg[20]_i_1_n_6 ;
  wire \age_reg[20]_i_1_n_7 ;
  wire \age_reg[24]_i_1_n_0 ;
  wire \age_reg[24]_i_1_n_1 ;
  wire \age_reg[24]_i_1_n_2 ;
  wire \age_reg[24]_i_1_n_3 ;
  wire \age_reg[24]_i_1_n_4 ;
  wire \age_reg[24]_i_1_n_5 ;
  wire \age_reg[24]_i_1_n_6 ;
  wire \age_reg[24]_i_1_n_7 ;
  wire \age_reg[28]_i_1_n_1 ;
  wire \age_reg[28]_i_1_n_2 ;
  wire \age_reg[28]_i_1_n_3 ;
  wire \age_reg[28]_i_1_n_4 ;
  wire \age_reg[28]_i_1_n_5 ;
  wire \age_reg[28]_i_1_n_6 ;
  wire \age_reg[28]_i_1_n_7 ;
  wire \age_reg[31]_0 ;
  wire \age_reg[4]_i_1_n_0 ;
  wire \age_reg[4]_i_1_n_1 ;
  wire \age_reg[4]_i_1_n_2 ;
  wire \age_reg[4]_i_1_n_3 ;
  wire \age_reg[4]_i_1_n_4 ;
  wire \age_reg[4]_i_1_n_5 ;
  wire \age_reg[4]_i_1_n_6 ;
  wire \age_reg[4]_i_1_n_7 ;
  wire \age_reg[8]_i_1_n_0 ;
  wire \age_reg[8]_i_1_n_1 ;
  wire \age_reg[8]_i_1_n_2 ;
  wire \age_reg[8]_i_1_n_3 ;
  wire \age_reg[8]_i_1_n_4 ;
  wire \age_reg[8]_i_1_n_5 ;
  wire \age_reg[8]_i_1_n_6 ;
  wire \age_reg[8]_i_1_n_7 ;
  wire busy_i_1_n_0;
  wire busy_reg_0;
  wire cmd_read;
  wire cmd_valid_reg;
  wire fault_i_1_n_0;
  wire fault_reg_0;
  wire \index[0]_i_1_n_0 ;
  wire \index[0]_i_2_n_0 ;
  wire \index[0]_i_3_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[1]_i_2_n_0 ;
  wire \index[1]_i_3_n_0 ;
  wire \index[2]_i_10_n_0 ;
  wire \index[2]_i_11_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[2]_i_3_n_0 ;
  wire \index[2]_i_4_n_0 ;
  wire \index[2]_i_5_n_0 ;
  wire \index[2]_i_6_n_0 ;
  wire \index[2]_i_7_n_0 ;
  wire \index[2]_i_8_n_0 ;
  wire \index[2]_i_9_n_0 ;
  wire \index_reg[0]_0 ;
  wire \index_reg[0]_1 ;
  wire \index_reg[1]_0 ;
  wire [2:0]\index_reg[1]_1 ;
  wire \index_reg[2]_0 ;
  wire \index_reg[2]_1 ;
  wire init_cmd_read;
  wire init_cmd_valid;
  wire [31:0]p_1_in;
  wire \reg_addr_latched_reg[4] ;
  wire [2:0]\reg_addr_latched_reg[9] ;
  wire rsp_valid;
  wire [31:0]settle_count;
  wire [31:1]settle_count0;
  wire settle_count0_carry__0_n_0;
  wire settle_count0_carry__0_n_1;
  wire settle_count0_carry__0_n_2;
  wire settle_count0_carry__0_n_3;
  wire settle_count0_carry__1_n_0;
  wire settle_count0_carry__1_n_1;
  wire settle_count0_carry__1_n_2;
  wire settle_count0_carry__1_n_3;
  wire settle_count0_carry__2_n_0;
  wire settle_count0_carry__2_n_1;
  wire settle_count0_carry__2_n_2;
  wire settle_count0_carry__2_n_3;
  wire settle_count0_carry__3_n_0;
  wire settle_count0_carry__3_n_1;
  wire settle_count0_carry__3_n_2;
  wire settle_count0_carry__3_n_3;
  wire settle_count0_carry__4_n_0;
  wire settle_count0_carry__4_n_1;
  wire settle_count0_carry__4_n_2;
  wire settle_count0_carry__4_n_3;
  wire settle_count0_carry__5_n_0;
  wire settle_count0_carry__5_n_1;
  wire settle_count0_carry__5_n_2;
  wire settle_count0_carry__5_n_3;
  wire settle_count0_carry__6_n_2;
  wire settle_count0_carry__6_n_3;
  wire settle_count0_carry_n_0;
  wire settle_count0_carry_n_1;
  wire settle_count0_carry_n_2;
  wire settle_count0_carry_n_3;
  wire \settle_count[31]_i_10_n_0 ;
  wire \settle_count[31]_i_11_n_0 ;
  wire \settle_count[31]_i_12_n_0 ;
  wire \settle_count[31]_i_1_n_0 ;
  wire \settle_count[31]_i_3_n_0 ;
  wire \settle_count[31]_i_4_n_0 ;
  wire \settle_count[31]_i_5_n_0 ;
  wire \settle_count[31]_i_6_n_0 ;
  wire \settle_count[31]_i_7_n_0 ;
  wire \settle_count[31]_i_8_n_0 ;
  wire \settle_count[31]_i_9_n_0 ;
  wire \settle_count_reg[28]_0 ;
  wire settling_i_1_n_0;
  wire settling_i_2_n_0;
  wire settling_i_3_n_0;
  wire settling_i_4_n_0;
  wire settling_i_6_n_0;
  wire settling_i_9_n_0;
  wire settling_reg_0;
  wire settling_reg_1;
  wire settling_reg_n_0;
  wire sleep_request;
  wire slow_applied_i_1_n_0;
  wire slow_applied_i_2_n_0;
  wire slow_applied_reg_0;
  wire slow_applied_reg_1;
  (* async_reg = "true" *) wire slow_meta;
  (* async_reg = "true" *) wire slow_sync;
  wire sys_clk50;
  wire target_slow;
  wire target_slow0;
  wire target_slow_i_1_n_0;
  wire waiting_i_1_n_0;
  wire waiting_i_4_n_0;
  wire waiting_reg_0;
  wire waiting_reg_1;
  wire waiting_reg_2;
  wire waiting_reg_3;
  wire [6:0]\wr_data_latched_reg[7] ;
  wire [3:3]\NLW_age_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_settle_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_settle_count0_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00FF0028)) 
    \age[0]_i_1 
       (.I0(\reg_addr_latched_reg[4] ),
        .I1(slow_sync),
        .I2(slow_applied_reg_0),
        .I3(fault_reg_0),
        .I4(busy_reg_0),
        .O(\age[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[0]_i_3 
       (.I0(age_reg[0]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[0]_i_4 
       (.I0(age_reg[3]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[0]_i_5 
       (.I0(age_reg[2]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[0]_i_6 
       (.I0(age_reg[1]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555545554555555)) 
    \age[0]_i_7 
       (.I0(age_reg[0]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[12]_i_2 
       (.I0(age_reg[15]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[12]_i_3 
       (.I0(age_reg[14]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[12]_i_4 
       (.I0(age_reg[13]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[12]_i_5 
       (.I0(age_reg[12]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[16]_i_2 
       (.I0(age_reg[19]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[16]_i_3 
       (.I0(age_reg[18]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[16]_i_4 
       (.I0(age_reg[17]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[16]_i_5 
       (.I0(age_reg[16]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[20]_i_2 
       (.I0(age_reg[23]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[20]_i_3 
       (.I0(age_reg[22]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[20]_i_4 
       (.I0(age_reg[21]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[20]_i_5 
       (.I0(age_reg[20]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[24]_i_2 
       (.I0(age_reg[27]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[24]_i_3 
       (.I0(age_reg[26]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[24]_i_4 
       (.I0(age_reg[25]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[24]_i_5 
       (.I0(age_reg[24]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[28]_i_2 
       (.I0(age_reg[31]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[28]_i_3 
       (.I0(age_reg[30]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[28]_i_4 
       (.I0(age_reg[29]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[28]_i_5 
       (.I0(age_reg[28]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[4]_i_2 
       (.I0(age_reg[7]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[4]_i_3 
       (.I0(age_reg[6]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[4]_i_4 
       (.I0(age_reg[5]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[4]_i_5 
       (.I0(age_reg[4]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[8]_i_2 
       (.I0(age_reg[11]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[8]_i_3 
       (.I0(age_reg[10]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[8]_i_4 
       (.I0(age_reg[9]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8AAAAAA)) 
    \age[8]_i_5 
       (.I0(age_reg[8]),
        .I1(fault_reg_0),
        .I2(busy_reg_0),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(slow_sync),
        .I5(slow_applied_reg_0),
        .O(\age[8]_i_5_n_0 ));
  FDCE \age_reg[0] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[0]_i_2_n_7 ),
        .Q(age_reg[0]));
  CARRY4 \age_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\age_reg[0]_i_2_n_0 ,\age_reg[0]_i_2_n_1 ,\age_reg[0]_i_2_n_2 ,\age_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\age[0]_i_3_n_0 }),
        .O({\age_reg[0]_i_2_n_4 ,\age_reg[0]_i_2_n_5 ,\age_reg[0]_i_2_n_6 ,\age_reg[0]_i_2_n_7 }),
        .S({\age[0]_i_4_n_0 ,\age[0]_i_5_n_0 ,\age[0]_i_6_n_0 ,\age[0]_i_7_n_0 }));
  FDCE \age_reg[10] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[8]_i_1_n_5 ),
        .Q(age_reg[10]));
  FDCE \age_reg[11] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[8]_i_1_n_4 ),
        .Q(age_reg[11]));
  FDCE \age_reg[12] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[12]_i_1_n_7 ),
        .Q(age_reg[12]));
  CARRY4 \age_reg[12]_i_1 
       (.CI(\age_reg[8]_i_1_n_0 ),
        .CO({\age_reg[12]_i_1_n_0 ,\age_reg[12]_i_1_n_1 ,\age_reg[12]_i_1_n_2 ,\age_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[12]_i_1_n_4 ,\age_reg[12]_i_1_n_5 ,\age_reg[12]_i_1_n_6 ,\age_reg[12]_i_1_n_7 }),
        .S({\age[12]_i_2_n_0 ,\age[12]_i_3_n_0 ,\age[12]_i_4_n_0 ,\age[12]_i_5_n_0 }));
  FDCE \age_reg[13] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[12]_i_1_n_6 ),
        .Q(age_reg[13]));
  FDCE \age_reg[14] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[12]_i_1_n_5 ),
        .Q(age_reg[14]));
  FDCE \age_reg[15] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[12]_i_1_n_4 ),
        .Q(age_reg[15]));
  FDCE \age_reg[16] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[16]_i_1_n_7 ),
        .Q(age_reg[16]));
  CARRY4 \age_reg[16]_i_1 
       (.CI(\age_reg[12]_i_1_n_0 ),
        .CO({\age_reg[16]_i_1_n_0 ,\age_reg[16]_i_1_n_1 ,\age_reg[16]_i_1_n_2 ,\age_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[16]_i_1_n_4 ,\age_reg[16]_i_1_n_5 ,\age_reg[16]_i_1_n_6 ,\age_reg[16]_i_1_n_7 }),
        .S({\age[16]_i_2_n_0 ,\age[16]_i_3_n_0 ,\age[16]_i_4_n_0 ,\age[16]_i_5_n_0 }));
  FDCE \age_reg[17] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[16]_i_1_n_6 ),
        .Q(age_reg[17]));
  FDCE \age_reg[18] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[16]_i_1_n_5 ),
        .Q(age_reg[18]));
  FDCE \age_reg[19] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[16]_i_1_n_4 ),
        .Q(age_reg[19]));
  FDCE \age_reg[1] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[0]_i_2_n_6 ),
        .Q(age_reg[1]));
  FDCE \age_reg[20] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[20]_i_1_n_7 ),
        .Q(age_reg[20]));
  CARRY4 \age_reg[20]_i_1 
       (.CI(\age_reg[16]_i_1_n_0 ),
        .CO({\age_reg[20]_i_1_n_0 ,\age_reg[20]_i_1_n_1 ,\age_reg[20]_i_1_n_2 ,\age_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[20]_i_1_n_4 ,\age_reg[20]_i_1_n_5 ,\age_reg[20]_i_1_n_6 ,\age_reg[20]_i_1_n_7 }),
        .S({\age[20]_i_2_n_0 ,\age[20]_i_3_n_0 ,\age[20]_i_4_n_0 ,\age[20]_i_5_n_0 }));
  FDCE \age_reg[21] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[20]_i_1_n_6 ),
        .Q(age_reg[21]));
  FDCE \age_reg[22] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[20]_i_1_n_5 ),
        .Q(age_reg[22]));
  FDCE \age_reg[23] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[20]_i_1_n_4 ),
        .Q(age_reg[23]));
  FDCE \age_reg[24] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[24]_i_1_n_7 ),
        .Q(age_reg[24]));
  CARRY4 \age_reg[24]_i_1 
       (.CI(\age_reg[20]_i_1_n_0 ),
        .CO({\age_reg[24]_i_1_n_0 ,\age_reg[24]_i_1_n_1 ,\age_reg[24]_i_1_n_2 ,\age_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[24]_i_1_n_4 ,\age_reg[24]_i_1_n_5 ,\age_reg[24]_i_1_n_6 ,\age_reg[24]_i_1_n_7 }),
        .S({\age[24]_i_2_n_0 ,\age[24]_i_3_n_0 ,\age[24]_i_4_n_0 ,\age[24]_i_5_n_0 }));
  FDCE \age_reg[25] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[24]_i_1_n_6 ),
        .Q(age_reg[25]));
  FDCE \age_reg[26] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[24]_i_1_n_5 ),
        .Q(age_reg[26]));
  FDCE \age_reg[27] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[24]_i_1_n_4 ),
        .Q(age_reg[27]));
  FDCE \age_reg[28] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[28]_i_1_n_7 ),
        .Q(age_reg[28]));
  CARRY4 \age_reg[28]_i_1 
       (.CI(\age_reg[24]_i_1_n_0 ),
        .CO({\NLW_age_reg[28]_i_1_CO_UNCONNECTED [3],\age_reg[28]_i_1_n_1 ,\age_reg[28]_i_1_n_2 ,\age_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[28]_i_1_n_4 ,\age_reg[28]_i_1_n_5 ,\age_reg[28]_i_1_n_6 ,\age_reg[28]_i_1_n_7 }),
        .S({\age[28]_i_2_n_0 ,\age[28]_i_3_n_0 ,\age[28]_i_4_n_0 ,\age[28]_i_5_n_0 }));
  FDCE \age_reg[29] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[28]_i_1_n_6 ),
        .Q(age_reg[29]));
  FDCE \age_reg[2] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[0]_i_2_n_5 ),
        .Q(age_reg[2]));
  FDCE \age_reg[30] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[28]_i_1_n_5 ),
        .Q(age_reg[30]));
  FDCE \age_reg[31] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[28]_i_1_n_4 ),
        .Q(age_reg[31]));
  FDCE \age_reg[3] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[0]_i_2_n_4 ),
        .Q(age_reg[3]));
  FDCE \age_reg[4] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[4]_i_1_n_7 ),
        .Q(age_reg[4]));
  CARRY4 \age_reg[4]_i_1 
       (.CI(\age_reg[0]_i_2_n_0 ),
        .CO({\age_reg[4]_i_1_n_0 ,\age_reg[4]_i_1_n_1 ,\age_reg[4]_i_1_n_2 ,\age_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[4]_i_1_n_4 ,\age_reg[4]_i_1_n_5 ,\age_reg[4]_i_1_n_6 ,\age_reg[4]_i_1_n_7 }),
        .S({\age[4]_i_2_n_0 ,\age[4]_i_3_n_0 ,\age[4]_i_4_n_0 ,\age[4]_i_5_n_0 }));
  FDCE \age_reg[5] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[4]_i_1_n_6 ),
        .Q(age_reg[5]));
  FDCE \age_reg[6] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[4]_i_1_n_5 ),
        .Q(age_reg[6]));
  FDCE \age_reg[7] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[4]_i_1_n_4 ),
        .Q(age_reg[7]));
  FDCE \age_reg[8] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[8]_i_1_n_7 ),
        .Q(age_reg[8]));
  CARRY4 \age_reg[8]_i_1 
       (.CI(\age_reg[4]_i_1_n_0 ),
        .CO({\age_reg[8]_i_1_n_0 ,\age_reg[8]_i_1_n_1 ,\age_reg[8]_i_1_n_2 ,\age_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\age_reg[8]_i_1_n_4 ,\age_reg[8]_i_1_n_5 ,\age_reg[8]_i_1_n_6 ,\age_reg[8]_i_1_n_7 }),
        .S({\age[8]_i_2_n_0 ,\age[8]_i_3_n_0 ,\age[8]_i_4_n_0 ,\age[8]_i_5_n_0 }));
  FDCE \age_reg[9] 
       (.C(sys_clk50),
        .CE(\age[0]_i_1_n_0 ),
        .CLR(\age_reg[31]_0 ),
        .D(\age_reg[8]_i_1_n_6 ),
        .Q(age_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA88888)) 
    busy_i_1
       (.I0(busy_reg_0),
        .I1(fault_reg_0),
        .I2(\index[0]_i_2_n_0 ),
        .I3(\index[1]_i_2_n_0 ),
        .I4(\index[2]_i_4_n_0 ),
        .I5(target_slow0),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    cmd_read_latched_i_1
       (.I0(\index_reg[2]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\index_reg[1]_0 ),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(init_cmd_read),
        .O(cmd_read));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hAAEAEEEE)) 
    fault_i_1
       (.I0(fault_reg_0),
        .I1(busy_reg_0),
        .I2(slow_applied_reg_1),
        .I3(\index[0]_i_2_n_0 ),
        .I4(\index[2]_i_4_n_0 ),
        .O(fault_i_1_n_0));
  FDCE fault_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(fault_i_1_n_0),
        .Q(fault_reg_0));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \index[0]_i_1 
       (.I0(target_slow0),
        .I1(\index[1]_i_2_n_0 ),
        .I2(\index[0]_i_2_n_0 ),
        .I3(\index[0]_i_3_n_0 ),
        .I4(\index[2]_i_4_n_0 ),
        .I5(\index_reg[0]_0 ),
        .O(\index[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \index[0]_i_2 
       (.I0(settling_reg_n_0),
        .I1(\reg_addr_latched_reg[4] ),
        .I2(waiting_reg_0),
        .I3(rsp_valid),
        .O(\index[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \index[0]_i_3 
       (.I0(busy_reg_0),
        .I1(fault_reg_0),
        .O(\index[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1333333320000000)) 
    \index[1]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(target_slow0),
        .I2(\index[1]_i_2_n_0 ),
        .I3(\index[1]_i_3_n_0 ),
        .I4(\index[2]_i_4_n_0 ),
        .I5(\index_reg[1]_0 ),
        .O(\index[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \index[1]_i_2 
       (.I0(\index_reg[2]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(\index_reg[0]_0 ),
        .I3(slow_applied_reg_1),
        .O(\index[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \index[1]_i_3 
       (.I0(fault_reg_0),
        .I1(busy_reg_0),
        .I2(rsp_valid),
        .I3(waiting_reg_0),
        .I4(\reg_addr_latched_reg[4] ),
        .I5(settling_reg_n_0),
        .O(\index[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F070F0F00080000)) 
    \index[2]_i_1 
       (.I0(\index_reg[1]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(target_slow0),
        .I3(\index[2]_i_3_n_0 ),
        .I4(\index[2]_i_4_n_0 ),
        .I5(\index_reg[2]_0 ),
        .O(\index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \index[2]_i_10 
       (.I0(age_reg[4]),
        .I1(age_reg[2]),
        .I2(age_reg[5]),
        .I3(age_reg[3]),
        .I4(age_reg[0]),
        .I5(age_reg[1]),
        .O(\index[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \index[2]_i_11 
       (.I0(age_reg[12]),
        .I1(age_reg[13]),
        .I2(age_reg[16]),
        .I3(age_reg[14]),
        .I4(age_reg[15]),
        .O(\index[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000060)) 
    \index[2]_i_2 
       (.I0(slow_applied_reg_0),
        .I1(slow_sync),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(busy_reg_0),
        .I4(fault_reg_0),
        .O(target_slow0));
  LUT6 #(
    .INIT(64'hFFFFBAAAFFFFFFFF)) 
    \index[2]_i_3 
       (.I0(slow_applied_reg_1),
        .I1(\index_reg[0]_0 ),
        .I2(\index_reg[1]_0 ),
        .I3(\index_reg[2]_0 ),
        .I4(\index[0]_i_2_n_0 ),
        .I5(\index[0]_i_3_n_0 ),
        .O(\index[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \index[2]_i_4 
       (.I0(age_reg[25]),
        .I1(\index[2]_i_5_n_0 ),
        .I2(\index[2]_i_6_n_0 ),
        .O(\index[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000001555FFFF)) 
    \index[2]_i_5 
       (.I0(age_reg[19]),
        .I1(age_reg[18]),
        .I2(age_reg[17]),
        .I3(\index[2]_i_7_n_0 ),
        .I4(age_reg[20]),
        .I5(\index[2]_i_8_n_0 ),
        .O(\index[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \index[2]_i_6 
       (.I0(age_reg[26]),
        .I1(age_reg[31]),
        .I2(age_reg[28]),
        .I3(age_reg[27]),
        .I4(age_reg[30]),
        .I5(age_reg[29]),
        .O(\index[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454444)) 
    \index[2]_i_7 
       (.I0(\index[2]_i_9_n_0 ),
        .I1(age_reg[8]),
        .I2(\index[2]_i_10_n_0 ),
        .I3(age_reg[6]),
        .I4(age_reg[7]),
        .I5(\index[2]_i_11_n_0 ),
        .O(\index[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index[2]_i_8 
       (.I0(age_reg[21]),
        .I1(age_reg[22]),
        .I2(age_reg[23]),
        .I3(age_reg[24]),
        .O(\index[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \index[2]_i_9 
       (.I0(age_reg[11]),
        .I1(age_reg[9]),
        .I2(age_reg[10]),
        .O(\index[2]_i_9_n_0 ));
  FDCE \index_reg[0] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg[0]_0 ));
  FDCE \index_reg[1] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg[1]_0 ));
  FDCE \index_reg[2] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(\index[2]_i_1_n_0 ),
        .Q(\index_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \reg_addr_latched[0]_i_1 
       (.I0(\index_reg[1]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(\reg_addr_latched_reg[9] [0]),
        .O(\index_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \reg_addr_latched[4]_i_1 
       (.I0(\index_reg[1]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(\reg_addr_latched_reg[9] [1]),
        .O(\index_reg[1]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \reg_addr_latched[9]_i_1 
       (.I0(\index_reg[1]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(\reg_addr_latched_reg[9] [2]),
        .O(\index_reg[1]_1 [2]));
  CARRY4 settle_count0_carry
       (.CI(1'b0),
        .CO({settle_count0_carry_n_0,settle_count0_carry_n_1,settle_count0_carry_n_2,settle_count0_carry_n_3}),
        .CYINIT(settle_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[4:1]),
        .S(settle_count[4:1]));
  CARRY4 settle_count0_carry__0
       (.CI(settle_count0_carry_n_0),
        .CO({settle_count0_carry__0_n_0,settle_count0_carry__0_n_1,settle_count0_carry__0_n_2,settle_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[8:5]),
        .S(settle_count[8:5]));
  CARRY4 settle_count0_carry__1
       (.CI(settle_count0_carry__0_n_0),
        .CO({settle_count0_carry__1_n_0,settle_count0_carry__1_n_1,settle_count0_carry__1_n_2,settle_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[12:9]),
        .S(settle_count[12:9]));
  CARRY4 settle_count0_carry__2
       (.CI(settle_count0_carry__1_n_0),
        .CO({settle_count0_carry__2_n_0,settle_count0_carry__2_n_1,settle_count0_carry__2_n_2,settle_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[16:13]),
        .S(settle_count[16:13]));
  CARRY4 settle_count0_carry__3
       (.CI(settle_count0_carry__2_n_0),
        .CO({settle_count0_carry__3_n_0,settle_count0_carry__3_n_1,settle_count0_carry__3_n_2,settle_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[20:17]),
        .S(settle_count[20:17]));
  CARRY4 settle_count0_carry__4
       (.CI(settle_count0_carry__3_n_0),
        .CO({settle_count0_carry__4_n_0,settle_count0_carry__4_n_1,settle_count0_carry__4_n_2,settle_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[24:21]),
        .S(settle_count[24:21]));
  CARRY4 settle_count0_carry__5
       (.CI(settle_count0_carry__4_n_0),
        .CO({settle_count0_carry__5_n_0,settle_count0_carry__5_n_1,settle_count0_carry__5_n_2,settle_count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(settle_count0[28:25]),
        .S(settle_count[28:25]));
  CARRY4 settle_count0_carry__6
       (.CI(settle_count0_carry__5_n_0),
        .CO({NLW_settle_count0_carry__6_CO_UNCONNECTED[3:2],settle_count0_carry__6_n_2,settle_count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_settle_count0_carry__6_O_UNCONNECTED[3],settle_count0[31:29]}),
        .S({1'b0,settle_count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \settle_count[0]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count[0]),
        .I2(target_slow0),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[10]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[10]),
        .I2(target_slow0),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[11]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[11]),
        .I2(target_slow0),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[12]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[12]),
        .I2(target_slow0),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[13]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[13]),
        .I2(target_slow0),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[14]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[14]),
        .I2(target_slow0),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[15]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[15]),
        .I2(target_slow0),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[16]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[16]),
        .I2(target_slow0),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[17]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[17]),
        .I2(target_slow0),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[18]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[18]),
        .I2(target_slow0),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[19]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[19]),
        .I2(target_slow0),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[1]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[1]),
        .I2(target_slow0),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[20]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[20]),
        .I2(target_slow0),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[21]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[21]),
        .I2(target_slow0),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[22]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[22]),
        .I2(target_slow0),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[23]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[23]),
        .I2(target_slow0),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[24]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[24]),
        .I2(target_slow0),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[25]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[25]),
        .I2(target_slow0),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[26]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[26]),
        .I2(target_slow0),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[27]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[27]),
        .I2(target_slow0),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[28]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[28]),
        .I2(target_slow0),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[29]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[29]),
        .I2(target_slow0),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[2]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[2]),
        .I2(target_slow0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[30]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[30]),
        .I2(target_slow0),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \settle_count[31]_i_1 
       (.I0(target_slow0),
        .I1(settling_reg_n_0),
        .I2(\index[2]_i_4_n_0 ),
        .I3(busy_reg_0),
        .I4(fault_reg_0),
        .O(\settle_count[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \settle_count[31]_i_10 
       (.I0(settle_count[11]),
        .I1(settle_count[10]),
        .O(\settle_count[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \settle_count[31]_i_11 
       (.I0(settle_count[5]),
        .I1(settle_count[6]),
        .I2(settle_count[1]),
        .I3(settle_count[2]),
        .O(\settle_count[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \settle_count[31]_i_12 
       (.I0(settle_count[7]),
        .I1(settle_count[0]),
        .I2(settle_count[3]),
        .I3(settle_count[4]),
        .O(\settle_count[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[31]_i_2 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[31]),
        .I2(target_slow0),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h000000001110FFFF)) 
    \settle_count[31]_i_3 
       (.I0(settle_count[22]),
        .I1(settle_count[23]),
        .I2(\settle_count[31]_i_4_n_0 ),
        .I3(\settle_count[31]_i_5_n_0 ),
        .I4(settle_count[24]),
        .I5(\settle_count[31]_i_6_n_0 ),
        .O(\settle_count[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \settle_count[31]_i_4 
       (.I0(settle_count[21]),
        .I1(settle_count[20]),
        .O(\settle_count[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000111FFFF)) 
    \settle_count[31]_i_5 
       (.I0(settle_count[14]),
        .I1(settle_count[15]),
        .I2(\settle_count[31]_i_7_n_0 ),
        .I3(settle_count[13]),
        .I4(settle_count[16]),
        .I5(\settle_count[31]_i_8_n_0 ),
        .O(\settle_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \settle_count[31]_i_6 
       (.I0(settle_count[26]),
        .I1(settle_count[25]),
        .I2(settle_count[28]),
        .I3(\settle_count[31]_i_9_n_0 ),
        .O(\settle_count[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABAA)) 
    \settle_count[31]_i_7 
       (.I0(settle_count[12]),
        .I1(\settle_count[31]_i_10_n_0 ),
        .I2(\settle_count[31]_i_11_n_0 ),
        .I3(\settle_count[31]_i_12_n_0 ),
        .I4(settle_count[8]),
        .I5(settle_count[9]),
        .O(\settle_count[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \settle_count[31]_i_8 
       (.I0(settle_count[19]),
        .I1(settle_count[17]),
        .I2(settle_count[18]),
        .O(\settle_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \settle_count[31]_i_9 
       (.I0(settle_count[29]),
        .I1(settle_count[31]),
        .I2(settle_count[27]),
        .I3(settle_count[30]),
        .O(\settle_count[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[3]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[3]),
        .I2(target_slow0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[4]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[4]),
        .I2(target_slow0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[5]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[5]),
        .I2(target_slow0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[6]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[6]),
        .I2(target_slow0),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[7]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[7]),
        .I2(target_slow0),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[8]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[8]),
        .I2(target_slow0),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \settle_count[9]_i_1 
       (.I0(\settle_count[31]_i_3_n_0 ),
        .I1(settle_count0[9]),
        .I2(target_slow0),
        .O(p_1_in[9]));
  FDCE \settle_count_reg[0] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[0]),
        .Q(settle_count[0]));
  FDCE \settle_count_reg[10] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[10]),
        .Q(settle_count[10]));
  FDCE \settle_count_reg[11] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[11]),
        .Q(settle_count[11]));
  FDCE \settle_count_reg[12] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[12]),
        .Q(settle_count[12]));
  FDCE \settle_count_reg[13] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[13]),
        .Q(settle_count[13]));
  FDCE \settle_count_reg[14] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[14]),
        .Q(settle_count[14]));
  FDCE \settle_count_reg[15] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[15]),
        .Q(settle_count[15]));
  FDCE \settle_count_reg[16] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[16]),
        .Q(settle_count[16]));
  FDCE \settle_count_reg[17] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[17]),
        .Q(settle_count[17]));
  FDCE \settle_count_reg[18] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[18]),
        .Q(settle_count[18]));
  FDCE \settle_count_reg[19] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[19]),
        .Q(settle_count[19]));
  FDCE \settle_count_reg[1] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[1]),
        .Q(settle_count[1]));
  FDCE \settle_count_reg[20] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[20]),
        .Q(settle_count[20]));
  FDCE \settle_count_reg[21] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[21]),
        .Q(settle_count[21]));
  FDCE \settle_count_reg[22] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[22]),
        .Q(settle_count[22]));
  FDCE \settle_count_reg[23] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[23]),
        .Q(settle_count[23]));
  FDCE \settle_count_reg[24] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(waiting_reg_1),
        .D(p_1_in[24]),
        .Q(settle_count[24]));
  FDCE \settle_count_reg[25] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[25]),
        .Q(settle_count[25]));
  FDCE \settle_count_reg[26] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[26]),
        .Q(settle_count[26]));
  FDCE \settle_count_reg[27] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[27]),
        .Q(settle_count[27]));
  FDCE \settle_count_reg[28] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[28]),
        .Q(settle_count[28]));
  FDCE \settle_count_reg[29] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[29]),
        .Q(settle_count[29]));
  FDCE \settle_count_reg[2] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[2]),
        .Q(settle_count[2]));
  FDCE \settle_count_reg[30] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[30]),
        .Q(settle_count[30]));
  FDCE \settle_count_reg[31] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[31]),
        .Q(settle_count[31]));
  FDCE \settle_count_reg[3] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[3]),
        .Q(settle_count[3]));
  FDCE \settle_count_reg[4] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[4]),
        .Q(settle_count[4]));
  FDCE \settle_count_reg[5] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[5]),
        .Q(settle_count[5]));
  FDCE \settle_count_reg[6] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[6]),
        .Q(settle_count[6]));
  FDCE \settle_count_reg[7] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[7]),
        .Q(settle_count[7]));
  FDCE \settle_count_reg[8] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[8]),
        .Q(settle_count[8]));
  FDCE \settle_count_reg[9] 
       (.C(sys_clk50),
        .CE(\settle_count[31]_i_1_n_0 ),
        .CLR(\settle_count_reg[28]_0 ),
        .D(p_1_in[9]),
        .Q(settle_count[9]));
  LUT6 #(
    .INIT(64'h3133333301000000)) 
    settling_i_1
       (.I0(\index[0]_i_2_n_0 ),
        .I1(target_slow0),
        .I2(settling_i_2_n_0),
        .I3(\index[2]_i_4_n_0 ),
        .I4(\index[0]_i_3_n_0 ),
        .I5(settling_reg_n_0),
        .O(settling_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    settling_i_10
       (.I0(\index_reg[0]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(\index_reg[2]_0 ),
        .O(\index_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h004FFFFF004F0000)) 
    settling_i_2
       (.I0(settling_i_3_n_0),
        .I1(settling_i_4_n_0),
        .I2(settle_count[24]),
        .I3(\settle_count[31]_i_6_n_0 ),
        .I4(settling_reg_n_0),
        .I5(settling_reg_1),
        .O(settling_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    settling_i_3
       (.I0(settle_count[23]),
        .I1(settle_count[22]),
        .O(settling_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111151)) 
    settling_i_4
       (.I0(\settle_count[31]_i_8_n_0 ),
        .I1(settle_count[16]),
        .I2(settling_i_6_n_0),
        .I3(settle_count[15]),
        .I4(settle_count[14]),
        .I5(\settle_count[31]_i_4_n_0 ),
        .O(settling_i_4_n_0));
  LUT6 #(
    .INIT(64'h55555555FFFF7757)) 
    settling_i_6
       (.I0(settle_count[13]),
        .I1(settling_i_9_n_0),
        .I2(\settle_count[31]_i_12_n_0 ),
        .I3(\settle_count[31]_i_11_n_0 ),
        .I4(\settle_count[31]_i_10_n_0 ),
        .I5(settle_count[12]),
        .O(settling_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    settling_i_7
       (.I0(\index_reg[2]_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\index_reg[1]_0 ),
        .O(\index_reg[2]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    settling_i_9
       (.I0(settle_count[9]),
        .I1(settle_count[8]),
        .O(settling_i_9_n_0));
  FDCE settling_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(settling_i_1_n_0),
        .Q(settling_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    slow_applied_i_1
       (.I0(target_slow),
        .I1(target_slow0),
        .I2(\index[2]_i_4_n_0 ),
        .I3(slow_applied_i_2_n_0),
        .I4(slow_applied_reg_1),
        .I5(slow_applied_reg_0),
        .O(slow_applied_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    slow_applied_i_2
       (.I0(\index[0]_i_2_n_0 ),
        .I1(\index_reg[0]_0 ),
        .I2(\index_reg[1]_0 ),
        .I3(\index_reg[2]_0 ),
        .I4(busy_reg_0),
        .I5(fault_reg_0),
        .O(slow_applied_i_2_n_0));
  FDCE slow_applied_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(slow_applied_i_1_n_0),
        .Q(slow_applied_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE slow_meta_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(sleep_request),
        .Q(slow_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE slow_sync_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(slow_meta),
        .Q(slow_sync));
  LUT6 #(
    .INIT(64'hFFFCFFFF55555555)) 
    \state[4]_i_3__0 
       (.I0(init_cmd_valid),
        .I1(settling_reg_n_0),
        .I2(waiting_reg_0),
        .I3(fault_reg_0),
        .I4(busy_reg_0),
        .I5(\reg_addr_latched_reg[4] ),
        .O(cmd_valid_reg));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000040)) 
    target_slow_i_1
       (.I0(slow_applied_reg_0),
        .I1(slow_sync),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(busy_reg_0),
        .I4(fault_reg_0),
        .I5(target_slow),
        .O(target_slow_i_1_n_0));
  FDCE target_slow_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(target_slow_i_1_n_0),
        .Q(target_slow));
  LUT6 #(
    .INIT(64'hFFFD555500A00000)) 
    waiting_i_1
       (.I0(\age[0]_i_1_n_0 ),
        .I1(waiting_reg_3),
        .I2(settling_reg_0),
        .I3(settling_reg_n_0),
        .I4(waiting_i_4_n_0),
        .I5(waiting_reg_0),
        .O(waiting_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    waiting_i_3
       (.I0(waiting_reg_2),
        .I1(settling_reg_n_0),
        .I2(waiting_reg_0),
        .I3(fault_reg_0),
        .I4(busy_reg_0),
        .I5(\reg_addr_latched_reg[4] ),
        .O(settling_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    waiting_i_4
       (.I0(\index[2]_i_6_n_0 ),
        .I1(\index[2]_i_5_n_0 ),
        .I2(age_reg[25]),
        .I3(target_slow0),
        .O(waiting_i_4_n_0));
  FDCE waiting_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(waiting_reg_1),
        .D(waiting_i_1_n_0),
        .Q(waiting_reg_0));
  LUT6 #(
    .INIT(64'h0FAA03AA03AAFFAA)) 
    \wr_data_latched[0]_i_1 
       (.I0(\wr_data_latched_reg[7] [0]),
        .I1(target_slow),
        .I2(\index_reg[2]_0 ),
        .I3(\reg_addr_latched_reg[4] ),
        .I4(\index_reg[1]_0 ),
        .I5(\index_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h1F1B1F1BFFFF0000)) 
    \wr_data_latched[1]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(\index_reg[2]_0 ),
        .I3(target_slow),
        .I4(\wr_data_latched_reg[7] [1]),
        .I5(\reg_addr_latched_reg[4] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \wr_data_latched[2]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(target_slow),
        .I3(\index_reg[2]_0 ),
        .I4(\reg_addr_latched_reg[4] ),
        .I5(\wr_data_latched_reg[7] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00E0FFFF00E00000)) 
    \wr_data_latched[4]_i_1 
       (.I0(\index_reg[1]_0 ),
        .I1(target_slow),
        .I2(\index_reg[0]_0 ),
        .I3(\index_reg[2]_0 ),
        .I4(\reg_addr_latched_reg[4] ),
        .I5(\wr_data_latched_reg[7] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0C0C0CFC0C0C5C0C)) 
    \wr_data_latched[5]_i_1 
       (.I0(target_slow),
        .I1(\wr_data_latched_reg[7] [4]),
        .I2(\reg_addr_latched_reg[4] ),
        .I3(\index_reg[1]_0 ),
        .I4(\index_reg[0]_0 ),
        .I5(\index_reg[2]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \wr_data_latched[6]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(target_slow),
        .I3(\index_reg[2]_0 ),
        .I4(\reg_addr_latched_reg[4] ),
        .I5(\wr_data_latched_reg[7] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h333F33B3000C0080)) 
    \wr_data_latched[7]_i_2 
       (.I0(target_slow),
        .I1(\reg_addr_latched_reg[4] ),
        .I2(\index_reg[1]_0 ),
        .I3(\index_reg[0]_0 ),
        .I4(\index_reg[2]_0 ),
        .I5(\wr_data_latched_reg[7] [6]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "real_camera_wp2_wp3_axis_source" *) 
module facebox_system_real_camera_source_0_0_real_camera_wp2_wp3_axis_source
   (sys_clk50,
    sys_rst_n,
    xclk24,
    cam_xclk,
    cam_scl,
    cam_sda,
    cam_pclk,
    cam_vsync,
    cam_href,
    cam_data,
    aclk,
    aresetn,
    capture_enable,
    sleep_request,
    sleep_status,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    status,
    gray_tap_valid,
    gray_tap_data,
    gray_tap_sof,
    gray_tap_eol,
    gray_tap_abort,
    gray_tap_commit,
    gray_tap_frame_id,
    gray_tap_resetn,
    gray_tap_source_id,
    gray_tap_verdict_source_id,
    gray_tap_verdict_valid,
    gray_tap_verdict_good,
    gray_tap_provenance_fault);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk50 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk50, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000" *) input sys_clk50;
  input sys_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 xclk24 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME xclk24, FREQ_HZ 24000000" *) input xclk24;
  output cam_xclk;
  output cam_scl;
  inout cam_sda;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, FREQ_HZ 50000000" *) input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *) input aclk;
  input aresetn;
  input capture_enable;
  input sleep_request;
  output [31:0]sleep_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  output [31:0]status;
  output gray_tap_valid;
  output [7:0]gray_tap_data;
  output gray_tap_sof;
  output gray_tap_eol;
  output gray_tap_abort;
  output gray_tap_commit;
  output [31:0]gray_tap_frame_id;
  output gray_tap_resetn;
  output [31:0]gray_tap_source_id;
  output [31:0]gray_tap_verdict_source_id;
  output gray_tap_verdict_valid;
  output gray_tap_verdict_good;
  output gray_tap_provenance_fault;

  wire \<const0> ;
  wire \<const1> ;
  wire abort_recovery_done_pulse;
  wire aclk;
  wire aresetn;
  (* async_reg = "true" *) wire bad_meta;
  wire bad_seen_cam;
  (* async_reg = "true" *) wire bad_sync;
  wire [7:0]cam_data;
  wire [7:0]cam_data_q;
  wire cam_href;
  wire cam_href_q;
  wire cam_pclk;
  (* async_reg = "true" *) wire [1:0]cam_release;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire cam_vsync_q;
  wire cam_xclk;
  wire capture_axi_meta;
  wire capture_axi_sync;
  (* async_reg = "true" *) wire capture_cam_meta;
  wire capture_cam_meta_i_1_n_0;
  (* async_reg = "true" *) wire capture_cam_sync;
  wire capture_enable;
  wire fifo_overflow_pulse;
  wire frame_done;
  wire frame_good;
  (* async_reg = "true" *) wire good_meta;
  wire good_seen_cam;
  (* async_reg = "true" *) wire good_sync;
  wire [7:0]gray8;
  wire \gray8_reg[7]_i_9_n_0 ;
  wire gray_frame_done_pulse3_out;
  wire gray_frame_done_pulse_reg_n_0;
  wire \gray_line_count[7]_i_4_n_0 ;
  wire \gray_line_count_reg_n_0_[0] ;
  wire \gray_line_count_reg_n_0_[1] ;
  wire \gray_line_count_reg_n_0_[2] ;
  wire \gray_line_count_reg_n_0_[3] ;
  wire \gray_line_count_reg_n_0_[4] ;
  wire \gray_line_count_reg_n_0_[5] ;
  wire \gray_line_count_reg_n_0_[6] ;
  wire \gray_line_count_reg_n_0_[7] ;
  wire gray_tap_abort;
  wire gray_tap_commit;
  wire [7:0]gray_tap_data;
  wire gray_tap_eol;
  wire [31:0]gray_tap_frame_id;
  wire gray_tap_provenance_fault;
  wire gray_tap_resetn;
  wire gray_tap_sof;
  wire [31:0]gray_tap_source_id;
  wire gray_tap_valid;
  wire gray_tap_verdict_good;
  wire [31:0]gray_tap_verdict_source_id;
  wire gray_tap_verdict_valid;
  (* async_reg = "true" *) wire init_meta;
  (* async_reg = "true" *) wire init_sync;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [8:0]p_1_in;
  wire px_eol;
  wire px_sof;
  wire px_valid;
  (* async_reg = "true" *) wire [3:0]rate_meta;
  wire \rate_meta[3]_i_1_n_0 ;
  wire [2:0]rate_status;
  (* async_reg = "true" *) wire [3:0]rate_sync;
  wire [15:0]rgb565;
  wire rgb_frame_done_pulse5_out;
  wire rgb_frame_done_pulse_reg_n_0;
  wire \rgb_line_count[8]_i_4_n_0 ;
  wire \rgb_line_count_reg_n_0_[0] ;
  wire \rgb_line_count_reg_n_0_[1] ;
  wire \rgb_line_count_reg_n_0_[2] ;
  wire \rgb_line_count_reg_n_0_[3] ;
  wire \rgb_line_count_reg_n_0_[4] ;
  wire \rgb_line_count_reg_n_0_[5] ;
  wire \rgb_line_count_reg_n_0_[6] ;
  wire \rgb_line_count_reg_n_0_[7] ;
  wire \rgb_line_count_reg_n_0_[8] ;
  wire sleep_request;
  wire source_dropped;
  wire source_frame_id0;
  wire \source_frame_id[0]_i_3_n_0 ;
  wire [31:0]source_frame_id_reg;
  wire \source_frame_id_reg[0]_i_2_n_0 ;
  wire \source_frame_id_reg[0]_i_2_n_1 ;
  wire \source_frame_id_reg[0]_i_2_n_2 ;
  wire \source_frame_id_reg[0]_i_2_n_3 ;
  wire \source_frame_id_reg[0]_i_2_n_4 ;
  wire \source_frame_id_reg[0]_i_2_n_5 ;
  wire \source_frame_id_reg[0]_i_2_n_6 ;
  wire \source_frame_id_reg[0]_i_2_n_7 ;
  wire \source_frame_id_reg[12]_i_1_n_0 ;
  wire \source_frame_id_reg[12]_i_1_n_1 ;
  wire \source_frame_id_reg[12]_i_1_n_2 ;
  wire \source_frame_id_reg[12]_i_1_n_3 ;
  wire \source_frame_id_reg[12]_i_1_n_4 ;
  wire \source_frame_id_reg[12]_i_1_n_5 ;
  wire \source_frame_id_reg[12]_i_1_n_6 ;
  wire \source_frame_id_reg[12]_i_1_n_7 ;
  wire \source_frame_id_reg[16]_i_1_n_0 ;
  wire \source_frame_id_reg[16]_i_1_n_1 ;
  wire \source_frame_id_reg[16]_i_1_n_2 ;
  wire \source_frame_id_reg[16]_i_1_n_3 ;
  wire \source_frame_id_reg[16]_i_1_n_4 ;
  wire \source_frame_id_reg[16]_i_1_n_5 ;
  wire \source_frame_id_reg[16]_i_1_n_6 ;
  wire \source_frame_id_reg[16]_i_1_n_7 ;
  wire \source_frame_id_reg[20]_i_1_n_0 ;
  wire \source_frame_id_reg[20]_i_1_n_1 ;
  wire \source_frame_id_reg[20]_i_1_n_2 ;
  wire \source_frame_id_reg[20]_i_1_n_3 ;
  wire \source_frame_id_reg[20]_i_1_n_4 ;
  wire \source_frame_id_reg[20]_i_1_n_5 ;
  wire \source_frame_id_reg[20]_i_1_n_6 ;
  wire \source_frame_id_reg[20]_i_1_n_7 ;
  wire \source_frame_id_reg[24]_i_1_n_0 ;
  wire \source_frame_id_reg[24]_i_1_n_1 ;
  wire \source_frame_id_reg[24]_i_1_n_2 ;
  wire \source_frame_id_reg[24]_i_1_n_3 ;
  wire \source_frame_id_reg[24]_i_1_n_4 ;
  wire \source_frame_id_reg[24]_i_1_n_5 ;
  wire \source_frame_id_reg[24]_i_1_n_6 ;
  wire \source_frame_id_reg[24]_i_1_n_7 ;
  wire \source_frame_id_reg[28]_i_1_n_1 ;
  wire \source_frame_id_reg[28]_i_1_n_2 ;
  wire \source_frame_id_reg[28]_i_1_n_3 ;
  wire \source_frame_id_reg[28]_i_1_n_4 ;
  wire \source_frame_id_reg[28]_i_1_n_5 ;
  wire \source_frame_id_reg[28]_i_1_n_6 ;
  wire \source_frame_id_reg[28]_i_1_n_7 ;
  wire \source_frame_id_reg[4]_i_1_n_0 ;
  wire \source_frame_id_reg[4]_i_1_n_1 ;
  wire \source_frame_id_reg[4]_i_1_n_2 ;
  wire \source_frame_id_reg[4]_i_1_n_3 ;
  wire \source_frame_id_reg[4]_i_1_n_4 ;
  wire \source_frame_id_reg[4]_i_1_n_5 ;
  wire \source_frame_id_reg[4]_i_1_n_6 ;
  wire \source_frame_id_reg[4]_i_1_n_7 ;
  wire \source_frame_id_reg[8]_i_1_n_0 ;
  wire \source_frame_id_reg[8]_i_1_n_1 ;
  wire \source_frame_id_reg[8]_i_1_n_2 ;
  wire \source_frame_id_reg[8]_i_1_n_3 ;
  wire \source_frame_id_reg[8]_i_1_n_4 ;
  wire \source_frame_id_reg[8]_i_1_n_5 ;
  wire \source_frame_id_reg[8]_i_1_n_6 ;
  wire \source_frame_id_reg[8]_i_1_n_7 ;
  wire source_started_reg_n_0;
  wire src_good0;
  wire [31:0]\^status ;
  wire sys_clk50;
  wire sys_rst_n;
  wire u_wp1_n_5;
  wire u_wp2_n_0;
  wire u_wp2_n_10;
  wire u_wp2_n_11;
  wire u_wp2_n_13;
  wire u_wp2_n_15;
  wire u_wp2_n_16;
  wire u_wp2_n_17;
  wire u_wp2_n_18;
  wire u_wp2_n_6;
  wire u_wp2_n_7;
  wire u_wp2_n_8;
  wire u_wp3_n_24;
  wire u_wp3_n_4;
  wire u_wp3_n_61;
  wire u_wp3_n_72;
  wire u_wp3_n_74;
  wire u_wp3_n_75;
  wire u_wp3_n_76;
  wire u_wp3_n_77;
  wire u_wp3_n_78;
  wire u_wp3_n_79;
  wire u_wp3_n_80;
  wire u_wp3_n_81;
  wire u_wp3_n_83;
  wire u_wp3_n_85;
  wire xclk24;
  wire [3:3]\NLW_source_frame_id_reg[28]_i_1_CO_UNCONNECTED ;

  assign sleep_status[31] = \<const0> ;
  assign sleep_status[30] = \<const1> ;
  assign sleep_status[29] = \<const0> ;
  assign sleep_status[28] = \<const1> ;
  assign sleep_status[27] = \<const0> ;
  assign sleep_status[26] = \<const0> ;
  assign sleep_status[25] = \<const1> ;
  assign sleep_status[24] = \<const1> ;
  assign sleep_status[23] = \<const0> ;
  assign sleep_status[22] = \<const1> ;
  assign sleep_status[21] = \<const0> ;
  assign sleep_status[20] = \<const0> ;
  assign sleep_status[19] = \<const1> ;
  assign sleep_status[18] = \<const1> ;
  assign sleep_status[17] = \<const0> ;
  assign sleep_status[16] = \<const0> ;
  assign sleep_status[15] = \<const0> ;
  assign sleep_status[14] = \<const0> ;
  assign sleep_status[13] = \<const0> ;
  assign sleep_status[12] = \<const0> ;
  assign sleep_status[11] = \<const0> ;
  assign sleep_status[10] = \<const0> ;
  assign sleep_status[9] = \<const0> ;
  assign sleep_status[8] = \<const1> ;
  assign sleep_status[7] = \<const0> ;
  assign sleep_status[6] = \<const0> ;
  assign sleep_status[5] = \<const0> ;
  assign sleep_status[4] = \<const0> ;
  assign sleep_status[3:0] = rate_sync;
  assign status[31:16] = \^status [31:16];
  assign status[15] = \<const0> ;
  assign status[14] = \<const0> ;
  assign status[13:12] = \^status [13:12];
  assign status[11] = \<const0> ;
  assign status[10] = \<const0> ;
  assign status[9:8] = \^status [9:8];
  assign status[7] = good_sync;
  assign status[6] = bad_sync;
  assign status[5:0] = \^status [5:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDCE abort_recovery_done_pulse_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(gray_tap_abort),
        .Q(abort_recovery_done_pulse));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE bad_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(bad_seen_cam),
        .Q(bad_meta));
  FDCE bad_seen_cam_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp2_n_17),
        .D(u_wp2_n_13),
        .Q(bad_seen_cam));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE bad_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(bad_meta),
        .Q(bad_sync));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[0]),
        .Q(cam_data_q[0]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[1]),
        .Q(cam_data_q[1]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[2]),
        .Q(cam_data_q[2]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[3]),
        .Q(cam_data_q[3]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[4]),
        .Q(cam_data_q[4]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[5]),
        .Q(cam_data_q[5]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[6]),
        .Q(cam_data_q[6]));
  (* IOB = "TRUE" *) 
  FDCE \cam_data_q_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_data[7]),
        .Q(cam_data_q[7]));
  (* IOB = "TRUE" *) 
  FDCE cam_href_q_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(cam_href),
        .Q(cam_href_q));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \cam_release_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp1_n_5),
        .D(1'b1),
        .Q(cam_release[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \cam_release_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp1_n_5),
        .D(cam_release[0]),
        .Q(cam_release[1]));
  (* IOB = "TRUE" *) 
  FDPE cam_vsync_q_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(cam_vsync),
        .PRE(capture_cam_meta_i_1_n_0),
        .Q(cam_vsync_q));
  FDCE capture_axi_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(capture_enable),
        .Q(capture_axi_meta));
  FDCE capture_axi_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(capture_axi_meta),
        .Q(capture_axi_sync));
  LUT1 #(
    .INIT(2'h1)) 
    capture_cam_meta_i_1
       (.I0(cam_release[1]),
        .O(capture_cam_meta_i_1_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE capture_cam_meta_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(capture_enable),
        .Q(capture_cam_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE capture_cam_sync_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(capture_cam_meta),
        .Q(capture_cam_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE good_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(good_seen_cam),
        .Q(good_meta));
  FDCE good_seen_cam_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp2_n_17),
        .D(p_0_in),
        .Q(good_seen_cam));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE good_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(good_meta),
        .Q(good_sync));
  FDCE \gray8_reg[7]_i_9 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp2_n_6),
        .D(1'b1),
        .Q(\gray8_reg[7]_i_9_n_0 ));
  FDCE gray_frame_done_pulse_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(gray_frame_done_pulse3_out),
        .Q(gray_frame_done_pulse_reg_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gray_line_count[7]_i_4 
       (.I0(\gray_line_count_reg_n_0_[3] ),
        .I1(\gray_line_count_reg_n_0_[2] ),
        .I2(\gray_line_count_reg_n_0_[0] ),
        .I3(\gray_line_count_reg_n_0_[1] ),
        .O(\gray_line_count[7]_i_4_n_0 ));
  FDCE \gray_line_count_reg[0] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_81),
        .Q(\gray_line_count_reg_n_0_[0] ));
  FDCE \gray_line_count_reg[1] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_80),
        .Q(\gray_line_count_reg_n_0_[1] ));
  FDCE \gray_line_count_reg[2] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_79),
        .Q(\gray_line_count_reg_n_0_[2] ));
  FDCE \gray_line_count_reg[3] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_78),
        .Q(\gray_line_count_reg_n_0_[3] ));
  FDCE \gray_line_count_reg[4] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_77),
        .Q(\gray_line_count_reg_n_0_[4] ));
  FDCE \gray_line_count_reg[5] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_76),
        .Q(\gray_line_count_reg_n_0_[5] ));
  FDCE \gray_line_count_reg[6] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_75),
        .Q(\gray_line_count_reg_n_0_[6] ));
  FDCE \gray_line_count_reg[7] 
       (.C(aclk),
        .CE(u_wp3_n_83),
        .CLR(u_wp3_n_24),
        .D(u_wp3_n_74),
        .Q(\gray_line_count_reg_n_0_[7] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE init_meta_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(\^status [0]),
        .Q(init_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE init_sync_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(capture_cam_meta_i_1_n_0),
        .D(init_meta),
        .Q(init_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \rate_meta[3]_i_1 
       (.I0(aresetn),
        .O(\rate_meta[3]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_meta_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_status[0]),
        .Q(rate_meta[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_meta_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_status[1]),
        .Q(rate_meta[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_meta_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_status[2]),
        .Q(rate_meta[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_meta_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(\^status [0]),
        .Q(rate_meta[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_sync_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_meta[0]),
        .Q(rate_sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_sync_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_meta[1]),
        .Q(rate_sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_sync_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_meta[2]),
        .Q(rate_sync[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \rate_sync_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\rate_meta[3]_i_1_n_0 ),
        .D(rate_meta[3]),
        .Q(rate_sync[3]));
  FDCE rgb_frame_done_pulse_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(u_wp3_n_24),
        .D(rgb_frame_done_pulse5_out),
        .Q(rgb_frame_done_pulse_reg_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rgb_line_count[8]_i_4 
       (.I0(\rgb_line_count_reg_n_0_[3] ),
        .I1(\rgb_line_count_reg_n_0_[1] ),
        .I2(\rgb_line_count_reg_n_0_[0] ),
        .I3(\rgb_line_count_reg_n_0_[2] ),
        .I4(\rgb_line_count_reg_n_0_[4] ),
        .O(\rgb_line_count[8]_i_4_n_0 ));
  FDCE \rgb_line_count_reg[0] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[0]),
        .Q(\rgb_line_count_reg_n_0_[0] ));
  FDCE \rgb_line_count_reg[1] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[1]),
        .Q(\rgb_line_count_reg_n_0_[1] ));
  FDCE \rgb_line_count_reg[2] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[2]),
        .Q(\rgb_line_count_reg_n_0_[2] ));
  FDCE \rgb_line_count_reg[3] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[3]),
        .Q(\rgb_line_count_reg_n_0_[3] ));
  FDCE \rgb_line_count_reg[4] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[4]),
        .Q(\rgb_line_count_reg_n_0_[4] ));
  FDCE \rgb_line_count_reg[5] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[5]),
        .Q(\rgb_line_count_reg_n_0_[5] ));
  FDCE \rgb_line_count_reg[6] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[6]),
        .Q(\rgb_line_count_reg_n_0_[6] ));
  FDCE \rgb_line_count_reg[7] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[7]),
        .Q(\rgb_line_count_reg_n_0_[7] ));
  FDCE \rgb_line_count_reg[8] 
       (.C(aclk),
        .CE(u_wp3_n_72),
        .CLR(u_wp3_n_24),
        .D(p_1_in[8]),
        .Q(\rgb_line_count_reg_n_0_[8] ));
  FDCE source_dropped_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp2_n_0),
        .D(u_wp2_n_16),
        .Q(source_dropped));
  LUT1 #(
    .INIT(2'h1)) 
    \source_frame_id[0]_i_3 
       (.I0(source_frame_id_reg[0]),
        .O(\source_frame_id[0]_i_3_n_0 ));
  FDCE \source_frame_id_reg[0] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[0]_i_2_n_7 ),
        .Q(source_frame_id_reg[0]));
  CARRY4 \source_frame_id_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\source_frame_id_reg[0]_i_2_n_0 ,\source_frame_id_reg[0]_i_2_n_1 ,\source_frame_id_reg[0]_i_2_n_2 ,\source_frame_id_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\source_frame_id_reg[0]_i_2_n_4 ,\source_frame_id_reg[0]_i_2_n_5 ,\source_frame_id_reg[0]_i_2_n_6 ,\source_frame_id_reg[0]_i_2_n_7 }),
        .S({source_frame_id_reg[3:1],\source_frame_id[0]_i_3_n_0 }));
  FDCE \source_frame_id_reg[10] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[8]_i_1_n_5 ),
        .Q(source_frame_id_reg[10]));
  FDCE \source_frame_id_reg[11] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[8]_i_1_n_4 ),
        .Q(source_frame_id_reg[11]));
  FDCE \source_frame_id_reg[12] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[12]_i_1_n_7 ),
        .Q(source_frame_id_reg[12]));
  CARRY4 \source_frame_id_reg[12]_i_1 
       (.CI(\source_frame_id_reg[8]_i_1_n_0 ),
        .CO({\source_frame_id_reg[12]_i_1_n_0 ,\source_frame_id_reg[12]_i_1_n_1 ,\source_frame_id_reg[12]_i_1_n_2 ,\source_frame_id_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[12]_i_1_n_4 ,\source_frame_id_reg[12]_i_1_n_5 ,\source_frame_id_reg[12]_i_1_n_6 ,\source_frame_id_reg[12]_i_1_n_7 }),
        .S(source_frame_id_reg[15:12]));
  FDCE \source_frame_id_reg[13] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[12]_i_1_n_6 ),
        .Q(source_frame_id_reg[13]));
  FDCE \source_frame_id_reg[14] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[12]_i_1_n_5 ),
        .Q(source_frame_id_reg[14]));
  FDCE \source_frame_id_reg[15] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[12]_i_1_n_4 ),
        .Q(source_frame_id_reg[15]));
  FDCE \source_frame_id_reg[16] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[16]_i_1_n_7 ),
        .Q(source_frame_id_reg[16]));
  CARRY4 \source_frame_id_reg[16]_i_1 
       (.CI(\source_frame_id_reg[12]_i_1_n_0 ),
        .CO({\source_frame_id_reg[16]_i_1_n_0 ,\source_frame_id_reg[16]_i_1_n_1 ,\source_frame_id_reg[16]_i_1_n_2 ,\source_frame_id_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[16]_i_1_n_4 ,\source_frame_id_reg[16]_i_1_n_5 ,\source_frame_id_reg[16]_i_1_n_6 ,\source_frame_id_reg[16]_i_1_n_7 }),
        .S(source_frame_id_reg[19:16]));
  FDCE \source_frame_id_reg[17] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[16]_i_1_n_6 ),
        .Q(source_frame_id_reg[17]));
  FDCE \source_frame_id_reg[18] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[16]_i_1_n_5 ),
        .Q(source_frame_id_reg[18]));
  FDCE \source_frame_id_reg[19] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[16]_i_1_n_4 ),
        .Q(source_frame_id_reg[19]));
  FDCE \source_frame_id_reg[1] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[0]_i_2_n_6 ),
        .Q(source_frame_id_reg[1]));
  FDCE \source_frame_id_reg[20] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[20]_i_1_n_7 ),
        .Q(source_frame_id_reg[20]));
  CARRY4 \source_frame_id_reg[20]_i_1 
       (.CI(\source_frame_id_reg[16]_i_1_n_0 ),
        .CO({\source_frame_id_reg[20]_i_1_n_0 ,\source_frame_id_reg[20]_i_1_n_1 ,\source_frame_id_reg[20]_i_1_n_2 ,\source_frame_id_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[20]_i_1_n_4 ,\source_frame_id_reg[20]_i_1_n_5 ,\source_frame_id_reg[20]_i_1_n_6 ,\source_frame_id_reg[20]_i_1_n_7 }),
        .S(source_frame_id_reg[23:20]));
  FDCE \source_frame_id_reg[21] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[20]_i_1_n_6 ),
        .Q(source_frame_id_reg[21]));
  FDCE \source_frame_id_reg[22] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[20]_i_1_n_5 ),
        .Q(source_frame_id_reg[22]));
  FDCE \source_frame_id_reg[23] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[20]_i_1_n_4 ),
        .Q(source_frame_id_reg[23]));
  FDCE \source_frame_id_reg[24] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[24]_i_1_n_7 ),
        .Q(source_frame_id_reg[24]));
  CARRY4 \source_frame_id_reg[24]_i_1 
       (.CI(\source_frame_id_reg[20]_i_1_n_0 ),
        .CO({\source_frame_id_reg[24]_i_1_n_0 ,\source_frame_id_reg[24]_i_1_n_1 ,\source_frame_id_reg[24]_i_1_n_2 ,\source_frame_id_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[24]_i_1_n_4 ,\source_frame_id_reg[24]_i_1_n_5 ,\source_frame_id_reg[24]_i_1_n_6 ,\source_frame_id_reg[24]_i_1_n_7 }),
        .S(source_frame_id_reg[27:24]));
  FDCE \source_frame_id_reg[25] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[24]_i_1_n_6 ),
        .Q(source_frame_id_reg[25]));
  FDCE \source_frame_id_reg[26] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[24]_i_1_n_5 ),
        .Q(source_frame_id_reg[26]));
  FDCE \source_frame_id_reg[27] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[24]_i_1_n_4 ),
        .Q(source_frame_id_reg[27]));
  FDCE \source_frame_id_reg[28] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[28]_i_1_n_7 ),
        .Q(source_frame_id_reg[28]));
  CARRY4 \source_frame_id_reg[28]_i_1 
       (.CI(\source_frame_id_reg[24]_i_1_n_0 ),
        .CO({\NLW_source_frame_id_reg[28]_i_1_CO_UNCONNECTED [3],\source_frame_id_reg[28]_i_1_n_1 ,\source_frame_id_reg[28]_i_1_n_2 ,\source_frame_id_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[28]_i_1_n_4 ,\source_frame_id_reg[28]_i_1_n_5 ,\source_frame_id_reg[28]_i_1_n_6 ,\source_frame_id_reg[28]_i_1_n_7 }),
        .S(source_frame_id_reg[31:28]));
  FDCE \source_frame_id_reg[29] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[28]_i_1_n_6 ),
        .Q(source_frame_id_reg[29]));
  FDCE \source_frame_id_reg[2] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[0]_i_2_n_5 ),
        .Q(source_frame_id_reg[2]));
  FDCE \source_frame_id_reg[30] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[28]_i_1_n_5 ),
        .Q(source_frame_id_reg[30]));
  FDCE \source_frame_id_reg[31] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[28]_i_1_n_4 ),
        .Q(source_frame_id_reg[31]));
  FDCE \source_frame_id_reg[3] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[0]_i_2_n_4 ),
        .Q(source_frame_id_reg[3]));
  FDCE \source_frame_id_reg[4] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[4]_i_1_n_7 ),
        .Q(source_frame_id_reg[4]));
  CARRY4 \source_frame_id_reg[4]_i_1 
       (.CI(\source_frame_id_reg[0]_i_2_n_0 ),
        .CO({\source_frame_id_reg[4]_i_1_n_0 ,\source_frame_id_reg[4]_i_1_n_1 ,\source_frame_id_reg[4]_i_1_n_2 ,\source_frame_id_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[4]_i_1_n_4 ,\source_frame_id_reg[4]_i_1_n_5 ,\source_frame_id_reg[4]_i_1_n_6 ,\source_frame_id_reg[4]_i_1_n_7 }),
        .S(source_frame_id_reg[7:4]));
  FDCE \source_frame_id_reg[5] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[4]_i_1_n_6 ),
        .Q(source_frame_id_reg[5]));
  FDCE \source_frame_id_reg[6] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[4]_i_1_n_5 ),
        .Q(source_frame_id_reg[6]));
  FDCE \source_frame_id_reg[7] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[4]_i_1_n_4 ),
        .Q(source_frame_id_reg[7]));
  FDCE \source_frame_id_reg[8] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[8]_i_1_n_7 ),
        .Q(source_frame_id_reg[8]));
  CARRY4 \source_frame_id_reg[8]_i_1 
       (.CI(\source_frame_id_reg[4]_i_1_n_0 ),
        .CO({\source_frame_id_reg[8]_i_1_n_0 ,\source_frame_id_reg[8]_i_1_n_1 ,\source_frame_id_reg[8]_i_1_n_2 ,\source_frame_id_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\source_frame_id_reg[8]_i_1_n_4 ,\source_frame_id_reg[8]_i_1_n_5 ,\source_frame_id_reg[8]_i_1_n_6 ,\source_frame_id_reg[8]_i_1_n_7 }),
        .S(source_frame_id_reg[11:8]));
  FDCE \source_frame_id_reg[9] 
       (.C(cam_pclk),
        .CE(source_frame_id0),
        .CLR(u_wp2_n_0),
        .D(\source_frame_id_reg[8]_i_1_n_6 ),
        .Q(source_frame_id_reg[9]));
  FDCE source_started_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(u_wp2_n_0),
        .D(u_wp2_n_15),
        .Q(source_started_reg_n_0));
  facebox_system_real_camera_source_0_0_wp1_ov5640_board_if u_wp1
       (.cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_xclk(cam_xclk),
        .init_done_reg(\^status [0]),
        .rate_status(rate_status),
        .sleep_request(sleep_request),
        .status({\^status [31:16],\^status [13:12],\^status [9:8],\^status [1]}),
        .sys_clk50(sys_clk50),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(u_wp1_n_5),
        .xclk24(xclk24));
  facebox_system_real_camera_source_0_0_wp2_camera_top u_wp2
       (.D(src_good0),
        .\FSM_onehot_state_reg[0] (u_wp2_n_7),
        .\FSM_onehot_state_reg[0]_0 (u_wp3_n_4),
        .\FSM_onehot_state_reg[0]_1 (u_wp3_n_61),
        .Q(cam_data_q),
        .cam_href_q(cam_href_q),
        .cam_pclk(cam_pclk),
        .cam_vsync_q(cam_vsync_q),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_pulse_reg(u_wp2_n_16),
        .fifo_overflow_pulse_reg_0(u_wp3_n_85),
        .fifo_overflow_sticky_reg(u_wp2_n_18),
        .frame_done(frame_done),
        .frame_done_reg(u_wp2_n_11),
        .frame_done_reg_0(u_wp2_n_15),
        .frame_good(frame_good),
        .frame_good_reg(u_wp2_n_8),
        .\frames_dropped_reg[18] (u_wp2_n_13),
        .\frames_good_reg[4] (p_0_in),
        .\gray8_reg[7] (gray8),
        .\gray8_reg[7]_0 (\gray8_reg[7]_i_9_n_0 ),
        .init_sync_reg(u_wp2_n_0),
        .init_sync_reg_0(u_wp2_n_6),
        .init_sync_reg_1(u_wp2_n_17),
        .out(init_sync),
        .px_sof(px_sof),
        .px_valid(px_valid),
        .px_valid_reg(u_wp2_n_10),
        .\rgb565_reg[15] (rgb565),
        .\rgb_s2_reg[10] (capture_cam_sync),
        .s_axis_tlast(px_eol),
        .source_dropped(source_dropped),
        .source_frame_id0(source_frame_id0),
        .source_started_reg(source_started_reg_n_0),
        .status(\^status [4]));
  facebox_system_real_camera_source_0_0_wp3_frame_safe_pipeline u_wp3
       (.D(p_1_in),
        .E(u_wp3_n_72),
        .\FSM_onehot_state_reg[0] (u_wp3_n_4),
        .\FSM_onehot_state_reg[0]_0 (u_wp2_n_7),
        .\FSM_onehot_state_reg[2] (u_wp3_n_85),
        .\FSM_onehot_state_reg[2]_0 (u_wp2_n_11),
        .\FSM_onehot_state_reg[2]_1 (u_wp2_n_8),
        .Q({\rgb_line_count_reg_n_0_[8] ,\rgb_line_count_reg_n_0_[7] ,\rgb_line_count_reg_n_0_[6] ,\rgb_line_count_reg_n_0_[5] ,\rgb_line_count_reg_n_0_[4] ,\rgb_line_count_reg_n_0_[3] ,\rgb_line_count_reg_n_0_[2] ,\rgb_line_count_reg_n_0_[1] ,\rgb_line_count_reg_n_0_[0] }),
        .abort_ack_sync_2_reg(u_wp2_n_6),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .abort_req_toggle_reg(u_wp3_n_61),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(u_wp3_n_24),
        .cam_pclk(cam_pclk),
        .capture_axi_sync(capture_axi_sync),
        .completed_buffer_valid_reg(rgb_frame_done_pulse_reg_n_0),
        .completed_buffer_valid_reg_0(gray_frame_done_pulse_reg_n_0),
        .dst_pulse_reg(gray_tap_abort),
        .dst_pulse_reg_0(u_wp3_n_83),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_pulse_reg(u_wp2_n_0),
        .fifo_overflow_pulse_reg_0(u_wp2_n_10),
        .fifo_overflow_sticky_reg(u_wp2_n_18),
        .fifo_overflow_sticky_reg_0(u_wp2_n_17),
        .frame_done(frame_done),
        .frame_good(frame_good),
        .\gen_wr_a.gen_word_narrow.mem_reg (rgb565),
        .\gen_wr_a.gen_word_narrow.mem_reg_0 (gray8),
        .gray_frame_done_pulse3_out(gray_frame_done_pulse3_out),
        .gray_frame_done_pulse_reg({\gray_line_count_reg_n_0_[7] ,\gray_line_count_reg_n_0_[6] ,\gray_line_count_reg_n_0_[5] ,\gray_line_count_reg_n_0_[4] ,\gray_line_count_reg_n_0_[3] ,\gray_line_count_reg_n_0_[2] ,\gray_line_count_reg_n_0_[1] ,\gray_line_count_reg_n_0_[0] }),
        .gray_frame_done_pulse_reg_0(\gray_line_count[7]_i_4_n_0 ),
        .\gray_line_count_reg[6] ({u_wp3_n_74,u_wp3_n_75,u_wp3_n_76,u_wp3_n_77,u_wp3_n_78,u_wp3_n_79,u_wp3_n_80,u_wp3_n_81}),
        .gray_tap_commit(gray_tap_commit),
        .gray_tap_data(gray_tap_data),
        .gray_tap_eol(gray_tap_eol),
        .gray_tap_frame_id(gray_tap_frame_id),
        .gray_tap_source_id(gray_tap_source_id),
        .gray_tap_valid(gray_tap_valid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .m_tuser_reg(gray_tap_sof),
        .out(capture_cam_sync),
        .px_valid(px_valid),
        .rgb_frame_done_pulse5_out(rgb_frame_done_pulse5_out),
        .\rgb_line_count_reg[6] (\rgb_line_count[8]_i_4_n_0 ),
        .s_axis_tlast(px_eol),
        .s_axis_tuser({source_frame_id_reg,px_sof}),
        .status(\^status [5:2]),
        .\syncstages_ff_reg[0] (init_sync));
  facebox_system_real_camera_source_0_0_source_frame_verdict_cdc verdict_cdc
       (.D({src_good0,source_frame_id_reg}),
        .aclk(aclk),
        .aresetn(aresetn),
        .cam_pclk(cam_pclk),
        .capture_axi_sync(capture_axi_sync),
        .\dst_release_reg[1]_0 (capture_cam_sync),
        .frame_done(frame_done),
        .gray_tap_provenance_fault(gray_tap_provenance_fault),
        .gray_tap_resetn(gray_tap_resetn),
        .gray_tap_verdict_good(gray_tap_verdict_good),
        .gray_tap_verdict_source_id(gray_tap_verdict_source_id),
        .gray_tap_verdict_valid(gray_tap_verdict_valid),
        .out(init_sync),
        .overrun_reg_0(source_started_reg_n_0));
endmodule

(* ORIG_REF_NAME = "rgb565_unpack_gray" *) 
module facebox_system_real_camera_source_0_0_rgb565_unpack_gray
   (init_sync_reg,
    px_valid,
    px_sof,
    init_sync_reg_0,
    s_axis_tlast,
    have_first_reg_0,
    sof_pending_reg_0,
    init_sync_reg_1,
    \rgb565_reg[15]_0 ,
    \gray8_reg[7]_0 ,
    E,
    cam_pclk,
    eol_s0,
    have_first_reg_1,
    sof_pending_reg_1,
    raw_sof,
    raw_valid,
    \gray8_reg[7]_1 ,
    out,
    \rgb_s2_reg[10]_0 ,
    \first_byte_reg[7]_0 ,
    D,
    \rgb565_reg[7]_0 );
  output init_sync_reg;
  output px_valid;
  output px_sof;
  output init_sync_reg_0;
  output s_axis_tlast;
  output have_first_reg_0;
  output sof_pending_reg_0;
  output init_sync_reg_1;
  output [15:0]\rgb565_reg[15]_0 ;
  output [7:0]\gray8_reg[7]_0 ;
  input [0:0]E;
  input cam_pclk;
  input eol_s0;
  input have_first_reg_1;
  input sof_pending_reg_1;
  input raw_sof;
  input raw_valid;
  input \gray8_reg[7]_1 ;
  input out;
  input \rgb_s2_reg[10]_0 ;
  input [0:0]\first_byte_reg[7]_0 ;
  input [7:0]D;
  input \rgb565_reg[7]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire blue_product0_n_100;
  wire blue_product0_n_101;
  wire blue_product0_n_102;
  wire blue_product0_n_103;
  wire blue_product0_n_104;
  wire blue_product0_n_105;
  wire blue_product0_n_93;
  wire blue_product0_n_94;
  wire blue_product0_n_95;
  wire blue_product0_n_96;
  wire blue_product0_n_97;
  wire blue_product0_n_98;
  wire blue_product0_n_99;
  wire cam_pclk;
  wire eol_s0;
  wire eol_s0__0;
  wire eol_s1;
  wire eol_s2;
  wire [7:0]first_byte;
  wire [0:0]\first_byte_reg[7]_0 ;
  wire \gray8[3]_i_10_n_0 ;
  wire \gray8[3]_i_12_n_0 ;
  wire \gray8[3]_i_13_n_0 ;
  wire \gray8[3]_i_14_n_0 ;
  wire \gray8[3]_i_15_n_0 ;
  wire \gray8[3]_i_16_n_0 ;
  wire \gray8[3]_i_17_n_0 ;
  wire \gray8[3]_i_18_n_0 ;
  wire \gray8[3]_i_19_n_0 ;
  wire \gray8[3]_i_20_n_0 ;
  wire \gray8[3]_i_21_n_0 ;
  wire \gray8[3]_i_22_n_0 ;
  wire \gray8[3]_i_23_n_0 ;
  wire \gray8[3]_i_24_n_0 ;
  wire \gray8[3]_i_25_n_0 ;
  wire \gray8[3]_i_26_n_0 ;
  wire \gray8[3]_i_27_n_0 ;
  wire \gray8[3]_i_28_n_0 ;
  wire \gray8[3]_i_29_n_0 ;
  wire \gray8[3]_i_30_n_0 ;
  wire \gray8[3]_i_31_n_0 ;
  wire \gray8[3]_i_32_n_0 ;
  wire \gray8[3]_i_3_n_0 ;
  wire \gray8[3]_i_4_n_0 ;
  wire \gray8[3]_i_5_n_0 ;
  wire \gray8[3]_i_6_n_0 ;
  wire \gray8[3]_i_7_n_0 ;
  wire \gray8[3]_i_8_n_0 ;
  wire \gray8[3]_i_9_n_0 ;
  wire \gray8[7]_i_10_n_0 ;
  wire \gray8[7]_i_11_n_0 ;
  wire \gray8[7]_i_12_n_0 ;
  wire \gray8[7]_i_13_n_0 ;
  wire \gray8[7]_i_2_n_0 ;
  wire \gray8[7]_i_3_n_0 ;
  wire \gray8[7]_i_4_n_0 ;
  wire \gray8[7]_i_5_n_0 ;
  wire \gray8[7]_i_6_n_0 ;
  wire \gray8[7]_i_7_n_0 ;
  wire \gray8[7]_i_8_n_0 ;
  wire \gray8_reg[3]_i_11_n_0 ;
  wire \gray8_reg[3]_i_11_n_1 ;
  wire \gray8_reg[3]_i_11_n_2 ;
  wire \gray8_reg[3]_i_11_n_3 ;
  wire \gray8_reg[3]_i_1_n_0 ;
  wire \gray8_reg[3]_i_1_n_1 ;
  wire \gray8_reg[3]_i_1_n_2 ;
  wire \gray8_reg[3]_i_1_n_3 ;
  wire \gray8_reg[3]_i_2_n_0 ;
  wire \gray8_reg[3]_i_2_n_1 ;
  wire \gray8_reg[3]_i_2_n_2 ;
  wire \gray8_reg[3]_i_2_n_3 ;
  wire [7:0]\gray8_reg[7]_0 ;
  wire \gray8_reg[7]_1 ;
  wire \gray8_reg[7]_i_1_n_1 ;
  wire \gray8_reg[7]_i_1_n_2 ;
  wire \gray8_reg[7]_i_1_n_3 ;
  wire [15:8]gray_sum;
  wire green_product0_n_100;
  wire green_product0_n_101;
  wire green_product0_n_102;
  wire green_product0_n_103;
  wire green_product0_n_104;
  wire green_product0_n_105;
  wire green_product0_n_90;
  wire green_product0_n_91;
  wire green_product0_n_92;
  wire green_product0_n_93;
  wire green_product0_n_94;
  wire green_product0_n_95;
  wire green_product0_n_96;
  wire green_product0_n_97;
  wire green_product0_n_98;
  wire green_product0_n_99;
  wire have_first_reg_0;
  wire have_first_reg_1;
  wire init_sync_reg;
  wire init_sync_reg_0;
  wire init_sync_reg_1;
  wire out;
  wire px_eol0;
  wire px_sof;
  wire px_sof0;
  wire px_valid;
  wire raw_sof;
  wire raw_valid;
  wire red_product0_n_100;
  wire red_product0_n_101;
  wire red_product0_n_102;
  wire red_product0_n_103;
  wire red_product0_n_104;
  wire red_product0_n_105;
  wire red_product0_n_91;
  wire red_product0_n_92;
  wire red_product0_n_93;
  wire red_product0_n_94;
  wire red_product0_n_95;
  wire red_product0_n_96;
  wire red_product0_n_97;
  wire red_product0_n_98;
  wire red_product0_n_99;
  wire [15:0]\rgb565_reg[15]_0 ;
  wire \rgb565_reg[7]_0 ;
  wire [15:0]rgb_s0;
  wire [15:0]rgb_s1;
  wire [15:0]rgb_s2;
  wire \rgb_s2_reg[10]_0 ;
  wire s_axis_tlast;
  wire sof_pending_reg_0;
  wire sof_pending_reg_1;
  wire sof_s0;
  wire sof_s0_0;
  wire sof_s1;
  wire sof_s2;
  wire valid_s0;
  wire valid_s1;
  wire valid_s2;
  wire NLW_blue_product0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blue_product0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_blue_product0_OVERFLOW_UNCONNECTED;
  wire NLW_blue_product0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blue_product0_PATTERNDETECT_UNCONNECTED;
  wire NLW_blue_product0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_blue_product0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_blue_product0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_blue_product0_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_blue_product0_P_UNCONNECTED;
  wire [47:0]NLW_blue_product0_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_gray8_reg[3]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_gray8_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gray8_reg[7]_i_1_CO_UNCONNECTED ;
  wire NLW_green_product0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_green_product0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_green_product0_OVERFLOW_UNCONNECTED;
  wire NLW_green_product0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_green_product0_PATTERNDETECT_UNCONNECTED;
  wire NLW_green_product0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_green_product0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_green_product0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_green_product0_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_green_product0_P_UNCONNECTED;
  wire [47:0]NLW_green_product0_PCOUT_UNCONNECTED;
  wire NLW_red_product0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_red_product0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_red_product0_OVERFLOW_UNCONNECTED;
  wire NLW_red_product0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_red_product0_PATTERNDETECT_UNCONNECTED;
  wire NLW_red_product0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_red_product0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_red_product0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_red_product0_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_red_product0_P_UNCONNECTED;
  wire [47:0]NLW_red_product0_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(out),
        .I1(\rgb_s2_reg[10]_0 ),
        .O(init_sync_reg_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    blue_product0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rgb_s1[4:0],rgb_s1[4:2]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_blue_product0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_blue_product0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_blue_product0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_blue_product0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(cam_pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_blue_product0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_blue_product0_OVERFLOW_UNCONNECTED),
        .P({NLW_blue_product0_P_UNCONNECTED[47:13],blue_product0_n_93,blue_product0_n_94,blue_product0_n_95,blue_product0_n_96,blue_product0_n_97,blue_product0_n_98,blue_product0_n_99,blue_product0_n_100,blue_product0_n_101,blue_product0_n_102,blue_product0_n_103,blue_product0_n_104,blue_product0_n_105}),
        .PATTERNBDETECT(NLW_blue_product0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_blue_product0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_blue_product0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_blue_product0_UNDERFLOW_UNCONNECTED));
  FDCE eol_s0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(eol_s0),
        .Q(eol_s0__0));
  FDCE eol_s1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(eol_s0__0),
        .Q(eol_s1));
  FDCE eol_s2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(eol_s1),
        .Q(eol_s2));
  LUT2 #(
    .INIT(4'h7)) 
    fifo_overflow_sticky_i_2
       (.I0(out),
        .I1(\rgb_s2_reg[10]_0 ),
        .O(init_sync_reg_1));
  FDCE \first_byte_reg[0] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg_0),
        .D(D[0]),
        .Q(first_byte[0]));
  FDCE \first_byte_reg[1] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg_0),
        .D(D[1]),
        .Q(first_byte[1]));
  FDCE \first_byte_reg[2] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg_0),
        .D(D[2]),
        .Q(first_byte[2]));
  FDCE \first_byte_reg[3] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg),
        .D(D[3]),
        .Q(first_byte[3]));
  FDCE \first_byte_reg[4] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg),
        .D(D[4]),
        .Q(first_byte[4]));
  FDCE \first_byte_reg[5] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg),
        .D(D[5]),
        .Q(first_byte[5]));
  FDCE \first_byte_reg[6] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg),
        .D(D[6]),
        .Q(first_byte[6]));
  FDCE \first_byte_reg[7] 
       (.C(cam_pclk),
        .CE(\first_byte_reg[7]_0 ),
        .CLR(init_sync_reg),
        .D(D[7]),
        .Q(first_byte[7]));
  LUT5 #(
    .INIT(32'h99669666)) 
    \gray8[3]_i_10 
       (.I0(\gray8[3]_i_6_n_0 ),
        .I1(\gray8[3]_i_25_n_0 ),
        .I2(blue_product0_n_98),
        .I3(\gray8_reg[7]_1 ),
        .I4(green_product0_n_98),
        .O(\gray8[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \gray8[3]_i_12 
       (.I0(green_product0_n_98),
        .I1(blue_product0_n_98),
        .I2(\gray8_reg[7]_1 ),
        .I3(red_product0_n_98),
        .O(\gray8[3]_i_12_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_13 
       (.I0(green_product0_n_100),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_100),
        .I3(red_product0_n_100),
        .O(\gray8[3]_i_13_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_14 
       (.I0(green_product0_n_101),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_101),
        .I3(red_product0_n_101),
        .O(\gray8[3]_i_14_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_15 
       (.I0(green_product0_n_102),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_102),
        .I3(red_product0_n_102),
        .O(\gray8[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h56AA6AAA)) 
    \gray8[3]_i_16 
       (.I0(\gray8[3]_i_12_n_0 ),
        .I1(red_product0_n_99),
        .I2(blue_product0_n_99),
        .I3(\gray8_reg[7]_1 ),
        .I4(green_product0_n_99),
        .O(\gray8[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h6A9A9A6A)) 
    \gray8[3]_i_17 
       (.I0(\gray8[3]_i_13_n_0 ),
        .I1(blue_product0_n_99),
        .I2(\gray8_reg[7]_1 ),
        .I3(green_product0_n_99),
        .I4(red_product0_n_99),
        .O(\gray8[3]_i_17_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \gray8[3]_i_18 
       (.I0(green_product0_n_100),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_100),
        .I3(red_product0_n_100),
        .I4(\gray8[3]_i_14_n_0 ),
        .O(\gray8[3]_i_18_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \gray8[3]_i_19 
       (.I0(green_product0_n_101),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_101),
        .I3(red_product0_n_101),
        .I4(\gray8[3]_i_15_n_0 ),
        .O(\gray8[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_20 
       (.I0(green_product0_n_96),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_96),
        .I3(red_product0_n_96),
        .O(\gray8[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_21 
       (.I0(green_product0_n_97),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_97),
        .I3(red_product0_n_97),
        .O(\gray8[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h9060)) 
    \gray8[3]_i_22 
       (.I0(red_product0_n_94),
        .I1(green_product0_n_94),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_94),
        .O(\gray8[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h9060)) 
    \gray8[3]_i_23 
       (.I0(red_product0_n_95),
        .I1(green_product0_n_95),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_95),
        .O(\gray8[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h9060)) 
    \gray8[3]_i_24 
       (.I0(red_product0_n_96),
        .I1(green_product0_n_96),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_96),
        .O(\gray8[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h9060)) 
    \gray8[3]_i_25 
       (.I0(red_product0_n_97),
        .I1(green_product0_n_97),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_97),
        .O(\gray8[3]_i_25_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_26 
       (.I0(green_product0_n_103),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_103),
        .I3(red_product0_n_103),
        .O(\gray8[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_27 
       (.I0(green_product0_n_104),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_104),
        .I3(red_product0_n_104),
        .O(\gray8[3]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[3]_i_28 
       (.I0(green_product0_n_105),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_105),
        .I3(red_product0_n_105),
        .O(\gray8[3]_i_28_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \gray8[3]_i_29 
       (.I0(green_product0_n_102),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_102),
        .I3(red_product0_n_102),
        .I4(\gray8[3]_i_26_n_0 ),
        .O(\gray8[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h84480000)) 
    \gray8[3]_i_3 
       (.I0(blue_product0_n_95),
        .I1(\gray8_reg[7]_1 ),
        .I2(green_product0_n_95),
        .I3(red_product0_n_95),
        .I4(\gray8[3]_i_20_n_0 ),
        .O(\gray8[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \gray8[3]_i_30 
       (.I0(green_product0_n_103),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_103),
        .I3(red_product0_n_103),
        .I4(\gray8[3]_i_27_n_0 ),
        .O(\gray8[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \gray8[3]_i_31 
       (.I0(green_product0_n_104),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_104),
        .I3(red_product0_n_104),
        .I4(\gray8[3]_i_28_n_0 ),
        .O(\gray8[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h8448)) 
    \gray8[3]_i_32 
       (.I0(green_product0_n_105),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_105),
        .I3(red_product0_n_105),
        .O(\gray8[3]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h84480000)) 
    \gray8[3]_i_4 
       (.I0(blue_product0_n_96),
        .I1(\gray8_reg[7]_1 ),
        .I2(green_product0_n_96),
        .I3(red_product0_n_96),
        .I4(\gray8[3]_i_21_n_0 ),
        .O(\gray8[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9696000096000000)) 
    \gray8[3]_i_5 
       (.I0(blue_product0_n_97),
        .I1(green_product0_n_97),
        .I2(red_product0_n_97),
        .I3(green_product0_n_98),
        .I4(\gray8_reg[7]_1 ),
        .I5(blue_product0_n_98),
        .O(\gray8[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8020)) 
    \gray8[3]_i_6 
       (.I0(red_product0_n_98),
        .I1(green_product0_n_98),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_98),
        .O(\gray8[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9966966696666666)) 
    \gray8[3]_i_7 
       (.I0(\gray8[3]_i_3_n_0 ),
        .I1(\gray8[3]_i_22_n_0 ),
        .I2(green_product0_n_95),
        .I3(\gray8_reg[7]_1 ),
        .I4(blue_product0_n_95),
        .I5(red_product0_n_95),
        .O(\gray8[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9966966696666666)) 
    \gray8[3]_i_8 
       (.I0(\gray8[3]_i_4_n_0 ),
        .I1(\gray8[3]_i_23_n_0 ),
        .I2(green_product0_n_96),
        .I3(\gray8_reg[7]_1 ),
        .I4(blue_product0_n_96),
        .I5(red_product0_n_96),
        .O(\gray8[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9966966696666666)) 
    \gray8[3]_i_9 
       (.I0(\gray8[3]_i_5_n_0 ),
        .I1(\gray8[3]_i_24_n_0 ),
        .I2(green_product0_n_97),
        .I3(\gray8_reg[7]_1 ),
        .I4(blue_product0_n_97),
        .I5(red_product0_n_97),
        .O(\gray8[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[7]_i_10 
       (.I0(green_product0_n_94),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_94),
        .I3(red_product0_n_94),
        .O(\gray8[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[7]_i_11 
       (.I0(green_product0_n_95),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_95),
        .I3(red_product0_n_95),
        .O(\gray8[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hC880)) 
    \gray8[7]_i_12 
       (.I0(green_product0_n_93),
        .I1(\gray8_reg[7]_1 ),
        .I2(blue_product0_n_93),
        .I3(red_product0_n_93),
        .O(\gray8[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h9060)) 
    \gray8[7]_i_13 
       (.I0(red_product0_n_93),
        .I1(green_product0_n_93),
        .I2(\gray8_reg[7]_1 ),
        .I3(blue_product0_n_93),
        .O(\gray8[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6660000060000000)) 
    \gray8[7]_i_2 
       (.I0(green_product0_n_92),
        .I1(red_product0_n_92),
        .I2(red_product0_n_93),
        .I3(blue_product0_n_93),
        .I4(\gray8_reg[7]_1 ),
        .I5(green_product0_n_93),
        .O(\gray8[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h84480000)) 
    \gray8[7]_i_3 
       (.I0(blue_product0_n_93),
        .I1(\gray8_reg[7]_1 ),
        .I2(green_product0_n_93),
        .I3(red_product0_n_93),
        .I4(\gray8[7]_i_10_n_0 ),
        .O(\gray8[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h84480000)) 
    \gray8[7]_i_4 
       (.I0(blue_product0_n_94),
        .I1(\gray8_reg[7]_1 ),
        .I2(green_product0_n_94),
        .I3(red_product0_n_94),
        .I4(\gray8[7]_i_11_n_0 ),
        .O(\gray8[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0078007800F000)) 
    \gray8[7]_i_5 
       (.I0(green_product0_n_92),
        .I1(red_product0_n_92),
        .I2(green_product0_n_90),
        .I3(\gray8_reg[7]_1 ),
        .I4(green_product0_n_91),
        .I5(red_product0_n_91),
        .O(\gray8[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6A9A9A6A9A6A9A6A)) 
    \gray8[7]_i_6 
       (.I0(\gray8[7]_i_2_n_0 ),
        .I1(red_product0_n_91),
        .I2(\gray8_reg[7]_1 ),
        .I3(green_product0_n_91),
        .I4(green_product0_n_92),
        .I5(red_product0_n_92),
        .O(\gray8[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h65959A6A)) 
    \gray8[7]_i_7 
       (.I0(\gray8[7]_i_3_n_0 ),
        .I1(red_product0_n_92),
        .I2(\gray8_reg[7]_1 ),
        .I3(green_product0_n_92),
        .I4(\gray8[7]_i_12_n_0 ),
        .O(\gray8[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9966966696666666)) 
    \gray8[7]_i_8 
       (.I0(\gray8[7]_i_4_n_0 ),
        .I1(\gray8[7]_i_13_n_0 ),
        .I2(green_product0_n_94),
        .I3(\gray8_reg[7]_1 ),
        .I4(blue_product0_n_94),
        .I5(red_product0_n_94),
        .O(\gray8[7]_i_8_n_0 ));
  FDCE \gray8_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[8]),
        .Q(\gray8_reg[7]_0 [0]));
  FDCE \gray8_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[9]),
        .Q(\gray8_reg[7]_0 [1]));
  FDCE \gray8_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[10]),
        .Q(\gray8_reg[7]_0 [2]));
  FDCE \gray8_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[11]),
        .Q(\gray8_reg[7]_0 [3]));
  CARRY4 \gray8_reg[3]_i_1 
       (.CI(\gray8_reg[3]_i_2_n_0 ),
        .CO({\gray8_reg[3]_i_1_n_0 ,\gray8_reg[3]_i_1_n_1 ,\gray8_reg[3]_i_1_n_2 ,\gray8_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray8[3]_i_3_n_0 ,\gray8[3]_i_4_n_0 ,\gray8[3]_i_5_n_0 ,\gray8[3]_i_6_n_0 }),
        .O(gray_sum[11:8]),
        .S({\gray8[3]_i_7_n_0 ,\gray8[3]_i_8_n_0 ,\gray8[3]_i_9_n_0 ,\gray8[3]_i_10_n_0 }));
  CARRY4 \gray8_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\gray8_reg[3]_i_11_n_0 ,\gray8_reg[3]_i_11_n_1 ,\gray8_reg[3]_i_11_n_2 ,\gray8_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray8[3]_i_26_n_0 ,\gray8[3]_i_27_n_0 ,\gray8[3]_i_28_n_0 ,1'b0}),
        .O(\NLW_gray8_reg[3]_i_11_O_UNCONNECTED [3:0]),
        .S({\gray8[3]_i_29_n_0 ,\gray8[3]_i_30_n_0 ,\gray8[3]_i_31_n_0 ,\gray8[3]_i_32_n_0 }));
  CARRY4 \gray8_reg[3]_i_2 
       (.CI(\gray8_reg[3]_i_11_n_0 ),
        .CO({\gray8_reg[3]_i_2_n_0 ,\gray8_reg[3]_i_2_n_1 ,\gray8_reg[3]_i_2_n_2 ,\gray8_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray8[3]_i_12_n_0 ,\gray8[3]_i_13_n_0 ,\gray8[3]_i_14_n_0 ,\gray8[3]_i_15_n_0 }),
        .O(\NLW_gray8_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\gray8[3]_i_16_n_0 ,\gray8[3]_i_17_n_0 ,\gray8[3]_i_18_n_0 ,\gray8[3]_i_19_n_0 }));
  FDCE \gray8_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[12]),
        .Q(\gray8_reg[7]_0 [4]));
  FDCE \gray8_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[13]),
        .Q(\gray8_reg[7]_0 [5]));
  FDCE \gray8_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[14]),
        .Q(\gray8_reg[7]_0 [6]));
  FDCE \gray8_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(gray_sum[15]),
        .Q(\gray8_reg[7]_0 [7]));
  CARRY4 \gray8_reg[7]_i_1 
       (.CI(\gray8_reg[3]_i_1_n_0 ),
        .CO({\NLW_gray8_reg[7]_i_1_CO_UNCONNECTED [3],\gray8_reg[7]_i_1_n_1 ,\gray8_reg[7]_i_1_n_2 ,\gray8_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gray8[7]_i_2_n_0 ,\gray8[7]_i_3_n_0 ,\gray8[7]_i_4_n_0 }),
        .O(gray_sum[15:12]),
        .S({\gray8[7]_i_5_n_0 ,\gray8[7]_i_6_n_0 ,\gray8[7]_i_7_n_0 ,\gray8[7]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    green_product0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rgb_s1[10:5],rgb_s1[10:9]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_green_product0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_green_product0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_green_product0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_green_product0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(cam_pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_green_product0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_green_product0_OVERFLOW_UNCONNECTED),
        .P({NLW_green_product0_P_UNCONNECTED[47:16],green_product0_n_90,green_product0_n_91,green_product0_n_92,green_product0_n_93,green_product0_n_94,green_product0_n_95,green_product0_n_96,green_product0_n_97,green_product0_n_98,green_product0_n_99,green_product0_n_100,green_product0_n_101,green_product0_n_102,green_product0_n_103,green_product0_n_104,green_product0_n_105}),
        .PATTERNBDETECT(NLW_green_product0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_green_product0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_green_product0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_green_product0_UNDERFLOW_UNCONNECTED));
  FDCE have_first_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(have_first_reg_1),
        .Q(have_first_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    px_eol_i_1
       (.I0(valid_s2),
        .I1(eol_s2),
        .O(px_eol0));
  FDCE px_eol_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(px_eol0),
        .Q(s_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    px_sof_i_1
       (.I0(valid_s2),
        .I1(sof_s2),
        .O(px_sof0));
  FDCE px_sof_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(px_sof0),
        .Q(px_sof));
  FDCE px_valid_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(valid_s2),
        .Q(px_valid));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    red_product0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rgb_s1[15:11],rgb_s1[15:13]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_red_product0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_red_product0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_red_product0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_red_product0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(cam_pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_red_product0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_red_product0_OVERFLOW_UNCONNECTED),
        .P({NLW_red_product0_P_UNCONNECTED[47:15],red_product0_n_91,red_product0_n_92,red_product0_n_93,red_product0_n_94,red_product0_n_95,red_product0_n_96,red_product0_n_97,red_product0_n_98,red_product0_n_99,red_product0_n_100,red_product0_n_101,red_product0_n_102,red_product0_n_103,red_product0_n_104,red_product0_n_105}),
        .PATTERNBDETECT(NLW_red_product0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_red_product0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_red_product0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_red_product0_UNDERFLOW_UNCONNECTED));
  FDCE \rgb565_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[0]),
        .Q(\rgb565_reg[15]_0 [0]));
  FDCE \rgb565_reg[10] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[10]),
        .Q(\rgb565_reg[15]_0 [10]));
  FDCE \rgb565_reg[11] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[11]),
        .Q(\rgb565_reg[15]_0 [11]));
  FDCE \rgb565_reg[12] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[12]),
        .Q(\rgb565_reg[15]_0 [12]));
  FDCE \rgb565_reg[13] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[13]),
        .Q(\rgb565_reg[15]_0 [13]));
  FDCE \rgb565_reg[14] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[14]),
        .Q(\rgb565_reg[15]_0 [14]));
  FDCE \rgb565_reg[15] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[15]),
        .Q(\rgb565_reg[15]_0 [15]));
  FDCE \rgb565_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[1]),
        .Q(\rgb565_reg[15]_0 [1]));
  FDCE \rgb565_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[2]),
        .Q(\rgb565_reg[15]_0 [2]));
  FDCE \rgb565_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[3]),
        .Q(\rgb565_reg[15]_0 [3]));
  FDCE \rgb565_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[4]),
        .Q(\rgb565_reg[15]_0 [4]));
  FDCE \rgb565_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[5]),
        .Q(\rgb565_reg[15]_0 [5]));
  FDCE \rgb565_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[6]),
        .Q(\rgb565_reg[15]_0 [6]));
  FDCE \rgb565_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s2[7]),
        .Q(\rgb565_reg[15]_0 [7]));
  FDCE \rgb565_reg[8] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[8]),
        .Q(\rgb565_reg[15]_0 [8]));
  FDCE \rgb565_reg[9] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s2[9]),
        .Q(\rgb565_reg[15]_0 [9]));
  FDCE \rgb_s0_reg[0] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(first_byte[0]),
        .Q(rgb_s0[0]));
  FDCE \rgb_s0_reg[10] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(D[2]),
        .Q(rgb_s0[10]));
  FDCE \rgb_s0_reg[11] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(D[3]),
        .Q(rgb_s0[11]));
  FDCE \rgb_s0_reg[12] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(D[4]),
        .Q(rgb_s0[12]));
  FDCE \rgb_s0_reg[13] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(D[5]),
        .Q(rgb_s0[13]));
  FDCE \rgb_s0_reg[14] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(D[6]),
        .Q(rgb_s0[14]));
  FDCE \rgb_s0_reg[15] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(D[7]),
        .Q(rgb_s0[15]));
  FDCE \rgb_s0_reg[1] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(first_byte[1]),
        .Q(rgb_s0[1]));
  FDCE \rgb_s0_reg[2] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(first_byte[2]),
        .Q(rgb_s0[2]));
  FDCE \rgb_s0_reg[3] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(first_byte[3]),
        .Q(rgb_s0[3]));
  FDCE \rgb_s0_reg[4] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(first_byte[4]),
        .Q(rgb_s0[4]));
  FDCE \rgb_s0_reg[5] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(first_byte[5]),
        .Q(rgb_s0[5]));
  FDCE \rgb_s0_reg[6] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(first_byte[6]),
        .Q(rgb_s0[6]));
  FDCE \rgb_s0_reg[7] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg),
        .D(first_byte[7]),
        .Q(rgb_s0[7]));
  FDCE \rgb_s0_reg[8] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(D[0]),
        .Q(rgb_s0[8]));
  FDCE \rgb_s0_reg[9] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(init_sync_reg_0),
        .D(D[1]),
        .Q(rgb_s0[9]));
  FDCE \rgb_s1_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[0]),
        .Q(rgb_s1[0]));
  FDCE \rgb_s1_reg[10] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[10]),
        .Q(rgb_s1[10]));
  FDCE \rgb_s1_reg[11] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[11]),
        .Q(rgb_s1[11]));
  FDCE \rgb_s1_reg[12] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[12]),
        .Q(rgb_s1[12]));
  FDCE \rgb_s1_reg[13] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[13]),
        .Q(rgb_s1[13]));
  FDCE \rgb_s1_reg[14] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[14]),
        .Q(rgb_s1[14]));
  FDCE \rgb_s1_reg[15] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[15]),
        .Q(rgb_s1[15]));
  FDCE \rgb_s1_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[1]),
        .Q(rgb_s1[1]));
  FDCE \rgb_s1_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[2]),
        .Q(rgb_s1[2]));
  FDCE \rgb_s1_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[3]),
        .Q(rgb_s1[3]));
  FDCE \rgb_s1_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[4]),
        .Q(rgb_s1[4]));
  FDCE \rgb_s1_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[5]),
        .Q(rgb_s1[5]));
  FDCE \rgb_s1_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[6]),
        .Q(rgb_s1[6]));
  FDCE \rgb_s1_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s0[7]),
        .Q(rgb_s1[7]));
  FDCE \rgb_s1_reg[8] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[8]),
        .Q(rgb_s1[8]));
  FDCE \rgb_s1_reg[9] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s0[9]),
        .Q(rgb_s1[9]));
  FDCE \rgb_s2_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[0]),
        .Q(rgb_s2[0]));
  FDCE \rgb_s2_reg[10] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(rgb_s1[10]),
        .Q(rgb_s2[10]));
  FDCE \rgb_s2_reg[11] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s1[11]),
        .Q(rgb_s2[11]));
  FDCE \rgb_s2_reg[12] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s1[12]),
        .Q(rgb_s2[12]));
  FDCE \rgb_s2_reg[13] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s1[13]),
        .Q(rgb_s2[13]));
  FDCE \rgb_s2_reg[14] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s1[14]),
        .Q(rgb_s2[14]));
  FDCE \rgb_s2_reg[15] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(rgb_s1[15]),
        .Q(rgb_s2[15]));
  FDCE \rgb_s2_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[1]),
        .Q(rgb_s2[1]));
  FDCE \rgb_s2_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[2]),
        .Q(rgb_s2[2]));
  FDCE \rgb_s2_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[3]),
        .Q(rgb_s2[3]));
  FDCE \rgb_s2_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[4]),
        .Q(rgb_s2[4]));
  FDCE \rgb_s2_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[5]),
        .Q(rgb_s2[5]));
  FDCE \rgb_s2_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[6]),
        .Q(rgb_s2[6]));
  FDCE \rgb_s2_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\rgb565_reg[7]_0 ),
        .D(rgb_s1[7]),
        .Q(rgb_s2[7]));
  FDCE \rgb_s2_reg[8] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_1),
        .D(rgb_s1[8]),
        .Q(rgb_s2[8]));
  FDCE \rgb_s2_reg[9] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_1),
        .D(rgb_s1[9]),
        .Q(rgb_s2[9]));
  FDCE sof_pending_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg_0),
        .D(sof_pending_reg_1),
        .Q(sof_pending_reg_0));
  LUT4 #(
    .INIT(16'h0800)) 
    sof_s0_i_1
       (.I0(sof_pending_reg_0),
        .I1(have_first_reg_0),
        .I2(raw_sof),
        .I3(raw_valid),
        .O(sof_s0_0));
  FDCE sof_s0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(sof_s0_0),
        .Q(sof_s0));
  FDCE sof_s1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(sof_s0),
        .Q(sof_s1));
  FDCE sof_s2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(sof_s1),
        .Q(sof_s2));
  FDCE valid_s0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(E),
        .Q(valid_s0));
  FDCE valid_s1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(valid_s0),
        .Q(valid_s1));
  FDCE valid_s2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(init_sync_reg),
        .D(valid_s1),
        .Q(valid_s2));
  LUT2 #(
    .INIT(4'h7)) 
    vsync_d_i_1
       (.I0(out),
        .I1(\rgb_s2_reg[10]_0 ),
        .O(init_sync_reg));
endmodule

(* ORIG_REF_NAME = "sccb_master" *) 
module facebox_system_real_camera_source_0_0_sccb_master
   (rsp_valid,
    sys_rst_n_0,
    sys_rst_n_1,
    nack_reg_0,
    timeout_reg_0,
    cam_scl,
    sys_rst_n_2,
    rsp_valid_reg_0,
    Q,
    timeout_reg_1,
    init_done_reg,
    \state_reg[4]_0 ,
    nack_reg_1,
    \index_reg[2] ,
    timeout_reg_2,
    timeout_reg_3,
    timeout_reg_4,
    nack_reg_2,
    \state_reg[2]_0 ,
    nack_reg_3,
    T0,
    sys_clk50,
    cmd_read,
    timeout_reg_5,
    waiting_reg,
    \wait_count_reg[0] ,
    target_slow,
    settling_i_5_0,
    \rom_index_reg_rep[0] ,
    \sensor_id_reg[0] ,
    sda_i,
    settling_i_2,
    settling_i_2_0,
    slow_applied_reg,
    slow_applied_reg_0,
    slow_applied_reg_1,
    start_d,
    sys_rst_n,
    \half_count_reg[30]_0 ,
    D,
    \reg_addr_latched_reg[15]_0 );
  output rsp_valid;
  output sys_rst_n_0;
  output sys_rst_n_1;
  output nack_reg_0;
  output timeout_reg_0;
  output cam_scl;
  output sys_rst_n_2;
  output rsp_valid_reg_0;
  output [7:0]Q;
  output timeout_reg_1;
  output init_done_reg;
  output \state_reg[4]_0 ;
  output nack_reg_1;
  output \index_reg[2] ;
  output timeout_reg_2;
  output timeout_reg_3;
  output timeout_reg_4;
  output nack_reg_2;
  output \state_reg[2]_0 ;
  output nack_reg_3;
  output T0;
  input sys_clk50;
  input cmd_read;
  input timeout_reg_5;
  input waiting_reg;
  input \wait_count_reg[0] ;
  input target_slow;
  input settling_i_5_0;
  input \rom_index_reg_rep[0] ;
  input [3:0]\sensor_id_reg[0] ;
  input sda_i;
  input settling_i_2;
  input settling_i_2_0;
  input slow_applied_reg;
  input slow_applied_reg_0;
  input slow_applied_reg_1;
  input start_d;
  input sys_rst_n;
  input \half_count_reg[30]_0 ;
  input [7:0]D;
  input [15:0]\reg_addr_latched_reg[15]_0 ;

  wire [7:0]D;
  wire [7:0]Q;
  wire T0;
  wire [2:0]bit_index;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[0]_i_2_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[1]_i_2_n_0 ;
  wire \bit_index[2]_i_10_n_0 ;
  wire \bit_index[2]_i_11_n_0 ;
  wire \bit_index[2]_i_12_n_0 ;
  wire \bit_index[2]_i_13_n_0 ;
  wire \bit_index[2]_i_14_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[2]_i_2_n_0 ;
  wire \bit_index[2]_i_3_n_0 ;
  wire \bit_index[2]_i_4_n_0 ;
  wire \bit_index[2]_i_5_n_0 ;
  wire \bit_index[2]_i_6_n_0 ;
  wire \bit_index[2]_i_7_n_0 ;
  wire \bit_index[2]_i_8_n_0 ;
  wire \bit_index[2]_i_9_n_0 ;
  wire cam_scl;
  wire cmd_read;
  wire cmd_read_latched;
  wire [2:2]dev_addr_latched;
  wire g0_b0_n_0;
  wire [31:1]half_count;
  wire [31:1]half_count0;
  wire half_count0_carry__0_n_0;
  wire half_count0_carry__0_n_1;
  wire half_count0_carry__0_n_2;
  wire half_count0_carry__0_n_3;
  wire half_count0_carry__1_n_0;
  wire half_count0_carry__1_n_1;
  wire half_count0_carry__1_n_2;
  wire half_count0_carry__1_n_3;
  wire half_count0_carry__2_n_0;
  wire half_count0_carry__2_n_1;
  wire half_count0_carry__2_n_2;
  wire half_count0_carry__2_n_3;
  wire half_count0_carry__3_n_0;
  wire half_count0_carry__3_n_1;
  wire half_count0_carry__3_n_2;
  wire half_count0_carry__3_n_3;
  wire half_count0_carry__4_n_0;
  wire half_count0_carry__4_n_1;
  wire half_count0_carry__4_n_2;
  wire half_count0_carry__4_n_3;
  wire half_count0_carry__5_n_0;
  wire half_count0_carry__5_n_1;
  wire half_count0_carry__5_n_2;
  wire half_count0_carry__5_n_3;
  wire half_count0_carry__6_n_2;
  wire half_count0_carry__6_n_3;
  wire half_count0_carry_n_0;
  wire half_count0_carry_n_1;
  wire half_count0_carry_n_2;
  wire half_count0_carry_n_3;
  wire \half_count[0]_i_1_n_0 ;
  wire \half_count_reg[30]_0 ;
  wire \half_count_reg_n_0_[0] ;
  wire \half_count_reg_n_0_[10] ;
  wire \half_count_reg_n_0_[11] ;
  wire \half_count_reg_n_0_[12] ;
  wire \half_count_reg_n_0_[13] ;
  wire \half_count_reg_n_0_[14] ;
  wire \half_count_reg_n_0_[15] ;
  wire \half_count_reg_n_0_[16] ;
  wire \half_count_reg_n_0_[17] ;
  wire \half_count_reg_n_0_[18] ;
  wire \half_count_reg_n_0_[19] ;
  wire \half_count_reg_n_0_[1] ;
  wire \half_count_reg_n_0_[20] ;
  wire \half_count_reg_n_0_[21] ;
  wire \half_count_reg_n_0_[22] ;
  wire \half_count_reg_n_0_[23] ;
  wire \half_count_reg_n_0_[24] ;
  wire \half_count_reg_n_0_[25] ;
  wire \half_count_reg_n_0_[26] ;
  wire \half_count_reg_n_0_[27] ;
  wire \half_count_reg_n_0_[28] ;
  wire \half_count_reg_n_0_[29] ;
  wire \half_count_reg_n_0_[2] ;
  wire \half_count_reg_n_0_[30] ;
  wire \half_count_reg_n_0_[31] ;
  wire \half_count_reg_n_0_[3] ;
  wire \half_count_reg_n_0_[4] ;
  wire \half_count_reg_n_0_[5] ;
  wire \half_count_reg_n_0_[6] ;
  wire \half_count_reg_n_0_[7] ;
  wire \half_count_reg_n_0_[8] ;
  wire \half_count_reg_n_0_[9] ;
  wire \index_reg[2] ;
  wire init_done_reg;
  wire nack_i_1_n_0;
  wire nack_i_2_n_0;
  wire nack_i_3_n_0;
  wire nack_i_4_n_0;
  wire nack_i_5_n_0;
  wire nack_i_6_n_0;
  wire nack_reg_0;
  wire nack_reg_1;
  wire nack_reg_2;
  wire nack_reg_3;
  wire [1:0]p_0_out;
  wire rd_data0;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_2_n_0 ;
  wire \rd_data[7]_i_3_n_0 ;
  wire [15:0]reg_addr_latched;
  wire [15:0]\reg_addr_latched_reg[15]_0 ;
  wire \rom_index_reg_rep[0] ;
  wire rsp_valid;
  wire rsp_valid_i_1_n_0;
  wire rsp_valid_reg_0;
  wire [7:7]rx_shift;
  wire \rx_shift[0]_i_1_n_0 ;
  wire \rx_shift[0]_i_2_n_0 ;
  wire \rx_shift[1]_i_1_n_0 ;
  wire \rx_shift[1]_i_2_n_0 ;
  wire \rx_shift[2]_i_1_n_0 ;
  wire \rx_shift[2]_i_2_n_0 ;
  wire \rx_shift[3]_i_1_n_0 ;
  wire \rx_shift[3]_i_2_n_0 ;
  wire \rx_shift[3]_i_3_n_0 ;
  wire \rx_shift[4]_i_1_n_0 ;
  wire \rx_shift[4]_i_2_n_0 ;
  wire \rx_shift[4]_i_3_n_0 ;
  wire \rx_shift[5]_i_1_n_0 ;
  wire \rx_shift[5]_i_2_n_0 ;
  wire \rx_shift[6]_i_1_n_0 ;
  wire \rx_shift[6]_i_2_n_0 ;
  wire \rx_shift[7]_i_1_n_0 ;
  wire \rx_shift[7]_i_3_n_0 ;
  wire \rx_shift[7]_i_4_n_0 ;
  wire \rx_shift[7]_i_5_n_0 ;
  wire \rx_shift[7]_i_6_n_0 ;
  wire \rx_shift[7]_i_7_n_0 ;
  wire \rx_shift_reg_n_0_[0] ;
  wire \rx_shift_reg_n_0_[1] ;
  wire \rx_shift_reg_n_0_[2] ;
  wire \rx_shift_reg_n_0_[3] ;
  wire \rx_shift_reg_n_0_[4] ;
  wire \rx_shift_reg_n_0_[5] ;
  wire \rx_shift_reg_n_0_[6] ;
  wire \rx_shift_reg_n_0_[7] ;
  wire scl_o_i_10_n_0;
  wire scl_o_i_11_n_0;
  wire scl_o_i_12_n_0;
  wire scl_o_i_13_n_0;
  wire scl_o_i_14_n_0;
  wire scl_o_i_15_n_0;
  wire scl_o_i_16_n_0;
  wire scl_o_i_17_n_0;
  wire scl_o_i_18_n_0;
  wire scl_o_i_1_n_0;
  wire scl_o_i_3_n_0;
  wire scl_o_i_4_n_0;
  wire scl_o_i_5_n_0;
  wire scl_o_i_6_n_0;
  wire scl_o_i_7_n_0;
  wire scl_o_i_8_n_0;
  wire scl_o_i_9_n_0;
  wire sda_i;
  wire sda_oe;
  wire sda_oe_i_10_n_0;
  wire sda_oe_i_1_n_0;
  wire sda_oe_i_2_n_0;
  wire sda_oe_i_3_n_0;
  wire sda_oe_i_4_n_0;
  wire sda_oe_i_5_n_0;
  wire sda_oe_i_6_n_0;
  wire sda_oe_i_7_n_0;
  wire sda_oe_i_8_n_0;
  wire sda_oe_i_9_n_0;
  wire [3:0]\sensor_id_reg[0] ;
  wire settling_i_2;
  wire settling_i_2_0;
  wire settling_i_5_0;
  wire settling_i_8_n_0;
  wire slow_applied_i_4_n_0;
  wire slow_applied_i_5_n_0;
  wire slow_applied_i_6_n_0;
  wire slow_applied_i_7_n_0;
  wire slow_applied_i_8_n_0;
  wire slow_applied_i_9_n_0;
  wire slow_applied_reg;
  wire slow_applied_reg_0;
  wire slow_applied_reg_1;
  wire start_d;
  wire state0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state[2]_i_3__0_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3__0_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[4]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire sys_clk50;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire sys_rst_n_1;
  wire sys_rst_n_2;
  wire target_slow;
  wire [31:1]timeout_count;
  wire [31:1]timeout_count0;
  wire timeout_count0_carry__0_n_0;
  wire timeout_count0_carry__0_n_1;
  wire timeout_count0_carry__0_n_2;
  wire timeout_count0_carry__0_n_3;
  wire timeout_count0_carry__1_n_0;
  wire timeout_count0_carry__1_n_1;
  wire timeout_count0_carry__1_n_2;
  wire timeout_count0_carry__1_n_3;
  wire timeout_count0_carry__2_n_0;
  wire timeout_count0_carry__2_n_1;
  wire timeout_count0_carry__2_n_2;
  wire timeout_count0_carry__2_n_3;
  wire timeout_count0_carry__3_n_0;
  wire timeout_count0_carry__3_n_1;
  wire timeout_count0_carry__3_n_2;
  wire timeout_count0_carry__3_n_3;
  wire timeout_count0_carry__4_n_0;
  wire timeout_count0_carry__4_n_1;
  wire timeout_count0_carry__4_n_2;
  wire timeout_count0_carry__4_n_3;
  wire timeout_count0_carry__5_n_0;
  wire timeout_count0_carry__5_n_1;
  wire timeout_count0_carry__5_n_2;
  wire timeout_count0_carry__5_n_3;
  wire timeout_count0_carry__6_n_2;
  wire timeout_count0_carry__6_n_3;
  wire timeout_count0_carry_n_0;
  wire timeout_count0_carry_n_1;
  wire timeout_count0_carry_n_2;
  wire timeout_count0_carry_n_3;
  wire \timeout_count[0]_i_1_n_0 ;
  wire \timeout_count_reg_n_0_[0] ;
  wire \timeout_count_reg_n_0_[10] ;
  wire \timeout_count_reg_n_0_[11] ;
  wire \timeout_count_reg_n_0_[12] ;
  wire \timeout_count_reg_n_0_[13] ;
  wire \timeout_count_reg_n_0_[14] ;
  wire \timeout_count_reg_n_0_[15] ;
  wire \timeout_count_reg_n_0_[16] ;
  wire \timeout_count_reg_n_0_[17] ;
  wire \timeout_count_reg_n_0_[18] ;
  wire \timeout_count_reg_n_0_[19] ;
  wire \timeout_count_reg_n_0_[1] ;
  wire \timeout_count_reg_n_0_[20] ;
  wire \timeout_count_reg_n_0_[21] ;
  wire \timeout_count_reg_n_0_[22] ;
  wire \timeout_count_reg_n_0_[23] ;
  wire \timeout_count_reg_n_0_[24] ;
  wire \timeout_count_reg_n_0_[25] ;
  wire \timeout_count_reg_n_0_[26] ;
  wire \timeout_count_reg_n_0_[27] ;
  wire \timeout_count_reg_n_0_[28] ;
  wire \timeout_count_reg_n_0_[29] ;
  wire \timeout_count_reg_n_0_[2] ;
  wire \timeout_count_reg_n_0_[30] ;
  wire \timeout_count_reg_n_0_[31] ;
  wire \timeout_count_reg_n_0_[3] ;
  wire \timeout_count_reg_n_0_[4] ;
  wire \timeout_count_reg_n_0_[5] ;
  wire \timeout_count_reg_n_0_[6] ;
  wire \timeout_count_reg_n_0_[7] ;
  wire \timeout_count_reg_n_0_[8] ;
  wire \timeout_count_reg_n_0_[9] ;
  wire timeout_i_1_n_0;
  wire timeout_i_2_n_0;
  wire timeout_i_3_n_0;
  wire timeout_i_4_n_0;
  wire timeout_i_5_n_0;
  wire timeout_i_6_n_0;
  wire timeout_reg_0;
  wire timeout_reg_1;
  wire timeout_reg_2;
  wire timeout_reg_3;
  wire timeout_reg_4;
  wire timeout_reg_5;
  wire \tx_shift[0]_i_1_n_0 ;
  wire \tx_shift[0]_i_2_n_0 ;
  wire \tx_shift[1]_i_1_n_0 ;
  wire \tx_shift[2]_i_1_n_0 ;
  wire \tx_shift[3]_i_1_n_0 ;
  wire \tx_shift[3]_i_2_n_0 ;
  wire \tx_shift[4]_i_1_n_0 ;
  wire \tx_shift[4]_i_2_n_0 ;
  wire \tx_shift[5]_i_1_n_0 ;
  wire \tx_shift[5]_i_2_n_0 ;
  wire \tx_shift[6]_i_1_n_0 ;
  wire \tx_shift[6]_i_2_n_0 ;
  wire \tx_shift[7]_i_1_n_0 ;
  wire \tx_shift[7]_i_2_n_0 ;
  wire \tx_shift_reg_n_0_[0] ;
  wire \tx_shift_reg_n_0_[1] ;
  wire \tx_shift_reg_n_0_[2] ;
  wire \tx_shift_reg_n_0_[3] ;
  wire \tx_shift_reg_n_0_[4] ;
  wire \tx_shift_reg_n_0_[5] ;
  wire \tx_shift_reg_n_0_[6] ;
  wire \tx_shift_reg_n_0_[7] ;
  wire tx_step0;
  wire \tx_step[2]_i_2_n_0 ;
  wire \tx_step[2]_i_3_n_0 ;
  wire \tx_step[2]_i_4_n_0 ;
  wire \tx_step_reg_n_0_[0] ;
  wire \tx_step_reg_n_0_[1] ;
  wire \tx_step_reg_n_0_[2] ;
  wire \wait_count_reg[0] ;
  wire waiting_reg;
  wire [6:0]wr_data_latched;
  wire \wr_data_latched[7]_i_1_n_0 ;
  wire \wr_data_latched_reg_n_0_[7] ;
  wire [3:2]NLW_half_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_half_count0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_timeout_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timeout_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \bit_index[0]_i_1 
       (.I0(\bit_index[0]_i_2_n_0 ),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_3_n_0 ),
        .I3(scl_o_i_4_n_0),
        .I4(\bit_index[2]_i_4_n_0 ),
        .I5(bit_index[0]),
        .O(\bit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0FF1FFFB)) 
    \bit_index[0]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(timeout_reg_5),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(bit_index[0]),
        .O(\bit_index[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \bit_index[1]_i_1 
       (.I0(\bit_index[1]_i_2_n_0 ),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_3_n_0 ),
        .I3(scl_o_i_4_n_0),
        .I4(\bit_index[2]_i_4_n_0 ),
        .I5(bit_index[1]),
        .O(\bit_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB0FF10FF1FFFB)) 
    \bit_index[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(timeout_reg_5),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(bit_index[0]),
        .I5(bit_index[1]),
        .O(\bit_index[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index[2]_i_2_n_0 ),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_3_n_0 ),
        .I3(scl_o_i_4_n_0),
        .I4(\bit_index[2]_i_4_n_0 ),
        .I5(bit_index[2]),
        .O(\bit_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_index[2]_i_10 
       (.I0(\half_count_reg_n_0_[30] ),
        .I1(\half_count_reg_n_0_[17] ),
        .I2(\half_count_reg_n_0_[21] ),
        .I3(\half_count_reg_n_0_[19] ),
        .I4(\bit_index[2]_i_14_n_0 ),
        .O(\bit_index[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bit_index[2]_i_11 
       (.I0(\half_count_reg_n_0_[3] ),
        .I1(\half_count_reg_n_0_[5] ),
        .I2(\half_count_reg_n_0_[6] ),
        .I3(\half_count_reg_n_0_[4] ),
        .I4(\half_count_reg_n_0_[7] ),
        .O(\bit_index[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_index[2]_i_12 
       (.I0(\half_count_reg_n_0_[12] ),
        .I1(\half_count_reg_n_0_[14] ),
        .I2(\half_count_reg_n_0_[18] ),
        .I3(\half_count_reg_n_0_[29] ),
        .O(\bit_index[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_index[2]_i_13 
       (.I0(\half_count_reg_n_0_[16] ),
        .I1(\half_count_reg_n_0_[20] ),
        .I2(\half_count_reg_n_0_[10] ),
        .I3(\half_count_reg_n_0_[27] ),
        .O(\bit_index[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_index[2]_i_14 
       (.I0(\half_count_reg_n_0_[22] ),
        .I1(\half_count_reg_n_0_[25] ),
        .I2(\half_count_reg_n_0_[26] ),
        .I3(\half_count_reg_n_0_[28] ),
        .O(\bit_index[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hBEBEBCBF)) 
    \bit_index[2]_i_2 
       (.I0(\bit_index[2]_i_5_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(timeout_reg_5),
        .I4(\state_reg_n_0_[2] ),
        .O(\bit_index[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_index[2]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\bit_index[2]_i_6_n_0 ),
        .O(\bit_index[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \bit_index[2]_i_4 
       (.I0(\bit_index[2]_i_7_n_0 ),
        .I1(\bit_index[2]_i_8_n_0 ),
        .I2(\bit_index[2]_i_9_n_0 ),
        .I3(\bit_index[2]_i_10_n_0 ),
        .O(\bit_index[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_index[2]_i_5 
       (.I0(bit_index[2]),
        .I1(bit_index[1]),
        .I2(bit_index[0]),
        .O(\bit_index[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDF3FFF3DDF3CF)) 
    \bit_index[2]_i_6 
       (.I0(\state[2]_i_7_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[2]_i_4_n_0 ),
        .O(\bit_index[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \bit_index[2]_i_7 
       (.I0(\half_count_reg_n_0_[2] ),
        .I1(\half_count_reg_n_0_[1] ),
        .I2(\half_count_reg_n_0_[0] ),
        .I3(\bit_index[2]_i_11_n_0 ),
        .O(\bit_index[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_index[2]_i_8 
       (.I0(\half_count_reg_n_0_[15] ),
        .I1(\half_count_reg_n_0_[13] ),
        .I2(\half_count_reg_n_0_[11] ),
        .I3(\half_count_reg_n_0_[9] ),
        .I4(\bit_index[2]_i_12_n_0 ),
        .O(\bit_index[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_index[2]_i_9 
       (.I0(\half_count_reg_n_0_[31] ),
        .I1(\half_count_reg_n_0_[8] ),
        .I2(\half_count_reg_n_0_[24] ),
        .I3(\half_count_reg_n_0_[23] ),
        .I4(\bit_index[2]_i_13_n_0 ),
        .O(\bit_index[2]_i_9_n_0 ));
  FDPE \bit_index_reg[0] 
       (.C(sys_clk50),
        .CE(1'b1),
        .D(\bit_index[0]_i_1_n_0 ),
        .PRE(sys_rst_n_2),
        .Q(bit_index[0]));
  FDPE \bit_index_reg[1] 
       (.C(sys_clk50),
        .CE(1'b1),
        .D(\bit_index[1]_i_1_n_0 ),
        .PRE(sys_rst_n_2),
        .Q(bit_index[1]));
  FDPE \bit_index_reg[2] 
       (.C(sys_clk50),
        .CE(1'b1),
        .D(\bit_index[2]_i_1_n_0 ),
        .PRE(sys_rst_n_2),
        .Q(bit_index[2]));
  FDCE cmd_read_latched_reg
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_1),
        .D(cmd_read),
        .Q(cmd_read_latched));
  FDCE \dev_addr_latched_reg[2] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_1),
        .D(1'b1),
        .Q(dev_addr_latched));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \error_code[5]_i_11 
       (.I0(timeout_reg_0),
        .I1(nack_reg_0),
        .I2(rsp_valid),
        .I3(\wait_count_reg[0] ),
        .O(timeout_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h0001D5AA)) 
    g0_b0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(g0_b0_n_0));
  CARRY4 half_count0_carry
       (.CI(1'b0),
        .CO({half_count0_carry_n_0,half_count0_carry_n_1,half_count0_carry_n_2,half_count0_carry_n_3}),
        .CYINIT(\half_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[4:1]),
        .S({\half_count_reg_n_0_[4] ,\half_count_reg_n_0_[3] ,\half_count_reg_n_0_[2] ,\half_count_reg_n_0_[1] }));
  CARRY4 half_count0_carry__0
       (.CI(half_count0_carry_n_0),
        .CO({half_count0_carry__0_n_0,half_count0_carry__0_n_1,half_count0_carry__0_n_2,half_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[8:5]),
        .S({\half_count_reg_n_0_[8] ,\half_count_reg_n_0_[7] ,\half_count_reg_n_0_[6] ,\half_count_reg_n_0_[5] }));
  CARRY4 half_count0_carry__1
       (.CI(half_count0_carry__0_n_0),
        .CO({half_count0_carry__1_n_0,half_count0_carry__1_n_1,half_count0_carry__1_n_2,half_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[12:9]),
        .S({\half_count_reg_n_0_[12] ,\half_count_reg_n_0_[11] ,\half_count_reg_n_0_[10] ,\half_count_reg_n_0_[9] }));
  CARRY4 half_count0_carry__2
       (.CI(half_count0_carry__1_n_0),
        .CO({half_count0_carry__2_n_0,half_count0_carry__2_n_1,half_count0_carry__2_n_2,half_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[16:13]),
        .S({\half_count_reg_n_0_[16] ,\half_count_reg_n_0_[15] ,\half_count_reg_n_0_[14] ,\half_count_reg_n_0_[13] }));
  CARRY4 half_count0_carry__3
       (.CI(half_count0_carry__2_n_0),
        .CO({half_count0_carry__3_n_0,half_count0_carry__3_n_1,half_count0_carry__3_n_2,half_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[20:17]),
        .S({\half_count_reg_n_0_[20] ,\half_count_reg_n_0_[19] ,\half_count_reg_n_0_[18] ,\half_count_reg_n_0_[17] }));
  CARRY4 half_count0_carry__4
       (.CI(half_count0_carry__3_n_0),
        .CO({half_count0_carry__4_n_0,half_count0_carry__4_n_1,half_count0_carry__4_n_2,half_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[24:21]),
        .S({\half_count_reg_n_0_[24] ,\half_count_reg_n_0_[23] ,\half_count_reg_n_0_[22] ,\half_count_reg_n_0_[21] }));
  CARRY4 half_count0_carry__5
       (.CI(half_count0_carry__4_n_0),
        .CO({half_count0_carry__5_n_0,half_count0_carry__5_n_1,half_count0_carry__5_n_2,half_count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_count0[28:25]),
        .S({\half_count_reg_n_0_[28] ,\half_count_reg_n_0_[27] ,\half_count_reg_n_0_[26] ,\half_count_reg_n_0_[25] }));
  CARRY4 half_count0_carry__6
       (.CI(half_count0_carry__5_n_0),
        .CO({NLW_half_count0_carry__6_CO_UNCONNECTED[3:2],half_count0_carry__6_n_2,half_count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_half_count0_carry__6_O_UNCONNECTED[3],half_count0[31:29]}),
        .S({1'b0,\half_count_reg_n_0_[31] ,\half_count_reg_n_0_[30] ,\half_count_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \half_count[0]_i_1 
       (.I0(\half_count_reg_n_0_[0] ),
        .I1(scl_o_i_5_n_0),
        .O(\half_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[10]_i_1 
       (.I0(half_count0[10]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[11]_i_1 
       (.I0(half_count0[11]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[12]_i_1 
       (.I0(half_count0[12]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[12]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[13]_i_1 
       (.I0(half_count0[13]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[14]_i_1 
       (.I0(half_count0[14]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[14]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[15]_i_1 
       (.I0(half_count0[15]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[15]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[16]_i_1 
       (.I0(half_count0[16]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[16]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[17]_i_1 
       (.I0(half_count0[17]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[17]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[18]_i_1 
       (.I0(half_count0[18]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[18]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[19]_i_1 
       (.I0(half_count0[19]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[19]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[1]_i_1 
       (.I0(half_count0[1]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[20]_i_1 
       (.I0(half_count0[20]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[20]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[21]_i_1 
       (.I0(half_count0[21]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[22]_i_1 
       (.I0(half_count0[22]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[22]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[23]_i_1 
       (.I0(half_count0[23]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[23]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[24]_i_1 
       (.I0(half_count0[24]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[24]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[25]_i_1 
       (.I0(half_count0[25]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[25]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[26]_i_1 
       (.I0(half_count0[26]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[26]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[27]_i_1 
       (.I0(half_count0[27]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[27]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[28]_i_1 
       (.I0(half_count0[28]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[29]_i_1 
       (.I0(half_count0[29]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[29]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[2]_i_1 
       (.I0(half_count0[2]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[30]_i_1 
       (.I0(half_count0[30]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[30]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[31]_i_1 
       (.I0(half_count0[31]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[31]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[3]_i_1 
       (.I0(half_count0[3]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[4]_i_1 
       (.I0(half_count0[4]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[5]_i_1 
       (.I0(half_count0[5]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[6]_i_1 
       (.I0(half_count0[6]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[7]_i_1 
       (.I0(half_count0[7]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[8]_i_1 
       (.I0(half_count0[8]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_count[9]_i_1 
       (.I0(half_count0[9]),
        .I1(scl_o_i_5_n_0),
        .O(half_count[9]));
  FDCE \half_count_reg[0] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(\half_count[0]_i_1_n_0 ),
        .Q(\half_count_reg_n_0_[0] ));
  FDCE \half_count_reg[10] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[10]),
        .Q(\half_count_reg_n_0_[10] ));
  FDCE \half_count_reg[11] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[11]),
        .Q(\half_count_reg_n_0_[11] ));
  FDCE \half_count_reg[12] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[12]),
        .Q(\half_count_reg_n_0_[12] ));
  FDCE \half_count_reg[13] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[13]),
        .Q(\half_count_reg_n_0_[13] ));
  FDCE \half_count_reg[14] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[14]),
        .Q(\half_count_reg_n_0_[14] ));
  FDCE \half_count_reg[15] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[15]),
        .Q(\half_count_reg_n_0_[15] ));
  FDCE \half_count_reg[16] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[16]),
        .Q(\half_count_reg_n_0_[16] ));
  FDCE \half_count_reg[17] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[17]),
        .Q(\half_count_reg_n_0_[17] ));
  FDCE \half_count_reg[18] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[18]),
        .Q(\half_count_reg_n_0_[18] ));
  FDCE \half_count_reg[19] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[19]),
        .Q(\half_count_reg_n_0_[19] ));
  FDCE \half_count_reg[1] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[1]),
        .Q(\half_count_reg_n_0_[1] ));
  FDCE \half_count_reg[20] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[20]),
        .Q(\half_count_reg_n_0_[20] ));
  FDCE \half_count_reg[21] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[21]),
        .Q(\half_count_reg_n_0_[21] ));
  FDCE \half_count_reg[22] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[22]),
        .Q(\half_count_reg_n_0_[22] ));
  FDCE \half_count_reg[23] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[23]),
        .Q(\half_count_reg_n_0_[23] ));
  FDCE \half_count_reg[24] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[24]),
        .Q(\half_count_reg_n_0_[24] ));
  FDCE \half_count_reg[25] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[25]),
        .Q(\half_count_reg_n_0_[25] ));
  FDCE \half_count_reg[26] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[26]),
        .Q(\half_count_reg_n_0_[26] ));
  FDCE \half_count_reg[27] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[27]),
        .Q(\half_count_reg_n_0_[27] ));
  FDCE \half_count_reg[28] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[28]),
        .Q(\half_count_reg_n_0_[28] ));
  FDCE \half_count_reg[29] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[29]),
        .Q(\half_count_reg_n_0_[29] ));
  FDCE \half_count_reg[2] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[2]),
        .Q(\half_count_reg_n_0_[2] ));
  FDCE \half_count_reg[30] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(\half_count_reg[30]_0 ),
        .D(half_count[30]),
        .Q(\half_count_reg_n_0_[30] ));
  FDCE \half_count_reg[31] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(\half_count_reg[30]_0 ),
        .D(half_count[31]),
        .Q(\half_count_reg_n_0_[31] ));
  FDCE \half_count_reg[3] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[3]),
        .Q(\half_count_reg_n_0_[3] ));
  FDCE \half_count_reg[4] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[4]),
        .Q(\half_count_reg_n_0_[4] ));
  FDCE \half_count_reg[5] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[5]),
        .Q(\half_count_reg_n_0_[5] ));
  FDCE \half_count_reg[6] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[6]),
        .Q(\half_count_reg_n_0_[6] ));
  FDCE \half_count_reg[7] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[7]),
        .Q(\half_count_reg_n_0_[7] ));
  FDCE \half_count_reg[8] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[8]),
        .Q(\half_count_reg_n_0_[8] ));
  FDCE \half_count_reg[9] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(half_count[9]),
        .Q(\half_count_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    init_done_i_2
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    init_done_i_6
       (.I0(\rom_index_reg_rep[0] ),
        .I1(\wait_count_reg[0] ),
        .I2(rsp_valid),
        .I3(nack_reg_0),
        .I4(timeout_reg_0),
        .O(init_done_reg));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    init_error_i_2
       (.I0(nack_reg_0),
        .I1(timeout_reg_0),
        .O(nack_reg_3));
  LUT6 #(
    .INIT(64'h757F303045400000)) 
    nack_i_1
       (.I0(nack_i_2_n_0),
        .I1(nack_i_3_n_0),
        .I2(scl_o_i_3_n_0),
        .I3(nack_i_4_n_0),
        .I4(scl_o_i_4_n_0),
        .I5(nack_reg_0),
        .O(nack_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    nack_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(sda_i),
        .O(nack_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFDFFFF)) 
    nack_i_3
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(timeout_reg_5),
        .O(nack_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    nack_i_4
       (.I0(\bit_index[2]_i_4_n_0 ),
        .I1(nack_i_5_n_0),
        .O(nack_i_4_n_0));
  LUT6 #(
    .INIT(64'h3333333633332336)) 
    nack_i_5
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(nack_i_6_n_0),
        .O(nack_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    nack_i_6
       (.I0(sda_i),
        .I1(\tx_step_reg_n_0_[1] ),
        .I2(\tx_step_reg_n_0_[0] ),
        .I3(\tx_step_reg_n_0_[2] ),
        .O(nack_i_6_n_0));
  FDCE nack_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(nack_i_1_n_0),
        .Q(nack_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[0]_i_1 
       (.I0(\rx_shift_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[1]_i_1 
       (.I0(\rx_shift_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[2]_i_1 
       (.I0(\rx_shift_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[3]_i_1 
       (.I0(\rx_shift_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[4]_i_1 
       (.I0(\rx_shift_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[5]_i_1 
       (.I0(\rx_shift_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[6]_i_1 
       (.I0(\rx_shift_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \rd_data[7]_i_1 
       (.I0(\wr_data_latched[7]_i_1_n_0 ),
        .I1(\rd_data[7]_i_3_n_0 ),
        .I2(scl_o_i_4_n_0),
        .I3(\bit_index[2]_i_4_n_0 ),
        .O(rd_data0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_data[7]_i_2 
       (.I0(\rx_shift_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\rd_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \rd_data[7]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\rd_data[7]_i_3_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \rd_data_reg[1] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \rd_data_reg[2] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \rd_data_reg[3] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \rd_data_reg[4] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \rd_data_reg[5] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \rd_data_reg[6] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \rd_data_reg[7] 
       (.C(sys_clk50),
        .CE(rd_data0),
        .CLR(sys_rst_n_0),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(Q[7]));
  FDCE \reg_addr_latched_reg[0] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [0]),
        .Q(reg_addr_latched[0]));
  FDCE \reg_addr_latched_reg[10] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [10]),
        .Q(reg_addr_latched[10]));
  FDCE \reg_addr_latched_reg[11] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [11]),
        .Q(reg_addr_latched[11]));
  FDCE \reg_addr_latched_reg[12] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [12]),
        .Q(reg_addr_latched[12]));
  FDCE \reg_addr_latched_reg[13] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [13]),
        .Q(reg_addr_latched[13]));
  FDCE \reg_addr_latched_reg[14] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [14]),
        .Q(reg_addr_latched[14]));
  FDCE \reg_addr_latched_reg[15] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [15]),
        .Q(reg_addr_latched[15]));
  FDCE \reg_addr_latched_reg[1] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [1]),
        .Q(reg_addr_latched[1]));
  FDCE \reg_addr_latched_reg[2] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [2]),
        .Q(reg_addr_latched[2]));
  FDCE \reg_addr_latched_reg[3] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [3]),
        .Q(reg_addr_latched[3]));
  FDCE \reg_addr_latched_reg[4] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [4]),
        .Q(reg_addr_latched[4]));
  FDCE \reg_addr_latched_reg[5] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [5]),
        .Q(reg_addr_latched[5]));
  FDCE \reg_addr_latched_reg[6] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [6]),
        .Q(reg_addr_latched[6]));
  FDCE \reg_addr_latched_reg[7] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [7]),
        .Q(reg_addr_latched[7]));
  FDCE \reg_addr_latched_reg[8] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [8]),
        .Q(reg_addr_latched[8]));
  FDCE \reg_addr_latched_reg[9] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(\reg_addr_latched_reg[15]_0 [9]),
        .Q(reg_addr_latched[9]));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \rom_index[8]_i_4 
       (.I0(timeout_reg_0),
        .I1(nack_reg_0),
        .I2(rsp_valid),
        .I3(\wait_count_reg[0] ),
        .I4(\rom_index_reg_rep[0] ),
        .I5(\sensor_id_reg[0] [2]),
        .O(timeout_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    rsp_valid_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(rsp_valid_i_1_n_0));
  FDCE rsp_valid_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(rsp_valid_i_1_n_0),
        .Q(rsp_valid));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \rx_shift[0]_i_1 
       (.I0(sda_i),
        .I1(\state_reg_n_0_[3] ),
        .I2(\wr_data_latched[7]_i_1_n_0 ),
        .I3(\rx_shift[0]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[0] ),
        .O(\rx_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFBFBFB)) 
    \rx_shift[0]_i_2 
       (.I0(\bit_index[2]_i_4_n_0 ),
        .I1(\rx_shift[7]_i_7_n_0 ),
        .I2(\rx_shift[7]_i_4_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[2]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_6_n_0 ),
        .O(\rx_shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[1]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[1]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[1] ),
        .O(\rx_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA8AFFFFFFFF)) 
    \rx_shift[1]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(\rx_shift[3]_i_3_n_0 ),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[2]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[2]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[2] ),
        .O(\rx_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA8AFFFFFFFF)) 
    \rx_shift[2]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(\rx_shift[3]_i_3_n_0 ),
        .I2(bit_index[1]),
        .I3(bit_index[0]),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[3]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[3]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[3] ),
        .O(\rx_shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AAAFFFFFFFF)) 
    \rx_shift[3]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(\rx_shift[3]_i_3_n_0 ),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_shift[3]_i_3 
       (.I0(bit_index[2]),
        .I1(\state_reg_n_0_[3] ),
        .O(\rx_shift[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[4]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[4]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[4] ),
        .O(\rx_shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AAAFFFFFFFF)) 
    \rx_shift[4]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(bit_index[2]),
        .I2(\rx_shift[4]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rx_shift[4]_i_3 
       (.I0(bit_index[0]),
        .I1(bit_index[1]),
        .O(\rx_shift[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[5]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[5]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[5] ),
        .O(\rx_shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA8AFFFFFFFF)) 
    \rx_shift[5]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(\rx_shift[7]_i_5_n_0 ),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[6]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[6]_i_2_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[6] ),
        .O(\rx_shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA8AFFFFFFFF)) 
    \rx_shift[6]_i_2 
       (.I0(\rx_shift[7]_i_6_n_0 ),
        .I1(\rx_shift[7]_i_5_n_0 ),
        .I2(bit_index[1]),
        .I3(bit_index[0]),
        .I4(\rx_shift[7]_i_4_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \rx_shift[7]_i_1 
       (.I0(rx_shift),
        .I1(\wr_data_latched[7]_i_1_n_0 ),
        .I2(\bit_index[2]_i_4_n_0 ),
        .I3(\rx_shift[7]_i_3_n_0 ),
        .I4(scl_o_i_4_n_0),
        .I5(\rx_shift_reg_n_0_[7] ),
        .O(\rx_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift[7]_i_2 
       (.I0(sda_i),
        .I1(\state_reg_n_0_[3] ),
        .O(rx_shift));
  LUT6 #(
    .INIT(64'hFFBFAAAAFFFFFFFF)) 
    \rx_shift[7]_i_3 
       (.I0(\rx_shift[7]_i_4_n_0 ),
        .I1(bit_index[0]),
        .I2(bit_index[1]),
        .I3(\rx_shift[7]_i_5_n_0 ),
        .I4(\rx_shift[7]_i_6_n_0 ),
        .I5(\rx_shift[7]_i_7_n_0 ),
        .O(\rx_shift[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hDB)) 
    \rx_shift[7]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\rx_shift[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_shift[7]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(bit_index[2]),
        .O(\rx_shift[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \rx_shift[7]_i_6 
       (.I0(\tx_step_reg_n_0_[2] ),
        .I1(sda_i),
        .I2(\state_reg_n_0_[3] ),
        .I3(\tx_step_reg_n_0_[0] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .O(\rx_shift[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_shift[7]_i_7 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\rx_shift[7]_i_7_n_0 ));
  FDCE \rx_shift_reg[0] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[0]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[0] ));
  FDCE \rx_shift_reg[1] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[1]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[1] ));
  FDCE \rx_shift_reg[2] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[2]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[2] ));
  FDCE \rx_shift_reg[3] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[3]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[3] ));
  FDCE \rx_shift_reg[4] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[4]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[4] ));
  FDCE \rx_shift_reg[5] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[5]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[5] ));
  FDCE \rx_shift_reg[6] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[6]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[6] ));
  FDCE \rx_shift_reg[7] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\rx_shift[7]_i_1_n_0 ),
        .Q(\rx_shift_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    scl_o_i_1
       (.I0(scl_o_i_3_n_0),
        .I1(scl_o_i_4_n_0),
        .I2(g0_b0_n_0),
        .I3(scl_o_i_5_n_0),
        .I4(cam_scl),
        .O(scl_o_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_o_i_10
       (.I0(\timeout_count_reg_n_0_[30] ),
        .I1(\timeout_count_reg_n_0_[27] ),
        .I2(\timeout_count_reg_n_0_[25] ),
        .I3(scl_o_i_14_n_0),
        .O(scl_o_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAABAFF)) 
    scl_o_i_11
       (.I0(scl_o_i_9_n_0),
        .I1(scl_o_i_15_n_0),
        .I2(scl_o_i_16_n_0),
        .I3(\timeout_count_reg_n_0_[14] ),
        .I4(scl_o_i_13_n_0),
        .I5(scl_o_i_7_n_0),
        .O(scl_o_i_11_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    scl_o_i_12
       (.I0(\timeout_count_reg_n_0_[10] ),
        .I1(\timeout_count_reg_n_0_[9] ),
        .I2(\timeout_count_reg_n_0_[8] ),
        .I3(scl_o_i_17_n_0),
        .I4(\timeout_count_reg_n_0_[6] ),
        .I5(\timeout_count_reg_n_0_[7] ),
        .O(scl_o_i_12_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    scl_o_i_13
       (.I0(\timeout_count_reg_n_0_[17] ),
        .I1(\timeout_count_reg_n_0_[15] ),
        .I2(\timeout_count_reg_n_0_[16] ),
        .O(scl_o_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_o_i_14
       (.I0(\timeout_count_reg_n_0_[23] ),
        .I1(\timeout_count_reg_n_0_[28] ),
        .I2(\timeout_count_reg_n_0_[31] ),
        .I3(\timeout_count_reg_n_0_[24] ),
        .I4(\timeout_count_reg_n_0_[29] ),
        .I5(\timeout_count_reg_n_0_[26] ),
        .O(scl_o_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    scl_o_i_15
       (.I0(\timeout_count_reg_n_0_[13] ),
        .I1(\timeout_count_reg_n_0_[12] ),
        .O(scl_o_i_15_n_0));
  LUT6 #(
    .INIT(64'h55555555FFFF5557)) 
    scl_o_i_16
       (.I0(\timeout_count_reg_n_0_[11] ),
        .I1(\timeout_count_reg_n_0_[7] ),
        .I2(\timeout_count_reg_n_0_[6] ),
        .I3(scl_o_i_17_n_0),
        .I4(scl_o_i_18_n_0),
        .I5(\timeout_count_reg_n_0_[10] ),
        .O(scl_o_i_16_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    scl_o_i_17
       (.I0(\timeout_count_reg_n_0_[2] ),
        .I1(\timeout_count_reg_n_0_[3] ),
        .I2(\timeout_count_reg_n_0_[0] ),
        .I3(\timeout_count_reg_n_0_[1] ),
        .I4(\timeout_count_reg_n_0_[5] ),
        .I5(\timeout_count_reg_n_0_[4] ),
        .O(scl_o_i_17_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    scl_o_i_18
       (.I0(\timeout_count_reg_n_0_[9] ),
        .I1(\timeout_count_reg_n_0_[8] ),
        .O(scl_o_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    scl_o_i_2
       (.I0(sys_rst_n),
        .O(sys_rst_n_2));
  LUT5 #(
    .INIT(32'h00000009)) 
    scl_o_i_3
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(scl_o_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAFFFF)) 
    scl_o_i_4
       (.I0(scl_o_i_6_n_0),
        .I1(scl_o_i_7_n_0),
        .I2(scl_o_i_8_n_0),
        .I3(scl_o_i_9_n_0),
        .I4(\timeout_count_reg_n_0_[22] ),
        .I5(scl_o_i_10_n_0),
        .O(scl_o_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFBFBFBFBBBFBBBB)) 
    scl_o_i_5
       (.I0(scl_o_i_3_n_0),
        .I1(\bit_index[2]_i_4_n_0 ),
        .I2(scl_o_i_6_n_0),
        .I3(scl_o_i_11_n_0),
        .I4(\timeout_count_reg_n_0_[22] ),
        .I5(scl_o_i_10_n_0),
        .O(scl_o_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00C00100)) 
    scl_o_i_6
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .O(scl_o_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    scl_o_i_7
       (.I0(\timeout_count_reg_n_0_[21] ),
        .I1(\timeout_count_reg_n_0_[20] ),
        .O(scl_o_i_7_n_0));
  LUT6 #(
    .INIT(64'h000000000111FFFF)) 
    scl_o_i_8
       (.I0(\timeout_count_reg_n_0_[12] ),
        .I1(\timeout_count_reg_n_0_[13] ),
        .I2(scl_o_i_12_n_0),
        .I3(\timeout_count_reg_n_0_[11] ),
        .I4(\timeout_count_reg_n_0_[14] ),
        .I5(scl_o_i_13_n_0),
        .O(scl_o_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    scl_o_i_9
       (.I0(\timeout_count_reg_n_0_[19] ),
        .I1(\timeout_count_reg_n_0_[18] ),
        .O(scl_o_i_9_n_0));
  FDPE scl_o_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .D(scl_o_i_1_n_0),
        .PRE(sys_rst_n_2),
        .Q(cam_scl));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h0B0F0B03)) 
    sda_oe_i_1
       (.I0(sda_oe_i_2_n_0),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .I3(sda_oe_i_3_n_0),
        .I4(sda_oe),
        .O(sda_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_oe_i_10
       (.I0(\tx_shift_reg_n_0_[4] ),
        .I1(\tx_shift_reg_n_0_[5] ),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .I4(\tx_shift_reg_n_0_[6] ),
        .I5(\tx_shift_reg_n_0_[7] ),
        .O(sda_oe_i_10_n_0));
  LUT6 #(
    .INIT(64'hCCCFFDCCCCCFFCCF)) 
    sda_oe_i_2
       (.I0(sda_oe_i_4_n_0),
        .I1(sda_oe_i_5_n_0),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(sda_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555554555455555)) 
    sda_oe_i_3
       (.I0(\bit_index[2]_i_4_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(sda_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000333E3332)) 
    sda_oe_i_4
       (.I0(reg_addr_latched[15]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(\tx_step_reg_n_0_[1] ),
        .I3(\tx_step_reg_n_0_[2] ),
        .I4(reg_addr_latched[7]),
        .I5(sda_oe_i_6_n_0),
        .O(sda_oe_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFAAFFBBFFAAEEAB)) 
    sda_oe_i_5
       (.I0(sda_oe_i_7_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\tx_shift_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(sda_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAB00)) 
    sda_oe_i_6
       (.I0(\tx_step_reg_n_0_[2] ),
        .I1(cmd_read_latched),
        .I2(\wr_data_latched_reg_n_0_[7] ),
        .I3(\tx_step_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(sda_i),
        .O(sda_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000010003000100)) 
    sda_oe_i_7
       (.I0(sda_oe_i_8_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(sda_oe_i_9_n_0),
        .I4(\bit_index[2]_i_5_n_0 ),
        .I5(sda_oe_i_10_n_0),
        .O(sda_oe_i_7_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_oe_i_8
       (.I0(\tx_shift_reg_n_0_[0] ),
        .I1(\tx_shift_reg_n_0_[1] ),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .I4(\tx_shift_reg_n_0_[2] ),
        .I5(\tx_shift_reg_n_0_[3] ),
        .O(sda_oe_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    sda_oe_i_9
       (.I0(\state_reg_n_0_[2] ),
        .I1(bit_index[2]),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .O(sda_oe_i_9_n_0));
  FDCE sda_oe_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_2),
        .D(sda_oe_i_1_n_0),
        .Q(sda_oe));
  LUT1 #(
    .INIT(2'h1)) 
    \sensor_id[15]_i_3 
       (.I0(sys_rst_n),
        .O(sys_rst_n_1));
  LUT6 #(
    .INIT(64'h001000000010FFFF)) 
    \sensor_id[7]_i_2 
       (.I0(timeout_reg_0),
        .I1(nack_reg_0),
        .I2(rsp_valid),
        .I3(\wait_count_reg[0] ),
        .I4(\sensor_id_reg[0] [3]),
        .I5(start_d),
        .O(timeout_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    settling_i_5
       (.I0(settling_i_2),
        .I1(settling_i_2_0),
        .I2(rsp_valid_reg_0),
        .I3(slow_applied_i_4_n_0),
        .I4(settling_i_8_n_0),
        .I5(nack_reg_0),
        .O(nack_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFF7E00000000)) 
    settling_i_8
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(target_slow),
        .I3(slow_applied_i_9_n_0),
        .I4(slow_applied_i_8_n_0),
        .I5(settling_i_5_0),
        .O(settling_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    slow_applied_i_3
       (.I0(slow_applied_i_4_n_0),
        .I1(slow_applied_i_5_n_0),
        .I2(slow_applied_reg),
        .I3(slow_applied_reg_0),
        .I4(slow_applied_reg_1),
        .I5(nack_reg_0),
        .O(\index_reg[2] ));
  LUT6 #(
    .INIT(64'hBAAABAAABAAAAAAA)) 
    slow_applied_i_4
       (.I0(timeout_reg_0),
        .I1(slow_applied_reg_0),
        .I2(slow_applied_reg_1),
        .I3(slow_applied_reg),
        .I4(slow_applied_i_6_n_0),
        .I5(slow_applied_i_7_n_0),
        .O(slow_applied_i_4_n_0));
  LUT5 #(
    .INIT(32'hEFFFFFFE)) 
    slow_applied_i_5
       (.I0(slow_applied_i_8_n_0),
        .I1(slow_applied_i_9_n_0),
        .I2(target_slow),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(slow_applied_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF9FFFFFFFF)) 
    slow_applied_i_6
       (.I0(Q[0]),
        .I1(target_slow),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(slow_applied_i_6_n_0));
  LUT4 #(
    .INIT(16'hEFFE)) 
    slow_applied_i_7
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(target_slow),
        .O(slow_applied_i_7_n_0));
  LUT4 #(
    .INIT(16'hBFFD)) 
    slow_applied_i_8
       (.I0(Q[0]),
        .I1(target_slow),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(slow_applied_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFEB)) 
    slow_applied_i_9
       (.I0(Q[3]),
        .I1(target_slow),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(slow_applied_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \state[0]_i_1 
       (.I0(\state_reg[4]_0 ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(scl_o_i_4_n_0),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFEAAFFE9FFA9)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[3]_i_3__0_n_0 ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \state[0]_i_2__0 
       (.I0(\sensor_id_reg[0] [2]),
        .I1(timeout_reg_0),
        .I2(nack_reg_0),
        .O(\state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \state[1]_i_1 
       (.I0(scl_o_i_3_n_0),
        .I1(\state[1]_i_2_n_0 ),
        .I2(scl_o_i_4_n_0),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDEEDDEBDDEFFDEB)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[2]_i_4_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554444455555555)) 
    \state[2]_i_1 
       (.I0(scl_o_i_3_n_0),
        .I1(\state[2]_i_2__0_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state[2]_i_3__0_n_0 ),
        .I5(scl_o_i_4_n_0),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0C50000)) 
    \state[2]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state[2]_i_4_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state[2]_i_6_n_0 ),
        .O(\state[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFE0A)) 
    \state[2]_i_3__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\state[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[2]_i_4 
       (.I0(bit_index[1]),
        .I1(bit_index[0]),
        .I2(bit_index[2]),
        .O(\state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1FB0000)) 
    \state[2]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_7_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[2]_i_8_n_0 ),
        .O(\state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0005001FFFFFFFFF)) 
    \state[2]_i_7 
       (.I0(\tx_step_reg_n_0_[0] ),
        .I1(cmd_read_latched),
        .I2(\tx_step_reg_n_0_[1] ),
        .I3(sda_i),
        .I4(\tx_step_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \state[2]_i_8 
       (.I0(\state_reg_n_0_[3] ),
        .I1(bit_index[2]),
        .I2(bit_index[0]),
        .I3(bit_index[1]),
        .O(\state[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \state[3]_i_1__0 
       (.I0(scl_o_i_3_n_0),
        .I1(\state[3]_i_2_n_0 ),
        .I2(scl_o_i_4_n_0),
        .O(\state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFFAFFFAF8F0A5)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[3]_i_3__0_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \state[3]_i_3__0 
       (.I0(\tx_step_reg_n_0_[0] ),
        .I1(\tx_step_reg_n_0_[1] ),
        .I2(\tx_step_reg_n_0_[2] ),
        .I3(sda_i),
        .O(\state[3]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \state[4]_i_1 
       (.I0(scl_o_i_5_n_0),
        .I1(timeout_reg_5),
        .I2(\state_reg[4]_0 ),
        .O(state0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h40000002)) 
    \state[4]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[4]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF0EE)) 
    \state[4]_i_8 
       (.I0(nack_reg_0),
        .I1(timeout_reg_0),
        .I2(\sensor_id_reg[0] [1]),
        .I3(\sensor_id_reg[0] [0]),
        .O(nack_reg_2));
  FDCE \state_reg[0] 
       (.C(sys_clk50),
        .CE(state0),
        .CLR(sys_rst_n_2),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE \state_reg[1] 
       (.C(sys_clk50),
        .CE(state0),
        .CLR(sys_rst_n_2),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE \state_reg[2] 
       (.C(sys_clk50),
        .CE(state0),
        .CLR(sys_rst_n_2),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE \state_reg[3] 
       (.C(sys_clk50),
        .CE(state0),
        .CLR(sys_rst_n_1),
        .D(\state[3]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE \state_reg[4] 
       (.C(sys_clk50),
        .CE(state0),
        .CLR(sys_rst_n_1),
        .D(\state[4]_i_2_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  CARRY4 timeout_count0_carry
       (.CI(1'b0),
        .CO({timeout_count0_carry_n_0,timeout_count0_carry_n_1,timeout_count0_carry_n_2,timeout_count0_carry_n_3}),
        .CYINIT(\timeout_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[4:1]),
        .S({\timeout_count_reg_n_0_[4] ,\timeout_count_reg_n_0_[3] ,\timeout_count_reg_n_0_[2] ,\timeout_count_reg_n_0_[1] }));
  CARRY4 timeout_count0_carry__0
       (.CI(timeout_count0_carry_n_0),
        .CO({timeout_count0_carry__0_n_0,timeout_count0_carry__0_n_1,timeout_count0_carry__0_n_2,timeout_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[8:5]),
        .S({\timeout_count_reg_n_0_[8] ,\timeout_count_reg_n_0_[7] ,\timeout_count_reg_n_0_[6] ,\timeout_count_reg_n_0_[5] }));
  CARRY4 timeout_count0_carry__1
       (.CI(timeout_count0_carry__0_n_0),
        .CO({timeout_count0_carry__1_n_0,timeout_count0_carry__1_n_1,timeout_count0_carry__1_n_2,timeout_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[12:9]),
        .S({\timeout_count_reg_n_0_[12] ,\timeout_count_reg_n_0_[11] ,\timeout_count_reg_n_0_[10] ,\timeout_count_reg_n_0_[9] }));
  CARRY4 timeout_count0_carry__2
       (.CI(timeout_count0_carry__1_n_0),
        .CO({timeout_count0_carry__2_n_0,timeout_count0_carry__2_n_1,timeout_count0_carry__2_n_2,timeout_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[16:13]),
        .S({\timeout_count_reg_n_0_[16] ,\timeout_count_reg_n_0_[15] ,\timeout_count_reg_n_0_[14] ,\timeout_count_reg_n_0_[13] }));
  CARRY4 timeout_count0_carry__3
       (.CI(timeout_count0_carry__2_n_0),
        .CO({timeout_count0_carry__3_n_0,timeout_count0_carry__3_n_1,timeout_count0_carry__3_n_2,timeout_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[20:17]),
        .S({\timeout_count_reg_n_0_[20] ,\timeout_count_reg_n_0_[19] ,\timeout_count_reg_n_0_[18] ,\timeout_count_reg_n_0_[17] }));
  CARRY4 timeout_count0_carry__4
       (.CI(timeout_count0_carry__3_n_0),
        .CO({timeout_count0_carry__4_n_0,timeout_count0_carry__4_n_1,timeout_count0_carry__4_n_2,timeout_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[24:21]),
        .S({\timeout_count_reg_n_0_[24] ,\timeout_count_reg_n_0_[23] ,\timeout_count_reg_n_0_[22] ,\timeout_count_reg_n_0_[21] }));
  CARRY4 timeout_count0_carry__5
       (.CI(timeout_count0_carry__4_n_0),
        .CO({timeout_count0_carry__5_n_0,timeout_count0_carry__5_n_1,timeout_count0_carry__5_n_2,timeout_count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timeout_count0[28:25]),
        .S({\timeout_count_reg_n_0_[28] ,\timeout_count_reg_n_0_[27] ,\timeout_count_reg_n_0_[26] ,\timeout_count_reg_n_0_[25] }));
  CARRY4 timeout_count0_carry__6
       (.CI(timeout_count0_carry__5_n_0),
        .CO({NLW_timeout_count0_carry__6_CO_UNCONNECTED[3:2],timeout_count0_carry__6_n_2,timeout_count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timeout_count0_carry__6_O_UNCONNECTED[3],timeout_count0[31:29]}),
        .S({1'b0,\timeout_count_reg_n_0_[31] ,\timeout_count_reg_n_0_[30] ,\timeout_count_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \timeout_count[0]_i_1 
       (.I0(\timeout_count_reg_n_0_[0] ),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(\timeout_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[10]_i_1 
       (.I0(timeout_count0[10]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[11]_i_1 
       (.I0(timeout_count0[11]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[12]_i_1 
       (.I0(timeout_count0[12]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[12]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[13]_i_1 
       (.I0(timeout_count0[13]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[13]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[14]_i_1 
       (.I0(timeout_count0[14]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[14]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[15]_i_1 
       (.I0(timeout_count0[15]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[16]_i_1 
       (.I0(timeout_count0[16]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[16]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[17]_i_1 
       (.I0(timeout_count0[17]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[17]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[18]_i_1 
       (.I0(timeout_count0[18]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[18]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[19]_i_1 
       (.I0(timeout_count0[19]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[19]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[1]_i_1 
       (.I0(timeout_count0[1]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[20]_i_1 
       (.I0(timeout_count0[20]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[20]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[21]_i_1 
       (.I0(timeout_count0[21]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[21]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[22]_i_1 
       (.I0(timeout_count0[22]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[23]_i_1 
       (.I0(timeout_count0[23]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[24]_i_1 
       (.I0(timeout_count0[24]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[24]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[25]_i_1 
       (.I0(timeout_count0[25]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[25]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[26]_i_1 
       (.I0(timeout_count0[26]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[26]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[27]_i_1 
       (.I0(timeout_count0[27]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[27]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[28]_i_1 
       (.I0(timeout_count0[28]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[28]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[29]_i_1 
       (.I0(timeout_count0[29]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[29]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[2]_i_1 
       (.I0(timeout_count0[2]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[30]_i_1 
       (.I0(timeout_count0[30]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[30]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[31]_i_1 
       (.I0(timeout_count0[31]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[31]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[3]_i_1 
       (.I0(timeout_count0[3]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[4]_i_1 
       (.I0(timeout_count0[4]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[5]_i_1 
       (.I0(timeout_count0[5]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[6]_i_1 
       (.I0(timeout_count0[6]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[7]_i_1 
       (.I0(timeout_count0[7]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[8]_i_1 
       (.I0(timeout_count0[8]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_count[9]_i_1 
       (.I0(timeout_count0[9]),
        .I1(scl_o_i_4_n_0),
        .I2(scl_o_i_3_n_0),
        .O(timeout_count[9]));
  FDCE \timeout_count_reg[0] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(\timeout_count[0]_i_1_n_0 ),
        .Q(\timeout_count_reg_n_0_[0] ));
  FDCE \timeout_count_reg[10] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[10]),
        .Q(\timeout_count_reg_n_0_[10] ));
  FDCE \timeout_count_reg[11] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[11]),
        .Q(\timeout_count_reg_n_0_[11] ));
  FDCE \timeout_count_reg[12] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[12]),
        .Q(\timeout_count_reg_n_0_[12] ));
  FDCE \timeout_count_reg[13] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[13]),
        .Q(\timeout_count_reg_n_0_[13] ));
  FDCE \timeout_count_reg[14] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[14]),
        .Q(\timeout_count_reg_n_0_[14] ));
  FDCE \timeout_count_reg[15] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[15]),
        .Q(\timeout_count_reg_n_0_[15] ));
  FDCE \timeout_count_reg[16] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[16]),
        .Q(\timeout_count_reg_n_0_[16] ));
  FDCE \timeout_count_reg[17] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[17]),
        .Q(\timeout_count_reg_n_0_[17] ));
  FDCE \timeout_count_reg[18] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[18]),
        .Q(\timeout_count_reg_n_0_[18] ));
  FDCE \timeout_count_reg[19] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[19]),
        .Q(\timeout_count_reg_n_0_[19] ));
  FDCE \timeout_count_reg[1] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[1]),
        .Q(\timeout_count_reg_n_0_[1] ));
  FDCE \timeout_count_reg[20] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[20]),
        .Q(\timeout_count_reg_n_0_[20] ));
  FDCE \timeout_count_reg[21] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[21]),
        .Q(\timeout_count_reg_n_0_[21] ));
  FDCE \timeout_count_reg[22] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[22]),
        .Q(\timeout_count_reg_n_0_[22] ));
  FDCE \timeout_count_reg[23] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[23]),
        .Q(\timeout_count_reg_n_0_[23] ));
  FDCE \timeout_count_reg[24] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[24]),
        .Q(\timeout_count_reg_n_0_[24] ));
  FDCE \timeout_count_reg[25] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[25]),
        .Q(\timeout_count_reg_n_0_[25] ));
  FDCE \timeout_count_reg[26] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[26]),
        .Q(\timeout_count_reg_n_0_[26] ));
  FDCE \timeout_count_reg[27] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[27]),
        .Q(\timeout_count_reg_n_0_[27] ));
  FDCE \timeout_count_reg[28] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[28]),
        .Q(\timeout_count_reg_n_0_[28] ));
  FDCE \timeout_count_reg[29] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[29]),
        .Q(\timeout_count_reg_n_0_[29] ));
  FDCE \timeout_count_reg[2] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[2]),
        .Q(\timeout_count_reg_n_0_[2] ));
  FDCE \timeout_count_reg[30] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[30]),
        .Q(\timeout_count_reg_n_0_[30] ));
  FDCE \timeout_count_reg[31] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[31]),
        .Q(\timeout_count_reg_n_0_[31] ));
  FDCE \timeout_count_reg[3] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[3]),
        .Q(\timeout_count_reg_n_0_[3] ));
  FDCE \timeout_count_reg[4] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[4]),
        .Q(\timeout_count_reg_n_0_[4] ));
  FDCE \timeout_count_reg[5] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[5]),
        .Q(\timeout_count_reg_n_0_[5] ));
  FDCE \timeout_count_reg[6] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[6]),
        .Q(\timeout_count_reg_n_0_[6] ));
  FDCE \timeout_count_reg[7] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[7]),
        .Q(\timeout_count_reg_n_0_[7] ));
  FDCE \timeout_count_reg[8] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[8]),
        .Q(\timeout_count_reg_n_0_[8] ));
  FDCE \timeout_count_reg[9] 
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_1),
        .D(timeout_count[9]),
        .Q(\timeout_count_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFCAAFCFF00AA0000)) 
    timeout_i_1
       (.I0(timeout_i_2_n_0),
        .I1(rsp_valid_i_1_n_0),
        .I2(timeout_reg_5),
        .I3(scl_o_i_3_n_0),
        .I4(timeout_i_3_n_0),
        .I5(timeout_reg_0),
        .O(timeout_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000EEAEFFFFFFFF)) 
    timeout_i_2
       (.I0(scl_o_i_10_n_0),
        .I1(\timeout_count_reg_n_0_[22] ),
        .I2(timeout_i_4_n_0),
        .I3(scl_o_i_7_n_0),
        .I4(scl_o_i_6_n_0),
        .I5(\bit_index[2]_i_4_n_0 ),
        .O(timeout_i_2_n_0));
  LUT6 #(
    .INIT(64'h11111111F1F1FFF1)) 
    timeout_i_3
       (.I0(timeout_i_5_n_0),
        .I1(\bit_index[2]_i_4_n_0 ),
        .I2(scl_o_i_10_n_0),
        .I3(\timeout_count_reg_n_0_[22] ),
        .I4(scl_o_i_11_n_0),
        .I5(scl_o_i_6_n_0),
        .O(timeout_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111151)) 
    timeout_i_4
       (.I0(scl_o_i_13_n_0),
        .I1(\timeout_count_reg_n_0_[14] ),
        .I2(scl_o_i_16_n_0),
        .I3(\timeout_count_reg_n_0_[13] ),
        .I4(\timeout_count_reg_n_0_[12] ),
        .I5(scl_o_i_9_n_0),
        .O(timeout_i_4_n_0));
  LUT6 #(
    .INIT(64'h3333003633333336)) 
    timeout_i_5
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(timeout_i_6_n_0),
        .O(timeout_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    timeout_i_6
       (.I0(\tx_step_reg_n_0_[1] ),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(\tx_step_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(sda_i),
        .I5(\state_reg_n_0_[3] ),
        .O(timeout_i_6_n_0));
  FDCE timeout_reg
       (.C(sys_clk50),
        .CE(1'b1),
        .CLR(sys_rst_n_0),
        .D(timeout_i_1_n_0),
        .Q(timeout_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_shift[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\tx_shift[0]_i_2_n_0 ),
        .O(\tx_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \tx_shift[0]_i_2 
       (.I0(reg_addr_latched[8]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[0]),
        .I3(\tx_step_reg_n_0_[1] ),
        .I4(wr_data_latched[0]),
        .I5(\state_reg_n_0_[2] ),
        .O(\tx_shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \tx_shift[1]_i_1 
       (.I0(reg_addr_latched[1]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[9]),
        .I3(wr_data_latched[1]),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(\tx_shift[7]_i_2_n_0 ),
        .O(\tx_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \tx_shift[2]_i_1 
       (.I0(reg_addr_latched[2]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[10]),
        .I3(wr_data_latched[2]),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(\tx_shift[7]_i_2_n_0 ),
        .O(\tx_shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift[3]_i_1 
       (.I0(dev_addr_latched),
        .I1(\state_reg_n_0_[3] ),
        .I2(\tx_shift[3]_i_2_n_0 ),
        .O(\tx_shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF00FFB8FF)) 
    \tx_shift[3]_i_2 
       (.I0(reg_addr_latched[3]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[11]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(wr_data_latched[3]),
        .O(\tx_shift[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift[4]_i_1 
       (.I0(dev_addr_latched),
        .I1(\state_reg_n_0_[3] ),
        .I2(\tx_shift[4]_i_2_n_0 ),
        .O(\tx_shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF00FFB8FF)) 
    \tx_shift[4]_i_2 
       (.I0(reg_addr_latched[4]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[12]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(wr_data_latched[4]),
        .O(\tx_shift[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift[5]_i_1 
       (.I0(dev_addr_latched),
        .I1(\state_reg_n_0_[3] ),
        .I2(\tx_shift[5]_i_2_n_0 ),
        .O(\tx_shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF00FFB8FF)) 
    \tx_shift[5]_i_2 
       (.I0(reg_addr_latched[5]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[13]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(wr_data_latched[5]),
        .O(\tx_shift[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift[6]_i_1 
       (.I0(dev_addr_latched),
        .I1(\state_reg_n_0_[3] ),
        .I2(\tx_shift[6]_i_2_n_0 ),
        .O(\tx_shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF00FFB8FF)) 
    \tx_shift[6]_i_2 
       (.I0(reg_addr_latched[6]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[14]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(wr_data_latched[6]),
        .O(\tx_shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \tx_shift[7]_i_1 
       (.I0(reg_addr_latched[7]),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(reg_addr_latched[15]),
        .I3(\wr_data_latched_reg_n_0_[7] ),
        .I4(\tx_step_reg_n_0_[1] ),
        .I5(\tx_shift[7]_i_2_n_0 ),
        .O(\tx_shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_shift[7]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\tx_shift[7]_i_2_n_0 ));
  FDCE \tx_shift_reg[0] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[0]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[0] ));
  FDCE \tx_shift_reg[1] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[1]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[1] ));
  FDCE \tx_shift_reg[2] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[2]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[2] ));
  FDCE \tx_shift_reg[3] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[3]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[3] ));
  FDCE \tx_shift_reg[4] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[4]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[4] ));
  FDCE \tx_shift_reg[5] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[5]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[5] ));
  FDCE \tx_shift_reg[6] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[6]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[6] ));
  FDCE \tx_shift_reg[7] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\tx_shift[7]_i_1_n_0 ),
        .Q(\tx_shift_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_step[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\tx_step_reg_n_0_[0] ),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_step[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\tx_step_reg_n_0_[0] ),
        .I2(\tx_step_reg_n_0_[1] ),
        .O(p_0_out[1]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \tx_step[2]_i_1 
       (.I0(\wr_data_latched[7]_i_1_n_0 ),
        .I1(\tx_step[2]_i_2_n_0 ),
        .I2(scl_o_i_4_n_0),
        .I3(\bit_index[2]_i_4_n_0 ),
        .O(tx_step0));
  LUT6 #(
    .INIT(64'hFFEFFBEFFFFFFBEF)) 
    \tx_step[2]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\tx_step[2]_i_3_n_0 ),
        .I5(\state_reg_n_0_[3] ),
        .O(\tx_step[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFBFBFB)) 
    \tx_step[2]_i_3 
       (.I0(\tx_step[2]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\tx_step_reg_n_0_[2] ),
        .I3(\tx_step_reg_n_0_[1] ),
        .I4(cmd_read_latched),
        .I5(\tx_step_reg_n_0_[0] ),
        .O(\tx_step[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_step[2]_i_4 
       (.I0(sda_i),
        .I1(\state_reg_n_0_[3] ),
        .O(\tx_step[2]_i_4_n_0 ));
  FDCE \tx_step_reg[0] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(p_0_out[0]),
        .Q(\tx_step_reg_n_0_[0] ));
  FDCE \tx_step_reg[1] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(p_0_out[1]),
        .Q(\tx_step_reg_n_0_[1] ));
  FDCE \tx_step_reg[2] 
       (.C(sys_clk50),
        .CE(tx_step0),
        .CLR(sys_rst_n_2),
        .D(\state_reg_n_0_[3] ),
        .Q(\tx_step_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    u_sda_iobuf_i_1
       (.I0(sda_oe),
        .O(T0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \wait_count[31]_i_4 
       (.I0(timeout_reg_0),
        .I1(nack_reg_0),
        .I2(rsp_valid),
        .I3(\wait_count_reg[0] ),
        .O(timeout_reg_3));
  LUT3 #(
    .INIT(8'h7F)) 
    waiting_i_2
       (.I0(rsp_valid),
        .I1(waiting_reg),
        .I2(\wait_count_reg[0] ),
        .O(rsp_valid_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wr_data_latched[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(timeout_reg_5),
        .O(\wr_data_latched[7]_i_1_n_0 ));
  FDCE \wr_data_latched_reg[0] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[0]),
        .Q(wr_data_latched[0]));
  FDCE \wr_data_latched_reg[1] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[1]),
        .Q(wr_data_latched[1]));
  FDCE \wr_data_latched_reg[2] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[2]),
        .Q(wr_data_latched[2]));
  FDCE \wr_data_latched_reg[3] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[3]),
        .Q(wr_data_latched[3]));
  FDCE \wr_data_latched_reg[4] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[4]),
        .Q(wr_data_latched[4]));
  FDCE \wr_data_latched_reg[5] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[5]),
        .Q(wr_data_latched[5]));
  FDCE \wr_data_latched_reg[6] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[6]),
        .Q(wr_data_latched[6]));
  FDCE \wr_data_latched_reg[7] 
       (.C(sys_clk50),
        .CE(\wr_data_latched[7]_i_1_n_0 ),
        .CLR(sys_rst_n_2),
        .D(D[7]),
        .Q(\wr_data_latched_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "source_frame_verdict_cdc" *) 
module facebox_system_real_camera_source_0_0_source_frame_verdict_cdc
   (gray_tap_provenance_fault,
    gray_tap_verdict_valid,
    gray_tap_verdict_good,
    gray_tap_resetn,
    gray_tap_verdict_source_id,
    aclk,
    cam_pclk,
    aresetn,
    capture_axi_sync,
    overrun_reg_0,
    frame_done,
    out,
    \dst_release_reg[1]_0 ,
    D);
  output gray_tap_provenance_fault;
  output gray_tap_verdict_valid;
  output gray_tap_verdict_good;
  output gray_tap_resetn;
  output [31:0]gray_tap_verdict_source_id;
  input aclk;
  input cam_pclk;
  input aresetn;
  input capture_axi_sync;
  input overrun_reg_0;
  input frame_done;
  input out;
  input \dst_release_reg[1]_0 ;
  input [32:0]D;

  wire [32:0]D;
  wire ack;
  wire ack0;
  (* async_reg = "true" *) wire ack_s1;
  wire ack_s1_i_1_n_0;
  (* async_reg = "true" *) wire ack_s2;
  wire aclk;
  wire aresetn;
  wire bundle;
  wire \bundle_reg_n_0_[0] ;
  wire \bundle_reg_n_0_[10] ;
  wire \bundle_reg_n_0_[11] ;
  wire \bundle_reg_n_0_[12] ;
  wire \bundle_reg_n_0_[13] ;
  wire \bundle_reg_n_0_[14] ;
  wire \bundle_reg_n_0_[15] ;
  wire \bundle_reg_n_0_[16] ;
  wire \bundle_reg_n_0_[17] ;
  wire \bundle_reg_n_0_[18] ;
  wire \bundle_reg_n_0_[19] ;
  wire \bundle_reg_n_0_[1] ;
  wire \bundle_reg_n_0_[20] ;
  wire \bundle_reg_n_0_[21] ;
  wire \bundle_reg_n_0_[22] ;
  wire \bundle_reg_n_0_[23] ;
  wire \bundle_reg_n_0_[24] ;
  wire \bundle_reg_n_0_[25] ;
  wire \bundle_reg_n_0_[26] ;
  wire \bundle_reg_n_0_[27] ;
  wire \bundle_reg_n_0_[28] ;
  wire \bundle_reg_n_0_[29] ;
  wire \bundle_reg_n_0_[2] ;
  wire \bundle_reg_n_0_[30] ;
  wire \bundle_reg_n_0_[31] ;
  wire \bundle_reg_n_0_[32] ;
  wire \bundle_reg_n_0_[3] ;
  wire \bundle_reg_n_0_[4] ;
  wire \bundle_reg_n_0_[5] ;
  wire \bundle_reg_n_0_[6] ;
  wire \bundle_reg_n_0_[7] ;
  wire \bundle_reg_n_0_[8] ;
  wire \bundle_reg_n_0_[9] ;
  wire cam_pclk;
  wire capture_axi_sync;
  wire \dst_id[31]_i_2_n_0 ;
  (* async_reg = "true" *) wire [1:0]dst_release;
  wire \dst_release_reg[1]_0 ;
  (* async_reg = "true" *) wire fault_s1;
  (* async_reg = "true" *) wire fault_s2;
  wire frame_done;
  wire gray_tap_resetn;
  wire gray_tap_verdict_good;
  wire [31:0]gray_tap_verdict_source_id;
  wire gray_tap_verdict_valid;
  wire out;
  wire overrun_i_1_n_0;
  wire overrun_reg_0;
  wire overrun_reg_n_0;
  wire req_i_1_n_0;
  wire req_reg_n_0;
  (* async_reg = "true" *) wire req_s1;
  (* async_reg = "true" *) wire req_s2;
  (* async_reg = "true" *) wire [1:0]src_release;
  wire \src_release[1]_i_1_n_0 ;

  assign gray_tap_provenance_fault = fault_s2;
  FDCE ack_reg
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(req_s2),
        .Q(ack));
  LUT1 #(
    .INIT(2'h1)) 
    ack_s1_i_1
       (.I0(src_release[1]),
        .O(ack_s1_i_1_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE ack_s1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(ack_s1_i_1_n_0),
        .D(ack),
        .Q(ack_s1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE ack_s2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(ack_s1_i_1_n_0),
        .D(ack_s1),
        .Q(ack_s2));
  LUT6 #(
    .INIT(64'h4100000000000000)) 
    \bundle[32]_i_1 
       (.I0(overrun_reg_n_0),
        .I1(ack_s2),
        .I2(req_reg_n_0),
        .I3(src_release[1]),
        .I4(overrun_reg_0),
        .I5(frame_done),
        .O(bundle));
  FDCE \bundle_reg[0] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[0]),
        .Q(\bundle_reg_n_0_[0] ));
  FDCE \bundle_reg[10] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[10]),
        .Q(\bundle_reg_n_0_[10] ));
  FDCE \bundle_reg[11] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[11]),
        .Q(\bundle_reg_n_0_[11] ));
  FDCE \bundle_reg[12] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[12]),
        .Q(\bundle_reg_n_0_[12] ));
  FDCE \bundle_reg[13] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[13]),
        .Q(\bundle_reg_n_0_[13] ));
  FDCE \bundle_reg[14] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[14]),
        .Q(\bundle_reg_n_0_[14] ));
  FDCE \bundle_reg[15] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[15]),
        .Q(\bundle_reg_n_0_[15] ));
  FDCE \bundle_reg[16] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[16]),
        .Q(\bundle_reg_n_0_[16] ));
  FDCE \bundle_reg[17] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[17]),
        .Q(\bundle_reg_n_0_[17] ));
  FDCE \bundle_reg[18] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[18]),
        .Q(\bundle_reg_n_0_[18] ));
  FDCE \bundle_reg[19] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[19]),
        .Q(\bundle_reg_n_0_[19] ));
  FDCE \bundle_reg[1] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[1]),
        .Q(\bundle_reg_n_0_[1] ));
  FDCE \bundle_reg[20] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[20]),
        .Q(\bundle_reg_n_0_[20] ));
  FDCE \bundle_reg[21] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[21]),
        .Q(\bundle_reg_n_0_[21] ));
  FDCE \bundle_reg[22] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[22]),
        .Q(\bundle_reg_n_0_[22] ));
  FDCE \bundle_reg[23] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[23]),
        .Q(\bundle_reg_n_0_[23] ));
  FDCE \bundle_reg[24] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[24]),
        .Q(\bundle_reg_n_0_[24] ));
  FDCE \bundle_reg[25] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[25]),
        .Q(\bundle_reg_n_0_[25] ));
  FDCE \bundle_reg[26] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[26]),
        .Q(\bundle_reg_n_0_[26] ));
  FDCE \bundle_reg[27] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[27]),
        .Q(\bundle_reg_n_0_[27] ));
  FDCE \bundle_reg[28] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[28]),
        .Q(\bundle_reg_n_0_[28] ));
  FDCE \bundle_reg[29] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[29]),
        .Q(\bundle_reg_n_0_[29] ));
  FDCE \bundle_reg[2] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[2]),
        .Q(\bundle_reg_n_0_[2] ));
  FDCE \bundle_reg[30] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[30]),
        .Q(\bundle_reg_n_0_[30] ));
  FDCE \bundle_reg[31] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[31]),
        .Q(\bundle_reg_n_0_[31] ));
  FDCE \bundle_reg[32] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[32]),
        .Q(\bundle_reg_n_0_[32] ));
  FDCE \bundle_reg[3] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[3]),
        .Q(\bundle_reg_n_0_[3] ));
  FDCE \bundle_reg[4] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[4]),
        .Q(\bundle_reg_n_0_[4] ));
  FDCE \bundle_reg[5] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[5]),
        .Q(\bundle_reg_n_0_[5] ));
  FDCE \bundle_reg[6] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[6]),
        .Q(\bundle_reg_n_0_[6] ));
  FDCE \bundle_reg[7] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[7]),
        .Q(\bundle_reg_n_0_[7] ));
  FDCE \bundle_reg[8] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[8]),
        .Q(\bundle_reg_n_0_[8] ));
  FDCE \bundle_reg[9] 
       (.C(cam_pclk),
        .CE(bundle),
        .CLR(ack_s1_i_1_n_0),
        .D(D[9]),
        .Q(\bundle_reg_n_0_[9] ));
  FDCE dst_good_reg
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[32] ),
        .Q(gray_tap_verdict_good));
  LUT3 #(
    .INIT(8'h06)) 
    \dst_id[31]_i_1 
       (.I0(req_s2),
        .I1(ack),
        .I2(fault_s2),
        .O(ack0));
  LUT1 #(
    .INIT(2'h1)) 
    \dst_id[31]_i_2 
       (.I0(dst_release[1]),
        .O(\dst_id[31]_i_2_n_0 ));
  FDCE \dst_id_reg[0] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[0] ),
        .Q(gray_tap_verdict_source_id[0]));
  FDCE \dst_id_reg[10] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[10] ),
        .Q(gray_tap_verdict_source_id[10]));
  FDCE \dst_id_reg[11] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[11] ),
        .Q(gray_tap_verdict_source_id[11]));
  FDCE \dst_id_reg[12] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[12] ),
        .Q(gray_tap_verdict_source_id[12]));
  FDCE \dst_id_reg[13] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[13] ),
        .Q(gray_tap_verdict_source_id[13]));
  FDCE \dst_id_reg[14] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[14] ),
        .Q(gray_tap_verdict_source_id[14]));
  FDCE \dst_id_reg[15] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[15] ),
        .Q(gray_tap_verdict_source_id[15]));
  FDCE \dst_id_reg[16] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[16] ),
        .Q(gray_tap_verdict_source_id[16]));
  FDCE \dst_id_reg[17] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[17] ),
        .Q(gray_tap_verdict_source_id[17]));
  FDCE \dst_id_reg[18] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[18] ),
        .Q(gray_tap_verdict_source_id[18]));
  FDCE \dst_id_reg[19] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[19] ),
        .Q(gray_tap_verdict_source_id[19]));
  FDCE \dst_id_reg[1] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[1] ),
        .Q(gray_tap_verdict_source_id[1]));
  FDCE \dst_id_reg[20] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[20] ),
        .Q(gray_tap_verdict_source_id[20]));
  FDCE \dst_id_reg[21] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[21] ),
        .Q(gray_tap_verdict_source_id[21]));
  FDCE \dst_id_reg[22] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[22] ),
        .Q(gray_tap_verdict_source_id[22]));
  FDCE \dst_id_reg[23] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[23] ),
        .Q(gray_tap_verdict_source_id[23]));
  FDCE \dst_id_reg[24] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[24] ),
        .Q(gray_tap_verdict_source_id[24]));
  FDCE \dst_id_reg[25] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[25] ),
        .Q(gray_tap_verdict_source_id[25]));
  FDCE \dst_id_reg[26] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[26] ),
        .Q(gray_tap_verdict_source_id[26]));
  FDCE \dst_id_reg[27] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[27] ),
        .Q(gray_tap_verdict_source_id[27]));
  FDCE \dst_id_reg[28] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[28] ),
        .Q(gray_tap_verdict_source_id[28]));
  FDCE \dst_id_reg[29] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[29] ),
        .Q(gray_tap_verdict_source_id[29]));
  FDCE \dst_id_reg[2] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[2] ),
        .Q(gray_tap_verdict_source_id[2]));
  FDCE \dst_id_reg[30] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[30] ),
        .Q(gray_tap_verdict_source_id[30]));
  FDCE \dst_id_reg[31] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[31] ),
        .Q(gray_tap_verdict_source_id[31]));
  FDCE \dst_id_reg[3] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[3] ),
        .Q(gray_tap_verdict_source_id[3]));
  FDCE \dst_id_reg[4] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[4] ),
        .Q(gray_tap_verdict_source_id[4]));
  FDCE \dst_id_reg[5] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[5] ),
        .Q(gray_tap_verdict_source_id[5]));
  FDCE \dst_id_reg[6] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[6] ),
        .Q(gray_tap_verdict_source_id[6]));
  FDCE \dst_id_reg[7] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[7] ),
        .Q(gray_tap_verdict_source_id[7]));
  FDCE \dst_id_reg[8] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[8] ),
        .Q(gray_tap_verdict_source_id[8]));
  FDCE \dst_id_reg[9] 
       (.C(aclk),
        .CE(ack0),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(\bundle_reg_n_0_[9] ),
        .Q(gray_tap_verdict_source_id[9]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \dst_release_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\src_release[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(dst_release[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \dst_release_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\src_release[1]_i_1_n_0 ),
        .D(dst_release[0]),
        .Q(dst_release[1]));
  FDCE dst_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(ack0),
        .Q(gray_tap_verdict_valid));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE fault_s1_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(overrun_reg_n_0),
        .Q(fault_s1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE fault_s2_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(fault_s1),
        .Q(fault_s2));
  LUT3 #(
    .INIT(8'h80)) 
    gray_tap_resetn_INST_0
       (.I0(dst_release[1]),
        .I1(aresetn),
        .I2(capture_axi_sync),
        .O(gray_tap_resetn));
  LUT6 #(
    .INIT(64'hBEFFAAAAAAAAAAAA)) 
    overrun_i_1
       (.I0(overrun_reg_n_0),
        .I1(ack_s2),
        .I2(req_reg_n_0),
        .I3(src_release[1]),
        .I4(overrun_reg_0),
        .I5(frame_done),
        .O(overrun_i_1_n_0));
  FDCE overrun_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(ack_s1_i_1_n_0),
        .D(overrun_i_1_n_0),
        .Q(overrun_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000080)) 
    req_i_1
       (.I0(frame_done),
        .I1(overrun_reg_0),
        .I2(src_release[1]),
        .I3(ack_s2),
        .I4(overrun_reg_n_0),
        .I5(req_reg_n_0),
        .O(req_i_1_n_0));
  FDCE req_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(ack_s1_i_1_n_0),
        .D(req_i_1_n_0),
        .Q(req_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE req_s1_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(req_reg_n_0),
        .Q(req_s1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE req_s2_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\dst_id[31]_i_2_n_0 ),
        .D(req_s1),
        .Q(req_s2));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \src_release[1]_i_1 
       (.I0(aresetn),
        .I1(capture_axi_sync),
        .I2(out),
        .I3(\dst_release_reg[1]_0 ),
        .O(\src_release[1]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \src_release_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\src_release[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(src_release[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \src_release_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\src_release[1]_i_1_n_0 ),
        .D(src_release[0]),
        .Q(src_release[1]));
endmodule

(* ORIG_REF_NAME = "toggle_event_cdc" *) 
module facebox_system_real_camera_source_0_0_toggle_event_cdc
   (dst_pulse_reg_0,
    dst_ack_toggle,
    gray_done,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg ,
    E,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ,
    dst_pulse_reg_1,
    \y_count_reg[0] ,
    x_count0,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_0 ,
    dst_pulse_reg_2,
    abort_req_toggle,
    aclk,
    dst_pulse_reg_3,
    rgb_done_reg,
    rgb_started_reg,
    m_axis_tuser,
    m_axis_tvalid,
    rgb_done_reg_0,
    \rgb_line_count_reg[0] ,
    m_axis_tvalid_0,
    m_axis_tvalid_1,
    \gray_line_count_reg[0] ,
    m_tuser_reg,
    \y_count_reg[8] ,
    m_tuser_reg_0,
    m_tuser_reg_1,
    \y_count_reg[8]_0 ,
    \y_count_reg[8]_1 ,
    abort_recovery_done_pulse,
    abort_recovery_required_reg);
  output dst_pulse_reg_0;
  output dst_ack_toggle;
  output gray_done;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  output [0:0]E;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  output [0:0]dst_pulse_reg_1;
  output [0:0]\y_count_reg[0] ;
  output x_count0;
  output [0:0]\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ;
  output [0:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  output dst_pulse_reg_2;
  input abort_req_toggle;
  input aclk;
  input dst_pulse_reg_3;
  input rgb_done_reg;
  input rgb_started_reg;
  input [0:0]m_axis_tuser;
  input m_axis_tvalid;
  input rgb_done_reg_0;
  input \rgb_line_count_reg[0] ;
  input m_axis_tvalid_0;
  input m_axis_tvalid_1;
  input \gray_line_count_reg[0] ;
  input [0:0]m_tuser_reg;
  input [0:0]\y_count_reg[8] ;
  input [0:0]m_tuser_reg_0;
  input m_tuser_reg_1;
  input \y_count_reg[8]_0 ;
  input \y_count_reg[8]_1 ;
  input abort_recovery_done_pulse;
  input abort_recovery_required_reg;

  wire [0:0]E;
  wire abort_recovery_done_pulse;
  wire abort_recovery_required_reg;
  wire abort_req_toggle;
  wire aclk;
  wire dst_ack_toggle;
  wire dst_pulse_i_1_n_0;
  wire dst_pulse_reg_0;
  wire [0:0]dst_pulse_reg_1;
  wire dst_pulse_reg_2;
  wire dst_pulse_reg_3;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  wire [0:0]\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ;
  wire [0:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  wire gray_done;
  wire \gray_line_count_reg[0] ;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire m_axis_tvalid_0;
  wire m_axis_tvalid_1;
  wire \m_tdata[7]_i_3_n_0 ;
  wire [0:0]m_tuser_reg;
  wire [0:0]m_tuser_reg_0;
  wire m_tuser_reg_1;
  wire rgb_done_reg;
  wire rgb_done_reg_0;
  wire \rgb_line_count_reg[0] ;
  wire rgb_started_reg;
  (* async_reg = "true" *) wire toggle_sync_1;
  (* async_reg = "true" *) wire toggle_sync_2;
  wire x_count0;
  wire [0:0]\y_count_reg[0] ;
  wire [0:0]\y_count_reg[8] ;
  wire \y_count_reg[8]_0 ;
  wire \y_count_reg[8]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    abort_recovery_required_i_1
       (.I0(dst_pulse_reg_0),
        .I1(abort_recovery_done_pulse),
        .I2(abort_recovery_required_reg),
        .O(dst_pulse_reg_2));
  LUT2 #(
    .INIT(4'h6)) 
    dst_pulse_i_1
       (.I0(dst_ack_toggle),
        .I1(toggle_sync_2),
        .O(dst_pulse_i_1_n_0));
  FDCE dst_pulse_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(dst_pulse_reg_3),
        .D(dst_pulse_i_1_n_0),
        .Q(dst_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    frame_active_i_2
       (.I0(m_axis_tvalid),
        .I1(m_axis_tuser),
        .I2(dst_pulse_reg_0),
        .I3(rgb_started_reg),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg ));
  LUT6 #(
    .INIT(64'hFEFAFAFAFFFFFFFF)) 
    gray_done_i_2
       (.I0(rgb_done_reg),
        .I1(rgb_started_reg),
        .I2(dst_pulse_reg_0),
        .I3(m_axis_tuser),
        .I4(m_axis_tvalid),
        .I5(rgb_done_reg_0),
        .O(gray_done));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gray_line_count[7]_i_1 
       (.I0(dst_pulse_reg_0),
        .I1(\gray_line_count_reg[0] ),
        .O(dst_pulse_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \left_column_sum[8]_i_1 
       (.I0(x_count0),
        .I1(m_tuser_reg),
        .I2(\y_count_reg[8] ),
        .I3(m_tuser_reg_0),
        .O(\y_count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m8_source_id[31]_i_1 
       (.I0(\y_count_reg[8] ),
        .I1(x_count0),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0 ));
  LUT5 #(
    .INIT(32'h04000404)) 
    m_axis_tvalid_INST_0
       (.I0(m_axis_tvalid_0),
        .I1(m_axis_tvalid),
        .I2(dst_pulse_reg_0),
        .I3(m_axis_tuser),
        .I4(m_axis_tvalid_1),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \m_tdata[7]_i_1 
       (.I0(\m_tdata[7]_i_3_n_0 ),
        .I1(m_tuser_reg_1),
        .I2(\y_count_reg[8]_0 ),
        .I3(m_tuser_reg),
        .I4(\y_count_reg[8] ),
        .I5(m_tuser_reg_0),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_tdata[7]_i_3 
       (.I0(dst_pulse_reg_0),
        .I1(\y_count_reg[8] ),
        .I2(\y_count_reg[8]_1 ),
        .O(\m_tdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rgb_line_count[8]_i_1 
       (.I0(dst_pulse_reg_0),
        .I1(\rgb_line_count_reg[0] ),
        .O(E));
  FDCE toggle_seen_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(dst_pulse_reg_3),
        .D(toggle_sync_2),
        .Q(dst_ack_toggle));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE toggle_sync_1_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(dst_pulse_reg_3),
        .D(abort_req_toggle),
        .Q(toggle_sync_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE toggle_sync_2_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(dst_pulse_reg_3),
        .D(toggle_sync_1),
        .Q(toggle_sync_2));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT5 #(
    .INIT(32'h08000808)) 
    \y_count[8]_i_1 
       (.I0(\y_count_reg[8]_0 ),
        .I1(m_tuser_reg_1),
        .I2(dst_pulse_reg_0),
        .I3(\y_count_reg[8] ),
        .I4(\y_count_reg[8]_1 ),
        .O(x_count0));
endmodule

(* ORIG_REF_NAME = "triple_buffer_commit_manager" *) 
module facebox_system_real_camera_source_0_0_triple_buffer_commit_manager
   (aresetn_0,
    gray_tap_commit,
    gray_tap_frame_id,
    frame_active_reg_0,
    abort_recovery_required_reg_0,
    status,
    gray_done_reg_0,
    m_axis_tready_0,
    rgb_done_reg_0,
    aclk,
    abort_recovery_required_reg_1,
    rgb_started_reg_0,
    rgb_started_reg_1,
    m_axis_tready,
    frame_active_reg_1,
    completed_buffer_valid_reg_0,
    completed_buffer_valid_reg_1,
    aresetn,
    capture_axi_sync,
    gray_done);
  output aresetn_0;
  output gray_tap_commit;
  output [31:0]gray_tap_frame_id;
  output frame_active_reg_0;
  output abort_recovery_required_reg_0;
  output [0:0]status;
  output gray_done_reg_0;
  output m_axis_tready_0;
  output rgb_done_reg_0;
  input aclk;
  input abort_recovery_required_reg_1;
  input rgb_started_reg_0;
  input rgb_started_reg_1;
  input m_axis_tready;
  input frame_active_reg_1;
  input completed_buffer_valid_reg_0;
  input completed_buffer_valid_reg_1;
  input aresetn;
  input capture_axi_sync;
  input gray_done;

  wire abort_recovery_required_reg_0;
  wire abort_recovery_required_reg_1;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire capture_axi_sync;
  wire \committed_frame_id[3]_i_2_n_0 ;
  wire \committed_frame_id_reg[11]_i_1_n_0 ;
  wire \committed_frame_id_reg[11]_i_1_n_1 ;
  wire \committed_frame_id_reg[11]_i_1_n_2 ;
  wire \committed_frame_id_reg[11]_i_1_n_3 ;
  wire \committed_frame_id_reg[11]_i_1_n_4 ;
  wire \committed_frame_id_reg[11]_i_1_n_5 ;
  wire \committed_frame_id_reg[11]_i_1_n_6 ;
  wire \committed_frame_id_reg[11]_i_1_n_7 ;
  wire \committed_frame_id_reg[15]_i_1_n_0 ;
  wire \committed_frame_id_reg[15]_i_1_n_1 ;
  wire \committed_frame_id_reg[15]_i_1_n_2 ;
  wire \committed_frame_id_reg[15]_i_1_n_3 ;
  wire \committed_frame_id_reg[15]_i_1_n_4 ;
  wire \committed_frame_id_reg[15]_i_1_n_5 ;
  wire \committed_frame_id_reg[15]_i_1_n_6 ;
  wire \committed_frame_id_reg[15]_i_1_n_7 ;
  wire \committed_frame_id_reg[19]_i_1_n_0 ;
  wire \committed_frame_id_reg[19]_i_1_n_1 ;
  wire \committed_frame_id_reg[19]_i_1_n_2 ;
  wire \committed_frame_id_reg[19]_i_1_n_3 ;
  wire \committed_frame_id_reg[19]_i_1_n_4 ;
  wire \committed_frame_id_reg[19]_i_1_n_5 ;
  wire \committed_frame_id_reg[19]_i_1_n_6 ;
  wire \committed_frame_id_reg[19]_i_1_n_7 ;
  wire \committed_frame_id_reg[23]_i_1_n_0 ;
  wire \committed_frame_id_reg[23]_i_1_n_1 ;
  wire \committed_frame_id_reg[23]_i_1_n_2 ;
  wire \committed_frame_id_reg[23]_i_1_n_3 ;
  wire \committed_frame_id_reg[23]_i_1_n_4 ;
  wire \committed_frame_id_reg[23]_i_1_n_5 ;
  wire \committed_frame_id_reg[23]_i_1_n_6 ;
  wire \committed_frame_id_reg[23]_i_1_n_7 ;
  wire \committed_frame_id_reg[27]_i_1_n_0 ;
  wire \committed_frame_id_reg[27]_i_1_n_1 ;
  wire \committed_frame_id_reg[27]_i_1_n_2 ;
  wire \committed_frame_id_reg[27]_i_1_n_3 ;
  wire \committed_frame_id_reg[27]_i_1_n_4 ;
  wire \committed_frame_id_reg[27]_i_1_n_5 ;
  wire \committed_frame_id_reg[27]_i_1_n_6 ;
  wire \committed_frame_id_reg[27]_i_1_n_7 ;
  wire \committed_frame_id_reg[31]_i_1_n_1 ;
  wire \committed_frame_id_reg[31]_i_1_n_2 ;
  wire \committed_frame_id_reg[31]_i_1_n_3 ;
  wire \committed_frame_id_reg[31]_i_1_n_4 ;
  wire \committed_frame_id_reg[31]_i_1_n_5 ;
  wire \committed_frame_id_reg[31]_i_1_n_6 ;
  wire \committed_frame_id_reg[31]_i_1_n_7 ;
  wire \committed_frame_id_reg[3]_i_1_n_0 ;
  wire \committed_frame_id_reg[3]_i_1_n_1 ;
  wire \committed_frame_id_reg[3]_i_1_n_2 ;
  wire \committed_frame_id_reg[3]_i_1_n_3 ;
  wire \committed_frame_id_reg[3]_i_1_n_4 ;
  wire \committed_frame_id_reg[3]_i_1_n_5 ;
  wire \committed_frame_id_reg[3]_i_1_n_6 ;
  wire \committed_frame_id_reg[3]_i_1_n_7 ;
  wire \committed_frame_id_reg[7]_i_1_n_0 ;
  wire \committed_frame_id_reg[7]_i_1_n_1 ;
  wire \committed_frame_id_reg[7]_i_1_n_2 ;
  wire \committed_frame_id_reg[7]_i_1_n_3 ;
  wire \committed_frame_id_reg[7]_i_1_n_4 ;
  wire \committed_frame_id_reg[7]_i_1_n_5 ;
  wire \committed_frame_id_reg[7]_i_1_n_6 ;
  wire \committed_frame_id_reg[7]_i_1_n_7 ;
  wire \completed_buffer_index_reg_n_0_[0] ;
  wire completed_buffer_valid_reg_0;
  wire completed_buffer_valid_reg_1;
  wire completed_buffer_valid_reg_n_0;
  wire frame_active_i_1_n_0;
  wire frame_active_reg_0;
  wire frame_active_reg_1;
  wire frame_commit_pulse_i_1_n_0;
  wire gray_done;
  wire gray_done_i_1_n_0;
  wire gray_done_reg_0;
  wire gray_done_reg_n_0;
  wire gray_started_i_1_n_0;
  wire gray_started_reg_n_0;
  wire gray_tap_commit;
  wire [31:0]gray_tap_frame_id;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire m_axis_tvalid_INST_0_i_2_n_0;
  wire protocol_error_sticky_i_1_n_0;
  wire protocol_error_sticky_i_3_n_0;
  wire protocol_error_sticky_i_4_n_0;
  wire rgb_done_i_1_n_0;
  wire rgb_done_reg_0;
  wire rgb_done_reg_n_0;
  wire rgb_started_i_1_n_0;
  wire rgb_started_reg_0;
  wire rgb_started_reg_1;
  wire rgb_started_reg_n_0;
  wire [0:0]status;
  wire writer_slot_valid;
  wire writer_slot_valid1;
  wire writer_slot_valid_i_1_n_0;
  wire \writing_buffer_index[0]_i_1_n_0 ;
  wire \writing_buffer_index_reg_n_0_[0] ;
  wire [3:3]\NLW_committed_frame_id_reg[31]_i_1_CO_UNCONNECTED ;

  FDCE abort_recovery_required_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(abort_recovery_required_reg_1),
        .Q(abort_recovery_required_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \committed_frame_id[3]_i_2 
       (.I0(gray_tap_frame_id[0]),
        .O(\committed_frame_id[3]_i_2_n_0 ));
  FDCE \committed_frame_id_reg[0] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[3]_i_1_n_7 ),
        .Q(gray_tap_frame_id[0]));
  FDCE \committed_frame_id_reg[10] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[11]_i_1_n_5 ),
        .Q(gray_tap_frame_id[10]));
  FDCE \committed_frame_id_reg[11] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[11]_i_1_n_4 ),
        .Q(gray_tap_frame_id[11]));
  CARRY4 \committed_frame_id_reg[11]_i_1 
       (.CI(\committed_frame_id_reg[7]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[11]_i_1_n_0 ,\committed_frame_id_reg[11]_i_1_n_1 ,\committed_frame_id_reg[11]_i_1_n_2 ,\committed_frame_id_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[11]_i_1_n_4 ,\committed_frame_id_reg[11]_i_1_n_5 ,\committed_frame_id_reg[11]_i_1_n_6 ,\committed_frame_id_reg[11]_i_1_n_7 }),
        .S(gray_tap_frame_id[11:8]));
  FDCE \committed_frame_id_reg[12] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[15]_i_1_n_7 ),
        .Q(gray_tap_frame_id[12]));
  FDCE \committed_frame_id_reg[13] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[15]_i_1_n_6 ),
        .Q(gray_tap_frame_id[13]));
  FDCE \committed_frame_id_reg[14] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[15]_i_1_n_5 ),
        .Q(gray_tap_frame_id[14]));
  FDCE \committed_frame_id_reg[15] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[15]_i_1_n_4 ),
        .Q(gray_tap_frame_id[15]));
  CARRY4 \committed_frame_id_reg[15]_i_1 
       (.CI(\committed_frame_id_reg[11]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[15]_i_1_n_0 ,\committed_frame_id_reg[15]_i_1_n_1 ,\committed_frame_id_reg[15]_i_1_n_2 ,\committed_frame_id_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[15]_i_1_n_4 ,\committed_frame_id_reg[15]_i_1_n_5 ,\committed_frame_id_reg[15]_i_1_n_6 ,\committed_frame_id_reg[15]_i_1_n_7 }),
        .S(gray_tap_frame_id[15:12]));
  FDCE \committed_frame_id_reg[16] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[19]_i_1_n_7 ),
        .Q(gray_tap_frame_id[16]));
  FDCE \committed_frame_id_reg[17] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[19]_i_1_n_6 ),
        .Q(gray_tap_frame_id[17]));
  FDCE \committed_frame_id_reg[18] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[19]_i_1_n_5 ),
        .Q(gray_tap_frame_id[18]));
  FDCE \committed_frame_id_reg[19] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[19]_i_1_n_4 ),
        .Q(gray_tap_frame_id[19]));
  CARRY4 \committed_frame_id_reg[19]_i_1 
       (.CI(\committed_frame_id_reg[15]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[19]_i_1_n_0 ,\committed_frame_id_reg[19]_i_1_n_1 ,\committed_frame_id_reg[19]_i_1_n_2 ,\committed_frame_id_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[19]_i_1_n_4 ,\committed_frame_id_reg[19]_i_1_n_5 ,\committed_frame_id_reg[19]_i_1_n_6 ,\committed_frame_id_reg[19]_i_1_n_7 }),
        .S(gray_tap_frame_id[19:16]));
  FDCE \committed_frame_id_reg[1] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[3]_i_1_n_6 ),
        .Q(gray_tap_frame_id[1]));
  FDCE \committed_frame_id_reg[20] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[23]_i_1_n_7 ),
        .Q(gray_tap_frame_id[20]));
  FDCE \committed_frame_id_reg[21] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[23]_i_1_n_6 ),
        .Q(gray_tap_frame_id[21]));
  FDCE \committed_frame_id_reg[22] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[23]_i_1_n_5 ),
        .Q(gray_tap_frame_id[22]));
  FDCE \committed_frame_id_reg[23] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[23]_i_1_n_4 ),
        .Q(gray_tap_frame_id[23]));
  CARRY4 \committed_frame_id_reg[23]_i_1 
       (.CI(\committed_frame_id_reg[19]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[23]_i_1_n_0 ,\committed_frame_id_reg[23]_i_1_n_1 ,\committed_frame_id_reg[23]_i_1_n_2 ,\committed_frame_id_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[23]_i_1_n_4 ,\committed_frame_id_reg[23]_i_1_n_5 ,\committed_frame_id_reg[23]_i_1_n_6 ,\committed_frame_id_reg[23]_i_1_n_7 }),
        .S(gray_tap_frame_id[23:20]));
  FDCE \committed_frame_id_reg[24] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[27]_i_1_n_7 ),
        .Q(gray_tap_frame_id[24]));
  FDCE \committed_frame_id_reg[25] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[27]_i_1_n_6 ),
        .Q(gray_tap_frame_id[25]));
  FDCE \committed_frame_id_reg[26] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[27]_i_1_n_5 ),
        .Q(gray_tap_frame_id[26]));
  FDCE \committed_frame_id_reg[27] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[27]_i_1_n_4 ),
        .Q(gray_tap_frame_id[27]));
  CARRY4 \committed_frame_id_reg[27]_i_1 
       (.CI(\committed_frame_id_reg[23]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[27]_i_1_n_0 ,\committed_frame_id_reg[27]_i_1_n_1 ,\committed_frame_id_reg[27]_i_1_n_2 ,\committed_frame_id_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[27]_i_1_n_4 ,\committed_frame_id_reg[27]_i_1_n_5 ,\committed_frame_id_reg[27]_i_1_n_6 ,\committed_frame_id_reg[27]_i_1_n_7 }),
        .S(gray_tap_frame_id[27:24]));
  FDCE \committed_frame_id_reg[28] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[31]_i_1_n_7 ),
        .Q(gray_tap_frame_id[28]));
  FDCE \committed_frame_id_reg[29] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[31]_i_1_n_6 ),
        .Q(gray_tap_frame_id[29]));
  FDCE \committed_frame_id_reg[2] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[3]_i_1_n_5 ),
        .Q(gray_tap_frame_id[2]));
  FDCE \committed_frame_id_reg[30] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[31]_i_1_n_5 ),
        .Q(gray_tap_frame_id[30]));
  FDCE \committed_frame_id_reg[31] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[31]_i_1_n_4 ),
        .Q(gray_tap_frame_id[31]));
  CARRY4 \committed_frame_id_reg[31]_i_1 
       (.CI(\committed_frame_id_reg[27]_i_1_n_0 ),
        .CO({\NLW_committed_frame_id_reg[31]_i_1_CO_UNCONNECTED [3],\committed_frame_id_reg[31]_i_1_n_1 ,\committed_frame_id_reg[31]_i_1_n_2 ,\committed_frame_id_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[31]_i_1_n_4 ,\committed_frame_id_reg[31]_i_1_n_5 ,\committed_frame_id_reg[31]_i_1_n_6 ,\committed_frame_id_reg[31]_i_1_n_7 }),
        .S(gray_tap_frame_id[31:28]));
  FDCE \committed_frame_id_reg[3] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[3]_i_1_n_4 ),
        .Q(gray_tap_frame_id[3]));
  CARRY4 \committed_frame_id_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\committed_frame_id_reg[3]_i_1_n_0 ,\committed_frame_id_reg[3]_i_1_n_1 ,\committed_frame_id_reg[3]_i_1_n_2 ,\committed_frame_id_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\committed_frame_id_reg[3]_i_1_n_4 ,\committed_frame_id_reg[3]_i_1_n_5 ,\committed_frame_id_reg[3]_i_1_n_6 ,\committed_frame_id_reg[3]_i_1_n_7 }),
        .S({gray_tap_frame_id[3:1],\committed_frame_id[3]_i_2_n_0 }));
  FDCE \committed_frame_id_reg[4] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[7]_i_1_n_7 ),
        .Q(gray_tap_frame_id[4]));
  FDCE \committed_frame_id_reg[5] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[7]_i_1_n_6 ),
        .Q(gray_tap_frame_id[5]));
  FDCE \committed_frame_id_reg[6] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[7]_i_1_n_5 ),
        .Q(gray_tap_frame_id[6]));
  FDCE \committed_frame_id_reg[7] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[7]_i_1_n_4 ),
        .Q(gray_tap_frame_id[7]));
  CARRY4 \committed_frame_id_reg[7]_i_1 
       (.CI(\committed_frame_id_reg[3]_i_1_n_0 ),
        .CO({\committed_frame_id_reg[7]_i_1_n_0 ,\committed_frame_id_reg[7]_i_1_n_1 ,\committed_frame_id_reg[7]_i_1_n_2 ,\committed_frame_id_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\committed_frame_id_reg[7]_i_1_n_4 ,\committed_frame_id_reg[7]_i_1_n_5 ,\committed_frame_id_reg[7]_i_1_n_6 ,\committed_frame_id_reg[7]_i_1_n_7 }),
        .S(gray_tap_frame_id[7:4]));
  FDCE \committed_frame_id_reg[8] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[11]_i_1_n_7 ),
        .Q(gray_tap_frame_id[8]));
  FDCE \committed_frame_id_reg[9] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\committed_frame_id_reg[11]_i_1_n_6 ),
        .Q(gray_tap_frame_id[9]));
  FDCE \completed_buffer_index_reg[0] 
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(\writing_buffer_index_reg_n_0_[0] ),
        .Q(\completed_buffer_index_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hE000E000E0000000)) 
    completed_buffer_valid_i_1
       (.I0(rgb_done_reg_n_0),
        .I1(completed_buffer_valid_reg_0),
        .I2(rgb_started_reg_n_0),
        .I3(gray_started_reg_n_0),
        .I4(completed_buffer_valid_reg_1),
        .I5(gray_done_reg_n_0),
        .O(writer_slot_valid1));
  FDCE completed_buffer_valid_reg
       (.C(aclk),
        .CE(frame_commit_pulse_i_1_n_0),
        .CLR(aresetn_0),
        .D(writer_slot_valid1),
        .Q(completed_buffer_valid_reg_n_0));
  LUT6 #(
    .INIT(64'h0404041504150415)) 
    frame_active_i_1
       (.I0(frame_active_reg_1),
        .I1(frame_active_reg_0),
        .I2(writer_slot_valid1),
        .I3(m_axis_tvalid_INST_0_i_2_n_0),
        .I4(rgb_started_reg_1),
        .I5(rgb_started_reg_0),
        .O(frame_active_i_1_n_0));
  FDCE frame_active_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(frame_active_i_1_n_0),
        .Q(frame_active_reg_0));
  LUT3 #(
    .INIT(8'h20)) 
    frame_commit_pulse_i_1
       (.I0(writer_slot_valid1),
        .I1(frame_active_reg_1),
        .I2(frame_active_reg_0),
        .O(frame_commit_pulse_i_1_n_0));
  FDCE frame_commit_pulse_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(frame_commit_pulse_i_1_n_0),
        .Q(gray_tap_commit));
  LUT6 #(
    .INIT(64'h000CFFFF00080000)) 
    gray_done_i_1
       (.I0(completed_buffer_valid_reg_1),
        .I1(frame_active_reg_0),
        .I2(frame_active_reg_1),
        .I3(writer_slot_valid1),
        .I4(gray_done),
        .I5(gray_done_reg_n_0),
        .O(gray_done_i_1_n_0));
  FDCE gray_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(gray_done_i_1_n_0),
        .Q(gray_done_reg_n_0));
  LUT6 #(
    .INIT(64'h1515041500150015)) 
    gray_started_i_1
       (.I0(frame_active_reg_1),
        .I1(frame_active_reg_0),
        .I2(writer_slot_valid1),
        .I3(rgb_started_reg_0),
        .I4(rgb_started_reg_1),
        .I5(gray_started_reg_n_0),
        .O(gray_started_i_1_n_0));
  FDCE gray_started_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(gray_started_i_1_n_0),
        .Q(gray_started_reg_n_0));
  LUT4 #(
    .INIT(16'hBBB8)) 
    gray_tap_valid_INST_0_i_1
       (.I0(gray_done_reg_n_0),
        .I1(frame_active_reg_0),
        .I2(abort_recovery_required_reg_0),
        .I3(m_axis_tvalid_INST_0_i_2_n_0),
        .O(gray_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    m_axis_tvalid_INST_0_i_1
       (.I0(rgb_done_reg_n_0),
        .I1(frame_active_reg_0),
        .I2(abort_recovery_required_reg_0),
        .I3(m_axis_tvalid_INST_0_i_2_n_0),
        .O(rgb_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    m_axis_tvalid_INST_0_i_2
       (.I0(\completed_buffer_index_reg_n_0_[0] ),
        .I1(\writing_buffer_index_reg_n_0_[0] ),
        .I2(completed_buffer_valid_reg_n_0),
        .I3(writer_slot_valid),
        .O(m_axis_tvalid_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF5070)) 
    protocol_error_sticky_i_1
       (.I0(protocol_error_sticky_i_3_n_0),
        .I1(protocol_error_sticky_i_4_n_0),
        .I2(frame_active_reg_0),
        .I3(frame_active_reg_1),
        .I4(status),
        .O(protocol_error_sticky_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    protocol_error_sticky_i_2
       (.I0(aresetn),
        .I1(capture_axi_sync),
        .O(aresetn_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    protocol_error_sticky_i_3
       (.I0(gray_started_reg_n_0),
        .I1(rgb_started_reg_0),
        .I2(rgb_started_reg_1),
        .I3(rgb_started_reg_n_0),
        .O(protocol_error_sticky_i_3_n_0));
  LUT4 #(
    .INIT(16'hB0BB)) 
    protocol_error_sticky_i_4
       (.I0(gray_started_reg_n_0),
        .I1(completed_buffer_valid_reg_1),
        .I2(rgb_started_reg_n_0),
        .I3(completed_buffer_valid_reg_0),
        .O(protocol_error_sticky_i_4_n_0));
  FDCE protocol_error_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(protocol_error_sticky_i_1_n_0),
        .Q(status));
  LUT6 #(
    .INIT(64'h000CFFFF00080000)) 
    rgb_done_i_1
       (.I0(completed_buffer_valid_reg_0),
        .I1(frame_active_reg_0),
        .I2(frame_active_reg_1),
        .I3(writer_slot_valid1),
        .I4(gray_done),
        .I5(rgb_done_reg_n_0),
        .O(rgb_done_i_1_n_0));
  FDCE rgb_done_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(rgb_done_i_1_n_0),
        .Q(rgb_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'h0002AA02)) 
    rgb_fifo_i_5
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_INST_0_i_2_n_0),
        .I2(abort_recovery_required_reg_0),
        .I3(frame_active_reg_0),
        .I4(rgb_done_reg_n_0),
        .O(m_axis_tready_0));
  LUT6 #(
    .INIT(64'h1504151500001515)) 
    rgb_started_i_1
       (.I0(frame_active_reg_1),
        .I1(frame_active_reg_0),
        .I2(writer_slot_valid1),
        .I3(rgb_started_reg_0),
        .I4(rgb_started_reg_1),
        .I5(rgb_started_reg_n_0),
        .O(rgb_started_i_1_n_0));
  FDCE rgb_started_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(rgb_started_i_1_n_0),
        .Q(rgb_started_reg_n_0));
  LUT6 #(
    .INIT(64'h41005555FFFF5555)) 
    writer_slot_valid_i_1
       (.I0(frame_active_reg_0),
        .I1(\completed_buffer_index_reg_n_0_[0] ),
        .I2(\writing_buffer_index_reg_n_0_[0] ),
        .I3(completed_buffer_valid_reg_n_0),
        .I4(writer_slot_valid),
        .I5(frame_commit_pulse_i_1_n_0),
        .O(writer_slot_valid_i_1_n_0));
  FDPE writer_slot_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(writer_slot_valid_i_1_n_0),
        .PRE(aresetn_0),
        .Q(writer_slot_valid));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT5 #(
    .INIT(32'hF0F020EC)) 
    \writing_buffer_index[0]_i_1 
       (.I0(writer_slot_valid),
        .I1(completed_buffer_valid_reg_n_0),
        .I2(\writing_buffer_index_reg_n_0_[0] ),
        .I3(\completed_buffer_index_reg_n_0_[0] ),
        .I4(frame_active_reg_0),
        .O(\writing_buffer_index[0]_i_1_n_0 ));
  FDCE \writing_buffer_index_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\writing_buffer_index[0]_i_1_n_0 ),
        .Q(\writing_buffer_index_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "wp1_ov5640_board_if" *) 
module facebox_system_real_camera_source_0_0_wp1_ov5640_board_if
   (rate_status,
    init_done_reg,
    cam_xclk,
    sys_rst_n_0,
    status,
    cam_scl,
    cam_sda,
    sys_clk50,
    xclk24,
    sleep_request,
    sys_rst_n);
  output [2:0]rate_status;
  output init_done_reg;
  output cam_xclk;
  output sys_rst_n_0;
  output [20:0]status;
  output cam_scl;
  inout cam_sda;
  input sys_clk50;
  input xclk24;
  input sleep_request;
  input sys_rst_n;

  wire T0;
  wire cam_scl;
  wire cam_sda;
  wire cam_xclk;
  wire cmd_read;
  wire init_cmd_read;
  wire init_cmd_valid;
  wire init_done_reg;
  wire [2:0]rate_status;
  wire [7:0]rd_data;
  wire [15:0]reg_addr;
  wire rsp_valid;
  wire sda_i;
  wire sleep_request;
  wire start_d;
  wire [20:0]status;
  wire sys_clk50;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire target_slow;
  wire u_ov5640_init_n_23;
  wire u_ov5640_init_n_26;
  wire u_ov5640_init_n_27;
  wire u_ov5640_init_n_28;
  wire u_ov5640_init_n_29;
  wire u_ov5640_init_n_30;
  wire u_ov5640_init_n_45;
  wire u_ov5640_init_n_46;
  wire u_ov5640_init_n_47;
  wire u_ov5640_init_n_48;
  wire u_ov5640_init_n_49;
  wire u_ov5640_init_n_50;
  wire u_ov5640_init_n_51;
  wire u_ov5640_init_n_52;
  wire u_ov5640_init_n_53;
  wire u_ov5640_init_n_54;
  wire u_rate_n_10;
  wire u_rate_n_22;
  wire u_rate_n_4;
  wire u_rate_n_5;
  wire u_rate_n_6;
  wire u_rate_n_7;
  wire u_rate_n_8;
  wire u_rate_n_9;
  wire u_sccb_master_n_1;
  wire u_sccb_master_n_16;
  wire u_sccb_master_n_17;
  wire u_sccb_master_n_18;
  wire u_sccb_master_n_19;
  wire u_sccb_master_n_20;
  wire u_sccb_master_n_21;
  wire u_sccb_master_n_22;
  wire u_sccb_master_n_23;
  wire u_sccb_master_n_24;
  wire u_sccb_master_n_25;
  wire u_sccb_master_n_26;
  wire u_sccb_master_n_3;
  wire u_sccb_master_n_4;
  wire u_sccb_master_n_6;
  wire u_sccb_master_n_7;
  wire [7:0]wr_data;
  wire xclk24;
  wire NLW_u_xclk_forward_R_UNCONNECTED;
  wire NLW_u_xclk_forward_S_UNCONNECTED;

  facebox_system_real_camera_source_0_0_ov5640_init u_ov5640_init
       (.D(wr_data[3]),
        .Q({u_ov5640_init_n_26,u_ov5640_init_n_27,u_ov5640_init_n_28,u_ov5640_init_n_29}),
        .cmd_read_reg_0(u_sccb_master_n_6),
        .cmd_valid_reg_0(u_sccb_master_n_18),
        .\error_code_reg[5]_0 (u_sccb_master_n_3),
        .\error_code_reg[5]_1 (u_sccb_master_n_4),
        .init_cmd_read(init_cmd_read),
        .init_cmd_valid(init_cmd_valid),
        .init_done_reg_0(init_done_reg),
        .init_done_reg_1(u_sccb_master_n_17),
        .init_error_reg_0(u_sccb_master_n_26),
        .init_error_reg_1(u_sccb_master_n_23),
        .\reg_addr_latched_reg[11] (u_rate_n_7),
        .\reg_addr_latched_reg[11]_0 (u_rate_n_8),
        .\reg_addr_reg[15]_0 ({reg_addr[15:10],reg_addr[8:5],reg_addr[3:1]}),
        .\reg_addr_reg[9]_0 ({u_ov5640_init_n_52,u_ov5640_init_n_53,u_ov5640_init_n_54}),
        .\rom_index_reg[4]_0 (u_ov5640_init_n_30),
        .\rom_index_reg_rep[0]_0 (u_sccb_master_n_16),
        .rsp_valid(rsp_valid),
        .\sensor_id_reg[0]_0 (u_sccb_master_n_21),
        .\sensor_id_reg[15]_0 (rd_data),
        .start_d(start_d),
        .\state_reg[0]_0 (u_sccb_master_n_1),
        .\state_reg[0]_1 (u_sccb_master_n_25),
        .\state_reg[3]_0 (u_sccb_master_n_24),
        .status(status),
        .sys_clk50(sys_clk50),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(u_ov5640_init_n_23),
        .\wait_count_reg[0]_0 (u_sccb_master_n_22),
        .\wait_count_reg[29]_0 (sys_rst_n_0),
        .\wr_data_reg[7]_0 ({u_ov5640_init_n_45,u_ov5640_init_n_46,u_ov5640_init_n_47,u_ov5640_init_n_48,u_ov5640_init_n_49,u_ov5640_init_n_50,u_ov5640_init_n_51}));
  facebox_system_real_camera_source_0_0_ov5640_rate_control u_rate
       (.D({wr_data[7:4],wr_data[2:0]}),
        .\age_reg[31]_0 (u_sccb_master_n_6),
        .busy_reg_0(rate_status[1]),
        .cmd_read(cmd_read),
        .cmd_valid_reg(u_rate_n_5),
        .fault_reg_0(rate_status[2]),
        .\index_reg[0]_0 (u_rate_n_8),
        .\index_reg[0]_1 (u_rate_n_9),
        .\index_reg[1]_0 (u_rate_n_7),
        .\index_reg[1]_1 ({reg_addr[9],reg_addr[4],reg_addr[0]}),
        .\index_reg[2]_0 (u_rate_n_6),
        .\index_reg[2]_1 (u_rate_n_22),
        .init_cmd_read(init_cmd_read),
        .init_cmd_valid(init_cmd_valid),
        .\reg_addr_latched_reg[4] (init_done_reg),
        .\reg_addr_latched_reg[9] ({u_ov5640_init_n_52,u_ov5640_init_n_53,u_ov5640_init_n_54}),
        .rsp_valid(rsp_valid),
        .\settle_count_reg[28]_0 (sys_rst_n_0),
        .settling_reg_0(u_rate_n_10),
        .settling_reg_1(u_sccb_master_n_19),
        .sleep_request(sleep_request),
        .slow_applied_reg_0(rate_status[0]),
        .slow_applied_reg_1(u_sccb_master_n_20),
        .sys_clk50(sys_clk50),
        .target_slow(target_slow),
        .waiting_reg_0(u_rate_n_4),
        .waiting_reg_1(u_sccb_master_n_1),
        .waiting_reg_2(u_sccb_master_n_18),
        .waiting_reg_3(u_sccb_master_n_7),
        .\wr_data_latched_reg[7] ({u_ov5640_init_n_45,u_ov5640_init_n_46,u_ov5640_init_n_47,u_ov5640_init_n_48,u_ov5640_init_n_49,u_ov5640_init_n_50,u_ov5640_init_n_51}));
  facebox_system_real_camera_source_0_0_sccb_master u_sccb_master
       (.D(wr_data),
        .Q(rd_data),
        .T0(T0),
        .cam_scl(cam_scl),
        .cmd_read(cmd_read),
        .\half_count_reg[30]_0 (u_ov5640_init_n_23),
        .\index_reg[2] (u_sccb_master_n_20),
        .init_done_reg(u_sccb_master_n_17),
        .nack_reg_0(u_sccb_master_n_3),
        .nack_reg_1(u_sccb_master_n_19),
        .nack_reg_2(u_sccb_master_n_24),
        .nack_reg_3(u_sccb_master_n_26),
        .\reg_addr_latched_reg[15]_0 (reg_addr),
        .\rom_index_reg_rep[0] (u_ov5640_init_n_30),
        .rsp_valid(rsp_valid),
        .rsp_valid_reg_0(u_sccb_master_n_7),
        .sda_i(sda_i),
        .\sensor_id_reg[0] ({u_ov5640_init_n_26,u_ov5640_init_n_27,u_ov5640_init_n_28,u_ov5640_init_n_29}),
        .settling_i_2(u_rate_n_10),
        .settling_i_2_0(u_rate_n_22),
        .settling_i_5_0(u_rate_n_9),
        .slow_applied_reg(u_rate_n_6),
        .slow_applied_reg_0(u_rate_n_7),
        .slow_applied_reg_1(u_rate_n_8),
        .start_d(start_d),
        .\state_reg[2]_0 (u_sccb_master_n_25),
        .\state_reg[4]_0 (u_sccb_master_n_18),
        .sys_clk50(sys_clk50),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(u_sccb_master_n_1),
        .sys_rst_n_1(sys_rst_n_0),
        .sys_rst_n_2(u_sccb_master_n_6),
        .target_slow(target_slow),
        .timeout_reg_0(u_sccb_master_n_4),
        .timeout_reg_1(u_sccb_master_n_16),
        .timeout_reg_2(u_sccb_master_n_21),
        .timeout_reg_3(u_sccb_master_n_22),
        .timeout_reg_4(u_sccb_master_n_23),
        .timeout_reg_5(u_rate_n_5),
        .\wait_count_reg[0] (init_done_reg),
        .waiting_reg(u_rate_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    u_sda_iobuf
       (.I(1'b0),
        .IO(cam_sda),
        .O(sda_i),
        .T(T0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_xclk_forward
       (.C(xclk24),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(cam_xclk),
        .R(NLW_u_xclk_forward_R_UNCONNECTED),
        .S(NLW_u_xclk_forward_S_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "wp2_camera_top" *) 
module facebox_system_real_camera_source_0_0_wp2_camera_top
   (init_sync_reg,
    frame_done,
    frame_good,
    px_valid,
    px_sof,
    s_axis_tlast,
    init_sync_reg_0,
    \FSM_onehot_state_reg[0] ,
    frame_good_reg,
    source_frame_id0,
    px_valid_reg,
    frame_done_reg,
    D,
    \frames_dropped_reg[18] ,
    \frames_good_reg[4] ,
    frame_done_reg_0,
    fifo_overflow_pulse_reg,
    init_sync_reg_1,
    fifo_overflow_sticky_reg,
    \rgb565_reg[15] ,
    \gray8_reg[7] ,
    cam_vsync_q,
    cam_pclk,
    cam_href_q,
    \FSM_onehot_state_reg[0]_0 ,
    fifo_overflow_pulse_reg_0,
    \FSM_onehot_state_reg[0]_1 ,
    source_dropped,
    fifo_overflow_pulse,
    \gray8_reg[7]_0 ,
    source_started_reg,
    out,
    \rgb_s2_reg[10] ,
    status,
    Q);
  output init_sync_reg;
  output frame_done;
  output frame_good;
  output px_valid;
  output px_sof;
  output s_axis_tlast;
  output init_sync_reg_0;
  output \FSM_onehot_state_reg[0] ;
  output frame_good_reg;
  output source_frame_id0;
  output px_valid_reg;
  output frame_done_reg;
  output [0:0]D;
  output \frames_dropped_reg[18] ;
  output \frames_good_reg[4] ;
  output frame_done_reg_0;
  output fifo_overflow_pulse_reg;
  output init_sync_reg_1;
  output fifo_overflow_sticky_reg;
  output [15:0]\rgb565_reg[15] ;
  output [7:0]\gray8_reg[7] ;
  input cam_vsync_q;
  input cam_pclk;
  input cam_href_q;
  input \FSM_onehot_state_reg[0]_0 ;
  input fifo_overflow_pulse_reg_0;
  input \FSM_onehot_state_reg[0]_1 ;
  input source_dropped;
  input fifo_overflow_pulse;
  input \gray8_reg[7]_0 ;
  input source_started_reg;
  input out;
  input \rgb_s2_reg[10] ;
  input [0:0]status;
  input [7:0]Q;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [7:0]Q;
  wire cam_href_q;
  wire cam_pclk;
  wire cam_vsync_q;
  wire eol_s0;
  wire fifo_overflow_pulse;
  wire fifo_overflow_pulse_reg;
  wire fifo_overflow_pulse_reg_0;
  wire fifo_overflow_sticky_reg;
  wire first_byte;
  wire frame_done;
  wire frame_done_reg;
  wire frame_done_reg_0;
  wire frame_good;
  wire frame_good_reg;
  wire \frames_dropped_reg[18] ;
  wire \frames_good_reg[4] ;
  wire [7:0]\gray8_reg[7] ;
  wire \gray8_reg[7]_0 ;
  wire init_sync_reg;
  wire init_sync_reg_0;
  wire init_sync_reg_1;
  wire out;
  wire px_sof;
  wire px_valid;
  wire px_valid_reg;
  wire raw_sof;
  wire raw_valid;
  wire [15:0]\rgb565_reg[15] ;
  wire \rgb_s2_reg[10] ;
  wire s_axis_tlast;
  wire source_dropped;
  wire source_frame_id0;
  wire source_started_reg;
  wire [0:0]status;
  wire u_dvp_rx_n_13;
  wire u_dvp_rx_n_14;
  wire u_dvp_rx_n_17;
  wire u_dvp_rx_n_18;
  wire u_dvp_rx_n_20;
  wire u_dvp_rx_n_21;
  wire u_dvp_rx_n_22;
  wire u_dvp_rx_n_23;
  wire u_dvp_rx_n_24;
  wire u_dvp_rx_n_25;
  wire u_dvp_rx_n_26;
  wire u_dvp_rx_n_27;
  wire u_frame_stats_n_1;
  wire u_rgb565_unpack_gray_n_0;
  wire u_rgb565_unpack_gray_n_5;
  wire u_rgb565_unpack_gray_n_6;
  wire valid_s02_out;

  facebox_system_real_camera_source_0_0_dvp_rx u_dvp_rx
       (.D(D),
        .E(first_byte),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state_reg[0]_1 ),
        .Q({u_dvp_rx_n_20,u_dvp_rx_n_21,u_dvp_rx_n_22,u_dvp_rx_n_23,u_dvp_rx_n_24,u_dvp_rx_n_25,u_dvp_rx_n_26,u_dvp_rx_n_27}),
        .cam_href_q(cam_href_q),
        .cam_pclk(cam_pclk),
        .cam_vsync_q(cam_vsync_q),
        .eol_s0(eol_s0),
        .\error_acc_reg[2]_0 (u_rgb565_unpack_gray_n_0),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_pulse_reg(u_dvp_rx_n_14),
        .fifo_overflow_pulse_reg_0(fifo_overflow_pulse_reg),
        .fifo_overflow_pulse_reg_1(fifo_overflow_pulse_reg_0),
        .fifo_overflow_sticky_reg(fifo_overflow_sticky_reg),
        .frame_done_reg_0(frame_done),
        .frame_done_reg_1(frame_done_reg),
        .frame_done_reg_2(frame_done_reg_0),
        .\frame_error_reg[0]_0 (u_dvp_rx_n_13),
        .frame_good_reg_0(frame_good),
        .frame_good_reg_1(frame_good_reg),
        .have_first_reg(u_rgb565_unpack_gray_n_5),
        .overflow_seen_reg(u_frame_stats_n_1),
        .px_valid(px_valid),
        .px_valid_reg(px_valid_reg),
        .\raw_data_reg[2]_0 (init_sync_reg),
        .\raw_data_reg[7]_0 (Q),
        .raw_sof(raw_sof),
        .raw_sof_reg_0(u_dvp_rx_n_17),
        .raw_sof_reg_1(u_dvp_rx_n_18),
        .raw_valid(raw_valid),
        .raw_valid_reg_0(valid_s02_out),
        .sof_pending_reg(u_rgb565_unpack_gray_n_6),
        .source_dropped(source_dropped),
        .source_frame_id0(source_frame_id0),
        .source_started_reg(source_started_reg),
        .status(status));
  facebox_system_real_camera_source_0_0_frame_stats u_frame_stats
       (.cam_pclk(cam_pclk),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .\frames_bad_reg[26]_0 (\rgb_s2_reg[10] ),
        .\frames_bad_reg[31]_0 (u_dvp_rx_n_13),
        .\frames_dropped_reg[18]_0 (\frames_dropped_reg[18] ),
        .\frames_dropped_reg[31]_0 (frame_done),
        .\frames_good_reg[12]_0 (u_rgb565_unpack_gray_n_0),
        .\frames_good_reg[4]_0 (\frames_good_reg[4] ),
        .init_sync_reg(init_sync_reg_0),
        .out(out),
        .overflow_seen_reg_0(u_frame_stats_n_1),
        .overflow_seen_reg_1(init_sync_reg),
        .overflow_seen_reg_2(u_dvp_rx_n_14));
  facebox_system_real_camera_source_0_0_rgb565_unpack_gray u_rgb565_unpack_gray
       (.D({u_dvp_rx_n_20,u_dvp_rx_n_21,u_dvp_rx_n_22,u_dvp_rx_n_23,u_dvp_rx_n_24,u_dvp_rx_n_25,u_dvp_rx_n_26,u_dvp_rx_n_27}),
        .E(valid_s02_out),
        .cam_pclk(cam_pclk),
        .eol_s0(eol_s0),
        .\first_byte_reg[7]_0 (first_byte),
        .\gray8_reg[7]_0 (\gray8_reg[7] ),
        .\gray8_reg[7]_1 (\gray8_reg[7]_0 ),
        .have_first_reg_0(u_rgb565_unpack_gray_n_5),
        .have_first_reg_1(u_dvp_rx_n_18),
        .init_sync_reg(u_rgb565_unpack_gray_n_0),
        .init_sync_reg_0(init_sync_reg),
        .init_sync_reg_1(init_sync_reg_1),
        .out(out),
        .px_sof(px_sof),
        .px_valid(px_valid),
        .raw_sof(raw_sof),
        .raw_valid(raw_valid),
        .\rgb565_reg[15]_0 (\rgb565_reg[15] ),
        .\rgb565_reg[7]_0 (init_sync_reg_0),
        .\rgb_s2_reg[10]_0 (\rgb_s2_reg[10] ),
        .s_axis_tlast(s_axis_tlast),
        .sof_pending_reg_0(u_rgb565_unpack_gray_n_6),
        .sof_pending_reg_1(u_dvp_rx_n_17));
endmodule

(* ORIG_REF_NAME = "wp3_dual_fifo_frame_bridge" *) 
module facebox_system_real_camera_source_0_0_wp3_dual_fifo_frame_bridge
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    status,
    \FSM_onehot_state_reg[0] ,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    \gen_wr_a.gen_word_narrow.mem_reg_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_1 ,
    fifo_overflow_pulse,
    dst_pulse_reg,
    abort_req_toggle_reg,
    gray_done,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg ,
    D,
    rgb_frame_done_pulse5_out,
    E,
    m_axis_tvalid,
    dst_pulse_reg_0,
    \y_count_reg[0] ,
    x_count0,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_1_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_0_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_0_2 ,
    \FSM_onehot_state_reg[2] ,
    dst_pulse_reg_1,
    cam_pclk,
    \gen_wr_a.gen_word_narrow.mem_reg_0_3 ,
    s_axis_tlast,
    s_axis_tuser,
    aclk,
    fifo_overflow_pulse_reg,
    \FSM_onehot_state_reg[0]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_2 ,
    fifo_overflow_pulse_reg_0,
    drop_active_reg,
    abort_ack_sync_2_reg_0,
    fifo_overflow_sticky_reg,
    fifo_overflow_sticky_reg_0,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    out,
    \syncstages_ff_reg[0] ,
    px_valid,
    rgb_done_reg,
    drop_active_reg_0,
    rgb_done_reg_0,
    Q,
    \rgb_line_count_reg[6] ,
    m_axis_tvalid_0,
    \gray_line_count_reg[0] ,
    \y_count_reg[1] ,
    \x_count_reg[4] ,
    drop_active_reg_1,
    abort_recovery_done_pulse,
    abort_recovery_required_reg,
    frame_done,
    frame_good,
    A);
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output [32:0]m_axis_tuser;
  output [1:0]status;
  output \FSM_onehot_state_reg[0] ;
  output [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  output \gen_wr_a.gen_word_narrow.mem_reg_0 ;
  output [0:0]\gen_wr_a.gen_word_narrow.mem_reg_1 ;
  output fifo_overflow_pulse;
  output dst_pulse_reg;
  output abort_req_toggle_reg;
  output gray_done;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  output [8:0]D;
  output rgb_frame_done_pulse5_out;
  output [0:0]E;
  output m_axis_tvalid;
  output [0:0]dst_pulse_reg_0;
  output [0:0]\y_count_reg[0] ;
  output x_count0;
  output [0:0]\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  output [0:0]\gen_wr_a.gen_word_narrow.mem_reg_0_0 ;
  output [2:0]\gen_wr_a.gen_word_narrow.mem_reg_1_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_0_1 ;
  output [1:0]\gen_wr_a.gen_word_narrow.mem_reg_0_2 ;
  output \FSM_onehot_state_reg[2] ;
  output dst_pulse_reg_1;
  input cam_pclk;
  input [7:0]\gen_wr_a.gen_word_narrow.mem_reg_0_3 ;
  input s_axis_tlast;
  input [32:0]s_axis_tuser;
  input aclk;
  input fifo_overflow_pulse_reg;
  input \FSM_onehot_state_reg[0]_0 ;
  input [15:0]\gen_wr_a.gen_word_narrow.mem_reg_2 ;
  input fifo_overflow_pulse_reg_0;
  input drop_active_reg;
  input abort_ack_sync_2_reg_0;
  input fifo_overflow_sticky_reg;
  input fifo_overflow_sticky_reg_0;
  input \FSM_onehot_state_reg[2]_0 ;
  input \FSM_onehot_state_reg[2]_1 ;
  input out;
  input \syncstages_ff_reg[0] ;
  input px_valid;
  input rgb_done_reg;
  input drop_active_reg_0;
  input rgb_done_reg_0;
  input [8:0]Q;
  input \rgb_line_count_reg[6] ;
  input m_axis_tvalid_0;
  input \gray_line_count_reg[0] ;
  input [1:0]\y_count_reg[1] ;
  input [3:0]\x_count_reg[4] ;
  input drop_active_reg_1;
  input abort_recovery_done_pulse;
  input abort_recovery_required_reg;
  input frame_done;
  input frame_good;
  input [0:0]A;

  wire [0:0]A;
  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire [8:0]Q;
  (* async_reg = "true" *) wire abort_ack_sync_1;
  (* async_reg = "true" *) wire abort_ack_sync_2;
  wire abort_ack_sync_2_reg_0;
  wire abort_recovery_done_pulse;
  wire abort_recovery_required_reg;
  wire abort_req_toggle;
  wire abort_req_toggle_reg;
  wire aclk;
  wire cam_pclk;
  wire drop_active_reg;
  wire drop_active_reg_0;
  wire drop_active_reg_1;
  wire dst_ack_toggle;
  wire dst_pulse_reg;
  wire [0:0]dst_pulse_reg_0;
  wire dst_pulse_reg_1;
  wire fifo_overflow_pulse;
  wire fifo_overflow_pulse_reg;
  wire fifo_overflow_pulse_reg_0;
  wire fifo_overflow_sticky_reg;
  wire fifo_overflow_sticky_reg_0;
  wire frame_done;
  wire frame_good;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  wire [0:0]\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  wire [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0 ;
  wire [0:0]\gen_wr_a.gen_word_narrow.mem_reg_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_1 ;
  wire [1:0]\gen_wr_a.gen_word_narrow.mem_reg_0_2 ;
  wire [7:0]\gen_wr_a.gen_word_narrow.mem_reg_0_3 ;
  wire [0:0]\gen_wr_a.gen_word_narrow.mem_reg_1 ;
  wire [2:0]\gen_wr_a.gen_word_narrow.mem_reg_1_0 ;
  wire [15:0]\gen_wr_a.gen_word_narrow.mem_reg_2 ;
  wire gray_done;
  wire \gray_line_count_reg[0] ;
  wire gray_prog_full;
  wire gray_raw_tready;
  wire gray_raw_tvalid;
  wire gray_resync_n_0;
  wire gray_s_tready;
  wire gray_s_tvalid;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire [32:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire m_axis_tvalid_0;
  wire out;
  wire path_cam_rst_n;
  wire px_valid;
  wire rgb_done_reg;
  wire rgb_done_reg_0;
  wire rgb_frame_done_pulse5_out;
  wire \rgb_line_count_reg[6] ;
  wire rgb_prog_full;
  wire rgb_raw_tready;
  wire rgb_raw_tvalid;
  wire rgb_resync_n_0;
  wire rgb_resync_n_10;
  wire rgb_s_tready;
  wire s_axis_tlast;
  wire [32:0]s_axis_tuser;
  wire [1:0]status;
  wire \syncstages_ff_reg[0] ;
  wire x_count0;
  wire \x_count[4]_i_2_n_0 ;
  wire [3:0]\x_count_reg[4] ;
  wire [0:0]\y_count_reg[0] ;
  wire [1:0]\y_count_reg[1] ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE abort_ack_sync_1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(abort_ack_sync_2_reg_0),
        .D(dst_ack_toggle),
        .Q(abort_ack_sync_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE abort_ack_sync_2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(abort_ack_sync_2_reg_0),
        .D(abort_ack_sync_1),
        .Q(abort_ack_sync_2));
  facebox_system_real_camera_source_0_0_toggle_event_cdc abort_event_cdc
       (.E(E),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .abort_recovery_required_reg(abort_recovery_required_reg),
        .abort_req_toggle(abort_req_toggle),
        .aclk(aclk),
        .dst_ack_toggle(dst_ack_toggle),
        .dst_pulse_reg_0(dst_pulse_reg),
        .dst_pulse_reg_1(dst_pulse_reg_0),
        .dst_pulse_reg_2(dst_pulse_reg_1),
        .dst_pulse_reg_3(drop_active_reg),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg (\gen_fwft.gdvld_fwft.data_valid_fwft_reg ),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 (m_axis_tvalid),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 (\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_0 (\gen_wr_a.gen_word_narrow.mem_reg_0_0 ),
        .gray_done(gray_done),
        .\gray_line_count_reg[0] (\gray_line_count_reg[0] ),
        .m_axis_tuser(\gen_wr_a.gen_word_narrow.mem_reg_1 ),
        .m_axis_tvalid(rgb_raw_tvalid),
        .m_axis_tvalid_0(m_axis_tvalid_0),
        .m_axis_tvalid_1(rgb_resync_n_0),
        .m_tuser_reg(\y_count_reg[1] [0]),
        .m_tuser_reg_0(\x_count_reg[4] [0]),
        .m_tuser_reg_1(gray_raw_tvalid),
        .rgb_done_reg(rgb_done_reg),
        .rgb_done_reg_0(rgb_done_reg_0),
        .\rgb_line_count_reg[0] (rgb_resync_n_10),
        .rgb_started_reg(drop_active_reg_0),
        .x_count0(x_count0),
        .\y_count_reg[0] (\y_count_reg[0] ),
        .\y_count_reg[8] (m_axis_tuser[0]),
        .\y_count_reg[8]_0 (drop_active_reg_1),
        .\y_count_reg[8]_1 (gray_resync_n_0));
  facebox_system_real_camera_source_0_0_axis_frame_resync__parameterized0_0 gray_resync
       (.aclk(aclk),
        .drop_active_reg_0(gray_resync_n_0),
        .drop_active_reg_1(drop_active_reg),
        .drop_active_reg_2(drop_active_reg_1),
        .drop_active_reg_3(dst_pulse_reg),
        .m_axis_tready(gray_raw_tready),
        .m_axis_tuser(m_axis_tuser[0]),
        .m_axis_tvalid(gray_raw_tvalid));
  facebox_system_real_camera_source_0_0_camera_dual_axis_guard ingress_guard
       (.\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg[2] ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state_reg[2]_1 ),
        .\FSM_onehot_state_reg[2]_3 (gray_s_tready),
        .\FSM_onehot_state_reg[2]_4 (rgb_prog_full),
        .abort_req_toggle(abort_req_toggle),
        .abort_req_toggle_reg_0(abort_req_toggle_reg),
        .cam_pclk(cam_pclk),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_pulse_reg_0(fifo_overflow_pulse_reg),
        .fifo_overflow_pulse_reg_1(fifo_overflow_pulse_reg_0),
        .fifo_overflow_sticky_reg_0(fifo_overflow_sticky_reg),
        .fifo_overflow_sticky_reg_1(fifo_overflow_sticky_reg_0),
        .frame_done(frame_done),
        .frame_good(frame_good),
        .out(abort_ack_sync_2),
        .prog_full(gray_prog_full),
        .px_valid(px_valid),
        .s_axis_tready(rgb_s_tready),
        .s_axis_tuser(s_axis_tuser[0]),
        .s_axis_tvalid(gray_s_tvalid),
        .status(status));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_tuser_i_3
       (.I0(m_axis_tuser[0]),
        .I1(\x_count_reg[4] [0]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_1 ));
  (* CHECK_LICENSE_TYPE = "axis_fifo_rgb_cdc,axis_data_fifo_v2_0_0_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_data_fifo_v2_0_0_top,Vivado 2018.3" *) 
  facebox_system_real_camera_source_0_0_axis_fifo_rgb_cdc rgb_fifo
       (.m_axis_aclk(aclk),
        .m_axis_tdata(\gen_wr_a.gen_word_narrow.mem_reg ),
        .m_axis_tlast(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .m_axis_tready(rgb_raw_tready),
        .m_axis_tuser(\gen_wr_a.gen_word_narrow.mem_reg_1 ),
        .m_axis_tvalid(rgb_raw_tvalid),
        .prog_full(rgb_prog_full),
        .s_axis_aclk(cam_pclk),
        .s_axis_aresetn(path_cam_rst_n),
        .s_axis_tdata(\gen_wr_a.gen_word_narrow.mem_reg_2 ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(rgb_s_tready),
        .s_axis_tuser(s_axis_tuser[0]),
        .s_axis_tvalid(gray_s_tvalid));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_fifo_i_1
       (.I0(out),
        .I1(\syncstages_ff_reg[0] ),
        .O(path_cam_rst_n));
  facebox_system_real_camera_source_0_0_axis_frame_resync rgb_resync
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .drop_active_reg_0(rgb_resync_n_0),
        .drop_active_reg_1(drop_active_reg),
        .drop_active_reg_2(drop_active_reg_0),
        .drop_active_reg_3(dst_pulse_reg),
        .\gen_wr_a.gen_word_narrow.mem_reg (rgb_resync_n_10),
        .m_axis_tready(rgb_raw_tready),
        .m_axis_tuser(\gen_wr_a.gen_word_narrow.mem_reg_1 ),
        .m_axis_tvalid(rgb_raw_tvalid),
        .rgb_frame_done_pulse5_out(rgb_frame_done_pulse5_out),
        .\rgb_line_count_reg[0] (\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .\rgb_line_count_reg[6] (\rgb_line_count_reg[6] ));
  (* CHECK_LICENSE_TYPE = "axis_fifo_gray_tag_cdc,axis_data_fifo_v2_0_0_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_data_fifo_v2_0_0_top,Vivado 2018.3" *) 
  facebox_system_real_camera_source_0_0_axis_fifo_gray_tag_cdc \tagged_gray.gray_fifo 
       (.m_axis_aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(gray_raw_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(gray_raw_tvalid),
        .prog_full(gray_prog_full),
        .s_axis_aclk(cam_pclk),
        .s_axis_aresetn(path_cam_rst_n),
        .s_axis_tdata(\gen_wr_a.gen_word_narrow.mem_reg_0_3 ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(gray_s_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(gray_s_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \x_count[0]_i_1 
       (.I0(\x_count_reg[4] [0]),
        .I1(m_axis_tuser[0]),
        .I2(m_axis_tlast),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_1_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'h0104)) 
    \x_count[1]_i_1 
       (.I0(m_axis_tlast),
        .I1(\x_count_reg[4] [1]),
        .I2(m_axis_tuser[0]),
        .I3(\x_count_reg[4] [0]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_1_0 [1]));
  LUT6 #(
    .INIT(64'h5545555500100000)) 
    \x_count[4]_i_1 
       (.I0(m_axis_tlast),
        .I1(\x_count[4]_i_2_n_0 ),
        .I2(\x_count_reg[4] [2]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_0_1 ),
        .I4(\x_count_reg[4] [1]),
        .I5(A),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_1_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \x_count[4]_i_2 
       (.I0(m_axis_tuser[0]),
        .I1(\x_count_reg[4] [3]),
        .O(\x_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_count[0]_i_1 
       (.I0(m_axis_tlast),
        .I1(m_axis_tuser[0]),
        .I2(\y_count_reg[1] [0]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \y_count[1]_i_1 
       (.I0(m_axis_tuser[0]),
        .I1(\y_count_reg[1] [1]),
        .I2(\y_count_reg[1] [0]),
        .I3(m_axis_tlast),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_2 [1]));
endmodule

(* ORIG_REF_NAME = "wp3_frame_safe_pipeline" *) 
module facebox_system_real_camera_source_0_0_wp3_frame_safe_pipeline
   (status,
    \FSM_onehot_state_reg[0] ,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    fifo_overflow_pulse,
    aresetn_0,
    dst_pulse_reg,
    m_tuser_reg,
    gray_tap_eol,
    gray_tap_commit,
    gray_tap_frame_id,
    abort_req_toggle_reg,
    D,
    rgb_frame_done_pulse5_out,
    E,
    m_axis_tvalid,
    \gray_line_count_reg[6] ,
    gray_frame_done_pulse3_out,
    dst_pulse_reg_0,
    gray_tap_valid,
    \FSM_onehot_state_reg[2] ,
    gray_tap_data,
    gray_tap_source_id,
    cam_pclk,
    \gen_wr_a.gen_word_narrow.mem_reg_0 ,
    s_axis_tlast,
    s_axis_tuser,
    aclk,
    fifo_overflow_pulse_reg,
    \FSM_onehot_state_reg[0]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    fifo_overflow_pulse_reg_0,
    abort_ack_sync_2_reg,
    fifo_overflow_sticky_reg,
    fifo_overflow_sticky_reg_0,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    out,
    \syncstages_ff_reg[0] ,
    capture_axi_sync,
    aresetn,
    px_valid,
    Q,
    \rgb_line_count_reg[6] ,
    gray_frame_done_pulse_reg,
    gray_frame_done_pulse_reg_0,
    m_axis_tready,
    completed_buffer_valid_reg,
    completed_buffer_valid_reg_0,
    abort_recovery_done_pulse,
    frame_done,
    frame_good);
  output [3:0]status;
  output \FSM_onehot_state_reg[0] ;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  output fifo_overflow_pulse;
  output aresetn_0;
  output dst_pulse_reg;
  output m_tuser_reg;
  output gray_tap_eol;
  output gray_tap_commit;
  output [31:0]gray_tap_frame_id;
  output abort_req_toggle_reg;
  output [8:0]D;
  output rgb_frame_done_pulse5_out;
  output [0:0]E;
  output m_axis_tvalid;
  output [7:0]\gray_line_count_reg[6] ;
  output gray_frame_done_pulse3_out;
  output [0:0]dst_pulse_reg_0;
  output gray_tap_valid;
  output \FSM_onehot_state_reg[2] ;
  output [7:0]gray_tap_data;
  output [31:0]gray_tap_source_id;
  input cam_pclk;
  input [7:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  input s_axis_tlast;
  input [32:0]s_axis_tuser;
  input aclk;
  input fifo_overflow_pulse_reg;
  input \FSM_onehot_state_reg[0]_0 ;
  input [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  input fifo_overflow_pulse_reg_0;
  input abort_ack_sync_2_reg;
  input fifo_overflow_sticky_reg;
  input fifo_overflow_sticky_reg_0;
  input \FSM_onehot_state_reg[2]_0 ;
  input \FSM_onehot_state_reg[2]_1 ;
  input out;
  input \syncstages_ff_reg[0] ;
  input capture_axi_sync;
  input aresetn;
  input px_valid;
  input [8:0]Q;
  input \rgb_line_count_reg[6] ;
  input [7:0]gray_frame_done_pulse_reg;
  input gray_frame_done_pulse_reg_0;
  input m_axis_tready;
  input completed_buffer_valid_reg;
  input completed_buffer_valid_reg_0;
  input abort_recovery_done_pulse;
  input frame_done;
  input frame_good;

  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire [8:0]Q;
  wire abort_ack_sync_2_reg;
  wire abort_recovery_done_pulse;
  wire abort_req_toggle_reg;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire [31:0]bridge_gray_source_id;
  wire [7:0]bridge_gray_tdata;
  wire bridge_gray_tlast;
  wire bridge_gray_tuser;
  wire bridge_n_67;
  wire bridge_n_83;
  wire bridge_n_85;
  wire bridge_n_86;
  wire bridge_n_87;
  wire bridge_n_88;
  wire bridge_n_89;
  wire bridge_n_90;
  wire bridge_n_92;
  wire buffer_manager_n_34;
  wire buffer_manager_n_37;
  wire buffer_manager_n_38;
  wire buffer_manager_n_39;
  wire cam_pclk;
  wire capture_axi_sync;
  wire completed_buffer_valid_reg;
  wire completed_buffer_valid_reg_0;
  wire dst_pulse_reg;
  wire [0:0]dst_pulse_reg_0;
  wire fifo_overflow_pulse;
  wire fifo_overflow_pulse_reg;
  wire fifo_overflow_pulse_reg_0;
  wire fifo_overflow_sticky_reg;
  wire fifo_overflow_sticky_reg_0;
  wire frame_done;
  wire frame_good;
  wire [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  wire [7:0]\gen_wr_a.gen_word_narrow.mem_reg_0 ;
  wire gray_done;
  wire gray_frame_done_pulse3_out;
  wire [7:0]gray_frame_done_pulse_reg;
  wire gray_frame_done_pulse_reg_0;
  wire [7:0]\gray_line_count_reg[6] ;
  wire gray_post_m8_resync_n_0;
  wire gray_tap_commit;
  wire [7:0]gray_tap_data;
  wire gray_tap_eol;
  wire [31:0]gray_tap_frame_id;
  wire [31:0]gray_tap_source_id;
  wire gray_tap_valid;
  wire left_column_sum;
  wire m8_n_10;
  wire m8_n_13;
  wire m8_n_18;
  wire m8_n_19;
  wire m8_n_20;
  wire m8_n_21;
  wire m8_n_22;
  wire m8_source_id0;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire m_tuser_reg;
  wire out;
  wire px_valid;
  wire rgb_frame_done_pulse5_out;
  wire \rgb_line_count_reg[6] ;
  wire s_axis_tlast;
  wire [32:0]s_axis_tuser;
  wire [3:0]status;
  wire \syncstages_ff_reg[0] ;
  wire [3:0]x_count;
  wire x_count0;

  facebox_system_real_camera_source_0_0_wp3_dual_fifo_frame_bridge bridge
       (.A(m8_n_20),
        .D(D),
        .E(E),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2] ),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_1 ),
        .Q(Q),
        .abort_ack_sync_2_reg_0(abort_ack_sync_2_reg),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .abort_recovery_required_reg(status[0]),
        .abort_req_toggle_reg(abort_req_toggle_reg),
        .aclk(aclk),
        .cam_pclk(cam_pclk),
        .drop_active_reg(aresetn_0),
        .drop_active_reg_0(buffer_manager_n_38),
        .drop_active_reg_1(m8_n_13),
        .dst_pulse_reg(dst_pulse_reg),
        .dst_pulse_reg_0(dst_pulse_reg_0),
        .dst_pulse_reg_1(bridge_n_92),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_pulse_reg(fifo_overflow_pulse_reg),
        .fifo_overflow_pulse_reg_0(fifo_overflow_pulse_reg_0),
        .fifo_overflow_sticky_reg(fifo_overflow_sticky_reg),
        .fifo_overflow_sticky_reg_0(fifo_overflow_sticky_reg_0),
        .frame_done(frame_done),
        .frame_good(frame_good),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg (bridge_n_67),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 (bridge_n_83),
        .\gen_wr_a.gen_word_narrow.mem_reg (m_axis_tdata),
        .\gen_wr_a.gen_word_narrow.mem_reg_0 (m_axis_tlast),
        .\gen_wr_a.gen_word_narrow.mem_reg_0_0 (m8_source_id0),
        .\gen_wr_a.gen_word_narrow.mem_reg_0_1 (bridge_n_88),
        .\gen_wr_a.gen_word_narrow.mem_reg_0_2 ({bridge_n_89,bridge_n_90}),
        .\gen_wr_a.gen_word_narrow.mem_reg_0_3 (\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_1 (m_axis_tuser),
        .\gen_wr_a.gen_word_narrow.mem_reg_1_0 ({bridge_n_85,bridge_n_86,bridge_n_87}),
        .\gen_wr_a.gen_word_narrow.mem_reg_2 (\gen_wr_a.gen_word_narrow.mem_reg ),
        .gray_done(gray_done),
        .\gray_line_count_reg[0] (m8_n_10),
        .m_axis_tdata(bridge_gray_tdata),
        .m_axis_tlast(bridge_gray_tlast),
        .m_axis_tuser({bridge_gray_source_id,bridge_gray_tuser}),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tvalid_0(buffer_manager_n_39),
        .out(out),
        .px_valid(px_valid),
        .rgb_done_reg(buffer_manager_n_34),
        .rgb_done_reg_0(m8_n_21),
        .rgb_frame_done_pulse5_out(rgb_frame_done_pulse5_out),
        .\rgb_line_count_reg[6] (\rgb_line_count_reg[6] ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .status(status[2:1]),
        .\syncstages_ff_reg[0] (\syncstages_ff_reg[0] ),
        .x_count0(x_count0),
        .\x_count_reg[4] (x_count),
        .\y_count_reg[0] (left_column_sum),
        .\y_count_reg[1] ({m8_n_18,m8_n_19}));
  facebox_system_real_camera_source_0_0_triple_buffer_commit_manager buffer_manager
       (.abort_recovery_required_reg_0(status[0]),
        .abort_recovery_required_reg_1(bridge_n_92),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .capture_axi_sync(capture_axi_sync),
        .completed_buffer_valid_reg_0(completed_buffer_valid_reg),
        .completed_buffer_valid_reg_1(completed_buffer_valid_reg_0),
        .frame_active_reg_0(buffer_manager_n_34),
        .frame_active_reg_1(dst_pulse_reg),
        .gray_done(gray_done),
        .gray_done_reg_0(buffer_manager_n_37),
        .gray_tap_commit(gray_tap_commit),
        .gray_tap_frame_id(gray_tap_frame_id),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0(buffer_manager_n_38),
        .rgb_done_reg_0(buffer_manager_n_39),
        .rgb_started_reg_0(m8_n_21),
        .rgb_started_reg_1(bridge_n_67),
        .status(status[3]));
  facebox_system_real_camera_source_0_0_axis_frame_resync__parameterized0 gray_post_m8_resync
       (.aclk(aclk),
        .drop_active_reg_0(gray_post_m8_resync_n_0),
        .drop_active_reg_1(m8_n_22),
        .drop_active_reg_2(aresetn_0));
  facebox_system_real_camera_source_0_0_gray_downscale_2x m8
       (.A(m8_n_20),
        .D({bridge_n_89,bridge_n_90}),
        .E(bridge_n_83),
        .Q(x_count),
        .aclk(aclk),
        .aresetn(aresetn),
        .capture_axi_sync(capture_axi_sync),
        .dst_pulse_reg(m8_n_21),
        .gray_frame_done_pulse3_out(gray_frame_done_pulse3_out),
        .gray_frame_done_pulse_reg(gray_frame_done_pulse_reg),
        .gray_frame_done_pulse_reg_0(gray_frame_done_pulse_reg_0),
        .\gray_line_count_reg[6] (\gray_line_count_reg[6] ),
        .gray_tap_data(gray_tap_data),
        .gray_tap_eol(gray_tap_eol),
        .gray_tap_valid(gray_tap_valid),
        .gray_tap_valid_0(dst_pulse_reg),
        .\left_column_sum_reg[8]_0 (left_column_sum),
        .m_axis_tdata(bridge_gray_tdata),
        .m_axis_tlast(bridge_gray_tlast),
        .m_axis_tuser(bridge_gray_tuser),
        .m_tlast_reg_0(m8_n_10),
        .m_tuser_reg_0(m_tuser_reg),
        .m_tuser_reg_1(m8_n_22),
        .m_tuser_reg_2(bridge_n_88),
        .m_tvalid_reg_0(m8_n_13),
        .m_tvalid_reg_1(gray_post_m8_resync_n_0),
        .m_tvalid_reg_2(buffer_manager_n_37),
        .x_count0(x_count0),
        .\x_count_reg[4]_0 ({bridge_n_85,bridge_n_86,bridge_n_87}),
        .\y_count_reg[1]_0 ({m8_n_18,m8_n_19}),
        .\y_count_reg[8]_0 (aresetn_0));
  FDCE \m8_source_id_reg[0] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[0]),
        .Q(gray_tap_source_id[0]));
  FDCE \m8_source_id_reg[10] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[10]),
        .Q(gray_tap_source_id[10]));
  FDCE \m8_source_id_reg[11] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[11]),
        .Q(gray_tap_source_id[11]));
  FDCE \m8_source_id_reg[12] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[12]),
        .Q(gray_tap_source_id[12]));
  FDCE \m8_source_id_reg[13] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[13]),
        .Q(gray_tap_source_id[13]));
  FDCE \m8_source_id_reg[14] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[14]),
        .Q(gray_tap_source_id[14]));
  FDCE \m8_source_id_reg[15] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[15]),
        .Q(gray_tap_source_id[15]));
  FDCE \m8_source_id_reg[16] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[16]),
        .Q(gray_tap_source_id[16]));
  FDCE \m8_source_id_reg[17] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[17]),
        .Q(gray_tap_source_id[17]));
  FDCE \m8_source_id_reg[18] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[18]),
        .Q(gray_tap_source_id[18]));
  FDCE \m8_source_id_reg[19] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[19]),
        .Q(gray_tap_source_id[19]));
  FDCE \m8_source_id_reg[1] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[1]),
        .Q(gray_tap_source_id[1]));
  FDCE \m8_source_id_reg[20] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[20]),
        .Q(gray_tap_source_id[20]));
  FDCE \m8_source_id_reg[21] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[21]),
        .Q(gray_tap_source_id[21]));
  FDCE \m8_source_id_reg[22] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[22]),
        .Q(gray_tap_source_id[22]));
  FDCE \m8_source_id_reg[23] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[23]),
        .Q(gray_tap_source_id[23]));
  FDCE \m8_source_id_reg[24] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[24]),
        .Q(gray_tap_source_id[24]));
  FDCE \m8_source_id_reg[25] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[25]),
        .Q(gray_tap_source_id[25]));
  FDCE \m8_source_id_reg[26] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[26]),
        .Q(gray_tap_source_id[26]));
  FDCE \m8_source_id_reg[27] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[27]),
        .Q(gray_tap_source_id[27]));
  FDCE \m8_source_id_reg[28] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[28]),
        .Q(gray_tap_source_id[28]));
  FDCE \m8_source_id_reg[29] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[29]),
        .Q(gray_tap_source_id[29]));
  FDCE \m8_source_id_reg[2] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[2]),
        .Q(gray_tap_source_id[2]));
  FDCE \m8_source_id_reg[30] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[30]),
        .Q(gray_tap_source_id[30]));
  FDCE \m8_source_id_reg[31] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[31]),
        .Q(gray_tap_source_id[31]));
  FDCE \m8_source_id_reg[3] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[3]),
        .Q(gray_tap_source_id[3]));
  FDCE \m8_source_id_reg[4] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[4]),
        .Q(gray_tap_source_id[4]));
  FDCE \m8_source_id_reg[5] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[5]),
        .Q(gray_tap_source_id[5]));
  FDCE \m8_source_id_reg[6] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[6]),
        .Q(gray_tap_source_id[6]));
  FDCE \m8_source_id_reg[7] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[7]),
        .Q(gray_tap_source_id[7]));
  FDCE \m8_source_id_reg[8] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[8]),
        .Q(gray_tap_source_id[8]));
  FDCE \m8_source_id_reg[9] 
       (.C(aclk),
        .CE(m8_source_id0),
        .CLR(aresetn_0),
        .D(bridge_gray_source_id[9]),
        .Q(gray_tap_source_id[9]));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[2] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\dest_graysync_ff[2] [6]),
        .I2(\dest_graysync_ff[2] [8]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .I5(\dest_graysync_ff[2] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [8]),
        .I4(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[2] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\dest_graysync_ff[2] [6]),
        .I2(\dest_graysync_ff[2] [8]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .I5(\dest_graysync_ff[2] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [8]),
        .I4(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[2] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\dest_graysync_ff[2] [6]),
        .I2(\dest_graysync_ff[2] [8]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .I5(\dest_graysync_ff[2] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [8]),
        .I4(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[2] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [3]),
        .I4(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\dest_graysync_ff[2] [6]),
        .I2(\dest_graysync_ff[2] [8]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .I5(\dest_graysync_ff[2] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [8]),
        .I4(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[4] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[4] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [0]),
        .Q(\dest_graysync_ff[4] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [10]),
        .Q(\dest_graysync_ff[4] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [1]),
        .Q(\dest_graysync_ff[4] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [2]),
        .Q(\dest_graysync_ff[4] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [3]),
        .Q(\dest_graysync_ff[4] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [4]),
        .Q(\dest_graysync_ff[4] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [5]),
        .Q(\dest_graysync_ff[4] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [6]),
        .Q(\dest_graysync_ff[4] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [7]),
        .Q(\dest_graysync_ff[4] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [8]),
        .Q(\dest_graysync_ff[4] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [9]),
        .Q(\dest_graysync_ff[4] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[4] [0]),
        .I1(\dest_graysync_ff[4] [2]),
        .I2(\dest_graysync_ff[4] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[4] [3]),
        .I5(\dest_graysync_ff[4] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[4] [1]),
        .I1(\dest_graysync_ff[4] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[4] [4]),
        .I4(\dest_graysync_ff[4] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[4] [2]),
        .I1(\dest_graysync_ff[4] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[4] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[4] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[4] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[4] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[4] [5]),
        .I1(\dest_graysync_ff[4] [7]),
        .I2(\dest_graysync_ff[4] [9]),
        .I3(\dest_graysync_ff[4] [10]),
        .I4(\dest_graysync_ff[4] [8]),
        .I5(\dest_graysync_ff[4] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[4] [6]),
        .I1(\dest_graysync_ff[4] [8]),
        .I2(\dest_graysync_ff[4] [10]),
        .I3(\dest_graysync_ff[4] [9]),
        .I4(\dest_graysync_ff[4] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[4] [7]),
        .I1(\dest_graysync_ff[4] [9]),
        .I2(\dest_graysync_ff[4] [10]),
        .I3(\dest_graysync_ff[4] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[4] [8]),
        .I1(\dest_graysync_ff[4] [10]),
        .I2(\dest_graysync_ff[4] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[4] [9]),
        .I1(\dest_graysync_ff[4] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized0__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[4] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[4] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [0]),
        .Q(\dest_graysync_ff[4] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [10]),
        .Q(\dest_graysync_ff[4] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [1]),
        .Q(\dest_graysync_ff[4] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [2]),
        .Q(\dest_graysync_ff[4] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [3]),
        .Q(\dest_graysync_ff[4] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [4]),
        .Q(\dest_graysync_ff[4] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [5]),
        .Q(\dest_graysync_ff[4] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [6]),
        .Q(\dest_graysync_ff[4] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [7]),
        .Q(\dest_graysync_ff[4] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [8]),
        .Q(\dest_graysync_ff[4] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [9]),
        .Q(\dest_graysync_ff[4] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[4] [0]),
        .I1(\dest_graysync_ff[4] [2]),
        .I2(\dest_graysync_ff[4] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[4] [3]),
        .I5(\dest_graysync_ff[4] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[4] [1]),
        .I1(\dest_graysync_ff[4] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[4] [4]),
        .I4(\dest_graysync_ff[4] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[4] [2]),
        .I1(\dest_graysync_ff[4] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[4] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[4] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[4] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[4] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[4] [5]),
        .I1(\dest_graysync_ff[4] [7]),
        .I2(\dest_graysync_ff[4] [9]),
        .I3(\dest_graysync_ff[4] [10]),
        .I4(\dest_graysync_ff[4] [8]),
        .I5(\dest_graysync_ff[4] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[4] [6]),
        .I1(\dest_graysync_ff[4] [8]),
        .I2(\dest_graysync_ff[4] [10]),
        .I3(\dest_graysync_ff[4] [9]),
        .I4(\dest_graysync_ff[4] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[4] [7]),
        .I1(\dest_graysync_ff[4] [9]),
        .I2(\dest_graysync_ff[4] [10]),
        .I3(\dest_graysync_ff[4] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[4] [8]),
        .I1(\dest_graysync_ff[4] [10]),
        .I2(\dest_graysync_ff[4] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[4] [9]),
        .I1(\dest_graysync_ff[4] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[2] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[2] [3]),
        .I5(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[2] [4]),
        .I4(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[2] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [10]),
        .I4(\dest_graysync_ff[2] [8]),
        .I5(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [10]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [10]),
        .I3(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [10]),
        .I2(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[2] [9]),
        .I1(\dest_graysync_ff[2] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized1__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[2] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[2] [3]),
        .I5(\dest_graysync_ff[2] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[2] [4]),
        .I4(\dest_graysync_ff[2] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[2] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[2] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[2] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[2] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[2] [5]),
        .I1(\dest_graysync_ff[2] [7]),
        .I2(\dest_graysync_ff[2] [9]),
        .I3(\dest_graysync_ff[2] [10]),
        .I4(\dest_graysync_ff[2] [8]),
        .I5(\dest_graysync_ff[2] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[2] [6]),
        .I1(\dest_graysync_ff[2] [8]),
        .I2(\dest_graysync_ff[2] [10]),
        .I3(\dest_graysync_ff[2] [9]),
        .I4(\dest_graysync_ff[2] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[2] [7]),
        .I1(\dest_graysync_ff[2] [9]),
        .I2(\dest_graysync_ff[2] [10]),
        .I3(\dest_graysync_ff[2] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[2] [8]),
        .I1(\dest_graysync_ff[2] [10]),
        .I2(\dest_graysync_ff[2] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[2] [9]),
        .I1(\dest_graysync_ff[2] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__10
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__6
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__7
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__8
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__9
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn
   (S,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[10] ,
    \count_value_i_reg[7] ,
    Q,
    \count_value_i_reg[0]_1 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_2 ,
    rd_clk);
  output [2:0]S;
  output [0:0]\count_value_i_reg[0]_0 ;
  output [2:0]\count_value_i_reg[10] ;
  output [3:0]\count_value_i_reg[7] ;
  input [9:0]Q;
  input [1:0]\count_value_i_reg[0]_1 ;
  input rd_en;
  input ram_empty_i;
  input \count_value_i_reg[0]_2 ;
  input rd_clk;

  wire [9:0]Q;
  wire [2:0]S;
  wire [1:1]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[0]_2 ;
  wire [2:0]\count_value_i_reg[10] ;
  wire [3:0]\count_value_i_reg[7] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_1 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_2 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(\count_value_i_reg[0]_1 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_2 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_1 [1]),
        .I4(ram_empty_i),
        .I5(count_value_i),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(Q[0]),
        .I1(count_value_i),
        .I2(\count_value_i_reg[0]_0 ),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [1]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [3]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [1]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn_6
   (S,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[10] ,
    \count_value_i_reg[7] ,
    Q,
    \count_value_i_reg[0]_1 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_2 ,
    rd_clk);
  output [2:0]S;
  output [0:0]\count_value_i_reg[0]_0 ;
  output [2:0]\count_value_i_reg[10] ;
  output [3:0]\count_value_i_reg[7] ;
  input [9:0]Q;
  input [1:0]\count_value_i_reg[0]_1 ;
  input rd_en;
  input ram_empty_i;
  input \count_value_i_reg[0]_2 ;
  input rd_clk;

  wire [9:0]Q;
  wire [2:0]S;
  wire [1:1]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[0]_2 ;
  wire [2:0]\count_value_i_reg[10] ;
  wire [3:0]\count_value_i_reg[7] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_1 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_2 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(\count_value_i_reg[0]_1 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_2 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[0]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_1 [1]),
        .I4(ram_empty_i),
        .I5(count_value_i),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(Q[0]),
        .I1(count_value_i),
        .I2(\count_value_i_reg[0]_0 ),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [1]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[10] [0]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [3]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [2]));
  LUT3 #(
    .INIT(8'h56)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(count_value_i),
        .O(\count_value_i_reg[7] [1]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0
   (Q,
    src_in_bin,
    \count_value_i_reg[9]_0 ,
    S,
    \src_gray_ff_reg[10] ,
    \src_gray_ff_reg[10]_0 ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_i_3 ,
    \count_value_i_reg[10]_0 ,
    E,
    rd_clk);
  output [10:0]Q;
  output [10:0]src_in_bin;
  output [0:0]\count_value_i_reg[9]_0 ;
  input [2:0]S;
  input [3:0]\src_gray_ff_reg[10] ;
  input [2:0]\src_gray_ff_reg[10]_0 ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[3]_0 ;
  input [0:0]\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3 ;
  input \count_value_i_reg[10]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire [2:0]S;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire \count_value_i[3]_i_3__0_n_0 ;
  wire \count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[10]_i_1__0_n_2 ;
  wire \count_value_i_reg[10]_i_1__0_n_3 ;
  wire \count_value_i_reg[10]_i_1__0_n_5 ;
  wire \count_value_i_reg[10]_i_1__0_n_6 ;
  wire \count_value_i_reg[10]_i_1__0_n_7 ;
  wire [1:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 ;
  wire [0:0]\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\src_gray_ff_reg[10] ;
  wire [2:0]\src_gray_ff_reg[10]_0 ;
  wire [10:0]src_in_bin;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED ;
  wire [3:2]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h00FD)) 
    \count_value_i[3]_i_2__0 
       (.I0(\count_value_i_reg[3]_0 [1]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_3__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[3]_0 [0]),
        .I3(\count_value_i_reg[3]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[10]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1__0_n_2 ,\count_value_i_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1__0_n_5 ,\count_value_i_reg[10]_i_1__0_n_6 ,\count_value_i_reg[10]_i_1__0_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_value_i[3]_i_2__0_n_0 }),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ),
        .CO({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED [3:2],\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[9:8]}),
        .O({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED [3],src_in_bin[10:8]}),
        .S({1'b0,\src_gray_ff_reg[10]_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14 
       (.I0(Q[0]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(src_in_bin[7:4]),
        .S(\src_gray_ff_reg[10] ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.CI(1'b0),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(src_in_bin[3:0]),
        .S({S,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(Q[9]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3 ),
        .O(\count_value_i_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_10
   (Q,
    DI,
    S,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [10:0]Q;
  input [0:0]DI;
  input [0:0]S;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [0:0]DI;
  wire [10:0]Q;
  wire [0:0]S;
  wire \count_value_i_reg[10]_i_1_n_2 ;
  wire \count_value_i_reg[10]_i_1_n_3 ;
  wire \count_value_i_reg[10]_i_1_n_5 ;
  wire \count_value_i_reg[10]_i_1_n_6 ;
  wire \count_value_i_reg[10]_i_1_n_7 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_5 ),
        .Q(Q[10]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[10]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1_n_2 ,\count_value_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1_n_5 ,\count_value_i_reg[10]_i_1_n_6 ,\count_value_i_reg[10]_i_1_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_7 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_6 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_2
   (Q,
    DI,
    S,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [10:0]Q;
  input [0:0]DI;
  input [0:0]S;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [0:0]DI;
  wire [10:0]Q;
  wire [0:0]S;
  wire \count_value_i_reg[10]_i_1_n_2 ;
  wire \count_value_i_reg[10]_i_1_n_3 ;
  wire \count_value_i_reg[10]_i_1_n_5 ;
  wire \count_value_i_reg[10]_i_1_n_6 ;
  wire \count_value_i_reg[10]_i_1_n_7 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_5 ),
        .Q(Q[10]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[10]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1_n_2 ,\count_value_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1_n_5 ,\count_value_i_reg[10]_i_1_n_6 ,\count_value_i_reg[10]_i_1_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(wrst_busy));
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_7 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i_reg[10]_i_1_n_6 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_7
   (Q,
    src_in_bin,
    \count_value_i_reg[9]_0 ,
    S,
    \src_gray_ff_reg[10] ,
    \src_gray_ff_reg[10]_0 ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_i_3 ,
    \count_value_i_reg[10]_0 ,
    E,
    rd_clk);
  output [10:0]Q;
  output [10:0]src_in_bin;
  output [0:0]\count_value_i_reg[9]_0 ;
  input [2:0]S;
  input [3:0]\src_gray_ff_reg[10] ;
  input [2:0]\src_gray_ff_reg[10]_0 ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[3]_0 ;
  input [0:0]\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3 ;
  input \count_value_i_reg[10]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire [2:0]S;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire \count_value_i[3]_i_3__0_n_0 ;
  wire \count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[10]_i_1__0_n_2 ;
  wire \count_value_i_reg[10]_i_1__0_n_3 ;
  wire \count_value_i_reg[10]_i_1__0_n_5 ;
  wire \count_value_i_reg[10]_i_1__0_n_6 ;
  wire \count_value_i_reg[10]_i_1__0_n_7 ;
  wire [1:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 ;
  wire [0:0]\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\src_gray_ff_reg[10] ;
  wire [2:0]\src_gray_ff_reg[10]_0 ;
  wire [10:0]src_in_bin;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED ;
  wire [3:2]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h00FD)) 
    \count_value_i[3]_i_2__0 
       (.I0(\count_value_i_reg[3]_0 [1]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_3__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[3]_0 [0]),
        .I3(\count_value_i_reg[3]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[10]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1__0_n_2 ,\count_value_i_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1__0_n_5 ,\count_value_i_reg[10]_i_1__0_n_6 ,\count_value_i_reg[10]_i_1__0_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_value_i[3]_i_2__0_n_0 }),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_0 ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ),
        .CO({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_CO_UNCONNECTED [3:2],\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[9:8]}),
        .O({\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1_O_UNCONNECTED [3],src_in_bin[10:8]}),
        .S({1'b0,\src_gray_ff_reg[10]_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14 
       (.I0(Q[0]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 ),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.CI(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(src_in_bin[7:4]),
        .S(\src_gray_ff_reg[10] ));
  CARRY4 \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.CI(1'b0),
        .CO({\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_0 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_1 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_2 ,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(src_in_bin[3:0]),
        .S({S,\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(Q[9]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3 ),
        .O(\count_value_i_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1
   (Q,
    E,
    S,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_i_2 ,
    \count_value_i_reg[0]_1 ,
    rd_clk);
  output [8:0]Q;
  output [0:0]E;
  output [0:0]S;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2 ;
  input \count_value_i_reg[0]_1 ;
  input rd_clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[0]_1 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(E),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\count_value_i_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2 ),
        .O(S));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_11
   (Q,
    D,
    \count_value_i_reg[9]_0 ,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  output [0:0]\count_value_i_reg[9]_0 ;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [10:10]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(wr_pntr_plus1_pf),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .O(\count_value_i_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [8]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [3:2],D[8:7]}),
        .S({1'b0,1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(wr_pntr_plus1_pf_carry),
        .DI(Q[3:0]),
        .O({D[2:0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[6:3]),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_3
   (Q,
    D,
    \count_value_i_reg[9]_0 ,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  output [0:0]\count_value_i_reg[9]_0 ;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [10:10]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(wr_pntr_plus1_pf),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .O(\count_value_i_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [8]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [3:2],D[8:7]}),
        .S({1'b0,1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(wr_pntr_plus1_pf_carry),
        .DI(Q[3:0]),
        .O({D[2:0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[6:3]),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_8
   (Q,
    E,
    S,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_i_2 ,
    \count_value_i_reg[0]_1 ,
    rd_clk);
  output [8:0]Q;
  output [0:0]E;
  output [0:0]S;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2 ;
  input \count_value_i_reg[0]_1 ;
  input rd_clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[0]_1 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(E),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\count_value_i_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2 ),
        .O(S));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized2
   (Q,
    S,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ,
    wr_clk);
  output [8:0]Q;
  output [0:0]S;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ;
  input wr_clk;

  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized2_12
   (Q,
    S,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ,
    wr_clk);
  output [8:0]Q;
  output [0:0]S;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ;
  input wr_clk;

  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 ),
        .O(S));
endmodule

(* AXIS_DATA_WIDTH = "46" *) (* AXIS_FINAL_DATA_WIDTH = "46" *) (* CDC_SYNC_STAGES = "3" *) 
(* CLOCKING_MODE = "independent_clock" *) (* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_AXIS = "16'b0001000000000010" *) 
(* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000010" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) (* EN_ALMOST_FULL_INT = "1'b0" *) 
(* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "1024" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* LOG_DEPTH_AXIS = "10" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "960" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RELATED_CLOCKS = "0" *) 
(* TDATA_OFFSET = "8" *) (* TDATA_WIDTH = "8" *) (* TDEST_OFFSET = "12" *) 
(* TDEST_WIDTH = "1" *) (* TID_OFFSET = "11" *) (* TID_WIDTH = "1" *) 
(* TKEEP_OFFSET = "10" *) (* TSTRB_OFFSET = "9" *) (* TUSER_MAX_WIDTH = "4083" *) 
(* TUSER_OFFSET = "45" *) (* TUSER_WIDTH = "33" *) (* USE_ADV_FEATURES = "825241650" *) 
(* USE_ADV_FEATURES_INT = "825241650" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [32:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [32:0]m_axis_tuser;
  output prog_full_axis;
  output [10:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [10:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_aclk;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [32:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tstrb;
  wire [32:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign rd_data_count_axis[10] = \<const0> ;
  assign rd_data_count_axis[9] = \<const0> ;
  assign rd_data_count_axis[8] = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[10] = \<const0> ;
  assign wr_data_count_axis[9] = \<const0> ;
  assign wr_data_count_axis[8] = \<const0> ;
  assign wr_data_count_axis[7] = \<const0> ;
  assign wr_data_count_axis[6] = \<const0> ;
  assign wr_data_count_axis[5] = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__6 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000010" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "47104" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "958" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "8" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "960" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "46" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241650" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "46" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  facebox_system_real_camera_source_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(prog_full_axis),
        .rd_clk(m_aclk),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "24" *) (* AXIS_FINAL_DATA_WIDTH = "24" *) (* CDC_SYNC_STAGES = "3" *) 
(* CLOCKING_MODE = "independent_clock" *) (* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_AXIS = "16'b0001000000000010" *) 
(* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000010" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) (* EN_ALMOST_FULL_INT = "1'b0" *) 
(* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "1024" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* LOG_DEPTH_AXIS = "10" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "960" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RELATED_CLOCKS = "0" *) 
(* TDATA_OFFSET = "16" *) (* TDATA_WIDTH = "16" *) (* TDEST_OFFSET = "22" *) 
(* TDEST_WIDTH = "1" *) (* TID_OFFSET = "21" *) (* TID_WIDTH = "1" *) 
(* TKEEP_OFFSET = "20" *) (* TSTRB_OFFSET = "18" *) (* TUSER_MAX_WIDTH = "4073" *) 
(* TUSER_OFFSET = "23" *) (* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825241650" *) 
(* USE_ADV_FEATURES_INT = "825241650" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_axis__parameterized0
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tstrb;
  output [1:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [10:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [10:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_aclk;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [1:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_full_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign rd_data_count_axis[10] = \<const0> ;
  assign rd_data_count_axis[9] = \<const0> ;
  assign rd_data_count_axis[8] = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[10] = \<const0> ;
  assign wr_data_count_axis[9] = \<const0> ;
  assign wr_data_count_axis[8] = \<const0> ;
  assign wr_data_count_axis[7] = \<const0> ;
  assign wr_data_count_axis[6] = \<const0> ;
  assign wr_data_count_axis[5] = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__9 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000010" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "24576" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "958" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "8" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "960" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "24" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241650" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "24" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  facebox_system_real_camera_source_0_0_xpm_fifo_base__parameterized0 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(prog_full_axis),
        .rd_clk(m_aclk),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001000000000010" *) 
(* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) 
(* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "47104" *) (* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "958" *) 
(* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "8" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "960" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) 
(* READ_DATA_WIDTH = "46" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241650" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "46" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) 
(* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [45:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [45:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [0:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [10:2]diff_pntr_pf_q;
  wire [10:2]diff_pntr_pf_q0;
  wire [45:0]din;
  wire [45:0]dout;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_n_10 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_10 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_fwft.rdpp1_inst_n_6 ;
  wire \gen_fwft.rdpp1_inst_n_7 ;
  wire \gen_fwft.rdpp1_inst_n_8 ;
  wire \gen_fwft.rdpp1_inst_n_9 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ;
  wire [1:0]next_fwft_state__0;
  wire [10:0]p_1_out;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire [9:0]rd_pntr_wr;
  wire [9:0]rd_pntr_wr_cdc;
  wire [10:0]rd_pntr_wr_cdc_dc;
  wire rdp_inst_n_0;
  wire rdp_inst_n_22;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire [9:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [9:0]wr_pntr_rd_cdc;
  wire [10:0]wr_pntr_rd_cdc_dc;
  wire wrpp1_inst_n_18;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_0;
  wire xpm_fifo_rst_inst_n_3;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [45:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_0));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_0));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized1__2 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(p_1_out));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__5 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_4 \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .S(wrpp2_inst_n_9),
        .d_out_reg(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg (wrpp1_inst_n_18),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 (wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[2] (\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_5 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(curr_fwft_state),
        .S(rdpp1_inst_n_10),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdp_inst_n_22),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 (rd_pntr_ext[8:0]),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (xpm_fifo_rst_inst_n_0),
        .\reg_out_i_reg[9]_0 (\gen_cdc_pntr.wpr_gray_reg_n_1 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized0__2 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__4 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[9:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_0));
  facebox_system_real_camera_source_0_0_xpm_counter_updn_6 \gen_fwft.rdpp1_inst 
       (.Q({rdp_inst_n_0,rd_pntr_ext[9:1]}),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[0]_0 (count_value_i),
        .\count_value_i_reg[0]_1 (curr_fwft_state),
        .\count_value_i_reg[0]_2 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[10] ({\gen_fwft.rdpp1_inst_n_4 ,\gen_fwft.rdpp1_inst_n_5 ,\gen_fwft.rdpp1_inst_n_6 }),
        .\count_value_i_reg[7] ({\gen_fwft.rdpp1_inst_n_7 ,\gen_fwft.rdpp1_inst_n_8 ,\gen_fwft.rdpp1_inst_n_9 ,\gen_fwft.rdpp1_inst_n_10 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .Q(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .Q(full_n),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(diff_pntr_pf_q[9]),
        .I1(diff_pntr_pf_q[8]),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ),
        .I3(diff_pntr_pf_q[10]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[7]),
        .I1(diff_pntr_pf_q[4]),
        .I2(diff_pntr_pf_q[3]),
        .I3(diff_pntr_pf_q[6]),
        .I4(diff_pntr_pf_q[5]),
        .I5(diff_pntr_pf_q[2]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_0));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "46" *) 
  (* BYTE_WRITE_WIDTH_B = "46" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "45" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "46" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "47104" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "46" *) 
  (* P_MIN_WIDTH_DATA_A = "46" *) 
  (* P_MIN_WIDTH_DATA_B = "46" *) 
  (* P_MIN_WIDTH_DATA_ECC = "46" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "46" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "46" *) 
  (* P_WIDTH_COL_WRITE_B = "46" *) 
  (* READ_DATA_WIDTH_A = "46" *) 
  (* READ_DATA_WIDTH_B = "46" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "46" *) 
  (* WRITE_DATA_WIDTH_B = "46" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[9:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [45:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdpp1_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_0),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_7 rdp_inst
       (.E(rdpp1_inst_n_9),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[10]_0 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[3]_0 (curr_fwft_state),
        .\count_value_i_reg[9]_0 (rdp_inst_n_22),
        .\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 (count_value_i),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_3 (\gen_cdc_pntr.wpr_gray_reg_n_1 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[10] ({\gen_fwft.rdpp1_inst_n_7 ,\gen_fwft.rdpp1_inst_n_8 ,\gen_fwft.rdpp1_inst_n_9 ,\gen_fwft.rdpp1_inst_n_10 }),
        .\src_gray_ff_reg[10]_0 ({\gen_fwft.rdpp1_inst_n_4 ,\gen_fwft.rdpp1_inst_n_5 ,\gen_fwft.rdpp1_inst_n_6 }),
        .src_in_bin(p_1_out));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_8 rdpp1_inst
       (.E(rdpp1_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .S(rdpp1_inst_n_10),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_0),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_2 (\gen_cdc_pntr.wpr_gray_reg_n_1 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_bit_9 rst_d1_inst
       (.Q(wr_pntr_ext[0]),
        .S(rst_d1_inst_n_2),
        .d_out_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_10 wrp_inst
       (.DI(xpm_fifo_rst_inst_n_3),
        .Q(wr_pntr_ext),
        .S(rst_d1_inst_n_2),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_11 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[6]_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (wrpp1_inst_n_18),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized2_12 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .S(wrpp2_inst_n_9),
        .\count_value_i_reg[6]_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 (rd_pntr_wr[9]),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_fifo_rst__xdcDup__1 xpm_fifo_rst_inst
       (.DI(xpm_fifo_rst_inst_n_3),
        .\count_value_i_reg[9] (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (xpm_fifo_rst_inst_n_0),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001000000000010" *) 
(* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) 
(* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "24576" *) (* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "958" *) 
(* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "8" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "960" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) 
(* READ_DATA_WIDTH = "24" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241650" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "24" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) 
(* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_base__parameterized0
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [23:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [23:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [0:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [10:2]diff_pntr_pf_q;
  wire [10:2]diff_pntr_pf_q0;
  wire [23:0]din;
  wire [23:0]dout;
  wire full_n;
  wire \gen_cdc_pntr.rpw_gray_reg_n_10 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_10 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_fwft.rdpp1_inst_n_6 ;
  wire \gen_fwft.rdpp1_inst_n_7 ;
  wire \gen_fwft.rdpp1_inst_n_8 ;
  wire \gen_fwft.rdpp1_inst_n_9 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ;
  wire [1:0]next_fwft_state__0;
  wire [10:0]p_1_out;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire [9:0]rd_pntr_wr;
  wire [9:0]rd_pntr_wr_cdc;
  wire [10:0]rd_pntr_wr_cdc_dc;
  wire rdp_inst_n_0;
  wire rdp_inst_n_22;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire [9:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [9:0]wr_pntr_rd_cdc;
  wire [10:0]wr_pntr_rd_cdc_dc;
  wire wrpp1_inst_n_18;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_0;
  wire xpm_fifo_rst_inst_n_3;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [23:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_0));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_0));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(p_1_out));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .S(wrpp2_inst_n_9),
        .d_out_reg(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg (wrpp1_inst_n_18),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 (wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[2] (\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_1 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(curr_fwft_state),
        .S(rdpp1_inst_n_10),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdp_inst_n_22),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 (rd_pntr_ext[8:0]),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (xpm_fifo_rst_inst_n_0),
        .\reg_out_i_reg[9]_0 (\gen_cdc_pntr.wpr_gray_reg_n_1 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_gray__6 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[9:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_0));
  facebox_system_real_camera_source_0_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.Q({rdp_inst_n_0,rd_pntr_ext[9:1]}),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[0]_0 (count_value_i),
        .\count_value_i_reg[0]_1 (curr_fwft_state),
        .\count_value_i_reg[0]_2 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[10] ({\gen_fwft.rdpp1_inst_n_4 ,\gen_fwft.rdpp1_inst_n_5 ,\gen_fwft.rdpp1_inst_n_6 }),
        .\count_value_i_reg[7] ({\gen_fwft.rdpp1_inst_n_7 ,\gen_fwft.rdpp1_inst_n_8 ,\gen_fwft.rdpp1_inst_n_9 ,\gen_fwft.rdpp1_inst_n_10 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .Q(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .Q(full_n),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(diff_pntr_pf_q[9]),
        .I1(diff_pntr_pf_q[8]),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ),
        .I3(diff_pntr_pf_q[10]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[7]),
        .I1(diff_pntr_pf_q[4]),
        .I2(diff_pntr_pf_q[3]),
        .I3(diff_pntr_pf_q[6]),
        .I4(diff_pntr_pf_q[5]),
        .I5(diff_pntr_pf_q[2]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_0));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "24" *) 
  (* BYTE_WRITE_WIDTH_B = "24" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "23" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "24" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "24576" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "24" *) 
  (* P_MIN_WIDTH_DATA_A = "24" *) 
  (* P_MIN_WIDTH_DATA_B = "24" *) 
  (* P_MIN_WIDTH_DATA_ECC = "24" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "24" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "24" *) 
  (* P_WIDTH_COL_WRITE_B = "24" *) 
  (* READ_DATA_WIDTH_A = "24" *) 
  (* READ_DATA_WIDTH_B = "24" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "24" *) 
  (* WRITE_DATA_WIDTH_B = "24" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_memory_base__parameterized0 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[9:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [23:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdpp1_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_0),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0 rdp_inst
       (.E(rdpp1_inst_n_9),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[10]_0 (xpm_fifo_rst_inst_n_0),
        .\count_value_i_reg[3]_0 (curr_fwft_state),
        .\count_value_i_reg[9]_0 (rdp_inst_n_22),
        .\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3_0 (count_value_i),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_3 (\gen_cdc_pntr.wpr_gray_reg_n_1 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[10] ({\gen_fwft.rdpp1_inst_n_7 ,\gen_fwft.rdpp1_inst_n_8 ,\gen_fwft.rdpp1_inst_n_9 ,\gen_fwft.rdpp1_inst_n_10 }),
        .\src_gray_ff_reg[10]_0 ({\gen_fwft.rdpp1_inst_n_4 ,\gen_fwft.rdpp1_inst_n_5 ,\gen_fwft.rdpp1_inst_n_6 }),
        .src_in_bin(p_1_out));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdpp1_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .S(rdpp1_inst_n_10),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_0),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_2 (\gen_cdc_pntr.wpr_gray_reg_n_1 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  facebox_system_real_camera_source_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(wr_pntr_ext[0]),
        .S(rst_d1_inst_n_2),
        .d_out_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized0_2 wrp_inst
       (.DI(xpm_fifo_rst_inst_n_3),
        .Q(wr_pntr_ext),
        .S(rst_d1_inst_n_2),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized1_3 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[6]_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (wrpp1_inst_n_18),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_counter_updn__parameterized2 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8}),
        .S(wrpp2_inst_n_9),
        .\count_value_i_reg[6]_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 (rd_pntr_wr[9]),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  facebox_system_real_camera_source_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.DI(xpm_fifo_rst_inst_n_3),
        .\count_value_i_reg[9] (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (xpm_fifo_rst_inst_n_0),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_bit
   (rst_d1,
    d_out_reg_0,
    S,
    wrst_busy,
    wr_clk,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    rst,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ,
    prog_full,
    wr_en,
    Q);
  output rst_d1;
  output d_out_reg_0;
  output [0:0]S;
  input wrst_busy;
  input wr_clk;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input rst;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ;
  input prog_full;
  input wr_en;
  input [0:0]Q;

  wire [0:0]Q;
  wire [0:0]S;
  wire d_out_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_3 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ),
        .I3(wr_en),
        .I4(Q),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ),
        .I4(prog_full),
        .O(d_out_reg_0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_bit_9
   (rst_d1,
    d_out_reg_0,
    S,
    wrst_busy,
    wr_clk,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    rst,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ,
    prog_full,
    wr_en,
    Q);
  output rst_d1;
  output d_out_reg_0;
  output [0:0]S;
  input wrst_busy;
  input wr_clk;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input rst;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ;
  input prog_full;
  input wr_en;
  input [0:0]Q;

  wire [0:0]Q;
  wire [0:0]S;
  wire d_out_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_3 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ),
        .I3(wr_en),
        .I4(Q),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg_0 ),
        .I4(prog_full),
        .O(d_out_reg_0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec
   (Q,
    \syncstages_ff_reg[2] ,
    d_out_reg,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ,
    S,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    wr_pntr_plus1_pf_carry,
    rst,
    rst_d1,
    wrst_busy,
    D,
    wr_clk);
  output [9:0]Q;
  output \syncstages_ff_reg[2] ;
  output d_out_reg;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ;
  input [0:0]S;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  input wr_pntr_plus1_pf_carry;
  input rst;
  input rst_d1;
  input wrst_busy;
  input [9:0]D;
  input wr_clk;

  wire [9:0]D;
  wire [9:0]Q;
  wire [0:0]S;
  wire d_out_reg;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 ;
  wire going_full0;
  wire leaving_full;
  wire rst;
  wire rst_d1;
  wire \syncstages_ff_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'hF800F8F8)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(going_full0),
        .I2(leaving_full),
        .I3(rst),
        .I4(rst_d1),
        .O(\syncstages_ff_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h222F2F2F)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(rst_d1),
        .I1(rst),
        .I2(leaving_full),
        .I3(going_full0),
        .I4(wr_pntr_plus1_pf_carry),
        .O(d_out_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2 
       (.CI(1'b0),
        .CO({leaving_full,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_1 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 }));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 
       (.CI(1'b0),
        .CO({going_full0,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED [3:0]),
        .S({S,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_1
   (ram_empty_i0,
    \reg_out_i_reg[9]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ,
    S,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [0:0]\reg_out_i_reg[9]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  input [0:0]S;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input \reg_out_i_reg[0]_0 ;
  input [9:0]D;
  input rd_clk;

  wire [9:0]D;
  wire [1:0]Q;
  wire [0:0]S;
  wire \gen_pf_ic_rc.ram_empty_i_i_10_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_11_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_9_n_0 ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 ;
  wire going_empty0;
  wire leaving_empty;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [0:0]\reg_out_i_reg[9]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire \reg_out_i_reg_n_0_[5] ;
  wire \reg_out_i_reg_n_0_[6] ;
  wire \reg_out_i_reg_n_0_[7] ;
  wire \reg_out_i_reg_n_0_[8] ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00FD0000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(going_empty0),
        .I5(leaving_empty),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_10 
       (.I0(\reg_out_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [5]),
        .I3(\reg_out_i_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [4]),
        .I5(\reg_out_i_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_11 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg_n_0_[6] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [8]),
        .I3(\reg_out_i_reg_n_0_[8] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [7]),
        .I5(\reg_out_i_reg_n_0_[7] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [5]),
        .I3(\reg_out_i_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [4]),
        .I5(\reg_out_i_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_9 
       (.I0(\reg_out_i_reg_n_0_[6] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [8]),
        .I3(\reg_out_i_reg_n_0_[8] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [7]),
        .I5(\reg_out_i_reg_n_0_[7] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({going_empty0,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({S,\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_7_n_0 }));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_3 
       (.CI(1'b0),
        .CO({leaving_empty,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pf_ic_rc.ram_empty_i_reg ,\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_10_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg_n_0_[5] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg_n_0_[6] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg_n_0_[7] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\reg_out_i_reg_n_0_[8] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\reg_out_i_reg[9]_0 ),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_4
   (Q,
    \syncstages_ff_reg[2] ,
    d_out_reg,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ,
    S,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,
    wr_pntr_plus1_pf_carry,
    rst,
    rst_d1,
    wrst_busy,
    D,
    wr_clk);
  output [9:0]Q;
  output \syncstages_ff_reg[2] ;
  output d_out_reg;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ;
  input [0:0]S;
  input [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  input wr_pntr_plus1_pf_carry;
  input rst;
  input rst_d1;
  input wrst_busy;
  input [9:0]D;
  input wr_clk;

  wire [9:0]D;
  wire [9:0]Q;
  wire [0:0]S;
  wire d_out_reg;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire [0:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 ;
  wire going_full0;
  wire leaving_full;
  wire rst;
  wire rst_d1;
  wire \syncstages_ff_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hF800F8F8)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(going_full0),
        .I2(leaving_full),
        .I3(rst),
        .I4(rst_d1),
        .O(\syncstages_ff_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h222F2F2F)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(rst_d1),
        .I1(rst),
        .I2(leaving_full),
        .I3(going_full0),
        .I4(wr_pntr_plus1_pf_carry),
        .O(d_out_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2 
       (.CI(1'b0),
        .CO({leaving_full,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_1 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_5_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_6_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_7_n_0 }));
  CARRY4 \gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3 
       (.CI(1'b0),
        .CO({going_full0,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED [3:0]),
        .S({S,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_9_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_10_n_0 ,\gen_pf_ic_rc.gen_full_rst_val.ram_full_n_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_reg_vec_5
   (ram_empty_i0,
    \reg_out_i_reg[9]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ,
    S,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [0:0]\reg_out_i_reg[9]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  input [0:0]S;
  input [0:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input \reg_out_i_reg[0]_0 ;
  input [9:0]D;
  input rd_clk;

  wire [9:0]D;
  wire [1:0]Q;
  wire [0:0]S;
  wire \gen_pf_ic_rc.ram_empty_i_i_10_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_11_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_9_n_0 ;
  wire [0:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 ;
  wire going_empty0;
  wire leaving_empty;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [0:0]\reg_out_i_reg[9]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire \reg_out_i_reg_n_0_[5] ;
  wire \reg_out_i_reg_n_0_[6] ;
  wire \reg_out_i_reg_n_0_[7] ;
  wire \reg_out_i_reg_n_0_[8] ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00FD0000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(going_empty0),
        .I5(leaving_empty),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_10 
       (.I0(\reg_out_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [5]),
        .I3(\reg_out_i_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [4]),
        .I5(\reg_out_i_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_11 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg_n_0_[6] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [8]),
        .I3(\reg_out_i_reg_n_0_[8] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [7]),
        .I5(\reg_out_i_reg_n_0_[7] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [5]),
        .I3(\reg_out_i_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [4]),
        .I5(\reg_out_i_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [2]),
        .I3(\reg_out_i_reg_n_0_[2] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_2_0 [1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_9 
       (.I0(\reg_out_i_reg_n_0_[6] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [8]),
        .I3(\reg_out_i_reg_n_0_[8] ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [7]),
        .I5(\reg_out_i_reg_n_0_[7] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({going_empty0,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_1 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({S,\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_7_n_0 }));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_3 
       (.CI(1'b0),
        .CO({leaving_empty,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_1 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pf_ic_rc.ram_empty_i_reg ,\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_10_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg_n_0_[5] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg_n_0_[6] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg_n_0_[7] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\reg_out_i_reg_n_0_[8] ),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\reg_out_i_reg[9]_0 ),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    DI,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output wr_pntr_plus1_pf_carry;
  output [0:0]DI;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;

  wire [0:0]DI;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT4 #(
    .INIT(16'h0002)) 
    \count_value_i[3]_i_2 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__10 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module facebox_system_real_camera_source_0_0_xpm_fifo_rst__xdcDup__1
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    DI,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output wr_pntr_plus1_pf_carry;
  output [0:0]DI;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;

  wire [0:0]DI;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT4 #(
    .INIT(16'h0002)) 
    \count_value_i[3]_i_2 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__8 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  facebox_system_real_camera_source_0_0_xpm_cdc_sync_rst__7 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "46" *) (* BYTE_WRITE_WIDTH_B = "46" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "47104" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "46" *) 
(* P_MIN_WIDTH_DATA_A = "46" *) (* P_MIN_WIDTH_DATA_B = "46" *) (* P_MIN_WIDTH_DATA_ECC = "46" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "46" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "46" *) 
(* P_WIDTH_COL_WRITE_B = "46" *) (* READ_DATA_WIDTH_A = "46" *) (* READ_DATA_WIDTH_B = "46" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "46" *) (* WRITE_DATA_WIDTH_B = "46" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module facebox_system_real_camera_source_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [45:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [45:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [45:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [45:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [45:0]dina;
  wire [45:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED ;
  wire [15:10]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "47104" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI(dina[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(dina[35:32]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED [31:0]),
        .DOBDO(doutb[31:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(doutb[35:32]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "45" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "45" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "47104" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "36" *) 
  (* bram_slice_end = "45" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "45" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[45:36]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED [15:10],doutb[45:36]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .WEA({ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "24" *) (* BYTE_WRITE_WIDTH_B = "24" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "24576" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "24" *) 
(* P_MIN_WIDTH_DATA_A = "24" *) (* P_MIN_WIDTH_DATA_B = "24" *) (* P_MIN_WIDTH_DATA_ECC = "24" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "24" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "24" *) 
(* P_WIDTH_COL_WRITE_B = "24" *) (* READ_DATA_WIDTH_A = "24" *) (* READ_DATA_WIDTH_B = "24" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "24" *) (* WRITE_DATA_WIDTH_B = "24" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module facebox_system_real_camera_source_0_0_xpm_memory_base__parameterized0
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [23:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [23:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [23:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [23:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED ;
  wire [31:24]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "23" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "23" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "24576" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "23" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED [31:24],doutb}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
