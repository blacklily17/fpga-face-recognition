`timescale 1ns/1ps

module window3x3 #(
    parameter integer IMG_W = 128,
    parameter integer IMG_H = 128
) (
    input  logic       aclk,
    input  logic       aresetn,
    input  logic       s_tvalid,
    output logic       s_tready,
    input  logic [7:0] s_tdata,
    input  logic       s_tuser,
    input  logic       s_tlast,
    output logic       win_valid,
    input  logic       win_ready,
    output logic [7:0] win_p [0:8],
    output logic [6:0] win_x,
    output logic [6:0] win_y,
    output logic       win_last
);

    localparam integer X_W = (IMG_W <= 2) ? 1 : $clog2(IMG_W);
    localparam integer Y_W = (IMG_H <= 2) ? 1 : $clog2(IMG_H);

    logic [7:0] prev_row  [0:IMG_W-1];
    logic [7:0] prev2_row [0:IMG_W-1];

    logic [7:0] top_m2, top_m1;
    logic [7:0] mid_m2, mid_m1;
    logic [7:0] bot_m2, bot_m1;
    logic [X_W-1:0] x_count;
    logic [Y_W-1:0] y_count;

    wire [X_W-1:0] cur_x = s_tuser ? {X_W{1'b0}} : x_count;
    wire [Y_W-1:0] cur_y = s_tuser ? {Y_W{1'b0}} : y_count;
    wire input_fire = s_tvalid && s_tready;

    // One-entry elastic output register. When it is stalled, all line-buffer
    // state and input coordinates freeze with the input stream.
    assign s_tready = ~win_valid | win_ready;

    initial begin
        if ((IMG_W < 3) || (IMG_H < 3) || (IMG_W > 128) || (IMG_H > 128))
            $error("window3x3 requires IMG_W/IMG_H in range 3..128");
    end

    // No reset on row memories, allowing RAM inference. Before a location is
    // read for an output window it has already been written by two full rows.
    always_ff @(posedge aclk) begin
        if (aresetn && input_fire) begin
            prev2_row[cur_x] <= prev_row[cur_x];
            prev_row[cur_x]  <= s_tdata;
        end
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            top_m2   <= '0;
            top_m1   <= '0;
            mid_m2   <= '0;
            mid_m1   <= '0;
            bot_m2   <= '0;
            bot_m1   <= '0;
            x_count  <= '0;
            y_count  <= '0;
            win_valid <= 1'b0;
            win_x    <= '0;
            win_y    <= '0;
            win_last <= 1'b0;
            win_p[0] <= '0;
            win_p[1] <= '0;
            win_p[2] <= '0;
            win_p[3] <= '0;
            win_p[4] <= '0;
            win_p[5] <= '0;
            win_p[6] <= '0;
            win_p[7] <= '0;
            win_p[8] <= '0;
        end else begin
            if (win_valid && win_ready)
                win_valid <= 1'b0;

            if (input_fire) begin
                top_m2 <= top_m1;
                top_m1 <= prev2_row[cur_x];
                mid_m2 <= mid_m1;
                mid_m1 <= prev_row[cur_x];
                bot_m2 <= bot_m1;
                bot_m1 <= s_tdata;

                if ((cur_x >= 2) && (cur_y >= 2)) begin
                    win_p[0] <= top_m2;
                    win_p[1] <= top_m1;
                    win_p[2] <= prev2_row[cur_x];
                    win_p[3] <= prev_row[cur_x];
                    win_p[4] <= s_tdata;
                    win_p[5] <= bot_m1;
                    win_p[6] <= bot_m2;
                    win_p[7] <= mid_m2;
                    win_p[8] <= mid_m1;
                    win_x    <= cur_x - 2;
                    win_y    <= cur_y - 2;
                    win_last <= (cur_x == IMG_W-1) && (cur_y == IMG_H-1);
                    win_valid <= 1'b1;
                end

                if (s_tlast) begin
                    x_count <= '0;
                    if (cur_y == IMG_H-1)
                        y_count <= '0;
                    else
                        y_count <= cur_y + 1'b1;
                end else begin
                    x_count <= cur_x + 1'b1;
                    y_count <= cur_y;
                end
            end
        end
    end

endmodule
