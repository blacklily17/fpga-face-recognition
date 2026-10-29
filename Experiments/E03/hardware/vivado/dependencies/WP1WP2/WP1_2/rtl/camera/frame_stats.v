`timescale 1ns / 1ps

// 功能描述: 视频帧健康度统计，记录总帧数、好帧、坏帧、溢出丢帧及最新故障码

module frame_stats (
    // 时钟与复位
    input  wire        cam_pclk,
    input  wire        cam_rst_n,

    // 前端 dvp_rx 状态输入
    input  wire        frame_done,        // 帧结束脉冲（整帧接收完毕拉高 1 拍）
    input  wire        frame_good,        // 正常好帧指示（高电平表示时序无误）
    input  wire [3:0]  frame_error,       // 故障编码：[3]=撕裂, [2]=行数错, [1]=行过长, [0]=行过短

    // 后级存储/FIFO 状态输入
    input  wire        fifo_overflow,     // 下游写入 FIFO 溢出脉冲（触发丢帧）

    // 统计寄存器输出（可直接挂接总线供 CPU 读取）
    output reg  [31:0] frames_seen,       // 累计接收总帧数
    output reg  [31:0] frames_good,       // 累计正常合格帧数
    output reg  [31:0] frames_bad,        // 累计前端时序损坏帧数
    output reg  [31:0] frames_dropped,    // 累计因 FIFO 溢出丢弃的帧数
    output reg  [31:0] last_error         // 最近一帧故障码：[4]=溢出, [3:0]=前端错误
);

    // 溢出粘滞锁存标志：整帧传输期间只要出现过溢出脉冲即置 1
    reg  overflow_seen;
    wire overflow_this_frame;
    assign overflow_this_frame = overflow_seen || fifo_overflow;

    // 主时序控制逻辑
    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            overflow_seen  <= 1'b0;
            frames_seen    <= 32'd0;
            frames_good    <= 32'd0;
            frames_bad     <= 32'd0;
            frames_dropped <= 32'd0;
            last_error     <= 32'd0;
        end 
        // 1. 帧结束结算时刻
        else if (frame_done) begin
            overflow_seen <= 1'b0;
            last_error    <= {27'd0, overflow_this_frame, frame_error};

            // 接收总帧数递增（饱和计数，防止溢出翻转）
            if (frames_seen != 32'hFFFF_FFFF)
                frames_seen <= frames_seen + 32'd1;

            // 互斥分流判定（优先级：溢出丢帧 > 损坏坏帧 > 正常好帧）
            if (overflow_this_frame) begin
                if (frames_dropped != 32'hFFFF_FFFF)
                    frames_dropped <= frames_dropped + 32'd1;
            end 
            else if (!frame_good || (frame_error != 4'd0)) begin
                if (frames_bad != 32'hFFFF_FFFF)
                    frames_bad <= frames_bad + 32'd1;
            end 
            else if (frames_good != 32'hFFFF_FFFF) begin
                frames_good <= frames_good + 32'd1;
            end
        end 
        // 2. 帧传输期间捕获瞬态溢出
        else if (fifo_overflow) begin
            overflow_seen <= 1'b1;
        end
    end

endmodule
