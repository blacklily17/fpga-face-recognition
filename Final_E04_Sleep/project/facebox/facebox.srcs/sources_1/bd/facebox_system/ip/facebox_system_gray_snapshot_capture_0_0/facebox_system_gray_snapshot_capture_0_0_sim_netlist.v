// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 29 11:21:45 2026
// Host        : LAPTOP-LM5IO3PF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/3FALL/FPGA_programme/face_recognition/_e04sleep29/build/h/r01/vivado/facebox/facebox.srcs/sources_1/bd/facebox_system/ip/facebox_system_gray_snapshot_capture_0_0/facebox_system_gray_snapshot_capture_0_0_sim_netlist.v
// Design      : facebox_system_gray_snapshot_capture_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "facebox_system_gray_snapshot_capture_0_0,gray_snapshot_capture_bd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gray_snapshot_capture_bd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module facebox_system_gray_snapshot_capture_0_0
   (aclk,
    aresetn,
    gray_valid,
    gray_sof,
    gray_eol,
    gray_data,
    frame_abort,
    frame_commit,
    request,
    release_frame,
    cancel,
    clear_error,
    committed_frame_id,
    request_id,
    epoch,
    gray_source_id,
    verdict_source_id,
    verdict_valid,
    verdict_good,
    provenance_fault,
    time_ticks,
    busy,
    ready,
    error,
    snap_request_id,
    snap_frame_id,
    snap_epoch,
    snap_error_code,
    snap_source_ticks,
    snap_commit_ticks,
    bram_we,
    bram_addr,
    bram_wdata,
    snap_ready_event,
    snap_abort_event,
    format_error_event,
    snap_timeout_event);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN facebox_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input gray_valid;
  input gray_sof;
  input gray_eol;
  input [7:0]gray_data;
  input frame_abort;
  input frame_commit;
  input request;
  input release_frame;
  input cancel;
  input clear_error;
  input [31:0]committed_frame_id;
  input [31:0]request_id;
  input [31:0]epoch;
  input [31:0]gray_source_id;
  input [31:0]verdict_source_id;
  input verdict_valid;
  input verdict_good;
  input provenance_fault;
  input [63:0]time_ticks;
  output busy;
  output ready;
  output error;
  output [31:0]snap_request_id;
  output [31:0]snap_frame_id;
  output [31:0]snap_epoch;
  output [31:0]snap_error_code;
  output [63:0]snap_source_ticks;
  output [63:0]snap_commit_ticks;
  output bram_we;
  output [14:0]bram_addr;
  output [31:0]bram_wdata;
  output snap_ready_event;
  output snap_abort_event;
  output format_error_event;
  output snap_timeout_event;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [14:0]bram_addr;
  wire [23:0]\^bram_wdata ;
  wire bram_we;
  wire busy;
  wire cancel;
  wire clear_error;
  wire [31:0]committed_frame_id;
  wire [31:0]epoch;
  wire error;
  wire format_error_event;
  wire frame_abort;
  wire frame_commit;
  wire [7:0]gray_data;
  wire gray_eol;
  wire gray_sof;
  wire [31:0]gray_source_id;
  wire gray_valid;
  wire provenance_fault;
  wire ready;
  wire release_frame;
  wire request;
  wire [31:0]request_id;
  wire snap_abort_event;
  wire [63:0]snap_commit_ticks;
  wire [31:0]snap_epoch;
  wire [1:0]\^snap_error_code ;
  wire [31:0]snap_frame_id;
  wire snap_ready_event;
  wire [31:0]snap_request_id;
  wire [63:0]snap_source_ticks;
  wire snap_timeout_event;
  wire [63:0]time_ticks;
  wire verdict_good;
  wire [31:0]verdict_source_id;
  wire verdict_valid;

  assign bram_wdata[31:24] = gray_data;
  assign bram_wdata[23:0] = \^bram_wdata [23:0];
  assign snap_error_code[31] = \<const0> ;
  assign snap_error_code[30] = \<const0> ;
  assign snap_error_code[29] = \<const0> ;
  assign snap_error_code[28] = \<const0> ;
  assign snap_error_code[27] = \<const0> ;
  assign snap_error_code[26] = \<const0> ;
  assign snap_error_code[25] = \<const0> ;
  assign snap_error_code[24] = \<const0> ;
  assign snap_error_code[23] = \<const0> ;
  assign snap_error_code[22] = \<const0> ;
  assign snap_error_code[21] = \<const0> ;
  assign snap_error_code[20] = \<const0> ;
  assign snap_error_code[19] = \<const0> ;
  assign snap_error_code[18] = \<const0> ;
  assign snap_error_code[17] = \<const0> ;
  assign snap_error_code[16] = \<const0> ;
  assign snap_error_code[15] = \<const0> ;
  assign snap_error_code[14] = \<const0> ;
  assign snap_error_code[13] = \<const0> ;
  assign snap_error_code[12] = \<const0> ;
  assign snap_error_code[11] = \<const0> ;
  assign snap_error_code[10] = \<const0> ;
  assign snap_error_code[9] = \<const0> ;
  assign snap_error_code[8] = \<const0> ;
  assign snap_error_code[7] = \<const0> ;
  assign snap_error_code[6] = \<const0> ;
  assign snap_error_code[5] = \<const0> ;
  assign snap_error_code[4] = \<const0> ;
  assign snap_error_code[3] = \<const0> ;
  assign snap_error_code[2] = \<const0> ;
  assign snap_error_code[1:0] = \^snap_error_code [1:0];
  GND GND
       (.G(\<const0> ));
  facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .bram_addr(bram_addr),
        .bram_wdata(\^bram_wdata ),
        .bram_we(bram_we),
        .busy(busy),
        .cancel(cancel),
        .clear_error(clear_error),
        .committed_frame_id(committed_frame_id),
        .epoch(epoch),
        .error(error),
        .format_error_event(format_error_event),
        .frame_abort(frame_abort),
        .frame_commit(frame_commit),
        .gray_data(gray_data),
        .gray_eol(gray_eol),
        .gray_sof(gray_sof),
        .gray_source_id(gray_source_id),
        .gray_valid(gray_valid),
        .provenance_fault(provenance_fault),
        .ready(ready),
        .release_frame(release_frame),
        .request(request),
        .request_id(request_id),
        .snap_abort_event(snap_abort_event),
        .snap_commit_ticks(snap_commit_ticks),
        .snap_epoch(snap_epoch),
        .snap_error_code(\^snap_error_code ),
        .snap_frame_id(snap_frame_id),
        .snap_ready_event(snap_ready_event),
        .snap_request_id(snap_request_id),
        .snap_source_ticks(snap_source_ticks),
        .snap_timeout_event(snap_timeout_event),
        .time_ticks(time_ticks),
        .verdict_good(verdict_good),
        .verdict_source_id(verdict_source_id),
        .verdict_valid(verdict_valid));
endmodule

