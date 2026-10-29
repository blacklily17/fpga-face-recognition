`timescale 1ns/1ps

// Real OV5640 front end for stage 6B-1.
// WP1 configures the sensor, WP2 decodes DVP RGB565, and the proven WP3
// dual-clock frame-safe pipeline crosses from the sensor clock to AXI clock.
module real_camera_wp2_wp3_axis_source (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk50 CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk50, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000" *)
    input  wire         sys_clk50,
    input  wire         sys_rst_n,
    // Plain clock-valued input: this clock is forwarded only to the sensor and
    // must not be inferred as the clock associated with the AXI-stream output.
    input  wire         xclk24,

    output wire         cam_xclk,
    output wire         cam_scl,
    inout  wire         cam_sda,
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, FREQ_HZ 50000000" *)
    input  wire         cam_pclk,
    input  wire         cam_vsync,
    input  wire         cam_href,
    input  wire  [7:0]  cam_data,

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *)
    input  wire         aclk,
    input  wire         aresetn,
    input  wire         capture_enable,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
    output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
    input  wire         m_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
    output wire  [15:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
    output wire         m_axis_tuser,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
    output wire         m_axis_tlast,

    output wire  [31:0] status,
    // Passive post-M8 tap, all signals in aclk. Always consume gray; no new
    // ready input is exposed. resetn marks the existing camera path reset.
    output wire gray_tap_valid,
    output wire [7:0] gray_tap_data,
    output wire gray_tap_sof, gray_tap_eol,
    output wire gray_tap_abort, gray_tap_commit,
    output wire [31:0] gray_tap_frame_id,
    output wire gray_tap_resetn,
    output wire [31:0] gray_tap_source_id,gray_tap_verdict_source_id,
    output wire gray_tap_verdict_valid,gray_tap_verdict_good,gray_tap_provenance_fault
);
    wire [31:0] wp1_status;
    (* ASYNC_REG = "TRUE" *) reg [1:0] cam_release;
    wire cam_local_rst_n = cam_release[1];
    // SYS reset may assert without PCLK. Release needs two PCLK edges; never
    // drive camera IOB recovery/removal directly from another clock domain.
    always @(posedge cam_pclk or negedge sys_rst_n)
        if (!sys_rst_n) cam_release <= 2'b00;
        else cam_release <= {cam_release[0], 1'b1};
    (* ASYNC_REG = "TRUE" *) reg init_meta;
    (* ASYNC_REG = "TRUE" *) reg init_sync;
    (* ASYNC_REG = "TRUE" *) reg capture_cam_meta;
    (* ASYNC_REG = "TRUE" *) reg capture_cam_sync;
    reg capture_axi_meta;
    reg capture_axi_sync;
    wire path_cam_rst_n = init_sync && capture_cam_sync;
    wire path_axi_rst_n = aresetn && capture_axi_sync;

    // Equal-delay IOB capture for all DVP signals.  This keeps the sampling
    // aperture at the package boundary even though Y18 is not a clock pin.
    (* IOB = "TRUE" *) reg [7:0] cam_data_q;
    (* IOB = "TRUE" *) reg       cam_href_q;
    (* IOB = "TRUE" *) reg       cam_vsync_q;

    wp1_ov5640_board_if u_wp1 (
        .sys_clk50(sys_clk50),
        .sys_rst_n(sys_rst_n),
        .xclk24(xclk24),
        .cam_xclk(cam_xclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .status(wp1_status)
    );

    always @(posedge cam_pclk or negedge cam_local_rst_n) begin
        if (!cam_local_rst_n) begin
            init_meta   <= 1'b0;
            init_sync   <= 1'b0;
            capture_cam_meta <= 1'b0;
            capture_cam_sync <= 1'b0;
            cam_data_q  <= 8'd0;
            cam_href_q  <= 1'b0;
            cam_vsync_q <= 1'b1;
        end else begin
            init_meta   <= wp1_status[0];
            init_sync   <= init_meta;
            capture_cam_meta <= capture_enable;
            capture_cam_sync <= capture_cam_meta;
            cam_data_q  <= cam_data;
            cam_href_q  <= cam_href;
            cam_vsync_q <= cam_vsync;
        end
    end

    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            capture_axi_meta <= 1'b0;
            capture_axi_sync <= 1'b0;
        end else begin
            capture_axi_meta <= capture_enable;
            capture_axi_sync <= capture_axi_meta;
        end
    end

    wire raw_valid;
    wire [7:0] raw_data;
    wire raw_sof;
    wire raw_eol;
    wire [10:0] raw_byte_x;
    wire [8:0] raw_y;
    wire px_valid;
    wire [15:0] rgb565;
    wire [7:0] gray8;
    wire px_sof;
    wire px_eol;
    wire frame_done;
    wire frame_good;
    wire [3:0] frame_error;
    wire [31:0] frames_seen;
    wire [31:0] frames_good;
    wire [31:0] frames_bad;
    wire [31:0] frames_dropped;
    wire [31:0] last_error;
    wire fifo_overflow_pulse;
    reg [31:0] source_frame_id;
    reg source_started,source_dropped;
    wire verdict_busy,verdict_resetn;
    always @(posedge cam_pclk or negedge path_cam_rst_n) begin
        if(!path_cam_rst_n) begin source_frame_id<=0;source_started<=0;source_dropped<=0;end
        else begin
            if(raw_valid && raw_sof) begin
                source_frame_id<=source_frame_id+1;source_started<=1;source_dropped<=0;
            end
            if(fifo_overflow_pulse) source_dropped<=1;
            if(frame_done) source_started<=0;
        end
    end
    source_frame_verdict_cdc verdict_cdc(
        .src_clk(cam_pclk),.src_rst_n(path_cam_rst_n),.dst_clk(aclk),.dst_rst_n(path_axi_rst_n),
        .src_valid(frame_done && source_started),.src_good(frame_good && !source_dropped),
        .src_id(source_frame_id),.src_busy(verdict_busy),
        .dst_valid(gray_tap_verdict_valid),.dst_good(gray_tap_verdict_good),
        .dst_id(gray_tap_verdict_source_id),.dst_fault(gray_tap_provenance_fault),
        .dst_resetn(verdict_resetn));

    wp2_camera_top #(
        .ACTIVE_W(800),
        .ACTIVE_H(480),
        .HIGH_BYTE_FIRST(1'b0)
    ) u_wp2 (
        .cam_pclk(cam_pclk),
        .cam_rst_n(path_cam_rst_n),
        .cam_vsync(cam_vsync_q),
        .cam_href(cam_href_q),
        .cam_data(cam_data_q),
        .fifo_overflow(fifo_overflow_pulse),
        .raw_valid(raw_valid),
        .raw_data(raw_data),
        .raw_sof(raw_sof),
        .raw_eol(raw_eol),
        .raw_byte_x(raw_byte_x),
        .raw_y(raw_y),
        .px_valid(px_valid),
        .rgb565(rgb565),
        .gray8(gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .frame_done(frame_done),
        .frame_good(frame_good),
        .frame_error(frame_error),
        .frames_seen(frames_seen),
        .frames_good(frames_good),
        .frames_bad(frames_bad),
        .frames_dropped(frames_dropped),
        .last_error(last_error)
    );

    wire input_frame_bad_pulse = frame_done && !frame_good;
    wire gray_m_tvalid;
    wire [7:0] gray_m_tdata;
    wire gray_m_tuser;
    wire gray_m_tlast;
    wire frame_abort_pulse;
    wire fifo_overflow_sticky;
    wire dropping_input_frame;
    wire abort_recovery_required;
    wire protocol_error_sticky;
    wire [1:0] unused_writing_buffer_index;
    wire unused_writing_buffer_available;
    wire [1:0] unused_completed_buffer_index;
    wire unused_completed_buffer_valid;
    wire unused_frame_active;
    wire unused_frame_commit_pulse;
    wire [31:0] unused_committed_frame_id;
    wire [31:0] unused_aborted_frame_count;

    assign gray_tap_valid = gray_m_tvalid;
    assign gray_tap_data = gray_m_tdata;
    assign gray_tap_sof = gray_m_tuser;
    assign gray_tap_eol = gray_m_tlast;
    assign gray_tap_abort = frame_abort_pulse;
    assign gray_tap_commit = unused_frame_commit_pulse;
    assign gray_tap_frame_id = unused_committed_frame_id;
    assign gray_tap_resetn = path_axi_rst_n && verdict_resetn;

    wire rgb_fire = m_axis_tvalid && m_axis_tready;
    wire gray_fire = gray_m_tvalid;
    reg [8:0] rgb_line_count;
    reg [7:0] gray_line_count;
    reg rgb_frame_done_pulse;
    reg gray_frame_done_pulse;
    reg abort_recovery_done_pulse;

    always @(posedge aclk or negedge path_axi_rst_n) begin
        if (!path_axi_rst_n) begin
            rgb_line_count <= 9'd0;
            gray_line_count <= 8'd0;
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= 1'b0;
        end else begin
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            // One-cycle delayed acknowledgement resets a partially aborted
            // transaction only after the abort event itself has been observed.
            abort_recovery_done_pulse <= frame_abort_pulse;

            if (frame_abort_pulse) begin
                rgb_line_count <= 9'd0;
                gray_line_count <= 8'd0;
            end
            if (rgb_fire && m_axis_tlast) begin
                if (rgb_line_count == 9'd479) begin
                    rgb_line_count <= 9'd0;
                    rgb_frame_done_pulse <= 1'b1;
                end else begin
                    rgb_line_count <= rgb_line_count + 1'b1;
                end
            end
            if (gray_fire && gray_m_tlast) begin
                if (gray_line_count == 8'd239) begin
                    gray_line_count <= 8'd0;
                    gray_frame_done_pulse <= 1'b1;
                end else begin
                    gray_line_count <= gray_line_count + 1'b1;
                end
            end
        end
    end

    wp3_frame_safe_pipeline #(
        .IN_W(800),
        .IN_H(480),.TAG_SOURCE(1)
    ) u_wp3 (
        .cam_pclk(cam_pclk),
        .cam_rst_n(path_cam_rst_n),
        .clear_overflow_sticky(1'b0),
        .px_valid(px_valid),
        .rgb565(rgb565),
        .gray8(gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .input_frame_bad_pulse(input_frame_bad_pulse),
        .source_frame_id(source_frame_id),.gray_source_frame_id(gray_tap_source_id),
        .aclk(aclk),
        .aresetn(path_axi_rst_n),
        .rgb_m_tvalid(m_axis_tvalid),
        .rgb_m_tready(m_axis_tready),
        .rgb_m_tdata(m_axis_tdata),
        .rgb_m_tuser(m_axis_tuser),
        .rgb_m_tlast(m_axis_tlast),
        .gray_m_tvalid(gray_m_tvalid),
        .gray_m_tready(1'b1),
        .gray_m_tdata(gray_m_tdata),
        .gray_m_tuser(gray_m_tuser),
        .gray_m_tlast(gray_m_tlast),
        .rgb_frame_done_pulse(rgb_frame_done_pulse),
        .gray_frame_done_pulse(gray_frame_done_pulse),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .reader_busy_mask(3'b000),
        .writing_buffer_index(unused_writing_buffer_index),
        .writing_buffer_available(unused_writing_buffer_available),
        .completed_buffer_index(unused_completed_buffer_index),
        .completed_buffer_valid(unused_completed_buffer_valid),
        .frame_active(unused_frame_active),
        .abort_recovery_required(abort_recovery_required),
        .frame_commit_pulse(unused_frame_commit_pulse),
        .committed_frame_id(unused_committed_frame_id),
        .aborted_frame_count(unused_aborted_frame_count),
        .protocol_error_sticky(protocol_error_sticky),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_sticky(fifo_overflow_sticky),
        .dropping_input_frame(dropping_input_frame),
        .frame_abort_pulse(frame_abort_pulse)
    );

    // Counter comparison is SOURCE-domain logic, not a destination-domain
    // combinational cone ahead of the first synchronizer (CDC-10).
    reg good_seen_cam;
    reg bad_seen_cam;
    always @(posedge cam_pclk or negedge path_cam_rst_n) begin
        if (!path_cam_rst_n) begin good_seen_cam <= 0; bad_seen_cam <= 0; end
        else begin
            good_seen_cam <= (frames_good != 0);
            bad_seen_cam <= (frames_bad != 0) || (frames_dropped != 0);
        end
    end
    (* ASYNC_REG = "TRUE" *) reg good_meta;
    (* ASYNC_REG = "TRUE" *) reg good_sync;
    (* ASYNC_REG = "TRUE" *) reg bad_meta;
    (* ASYNC_REG = "TRUE" *) reg bad_sync;
    always @(posedge aclk or negedge path_axi_rst_n) begin
        if (!path_axi_rst_n) begin
            good_meta <= 1'b0;
            good_sync <= 1'b0;
            bad_meta <= 1'b0;
            bad_sync <= 1'b0;
        end else begin
            good_meta <= good_seen_cam;
            good_sync <= good_meta;
            bad_meta <= bad_seen_cam;
            bad_sync <= bad_meta;
        end
    end

    // [31:16] sensor ID, [15:8] WP1 error code.
    // [7:0] good_seen, bad_seen, protocol, FIFO overflow, dropping,
    //         abort recovery required, init_error, init_done.
    assign status = {wp1_status[31:8], good_sync, bad_sync,
                     protocol_error_sticky, fifo_overflow_sticky,
                     dropping_input_frame, abort_recovery_required,
                     wp1_status[1], wp1_status[0]};
endmodule
