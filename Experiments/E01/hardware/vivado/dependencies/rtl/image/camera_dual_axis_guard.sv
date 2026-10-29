`timescale 1ns/1ps

// Converts the non-backpressurable M6 pixel stream into two coordinated AXIS
// FIFO write streams. If either branch cannot accept a valid pixel, neither
// branch accepts it and the remainder of the current frame is discarded.
module camera_dual_axis_guard (
    input  logic        cam_pclk,
    input  logic        cam_rst_n,
    input  logic        clear_overflow_sticky,

    input  logic        px_valid,
    input  logic [15:0] rgb565,
    input  logic [7:0]  gray8,
    input  logic        px_sof,
    input  logic        px_eol,
    input  logic        input_frame_bad_pulse,

    input  logic        rgb_fifo_ready,
    input  logic        gray_fifo_ready,
    input  logic        rgb_fifo_prog_full,
    input  logic        gray_fifo_prog_full,

    output logic        rgb_fifo_valid,
    output logic [15:0] rgb_fifo_data,
    output logic        rgb_fifo_user,
    output logic        rgb_fifo_last,
    output logic        gray_fifo_valid,
    output logic [7:0]  gray_fifo_data,
    output logic        gray_fifo_user,
    output logic        gray_fifo_last,

    input  logic        abort_ack_toggle_sync,
    output logic        abort_req_toggle,
    output logic        fifo_overflow_pulse,
    output logic        fifo_overflow_sticky,
    output logic        dropping_frame
);
    localparam logic [1:0] WAIT_SOF = 2'd0;
    localparam logic [1:0] FORWARD  = 2'd1;
    localparam logic [1:0] DROP     = 2'd2;

    logic [1:0] state;
    wire capacity_ok = rgb_fifo_ready && gray_fifo_ready
                     && !rgb_fifo_prog_full && !gray_fifo_prog_full;
    wire abort_pending = (abort_req_toggle != abort_ack_toggle_sync);
    wire can_open_frame = px_sof && !abort_pending && capacity_ok;
    wire forward_pixel = px_valid &&
                         ((state == FORWARD && capacity_ok) ||
                          (state != FORWARD && can_open_frame));

    always_comb begin
        rgb_fifo_valid  = forward_pixel;
        rgb_fifo_data   = rgb565;
        rgb_fifo_user   = px_sof;
        rgb_fifo_last   = px_eol;
        gray_fifo_valid = forward_pixel;
        gray_fifo_data  = gray8;
        gray_fifo_user  = px_sof;
        gray_fifo_last  = px_eol;
        dropping_frame  = (state == DROP);
    end

    always_ff @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            state <= WAIT_SOF;
            abort_req_toggle <= 1'b0;
            fifo_overflow_pulse <= 1'b0;
            fifo_overflow_sticky <= 1'b0;
        end else begin
            fifo_overflow_pulse <= 1'b0;
            if (clear_overflow_sticky)
                fifo_overflow_sticky <= 1'b0;

            // WP2 may discover a structural DVP error only at frame end,
            // after a prefix has already entered the FIFOs/VDMA candidate.
            // Use the same acknowledged abort channel as a capacity failure,
            // but keep FIFO-overflow diagnostics specific to capacity loss.
            if (input_frame_bad_pulse) begin
                state <= DROP;
                // A later frame-end verdict may repeat an error that was
                // already reported at the offending line boundary.
                if ((state != DROP) && !abort_pending)
                    abort_req_toggle <= ~abort_req_toggle;
            end else if (px_valid) begin
                case (state)
                    WAIT_SOF: begin
                        if (px_sof) begin
                            if (capacity_ok && !abort_pending) begin
                                state <= FORWARD;
                            end else if (!abort_pending) begin
                                state <= DROP;
                                abort_req_toggle <= ~abort_req_toggle;
                                fifo_overflow_pulse <= 1'b1;
                                fifo_overflow_sticky <= 1'b1;
                            end else begin
                                state <= DROP;
                            end
                        end
                    end

                    FORWARD: begin
                        if (!capacity_ok) begin
                            state <= DROP;
                            if (!abort_pending) begin
                                abort_req_toggle <= ~abort_req_toggle;
                                fifo_overflow_pulse <= 1'b1;
                                fifo_overflow_sticky <= 1'b1;
                            end
                        end
                    end

                    default: begin // DROP
                        if (px_sof && !abort_pending) begin
                            if (capacity_ok) begin
                                state <= FORWARD;
                            end else begin
                                abort_req_toggle <= ~abort_req_toggle;
                                fifo_overflow_pulse <= 1'b1;
                                fifo_overflow_sticky <= 1'b1;
                            end
                        end
                    end
                endcase
            end
        end
    end

endmodule
