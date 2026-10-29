`timescale 1ns / 1ps

// Stage-4B source: synthetic camera -> complete WP3 -> RGB AXI4-Stream.
// The gray branch also traverses the real FIFO/M8/resync path and participates
// in the frame transaction manager, although only RGB is written to DDR here.
module wp3_stage4b_axis_source (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cam_pclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cam_pclk, ASSOCIATED_RESET cam_rst_n, FREQ_HZ 33333333" *)
    input  wire        cam_pclk,
    input  wire        cam_rst_n,
    input  wire        camera_enable,

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
    output wire        m_axis_tlast
);

    localparam integer H_ACTIVE = 800;
    localparam integer H_FRONT  = 40;
    localparam integer H_SYNC   = 128;
    localparam integer H_BACK   = 88;
    localparam integer H_TOTAL  = H_SYNC + H_BACK + H_ACTIVE + H_FRONT;
    localparam integer H_START  = H_SYNC + H_BACK;
    localparam integer H_END    = H_START + H_ACTIVE;

    localparam integer V_ACTIVE = 480;
    localparam integer V_FRONT  = 10;
    localparam integer V_SYNC   = 2;
    localparam integer V_BACK   = 33;
    localparam integer V_TOTAL  = V_SYNC + V_BACK + V_ACTIVE + V_FRONT;
    localparam integer V_START  = V_SYNC + V_BACK;
    localparam integer V_END    = V_START + V_ACTIVE;

    // Software asserts camera_enable only after VDMA S2MM is fully configured.
    // Synchronize that control into the camera domain for clean start/stop.
    reg enable_cam_meta;
    reg enable_cam_sync;
    reg camera_started;

    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            enable_cam_meta <= 1'b0;
            enable_cam_sync <= 1'b0;
            camera_started <= 1'b0;
        end else begin
            enable_cam_meta <= camera_enable;
            enable_cam_sync <= enable_cam_meta;
            // Follow the synchronized software enable.  This lets software
            // stop the camera cleanly after VDMA has captured three frames,
            // instead of continuing to fill WP3 while S2MM is stopped.
            camera_started <= enable_cam_sync;
        end
    end

    reg [10:0] src_h;
    reg [9:0]  src_v;
    reg [1:0]  frame_id;

    wire src_active = camera_started &&
                      (src_h >= H_START) && (src_h < H_END) &&
                      (src_v >= V_START) && (src_v < V_END);
    wire src_sof = src_active && (src_h == H_START) && (src_v == V_START);
    wire src_eol = src_active && (src_h == H_END - 1);
    wire [9:0] src_x = src_h - H_START;
    wire [8:0] src_y = src_v - V_START;

    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            src_h <= 0;
            src_v <= 0;
            frame_id <= 0;
        end else if (camera_started) begin
            if (src_h == H_TOTAL - 1) begin
                src_h <= 0;
                if (src_v == V_TOTAL - 1) begin
                    src_v <= 0;
                    frame_id <= (frame_id == 2) ? 0 : frame_id + 1'b1;
                end else begin
                    src_v <= src_v + 1'b1;
                end
            end else begin
                src_h <= src_h + 1'b1;
            end
        end
    end

    reg [15:0] src_rgb565;
    reg [7:0]  src_gray8;

    always @* begin
        // Base pattern matches the one already verified in the WP3 bring-up.
        case (src_x / 100)
            0: begin src_rgb565 = 16'hFFFF; src_gray8 = 8'hFF; end
            1: begin src_rgb565 = 16'hFFE0; src_gray8 = 8'hE2; end
            2: begin src_rgb565 = 16'h07FF; src_gray8 = 8'hB3; end
            3: begin src_rgb565 = 16'h07E0; src_gray8 = 8'h96; end
            4: begin src_rgb565 = 16'hF81F; src_gray8 = 8'h69; end
            5: begin src_rgb565 = 16'hF800; src_gray8 = 8'h4C; end
            6: begin src_rgb565 = 16'h001F; src_gray8 = 8'h1D; end
            default: begin src_rgb565 = 16'h0000; src_gray8 = 8'h00; end
        endcase

        // Geometry marker shared by all frames.
        if (((src_x >= 398) && (src_x <= 401)) ||
            ((src_y >= 238) && (src_y <= 241)))
            src_rgb565 = 16'h07FF;

        // Unique border/badge proves that three independent DDR buffers were
        // filled by frames that actually crossed WP3.
        case (frame_id)
            0: begin
                if ((src_x < 4) || (src_x >= H_ACTIVE - 4) ||
                    (src_y < 4) || (src_y >= V_ACTIVE - 4))
                    src_rgb565 = 16'hF800;
                if ((src_x >= 48) && (src_x < 112) &&
                    (src_y >= 48) && (src_y < 112))
                    src_rgb565 = 16'hF800;
            end
            1: begin
                if ((src_x < 4) || (src_x >= H_ACTIVE - 4) ||
                    (src_y < 4) || (src_y >= V_ACTIVE - 4))
                    src_rgb565 = 16'h07E0;
                if ((src_x >= 368) && (src_x < 432) &&
                    (src_y >= 48) && (src_y < 112))
                    src_rgb565 = 16'h07E0;
            end
            default: begin
                if ((src_x < 4) || (src_x >= H_ACTIVE - 4) ||
                    (src_y < 4) || (src_y >= V_ACTIVE - 4))
                    src_rgb565 = 16'h001F;
                if ((src_x >= 688) && (src_x < 752) &&
                    (src_y >= 368) && (src_y < 432))
                    src_rgb565 = 16'h001F;
            end
        endcase
    end

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

    reg [9:0] rgb_line_count;
    reg [8:0] gray_line_count;
    reg [8:0] gray_pixel_count;
    reg rgb_frame_done_pulse;
    reg gray_frame_done_pulse;
    reg abort_recovery_done_pulse;
    reg gray_data_error_sticky;

    reg [7:0] expected_gray8;
    always @* begin
        case (gray_pixel_count / 50)
            0: expected_gray8 = 8'hFF;
            1: expected_gray8 = 8'hE2;
            2: expected_gray8 = 8'hB3;
            3: expected_gray8 = 8'h96;
            4: expected_gray8 = 8'h69;
            5: expected_gray8 = 8'h4C;
            6: expected_gray8 = 8'h1D;
            default: expected_gray8 = 8'h00;
        endcase
    end

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
    wire fifo_overflow_pulse;
    wire fifo_overflow_sticky;
    wire dropping_input_frame;
    wire frame_abort_pulse;

    // Model the frame currently held by the reader. Together with the latest
    // completed frame this makes the transaction manager choose 0,1,2,0...
    reg busy_valid;
    reg [1:0] busy_index;
    wire [2:0] reader_busy_mask = busy_valid ? (3'b001 << busy_index) : 3'b000;

    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            rgb_line_count <= 0;
            gray_line_count <= 0;
            gray_pixel_count <= 0;
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= 1'b0;
            gray_data_error_sticky <= 1'b0;
            busy_valid <= 1'b0;
            busy_index <= 0;
        end else begin
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= frame_abort_pulse;

            if (frame_commit_pulse && completed_buffer_valid) begin
                busy_valid <= 1'b1;
                busy_index <= completed_buffer_index;
            end

            if (rgb_fire) begin
                if (wp3_rgb_user)
                    rgb_line_count <= 0;
                if (wp3_rgb_last) begin
                    if (rgb_line_count == V_ACTIVE - 1) begin
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
                    (wp3_gray_last != (gray_pixel_count == (H_ACTIVE / 2) - 1)) ||
                    (wp3_gray_data != expected_gray8))
                    gray_data_error_sticky <= 1'b1;

                if (wp3_gray_user) begin
                    gray_line_count <= 0;
                    gray_pixel_count <= 0;
                end
                if (wp3_gray_last) begin
                    gray_pixel_count <= 0;
                    if (gray_line_count == (V_ACTIVE / 2) - 1) begin
                        gray_frame_done_pulse <= 1'b1;
                        gray_line_count <= 0;
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
        .IN_W(H_ACTIVE),
        .IN_H(V_ACTIVE)
    ) u_wp3 (
        .cam_pclk(cam_pclk),
        .cam_rst_n(cam_rst_n),
        .clear_overflow_sticky(1'b0),
        .px_valid(src_active),
        .rgb565(src_rgb565),
        .gray8(src_gray8),
        .px_sof(src_sof),
        .px_eol(src_eol),
        .input_frame_bad_pulse(1'b0),
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
                          gray_data_error_sticky ? 16'hFFE0 : wp3_rgb_data;

endmodule
