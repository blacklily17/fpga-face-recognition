`timescale 1ns/1ps
// One reusable C16 M14, legacy fused pools and independent 32x32x16 pool.
// Full-frame conv jobs: 32x32x(1|16) -> 30x30x16; pool: 32x32x16 -> 16x16x16.
// This is the datapath/control core; an AXI-Lite register slave is not included.
// S2MM must be armed before sending MM2S. done waits for BOTH final conv input
// to pool and final DMA output handshake, including the discarded 13th row.
module cnn_layer_axis (
    input wire aclk, aresetn, abort_job,
    input wire start, layer2, fullframe, pool_only,
    input wire [5:0] shift,
    output wire start_ready, busy,
    output reg done, error,
    input wire w_we, b_we,
    input wire [15:0] w_addr,
    input wire [7:0] b_addr,
    input wire [31:0] w_data, b_data,
    input wire [31:0] s_tdata,
    input wire [3:0] s_tkeep,
    input wire s_tvalid, s_tlast,
    output wire s_tready,
    output reg [31:0] m_tdata,
    output wire [3:0] m_tkeep,
    output reg m_tvalid, m_tlast,
    input wire m_tready
);
    localparam IDLE=0, RESET_CORE=1, CONFIG=2, RUN=3, FAULT=4;
    reg [2:0] state;
    reg layer_r, full_r, pool_r;
    reg [5:0] shift_r;
    wire core_resetn = aresetn && !abort_job && state != RESET_CORE && state != FAULT;
    assign start_ready = state == IDLE && aresetn && !abort_job;
    assign busy = state != IDLE;
    wire valid_write = state == IDLE && !start;
    wire bad_write = (w_we && (!valid_write || w_addr >= 576)) ||
                     (b_we && (!valid_write || b_addr >= 16));

    reg [31:0] unpack;
    reg unpack_valid;
    reg [1:0] in_lane;
    reg [12:0] in_words;
    wire [12:0] expected_words = full_r ? ((pool_r || layer_r) ? 13'd4096 : 13'd256) : (layer_r ? 13'd450 : 13'd256);
    assign s_tready = state == RUN && !unpack_valid && in_words < expected_words;
    wire cv_s_ready, cv_valid, cv_ready, cv_user, cv_last, cv_done, cv_overflow, cfg_ready;
    wire [7:0] cv_data;
    wire cv_s_valid = state == RUN && unpack_valid && !(full_r && pool_r);
    wire [7:0] cv_s_data = unpack[8*in_lane +: 8];
    wire p1_ready, p2_ready, p1_valid, p2_valid, p16_ready, p16_valid;
    wire pixel_ready = full_r && pool_r ? p16_ready : cv_s_ready;
    wire [7:0] p16_data;
    wire [7:0] p1_data, p2_data;
    wire pooled_valid = full_r ? (pool_r ? p16_valid : cv_valid) : (layer_r ? p2_valid : p1_valid);
    wire [7:0] pooled_data = full_r ? (pool_r ? p16_data : cv_data) : (layer_r ? p2_data : p1_data);
    reg [14:0] out_bytes;
    wire [14:0] expected_bytes = full_r ? (pool_r ? 15'd4096 : 15'd14400) : (layer_r ? 15'd288 : 15'd1800);
    wire pooled_ready = state == RUN && !m_tvalid && out_bytes < expected_bytes;
    assign cv_ready = full_r ? (!pool_r && pooled_ready) : (layer_r ? p2_ready : p1_ready);
    assign m_tkeep = 4'hf;
    reg [23:0] pack;
    reg [1:0] out_lane;
    reg conv_seen, output_seen;
    wire final_output = m_tvalid && m_tready && m_tlast;

    conv3x3_int8 #(.MAX_W(32), .MAX_H(32), .MAX_IN_CH(16), .MAX_OUT_CH(16), .PAR_MUL(2)) conv_core (
        .aclk(aclk), .aresetn(core_resetn), .cfg_valid(state == CONFIG), .cfg_ready(cfg_ready),
        .cfg_w(!full_r && layer_r ? 16'd15 : 16'd32), .cfg_h(!full_r && layer_r ? 16'd15 : 16'd32),
        .cfg_in_ch(full_r ? (layer_r ? 8'd16 : 8'd1) : (layer_r ? 8'd8 : 8'd1)), .cfg_out_ch(full_r ? 8'd16 : 8'd8), .cfg_stride(2'd1),
        .cfg_shift(shift_r), .cfg_relu(1'b1),
        .w_we(w_we && valid_write && w_addr < 576), .w_addr(w_addr), .w_data(w_data),
        .b_we(b_we && valid_write && b_addr < 16), .b_addr(b_addr), .b_data(b_data),
        .s_tvalid(cv_s_valid), .s_tready(cv_s_ready), .s_tdata(cv_s_data),
        .s_tuser(1'b0), .s_tlast(1'b0), .m_tvalid(cv_valid), .m_tready(cv_ready),
        .m_tdata(cv_data), .m_tuser(cv_user), .m_tlast(cv_last), .done(cv_done), .overflow(cv_overflow)
    );
    maxpool2x2 #(.IMG_W(30), .IMG_H(30), .CH(8)) pool1 (
        .aclk(aclk), .aresetn(core_resetn), .s_tvalid(cv_valid && !full_r && !layer_r), .s_tready(p1_ready),
        .s_tdata(cv_data), .s_tuser(cv_user), .s_tlast(cv_last),
        .m_tvalid(p1_valid), .m_tready(pooled_ready && !full_r && !layer_r), .m_tdata(p1_data), .m_tuser(), .m_tlast()
    );
    maxpool2x2 #(.IMG_W(13), .IMG_H(13), .CH(8)) pool2 (
        .aclk(aclk), .aresetn(core_resetn), .s_tvalid(cv_valid && !full_r && layer_r), .s_tready(p2_ready),
        .s_tdata(cv_data), .s_tuser(cv_user), .s_tlast(cv_last),
        .m_tvalid(p2_valid), .m_tready(pooled_ready && !full_r && layer_r), .m_tdata(p2_data), .m_tuser(), .m_tlast()
    );

    // Independent signed pool job, preserving global even/odd phase in PS tiling.
    maxpool2x2 #(.IMG_W(32), .IMG_H(32), .CH(16)) pool16 (
        .aclk(aclk), .aresetn(core_resetn),
        .s_tvalid(state == RUN && unpack_valid && full_r && pool_r), .s_tready(p16_ready),
        .s_tdata(cv_s_data), .s_tuser(1'b0), .s_tlast(1'b0),
        .m_tvalid(p16_valid), .m_tready(pooled_ready && full_r && pool_r),
        .m_tdata(p16_data), .m_tuser(), .m_tlast()
    );

    always @(posedge aclk) begin
        if (!aresetn || abort_job) begin
            state <= IDLE; layer_r <= 0; full_r <= 0; pool_r <= 0; shift_r <= 0;
            done <= 0; error <= 0;
            unpack <= 0; unpack_valid <= 0; in_lane <= 0; in_words <= 0;
            pack <= 0; out_lane <= 0; out_bytes <= 0;
            m_tdata <= 0; m_tvalid <= 0; m_tlast <= 0;
            conv_seen <= 0; output_seen <= 0;
        end else if (bad_write) begin
            state <= FAULT; error <= 1; done <= 0; m_tvalid <= 0; unpack_valid <= 0;
        end else begin
            case (state)
                IDLE: if (start) begin
                    state <= RESET_CORE; layer_r <= layer2; full_r <= fullframe; pool_r <= pool_only; shift_r <= shift;
                    done <= 0; error <= 0; unpack_valid <= 0; in_lane <= 0; in_words <= 0;
                    pack <= 0; out_lane <= 0; out_bytes <= 0;
                    m_tvalid <= 0; m_tlast <= 0; conv_seen <= 0; output_seen <= 0;
                end
                RESET_CORE: state <= full_r && pool_r ? RUN : CONFIG;
                CONFIG: if (cfg_ready) state <= RUN;
                RUN: begin
                    if (s_tvalid && s_tready) begin
                        if (s_tkeep != 4'hf || s_tlast != (in_words == expected_words-1)) begin
                            state <= FAULT; error <= 1; m_tvalid <= 0; unpack_valid <= 0;
                        end else begin
                            unpack <= s_tdata; unpack_valid <= 1; in_lane <= 0; in_words <= in_words+1'b1;
                        end
                    end
                    if (state == RUN && unpack_valid && pixel_ready) begin
                        if (full_r && pool_r && in_words == expected_words && in_lane == 3) conv_seen <= 1;
                        if (in_lane == 3) begin unpack_valid <= 0; in_lane <= 0; end
                        else in_lane <= in_lane+1'b1;
                    end
                    if (m_tvalid && m_tready) m_tvalid <= 0;
                    if (pooled_valid && pooled_ready) begin
                        out_bytes <= out_bytes+1'b1;
                        if (out_lane == 3) begin
                            m_tdata <= {pooled_data, pack}; m_tvalid <= 1;
                            m_tlast <= out_bytes == expected_bytes-1;
                            out_lane <= 0;
                        end else begin
                            pack[8*out_lane +: 8] <= pooled_data;
                            out_lane <= out_lane+1'b1;
                        end
                    end
                    if (cv_done) conv_seen <= 1;
                    if (final_output) output_seen <= 1;
                    if ((conv_seen || cv_done) && (output_seen || final_output)) begin
                        state <= IDLE; done <= 1;
                    end
                    if (cv_overflow) begin state <= FAULT; error <= 1; m_tvalid <= 0; end
                end
                FAULT: begin m_tvalid <= 0; unpack_valid <= 0; end
                default: begin state <= FAULT; error <= 1; end
            endcase
        end
    end
endmodule
