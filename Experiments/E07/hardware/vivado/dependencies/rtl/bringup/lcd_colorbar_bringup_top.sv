`timescale 1ns / 1ps

// AC880 stage-1 board bring-up top.
//
// This design deliberately contains no PS, DDR, VDMA or camera logic.  It
// proves the physical LCD path first:
//   50 MHz board clock -> MMCM -> M17 timing -> RGB565 LCD pins.
module lcd_colorbar_bringup_top (
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
    localparam integer V_ACTIVE = 480;

    wire clkfb_mmcm;
    wire clkfb_bufg;
    wire lcd_pclk_mmcm;
    wire lcd_pclk_int;
    wire mmcm_locked;

    // 50 MHz * 20 / 30 = 33.333 MHz.  The panel nominal value is 33.26 MHz;
    // the +0.22 percent difference is well inside the panel pixel-clock range.
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),
        .CLKFBOUT_MULT_F(20.000),
        .CLKFBOUT_PHASE(0.000),
        .CLKIN1_PERIOD(20.000),
        .CLKOUT0_DIVIDE_F(30.000),
        .CLKOUT0_DUTY_CYCLE(0.500),
        .CLKOUT0_PHASE(0.000),
        .DIVCLK_DIVIDE(1),
        .REF_JITTER1(0.010),
        .STARTUP_WAIT("FALSE")
    ) u_lcd_mmcm (
        .CLKIN1(sys_clk),
        .CLKFBIN(clkfb_bufg),
        .CLKFBOUT(clkfb_mmcm),
        .CLKFBOUTB(),
        .CLKOUT0(lcd_pclk_mmcm),
        .CLKOUT0B(),
        .CLKOUT1(),
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

    BUFG u_clkfb_bufg (
        .I(clkfb_mmcm),
        .O(clkfb_bufg)
    );

    BUFG u_lcd_pclk_bufg (
        .I(lcd_pclk_mmcm),
        .O(lcd_pclk_int)
    );

    // Release the LCD logic reset synchronously, three pixel clocks after the
    // MMCM locks.  Assertion remains immediate if lock is ever lost.
    reg [2:0] lcd_reset_sync = 3'b000;
    always @(posedge lcd_pclk_int or negedge mmcm_locked) begin
        if (!mmcm_locked)
            lcd_reset_sync <= 3'b000;
        else
            lcd_reset_sync <= {lcd_reset_sync[1:0], 1'b1};
    end
    wire lcd_rst_n = lcd_reset_sync[2];

    // AXI4-Stream color-bar source.  The first pixel carries TUSER and the
    // final pixel of every active line carries TLAST, exactly as M17 expects.
    reg  [9:0]  source_x = 10'd0;
    reg  [8:0]  source_y = 9'd0;
    wire        source_valid = lcd_rst_n;
    wire        source_ready;
    wire        source_user = (source_x == 0) && (source_y == 0);
    wire        source_last = (source_x == H_ACTIVE - 1);
    reg  [15:0] source_data;

    always @* begin
        case (source_x / 100)
            0: source_data = 16'hFFFF; // white
            1: source_data = 16'hFFE0; // yellow
            2: source_data = 16'h07FF; // cyan
            3: source_data = 16'h07E0; // green
            4: source_data = 16'hF81F; // magenta
            5: source_data = 16'hF800; // red
            6: source_data = 16'h001F; // blue
            default: source_data = 16'h0000; // black
        endcase
    end

    always @(posedge lcd_pclk_int) begin
        if (!lcd_rst_n) begin
            source_x <= 10'd0;
            source_y <= 9'd0;
        end else if (source_valid && source_ready) begin
            if (source_x == H_ACTIVE - 1) begin
                source_x <= 10'd0;
                if (source_y == V_ACTIVE - 1)
                    source_y <= 9'd0;
                else
                    source_y <= source_y + 1'b1;
            end else begin
                source_x <= source_x + 1'b1;
            end
        end
    end

    wire lcd_underflow_sticky_unused;

    rgb_lcd_timing #(
        .H_ACTIVE(H_ACTIVE),
        .H_FRONT(40),
        .H_SYNC(128),
        .H_BACK(88),
        .V_ACTIVE(V_ACTIVE),
        .V_FRONT(10),
        .V_SYNC(2),
        .V_BACK(33)
    ) u_m17_lcd_timing (
        .lcd_pclk(lcd_pclk_int),
        .lcd_rst_n(lcd_rst_n),
        .s_tvalid(source_valid),
        .s_tready(source_ready),
        .s_tdata(source_data),
        .s_tuser(source_user),
        .s_tlast(source_last),
        .lcd_r(lcd_r),
        .lcd_g(lcd_g),
        .lcd_b(lcd_b),
        .lcd_de(lcd_de),
        .lcd_hsync(lcd_hsync),
        .lcd_vsync(lcd_vsync),
        .lcd_bl(lcd_bl),
        .lcd_underflow_sticky(lcd_underflow_sticky_unused)
    );

    // M17 updates RGB/control on the rising edge; the panel samples them on
    // the falling edge of this forwarded clock.
    assign lcd_pclk = lcd_pclk_int;

endmodule
