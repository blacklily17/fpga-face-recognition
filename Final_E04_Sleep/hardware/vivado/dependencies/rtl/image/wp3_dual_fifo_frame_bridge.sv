`timescale 1ns/1ps

// WP3 camera-to-aclk bridge. It keeps RGB565 and GRAY8 frame decisions
// identical, aborts both paths on capacity loss, transfers the abort event
// safely to aclk, and discards FIFO contents until the next frame TUSER.
module wp3_dual_fifo_frame_bridge #(parameter integer TAG_SOURCE=0) (
    input  logic        cam_pclk,
    input  logic        cam_rst_n,
    input  logic        clear_overflow_sticky,
    input  logic        px_valid,
    input  logic [15:0] rgb565,
    input  logic [7:0]  gray8,
    input  logic        px_sof,
    input  logic        px_eol,
    input  logic        input_frame_bad_pulse,
    input  logic [31:0] source_frame_id,
    output logic [31:0] gray_source_frame_id,

    input  logic        aclk,
    input  logic        aresetn,

    output logic        rgb_m_tvalid,
    input  logic        rgb_m_tready,
    output logic [15:0] rgb_m_tdata,
    output logic        rgb_m_tuser,
    output logic        rgb_m_tlast,

    output logic        gray_m_tvalid,
    input  logic        gray_m_tready,
    output logic [7:0]  gray_m_tdata,
    output logic        gray_m_tuser,
    output logic        gray_m_tlast,

    output logic        fifo_overflow_pulse,
    output logic        fifo_overflow_sticky,
    output logic        dropping_input_frame,
    output logic        frame_abort_pulse,
    output logic        rgb_resync_dropping,
    output logic        gray_resync_dropping
);
    logic rgb_s_tvalid;
    logic rgb_s_tready;
    logic [15:0] rgb_s_tdata;
    logic rgb_s_tuser;
    logic rgb_s_tlast;
    logic rgb_prog_full;

    logic gray_s_tvalid;
    logic gray_s_tready;
    logic [7:0] gray_s_tdata;
    logic gray_s_tuser;
    logic gray_s_tlast;
    logic gray_prog_full;

    logic rgb_raw_tvalid;
    logic rgb_raw_tready;
    logic [15:0] rgb_raw_tdata;
    logic [0:0] rgb_raw_tuser;
    logic rgb_raw_tlast;
    logic gray_raw_tvalid;
    logic gray_raw_tready;
    logic [7:0] gray_raw_tdata;
    logic [32:0] gray_raw_tuser;
    logic gray_raw_tlast;

    logic abort_req_toggle;
    logic abort_ack_toggle;
    (* ASYNC_REG = "TRUE" *) logic abort_ack_sync_1;
    (* ASYNC_REG = "TRUE" *) logic abort_ack_sync_2;

    always_ff @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            abort_ack_sync_1 <= 1'b0;
            abort_ack_sync_2 <= 1'b0;
        end else begin
            abort_ack_sync_1 <= abort_ack_toggle;
            abort_ack_sync_2 <= abort_ack_sync_1;
        end
    end

    camera_dual_axis_guard ingress_guard (
        .cam_pclk(cam_pclk),
        .cam_rst_n(cam_rst_n),
        .clear_overflow_sticky(clear_overflow_sticky),
        .px_valid(px_valid),
        .rgb565(rgb565),
        .gray8(gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .input_frame_bad_pulse(input_frame_bad_pulse),
        .rgb_fifo_ready(rgb_s_tready),
        .gray_fifo_ready(gray_s_tready),
        .rgb_fifo_prog_full(rgb_prog_full),
        .gray_fifo_prog_full(gray_prog_full),
        .rgb_fifo_valid(rgb_s_tvalid),
        .rgb_fifo_data(rgb_s_tdata),
        .rgb_fifo_user(rgb_s_tuser),
        .rgb_fifo_last(rgb_s_tlast),
        .gray_fifo_valid(gray_s_tvalid),
        .gray_fifo_data(gray_s_tdata),
        .gray_fifo_user(gray_s_tuser),
        .gray_fifo_last(gray_s_tlast),
        .abort_ack_toggle_sync(abort_ack_sync_2),
        .abort_req_toggle(abort_req_toggle),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_sticky(fifo_overflow_sticky),
        .dropping_frame(dropping_input_frame)
    );

    axis_fifo_rgb_cdc rgb_fifo (
        .s_axis_aresetn(cam_rst_n),
        .s_axis_aclk(cam_pclk),
        .s_axis_tvalid(rgb_s_tvalid),
        .s_axis_tready(rgb_s_tready),
        .s_axis_tdata(rgb_s_tdata),
        .s_axis_tlast(rgb_s_tlast),
        .s_axis_tuser(rgb_s_tuser),
        .m_axis_aclk(aclk),
        .m_axis_tvalid(rgb_raw_tvalid),
        .m_axis_tready(rgb_raw_tready),
        .m_axis_tdata(rgb_raw_tdata),
        .m_axis_tlast(rgb_raw_tlast),
        .m_axis_tuser(rgb_raw_tuser),
        .prog_full(rgb_prog_full)
    );

    generate if(TAG_SOURCE) begin : tagged_gray
    axis_fifo_gray_tag_cdc gray_fifo (
        .s_axis_aresetn(cam_rst_n),
        .s_axis_aclk(cam_pclk),
        .s_axis_tvalid(gray_s_tvalid),
        .s_axis_tready(gray_s_tready),
        .s_axis_tdata(gray_s_tdata),
        .s_axis_tlast(gray_s_tlast),
        .s_axis_tuser({source_frame_id,gray_s_tuser}),
        .m_axis_aclk(aclk),
        .m_axis_tvalid(gray_raw_tvalid),
        .m_axis_tready(gray_raw_tready),
        .m_axis_tdata(gray_raw_tdata),
        .m_axis_tlast(gray_raw_tlast),
        .m_axis_tuser(gray_raw_tuser),
        .prog_full(gray_prog_full)
    );
    end else begin : original_gray
    axis_fifo_gray_cdc gray_fifo (
        .s_axis_aresetn(cam_rst_n),.s_axis_aclk(cam_pclk),
        .s_axis_tvalid(gray_s_tvalid),.s_axis_tready(gray_s_tready),
        .s_axis_tdata(gray_s_tdata),.s_axis_tlast(gray_s_tlast),.s_axis_tuser(gray_s_tuser),
        .m_axis_aclk(aclk),.m_axis_tvalid(gray_raw_tvalid),.m_axis_tready(gray_raw_tready),
        .m_axis_tdata(gray_raw_tdata),.m_axis_tlast(gray_raw_tlast),
        .m_axis_tuser(gray_raw_tuser[0]),.prog_full(gray_prog_full)
    );
    assign gray_raw_tuser[32:1]=32'd0;
    end endgenerate
    // Metadata rides on the actual FIFO word, not a separate latest-ID CDC.
    assign gray_source_frame_id=gray_raw_tuser[32:1];

    toggle_event_cdc abort_event_cdc (
        .src_toggle(abort_req_toggle),
        .dst_clk(aclk),
        .dst_rst_n(aresetn),
        .dst_pulse(frame_abort_pulse),
        .dst_ack_toggle(abort_ack_toggle)
    );

    axis_frame_resync #(.DATA_W(16)) rgb_resync (
        .aclk(aclk),
        .aresetn(aresetn),
        .abort_pulse(frame_abort_pulse),
        .s_tvalid(rgb_raw_tvalid),
        .s_tready(rgb_raw_tready),
        .s_tdata(rgb_raw_tdata),
        .s_tuser(rgb_raw_tuser[0]),
        .s_tlast(rgb_raw_tlast),
        .m_tvalid(rgb_m_tvalid),
        .m_tready(rgb_m_tready),
        .m_tdata(rgb_m_tdata),
        .m_tuser(rgb_m_tuser),
        .m_tlast(rgb_m_tlast),
        .dropping_until_sof(rgb_resync_dropping)
    );

    axis_frame_resync #(.DATA_W(8)) gray_resync (
        .aclk(aclk),
        .aresetn(aresetn),
        .abort_pulse(frame_abort_pulse),
        .s_tvalid(gray_raw_tvalid),
        .s_tready(gray_raw_tready),
        .s_tdata(gray_raw_tdata),
        .s_tuser(gray_raw_tuser[0]),
        .s_tlast(gray_raw_tlast),
        .m_tvalid(gray_m_tvalid),
        .m_tready(gray_m_tready),
        .m_tdata(gray_m_tdata),
        .m_tuser(gray_m_tuser),
        .m_tlast(gray_m_tlast),
        .dropping_until_sof(gray_resync_dropping)
    );

endmodule
