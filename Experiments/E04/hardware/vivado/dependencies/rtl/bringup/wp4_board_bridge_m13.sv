`timescale 1ns/1ps

// Variable-size ROI board bridge: DMA -> M13 resize -> WP4 LBP pipeline.
// control[11:0]  feature address
// control[12]    histogram clear pulse (rising edge)
// control[20:13] input width minus one
// control[28:21] input height minus one
// control[29]    M13 configure pulse (rising edge)
module wp4_board_bridge_m13 (
    input  logic        aclk,
    input  logic        aresetn,
    input  logic        dma_tvalid,
    output logic        dma_tready,
    input  logic [7:0]  dma_tdata,
    input  logic        dma_tlast,
    input  logic [29:0] control,
    output logic [31:0] data_status,
    output logic [5:0]  flag_status
);

    logic control_clear_d, control_cfg_d;
    logic [8:0] input_width, input_height;
    logic [8:0] input_x, input_y;
    logic protocol_error_sticky, clear_done_sticky, hist_done_sticky;
    logic resize_done_sticky, resize_error_sticky;
    logic resize_cfg_ready, resize_ready, resize_valid, resize_out_ready;
    logic [7:0] resize_data;
    logic resize_user, resize_last, resize_done, resize_size_error;
    logic clear_done, hist_done, hist_total_error;
    logic [15:0] hist_total, rd_data;

    wire clear_pulse = control[12] && !control_clear_d;
    wire cfg_pulse = control[29] && !control_cfg_d;
    wire feature_addr_valid = (control[11:0] < 12'd3776);
    wire dma_fire = dma_tvalid && dma_tready;
    wire input_row_last = (input_x == input_width - 1'b1);
    wire input_final = input_row_last && (input_y == input_height - 1'b1);

    assign dma_tready = resize_ready;
    assign data_status = {hist_total, feature_addr_valid ? rd_data : 16'd0};
    assign flag_status = {
        resize_error_sticky,
        resize_done_sticky,
        protocol_error_sticky,
        hist_total_error,
        hist_done_sticky,
        clear_done_sticky
    };

    roi_resize_128 u_resize (
        .aclk(aclk),
        .aresetn(aresetn),
        .cfg_valid(cfg_pulse),
        .cfg_ready(resize_cfg_ready),
        .cfg_in_w({1'b0, control[20:13]} + 11'd1),
        .cfg_in_h({2'b0, control[28:21]} + 10'd1),
        .s_tvalid(dma_tvalid),
        .s_tready(resize_ready),
        .s_tdata(dma_tdata),
        .s_tuser((input_x == 0) && (input_y == 0)),
        .s_tlast(input_row_last),
        .m_tvalid(resize_valid),
        .m_tready(resize_out_ready),
        .m_tdata(resize_data),
        .m_tuser(resize_user),
        .m_tlast(resize_last),
        .done(resize_done),
        .size_error(resize_size_error)
    );

    wp4_lbp_pipeline u_pipeline (
        .aclk(aclk),
        .aresetn(aresetn),
        .clear(clear_pulse),
        .clear_done(clear_done),
        .s_tvalid(resize_valid),
        .s_tready(resize_out_ready),
        .s_tdata(resize_data),
        .s_tuser(resize_user),
        .s_tlast(resize_last),
        .hist_done(hist_done),
        .hist_total(hist_total),
        .hist_total_error(hist_total_error),
        .rd_en(1'b1),
        .rd_addr(feature_addr_valid ? control[11:0] : 12'd0),
        .rd_data(rd_data)
    );

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            control_clear_d       <= 1'b0;
            control_cfg_d         <= 1'b0;
            input_width           <= 9'd1;
            input_height          <= 9'd1;
            input_x               <= 0;
            input_y               <= 0;
            protocol_error_sticky <= 1'b0;
            clear_done_sticky     <= 1'b0;
            hist_done_sticky      <= 1'b0;
            resize_done_sticky    <= 1'b0;
            resize_error_sticky   <= 1'b0;
        end else begin
            control_clear_d <= control[12];
            control_cfg_d   <= control[29];
            if (clear_pulse) begin
                input_x               <= 0;
                input_y               <= 0;
                protocol_error_sticky <= 1'b0;
                clear_done_sticky     <= 1'b0;
                hist_done_sticky      <= 1'b0;
                resize_done_sticky    <= 1'b0;
                resize_error_sticky   <= 1'b0;
            end else begin
                if (cfg_pulse) begin
                    if (!resize_cfg_ready)
                        protocol_error_sticky <= 1'b1;
                    else begin
                        input_width  <= {1'b0, control[20:13]} + 9'd1;
                        input_height <= {1'b0, control[28:21]} + 9'd1;
                        input_x      <= 0;
                        input_y      <= 0;
                    end
                end
                if (!feature_addr_valid)
                    protocol_error_sticky <= 1'b1;
                if (clear_done)
                    clear_done_sticky <= 1'b1;
                if (hist_done)
                    hist_done_sticky <= 1'b1;
                if (resize_done)
                    resize_done_sticky <= 1'b1;
                if (resize_size_error)
                    resize_error_sticky <= 1'b1;
                if (dma_fire) begin
                    if (dma_tlast != input_final)
                        protocol_error_sticky <= 1'b1;
                    if (input_final) begin
                        input_x <= 0;
                        input_y <= 0;
                    end else if (input_row_last) begin
                        input_x <= 0;
                        input_y <= input_y + 1'b1;
                    end else begin
                        input_x <= input_x + 1'b1;
                    end
                end
            end
        end
    end
endmodule
