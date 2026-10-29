`timescale 1ns / 1ps

// 模块名称: dvp_rx
// 功能描述: DVP 物理接口数据捕获、像素坐标标定 (X, Y) 与硬件安检质检
// 核心职责:
//   1. 信号清洗: 过滤消隐期杂波，生成单拍对齐的 raw_sof(帧首) 与 raw_eol(行尾)
//   2. 坐标打标: 为每个有效字节标定 raw_byte_x(0~1599) 与 raw_y(0~479)
//   3. 故障自愈: 严查缺字节、多字节、缺行与场撕裂，防止异常扩散至下游


module dvp_rx #(
    parameter integer ACTIVE_W        = 800, // 图像有效宽度（像素数）
    parameter integer ACTIVE_H        = 480, // 图像有效高度（行数）
    parameter integer BYTES_PER_PIXEL = 2    // 每个像素占用的字节数 (RGB565 为 2 字节)
) (
    // ===== 摄像头物理接口 (引脚直接输入) =====
    input  wire        cam_pclk,             // 像素时钟 (由摄像头晶振/PLL输出)
    input  wire        cam_rst_n,            // 异步复位信号，低电平有效
    input  wire        cam_vsync,            // 场同步信号 (高电平: 场消隐期; 低电平: 图像有效传输期)
    input  wire        cam_href,             // 行参考信号 (高电平: 当前行数据有效)
    input  wire [7:0]  cam_data,             // 8-bit 并行数据输入

    // ===== 坐标与清洗后的数据流 (输出至解包/下游) 
    output reg         raw_valid,            // 单字节数据有效标志 (高有效)
    output reg  [7:0]  raw_data,             // 锁存输出的当前字节数据
    output reg         raw_sof,              // 帧起始指示 (整帧仅在第 0 行第 0 字节拉高 1 拍)
    output reg         raw_eol,              // 行结束指示 (每行最后一个有效字节拉高 1 拍)
    output reg  [10:0] raw_byte_x,           // 当前字节水平坐标 (0 ~ LINE_BYTES - 1)
    output reg  [8:0]  raw_y,                // 当前像素垂直坐标 (0 ~ ACTIVE_H - 1)

    //  单帧健康状态与错误监控输出 
    output reg         frame_done,           // 帧结算脉冲 (整帧接收结束时拉高 1 拍)
    output reg         frame_good,           // 正常帧指示 (本帧完全合规无错时拉高 1 拍)
    output reg  [3:0]  frame_error           // 错误类型掩码 [Bit3:场撕裂, Bit2:行数错, Bit1:行过长, Bit0:行过短]
);

    // 计算一行总字节数 (800*2 = 1600) 与整帧总行数 (480)
    localparam [10:0] LINE_BYTES  = ACTIVE_W[10:0] * BYTES_PER_PIXEL[10:0];
    localparam [9:0]  FRAME_LINES = ACTIVE_H[9:0];

    //  内部状态控制与计数寄存器 
    reg        vsync_d;       // VSYNC 打一拍，用于边沿检测
    reg        href_d;        // HREF 打一拍，用于边沿检测
    reg        sync_seen;     // 门禁锁: 开机后必须先捕获一次 VSYNC=1 (场消隐)，杜绝"吃半帧"
    reg        frame_open;    // 帧大门: 1 表示当前处于合法帧接收窗口内
    reg        in_line;       // 行状态: 1 表示当前正在接收一行
    reg        first_seen;    // 帧头标志: 确保 raw_sof 全帧仅产生一次单拍脉冲
    reg [10:0] line_count;    // 行内字节计数器 (0 ~ LINE_BYTES)
    reg [9:0]  row_count;     // 垂直行计数器 (0 ~ FRAME_LINES)
    reg [3:0]  error_acc;     // 粘性错误累加器 (整帧期间只要发生错误即锁存保持)

    //  边沿与状态使能连线 
    wire vsync_rise;          // VSYNC 上升沿 (整帧结束)
    wire vsync_fall;          // VSYNC 下降沿 (新帧开始)
    wire href_rise;           // HREF 上升沿 (新行开始)
    wire href_fall;           // HREF 下降沿 (当前行结束)
    wire line_start;          // 满足条件的合法行起始
    wire line_end;            // 满足条件的合法行结束
    wire data_cycle;          // 行内有效传输时钟周期

    // ===== 四维硬件错误实时检测 =====
    wire extra_byte;          // 行过长: 字节数已达标，但 HREF 仍处于高电平继续发数
    wire short_line;          // 行过短: 字节数不足 1600，HREF 就提前跌落
    wire extra_row;           // 行数过多: 已满 480 行，外部又发起了新行
    wire wrong_rows;          // 行数不符: 整帧结束时，累计接收行数不等于 480 行
    wire sync_fault;          // 场撕裂: 行数据还在传输中，VSYNC 突然拉高暴力截断
    wire [3:0] error_now;     // 当前拍实时汇总的综合错误码

    // 边沿捕获逻辑 (前一拍与当前拍比较)
    assign vsync_rise = cam_vsync && !vsync_d;
    assign vsync_fall = !cam_vsync && vsync_d;
    assign href_rise  = cam_href && !href_d;
    assign href_fall  = !cam_href && href_d;

    // 门控逻辑: 仅在帧大门打开且无消隐干扰时判定行列
    assign line_start = frame_open && !cam_vsync && !vsync_fall && !in_line && href_rise;
    assign line_end   = frame_open && in_line && href_fall;
    assign data_cycle = frame_open && !cam_vsync && !vsync_fall && in_line && cam_href;

    // 故障触发条件判定
    assign extra_byte = data_cycle && (line_count == LINE_BYTES);
    assign short_line = line_end && (line_count < LINE_BYTES);
    assign extra_row  = line_start && (row_count >= FRAME_LINES);

    // 行数校验: 若最后一行与 VSYNC 上升沿同拍到来，动态调整对比基准为 FRAME_LINES - 1
    assign wrong_rows = vsync_rise && frame_open &&
                        (line_end ? (row_count != FRAME_LINES - 10'd1) :
                                    (row_count != FRAME_LINES));
    assign sync_fault = vsync_rise && frame_open && cam_href;

    // 将历史粘性错误与当前拍检测到的错误按位或合并
    assign error_now  = error_acc | {sync_fault, (extra_row || wrong_rows), extra_byte, short_line};

    // 编译期/仿真期参数范围自检，防止位宽溢出导致计数器翻转
    initial begin
        if ((ACTIVE_W < 1) || (ACTIVE_H < 1) ||
            (BYTES_PER_PIXEL != 2) || (ACTIVE_W * BYTES_PER_PIXEL > 2048) ||
            (ACTIVE_H > 512)) begin
            $display("ERROR: dvp_rx parameter out of range!");
            $finish;
        end
    end

   
    // 主时序处理逻辑 (posedge cam_pclk)
    
    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            // 异步复位: 所有状态、计数器及输出信号完全清零
            vsync_d     <= 1'b0;
            href_d      <= 1'b0;
            sync_seen   <= 1'b0;
            frame_open  <= 1'b0;
            in_line     <= 1'b0;
            first_seen  <= 1'b0;
            line_count  <= 11'd0;
            row_count   <= 10'd0;
            error_acc   <= 4'd0;
            raw_valid   <= 1'b0;
            raw_data    <= 8'd0;
            raw_sof     <= 1'b0;
            raw_eol     <= 1'b0;
            raw_byte_x  <= 11'd0;
            raw_y       <= 9'd0;
            frame_done  <= 1'b0;
            frame_good  <= 1'b0;
            frame_error <= 4'd0;
        end else begin
            // 1. 输入信号打拍 (用于提取边沿)
            vsync_d     <= cam_vsync;
            href_d      <= cam_href;

            // 2. 单拍指示脉冲默认拉低 (避免锁死为高)
            raw_valid   <= 1'b0;
            raw_sof     <= 1'b0;
            raw_eol     <= 1'b0;
            frame_done  <= 1'b0;
            frame_good  <= 1'b0;

            // 3. 门禁解锁: 只要外部出现过一次场消隐 (VSYNC=1)，即允许接收下一有效帧
            if (cam_vsync)
                sync_seen <= 1'b1;

            // 阶段 1: 帧起始检测 (VSYNC 跌落，开启新一帧)
        
            if (vsync_fall && sync_seen) begin
                frame_open <= 1'b1;     // 打开帧大门
                in_line    <= 1'b0;
                first_seen <= 1'b0;     // 复位帧首标志
                line_count <= 11'd0;    // 清零行内计数
                row_count  <= 10'd0;    // 清零行号
                error_acc  <= 4'd0;     // 清零错误累加器
            end 
       
            // 阶段 2: 帧结束结算 (VSYNC 上升沿拉高，关门结算)
       
            else if (vsync_rise) begin
                if (frame_open) begin
                    frame_done  <= 1'b1;                 // 产生帧结束脉冲
                    frame_error <= error_now;             // 锁存整帧最终错误码
                    frame_good  <= (error_now == 4'd0);   // 无任何错误则判定为良品帧
                    
                    // 异常自愈: 帧结束时若还有残缺行未收完，强制补发 EOL 促使下游解包状态机复位
                    if (line_end && short_line)
                        raw_eol <= 1'b1;
                    else if (in_line && cam_href)
                        raw_eol <= 1'b1;
                end
                frame_open <= 1'b0;                      // 关闭帧大门
                in_line    <= 1'b0;
                error_acc  <= error_now;

                // 若最后一行与 VSYNC 上升沿同拍结束，行计数器补加 1
                if (line_end && (row_count < FRAME_LINES + 10'd1))
                    row_count <= row_count + 10'd1;
            end 
      
            // 阶段 3: 行数据处理与坐标打标 (处于有效帧内且非消隐期)
        
            else if (frame_open && !cam_vsync) begin
                error_acc <= error_now;                  // 实时吸附出现的故障

                // 3.1 行结束 (HREF 跌落)
                if (line_end) begin
                    in_line <= 1'b0;
                    if (short_line)
                        raw_eol <= 1'b1;                 // 行过短时强制补发 EOL，丢弃下游拼了一半的残缺像素
                    if (row_count < FRAME_LINES + 10'd1)
                        row_count <= row_count + 10'd1;  // 行号自增
                end 
                // 3.2 行开始 (HREF 跃起的第 1 个周期)
                else if (line_start) begin
                    in_line    <= 1'b1;
                    line_count <= 11'd1;                 // 已接收 1 个字节，计数置 1
                    if (row_count < FRAME_LINES) begin
                        raw_valid  <= 1'b1;              // 输出第 0 字节有效使能
                        raw_data   <= cam_data;          // 输出第 0 字节数据
                        raw_byte_x <= 11'd0;             // 标定字节水平坐标为 0
                        raw_y      <= row_count[8:0];    // 标定垂直行坐标
                        raw_sof    <= !first_seen;       // 全帧仅在第 0 行第 0 字节拉高 1 拍
                        first_seen <= 1'b1;              // 标记已见过首字节
                    end
                end 
                // 3.3 行内持续传输周期
                else if (data_cycle) begin
                    // 硬件硬截断: 仅放行未超出一行上限的合法数据
                    if (line_count < LINE_BYTES) begin
                        if (row_count < FRAME_LINES) begin
                            raw_valid  <= 1'b1;
                            raw_data   <= cam_data;
                            raw_byte_x <= line_count;     // 标定当前字节水平坐标
                            raw_y      <= row_count[8:0]; // 标定垂直行坐标
                            // 当接收到每行倒数第 1 个字节时，提前触发行尾脉冲
                            raw_eol    <= (line_count == LINE_BYTES - 11'd1);
                        end
                    end
                    // 计数器递增 (超出后饱和停在 LINE_BYTES+1，防止计数溢出归零回绕)
                    if (line_count < LINE_BYTES + 11'd1)
                        line_count <= line_count + 11'd1;
                end
            end
        end
    end

endmodule
