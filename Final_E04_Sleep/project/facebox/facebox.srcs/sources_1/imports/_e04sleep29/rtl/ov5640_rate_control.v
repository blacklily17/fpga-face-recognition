`timescale 1ns/1ps
// 初始化完成后独占 SCCB；只改变 VTS，不改变像素格式、窗口或白平衡。
module ov5640_rate_control #(
    parameter [15:0] FAST_VTS = 16'h0321,
    parameter [15:0] SLOW_VTS = 16'h12c6,
    parameter [31:0] SETTLE_CYCLES = 32'd20000000,
    parameter [31:0] TIMEOUT_CYCLES = 32'd35000000
)(
    input wire clk, rst_n, init_done, slow_request,
    output wire cmd_valid,
    input wire cmd_ready,
    output wire cmd_read,
    output reg [15:0] reg_addr,
    output reg [7:0] wr_data,
    input wire rsp_valid,
    input wire [7:0] rd_data,
    input wire nack, timeout,
    output reg slow_applied, busy, fault
);
    (* ASYNC_REG = "TRUE" *) reg slow_meta, slow_sync;
    reg target_slow, waiting, settling;
    reg [2:0] index;
    reg [31:0] age, settle_count;
    wire [15:0] target_vts;
    assign target_vts = target_slow ? SLOW_VTS : FAST_VTS;
    assign cmd_valid = busy && !waiting && !settling && !fault;
    assign cmd_read = index >= 3'd5;
    always @* begin
        reg_addr = 16'h3212;
        wr_data = 8'h00;
        case (index)
            3'd0: wr_data = 8'h03;
            3'd1: begin reg_addr = 16'h380e; wr_data = target_vts[15:8]; end
            3'd2: begin reg_addr = 16'h380f; wr_data = target_vts[7:0]; end
            3'd3: wr_data = 8'h13;
            3'd4: wr_data = 8'ha3;
            3'd5: reg_addr = 16'h380e;
            3'd6: reg_addr = 16'h380f;
            default: begin reg_addr = 16'h3212; wr_data = 8'h00; end
        endcase
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            slow_meta <= 1'b0; slow_sync <= 1'b0;
            target_slow <= 1'b0; waiting <= 1'b0; settling <= 1'b0;
            index <= 3'd0; age <= 32'd0; settle_count <= 32'd0;
            slow_applied <= 1'b0; busy <= 1'b0; fault <= 1'b0;
        end else begin
            slow_meta <= slow_request; slow_sync <= slow_meta;
            if (!busy && !fault && init_done && slow_sync != slow_applied) begin
                target_slow <= slow_sync; busy <= 1'b1; waiting <= 1'b0;
                settling <= 1'b0; index <= 3'd0; age <= 32'd0;
                settle_count <= 32'd0;
            end else if (busy && !fault) begin
                age <= age + 32'd1;
                if (age >= TIMEOUT_CYCLES - 32'd1) begin
                    fault <= 1'b1; busy <= 1'b0; waiting <= 1'b0;
                end else if (settling) begin
                    if (settle_count >= SETTLE_CYCLES - 32'd1) begin
                        settling <= 1'b0; settle_count <= 32'd0;
                    end else settle_count <= settle_count + 32'd1;
                end else if (cmd_valid && cmd_ready) waiting <= 1'b1;
                else if (waiting && rsp_valid) begin
                    waiting <= 1'b0;
                    if (nack || timeout ||
                        (index == 3'd5 && rd_data != target_vts[15:8]) ||
                        (index == 3'd6 && rd_data != target_vts[7:0])) begin
                        fault <= 1'b1; busy <= 1'b0;
                    end else if (index == 3'd6) begin
                        slow_applied <= target_slow; busy <= 1'b0;
                    end else begin
                        index <= index + 3'd1;
                        if (index == 3'd4) settling <= 1'b1;
                    end
                end
            end
        end
    end
endmodule
