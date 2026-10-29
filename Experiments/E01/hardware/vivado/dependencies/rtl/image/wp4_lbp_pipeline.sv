`timescale 1ns/1ps

module wp4_lbp_pipeline (
    input  logic        aclk,
    input  logic        aresetn,
    input  logic        clear,
    output logic        clear_done,
    input  logic        s_tvalid,
    output logic        s_tready,
    input  logic [7:0]  s_tdata,
    input  logic        s_tuser,
    input  logic        s_tlast,
    output logic        hist_done,
    output logic [15:0] hist_total,
    output logic        hist_total_error,
    input  logic        rd_en,
    input  logic [11:0] rd_addr,
    output logic [15:0] rd_data
);

    logic       win_valid;
    logic       win_ready;
    logic [7:0] win_p [0:8];
    logic [6:0] win_x;
    logic [6:0] win_y;
    logic       win_last;
    logic [7:0] lbp_code;

    window3x3 u_window (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_tvalid(s_tvalid),
        .s_tready(s_tready),
        .s_tdata(s_tdata),
        .s_tuser(s_tuser),
        .s_tlast(s_tlast),
        .win_valid(win_valid),
        .win_ready(win_ready),
        .win_p(win_p),
        .win_x(win_x),
        .win_y(win_y),
        .win_last(win_last)
    );

    lbp_core u_lbp (
        .win_p(win_p),
        .lbp_code(lbp_code)
    );

    lbp_histogram u_histogram (
        .aclk(aclk),
        .aresetn(aresetn),
        .clear(clear),
        .clear_done(clear_done),
        .lbp_valid(win_valid),
        .lbp_ready(win_ready),
        .lbp_code(lbp_code),
        .lbp_x(win_x),
        .lbp_y(win_y),
        .lbp_last(win_last),
        .hist_done(hist_done),
        .hist_total(hist_total),
        .hist_total_error(hist_total_error),
        .rd_en(rd_en),
        .rd_addr(rd_addr),
        .rd_data(rd_data)
    );

endmodule
