`timescale 1ns / 1ps

// AC880 stage-2 board bring-up top.
//
// A synthetic camera source crosses the real WP3 dual asynchronous FIFOs.
// RGB then drives the real M17 LCD timing block.  GRAY passes through M8 and
// participates in the real triple-buffer transaction manager, so a stable
// display requires both WP3 branches to complete correctly.
module wp3_fifo_m17_bringup_top (
    input  wire       sys_clk,

    output wire       lcd_pclk,
    output wire [4:0] lcd_r,
    output wire [5:0] lcd_g,
    output wire [4:0] lcd_b,
    output wire       lcd_de,
    output wire       lcd_hsync,
    output wire       lcd_vsync,
    output wire       lcd_bl
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

    // The synthetic camera raster is 64 clocks ahead of the LCD raster.  This
    // gives the asynchronous FIFO enough time to present each line before M17
    // starts consuming it, while remaining far below the FIFO depth.
    localparam integer SOURCE_LEAD = 64;

    wire clkfb_mmcm;
    wire clkfb_bufg;
    wire lcd_clk_mmcm;
    wire cam_clk_mmcm;
    wire lcd_clk;
    wire cam_clk;
    wire mmcm_locked;

    // Both domains run at 33.333 MHz but with a 90-degree phase offset.  They
    // therefore exercise the asynchronous CDC implementation deterministically.
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),
        .CLKFBOUT_MULT_F(20.000),
        .CLKFBOUT_PHASE(0.000),
        .CLKIN1_PERIOD(20.000),
        .CLKOUT0_DIVIDE_F(30.000),
        .CLKOUT0_DUTY_CYCLE(0.500),
        .CLKOUT0_PHASE(0.000),
        .CLKOUT1_DIVIDE(30),
        .CLKOUT1_DUTY_CYCLE(0.500),
        .CLKOUT1_PHASE(90.000),
        .DIVCLK_DIVIDE(1),
        .REF_JITTER1(0.010),
        .STARTUP_WAIT("FALSE")
    ) u_stage2_mmcm (
        .CLKIN1(sys_clk),
        .CLKFBIN(clkfb_bufg),
        .CLKFBOUT(clkfb_mmcm),
        .CLKFBOUTB(),
        .CLKOUT0(lcd_clk_mmcm),
        .CLKOUT0B(),
        .CLKOUT1(cam_clk_mmcm),
        .CLKOUT1B(),
        .CLKOUT2(),
        .CLKOUT2B(),
        .CLKOUT3(),
        .CLKOUT3B(),
        .CLKOUT4(),
        .CLKOUT5(),
        .CLKOUT6(),
        .LOCKED(mmcm_locked),
        .PWRDWN(1'b0),
        .RST(1'b0)
    );

    BUFG u_clkfb_bufg (.I(clkfb_mmcm), .O(clkfb_bufg));
    BUFG u_lcd_clk_bufg (.I(lcd_clk_mmcm), .O(lcd_clk));
    BUFG u_cam_clk_bufg (.I(cam_clk_mmcm), .O(cam_clk));

    reg [2:0] lcd_reset_sync = 3'b000;
    reg [2:0] cam_reset_sync = 3'b000;

    always @(posedge lcd_clk or negedge mmcm_locked) begin
        if (!mmcm_locked)
            lcd_reset_sync <= 3'b000;
        else
            lcd_reset_sync <= {lcd_reset_sync[1:0], 1'b1};
    end

    always @(posedge cam_clk or negedge mmcm_locked) begin
        if (!mmcm_locked)
            cam_reset_sync <= 3'b000;
        else
            cam_reset_sync <= {cam_reset_sync[1:0], 1'b1};
    end

    wire lcd_rst_n = lcd_reset_sync[2];
    wire cam_rst_n = cam_reset_sync[2];

    // Synthetic 800x480 camera raster.  Its horizontal phase lead keeps FIFO
    // occupancy bounded at roughly SOURCE_LEAD pixels per line.
    reg [10:0] src_h = SOURCE_LEAD;
    reg [9:0]  src_v = 10'd0;

    wire src_active = (src_h >= H_START) && (src_h < H_END) &&
                      (src_v >= V_START) && (src_v < V_END);
    wire src_sof = src_active && (src_h == H_START) && (src_v == V_START);
    wire src_eol = src_active && (src_h == H_END - 1);
    wire [9:0] src_active_x = src_h - H_START;

    reg [15:0] src_rgb565;
    reg [7:0]  src_gray8;

    always @* begin
        case (src_active_x / 100)
            0: begin src_rgb565 = 16'hFFFF; src_gray8 = 8'hFF; end // white
            1: begin src_rgb565 = 16'hFFE0; src_gray8 = 8'hE2; end // yellow
            2: begin src_rgb565 = 16'h07FF; src_gray8 = 8'hB3; end // cyan
            3: begin src_rgb565 = 16'h07E0; src_gray8 = 8'h96; end // green
            4: begin src_rgb565 = 16'hF81F; src_gray8 = 8'h69; end // magenta
            5: begin src_rgb565 = 16'hF800; src_gray8 = 8'h4C; end // red
            6: begin src_rgb565 = 16'h001F; src_gray8 = 8'h1D; end // blue
            default: begin src_rgb565 = 16'h0000; src_gray8 = 8'h00; end
        endcase
    end

    always @(posedge cam_clk) begin
        if (!cam_rst_n) begin
            src_h <= SOURCE_LEAD;
            src_v <= 10'd0;
        end else if (src_h == H_TOTAL - 1) begin
            src_h <= 11'd0;
            if (src_v == V_TOTAL - 1)
                src_v <= 10'd0;
            else
                src_v <= src_v + 1'b1;
        end else begin
            src_h <= src_h + 1'b1;
        end
    end

    wire        wp3_rgb_valid;
    wire        wp3_rgb_ready;
    wire [15:0] wp3_rgb_data;
    wire        wp3_rgb_user;
    wire        wp3_rgb_last;
    wire        wp3_gray_valid;
    wire        wp3_gray_ready = 1'b1;
    wire [7:0]  wp3_gray_data;
    wire        wp3_gray_user;
    wire        wp3_gray_last;

    wire [1:0]  writing_buffer_index;
    wire        writing_buffer_available;
    wire [1:0]  completed_buffer_index;
    wire        completed_buffer_valid;
    wire        frame_active;
    wire        abort_recovery_required;
    wire        frame_commit_pulse;
    wire [31:0] committed_frame_id;
    wire [31:0] aborted_frame_count;
    wire        protocol_error_sticky;
    wire        fifo_overflow_pulse;
    wire        fifo_overflow_sticky;
    wire        dropping_input_frame;
    wire        frame_abort_pulse;

    reg [9:0] rgb_line_count = 10'd0;
    reg [8:0] gray_line_count = 9'd0;
    reg [8:0] gray_pixel_count = 9'd0;
    reg       rgb_frame_done_pulse = 1'b0;
    reg       gray_frame_done_pulse = 1'b0;
    reg       abort_recovery_done_pulse = 1'b0;
    reg       gray_data_error_sticky = 1'b0;

    wire rgb_fire = wp3_rgb_valid && wp3_rgb_ready;
    wire gray_fire = wp3_gray_valid && wp3_gray_ready;

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

    always @(posedge lcd_clk) begin
        if (!lcd_rst_n) begin
            rgb_line_count <= 10'd0;
            gray_line_count <= 9'd0;
            gray_pixel_count <= 9'd0;
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            abort_recovery_done_pulse <= 1'b0;
            gray_data_error_sticky <= 1'b0;
        end else begin
            rgb_frame_done_pulse <= 1'b0;
            gray_frame_done_pulse <= 1'b0;
            // There is no real VDMA in stage 2, so recovery is acknowledged
            // one clock after an abort request.
            abort_recovery_done_pulse <= frame_abort_pulse;

            if (rgb_fire) begin
                if (wp3_rgb_user)
                    rgb_line_count <= 10'd0;
                if (wp3_rgb_last) begin
                    if (rgb_line_count == V_ACTIVE - 1) begin
                        rgb_frame_done_pulse <= 1'b1;
                        rgb_line_count <= 10'd0;
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
                    gray_line_count <= 9'd0;
                    gray_pixel_count <= 9'd0;
                end
                if (wp3_gray_last) begin
                    gray_pixel_count <= 9'd0;
                    if (gray_line_count == (V_ACTIVE / 2) - 1) begin
                        gray_frame_done_pulse <= 1'b1;
                        gray_line_count <= 9'd0;
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
        .cam_pclk(cam_clk),
        .cam_rst_n(cam_rst_n),
        .clear_overflow_sticky(1'b0),
        .px_valid(src_active),
        .rgb565(src_rgb565),
        .gray8(src_gray8),
        .px_sof(src_sof),
        .px_eol(src_eol),
        .input_frame_bad_pulse(1'b0),
        .aclk(lcd_clk),
        .aresetn(lcd_rst_n),
        .rgb_m_tvalid(wp3_rgb_valid),
        .rgb_m_tready(wp3_rgb_ready),
        .rgb_m_tdata(wp3_rgb_data),
        .rgb_m_tuser(wp3_rgb_user),
        .rgb_m_tlast(wp3_rgb_last),
        .gray_m_tvalid(wp3_gray_valid),
        .gray_m_tready(wp3_gray_ready),
        .gray_m_tdata(wp3_gray_data),
        .gray_m_tuser(wp3_gray_user),
        .gray_m_tlast(wp3_gray_last),
        .rgb_frame_done_pulse(rgb_frame_done_pulse),
        .gray_frame_done_pulse(gray_frame_done_pulse),
        .abort_recovery_done_pulse(abort_recovery_done_pulse),
        .reader_busy_mask(3'b000),
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

    wire [15:0] lcd_stream_data = protocol_error_sticky  ? 16'hF81F :
                                    fifo_overflow_sticky ? 16'hF800 :
                                    gray_data_error_sticky ? 16'hFFE0 :
                                                              wp3_rgb_data;
    wire lcd_underflow_sticky_unused;

    rgb_lcd_timing #(
        .H_ACTIVE(H_ACTIVE),
        .H_FRONT(H_FRONT),
        .H_SYNC(H_SYNC),
        .H_BACK(H_BACK),
        .V_ACTIVE(V_ACTIVE),
        .V_FRONT(V_FRONT),
        .V_SYNC(V_SYNC),
        .V_BACK(V_BACK)
    ) u_m17_lcd_timing (
        .lcd_pclk(lcd_clk),
        .lcd_rst_n(lcd_rst_n),
        .s_tvalid(wp3_rgb_valid),
        .s_tready(wp3_rgb_ready),
        .s_tdata(lcd_stream_data),
        .s_tuser(wp3_rgb_user),
        .s_tlast(wp3_rgb_last),
        .lcd_r(lcd_r),
        .lcd_g(lcd_g),
        .lcd_b(lcd_b),
        .lcd_de(lcd_de),
        .lcd_hsync(lcd_hsync),
        .lcd_vsync(lcd_vsync),
        .lcd_bl(lcd_bl),
        .lcd_underflow_sticky(lcd_underflow_sticky_unused)
    );

    assign lcd_pclk = lcd_clk;

endmodule