(* ORIG_REF_NAME = "gray_snapshot_capture" *) 
module facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture
   (ready,
    snap_request_id,
    bram_addr,
    snap_frame_id,
    snap_epoch,
    snap_source_ticks,
    snap_commit_ticks,
    bram_wdata,
    snap_error_code,
    busy,
    bram_we,
    error,
    snap_ready_event,
    snap_abort_event,
    format_error_event,
    snap_timeout_event,
    verdict_good,
    verdict_valid,
    gray_valid,
    frame_commit,
    gray_eol,
    time_ticks,
    aclk,
    gray_source_id,
    request_id,
    epoch,
    gray_data,
    cancel,
    aresetn,
    release_frame,
    frame_abort,
    provenance_fault,
    request,
    clear_error,
    gray_sof,
    verdict_source_id,
    committed_frame_id);
  output ready;
  output [31:0]snap_request_id;
  output [14:0]bram_addr;
  output [31:0]snap_frame_id;
  output [31:0]snap_epoch;
  output [63:0]snap_source_ticks;
  output [63:0]snap_commit_ticks;
  output [23:0]bram_wdata;
  output [1:0]snap_error_code;
  output busy;
  output bram_we;
  output error;
  output snap_ready_event;
  output snap_abort_event;
  output format_error_event;
  output snap_timeout_event;
  input verdict_good;
  input verdict_valid;
  input gray_valid;
  input frame_commit;
  input gray_eol;
  input [63:0]time_ticks;
  input aclk;
  input [31:0]gray_source_id;
  input [31:0]request_id;
  input [31:0]epoch;
  input [7:0]gray_data;
  input cancel;
  input aresetn;
  input release_frame;
  input frame_abort;
  input provenance_fault;
  input request;
  input clear_error;
  input gray_sof;
  input [31:0]verdict_source_id;
  input [31:0]committed_frame_id;

  wire aclk;
  wire aresetn;
  wire [14:0]bram_addr;
  wire [23:0]bram_wdata;
  wire bram_we;
  wire bram_we_INST_0_i_1_n_0;
  wire bram_we_INST_0_i_2_n_0;
  wire bram_we_INST_0_i_3_n_0;
  wire bram_we_INST_0_i_4_n_0;
  wire busy;
  wire cancel;
  wire clear_error;
  wire commit_seen;
  wire commit_seen_i_1_n_0;
  wire commit_seen_i_2_n_0;
  wire [31:0]committed_frame_id;
  wire [16:1]count0;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[12]_i_2_n_1 ;
  wire \count_reg[12]_i_2_n_2 ;
  wire \count_reg[12]_i_2_n_3 ;
  wire \count_reg[16]_i_3_n_1 ;
  wire \count_reg[16]_i_3_n_2 ;
  wire \count_reg[16]_i_3_n_3 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_1 ;
  wire \count_reg[4]_i_2_n_2 ;
  wire \count_reg[4]_i_2_n_3 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_1 ;
  wire \count_reg[8]_i_2_n_2 ;
  wire \count_reg[8]_i_2_n_3 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire [31:0]epoch;
  wire error;
  wire [31:0]expected_frame;
  wire expected_frame0_carry__0_n_0;
  wire expected_frame0_carry__0_n_1;
  wire expected_frame0_carry__0_n_2;
  wire expected_frame0_carry__0_n_3;
  wire expected_frame0_carry__0_n_4;
  wire expected_frame0_carry__0_n_5;
  wire expected_frame0_carry__0_n_6;
  wire expected_frame0_carry__0_n_7;
  wire expected_frame0_carry__1_n_0;
  wire expected_frame0_carry__1_n_1;
  wire expected_frame0_carry__1_n_2;
  wire expected_frame0_carry__1_n_3;
  wire expected_frame0_carry__1_n_4;
  wire expected_frame0_carry__1_n_5;
  wire expected_frame0_carry__1_n_6;
  wire expected_frame0_carry__1_n_7;
  wire expected_frame0_carry__2_n_0;
  wire expected_frame0_carry__2_n_1;
  wire expected_frame0_carry__2_n_2;
  wire expected_frame0_carry__2_n_3;
  wire expected_frame0_carry__2_n_4;
  wire expected_frame0_carry__2_n_5;
  wire expected_frame0_carry__2_n_6;
  wire expected_frame0_carry__2_n_7;
  wire expected_frame0_carry__3_n_0;
  wire expected_frame0_carry__3_n_1;
  wire expected_frame0_carry__3_n_2;
  wire expected_frame0_carry__3_n_3;
  wire expected_frame0_carry__3_n_4;
  wire expected_frame0_carry__3_n_5;
  wire expected_frame0_carry__3_n_6;
  wire expected_frame0_carry__3_n_7;
  wire expected_frame0_carry__4_n_0;
  wire expected_frame0_carry__4_n_1;
  wire expected_frame0_carry__4_n_2;
  wire expected_frame0_carry__4_n_3;
  wire expected_frame0_carry__4_n_4;
  wire expected_frame0_carry__4_n_5;
  wire expected_frame0_carry__4_n_6;
  wire expected_frame0_carry__4_n_7;
  wire expected_frame0_carry__5_n_0;
  wire expected_frame0_carry__5_n_1;
  wire expected_frame0_carry__5_n_2;
  wire expected_frame0_carry__5_n_3;
  wire expected_frame0_carry__5_n_4;
  wire expected_frame0_carry__5_n_5;
  wire expected_frame0_carry__5_n_6;
  wire expected_frame0_carry__5_n_7;
  wire expected_frame0_carry__6_n_2;
  wire expected_frame0_carry__6_n_3;
  wire expected_frame0_carry__6_n_5;
  wire expected_frame0_carry__6_n_6;
  wire expected_frame0_carry__6_n_7;
  wire expected_frame0_carry_n_0;
  wire expected_frame0_carry_n_1;
  wire expected_frame0_carry_n_2;
  wire expected_frame0_carry_n_3;
  wire expected_frame0_carry_n_4;
  wire expected_frame0_carry_n_5;
  wire expected_frame0_carry_n_6;
  wire expected_frame0_carry_n_7;
  wire \expected_frame[0]_i_1_n_0 ;
  wire expected_frame_2;
  wire format_error_event;
  wire format_error_event_i_1_n_0;
  wire format_error_event_i_2_n_0;
  wire format_error_event_i_3_n_0;
  wire frame_abort;
  wire frame_commit;
  wire [7:0]gray_data;
  wire gray_eol;
  wire gray_sof;
  wire [31:0]gray_source_id;
  wire gray_valid;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire matching_verdict0;
  wire matching_verdict0_carry__0_i_1_n_0;
  wire matching_verdict0_carry__0_i_2_n_0;
  wire matching_verdict0_carry__0_i_3_n_0;
  wire matching_verdict0_carry__0_i_4_n_0;
  wire matching_verdict0_carry__0_n_0;
  wire matching_verdict0_carry__0_n_1;
  wire matching_verdict0_carry__0_n_2;
  wire matching_verdict0_carry__0_n_3;
  wire matching_verdict0_carry__1_i_1_n_0;
  wire matching_verdict0_carry__1_i_2_n_0;
  wire matching_verdict0_carry__1_i_3_n_0;
  wire matching_verdict0_carry__1_n_2;
  wire matching_verdict0_carry__1_n_3;
  wire matching_verdict0_carry_i_1_n_0;
  wire matching_verdict0_carry_i_2_n_0;
  wire matching_verdict0_carry_i_3_n_0;
  wire matching_verdict0_carry_i_4_n_0;
  wire matching_verdict0_carry_n_0;
  wire matching_verdict0_carry_n_1;
  wire matching_verdict0_carry_n_2;
  wire matching_verdict0_carry_n_3;
  wire [23:16]p_2_in;
  wire \packed_bytes[15]_i_1_n_0 ;
  wire \packed_bytes[15]_i_2_n_0 ;
  wire \packed_bytes[23]_i_1_n_0 ;
  wire \packed_bytes[23]_i_3_n_0 ;
  wire \packed_bytes[23]_i_4_n_0 ;
  wire \packed_bytes[23]_i_5_n_0 ;
  wire \packed_bytes[23]_i_6_n_0 ;
  wire \packed_bytes[7]_i_1_n_0 ;
  wire \packed_bytes[7]_i_2_n_0 ;
  wire \packed_bytes[7]_i_3_n_0 ;
  wire provenance_fault;
  wire ready;
  wire release_frame;
  wire request;
  wire [31:0]request_id;
  wire [63:0]request_ticks;
  wire request_ticks_1;
  wire snap_abort_event;
  wire snap_abort_event_i_1_n_0;
  wire snap_abort_event_i_2_n_0;
  wire snap_abort_event_i_3_n_0;
  wire snap_abort_event_i_4_n_0;
  wire [63:0]snap_commit_ticks;
  wire [31:0]snap_epoch;
  wire [1:0]snap_error_code;
  wire \snap_error_code[0]_i_1_n_0 ;
  wire \snap_error_code[0]_i_2_n_0 ;
  wire \snap_error_code[0]_i_3_n_0 ;
  wire \snap_error_code[0]_i_4_n_0 ;
  wire \snap_error_code[1]_i_10_n_0 ;
  wire \snap_error_code[1]_i_1_n_0 ;
  wire \snap_error_code[1]_i_2_n_0 ;
  wire \snap_error_code[1]_i_3_n_0 ;
  wire \snap_error_code[1]_i_4_n_0 ;
  wire \snap_error_code[1]_i_5_n_0 ;
  wire \snap_error_code[1]_i_6_n_0 ;
  wire \snap_error_code[1]_i_7_n_0 ;
  wire \snap_error_code[1]_i_8_n_0 ;
  wire \snap_error_code[1]_i_9_n_0 ;
  wire [31:0]snap_frame_id;
  wire \snap_frame_id[31]_i_1_n_0 ;
  wire \snap_frame_id[31]_i_2_n_0 ;
  wire \snap_frame_id[31]_i_3_n_0 ;
  wire \snap_frame_id[31]_i_4_n_0 ;
  wire snap_ready_event;
  wire snap_ready_event_i_1_n_0;
  wire snap_ready_event_i_2_n_0;
  wire [31:0]snap_request_id;
  wire \snap_request_id[31]_i_10_n_0 ;
  wire \snap_request_id[31]_i_11_n_0 ;
  wire \snap_request_id[31]_i_12_n_0 ;
  wire \snap_request_id[31]_i_1_n_0 ;
  wire \snap_request_id[31]_i_3_n_0 ;
  wire \snap_request_id[31]_i_4_n_0 ;
  wire \snap_request_id[31]_i_5_n_0 ;
  wire \snap_request_id[31]_i_6_n_0 ;
  wire \snap_request_id[31]_i_7_n_0 ;
  wire \snap_request_id[31]_i_8_n_0 ;
  wire \snap_request_id[31]_i_9_n_0 ;
  wire [63:0]snap_source_ticks;
  wire \snap_source_ticks[63]_i_2_n_0 ;
  wire \snap_source_ticks[63]_i_3_n_0 ;
  wire \snap_source_ticks[63]_i_4_n_0 ;
  wire snap_timeout_event;
  wire snap_timeout_event_i_1_n_0;
  wire [31:0]source_frame;
  wire state0;
  wire state1;
  wire \state1_inferred__0/i__carry__0_n_0 ;
  wire \state1_inferred__0/i__carry__0_n_1 ;
  wire \state1_inferred__0/i__carry__0_n_2 ;
  wire \state1_inferred__0/i__carry__0_n_3 ;
  wire \state1_inferred__0/i__carry__1_n_2 ;
  wire \state1_inferred__0/i__carry__1_n_3 ;
  wire \state1_inferred__0/i__carry_n_0 ;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire state2;
  wire \state2_inferred__0/i__carry__0_n_0 ;
  wire \state2_inferred__0/i__carry__0_n_1 ;
  wire \state2_inferred__0/i__carry__0_n_2 ;
  wire \state2_inferred__0/i__carry__0_n_3 ;
  wire \state2_inferred__0/i__carry__1_n_2 ;
  wire \state2_inferred__0/i__carry__1_n_3 ;
  wire \state2_inferred__0/i__carry_n_0 ;
  wire \state2_inferred__0/i__carry_n_1 ;
  wire \state2_inferred__0/i__carry_n_2 ;
  wire \state2_inferred__0/i__carry_n_3 ;
  wire state3;
  wire state3_carry__0_i_1_n_0;
  wire state3_carry__0_i_2_n_0;
  wire state3_carry__0_i_3_n_0;
  wire state3_carry__0_i_4_n_0;
  wire state3_carry__0_n_0;
  wire state3_carry__0_n_1;
  wire state3_carry__0_n_2;
  wire state3_carry__0_n_3;
  wire state3_carry__1_i_1_n_0;
  wire state3_carry__1_i_2_n_0;
  wire state3_carry__1_i_3_n_0;
  wire state3_carry__1_n_2;
  wire state3_carry__1_n_3;
  wire state3_carry_i_1_n_0;
  wire state3_carry_i_2_n_0;
  wire state3_carry_i_3_n_0;
  wire state3_carry_i_4_n_0;
  wire state3_carry_n_0;
  wire state3_carry_n_1;
  wire state3_carry_n_2;
  wire state3_carry_n_3;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [63:0]time_ticks;
  wire timed_out;
  wire [63:0]timed_out0;
  wire timed_out0_carry__0_i_1_n_0;
  wire timed_out0_carry__0_i_2_n_0;
  wire timed_out0_carry__0_i_3_n_0;
  wire timed_out0_carry__0_i_4_n_0;
  wire timed_out0_carry__0_n_0;
  wire timed_out0_carry__0_n_1;
  wire timed_out0_carry__0_n_2;
  wire timed_out0_carry__0_n_3;
  wire timed_out0_carry__10_i_1_n_0;
  wire timed_out0_carry__10_i_2_n_0;
  wire timed_out0_carry__10_i_3_n_0;
  wire timed_out0_carry__10_i_4_n_0;
  wire timed_out0_carry__10_n_0;
  wire timed_out0_carry__10_n_1;
  wire timed_out0_carry__10_n_2;
  wire timed_out0_carry__10_n_3;
  wire timed_out0_carry__11_i_1_n_0;
  wire timed_out0_carry__11_i_2_n_0;
  wire timed_out0_carry__11_i_3_n_0;
  wire timed_out0_carry__11_i_4_n_0;
  wire timed_out0_carry__11_n_0;
  wire timed_out0_carry__11_n_1;
  wire timed_out0_carry__11_n_2;
  wire timed_out0_carry__11_n_3;
  wire timed_out0_carry__12_i_1_n_0;
  wire timed_out0_carry__12_i_2_n_0;
  wire timed_out0_carry__12_i_3_n_0;
  wire timed_out0_carry__12_i_4_n_0;
  wire timed_out0_carry__12_n_0;
  wire timed_out0_carry__12_n_1;
  wire timed_out0_carry__12_n_2;
  wire timed_out0_carry__12_n_3;
  wire timed_out0_carry__13_i_1_n_0;
  wire timed_out0_carry__13_i_2_n_0;
  wire timed_out0_carry__13_i_3_n_0;
  wire timed_out0_carry__13_i_4_n_0;
  wire timed_out0_carry__13_n_0;
  wire timed_out0_carry__13_n_1;
  wire timed_out0_carry__13_n_2;
  wire timed_out0_carry__13_n_3;
  wire timed_out0_carry__14_i_1_n_0;
  wire timed_out0_carry__14_i_2_n_0;
  wire timed_out0_carry__14_i_3_n_0;
  wire timed_out0_carry__14_i_4_n_0;
  wire timed_out0_carry__14_n_1;
  wire timed_out0_carry__14_n_2;
  wire timed_out0_carry__14_n_3;
  wire timed_out0_carry__1_i_1_n_0;
  wire timed_out0_carry__1_i_2_n_0;
  wire timed_out0_carry__1_i_3_n_0;
  wire timed_out0_carry__1_i_4_n_0;
  wire timed_out0_carry__1_n_0;
  wire timed_out0_carry__1_n_1;
  wire timed_out0_carry__1_n_2;
  wire timed_out0_carry__1_n_3;
  wire timed_out0_carry__2_i_1_n_0;
  wire timed_out0_carry__2_i_2_n_0;
  wire timed_out0_carry__2_i_3_n_0;
  wire timed_out0_carry__2_i_4_n_0;
  wire timed_out0_carry__2_n_0;
  wire timed_out0_carry__2_n_1;
  wire timed_out0_carry__2_n_2;
  wire timed_out0_carry__2_n_3;
  wire timed_out0_carry__3_i_1_n_0;
  wire timed_out0_carry__3_i_2_n_0;
  wire timed_out0_carry__3_i_3_n_0;
  wire timed_out0_carry__3_i_4_n_0;
  wire timed_out0_carry__3_n_0;
  wire timed_out0_carry__3_n_1;
  wire timed_out0_carry__3_n_2;
  wire timed_out0_carry__3_n_3;
  wire timed_out0_carry__4_i_1_n_0;
  wire timed_out0_carry__4_i_2_n_0;
  wire timed_out0_carry__4_i_3_n_0;
  wire timed_out0_carry__4_i_4_n_0;
  wire timed_out0_carry__4_n_0;
  wire timed_out0_carry__4_n_1;
  wire timed_out0_carry__4_n_2;
  wire timed_out0_carry__4_n_3;
  wire timed_out0_carry__5_i_1_n_0;
  wire timed_out0_carry__5_i_2_n_0;
  wire timed_out0_carry__5_i_3_n_0;
  wire timed_out0_carry__5_i_4_n_0;
  wire timed_out0_carry__5_n_0;
  wire timed_out0_carry__5_n_1;
  wire timed_out0_carry__5_n_2;
  wire timed_out0_carry__5_n_3;
  wire timed_out0_carry__6_i_1_n_0;
  wire timed_out0_carry__6_i_2_n_0;
  wire timed_out0_carry__6_i_3_n_0;
  wire timed_out0_carry__6_i_4_n_0;
  wire timed_out0_carry__6_n_0;
  wire timed_out0_carry__6_n_1;
  wire timed_out0_carry__6_n_2;
  wire timed_out0_carry__6_n_3;
  wire timed_out0_carry__7_i_1_n_0;
  wire timed_out0_carry__7_i_2_n_0;
  wire timed_out0_carry__7_i_3_n_0;
  wire timed_out0_carry__7_i_4_n_0;
  wire timed_out0_carry__7_n_0;
  wire timed_out0_carry__7_n_1;
  wire timed_out0_carry__7_n_2;
  wire timed_out0_carry__7_n_3;
  wire timed_out0_carry__8_i_1_n_0;
  wire timed_out0_carry__8_i_2_n_0;
  wire timed_out0_carry__8_i_3_n_0;
  wire timed_out0_carry__8_i_4_n_0;
  wire timed_out0_carry__8_n_0;
  wire timed_out0_carry__8_n_1;
  wire timed_out0_carry__8_n_2;
  wire timed_out0_carry__8_n_3;
  wire timed_out0_carry__9_i_1_n_0;
  wire timed_out0_carry__9_i_2_n_0;
  wire timed_out0_carry__9_i_3_n_0;
  wire timed_out0_carry__9_i_4_n_0;
  wire timed_out0_carry__9_n_0;
  wire timed_out0_carry__9_n_1;
  wire timed_out0_carry__9_n_2;
  wire timed_out0_carry__9_n_3;
  wire timed_out0_carry_i_1_n_0;
  wire timed_out0_carry_i_2_n_0;
  wire timed_out0_carry_i_3_n_0;
  wire timed_out0_carry_i_4_n_0;
  wire timed_out0_carry_n_0;
  wire timed_out0_carry_n_1;
  wire timed_out0_carry_n_2;
  wire timed_out0_carry_n_3;
  wire timed_out_carry__0_i_1_n_0;
  wire timed_out_carry__0_i_2_n_0;
  wire timed_out_carry__0_i_3_n_0;
  wire timed_out_carry__0_i_4_n_0;
  wire timed_out_carry__0_i_5_n_0;
  wire timed_out_carry__0_i_6_n_0;
  wire timed_out_carry__0_n_0;
  wire timed_out_carry__0_n_1;
  wire timed_out_carry__0_n_2;
  wire timed_out_carry__0_n_3;
  wire timed_out_carry__1_i_1_n_0;
  wire timed_out_carry__1_i_2_n_0;
  wire timed_out_carry__1_i_3_n_0;
  wire timed_out_carry__1_i_4_n_0;
  wire timed_out_carry__1_n_0;
  wire timed_out_carry__1_n_1;
  wire timed_out_carry__1_n_2;
  wire timed_out_carry__1_n_3;
  wire timed_out_carry__2_i_1_n_0;
  wire timed_out_carry__2_i_2_n_0;
  wire timed_out_carry__2_i_3_n_0;
  wire timed_out_carry__2_i_4_n_0;
  wire timed_out_carry__2_i_5_n_0;
  wire timed_out_carry__2_i_6_n_0;
  wire timed_out_carry__2_n_0;
  wire timed_out_carry__2_n_1;
  wire timed_out_carry__2_n_2;
  wire timed_out_carry__2_n_3;
  wire timed_out_carry__3_i_1_n_0;
  wire timed_out_carry__3_i_2_n_0;
  wire timed_out_carry__3_i_3_n_0;
  wire timed_out_carry__3_i_4_n_0;
  wire timed_out_carry__3_i_5_n_0;
  wire timed_out_carry__3_i_6_n_0;
  wire timed_out_carry__3_i_7_n_0;
  wire timed_out_carry__3_i_8_n_0;
  wire timed_out_carry__3_n_0;
  wire timed_out_carry__3_n_1;
  wire timed_out_carry__3_n_2;
  wire timed_out_carry__3_n_3;
  wire timed_out_carry__4_i_1_n_0;
  wire timed_out_carry__4_i_2_n_0;
  wire timed_out_carry__4_i_3_n_0;
  wire timed_out_carry__4_i_4_n_0;
  wire timed_out_carry__4_i_5_n_0;
  wire timed_out_carry__4_i_6_n_0;
  wire timed_out_carry__4_i_7_n_0;
  wire timed_out_carry__4_i_8_n_0;
  wire timed_out_carry__4_n_0;
  wire timed_out_carry__4_n_1;
  wire timed_out_carry__4_n_2;
  wire timed_out_carry__4_n_3;
  wire timed_out_carry__5_i_1_n_0;
  wire timed_out_carry__5_i_2_n_0;
  wire timed_out_carry__5_i_3_n_0;
  wire timed_out_carry__5_i_4_n_0;
  wire timed_out_carry__5_i_5_n_0;
  wire timed_out_carry__5_i_6_n_0;
  wire timed_out_carry__5_i_7_n_0;
  wire timed_out_carry__5_i_8_n_0;
  wire timed_out_carry__5_n_0;
  wire timed_out_carry__5_n_1;
  wire timed_out_carry__5_n_2;
  wire timed_out_carry__5_n_3;
  wire timed_out_carry__6_i_1_n_0;
  wire timed_out_carry__6_i_2_n_0;
  wire timed_out_carry__6_i_3_n_0;
  wire timed_out_carry__6_i_4_n_0;
  wire timed_out_carry__6_i_5_n_0;
  wire timed_out_carry__6_i_6_n_0;
  wire timed_out_carry__6_i_7_n_0;
  wire timed_out_carry__6_i_8_n_0;
  wire timed_out_carry__6_n_1;
  wire timed_out_carry__6_n_2;
  wire timed_out_carry__6_n_3;
  wire timed_out_carry_i_1_n_0;
  wire timed_out_carry_i_2_n_0;
  wire timed_out_carry_i_3_n_0;
  wire timed_out_carry_i_4_n_0;
  wire timed_out_carry_i_5_n_0;
  wire timed_out_carry_i_6_n_0;
  wire timed_out_carry_i_7_n_0;
  wire timed_out_carry_i_8_n_0;
  wire timed_out_carry_n_0;
  wire timed_out_carry_n_1;
  wire timed_out_carry_n_2;
  wire timed_out_carry_n_3;
  wire verdict_good;
  wire verdict_seen;
  wire verdict_seen_i_1_n_0;
  wire verdict_seen_i_2_n_0;
  wire verdict_seen_i_3_n_0;
  wire [31:0]verdict_source_id;
  wire verdict_valid;
  wire [9:0]x;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[5]_i_2_n_0 ;
  wire \x[6]_i_1_n_0 ;
  wire \x[7]_i_1_n_0 ;
  wire \x[8]_i_1_n_0 ;
  wire \x[8]_i_2_n_0 ;
  wire \x[9]_i_1_n_0 ;
  wire \x[9]_i_2_n_0 ;
  wire x_0;
  wire [3:3]\NLW_count_reg[16]_i_3_CO_UNCONNECTED ;
  wire [3:2]NLW_expected_frame0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_expected_frame0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_matching_verdict0_carry_O_UNCONNECTED;
  wire [3:0]NLW_matching_verdict0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_matching_verdict0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_matching_verdict0_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_state2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_state3_carry_O_UNCONNECTED;
  wire [3:0]NLW_state3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state3_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_timed_out0_carry__14_CO_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_timed_out_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h80888888)) 
    bram_we_INST_0
       (.I0(bram_we_INST_0_i_1_n_0),
        .I1(bram_we_INST_0_i_2_n_0),
        .I2(verdict_good),
        .I3(matching_verdict0),
        .I4(verdict_valid),
        .O(bram_we));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    bram_we_INST_0_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(bram_we_INST_0_i_3_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(bram_we_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    bram_we_INST_0_i_2
       (.I0(timed_out),
        .I1(provenance_fault),
        .I2(frame_abort),
        .I3(gray_valid),
        .I4(bram_we_INST_0_i_4_n_0),
        .I5(\snap_error_code[1]_i_6_n_0 ),
        .O(bram_we_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bram_we_INST_0_i_3
       (.I0(frame_commit),
        .I1(\packed_bytes[7]_i_2_n_0 ),
        .O(bram_we_INST_0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bram_we_INST_0_i_4
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(bram_we_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    busy_INST_0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(busy));
  LUT6 #(
    .INIT(64'hBA8A8A8A00000000)) 
    commit_seen_i_1
       (.I0(commit_seen),
        .I1(commit_seen_i_2_n_0),
        .I2(\snap_frame_id[31]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(frame_commit),
        .I5(aresetn),
        .O(commit_seen_i_1_n_0));
  LUT6 #(
    .INIT(64'hDDDFDFDFDFDFDFDF)) 
    commit_seen_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\packed_bytes[23]_i_5_n_0 ),
        .I3(\snap_frame_id[31]_i_3_n_0 ),
        .I4(frame_commit),
        .I5(\state_reg_n_0_[1] ),
        .O(commit_seen_i_2_n_0));
  FDRE commit_seen_reg
       (.C(aclk),
        .CE(1'b1),
        .D(commit_seen_i_1_n_0),
        .Q(commit_seen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[10]),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[11]),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[12]),
        .O(\count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[13]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[13]),
        .O(\count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[14]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[14]),
        .O(\count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[15]),
        .O(\count[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \count[16]_i_1 
       (.I0(expected_frame_2),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(bram_we_INST_0_i_3_n_0),
        .I4(\snap_request_id[31]_i_3_n_0 ),
        .I5(gray_valid),
        .O(x_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[16]),
        .O(\count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[6]),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[7]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[8]),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(count0[9]),
        .O(\count[9]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[10] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[10]_i_1_n_0 ),
        .Q(bram_addr[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[11]_i_1_n_0 ),
        .Q(bram_addr[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[12]_i_1_n_0 ),
        .Q(bram_addr[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\count_reg[12]_i_2_n_1 ,\count_reg[12]_i_2_n_2 ,\count_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S(bram_addr[10:7]));
  FDRE \count_reg[13] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[13]_i_1_n_0 ),
        .Q(bram_addr[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[14]_i_1_n_0 ),
        .Q(bram_addr[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[15]_i_1_n_0 ),
        .Q(bram_addr[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[16]_i_2_n_0 ),
        .Q(bram_addr[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_3 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO({\NLW_count_reg[16]_i_3_CO_UNCONNECTED [3],\count_reg[16]_i_3_n_1 ,\count_reg[16]_i_3_n_2 ,\count_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S(bram_addr[14:11]));
  FDRE \count_reg[1] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[2]_i_1_n_0 ),
        .Q(bram_addr[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[3]_i_1_n_0 ),
        .Q(bram_addr[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[4]_i_1_n_0 ),
        .Q(bram_addr[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\count_reg[4]_i_2_n_1 ,\count_reg[4]_i_2_n_2 ,\count_reg[4]_i_2_n_3 }),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({bram_addr[2:0],\count_reg_n_0_[1] }));
  FDRE \count_reg[5] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[5]_i_1_n_0 ),
        .Q(bram_addr[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[6]_i_1_n_0 ),
        .Q(bram_addr[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[7]_i_1_n_0 ),
        .Q(bram_addr[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[8]_i_1_n_0 ),
        .Q(bram_addr[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\count_reg[8]_i_2_n_1 ,\count_reg[8]_i_2_n_2 ,\count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S(bram_addr[6:3]));
  FDRE \count_reg[9] 
       (.C(aclk),
        .CE(x_0),
        .D(\count[9]_i_1_n_0 ),
        .Q(bram_addr[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    error_INST_0
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(error));
  CARRY4 expected_frame0_carry
       (.CI(1'b0),
        .CO({expected_frame0_carry_n_0,expected_frame0_carry_n_1,expected_frame0_carry_n_2,expected_frame0_carry_n_3}),
        .CYINIT(committed_frame_id[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry_n_4,expected_frame0_carry_n_5,expected_frame0_carry_n_6,expected_frame0_carry_n_7}),
        .S(committed_frame_id[4:1]));
  CARRY4 expected_frame0_carry__0
       (.CI(expected_frame0_carry_n_0),
        .CO({expected_frame0_carry__0_n_0,expected_frame0_carry__0_n_1,expected_frame0_carry__0_n_2,expected_frame0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__0_n_4,expected_frame0_carry__0_n_5,expected_frame0_carry__0_n_6,expected_frame0_carry__0_n_7}),
        .S(committed_frame_id[8:5]));
  CARRY4 expected_frame0_carry__1
       (.CI(expected_frame0_carry__0_n_0),
        .CO({expected_frame0_carry__1_n_0,expected_frame0_carry__1_n_1,expected_frame0_carry__1_n_2,expected_frame0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__1_n_4,expected_frame0_carry__1_n_5,expected_frame0_carry__1_n_6,expected_frame0_carry__1_n_7}),
        .S(committed_frame_id[12:9]));
  CARRY4 expected_frame0_carry__2
       (.CI(expected_frame0_carry__1_n_0),
        .CO({expected_frame0_carry__2_n_0,expected_frame0_carry__2_n_1,expected_frame0_carry__2_n_2,expected_frame0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__2_n_4,expected_frame0_carry__2_n_5,expected_frame0_carry__2_n_6,expected_frame0_carry__2_n_7}),
        .S(committed_frame_id[16:13]));
  CARRY4 expected_frame0_carry__3
       (.CI(expected_frame0_carry__2_n_0),
        .CO({expected_frame0_carry__3_n_0,expected_frame0_carry__3_n_1,expected_frame0_carry__3_n_2,expected_frame0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__3_n_4,expected_frame0_carry__3_n_5,expected_frame0_carry__3_n_6,expected_frame0_carry__3_n_7}),
        .S(committed_frame_id[20:17]));
  CARRY4 expected_frame0_carry__4
       (.CI(expected_frame0_carry__3_n_0),
        .CO({expected_frame0_carry__4_n_0,expected_frame0_carry__4_n_1,expected_frame0_carry__4_n_2,expected_frame0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__4_n_4,expected_frame0_carry__4_n_5,expected_frame0_carry__4_n_6,expected_frame0_carry__4_n_7}),
        .S(committed_frame_id[24:21]));
  CARRY4 expected_frame0_carry__5
       (.CI(expected_frame0_carry__4_n_0),
        .CO({expected_frame0_carry__5_n_0,expected_frame0_carry__5_n_1,expected_frame0_carry__5_n_2,expected_frame0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({expected_frame0_carry__5_n_4,expected_frame0_carry__5_n_5,expected_frame0_carry__5_n_6,expected_frame0_carry__5_n_7}),
        .S(committed_frame_id[28:25]));
  CARRY4 expected_frame0_carry__6
       (.CI(expected_frame0_carry__5_n_0),
        .CO({NLW_expected_frame0_carry__6_CO_UNCONNECTED[3:2],expected_frame0_carry__6_n_2,expected_frame0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_expected_frame0_carry__6_O_UNCONNECTED[3],expected_frame0_carry__6_n_5,expected_frame0_carry__6_n_6,expected_frame0_carry__6_n_7}),
        .S({1'b0,committed_frame_id[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \expected_frame[0]_i_1 
       (.I0(committed_frame_id[0]),
        .O(\expected_frame[0]_i_1_n_0 ));
  FDRE \expected_frame_reg[0] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(\expected_frame[0]_i_1_n_0 ),
        .Q(expected_frame[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[10] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__1_n_6),
        .Q(expected_frame[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[11] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__1_n_5),
        .Q(expected_frame[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[12] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__1_n_4),
        .Q(expected_frame[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[13] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__2_n_7),
        .Q(expected_frame[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[14] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__2_n_6),
        .Q(expected_frame[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[15] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__2_n_5),
        .Q(expected_frame[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[16] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__2_n_4),
        .Q(expected_frame[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[17] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__3_n_7),
        .Q(expected_frame[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[18] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__3_n_6),
        .Q(expected_frame[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[19] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__3_n_5),
        .Q(expected_frame[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[1] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry_n_7),
        .Q(expected_frame[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[20] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__3_n_4),
        .Q(expected_frame[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[21] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__4_n_7),
        .Q(expected_frame[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[22] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__4_n_6),
        .Q(expected_frame[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[23] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__4_n_5),
        .Q(expected_frame[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[24] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__4_n_4),
        .Q(expected_frame[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[25] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__5_n_7),
        .Q(expected_frame[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[26] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__5_n_6),
        .Q(expected_frame[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[27] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__5_n_5),
        .Q(expected_frame[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[28] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__5_n_4),
        .Q(expected_frame[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[29] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__6_n_7),
        .Q(expected_frame[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[2] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry_n_6),
        .Q(expected_frame[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[30] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__6_n_6),
        .Q(expected_frame[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[31] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__6_n_5),
        .Q(expected_frame[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[3] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry_n_5),
        .Q(expected_frame[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[4] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry_n_4),
        .Q(expected_frame[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[5] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__0_n_7),
        .Q(expected_frame[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[6] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__0_n_6),
        .Q(expected_frame[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[7] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__0_n_5),
        .Q(expected_frame[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[8] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__0_n_4),
        .Q(expected_frame[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \expected_frame_reg[9] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(expected_frame0_carry__1_n_7),
        .Q(expected_frame[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000F8)) 
    format_error_event_i_1
       (.I0(format_error_event_i_2_n_0),
        .I1(gray_eol),
        .I2(format_error_event_i_3_n_0),
        .I3(\state_reg_n_0_[2] ),
        .I4(snap_ready_event_i_2_n_0),
        .O(format_error_event_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    format_error_event_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(gray_valid),
        .I3(gray_sof),
        .O(format_error_event_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FF000054540000)) 
    format_error_event_i_3
       (.I0(bram_we_INST_0_i_3_n_0),
        .I1(frame_commit),
        .I2(gray_valid),
        .I3(\snap_frame_id[31]_i_3_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(format_error_event_i_3_n_0));
  FDRE format_error_event_reg
       (.C(aclk),
        .CE(1'b1),
        .D(format_error_event_i_1_n_0),
        .Q(format_error_event),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(verdict_source_id[22]),
        .I1(gray_source_id[22]),
        .I2(verdict_source_id[21]),
        .I3(gray_source_id[21]),
        .I4(gray_source_id[23]),
        .I5(verdict_source_id[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1__0
       (.I0(request_id[21]),
        .I1(snap_request_id[21]),
        .I2(request_id[22]),
        .I3(snap_request_id[22]),
        .I4(snap_request_id[23]),
        .I5(request_id[23]),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(gray_source_id[20]),
        .I1(verdict_source_id[20]),
        .I2(verdict_source_id[18]),
        .I3(gray_source_id[18]),
        .I4(verdict_source_id[19]),
        .I5(gray_source_id[19]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(request_id[18]),
        .I1(snap_request_id[18]),
        .I2(request_id[19]),
        .I3(snap_request_id[19]),
        .I4(snap_request_id[20]),
        .I5(request_id[20]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(gray_source_id[17]),
        .I1(verdict_source_id[17]),
        .I2(verdict_source_id[15]),
        .I3(gray_source_id[15]),
        .I4(verdict_source_id[16]),
        .I5(gray_source_id[16]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3__0
       (.I0(request_id[15]),
        .I1(snap_request_id[15]),
        .I2(request_id[16]),
        .I3(snap_request_id[16]),
        .I4(snap_request_id[17]),
        .I5(request_id[17]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(gray_source_id[14]),
        .I1(verdict_source_id[14]),
        .I2(verdict_source_id[12]),
        .I3(gray_source_id[12]),
        .I4(verdict_source_id[13]),
        .I5(gray_source_id[13]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4__0
       (.I0(request_id[12]),
        .I1(snap_request_id[12]),
        .I2(request_id[13]),
        .I3(snap_request_id[13]),
        .I4(snap_request_id[14]),
        .I5(request_id[14]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(gray_source_id[31]),
        .I1(verdict_source_id[31]),
        .I2(gray_source_id[30]),
        .I3(verdict_source_id[30]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1__0
       (.I0(snap_request_id[31]),
        .I1(request_id[31]),
        .I2(snap_request_id[30]),
        .I3(request_id[30]),
        .O(i__carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(verdict_source_id[27]),
        .I1(gray_source_id[27]),
        .I2(verdict_source_id[28]),
        .I3(gray_source_id[28]),
        .I4(gray_source_id[29]),
        .I5(verdict_source_id[29]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2__0
       (.I0(request_id[27]),
        .I1(snap_request_id[27]),
        .I2(request_id[28]),
        .I3(snap_request_id[28]),
        .I4(snap_request_id[29]),
        .I5(request_id[29]),
        .O(i__carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(gray_source_id[26]),
        .I1(verdict_source_id[26]),
        .I2(verdict_source_id[25]),
        .I3(gray_source_id[25]),
        .I4(verdict_source_id[24]),
        .I5(gray_source_id[24]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3__0
       (.I0(request_id[24]),
        .I1(snap_request_id[24]),
        .I2(request_id[25]),
        .I3(snap_request_id[25]),
        .I4(snap_request_id[26]),
        .I5(request_id[26]),
        .O(i__carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(verdict_source_id[9]),
        .I1(gray_source_id[9]),
        .I2(verdict_source_id[10]),
        .I3(gray_source_id[10]),
        .I4(gray_source_id[11]),
        .I5(verdict_source_id[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(request_id[11]),
        .I1(snap_request_id[11]),
        .I2(request_id[9]),
        .I3(snap_request_id[9]),
        .I4(snap_request_id[10]),
        .I5(request_id[10]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(gray_source_id[8]),
        .I1(verdict_source_id[8]),
        .I2(verdict_source_id[6]),
        .I3(gray_source_id[6]),
        .I4(verdict_source_id[7]),
        .I5(gray_source_id[7]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(request_id[6]),
        .I1(snap_request_id[6]),
        .I2(request_id[7]),
        .I3(snap_request_id[7]),
        .I4(snap_request_id[8]),
        .I5(request_id[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(verdict_source_id[3]),
        .I1(gray_source_id[3]),
        .I2(verdict_source_id[4]),
        .I3(gray_source_id[4]),
        .I4(gray_source_id[5]),
        .I5(verdict_source_id[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(request_id[3]),
        .I1(snap_request_id[3]),
        .I2(request_id[4]),
        .I3(snap_request_id[4]),
        .I4(snap_request_id[5]),
        .I5(request_id[5]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(verdict_source_id[0]),
        .I1(gray_source_id[0]),
        .I2(verdict_source_id[1]),
        .I3(gray_source_id[1]),
        .I4(gray_source_id[2]),
        .I5(verdict_source_id[2]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(request_id[0]),
        .I1(snap_request_id[0]),
        .I2(request_id[1]),
        .I3(snap_request_id[1]),
        .I4(snap_request_id[2]),
        .I5(request_id[2]),
        .O(i__carry_i_4__0_n_0));
  CARRY4 matching_verdict0_carry
       (.CI(1'b0),
        .CO({matching_verdict0_carry_n_0,matching_verdict0_carry_n_1,matching_verdict0_carry_n_2,matching_verdict0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_matching_verdict0_carry_O_UNCONNECTED[3:0]),
        .S({matching_verdict0_carry_i_1_n_0,matching_verdict0_carry_i_2_n_0,matching_verdict0_carry_i_3_n_0,matching_verdict0_carry_i_4_n_0}));
  CARRY4 matching_verdict0_carry__0
       (.CI(matching_verdict0_carry_n_0),
        .CO({matching_verdict0_carry__0_n_0,matching_verdict0_carry__0_n_1,matching_verdict0_carry__0_n_2,matching_verdict0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_matching_verdict0_carry__0_O_UNCONNECTED[3:0]),
        .S({matching_verdict0_carry__0_i_1_n_0,matching_verdict0_carry__0_i_2_n_0,matching_verdict0_carry__0_i_3_n_0,matching_verdict0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__0_i_1
       (.I0(verdict_source_id[23]),
        .I1(source_frame[23]),
        .I2(verdict_source_id[21]),
        .I3(source_frame[21]),
        .I4(source_frame[22]),
        .I5(verdict_source_id[22]),
        .O(matching_verdict0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__0_i_2
       (.I0(source_frame[20]),
        .I1(verdict_source_id[20]),
        .I2(verdict_source_id[18]),
        .I3(source_frame[18]),
        .I4(verdict_source_id[19]),
        .I5(source_frame[19]),
        .O(matching_verdict0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__0_i_3
       (.I0(source_frame[17]),
        .I1(verdict_source_id[17]),
        .I2(verdict_source_id[16]),
        .I3(source_frame[16]),
        .I4(verdict_source_id[15]),
        .I5(source_frame[15]),
        .O(matching_verdict0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__0_i_4
       (.I0(source_frame[14]),
        .I1(verdict_source_id[14]),
        .I2(verdict_source_id[12]),
        .I3(source_frame[12]),
        .I4(verdict_source_id[13]),
        .I5(source_frame[13]),
        .O(matching_verdict0_carry__0_i_4_n_0));
  CARRY4 matching_verdict0_carry__1
       (.CI(matching_verdict0_carry__0_n_0),
        .CO({NLW_matching_verdict0_carry__1_CO_UNCONNECTED[3],matching_verdict0,matching_verdict0_carry__1_n_2,matching_verdict0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_matching_verdict0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,matching_verdict0_carry__1_i_1_n_0,matching_verdict0_carry__1_i_2_n_0,matching_verdict0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    matching_verdict0_carry__1_i_1
       (.I0(source_frame[31]),
        .I1(verdict_source_id[31]),
        .I2(source_frame[30]),
        .I3(verdict_source_id[30]),
        .O(matching_verdict0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__1_i_2
       (.I0(verdict_source_id[29]),
        .I1(source_frame[29]),
        .I2(verdict_source_id[27]),
        .I3(source_frame[27]),
        .I4(source_frame[28]),
        .I5(verdict_source_id[28]),
        .O(matching_verdict0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry__1_i_3
       (.I0(source_frame[26]),
        .I1(verdict_source_id[26]),
        .I2(verdict_source_id[25]),
        .I3(source_frame[25]),
        .I4(verdict_source_id[24]),
        .I5(source_frame[24]),
        .O(matching_verdict0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry_i_1
       (.I0(verdict_source_id[11]),
        .I1(source_frame[11]),
        .I2(verdict_source_id[9]),
        .I3(source_frame[9]),
        .I4(source_frame[10]),
        .I5(verdict_source_id[10]),
        .O(matching_verdict0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry_i_2
       (.I0(source_frame[8]),
        .I1(verdict_source_id[8]),
        .I2(verdict_source_id[6]),
        .I3(source_frame[6]),
        .I4(verdict_source_id[7]),
        .I5(source_frame[7]),
        .O(matching_verdict0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry_i_3
       (.I0(verdict_source_id[5]),
        .I1(source_frame[5]),
        .I2(verdict_source_id[3]),
        .I3(source_frame[3]),
        .I4(source_frame[4]),
        .I5(verdict_source_id[4]),
        .O(matching_verdict0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    matching_verdict0_carry_i_4
       (.I0(verdict_source_id[2]),
        .I1(source_frame[2]),
        .I2(verdict_source_id[0]),
        .I3(source_frame[0]),
        .I4(source_frame[1]),
        .I5(verdict_source_id[1]),
        .O(matching_verdict0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \packed_bytes[15]_i_1 
       (.I0(\packed_bytes[23]_i_3_n_0 ),
        .I1(\packed_bytes[15]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .O(\packed_bytes[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \packed_bytes[15]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(frame_commit),
        .I2(gray_valid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\packed_bytes[7]_i_2_n_0 ),
        .O(\packed_bytes[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[16]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[0]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[17]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[1]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[18]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[2]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[19]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[3]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[20]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[4]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[21]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[5]),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[22]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[6]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    \packed_bytes[23]_i_1 
       (.I0(\packed_bytes[23]_i_3_n_0 ),
        .I1(bram_we_INST_0_i_3_n_0),
        .I2(\count_reg_n_0_[1] ),
        .I3(\packed_bytes[23]_i_4_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .O(\packed_bytes[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_bytes[23]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_data[7]),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'h0001000000010001)) 
    \packed_bytes[23]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\snap_error_code[1]_i_3_n_0 ),
        .I2(\snap_source_ticks[63]_i_2_n_0 ),
        .I3(cancel),
        .I4(\packed_bytes[23]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\packed_bytes[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \packed_bytes[23]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(gray_valid),
        .O(\packed_bytes[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000BF)) 
    \packed_bytes[23]_i_5 
       (.I0(verdict_good),
        .I1(state2),
        .I2(verdict_valid),
        .I3(gray_eol),
        .I4(\packed_bytes[23]_i_6_n_0 ),
        .O(\packed_bytes[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \packed_bytes[23]_i_6 
       (.I0(\state_reg_n_0_[1] ),
        .I1(gray_valid),
        .I2(gray_sof),
        .O(\packed_bytes[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000002)) 
    \packed_bytes[7]_i_1 
       (.I0(\packed_bytes[23]_i_3_n_0 ),
        .I1(frame_commit),
        .I2(\count_reg_n_0_[1] ),
        .I3(\packed_bytes[23]_i_4_n_0 ),
        .I4(\packed_bytes[7]_i_2_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\packed_bytes[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFAAAAEAAA)) 
    \packed_bytes[7]_i_2 
       (.I0(gray_sof),
        .I1(x[3]),
        .I2(x[7]),
        .I3(\x[5]_i_2_n_0 ),
        .I4(\packed_bytes[7]_i_3_n_0 ),
        .I5(gray_eol),
        .O(\packed_bytes[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \packed_bytes[7]_i_3 
       (.I0(x[9]),
        .I1(x[6]),
        .I2(x[4]),
        .I3(x[8]),
        .I4(x[5]),
        .O(\packed_bytes[7]_i_3_n_0 ));
  FDRE \packed_bytes_reg[0] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[0]),
        .Q(bram_wdata[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[10] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(bram_wdata[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[11] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(bram_wdata[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[12] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(bram_wdata[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[13] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(bram_wdata[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[14] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(bram_wdata[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[15] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(bram_wdata[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[16] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(bram_wdata[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[17] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(bram_wdata[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[18] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(bram_wdata[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[19] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(bram_wdata[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[1] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[1]),
        .Q(bram_wdata[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[20] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(bram_wdata[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[21] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(bram_wdata[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[22] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(bram_wdata[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[23] 
       (.C(aclk),
        .CE(\packed_bytes[23]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(bram_wdata[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[2] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[2]),
        .Q(bram_wdata[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[3] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[3]),
        .Q(bram_wdata[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[4] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[4]),
        .Q(bram_wdata[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[5] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[5]),
        .Q(bram_wdata[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[6] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[6]),
        .Q(bram_wdata[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[7] 
       (.C(aclk),
        .CE(\packed_bytes[7]_i_1_n_0 ),
        .D(gray_data[7]),
        .Q(bram_wdata[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[8] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(bram_wdata[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \packed_bytes_reg[9] 
       (.C(aclk),
        .CE(\packed_bytes[15]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(bram_wdata[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    ready_INST_0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(ready));
  FDRE \request_ticks_reg[0] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[0]),
        .Q(request_ticks[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[10] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[10]),
        .Q(request_ticks[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[11] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[11]),
        .Q(request_ticks[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[12] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[12]),
        .Q(request_ticks[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[13] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[13]),
        .Q(request_ticks[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[14] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[14]),
        .Q(request_ticks[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[15] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[15]),
        .Q(request_ticks[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[16] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[16]),
        .Q(request_ticks[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[17] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[17]),
        .Q(request_ticks[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[18] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[18]),
        .Q(request_ticks[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[19] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[19]),
        .Q(request_ticks[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[1] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[1]),
        .Q(request_ticks[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[20] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[20]),
        .Q(request_ticks[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[21] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[21]),
        .Q(request_ticks[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[22] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[22]),
        .Q(request_ticks[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[23] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[23]),
        .Q(request_ticks[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[24] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[24]),
        .Q(request_ticks[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[25] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[25]),
        .Q(request_ticks[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[26] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[26]),
        .Q(request_ticks[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[27] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[27]),
        .Q(request_ticks[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[28] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[28]),
        .Q(request_ticks[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[29] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[29]),
        .Q(request_ticks[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[2] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[2]),
        .Q(request_ticks[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[30] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[30]),
        .Q(request_ticks[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[31] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[31]),
        .Q(request_ticks[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[32] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[32]),
        .Q(request_ticks[32]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[33] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[33]),
        .Q(request_ticks[33]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[34] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[34]),
        .Q(request_ticks[34]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[35] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[35]),
        .Q(request_ticks[35]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[36] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[36]),
        .Q(request_ticks[36]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[37] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[37]),
        .Q(request_ticks[37]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[38] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[38]),
        .Q(request_ticks[38]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[39] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[39]),
        .Q(request_ticks[39]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[3] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[3]),
        .Q(request_ticks[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[40] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[40]),
        .Q(request_ticks[40]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[41] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[41]),
        .Q(request_ticks[41]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[42] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[42]),
        .Q(request_ticks[42]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[43] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[43]),
        .Q(request_ticks[43]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[44] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[44]),
        .Q(request_ticks[44]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[45] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[45]),
        .Q(request_ticks[45]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[46] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[46]),
        .Q(request_ticks[46]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[47] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[47]),
        .Q(request_ticks[47]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[48] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[48]),
        .Q(request_ticks[48]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[49] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[49]),
        .Q(request_ticks[49]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[4] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[4]),
        .Q(request_ticks[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[50] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[50]),
        .Q(request_ticks[50]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[51] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[51]),
        .Q(request_ticks[51]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[52] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[52]),
        .Q(request_ticks[52]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[53] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[53]),
        .Q(request_ticks[53]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[54] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[54]),
        .Q(request_ticks[54]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[55] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[55]),
        .Q(request_ticks[55]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[56] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[56]),
        .Q(request_ticks[56]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[57] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[57]),
        .Q(request_ticks[57]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[58] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[58]),
        .Q(request_ticks[58]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[59] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[59]),
        .Q(request_ticks[59]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[5] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[5]),
        .Q(request_ticks[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[60] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[60]),
        .Q(request_ticks[60]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[61] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[61]),
        .Q(request_ticks[61]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[62] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[62]),
        .Q(request_ticks[62]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[63] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[63]),
        .Q(request_ticks[63]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[6] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[6]),
        .Q(request_ticks[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[7] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[7]),
        .Q(request_ticks[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[8] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[8]),
        .Q(request_ticks[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \request_ticks_reg[9] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(time_ticks[9]),
        .Q(request_ticks[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4455445554545455)) 
    snap_abort_event_i_1
       (.I0(\snap_error_code[1]_i_6_n_0 ),
        .I1(\snap_error_code[1]_i_3_n_0 ),
        .I2(frame_abort),
        .I3(snap_abort_event_i_2_n_0),
        .I4(timed_out),
        .I5(snap_abort_event_i_3_n_0),
        .O(snap_abort_event_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    snap_abort_event_i_2
       (.I0(\snap_error_code[0]_i_4_n_0 ),
        .I1(snap_abort_event_i_4_n_0),
        .I2(verdict_good),
        .I3(state2),
        .I4(verdict_valid),
        .O(snap_abort_event_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    snap_abort_event_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(snap_abort_event_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    snap_abort_event_i_4
       (.I0(gray_sof),
        .I1(gray_valid),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(gray_eol),
        .O(snap_abort_event_i_4_n_0));
  FDRE snap_abort_event_reg
       (.C(aclk),
        .CE(1'b1),
        .D(snap_abort_event_i_1_n_0),
        .Q(snap_abort_event),
        .R(1'b0));
  FDRE \snap_commit_ticks_reg[0] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[0]),
        .Q(snap_commit_ticks[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[10] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[10]),
        .Q(snap_commit_ticks[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[11] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[11]),
        .Q(snap_commit_ticks[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[12] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[12]),
        .Q(snap_commit_ticks[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[13] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[13]),
        .Q(snap_commit_ticks[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[14] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[14]),
        .Q(snap_commit_ticks[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[15] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[15]),
        .Q(snap_commit_ticks[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[16] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[16]),
        .Q(snap_commit_ticks[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[17] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[17]),
        .Q(snap_commit_ticks[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[18] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[18]),
        .Q(snap_commit_ticks[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[19] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[19]),
        .Q(snap_commit_ticks[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[1] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[1]),
        .Q(snap_commit_ticks[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[20] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[20]),
        .Q(snap_commit_ticks[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[21] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[21]),
        .Q(snap_commit_ticks[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[22] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[22]),
        .Q(snap_commit_ticks[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[23] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[23]),
        .Q(snap_commit_ticks[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[24] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[24]),
        .Q(snap_commit_ticks[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[25] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[25]),
        .Q(snap_commit_ticks[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[26] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[26]),
        .Q(snap_commit_ticks[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[27] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[27]),
        .Q(snap_commit_ticks[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[28] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[28]),
        .Q(snap_commit_ticks[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[29] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[29]),
        .Q(snap_commit_ticks[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[2] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[2]),
        .Q(snap_commit_ticks[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[30] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[30]),
        .Q(snap_commit_ticks[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[31] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[31]),
        .Q(snap_commit_ticks[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[32] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[32]),
        .Q(snap_commit_ticks[32]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[33] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[33]),
        .Q(snap_commit_ticks[33]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[34] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[34]),
        .Q(snap_commit_ticks[34]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[35] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[35]),
        .Q(snap_commit_ticks[35]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[36] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[36]),
        .Q(snap_commit_ticks[36]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[37] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[37]),
        .Q(snap_commit_ticks[37]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[38] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[38]),
        .Q(snap_commit_ticks[38]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[39] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[39]),
        .Q(snap_commit_ticks[39]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[3] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[3]),
        .Q(snap_commit_ticks[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[40] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[40]),
        .Q(snap_commit_ticks[40]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[41] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[41]),
        .Q(snap_commit_ticks[41]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[42] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[42]),
        .Q(snap_commit_ticks[42]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[43] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[43]),
        .Q(snap_commit_ticks[43]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[44] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[44]),
        .Q(snap_commit_ticks[44]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[45] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[45]),
        .Q(snap_commit_ticks[45]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[46] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[46]),
        .Q(snap_commit_ticks[46]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[47] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[47]),
        .Q(snap_commit_ticks[47]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[48] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[48]),
        .Q(snap_commit_ticks[48]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[49] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[49]),
        .Q(snap_commit_ticks[49]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[4] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[4]),
        .Q(snap_commit_ticks[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[50] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[50]),
        .Q(snap_commit_ticks[50]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[51] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[51]),
        .Q(snap_commit_ticks[51]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[52] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[52]),
        .Q(snap_commit_ticks[52]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[53] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[53]),
        .Q(snap_commit_ticks[53]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[54] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[54]),
        .Q(snap_commit_ticks[54]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[55] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[55]),
        .Q(snap_commit_ticks[55]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[56] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[56]),
        .Q(snap_commit_ticks[56]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[57] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[57]),
        .Q(snap_commit_ticks[57]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[58] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[58]),
        .Q(snap_commit_ticks[58]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[59] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[59]),
        .Q(snap_commit_ticks[59]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[5] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[5]),
        .Q(snap_commit_ticks[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[60] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[60]),
        .Q(snap_commit_ticks[60]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[61] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[61]),
        .Q(snap_commit_ticks[61]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[62] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[62]),
        .Q(snap_commit_ticks[62]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[63] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[63]),
        .Q(snap_commit_ticks[63]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[6] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[6]),
        .Q(snap_commit_ticks[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[7] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[7]),
        .Q(snap_commit_ticks[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[8] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[8]),
        .Q(snap_commit_ticks[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_commit_ticks_reg[9] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(time_ticks[9]),
        .Q(snap_commit_ticks[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[0] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[0]),
        .Q(snap_epoch[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[10] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[10]),
        .Q(snap_epoch[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[11] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[11]),
        .Q(snap_epoch[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[12] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[12]),
        .Q(snap_epoch[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[13] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[13]),
        .Q(snap_epoch[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[14] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[14]),
        .Q(snap_epoch[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[15] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[15]),
        .Q(snap_epoch[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[16] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[16]),
        .Q(snap_epoch[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[17] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[17]),
        .Q(snap_epoch[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[18] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[18]),
        .Q(snap_epoch[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[19] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[19]),
        .Q(snap_epoch[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[1] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[1]),
        .Q(snap_epoch[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[20] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[20]),
        .Q(snap_epoch[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[21] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[21]),
        .Q(snap_epoch[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[22] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[22]),
        .Q(snap_epoch[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[23] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[23]),
        .Q(snap_epoch[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[24] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[24]),
        .Q(snap_epoch[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[25] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[25]),
        .Q(snap_epoch[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[26] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[26]),
        .Q(snap_epoch[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[27] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[27]),
        .Q(snap_epoch[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[28] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[28]),
        .Q(snap_epoch[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[29] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[29]),
        .Q(snap_epoch[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[2] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[2]),
        .Q(snap_epoch[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[30] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[30]),
        .Q(snap_epoch[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[31] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[31]),
        .Q(snap_epoch[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[3] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[3]),
        .Q(snap_epoch[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[4] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[4]),
        .Q(snap_epoch[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[5] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[5]),
        .Q(snap_epoch[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[6] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[6]),
        .Q(snap_epoch[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[7] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[7]),
        .Q(snap_epoch[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[8] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[8]),
        .Q(snap_epoch[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_epoch_reg[9] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(epoch[9]),
        .Q(snap_epoch[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \snap_error_code[0]_i_1 
       (.I0(\snap_error_code[0]_i_2_n_0 ),
        .I1(\snap_error_code[0]_i_3_n_0 ),
        .I2(\snap_error_code[1]_i_2_n_0 ),
        .I3(snap_error_code[0]),
        .I4(\snap_error_code[1]_i_4_n_0 ),
        .O(\snap_error_code[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \snap_error_code[0]_i_2 
       (.I0(\snap_error_code[1]_i_3_n_0 ),
        .I1(aresetn),
        .I2(cancel),
        .O(\snap_error_code[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F4F044404440)) 
    \snap_error_code[0]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(timed_out),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(gray_eol),
        .I5(\snap_error_code[0]_i_4_n_0 ),
        .O(\snap_error_code[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \snap_error_code[0]_i_4 
       (.I0(verdict_valid),
        .I1(matching_verdict0),
        .I2(verdict_good),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\snap_error_code[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEF0F2)) 
    \snap_error_code[1]_i_1 
       (.I0(snap_error_code[1]),
        .I1(\snap_error_code[1]_i_2_n_0 ),
        .I2(\snap_error_code[1]_i_3_n_0 ),
        .I3(\snap_error_code[1]_i_4_n_0 ),
        .I4(\snap_error_code[1]_i_5_n_0 ),
        .I5(\snap_error_code[1]_i_6_n_0 ),
        .O(\snap_error_code[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \snap_error_code[1]_i_10 
       (.I0(timed_out),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\snap_error_code[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00DD00FD)) 
    \snap_error_code[1]_i_2 
       (.I0(\snap_request_id[31]_i_4_n_0 ),
        .I1(\snap_error_code[1]_i_7_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\snap_error_code[1]_i_8_n_0 ),
        .I5(\snap_error_code[1]_i_9_n_0 ),
        .O(\snap_error_code[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8A8A8AA8)) 
    \snap_error_code[1]_i_3 
       (.I0(provenance_fault),
        .I1(request),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\snap_error_code[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h22E02220)) 
    \snap_error_code[1]_i_4 
       (.I0(frame_abort),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(clear_error),
        .O(\snap_error_code[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC0CCCDCC)) 
    \snap_error_code[1]_i_5 
       (.I0(gray_eol),
        .I1(\snap_source_ticks[63]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\snap_error_code[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \snap_error_code[1]_i_6 
       (.I0(cancel),
        .I1(aresetn),
        .O(\snap_error_code[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0C0C0800)) 
    \snap_error_code[1]_i_7 
       (.I0(gray_valid),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\packed_bytes[7]_i_2_n_0 ),
        .I4(frame_commit),
        .O(\snap_error_code[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8BBBBBBB)) 
    \snap_error_code[1]_i_8 
       (.I0(\snap_frame_id[31]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(gray_valid),
        .I3(gray_sof),
        .I4(\state[2]_i_7_n_0 ),
        .O(\snap_error_code[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \snap_error_code[1]_i_9 
       (.I0(\snap_error_code[1]_i_10_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(verdict_good),
        .I4(matching_verdict0),
        .I5(verdict_valid),
        .O(\snap_error_code[1]_i_9_n_0 ));
  FDRE \snap_error_code_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\snap_error_code[0]_i_1_n_0 ),
        .Q(snap_error_code[0]),
        .R(1'b0));
  FDRE \snap_error_code_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\snap_error_code[1]_i_1_n_0 ),
        .Q(snap_error_code[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \snap_frame_id[31]_i_1 
       (.I0(\snap_frame_id[31]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\snap_frame_id[31]_i_3_n_0 ),
        .I5(\snap_frame_id[31]_i_4_n_0 ),
        .O(\snap_frame_id[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \snap_frame_id[31]_i_2 
       (.I0(\snap_error_code[1]_i_3_n_0 ),
        .I1(\snap_source_ticks[63]_i_2_n_0 ),
        .I2(cancel),
        .O(\snap_frame_id[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \snap_frame_id[31]_i_3 
       (.I0(gray_valid),
        .I1(state3),
        .I2(commit_seen),
        .I3(frame_commit),
        .O(\snap_frame_id[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0E0E0E0E0E0E0)) 
    \snap_frame_id[31]_i_4 
       (.I0(commit_seen),
        .I1(frame_commit),
        .I2(verdict_seen),
        .I3(matching_verdict0),
        .I4(verdict_valid),
        .I5(verdict_good),
        .O(\snap_frame_id[31]_i_4_n_0 ));
  FDRE \snap_frame_id_reg[0] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[0]),
        .Q(snap_frame_id[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[10] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[10]),
        .Q(snap_frame_id[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[11] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[11]),
        .Q(snap_frame_id[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[12] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[12]),
        .Q(snap_frame_id[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[13] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[13]),
        .Q(snap_frame_id[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[14] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[14]),
        .Q(snap_frame_id[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[15] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[15]),
        .Q(snap_frame_id[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[16] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[16]),
        .Q(snap_frame_id[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[17] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[17]),
        .Q(snap_frame_id[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[18] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[18]),
        .Q(snap_frame_id[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[19] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[19]),
        .Q(snap_frame_id[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[1] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[1]),
        .Q(snap_frame_id[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[20] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[20]),
        .Q(snap_frame_id[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[21] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[21]),
        .Q(snap_frame_id[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[22] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[22]),
        .Q(snap_frame_id[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[23] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[23]),
        .Q(snap_frame_id[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[24] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[24]),
        .Q(snap_frame_id[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[25] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[25]),
        .Q(snap_frame_id[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[26] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[26]),
        .Q(snap_frame_id[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[27] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[27]),
        .Q(snap_frame_id[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[28] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[28]),
        .Q(snap_frame_id[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[29] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[29]),
        .Q(snap_frame_id[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[2] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[2]),
        .Q(snap_frame_id[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[30] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[30]),
        .Q(snap_frame_id[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[31] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[31]),
        .Q(snap_frame_id[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[3] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[3]),
        .Q(snap_frame_id[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[4] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[4]),
        .Q(snap_frame_id[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[5] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[5]),
        .Q(snap_frame_id[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[6] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[6]),
        .Q(snap_frame_id[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[7] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[7]),
        .Q(snap_frame_id[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[8] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[8]),
        .Q(snap_frame_id[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_frame_id_reg[9] 
       (.C(aclk),
        .CE(\snap_frame_id[31]_i_1_n_0 ),
        .D(source_frame[9]),
        .Q(snap_frame_id[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    snap_ready_event_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\snap_frame_id[31]_i_3_n_0 ),
        .I4(\snap_frame_id[31]_i_4_n_0 ),
        .I5(snap_ready_event_i_2_n_0),
        .O(snap_ready_event_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0FC8FFFFFFFF)) 
    snap_ready_event_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(frame_abort),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\snap_error_code[1]_i_9_n_0 ),
        .I5(\snap_error_code[0]_i_2_n_0 ),
        .O(snap_ready_event_i_2_n_0));
  FDRE snap_ready_event_reg
       (.C(aclk),
        .CE(1'b1),
        .D(snap_ready_event_i_1_n_0),
        .Q(snap_ready_event),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \snap_request_id[31]_i_1 
       (.I0(aresetn),
        .O(\snap_request_id[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \snap_request_id[31]_i_10 
       (.I0(epoch[3]),
        .I1(epoch[29]),
        .I2(epoch[14]),
        .I3(epoch[27]),
        .I4(\snap_request_id[31]_i_12_n_0 ),
        .O(\snap_request_id[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \snap_request_id[31]_i_11 
       (.I0(epoch[15]),
        .I1(epoch[11]),
        .I2(epoch[9]),
        .I3(epoch[5]),
        .O(\snap_request_id[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \snap_request_id[31]_i_12 
       (.I0(epoch[25]),
        .I1(epoch[1]),
        .I2(epoch[18]),
        .I3(epoch[7]),
        .O(\snap_request_id[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \snap_request_id[31]_i_2 
       (.I0(\snap_request_id[31]_i_3_n_0 ),
        .I1(\snap_request_id[31]_i_4_n_0 ),
        .O(request_ticks_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \snap_request_id[31]_i_3 
       (.I0(cancel),
        .I1(\snap_source_ticks[63]_i_2_n_0 ),
        .I2(\snap_error_code[1]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .O(\snap_request_id[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \snap_request_id[31]_i_4 
       (.I0(\snap_request_id[31]_i_5_n_0 ),
        .I1(\snap_request_id[31]_i_6_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(request),
        .O(\snap_request_id[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \snap_request_id[31]_i_5 
       (.I0(\snap_request_id[31]_i_7_n_0 ),
        .I1(epoch[20]),
        .I2(epoch[16]),
        .I3(epoch[13]),
        .I4(epoch[8]),
        .I5(\snap_request_id[31]_i_8_n_0 ),
        .O(\snap_request_id[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \snap_request_id[31]_i_6 
       (.I0(\snap_request_id[31]_i_9_n_0 ),
        .I1(epoch[30]),
        .I2(epoch[31]),
        .I3(epoch[21]),
        .I4(epoch[19]),
        .I5(\snap_request_id[31]_i_10_n_0 ),
        .O(\snap_request_id[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \snap_request_id[31]_i_7 
       (.I0(epoch[12]),
        .I1(epoch[10]),
        .I2(epoch[22]),
        .I3(epoch[6]),
        .O(\snap_request_id[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \snap_request_id[31]_i_8 
       (.I0(epoch[4]),
        .I1(epoch[26]),
        .I2(epoch[0]),
        .I3(epoch[24]),
        .I4(\snap_request_id[31]_i_11_n_0 ),
        .O(\snap_request_id[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \snap_request_id[31]_i_9 
       (.I0(epoch[28]),
        .I1(epoch[2]),
        .I2(epoch[23]),
        .I3(epoch[17]),
        .O(\snap_request_id[31]_i_9_n_0 ));
  FDRE \snap_request_id_reg[0] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[0]),
        .Q(snap_request_id[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[10] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[10]),
        .Q(snap_request_id[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[11] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[11]),
        .Q(snap_request_id[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[12] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[12]),
        .Q(snap_request_id[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[13] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[13]),
        .Q(snap_request_id[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[14] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[14]),
        .Q(snap_request_id[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[15] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[15]),
        .Q(snap_request_id[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[16] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[16]),
        .Q(snap_request_id[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[17] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[17]),
        .Q(snap_request_id[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[18] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[18]),
        .Q(snap_request_id[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[19] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[19]),
        .Q(snap_request_id[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[1] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[1]),
        .Q(snap_request_id[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[20] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[20]),
        .Q(snap_request_id[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[21] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[21]),
        .Q(snap_request_id[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[22] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[22]),
        .Q(snap_request_id[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[23] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[23]),
        .Q(snap_request_id[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[24] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[24]),
        .Q(snap_request_id[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[25] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[25]),
        .Q(snap_request_id[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[26] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[26]),
        .Q(snap_request_id[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[27] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[27]),
        .Q(snap_request_id[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[28] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[28]),
        .Q(snap_request_id[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[29] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[29]),
        .Q(snap_request_id[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[2] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[2]),
        .Q(snap_request_id[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[30] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[30]),
        .Q(snap_request_id[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[31] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[31]),
        .Q(snap_request_id[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[3] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[3]),
        .Q(snap_request_id[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[4] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[4]),
        .Q(snap_request_id[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[5] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[5]),
        .Q(snap_request_id[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[6] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[6]),
        .Q(snap_request_id[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[7] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[7]),
        .Q(snap_request_id[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[8] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[8]),
        .Q(snap_request_id[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_request_id_reg[9] 
       (.C(aclk),
        .CE(request_ticks_1),
        .D(request_id[9]),
        .Q(snap_request_id[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \snap_source_ticks[63]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\snap_error_code[1]_i_3_n_0 ),
        .I2(\snap_source_ticks[63]_i_2_n_0 ),
        .I3(cancel),
        .I4(\snap_source_ticks[63]_i_3_n_0 ),
        .I5(\snap_source_ticks[63]_i_4_n_0 ),
        .O(expected_frame_2));
  LUT6 #(
    .INIT(64'h33333333FBFBFB33)) 
    \snap_source_ticks[63]_i_2 
       (.I0(frame_abort),
        .I1(\snap_error_code[0]_i_4_n_0 ),
        .I2(timed_out),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\snap_source_ticks[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040404)) 
    \snap_source_ticks[63]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(gray_eol),
        .I3(verdict_valid),
        .I4(state2),
        .I5(verdict_good),
        .O(\snap_source_ticks[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \snap_source_ticks[63]_i_4 
       (.I0(gray_sof),
        .I1(gray_valid),
        .O(\snap_source_ticks[63]_i_4_n_0 ));
  FDRE \snap_source_ticks_reg[0] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[0]),
        .Q(snap_source_ticks[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[10] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[10]),
        .Q(snap_source_ticks[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[11] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[11]),
        .Q(snap_source_ticks[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[12] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[12]),
        .Q(snap_source_ticks[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[13] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[13]),
        .Q(snap_source_ticks[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[14] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[14]),
        .Q(snap_source_ticks[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[15] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[15]),
        .Q(snap_source_ticks[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[16] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[16]),
        .Q(snap_source_ticks[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[17] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[17]),
        .Q(snap_source_ticks[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[18] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[18]),
        .Q(snap_source_ticks[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[19] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[19]),
        .Q(snap_source_ticks[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[1] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[1]),
        .Q(snap_source_ticks[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[20] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[20]),
        .Q(snap_source_ticks[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[21] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[21]),
        .Q(snap_source_ticks[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[22] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[22]),
        .Q(snap_source_ticks[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[23] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[23]),
        .Q(snap_source_ticks[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[24] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[24]),
        .Q(snap_source_ticks[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[25] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[25]),
        .Q(snap_source_ticks[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[26] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[26]),
        .Q(snap_source_ticks[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[27] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[27]),
        .Q(snap_source_ticks[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[28] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[28]),
        .Q(snap_source_ticks[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[29] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[29]),
        .Q(snap_source_ticks[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[2] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[2]),
        .Q(snap_source_ticks[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[30] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[30]),
        .Q(snap_source_ticks[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[31] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[31]),
        .Q(snap_source_ticks[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[32] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[32]),
        .Q(snap_source_ticks[32]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[33] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[33]),
        .Q(snap_source_ticks[33]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[34] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[34]),
        .Q(snap_source_ticks[34]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[35] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[35]),
        .Q(snap_source_ticks[35]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[36] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[36]),
        .Q(snap_source_ticks[36]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[37] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[37]),
        .Q(snap_source_ticks[37]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[38] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[38]),
        .Q(snap_source_ticks[38]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[39] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[39]),
        .Q(snap_source_ticks[39]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[3] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[3]),
        .Q(snap_source_ticks[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[40] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[40]),
        .Q(snap_source_ticks[40]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[41] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[41]),
        .Q(snap_source_ticks[41]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[42] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[42]),
        .Q(snap_source_ticks[42]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[43] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[43]),
        .Q(snap_source_ticks[43]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[44] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[44]),
        .Q(snap_source_ticks[44]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[45] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[45]),
        .Q(snap_source_ticks[45]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[46] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[46]),
        .Q(snap_source_ticks[46]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[47] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[47]),
        .Q(snap_source_ticks[47]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[48] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[48]),
        .Q(snap_source_ticks[48]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[49] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[49]),
        .Q(snap_source_ticks[49]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[4] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[4]),
        .Q(snap_source_ticks[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[50] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[50]),
        .Q(snap_source_ticks[50]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[51] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[51]),
        .Q(snap_source_ticks[51]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[52] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[52]),
        .Q(snap_source_ticks[52]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[53] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[53]),
        .Q(snap_source_ticks[53]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[54] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[54]),
        .Q(snap_source_ticks[54]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[55] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[55]),
        .Q(snap_source_ticks[55]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[56] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[56]),
        .Q(snap_source_ticks[56]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[57] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[57]),
        .Q(snap_source_ticks[57]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[58] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[58]),
        .Q(snap_source_ticks[58]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[59] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[59]),
        .Q(snap_source_ticks[59]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[5] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[5]),
        .Q(snap_source_ticks[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[60] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[60]),
        .Q(snap_source_ticks[60]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[61] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[61]),
        .Q(snap_source_ticks[61]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[62] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[62]),
        .Q(snap_source_ticks[62]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[63] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[63]),
        .Q(snap_source_ticks[63]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[6] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[6]),
        .Q(snap_source_ticks[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[7] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[7]),
        .Q(snap_source_ticks[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[8] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[8]),
        .Q(snap_source_ticks[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \snap_source_ticks_reg[9] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(time_ticks[9]),
        .Q(snap_source_ticks[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008880)) 
    snap_timeout_event_i_1
       (.I0(\snap_error_code[0]_i_2_n_0 ),
        .I1(timed_out),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(frame_abort),
        .O(snap_timeout_event_i_1_n_0));
  FDRE snap_timeout_event_reg
       (.C(aclk),
        .CE(1'b1),
        .D(snap_timeout_event_i_1_n_0),
        .Q(snap_timeout_event),
        .R(1'b0));
  FDRE \source_frame_reg[0] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[0]),
        .Q(source_frame[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[10] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[10]),
        .Q(source_frame[10]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[11] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[11]),
        .Q(source_frame[11]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[12] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[12]),
        .Q(source_frame[12]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[13] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[13]),
        .Q(source_frame[13]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[14] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[14]),
        .Q(source_frame[14]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[15] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[15]),
        .Q(source_frame[15]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[16] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[16]),
        .Q(source_frame[16]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[17] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[17]),
        .Q(source_frame[17]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[18] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[18]),
        .Q(source_frame[18]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[19] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[19]),
        .Q(source_frame[19]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[1] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[1]),
        .Q(source_frame[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[20] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[20]),
        .Q(source_frame[20]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[21] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[21]),
        .Q(source_frame[21]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[22] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[22]),
        .Q(source_frame[22]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[23] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[23]),
        .Q(source_frame[23]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[24] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[24]),
        .Q(source_frame[24]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[25] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[25]),
        .Q(source_frame[25]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[26] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[26]),
        .Q(source_frame[26]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[27] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[27]),
        .Q(source_frame[27]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[28] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[28]),
        .Q(source_frame[28]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[29] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[29]),
        .Q(source_frame[29]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[2] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[2]),
        .Q(source_frame[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[30] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[30]),
        .Q(source_frame[30]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[31] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[31]),
        .Q(source_frame[31]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[3] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[3]),
        .Q(source_frame[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[4] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[4]),
        .Q(source_frame[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[5] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[5]),
        .Q(source_frame[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[6] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[6]),
        .Q(source_frame[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[7] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[7]),
        .Q(source_frame[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[8] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[8]),
        .Q(source_frame[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \source_frame_reg[9] 
       (.C(aclk),
        .CE(expected_frame_2),
        .D(gray_source_id[9]),
        .Q(source_frame[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__0/i__carry_n_0 ,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \state1_inferred__0/i__carry__0 
       (.CI(\state1_inferred__0/i__carry_n_0 ),
        .CO({\state1_inferred__0/i__carry__0_n_0 ,\state1_inferred__0/i__carry__0_n_1 ,\state1_inferred__0/i__carry__0_n_2 ,\state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \state1_inferred__0/i__carry__1 
       (.CI(\state1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED [3],state1,\state1_inferred__0/i__carry__1_n_2 ,\state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  CARRY4 \state2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state2_inferred__0/i__carry_n_0 ,\state2_inferred__0/i__carry_n_1 ,\state2_inferred__0/i__carry_n_2 ,\state2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \state2_inferred__0/i__carry__0 
       (.CI(\state2_inferred__0/i__carry_n_0 ),
        .CO({\state2_inferred__0/i__carry__0_n_0 ,\state2_inferred__0/i__carry__0_n_1 ,\state2_inferred__0/i__carry__0_n_2 ,\state2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \state2_inferred__0/i__carry__1 
       (.CI(\state2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_state2_inferred__0/i__carry__1_CO_UNCONNECTED [3],state2,\state2_inferred__0/i__carry__1_n_2 ,\state2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  CARRY4 state3_carry
       (.CI(1'b0),
        .CO({state3_carry_n_0,state3_carry_n_1,state3_carry_n_2,state3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_state3_carry_O_UNCONNECTED[3:0]),
        .S({state3_carry_i_1_n_0,state3_carry_i_2_n_0,state3_carry_i_3_n_0,state3_carry_i_4_n_0}));
  CARRY4 state3_carry__0
       (.CI(state3_carry_n_0),
        .CO({state3_carry__0_n_0,state3_carry__0_n_1,state3_carry__0_n_2,state3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_state3_carry__0_O_UNCONNECTED[3:0]),
        .S({state3_carry__0_i_1_n_0,state3_carry__0_i_2_n_0,state3_carry__0_i_3_n_0,state3_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__0_i_1
       (.I0(committed_frame_id[21]),
        .I1(expected_frame[21]),
        .I2(committed_frame_id[22]),
        .I3(expected_frame[22]),
        .I4(expected_frame[23]),
        .I5(committed_frame_id[23]),
        .O(state3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__0_i_2
       (.I0(committed_frame_id[18]),
        .I1(expected_frame[18]),
        .I2(committed_frame_id[19]),
        .I3(expected_frame[19]),
        .I4(expected_frame[20]),
        .I5(committed_frame_id[20]),
        .O(state3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__0_i_3
       (.I0(committed_frame_id[15]),
        .I1(expected_frame[15]),
        .I2(committed_frame_id[16]),
        .I3(expected_frame[16]),
        .I4(expected_frame[17]),
        .I5(committed_frame_id[17]),
        .O(state3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__0_i_4
       (.I0(committed_frame_id[12]),
        .I1(expected_frame[12]),
        .I2(committed_frame_id[13]),
        .I3(expected_frame[13]),
        .I4(expected_frame[14]),
        .I5(committed_frame_id[14]),
        .O(state3_carry__0_i_4_n_0));
  CARRY4 state3_carry__1
       (.CI(state3_carry__0_n_0),
        .CO({NLW_state3_carry__1_CO_UNCONNECTED[3],state3,state3_carry__1_n_2,state3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_state3_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state3_carry__1_i_1_n_0,state3_carry__1_i_2_n_0,state3_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    state3_carry__1_i_1
       (.I0(expected_frame[31]),
        .I1(committed_frame_id[31]),
        .I2(expected_frame[30]),
        .I3(committed_frame_id[30]),
        .O(state3_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__1_i_2
       (.I0(committed_frame_id[27]),
        .I1(expected_frame[27]),
        .I2(committed_frame_id[28]),
        .I3(expected_frame[28]),
        .I4(expected_frame[29]),
        .I5(committed_frame_id[29]),
        .O(state3_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry__1_i_3
       (.I0(committed_frame_id[26]),
        .I1(expected_frame[26]),
        .I2(committed_frame_id[24]),
        .I3(expected_frame[24]),
        .I4(expected_frame[25]),
        .I5(committed_frame_id[25]),
        .O(state3_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry_i_1
       (.I0(committed_frame_id[11]),
        .I1(expected_frame[11]),
        .I2(committed_frame_id[9]),
        .I3(expected_frame[9]),
        .I4(expected_frame[10]),
        .I5(committed_frame_id[10]),
        .O(state3_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry_i_2
       (.I0(committed_frame_id[7]),
        .I1(expected_frame[7]),
        .I2(committed_frame_id[6]),
        .I3(expected_frame[6]),
        .I4(expected_frame[8]),
        .I5(committed_frame_id[8]),
        .O(state3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry_i_3
       (.I0(committed_frame_id[3]),
        .I1(expected_frame[3]),
        .I2(committed_frame_id[4]),
        .I3(expected_frame[4]),
        .I4(expected_frame[5]),
        .I5(committed_frame_id[5]),
        .O(state3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state3_carry_i_4
       (.I0(committed_frame_id[0]),
        .I1(expected_frame[0]),
        .I2(committed_frame_id[1]),
        .I3(expected_frame[1]),
        .I4(expected_frame[2]),
        .I5(committed_frame_id[2]),
        .O(state3_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FEFEFECE)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\snap_error_code[1]_i_3_n_0 ),
        .I2(state0),
        .I3(\snap_source_ticks[63]_i_2_n_0 ),
        .I4(\state[0]_i_2_n_0 ),
        .I5(\snap_error_code[1]_i_6_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7F4F)) 
    \state[0]_i_2 
       (.I0(\snap_frame_id[31]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(gray_eol),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \state[0]_i_3 
       (.I0(verdict_good),
        .I1(state2),
        .I2(verdict_valid),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(state0),
        .I2(\state[1]_i_2_n_0 ),
        .I3(cancel),
        .I4(aresetn),
        .I5(\snap_error_code[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400540)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(bram_we_INST_0_i_3_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[2]_i_7_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FFF5DFD5FF55DF5)) 
    \state[1]_i_3 
       (.I0(\snap_error_code[0]_i_4_n_0 ),
        .I1(timed_out),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(frame_abort),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\snap_error_code[1]_i_3_n_0 ),
        .I2(state0),
        .I3(\state[2]_i_3_n_0 ),
        .I4(aresetn),
        .I5(cancel),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \state[2]_i_10 
       (.I0(bram_addr[1]),
        .I1(bram_addr[12]),
        .I2(bram_addr[9]),
        .I3(bram_addr[11]),
        .I4(\state[2]_i_12_n_0 ),
        .O(\state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0FC8)) 
    \state[2]_i_11 
       (.I0(\state_reg_n_0_[0] ),
        .I1(frame_abort),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[2]_i_12 
       (.I0(bram_addr[0]),
        .I1(bram_addr[13]),
        .I2(bram_addr[5]),
        .I3(bram_addr[3]),
        .O(\state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \state[2]_i_2 
       (.I0(\snap_request_id[31]_i_4_n_0 ),
        .I1(\snap_source_ticks[63]_i_2_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\state[2]_i_5_n_0 ),
        .I4(format_error_event_i_3_n_0),
        .I5(\state[2]_i_6_n_0 ),
        .O(state0));
  LUT6 #(
    .INIT(64'hAEAEAEAAAFAFAEAA)) 
    \state[2]_i_3 
       (.I0(\snap_source_ticks[63]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[2]_i_7_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(bram_we_INST_0_i_3_n_0),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \state[2]_i_4 
       (.I0(\state[2]_i_8_n_0 ),
        .I1(\state[2]_i_9_n_0 ),
        .I2(bram_addr[6]),
        .I3(bram_addr[2]),
        .I4(bram_addr[14]),
        .I5(\state[2]_i_10_n_0 ),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000737F7F7F)) 
    \state[2]_i_5 
       (.I0(\snap_frame_id[31]_i_4_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(gray_valid),
        .I4(gray_sof),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00002AAA)) 
    \state[2]_i_6 
       (.I0(\state[2]_i_11_n_0 ),
        .I1(ready),
        .I2(state1),
        .I3(release_frame),
        .I4(\snap_error_code[1]_i_4_n_0 ),
        .O(\state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \state[2]_i_7 
       (.I0(gray_eol),
        .I1(verdict_valid),
        .I2(state2),
        .I3(verdict_good),
        .O(\state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[2]_i_8 
       (.I0(bram_addr[7]),
        .I1(bram_addr[10]),
        .I2(bram_addr[4]),
        .I3(bram_addr[8]),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \state[2]_i_9 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(frame_commit),
        .I3(gray_valid),
        .O(\state[2]_i_9_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 timed_out0_carry
       (.CI(1'b0),
        .CO({timed_out0_carry_n_0,timed_out0_carry_n_1,timed_out0_carry_n_2,timed_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(time_ticks[3:0]),
        .O(timed_out0[3:0]),
        .S({timed_out0_carry_i_1_n_0,timed_out0_carry_i_2_n_0,timed_out0_carry_i_3_n_0,timed_out0_carry_i_4_n_0}));
  CARRY4 timed_out0_carry__0
       (.CI(timed_out0_carry_n_0),
        .CO({timed_out0_carry__0_n_0,timed_out0_carry__0_n_1,timed_out0_carry__0_n_2,timed_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[7:4]),
        .O(timed_out0[7:4]),
        .S({timed_out0_carry__0_i_1_n_0,timed_out0_carry__0_i_2_n_0,timed_out0_carry__0_i_3_n_0,timed_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__0_i_1
       (.I0(time_ticks[7]),
        .I1(request_ticks[7]),
        .O(timed_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__0_i_2
       (.I0(time_ticks[6]),
        .I1(request_ticks[6]),
        .O(timed_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__0_i_3
       (.I0(time_ticks[5]),
        .I1(request_ticks[5]),
        .O(timed_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__0_i_4
       (.I0(time_ticks[4]),
        .I1(request_ticks[4]),
        .O(timed_out0_carry__0_i_4_n_0));
  CARRY4 timed_out0_carry__1
       (.CI(timed_out0_carry__0_n_0),
        .CO({timed_out0_carry__1_n_0,timed_out0_carry__1_n_1,timed_out0_carry__1_n_2,timed_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[11:8]),
        .O(timed_out0[11:8]),
        .S({timed_out0_carry__1_i_1_n_0,timed_out0_carry__1_i_2_n_0,timed_out0_carry__1_i_3_n_0,timed_out0_carry__1_i_4_n_0}));
  CARRY4 timed_out0_carry__10
       (.CI(timed_out0_carry__9_n_0),
        .CO({timed_out0_carry__10_n_0,timed_out0_carry__10_n_1,timed_out0_carry__10_n_2,timed_out0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[47:44]),
        .O(timed_out0[47:44]),
        .S({timed_out0_carry__10_i_1_n_0,timed_out0_carry__10_i_2_n_0,timed_out0_carry__10_i_3_n_0,timed_out0_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__10_i_1
       (.I0(time_ticks[47]),
        .I1(request_ticks[47]),
        .O(timed_out0_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__10_i_2
       (.I0(time_ticks[46]),
        .I1(request_ticks[46]),
        .O(timed_out0_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__10_i_3
       (.I0(time_ticks[45]),
        .I1(request_ticks[45]),
        .O(timed_out0_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__10_i_4
       (.I0(time_ticks[44]),
        .I1(request_ticks[44]),
        .O(timed_out0_carry__10_i_4_n_0));
  CARRY4 timed_out0_carry__11
       (.CI(timed_out0_carry__10_n_0),
        .CO({timed_out0_carry__11_n_0,timed_out0_carry__11_n_1,timed_out0_carry__11_n_2,timed_out0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[51:48]),
        .O(timed_out0[51:48]),
        .S({timed_out0_carry__11_i_1_n_0,timed_out0_carry__11_i_2_n_0,timed_out0_carry__11_i_3_n_0,timed_out0_carry__11_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__11_i_1
       (.I0(time_ticks[51]),
        .I1(request_ticks[51]),
        .O(timed_out0_carry__11_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__11_i_2
       (.I0(time_ticks[50]),
        .I1(request_ticks[50]),
        .O(timed_out0_carry__11_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__11_i_3
       (.I0(time_ticks[49]),
        .I1(request_ticks[49]),
        .O(timed_out0_carry__11_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__11_i_4
       (.I0(time_ticks[48]),
        .I1(request_ticks[48]),
        .O(timed_out0_carry__11_i_4_n_0));
  CARRY4 timed_out0_carry__12
       (.CI(timed_out0_carry__11_n_0),
        .CO({timed_out0_carry__12_n_0,timed_out0_carry__12_n_1,timed_out0_carry__12_n_2,timed_out0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[55:52]),
        .O(timed_out0[55:52]),
        .S({timed_out0_carry__12_i_1_n_0,timed_out0_carry__12_i_2_n_0,timed_out0_carry__12_i_3_n_0,timed_out0_carry__12_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__12_i_1
       (.I0(time_ticks[55]),
        .I1(request_ticks[55]),
        .O(timed_out0_carry__12_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__12_i_2
       (.I0(time_ticks[54]),
        .I1(request_ticks[54]),
        .O(timed_out0_carry__12_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__12_i_3
       (.I0(time_ticks[53]),
        .I1(request_ticks[53]),
        .O(timed_out0_carry__12_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__12_i_4
       (.I0(time_ticks[52]),
        .I1(request_ticks[52]),
        .O(timed_out0_carry__12_i_4_n_0));
  CARRY4 timed_out0_carry__13
       (.CI(timed_out0_carry__12_n_0),
        .CO({timed_out0_carry__13_n_0,timed_out0_carry__13_n_1,timed_out0_carry__13_n_2,timed_out0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[59:56]),
        .O(timed_out0[59:56]),
        .S({timed_out0_carry__13_i_1_n_0,timed_out0_carry__13_i_2_n_0,timed_out0_carry__13_i_3_n_0,timed_out0_carry__13_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__13_i_1
       (.I0(time_ticks[59]),
        .I1(request_ticks[59]),
        .O(timed_out0_carry__13_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__13_i_2
       (.I0(time_ticks[58]),
        .I1(request_ticks[58]),
        .O(timed_out0_carry__13_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__13_i_3
       (.I0(time_ticks[57]),
        .I1(request_ticks[57]),
        .O(timed_out0_carry__13_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__13_i_4
       (.I0(time_ticks[56]),
        .I1(request_ticks[56]),
        .O(timed_out0_carry__13_i_4_n_0));
  CARRY4 timed_out0_carry__14
       (.CI(timed_out0_carry__13_n_0),
        .CO({NLW_timed_out0_carry__14_CO_UNCONNECTED[3],timed_out0_carry__14_n_1,timed_out0_carry__14_n_2,timed_out0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,time_ticks[62:60]}),
        .O(timed_out0[63:60]),
        .S({timed_out0_carry__14_i_1_n_0,timed_out0_carry__14_i_2_n_0,timed_out0_carry__14_i_3_n_0,timed_out0_carry__14_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__14_i_1
       (.I0(time_ticks[63]),
        .I1(request_ticks[63]),
        .O(timed_out0_carry__14_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__14_i_2
       (.I0(time_ticks[62]),
        .I1(request_ticks[62]),
        .O(timed_out0_carry__14_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__14_i_3
       (.I0(time_ticks[61]),
        .I1(request_ticks[61]),
        .O(timed_out0_carry__14_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__14_i_4
       (.I0(time_ticks[60]),
        .I1(request_ticks[60]),
        .O(timed_out0_carry__14_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__1_i_1
       (.I0(time_ticks[11]),
        .I1(request_ticks[11]),
        .O(timed_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__1_i_2
       (.I0(time_ticks[10]),
        .I1(request_ticks[10]),
        .O(timed_out0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__1_i_3
       (.I0(time_ticks[9]),
        .I1(request_ticks[9]),
        .O(timed_out0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__1_i_4
       (.I0(time_ticks[8]),
        .I1(request_ticks[8]),
        .O(timed_out0_carry__1_i_4_n_0));
  CARRY4 timed_out0_carry__2
       (.CI(timed_out0_carry__1_n_0),
        .CO({timed_out0_carry__2_n_0,timed_out0_carry__2_n_1,timed_out0_carry__2_n_2,timed_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[15:12]),
        .O(timed_out0[15:12]),
        .S({timed_out0_carry__2_i_1_n_0,timed_out0_carry__2_i_2_n_0,timed_out0_carry__2_i_3_n_0,timed_out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__2_i_1
       (.I0(time_ticks[15]),
        .I1(request_ticks[15]),
        .O(timed_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__2_i_2
       (.I0(time_ticks[14]),
        .I1(request_ticks[14]),
        .O(timed_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__2_i_3
       (.I0(time_ticks[13]),
        .I1(request_ticks[13]),
        .O(timed_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__2_i_4
       (.I0(time_ticks[12]),
        .I1(request_ticks[12]),
        .O(timed_out0_carry__2_i_4_n_0));
  CARRY4 timed_out0_carry__3
       (.CI(timed_out0_carry__2_n_0),
        .CO({timed_out0_carry__3_n_0,timed_out0_carry__3_n_1,timed_out0_carry__3_n_2,timed_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[19:16]),
        .O(timed_out0[19:16]),
        .S({timed_out0_carry__3_i_1_n_0,timed_out0_carry__3_i_2_n_0,timed_out0_carry__3_i_3_n_0,timed_out0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__3_i_1
       (.I0(time_ticks[19]),
        .I1(request_ticks[19]),
        .O(timed_out0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__3_i_2
       (.I0(time_ticks[18]),
        .I1(request_ticks[18]),
        .O(timed_out0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__3_i_3
       (.I0(time_ticks[17]),
        .I1(request_ticks[17]),
        .O(timed_out0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__3_i_4
       (.I0(time_ticks[16]),
        .I1(request_ticks[16]),
        .O(timed_out0_carry__3_i_4_n_0));
  CARRY4 timed_out0_carry__4
       (.CI(timed_out0_carry__3_n_0),
        .CO({timed_out0_carry__4_n_0,timed_out0_carry__4_n_1,timed_out0_carry__4_n_2,timed_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[23:20]),
        .O(timed_out0[23:20]),
        .S({timed_out0_carry__4_i_1_n_0,timed_out0_carry__4_i_2_n_0,timed_out0_carry__4_i_3_n_0,timed_out0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__4_i_1
       (.I0(time_ticks[23]),
        .I1(request_ticks[23]),
        .O(timed_out0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__4_i_2
       (.I0(time_ticks[22]),
        .I1(request_ticks[22]),
        .O(timed_out0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__4_i_3
       (.I0(time_ticks[21]),
        .I1(request_ticks[21]),
        .O(timed_out0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__4_i_4
       (.I0(time_ticks[20]),
        .I1(request_ticks[20]),
        .O(timed_out0_carry__4_i_4_n_0));
  CARRY4 timed_out0_carry__5
       (.CI(timed_out0_carry__4_n_0),
        .CO({timed_out0_carry__5_n_0,timed_out0_carry__5_n_1,timed_out0_carry__5_n_2,timed_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[27:24]),
        .O(timed_out0[27:24]),
        .S({timed_out0_carry__5_i_1_n_0,timed_out0_carry__5_i_2_n_0,timed_out0_carry__5_i_3_n_0,timed_out0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__5_i_1
       (.I0(time_ticks[27]),
        .I1(request_ticks[27]),
        .O(timed_out0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__5_i_2
       (.I0(time_ticks[26]),
        .I1(request_ticks[26]),
        .O(timed_out0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__5_i_3
       (.I0(time_ticks[25]),
        .I1(request_ticks[25]),
        .O(timed_out0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__5_i_4
       (.I0(time_ticks[24]),
        .I1(request_ticks[24]),
        .O(timed_out0_carry__5_i_4_n_0));
  CARRY4 timed_out0_carry__6
       (.CI(timed_out0_carry__5_n_0),
        .CO({timed_out0_carry__6_n_0,timed_out0_carry__6_n_1,timed_out0_carry__6_n_2,timed_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[31:28]),
        .O(timed_out0[31:28]),
        .S({timed_out0_carry__6_i_1_n_0,timed_out0_carry__6_i_2_n_0,timed_out0_carry__6_i_3_n_0,timed_out0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__6_i_1
       (.I0(time_ticks[31]),
        .I1(request_ticks[31]),
        .O(timed_out0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__6_i_2
       (.I0(time_ticks[30]),
        .I1(request_ticks[30]),
        .O(timed_out0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__6_i_3
       (.I0(time_ticks[29]),
        .I1(request_ticks[29]),
        .O(timed_out0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__6_i_4
       (.I0(time_ticks[28]),
        .I1(request_ticks[28]),
        .O(timed_out0_carry__6_i_4_n_0));
  CARRY4 timed_out0_carry__7
       (.CI(timed_out0_carry__6_n_0),
        .CO({timed_out0_carry__7_n_0,timed_out0_carry__7_n_1,timed_out0_carry__7_n_2,timed_out0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[35:32]),
        .O(timed_out0[35:32]),
        .S({timed_out0_carry__7_i_1_n_0,timed_out0_carry__7_i_2_n_0,timed_out0_carry__7_i_3_n_0,timed_out0_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__7_i_1
       (.I0(time_ticks[35]),
        .I1(request_ticks[35]),
        .O(timed_out0_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__7_i_2
       (.I0(time_ticks[34]),
        .I1(request_ticks[34]),
        .O(timed_out0_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__7_i_3
       (.I0(time_ticks[33]),
        .I1(request_ticks[33]),
        .O(timed_out0_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__7_i_4
       (.I0(time_ticks[32]),
        .I1(request_ticks[32]),
        .O(timed_out0_carry__7_i_4_n_0));
  CARRY4 timed_out0_carry__8
       (.CI(timed_out0_carry__7_n_0),
        .CO({timed_out0_carry__8_n_0,timed_out0_carry__8_n_1,timed_out0_carry__8_n_2,timed_out0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[39:36]),
        .O(timed_out0[39:36]),
        .S({timed_out0_carry__8_i_1_n_0,timed_out0_carry__8_i_2_n_0,timed_out0_carry__8_i_3_n_0,timed_out0_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__8_i_1
       (.I0(time_ticks[39]),
        .I1(request_ticks[39]),
        .O(timed_out0_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__8_i_2
       (.I0(time_ticks[38]),
        .I1(request_ticks[38]),
        .O(timed_out0_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__8_i_3
       (.I0(time_ticks[37]),
        .I1(request_ticks[37]),
        .O(timed_out0_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__8_i_4
       (.I0(time_ticks[36]),
        .I1(request_ticks[36]),
        .O(timed_out0_carry__8_i_4_n_0));
  CARRY4 timed_out0_carry__9
       (.CI(timed_out0_carry__8_n_0),
        .CO({timed_out0_carry__9_n_0,timed_out0_carry__9_n_1,timed_out0_carry__9_n_2,timed_out0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(time_ticks[43:40]),
        .O(timed_out0[43:40]),
        .S({timed_out0_carry__9_i_1_n_0,timed_out0_carry__9_i_2_n_0,timed_out0_carry__9_i_3_n_0,timed_out0_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__9_i_1
       (.I0(time_ticks[43]),
        .I1(request_ticks[43]),
        .O(timed_out0_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__9_i_2
       (.I0(time_ticks[42]),
        .I1(request_ticks[42]),
        .O(timed_out0_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__9_i_3
       (.I0(time_ticks[41]),
        .I1(request_ticks[41]),
        .O(timed_out0_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry__9_i_4
       (.I0(time_ticks[40]),
        .I1(request_ticks[40]),
        .O(timed_out0_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry_i_1
       (.I0(time_ticks[3]),
        .I1(request_ticks[3]),
        .O(timed_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry_i_2
       (.I0(time_ticks[2]),
        .I1(request_ticks[2]),
        .O(timed_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry_i_3
       (.I0(time_ticks[1]),
        .I1(request_ticks[1]),
        .O(timed_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    timed_out0_carry_i_4
       (.I0(time_ticks[0]),
        .I1(request_ticks[0]),
        .O(timed_out0_carry_i_4_n_0));
  CARRY4 timed_out_carry
       (.CI(1'b0),
        .CO({timed_out_carry_n_0,timed_out_carry_n_1,timed_out_carry_n_2,timed_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI({timed_out_carry_i_1_n_0,timed_out_carry_i_2_n_0,timed_out_carry_i_3_n_0,timed_out_carry_i_4_n_0}),
        .O(NLW_timed_out_carry_O_UNCONNECTED[3:0]),
        .S({timed_out_carry_i_5_n_0,timed_out_carry_i_6_n_0,timed_out_carry_i_7_n_0,timed_out_carry_i_8_n_0}));
  CARRY4 timed_out_carry__0
       (.CI(timed_out_carry_n_0),
        .CO({timed_out_carry__0_n_0,timed_out_carry__0_n_1,timed_out_carry__0_n_2,timed_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,timed_out_carry__0_i_1_n_0,timed_out_carry__0_i_2_n_0,timed_out0[9]}),
        .O(NLW_timed_out_carry__0_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__0_i_3_n_0,timed_out_carry__0_i_4_n_0,timed_out_carry__0_i_5_n_0,timed_out_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    timed_out_carry__0_i_1
       (.I0(timed_out0[13]),
        .I1(timed_out0[12]),
        .O(timed_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__0_i_2
       (.I0(timed_out0[11]),
        .I1(timed_out0[10]),
        .O(timed_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timed_out_carry__0_i_3
       (.I0(timed_out0[15]),
        .I1(timed_out0[14]),
        .O(timed_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__0_i_4
       (.I0(timed_out0[13]),
        .I1(timed_out0[12]),
        .O(timed_out_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__0_i_5
       (.I0(timed_out0[10]),
        .I1(timed_out0[11]),
        .O(timed_out_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__0_i_6
       (.I0(timed_out0[8]),
        .I1(timed_out0[9]),
        .O(timed_out_carry__0_i_6_n_0));
  CARRY4 timed_out_carry__1
       (.CI(timed_out_carry__0_n_0),
        .CO({timed_out_carry__1_n_0,timed_out_carry__1_n_1,timed_out_carry__1_n_2,timed_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,timed_out0[19],timed_out0[17]}),
        .O(NLW_timed_out_carry__1_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__1_i_1_n_0,timed_out_carry__1_i_2_n_0,timed_out_carry__1_i_3_n_0,timed_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    timed_out_carry__1_i_1
       (.I0(timed_out0[23]),
        .I1(timed_out0[22]),
        .O(timed_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timed_out_carry__1_i_2
       (.I0(timed_out0[21]),
        .I1(timed_out0[20]),
        .O(timed_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__1_i_3
       (.I0(timed_out0[18]),
        .I1(timed_out0[19]),
        .O(timed_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__1_i_4
       (.I0(timed_out0[16]),
        .I1(timed_out0[17]),
        .O(timed_out_carry__1_i_4_n_0));
  CARRY4 timed_out_carry__2
       (.CI(timed_out_carry__1_n_0),
        .CO({timed_out_carry__2_n_0,timed_out_carry__2_n_1,timed_out_carry__2_n_2,timed_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({timed_out_carry__2_i_1_n_0,timed_out_carry__2_i_2_n_0,timed_out0[27],timed_out0[25]}),
        .O(NLW_timed_out_carry__2_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__2_i_3_n_0,timed_out_carry__2_i_4_n_0,timed_out_carry__2_i_5_n_0,timed_out_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__2_i_1
       (.I0(timed_out0[31]),
        .I1(timed_out0[30]),
        .O(timed_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__2_i_2
       (.I0(timed_out0[29]),
        .I1(timed_out0[28]),
        .O(timed_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__2_i_3
       (.I0(timed_out0[30]),
        .I1(timed_out0[31]),
        .O(timed_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__2_i_4
       (.I0(timed_out0[28]),
        .I1(timed_out0[29]),
        .O(timed_out_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__2_i_5
       (.I0(timed_out0[26]),
        .I1(timed_out0[27]),
        .O(timed_out_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timed_out_carry__2_i_6
       (.I0(timed_out0[24]),
        .I1(timed_out0[25]),
        .O(timed_out_carry__2_i_6_n_0));
  CARRY4 timed_out_carry__3
       (.CI(timed_out_carry__2_n_0),
        .CO({timed_out_carry__3_n_0,timed_out_carry__3_n_1,timed_out_carry__3_n_2,timed_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({timed_out_carry__3_i_1_n_0,timed_out_carry__3_i_2_n_0,timed_out_carry__3_i_3_n_0,timed_out_carry__3_i_4_n_0}),
        .O(NLW_timed_out_carry__3_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__3_i_5_n_0,timed_out_carry__3_i_6_n_0,timed_out_carry__3_i_7_n_0,timed_out_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__3_i_1
       (.I0(timed_out0[39]),
        .I1(timed_out0[38]),
        .O(timed_out_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__3_i_2
       (.I0(timed_out0[37]),
        .I1(timed_out0[36]),
        .O(timed_out_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__3_i_3
       (.I0(timed_out0[35]),
        .I1(timed_out0[34]),
        .O(timed_out_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__3_i_4
       (.I0(timed_out0[33]),
        .I1(timed_out0[32]),
        .O(timed_out_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__3_i_5
       (.I0(timed_out0[38]),
        .I1(timed_out0[39]),
        .O(timed_out_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__3_i_6
       (.I0(timed_out0[36]),
        .I1(timed_out0[37]),
        .O(timed_out_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__3_i_7
       (.I0(timed_out0[34]),
        .I1(timed_out0[35]),
        .O(timed_out_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__3_i_8
       (.I0(timed_out0[32]),
        .I1(timed_out0[33]),
        .O(timed_out_carry__3_i_8_n_0));
  CARRY4 timed_out_carry__4
       (.CI(timed_out_carry__3_n_0),
        .CO({timed_out_carry__4_n_0,timed_out_carry__4_n_1,timed_out_carry__4_n_2,timed_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({timed_out_carry__4_i_1_n_0,timed_out_carry__4_i_2_n_0,timed_out_carry__4_i_3_n_0,timed_out_carry__4_i_4_n_0}),
        .O(NLW_timed_out_carry__4_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__4_i_5_n_0,timed_out_carry__4_i_6_n_0,timed_out_carry__4_i_7_n_0,timed_out_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__4_i_1
       (.I0(timed_out0[47]),
        .I1(timed_out0[46]),
        .O(timed_out_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__4_i_2
       (.I0(timed_out0[45]),
        .I1(timed_out0[44]),
        .O(timed_out_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__4_i_3
       (.I0(timed_out0[43]),
        .I1(timed_out0[42]),
        .O(timed_out_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__4_i_4
       (.I0(timed_out0[41]),
        .I1(timed_out0[40]),
        .O(timed_out_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__4_i_5
       (.I0(timed_out0[46]),
        .I1(timed_out0[47]),
        .O(timed_out_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__4_i_6
       (.I0(timed_out0[44]),
        .I1(timed_out0[45]),
        .O(timed_out_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__4_i_7
       (.I0(timed_out0[42]),
        .I1(timed_out0[43]),
        .O(timed_out_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__4_i_8
       (.I0(timed_out0[40]),
        .I1(timed_out0[41]),
        .O(timed_out_carry__4_i_8_n_0));
  CARRY4 timed_out_carry__5
       (.CI(timed_out_carry__4_n_0),
        .CO({timed_out_carry__5_n_0,timed_out_carry__5_n_1,timed_out_carry__5_n_2,timed_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({timed_out_carry__5_i_1_n_0,timed_out_carry__5_i_2_n_0,timed_out_carry__5_i_3_n_0,timed_out_carry__5_i_4_n_0}),
        .O(NLW_timed_out_carry__5_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__5_i_5_n_0,timed_out_carry__5_i_6_n_0,timed_out_carry__5_i_7_n_0,timed_out_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__5_i_1
       (.I0(timed_out0[55]),
        .I1(timed_out0[54]),
        .O(timed_out_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__5_i_2
       (.I0(timed_out0[53]),
        .I1(timed_out0[52]),
        .O(timed_out_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__5_i_3
       (.I0(timed_out0[51]),
        .I1(timed_out0[50]),
        .O(timed_out_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__5_i_4
       (.I0(timed_out0[49]),
        .I1(timed_out0[48]),
        .O(timed_out_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__5_i_5
       (.I0(timed_out0[54]),
        .I1(timed_out0[55]),
        .O(timed_out_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__5_i_6
       (.I0(timed_out0[52]),
        .I1(timed_out0[53]),
        .O(timed_out_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__5_i_7
       (.I0(timed_out0[50]),
        .I1(timed_out0[51]),
        .O(timed_out_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__5_i_8
       (.I0(timed_out0[48]),
        .I1(timed_out0[49]),
        .O(timed_out_carry__5_i_8_n_0));
  CARRY4 timed_out_carry__6
       (.CI(timed_out_carry__5_n_0),
        .CO({timed_out,timed_out_carry__6_n_1,timed_out_carry__6_n_2,timed_out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({timed_out_carry__6_i_1_n_0,timed_out_carry__6_i_2_n_0,timed_out_carry__6_i_3_n_0,timed_out_carry__6_i_4_n_0}),
        .O(NLW_timed_out_carry__6_O_UNCONNECTED[3:0]),
        .S({timed_out_carry__6_i_5_n_0,timed_out_carry__6_i_6_n_0,timed_out_carry__6_i_7_n_0,timed_out_carry__6_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__6_i_1
       (.I0(timed_out0[63]),
        .I1(timed_out0[62]),
        .O(timed_out_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__6_i_2
       (.I0(timed_out0[61]),
        .I1(timed_out0[60]),
        .O(timed_out_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__6_i_3
       (.I0(timed_out0[59]),
        .I1(timed_out0[58]),
        .O(timed_out_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry__6_i_4
       (.I0(timed_out0[57]),
        .I1(timed_out0[56]),
        .O(timed_out_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__6_i_5
       (.I0(timed_out0[62]),
        .I1(timed_out0[63]),
        .O(timed_out_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__6_i_6
       (.I0(timed_out0[60]),
        .I1(timed_out0[61]),
        .O(timed_out_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__6_i_7
       (.I0(timed_out0[58]),
        .I1(timed_out0[59]),
        .O(timed_out_carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry__6_i_8
       (.I0(timed_out0[56]),
        .I1(timed_out0[57]),
        .O(timed_out_carry__6_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry_i_1
       (.I0(timed_out0[7]),
        .I1(timed_out0[6]),
        .O(timed_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry_i_2
       (.I0(timed_out0[5]),
        .I1(timed_out0[4]),
        .O(timed_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry_i_3
       (.I0(timed_out0[3]),
        .I1(timed_out0[2]),
        .O(timed_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timed_out_carry_i_4
       (.I0(timed_out0[1]),
        .I1(timed_out0[0]),
        .O(timed_out_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry_i_5
       (.I0(timed_out0[6]),
        .I1(timed_out0[7]),
        .O(timed_out_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry_i_6
       (.I0(timed_out0[4]),
        .I1(timed_out0[5]),
        .O(timed_out_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry_i_7
       (.I0(timed_out0[2]),
        .I1(timed_out0[3]),
        .O(timed_out_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timed_out_carry_i_8
       (.I0(timed_out0[0]),
        .I1(timed_out0[1]),
        .O(timed_out_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFEAF0EA00000000)) 
    verdict_seen_i_1
       (.I0(verdict_seen),
        .I1(\snap_frame_id[31]_i_2_n_0 ),
        .I2(verdict_seen_i_2_n_0),
        .I3(expected_frame_2),
        .I4(verdict_seen_i_3_n_0),
        .I5(aresetn),
        .O(verdict_seen_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    verdict_seen_i_2
       (.I0(verdict_good),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(verdict_valid),
        .I4(matching_verdict0),
        .O(verdict_seen_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    verdict_seen_i_3
       (.I0(verdict_valid),
        .I1(state2),
        .I2(verdict_good),
        .I3(snap_abort_event_i_4_n_0),
        .O(verdict_seen_i_3_n_0));
  FDRE verdict_seen_reg
       (.C(aclk),
        .CE(1'b1),
        .D(verdict_seen_i_1_n_0),
        .Q(verdict_seen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \x[0]_i_1 
       (.I0(x[0]),
        .I1(gray_eol),
        .I2(\state_reg_n_0_[1] ),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \x[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[0]),
        .I2(x[1]),
        .I3(gray_eol),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00002888)) 
    \x[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[2]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(gray_eol),
        .O(\x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \x[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[3]),
        .I2(x[0]),
        .I3(x[1]),
        .I4(x[2]),
        .I5(gray_eol),
        .O(\x[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002888)) 
    \x[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[4]),
        .I2(\x[5]_i_2_n_0 ),
        .I3(x[3]),
        .I4(gray_eol),
        .O(\x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \x[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[5]),
        .I2(x[4]),
        .I3(x[3]),
        .I4(\x[5]_i_2_n_0 ),
        .I5(gray_eol),
        .O(\x[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \x[5]_i_2 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(x[0]),
        .O(\x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \x[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[6]),
        .I2(\x[8]_i_2_n_0 ),
        .I3(gray_eol),
        .O(\x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008828)) 
    \x[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[7]),
        .I2(x[6]),
        .I3(\x[8]_i_2_n_0 ),
        .I4(gray_eol),
        .O(\x[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000082888888)) 
    \x[8]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[8]),
        .I2(\x[8]_i_2_n_0 ),
        .I3(x[6]),
        .I4(x[7]),
        .I5(gray_eol),
        .O(\x[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x[8]_i_2 
       (.I0(x[4]),
        .I1(x[3]),
        .I2(x[0]),
        .I3(x[1]),
        .I4(x[2]),
        .I5(x[5]),
        .O(\x[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002888)) 
    \x[9]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(x[9]),
        .I2(x[8]),
        .I3(\x[9]_i_2_n_0 ),
        .I4(gray_eol),
        .O(\x[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \x[9]_i_2 
       (.I0(x[7]),
        .I1(x[6]),
        .I2(x[4]),
        .I3(x[3]),
        .I4(\x[5]_i_2_n_0 ),
        .I5(x[5]),
        .O(\x[9]_i_2_n_0 ));
  FDRE \x_reg[0] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[0]_i_1_n_0 ),
        .Q(x[0]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[1] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[1]_i_1_n_0 ),
        .Q(x[1]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[2] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[2]_i_1_n_0 ),
        .Q(x[2]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[3] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[3]_i_1_n_0 ),
        .Q(x[3]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[4] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[4]_i_1_n_0 ),
        .Q(x[4]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[5] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[5]_i_1_n_0 ),
        .Q(x[5]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[6] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[6]_i_1_n_0 ),
        .Q(x[6]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[7] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[7]_i_1_n_0 ),
        .Q(x[7]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[8] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[8]_i_1_n_0 ),
        .Q(x[8]),
        .R(\snap_request_id[31]_i_1_n_0 ));
  FDRE \x_reg[9] 
       (.C(aclk),
        .CE(x_0),
        .D(\x[9]_i_1_n_0 ),
        .Q(x[9]),
        .R(\snap_request_id[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "gray_snapshot_capture_bd" *) 
module facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture_bd
   (ready,
    snap_request_id,
    bram_addr,
    snap_frame_id,
    snap_epoch,
    snap_source_ticks,
    snap_commit_ticks,
    bram_wdata,
    snap_error_code,
    busy,
    bram_we,
    error,
    snap_ready_event,
    snap_abort_event,
    format_error_event,
    snap_timeout_event,
    verdict_good,
    verdict_valid,
    gray_valid,
    frame_commit,
    gray_eol,
    time_ticks,
    aclk,
    gray_source_id,
    request_id,
    epoch,
    gray_data,
    cancel,
    aresetn,
    release_frame,
    frame_abort,
    provenance_fault,
    request,
    clear_error,
    gray_sof,
    verdict_source_id,
    committed_frame_id);
  output ready;
  output [31:0]snap_request_id;
  output [14:0]bram_addr;
  output [31:0]snap_frame_id;
  output [31:0]snap_epoch;
  output [63:0]snap_source_ticks;
  output [63:0]snap_commit_ticks;
  output [23:0]bram_wdata;
  output [1:0]snap_error_code;
  output busy;
  output bram_we;
  output error;
  output snap_ready_event;
  output snap_abort_event;
  output format_error_event;
  output snap_timeout_event;
  input verdict_good;
  input verdict_valid;
  input gray_valid;
  input frame_commit;
  input gray_eol;
  input [63:0]time_ticks;
  input aclk;
  input [31:0]gray_source_id;
  input [31:0]request_id;
  input [31:0]epoch;
  input [7:0]gray_data;
  input cancel;
  input aresetn;
  input release_frame;
  input frame_abort;
  input provenance_fault;
  input request;
  input clear_error;
  input gray_sof;
  input [31:0]verdict_source_id;
  input [31:0]committed_frame_id;

  wire aclk;
  wire aresetn;
  wire [14:0]bram_addr;
  wire [23:0]bram_wdata;
  wire bram_we;
  wire busy;
  wire cancel;
  wire clear_error;
  wire [31:0]committed_frame_id;
  wire [31:0]epoch;
  wire error;
  wire format_error_event;
  wire frame_abort;
  wire frame_commit;
  wire [7:0]gray_data;
  wire gray_eol;
  wire gray_sof;
  wire [31:0]gray_source_id;
  wire gray_valid;
  wire provenance_fault;
  wire ready;
  wire release_frame;
  wire request;
  wire [31:0]request_id;
  wire snap_abort_event;
  wire [63:0]snap_commit_ticks;
  wire [31:0]snap_epoch;
  wire [1:0]snap_error_code;
  wire [31:0]snap_frame_id;
  wire snap_ready_event;
  wire [31:0]snap_request_id;
  wire [63:0]snap_source_ticks;
  wire snap_timeout_event;
  wire [63:0]time_ticks;
  wire verdict_good;
  wire [31:0]verdict_source_id;
  wire verdict_valid;

  facebox_system_gray_snapshot_capture_0_0_gray_snapshot_capture u_core
       (.aclk(aclk),
        .aresetn(aresetn),
        .bram_addr(bram_addr),
        .bram_wdata(bram_wdata),
        .bram_we(bram_we),
        .busy(busy),
        .cancel(cancel),
        .clear_error(clear_error),
        .committed_frame_id(committed_frame_id),
        .epoch(epoch),
        .error(error),
        .format_error_event(format_error_event),
        .frame_abort(frame_abort),
        .frame_commit(frame_commit),
        .gray_data(gray_data),
        .gray_eol(gray_eol),
        .gray_sof(gray_sof),
        .gray_source_id(gray_source_id),
        .gray_valid(gray_valid),
        .provenance_fault(provenance_fault),
        .ready(ready),
        .release_frame(release_frame),
        .request(request),
        .request_id(request_id),
        .snap_abort_event(snap_abort_event),
        .snap_commit_ticks(snap_commit_ticks),
        .snap_epoch(snap_epoch),
        .snap_error_code(snap_error_code),
        .snap_frame_id(snap_frame_id),
        .snap_ready_event(snap_ready_event),
        .snap_request_id(snap_request_id),
        .snap_source_ticks(snap_source_ticks),
        .snap_timeout_event(snap_timeout_event),
        .time_ticks(time_ticks),
        .verdict_good(verdict_good),
        .verdict_source_id(verdict_source_id),
        .verdict_valid(verdict_valid));
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
