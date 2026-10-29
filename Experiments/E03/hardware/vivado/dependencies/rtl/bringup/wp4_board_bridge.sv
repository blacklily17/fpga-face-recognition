`timescale 1ns/1ps

// Board-facing wrapper for the WP4 LBP core. AXI DMA supplies one linear
// 128x128-byte packet; this wrapper recreates SOF and per-row TLAST markers.
// A pair of AXI GPIO blocks provide PS control/readback without introducing a
// custom AXI slave into the first board bring-up.
module wp4_board_bridge (
    input  logic        aclk,
    input  logic        aresetn,

    input  logic        dma_tvalid,
    output logic        dma_tready,
    input  logic [7:0]  dma_tdata,
    input  logic        dma_tlast,

    input  logic [12:0] control,
    output logic [31:0] data_status,
    output logic [3:0]  flag_status
);

    logic control_clear_d;
    logic [6:0] pixel_x;
    logic [6:0] pixel_y;
    logic protocol_error_sticky;
    logic clear_done_sticky;
    logic hist_done_sticky;

    logic pipe_ready;
    logic clear_done;
    logic hist_done;
    logic [15:0] hist_total;
    logic hist_total_error;
    logic [15:0] rd_data;

    wire clear_pulse = control[12] && !control_clear_d;
    wire feature_addr_valid = (control[11:0] < 12'd3776);
    wire dma_fire = dma_tvalid && dma_tready;
    wire frame_last = (pixel_x == 7'd127) && (pixel_y == 7'd127);

    assign dma_tready = pipe_ready;
    // The GPIO exposes a 12-bit selector (0..4095), while the frozen WP4
    // feature vector contains only 3776 entries.  Clamp invalid selections
    // before the BRAM port, return a deterministic zero and flag the access.
    assign data_status = {hist_total, feature_addr_valid ? rd_data : 16'd0};
    assign flag_status = {
        protocol_error_sticky,
        hist_total_error,
        hist_done_sticky,
        clear_done_sticky
    };

    wp4_lbp_pipeline u_pipeline (
        .aclk(aclk),
        .aresetn(aresetn),
        .clear(clear_pulse),
        .clear_done(clear_done),
        .s_tvalid(dma_tvalid),
        .s_tready(pipe_ready),
        .s_tdata(dma_tdata),
        .s_tuser((pixel_x == 0) && (pixel_y == 0)),
        .s_tlast(pixel_x == 7'd127),
        .hist_done(hist_done),
        .hist_total(hist_total),
        .hist_total_error(hist_total_error),
        .rd_en(1'b1),
        .rd_addr(feature_addr_valid ? control[11:0] : 12'd0),
        .rd_data(rd_data)
    );

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            control_clear_d      <= 1'b0;
            pixel_x              <= '0;
            pixel_y              <= '0;
            protocol_error_sticky <= 1'b0;
            clear_done_sticky    <= 1'b0;
            hist_done_sticky     <= 1'b0;
        end else begin
            control_clear_d <= control[12];

            if (clear_pulse) begin
                pixel_x               <= '0;
                pixel_y               <= '0;
                protocol_error_sticky <= 1'b0;
                clear_done_sticky     <= 1'b0;
                hist_done_sticky      <= 1'b0;
            end else begin
                if (!feature_addr_valid)
                    protocol_error_sticky <= 1'b1;
                if (clear_done)
                    clear_done_sticky <= 1'b1;
                if (hist_done)
                    hist_done_sticky <= 1'b1;

                if (dma_fire) begin
                    if (dma_tlast != frame_last)
                        protocol_error_sticky <= 1'b1;
                    if (frame_last) begin
                        pixel_x <= '0;
                        pixel_y <= '0;
                    end else if (pixel_x == 7'd127) begin
                        pixel_x <= '0;
                        pixel_y <= pixel_y + 1'b1;
                    end else begin
                        pixel_x <= pixel_x + 1'b1;
                    end
                end
            end
        end
    end

endmodule
