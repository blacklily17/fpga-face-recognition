`timescale 1ns / 1ps

// Stage-5A source: synthetic 8-bit DVP camera -> delivered WP2 -> complete WP3
// -> RGB AXI4-Stream.  The generator deliberately presents low byte first,
// matching OV5640 register 0x4300 = 0x6f and WP2 HIGH_BYTE_FIRST = 0.
module wp2_wp3_stage5_axis_source (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, ASSOCIATED_RESET cam_rst_n, FREQ_HZ 33333333" *)
    input  wire        cam_pclk,
    input  wire        cam_rst_n,
    input  wire        camera_enable,
    input  wire        inject_bad_frame_enable,
    input  wire        recovery_ack_toggle,

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 33333333" *)
    input  wire        aclk,
    input  wire        aresetn,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
    output wire        m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
    input  wire        m_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
    output wire [15:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
    output wire        m_axis_tuser,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
    output wire        m_axis_tlast,

    // Stable software-visible recovery diagnostics.  Stage-5A leaves this
    // port unused; stage-5B connects it to AXI GPIO channel 2.
    output wire [7:0]  recovery_status
);

    localparam integer ACTIVE_W = 800;
    localparam integer ACTIVE_H = 480;
    localparam integer LINE_BYTES = ACTIVE_W * 2;
    localparam integer LINE_BLANK_CYCLES = 16;
    localparam integer FRAME_BLANK_CYCLES = 32768;

    localparam [2:0] DVP_DISABLED = 3'd0;
    localparam [2:0] DVP_VSYNC    = 3'd1;
    localparam [2:0] DVP_PRELINE  = 3'd2;
    localparam [2:0] DVP_LINE     = 3'd3;
    localparam [2:0] DVP_HBLANK   = 3'd4;
    localparam [2:0] DVP_WAIT_RECOVERY = 3'd5;

    function [15:0] make_pattern_rgb;
        input [9:0] x;
        input [8:0] y;
        input [1:0] fid;
        reg [15:0] value;
        begin
            case (x / 100)
                0: value = 16'hFFFF;
                1: value = 16'hFFE0;
                2: value = 16'h07FF;
                3: value = 16'h07E0;
                4: value = 16'hF81F;
                5: value = 16'hF800;
                6: value = 16'h001F;
                default: value = 16'h0000;
            endcase

            if (((x >= 398) && (x <= 401)) ||
                ((y >= 238) && (y <= 241)))
                value = 16'h07FF;

            case (fid)
                0: begin
                    if ((x < 4) || (x >= ACTIVE_W - 4) ||
                        (y < 4) || (y >= ACTIVE_H - 4))
                        value = 16'hF800;
                    if ((x >= 48) && (x < 112) &&
                        (y >= 48) && (y < 112))
                        value = 16'hF800;
                end
                1: begin
                    if ((x < 4) || (x >= ACTIVE_W - 4) ||
                        (y < 4) || (y >= ACTIVE_H - 4))
                        value = 16'h07E0;
                    if ((x >= 368) && (x < 432) &&
                        (y >= 48) && (y < 112))
                        value = 16'h07E0;
                end
                default: begin
                    if ((x < 4) || (x >= ACTIVE_W - 4) ||
                        (y < 4) || (y >= ACTIVE_H - 4))
                        value = 16'h001F;
                    if ((x >= 688) && (x < 752) &&
                        (y >= 368) && (y < 432))
                        value = 16'h001F;
                end
            endcase
            make_pattern_rgb = value;
        end
    endfunction

    // Synchronize the PS GPIO into the synthetic camera clock domain.
    reg enable_cam_meta;
    reg enable_cam_sync;
    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            enable_cam_meta <= 1'b0;
            enable_cam_sync <= 1'b0;
        end else begin
            enable_cam_meta <= camera_enable;
            enable_cam_sync <= enable_cam_meta;
        end
    end

    reg [2:0]  dvp_state;
    reg        cam_vsync;
    reg        cam_href;
    reg [10:0] byte_count;
    reg [8:0]  line_count;
    reg [15:0] blank_count;
    reg [1:0]  source_frame_id;
    reg        injection_armed;
    reg        bad_frame_injected;
    reg        recovery_ack_cam_meta;
    reg        recovery_ack_cam_sync;
    reg        recovery_ack_cam_seen;

    wire [9:0] source_x = byte_count[10:1];
    wire [15:0] source_pixel = make_pattern_rgb(source_x, line_count,
                                                source_frame_id);
    wire [7:0] cam_data = byte_count[0] ? source_pixel[15:8]
                                        : source_pixel[7:0];

    // DVP timing: VSYNC high during vertical blank, HREF high for exactly
    // 1600 byte clocks on each of 480 lines.  WP2 samples on cam_pclk rising.
    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            dvp_state <= DVP_DISABLED;
            cam_vsync <= 1'b1;
            cam_href <= 1'b0;
            byte_count <= 0;
            line_count <= 0;
            blank_count <= 0;
            source_frame_id <= 0;
            injection_armed <= 1'b1;
            bad_frame_injected <= 1'b0;
            recovery_ack_cam_meta <= 1'b0;
            recovery_ack_cam_sync <= 1'b0;
            recovery_ack_cam_seen <= 1'b0;
        end else if (!enable_cam_sync) begin
            recovery_ack_cam_meta <= recovery_ack_toggle;
            recovery_ack_cam_sync <= recovery_ack_cam_meta;
            dvp_state <= DVP_DISABLED;
            cam_vsync <= 1'b1;
            cam_href <= 1'b0;
            byte_count <= 0;
            line_count <= 0;
            blank_count <= 0;
        end else begin
            recovery_ack_cam_meta <= recovery_ack_toggle;
            recovery_ack_cam_sync <= recovery_ack_cam_meta;
            case (dvp_state)
                DVP_DISABLED: begin
                    cam_vsync <= 1'b1;
                    cam_href <= 1'b0;
                    blank_count <= 0;
                    dvp_state <= DVP_VSYNC;
                end

                DVP_VSYNC: begin
                    cam_vsync <= 1'b1;
                    cam_href <= 1'b0;
                    if (blank_count == FRAME_BLANK_CYCLES - 1) begin
                        blank_count <= 0;
                        cam_vsync <= 1'b0;
                        line_count <= 0;
                        dvp_state <= DVP_PRELINE;
                    end else begin
                        blank_count <= blank_count + 1'b1;
                    end
                end

                DVP_PRELINE: begin
                    cam_vsync <= 1'b0;
                    cam_href <= 1'b0;
                    if (blank_count == LINE_BLANK_CYCLES - 1) begin
                        blank_count <= 0;
                        byte_count <= 0;
                        cam_href <= 1'b1;
                        dvp_state <= DVP_LINE;
                    end else begin
                        blank_count <= blank_count + 1'b1;
                    end
                end

                DVP_LINE: begin
                    cam_vsync <= 1'b0;
                    cam_href <= 1'b1;
                    // Stage-5B deliberately truncates the second frame in the
                    // middle of line 120.  Raising VSYNC after only 800 bytes
                    // makes delivered WP2 report both a short line and too few
                    // rows.  The source then remains quiescent until software
                    // has reset/reconfigured VDMA and toggled recovery_ack.
                    if (inject_bad_frame_enable && injection_armed &&
                        (source_frame_id == 1) && (line_count == 120) &&
                        (byte_count == 799)) begin
                        cam_vsync <= 1'b1;
                        cam_href <= 1'b0;
                        blank_count <= 0;
                        injection_armed <= 1'b0;
                        bad_frame_injected <= 1'b1;
                        dvp_state <= DVP_WAIT_RECOVERY;
                    end else if (byte_count == LINE_BYTES - 1) begin
                        cam_href <= 1'b0;
                        blank_count <= 0;
                        dvp_state <= DVP_HBLANK;
                    end else begin
                        byte_count <= byte_count + 1'b1;
                    end
                end

                DVP_HBLANK: begin
                    cam_vsync <= 1'b0;
                    cam_href <= 1'b0;
                    if (blank_count == LINE_BLANK_CYCLES - 1) begin
                        blank_count <= 0;
                        if (line_count == ACTIVE_H - 1) begin
                            cam_vsync <= 1'b1;
                            source_frame_id <= (source_frame_id == 2)
                                             ? 0 : source_frame_id + 1'b1;
                            dvp_state <= DVP_VSYNC;
                        end else begin
                            line_count <= line_count + 1'b1;
                            byte_count <= 0;
                            cam_href <= 1'b1;
                            dvp_state <= DVP_LINE;
                        end
                    end else begin
                        blank_count <= blank_count + 1'b1;
                    end
                end

                default: begin // DVP_WAIT_RECOVERY
                    cam_vsync <= 1'b1;
                    cam_href <= 1'b0;
                    if (recovery_ack_cam_sync != recovery_ack_cam_seen) begin
                        recovery_ack_cam_seen <= recovery_ack_cam_sync;
                        blank_count <= 0;
                        byte_count <= 0;
                        line_count <= 0;
                        source_frame_id <= 0;
                        dvp_state <= DVP_VSYNC;
                    end
                end
            endcase
        end
    end

    wire        raw_valid;
    wire [7:0]  raw_data;
    wire        raw_sof;
    wire        raw_eol;
    wire [10:0] raw_byte_x;
    wire [8:0]  raw_y;
    wire        px_valid;
    wire [15:0] wp2_rgb565;
    wire [7:0]  wp2_gray8;
    wire        px_sof;
    wire        px_eol;
    wire        wp2_frame_done;
    wire        wp2_frame_good;
    wire [3:0]  wp2_frame_error;
    wire [31:0] wp2_frames_seen;
    wire [31:0] wp2_frames_good;
    wire [31:0] wp2_frames_bad;
    wire [31:0] wp2_frames_dropped;
    wire [31:0] wp2_last_error;

    wire fifo_overflow_pulse;
    wp2_camera_top #(
        .ACTIVE_W(ACTIVE_W),
        .ACTIVE_H(ACTIVE_H),
        .HIGH_BYTE_FIRST(1'b0)
    ) u_wp2 (
        .cam_pclk(cam_pclk),
        .cam_rst_n(cam_rst_n),
        .cam_vsync(cam_vsync),
        .cam_href(cam_href),
        .cam_data(cam_data),
        .fifo_overflow(fifo_overflow_pulse),
        .raw_valid(raw_valid),
        .raw_data(raw_data),
        .raw_sof(raw_sof),
        .raw_eol(raw_eol),
        .raw_byte_x(raw_byte_x),
        .raw_y(raw_y),
        .px_valid(px_valid),
        .rgb565(wp2_rgb565),
        .gray8(wp2_gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .frame_done(wp2_frame_done),
        .frame_good(wp2_frame_good),
        .frame_error(wp2_frame_error),
        .frames_seen(wp2_frames_seen),
        .frames_good(wp2_frames_good),
        .frames_bad(wp2_frames_bad),
        .frames_dropped(wp2_frames_dropped),
        .last_error(wp2_last_error)
    );

    wire wp2_frame_bad_pulse = (raw_eol && !raw_valid) ||
                               (wp2_frame_done && !wp2_frame_good);

    wire        wp3_rgb_valid;
    wire [15:0] wp3_rgb_data;
    wire        wp3_rgb_user;
    wire        wp3_rgb_last;
    wire        wp3_gray_valid;
    wire [7:0]  wp3_gray_data;
    wire        wp3_gray_user;
    wire        wp3_gray_last;

    wire rgb_fire = wp3_rgb_valid && m_axis_tready;
    wire gray_fire = wp3_gray_valid;

    reg [8:0] rgb_line_count;
    reg [7:0] gray_line_count;
    reg [8:0] gray_pixel_count;
    reg [1:0] gray_expected_frame_id;
    reg rgb_frame_done_pulse;
    reg gray_frame_done_pulse;
    reg abort_recovery_done_pulse;
    reg gray_data_error_sticky;
    reg wp2_error_sticky_cam;
    reg wp2_error_meta;
    reg wp2_error_sticky;
    reg recovery_ack_meta;
    reg recovery_ack_sync;
    reg recovery_ack_seen;

    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n)
            wp2_error_sticky_cam <= 1'b0;
        else if (recovery_ack_cam_sync != recovery_ack_cam_seen)
            wp2_error_sticky_cam <= 1'b0;
        else if (wp2_frame_done && (!wp2_frame_good ||
                                    (wp2_frame_error != 0)))
            wp2_error_sticky_cam <= 1'b1;
    end

    reg [7:0] expected_gray8;
    always @* begin
        case (gray_pixel_count / 50)
            0: expected_gray8 = 8'hFF;
            1: expected_gray8 = 8'hE2;
            2: expected_gray8 = 8'hB2;
            3: expected_gray8 = 8'h95;
            4: expected_gray8 = 8'h6A;
            5: expected_gray8 = 8'h4D;
            6: expected_gray8 = 8'h1D;
            default: expected_gray8 = 8'h00;
        endcase
    end

    wire [9:0] gray_source_x = {gray_pixel_count, 1'b0};
    wire [8:0] gray_source_y = {gray_line_count, 1'b0};
    wire gray_common_marker =
        (gray_source_x < 4) || (gray_source_x >= ACTIVE_W - 4) ||
        (gray_source_y < 4) || (gray_source_y >= ACTIVE_H - 4) ||
        ((gray_source_x >= 398) && (gray_source_x <= 401)) ||
        ((gray_source_y >= 238) && (gray_source_y <= 241));
    wire gray_frame_badge =
        ((gray_expected_frame_id == 0) &&
         (gray_source_x >= 48) && (gray_source_x < 112) &&
         (gray_source_y >= 48) && (gray_source_y < 112)) ||
        ((gray_expected_frame_id == 1) &&
         (gray_source_x >= 368) && (gray_source_x < 432) &&
         (gray_source_y >= 48) && (gray_source_y < 112)) ||
        ((gray_expected_frame_id == 2) &&
         (gray_source_x >= 688) && (gray_source_x < 752) &&
         (gray_source_y >= 368) && (gray_source_y < 432));

    wire [1:0] writing_buffer_index;
    wire writing_buffer_available;
    wire [1:0] completed_buffer_index;
    wire completed_buffer_valid;
    wire frame_active;
    wire abort_recovery_required;
    wire frame_commit_pulse;
    wire [31:0] committed_frame_id;
    wire [31:0] aborted_frame_count;
    wire protocol_error_sticky;
    wire fifo_overflow_sticky;
    wire dropping_input_frame;
    wire frame_abort_pulse;

    reg busy_valid;
    reg [1:0] busy_index;
    wire [2:0] reader_busy_mask = busy_valid ? (3'b001 << busy_index)
                                             : 3'b000;

    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            rgb_line_count <= 0;
            gray_line_count <= 0;
            gray_pixel_count <= 0;
            gray_expected_frame_id <= 0;
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= 1'b0;
            gray_data_error_sticky <= 1'b0;
            wp2_error_meta <= 1'b0;
            wp2_error_sticky <= 1'b0;
            recovery_ack_meta <= 1'b0;
            recovery_ack_sync <= 1'b0;
            recovery_ack_seen <= 1'b0;
            busy_valid <= 1'b0;
            busy_index <= 0;
        end else begin
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= 1'b0;
            recovery_ack_meta <= recovery_ack_toggle;
            recovery_ack_sync <= recovery_ack_meta;
            if (inject_bad_frame_enable) begin
                if (recovery_ack_sync != recovery_ack_seen) begin
                    recovery_ack_seen <= recovery_ack_sync;
                    abort_recovery_done_pulse <= 1'b1;
                end
            end else begin
                // Stage-5A has no real VDMA recovery to coordinate, so retain
                // its original immediate acknowledgement behavior.
                abort_recovery_done_pulse <= frame_abort_pulse;
            end
            wp2_error_meta <= wp2_error_sticky_cam;
            wp2_error_sticky <= wp2_error_meta;

            if (frame_abort_pulse) begin
                rgb_line_count <= 0;
                gray_line_count <= 0;
                gray_pixel_count <= 0;
            end
            if (abort_recovery_done_pulse) begin
                rgb_line_count <= 0;
                gray_line_count <= 0;
                gray_pixel_count <= 0;
                gray_expected_frame_id <= 0;
                gray_data_error_sticky <= 1'b0;
            end

            if (frame_commit_pulse && completed_buffer_valid) begin
                busy_valid <= 1'b1;
                busy_index <= completed_buffer_index;
            end

            if (rgb_fire) begin
                if (wp3_rgb_user)
                    rgb_line_count <= 0;
                if (wp3_rgb_last) begin
                    if (rgb_line_count == ACTIVE_H - 1) begin
                        rgb_frame_done_pulse <= 1'b1;
                        rgb_line_count <= 0;
                    end else begin
                        rgb_line_count <= rgb_line_count + 1'b1;
                    end
                end
            end

            if (gray_fire) begin
                if ((wp3_gray_user != ((gray_pixel_count == 0) &&
                                       (gray_line_count == 0))) ||
                    (wp3_gray_last !=
                     (gray_pixel_count == (ACTIVE_W / 2) - 1)) ||
                    ((!gray_common_marker && !gray_frame_badge) &&
                     (wp3_gray_data != expected_gray8)))
                    gray_data_error_sticky <= 1'b1;

                if (wp3_gray_user) begin
                    gray_line_count <= 0;
                    gray_pixel_count <= 0;
                end
                if (wp3_gray_last) begin
                    gray_pixel_count <= 0;
                    if (gray_line_count == (ACTIVE_H / 2) - 1) begin
                        gray_frame_done_pulse <= 1'b1;
                        gray_line_count <= 0;
                        gray_expected_frame_id <=
                            (gray_expected_frame_id == 2)
                            ? 0 : gray_expected_frame_id + 1'b1;
                    end else begin
                        gray_line_count <= gray_line_count + 1'b1;
                    end
                end else begin
                    gray_pixel_count <= gray_pixel_count + 1'b1;
                end
            end
        end
    end

    wp3_frame_safe_pipeline #(
        .IN_W(ACTIVE_W),
        .IN_H(ACTIVE_H)
    ) u_wp3 (
        .cam_pclk(cam_pclk),
        .cam_rst_n(cam_rst_n),
        .clear_overflow_sticky(1'b0),
        .px_valid(px_valid),
        .rgb565(wp2_rgb565),
        .gray8(wp2_gray8),
        .px_sof(px_sof),
        .px_eol(px_eol),
        .input_frame_bad_pulse(wp2_frame_bad_pulse),
        .aclk(aclk),
        .aresetn(aresetn),
        .rgb_m_tvalid(wp3_rgb_valid),
        .rgb_m_tready(m_axis_tready),
        .rgb_m_tdata(wp3_rgb_data),
        .rgb_m_tuser(wp3_rgb_user),
        .rgb_m_tlast(wp3_rgb_last),
        .gray_m_tvalid(wp3_gray_valid),
        .gray_m_tready(1'b1),
        .gray_m_tdata(wp3_gray_data),
        .gray_m_tuser(wp3_gray_user),
        .gray_m_tlast(wp3_gray_last),
        .rgb_frame_done_pulse(rgb_frame_done_pulse),
        .gray_frame_done_pulse(gray_frame_done_pulse),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .reader_busy_mask(reader_busy_mask),
        .writing_buffer_index(writing_buffer_index),
        .writing_buffer_available(writing_buffer_available),
        .completed_buffer_index(completed_buffer_index),
        .completed_buffer_valid(completed_buffer_valid),
        .frame_active(frame_active),
        .abort_recovery_required(abort_recovery_required),
        .frame_commit_pulse(frame_commit_pulse),
        .committed_frame_id(committed_frame_id),
        .aborted_frame_count(aborted_frame_count),
        .protocol_error_sticky(protocol_error_sticky),
        .fifo_overflow_pulse(fifo_overflow_pulse),
        .fifo_overflow_sticky(fifo_overflow_sticky),
        .dropping_input_frame(dropping_input_frame),
        .frame_abort_pulse(frame_abort_pulse)
    );

    assign m_axis_tvalid = wp3_rgb_valid;
    assign m_axis_tuser  = wp3_rgb_user;
    assign m_axis_tlast  = wp3_rgb_last;
    assign m_axis_tdata  = protocol_error_sticky  ? 16'hF81F :
                          fifo_overflow_sticky    ? 16'hF800 :
                          gray_data_error_sticky ? 16'hFFE0 :
                          wp2_error_sticky       ? 16'hFD20 : wp3_rgb_data;

    assign recovery_status = {
        (committed_frame_id >= 4),
        (wp2_frames_bad != 0),
        dropping_input_frame,
        fifo_overflow_sticky,
        protocol_error_sticky,
        wp2_error_sticky,
        bad_frame_injected,
        abort_recovery_required
    };

endmodule
