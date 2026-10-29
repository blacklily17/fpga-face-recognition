`timescale 1ns/1ps

// Integrated WP3 camera path used in front of the two VDMA S2MM channels.
// RGB keeps the camera resolution. GRAY passes through M8 and is resynchronized
// again after M8 so output pixels already in flight at abort time cannot enter
// the next candidate transaction.
module wp3_frame_safe_pipeline #(
    parameter integer IN_W = 800,
    parameter integer IN_H = 480,
    parameter integer TAG_SOURCE = 0
) (
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

    input  logic        rgb_frame_done_pulse,
    input  logic        gray_frame_done_pulse,
    input  logic        abort_recovery_done_pulse,
    input  logic [2:0]  reader_busy_mask,

    output logic [1:0]  writing_buffer_index,
    output logic        writing_buffer_available,
    output logic [1:0]  completed_buffer_index,
    output logic        completed_buffer_valid,
    output logic        frame_active,
    output logic        abort_recovery_required,
    output logic        frame_commit_pulse,
    output logic [31:0] committed_frame_id,
    output logic [31:0] aborted_frame_count,
    output logic        protocol_error_sticky,

    output logic        fifo_overflow_pulse,
    output logic        fifo_overflow_sticky,
    output logic        dropping_input_frame,
    output logic        frame_abort_pulse
);
    logic bridge_rgb_tvalid;
    logic bridge_rgb_tready;
    logic [15:0] bridge_rgb_tdata;
    logic bridge_rgb_tuser;
    logic bridge_rgb_tlast;

    logic bridge_gray_tvalid;
    logic bridge_gray_tready;
    logic [7:0] bridge_gray_tdata;
    logic bridge_gray_tuser;
    logic bridge_gray_tlast;

    logic m8_tvalid;
    logic m8_tready;
    logic [7:0] m8_tdata;
    logic m8_tuser;
    logic m8_tlast;

    logic gray_safe_tvalid;
    logic gray_safe_tready;
    logic [7:0] gray_safe_tdata;
    logic gray_safe_tuser;
    logic gray_safe_tlast;

    logic rgb_axis_enable;
    logic gray_axis_enable;
    logic unused_rgb_resync_dropping;
    logic unused_gray_pre_m8_dropping;
    logic unused_gray_post_m8_dropping;
    logic rgb_frame_start_pulse;
    logic gray_frame_start_pulse;
    logic [31:0] bridge_gray_source_id,m8_source_id;
    always_ff @(posedge aclk or negedge aresetn) begin
        if(!aresetn) m8_source_id<=0;
        else if(bridge_gray_tvalid && bridge_gray_tready && bridge_gray_tuser)
            m8_source_id<=bridge_gray_source_id;
    end
    assign gray_source_frame_id=m8_source_id;

    assign rgb_m_tvalid = bridge_rgb_tvalid && rgb_axis_enable;
    assign rgb_m_tdata  = bridge_rgb_tdata;
    assign rgb_m_tuser  = bridge_rgb_tuser;
    assign rgb_m_tlast  = bridge_rgb_tlast;
    assign bridge_rgb_tready = rgb_m_tready && rgb_axis_enable;

    assign gray_m_tvalid = gray_safe_tvalid && gray_axis_enable;
    assign gray_m_tdata  = gray_safe_tdata;
    assign gray_m_tuser  = gray_safe_tuser;
    assign gray_m_tlast  = gray_safe_tlast;
    assign gray_safe_tready = gray_m_tready && gray_axis_enable;

    assign rgb_frame_start_pulse = rgb_m_tvalid && rgb_m_tready && rgb_m_tuser;
    assign gray_frame_start_pulse = gray_m_tvalid && gray_m_tready && gray_m_tuser;

    wp3_dual_fifo_frame_bridge #(.TAG_SOURCE(TAG_SOURCE)) bridge (
        .cam_pclk(cam_pclk),
        .cam_rst_n(cam_rst_n),
        .clear_overflow_sticky(clear_overflow_sticky),
        .px_valid(px_valid),
        .rgb565(rgb565),
        .gray8(gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .input_frame_bad_pulse(input_frame_bad_pulse),
        .source_frame_id(source_frame_id),.gray_source_frame_id(bridge_gray_source_id),
        .aclk(aclk),
        .aresetn(aresetn),
        .rgb_m_tvalid(bridge_rgb_tvalid),
        .rgb_m_tready(bridge_rgb_tready),
        .rgb_m_tdata(bridge_rgb_tdata),
        .rgb_m_tuser(bridge_rgb_tuser),
        .rgb_m_tlast(bridge_rgb_tlast),
        .gray_m_tvalid(bridge_gray_tvalid),
        .gray_m_tready(bridge_gray_tready),
        .gray_m_tdata(bridge_gray_tdata),
        .gray_m_tuser(bridge_gray_tuser),
        .gray_m_tlast(bridge_gray_tlast),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_sticky(fifo_overflow_sticky),
        .dropping_input_frame(dropping_input_frame),
        .frame_abort_pulse(frame_abort_pulse),
        .rgb_resync_dropping(unused_rgb_resync_dropping),
        .gray_resync_dropping(unused_gray_pre_m8_dropping)
    );

    gray_downscale_2x #(
        .IN_W(IN_W),
        .IN_H(IN_H)
    ) m8 (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_tvalid(bridge_gray_tvalid),
        .s_tready(bridge_gray_tready),
        .s_tdata(bridge_gray_tdata),
        .s_tuser(bridge_gray_tuser),
        .s_tlast(bridge_gray_tlast),
        .m_tvalid(m8_tvalid),
        .m_tready(m8_tready),
        .m_tdata(m8_tdata),
        .m_tuser(m8_tuser),
        .m_tlast(m8_tlast)
    );

    axis_frame_resync #(.DATA_W(8)) gray_post_m8_resync (
        .aclk(aclk),
        .aresetn(aresetn),
        .abort_pulse(frame_abort_pulse),
        .s_tvalid(m8_tvalid),
        .s_tready(m8_tready),
        .s_tdata(m8_tdata),
        .s_tuser(m8_tuser),
        .s_tlast(m8_tlast),
        .m_tvalid(gray_safe_tvalid),
        .m_tready(gray_safe_tready),
        .m_tdata(gray_safe_tdata),
        .m_tuser(gray_safe_tuser),
        .m_tlast(gray_safe_tlast),
        .dropping_until_sof(unused_gray_post_m8_dropping)
    );

    triple_buffer_commit_manager buffer_manager (
        .aclk(aclk),
        .aresetn(aresetn),
        .rgb_frame_start_pulse(rgb_frame_start_pulse),
        .gray_frame_start_pulse(gray_frame_start_pulse),
        .rgb_frame_done_pulse(rgb_frame_done_pulse),
        .gray_frame_done_pulse(gray_frame_done_pulse),
        .frame_abort_pulse(frame_abort_pulse),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .reader_busy_mask(reader_busy_mask),
        .writing_buffer_index(writing_buffer_index),
        .writing_buffer_available(writing_buffer_available),
        .completed_buffer_index(completed_buffer_index),
        .completed_buffer_valid(completed_buffer_valid),
        .frame_active(frame_active),
        .abort_recovery_required(abort_recovery_required),
        .rgb_axis_enable(rgb_axis_enable),
        .gray_axis_enable(gray_axis_enable),
        .frame_commit_pulse(frame_commit_pulse),
        .committed_frame_id(committed_frame_id),
        .aborted_frame_count(aborted_frame_count),
        .protocol_error_sticky(protocol_error_sticky)
    );

endmodule
