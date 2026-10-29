`timescale 1ns / 1ps

// M17: continuous RGB-LCD raster timing with an AXI4-Stream pixel input.
//
// The LCD raster never stalls.  If a pixel is missing, or the AXI frame/line
// markers are malformed, the remainder of that display frame is forced to
// black and lcd_underflow_sticky is asserted.  The input is then drained up
// to the next TUSER beat, which is held until the first active pixel of the
// next LCD frame.  This prevents a short/aborted DMA frame from shifting all
// following frames on the panel.
module rgb_lcd_timing #(
    parameter integer H_ACTIVE = 800,
    parameter integer H_FRONT  = 40,
    parameter integer H_SYNC   = 128,
    parameter integer H_BACK   = 88,
    parameter integer V_ACTIVE = 480,
    parameter integer V_FRONT  = 10,
    parameter integer V_SYNC   = 2,
    parameter integer V_BACK   = 33
) (
    input  logic        lcd_pclk,
    input  logic        lcd_rst_n,

    input  logic        s_tvalid,
    output logic        s_tready,
    input  logic [15:0] s_tdata,
    input  logic        s_tuser,
    input  logic        s_tlast,

    output logic [4:0]  lcd_r,
    output logic [5:0]  lcd_g,
    output logic [4:0]  lcd_b,
    output logic        lcd_de,
    output logic        lcd_hsync,
    output logic        lcd_vsync,
    output logic        lcd_bl,
    output logic        lcd_underflow_sticky
);

    localparam integer H_TOTAL = H_SYNC + H_BACK + H_ACTIVE + H_FRONT;
    localparam integer V_TOTAL = V_SYNC + V_BACK + V_ACTIVE + V_FRONT;
    localparam integer H_START = H_SYNC + H_BACK;
    localparam integer V_START = V_SYNC + V_BACK;
    localparam integer H_END   = H_START + H_ACTIVE;
    localparam integer V_END   = V_START + V_ACTIVE;
    localparam integer H_CW    = (H_TOTAL <= 2) ? 1 : $clog2(H_TOTAL);
    localparam integer V_CW    = (V_TOTAL <= 2) ? 1 : $clog2(V_TOTAL);

    logic [H_CW-1:0] h_count;
    logic [V_CW-1:0] v_count;
    logic            stream_locked;

    wire h_sync_slot = (h_count < H_SYNC);
    wire v_sync_slot = (v_count < V_SYNC);
    wire h_active_slot = (h_count >= H_START) && (h_count < H_END);
    wire v_active_slot = (v_count >= V_START) && (v_count < V_END);
    wire active_slot = h_active_slot && v_active_slot;
    wire first_active_pixel = (h_count == H_START) && (v_count == V_START);
    wire last_active_column = (h_count == (H_END - 1));
    wire last_active_pixel = last_active_column && (v_count == (V_END - 1));

    // While unlocked, discard residual non-SOF data but hold a new SOF beat.
    // At the first active pixel a valid TUSER beat is allowed to start a frame.
    always_comb begin
        s_tready = 1'b0;
        if (active_slot && stream_locked) begin
            s_tready = 1'b1;
        end else if (first_active_pixel && !stream_locked) begin
            s_tready = 1'b1;
        end else if (!stream_locked && s_tvalid && !s_tuser) begin
            s_tready = 1'b1;
        end
    end

    always_ff @(posedge lcd_pclk) begin
        if (!lcd_rst_n) begin
            h_count                  <= '0;
            v_count                  <= '0;
            stream_locked            <= 1'b0;
            lcd_r                    <= '0;
            lcd_g                    <= '0;
            lcd_b                    <= '0;
            lcd_de                   <= 1'b0;
            lcd_hsync                <= 1'b1;
            lcd_vsync                <= 1'b1;
            lcd_bl                   <= 1'b0;
            lcd_underflow_sticky     <= 1'b0;
        end else begin
            // Panel timing: HS/VS active low, DE active high.  RGB and timing
            // are registered on the rising edge and are stable for the panel's
            // falling-edge sample point.
            lcd_hsync <= !h_sync_slot;
            lcd_vsync <= !v_sync_slot;
            lcd_de    <= active_slot;
            lcd_bl    <= 1'b1;
            lcd_r     <= 5'd0;
            lcd_g     <= 6'd0;
            lcd_b     <= 5'd0;

            if (active_slot) begin
                if (first_active_pixel && !stream_locked) begin
                    if (s_tvalid && s_tready && s_tuser &&
                        (s_tlast == last_active_column)) begin
                        lcd_r <= s_tdata[15:11];
                        lcd_g <= s_tdata[10:5];
                        lcd_b <= s_tdata[4:0];
                        stream_locked <= !last_active_pixel;
                    end else begin
                        stream_locked        <= 1'b0;
                        lcd_underflow_sticky <= 1'b1;
                    end
                end else if (stream_locked) begin
                    if (s_tvalid && s_tready && !s_tuser &&
                        (s_tlast == last_active_column)) begin
                        lcd_r <= s_tdata[15:11];
                        lcd_g <= s_tdata[10:5];
                        lcd_b <= s_tdata[4:0];
                        if (last_active_pixel)
                            stream_locked <= 1'b0;
                    end else begin
                        stream_locked        <= 1'b0;
                        lcd_underflow_sticky <= 1'b1;
                    end
                end
            end

            if (h_count == (H_TOTAL - 1)) begin
                h_count <= '0;
                if (v_count == (V_TOTAL - 1))
                    v_count <= '0;
                else
                    v_count <= v_count + 1'b1;
            end else begin
                h_count <= h_count + 1'b1;
            end
        end
    end

endmodule
