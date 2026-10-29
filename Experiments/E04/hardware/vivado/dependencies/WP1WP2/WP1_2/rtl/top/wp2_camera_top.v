`timescale 1ns / 1ps

module wp2_camera_top #(
    parameter integer ACTIVE_W        = 800,  // 图像有效宽度（像素点数）
    parameter integer ACTIVE_H        = 480,  // 图像有效高度（行数）
    parameter         HIGH_BYTE_FIRST = 1'b0  // 字节序：1为高字节在前，0为低字节在前（与WP1 0x4300输出一致）
) (
    // 摄像头物理接口 (DVP 硬件输入)
    input  wire        cam_pclk,      // 摄像头像素时钟输入
    input  wire        cam_rst_n,     // 异步复位信号，低电平有效
    input  wire        cam_vsync,     // 场同步信号，脉冲指示新帧起始/结束
    input  wire        cam_href,      // 行参考信号，高电平指示行数据有效
    input  wire [7:0]  cam_data,      // 摄像头 8-bit 并行数据总线
    input  wire        fifo_overflow, // 下游写入 FIFO 溢出标志（用于统计丢帧）

    // 字节级原始输出 (Raw Byte Stream)
    output wire        raw_valid,     // 字节数据有效使能
    output wire [7:0]  raw_data,      // 8-bit 字节原始数据
    output wire        raw_sof,       // 字节级帧起始指示 (Start of Frame)
    output wire        raw_eol,       // 字节级行结束指示 (End of Line)
    output wire [10:0] raw_byte_x,    // 当前行内字节坐标 (0 ~ ACTIVE_W*2 - 1)
    output wire [8:0]  raw_y,         // 当前垂直行坐标 (0 ~ ACTIVE_H - 1)

    // 像素级输出 (Pixel Level Stream)
    output wire        px_valid,      // 像素有效使能（每接收 2 个 raw_valid 产生 1 个脉冲）
    output wire [15:0] rgb565,        // 拼接完成的 16-bit RGB565 像素数据
    output wire [7:0]  gray8,         // 实时解算提取的 8-bit 灰度像素（供算法使用）
    output wire        px_sof,        // 像素级帧起始指示
    output wire        px_eol,        // 像素级行结束指示

    // 单帧状态标志
    output wire        frame_done,    // 单帧接收完成脉冲
    output wire        frame_good,    // 当前帧完整且数据校验正确标志
    output wire [3:0]  frame_error,   // 当前帧错误类型码（如行长度错误、行数超差等）

    // 全局健康状态统计计数器
    output wire [31:0] frames_seen,    // 接收到的总帧数计数器
    output wire [31:0] frames_good,    // 成功接收的正常帧数计数器
    output wire [31:0] frames_bad,     // 异常损坏的帧数计数器
    output wire [31:0] frames_dropped, // 因后级 FIFO 溢出而丢弃的帧数计数器
    output wire [31:0] last_error      // 最近一次捕获到的错误类型码
);

    // 1. DVP 协议接收模块：捕获并口数据，完成行/场时序解析与基础完整性校验
    dvp_rx #(
        .ACTIVE_W        (ACTIVE_W),
        .ACTIVE_H        (ACTIVE_H),
        .BYTES_PER_PIXEL (2)          // RGB565 格式每个像素占用 2 个字节
    ) u_dvp_rx (
        .cam_pclk   (cam_pclk),       // 像素时钟接入
        .cam_rst_n  (cam_rst_n),      // 复位信号接入
        .cam_vsync  (cam_vsync),      // 场同步接入
        .cam_href   (cam_href),       // 行参考接入
        .cam_data   (cam_data),       // 8-bit 数据输入
        .raw_valid  (raw_valid),      // 输出：字节有效
        .raw_data   (raw_data),       // 输出：原始字节
        .raw_sof    (raw_sof),        // 输出：帧起始标志
        .raw_eol    (raw_eol),        // 输出：行结束标志
        .raw_byte_x (raw_byte_x),     // 输出：行内字节 X 坐标
        .raw_y      (raw_y),          // 输出：当前行 Y 坐标
        .frame_done (frame_done),     // 输出：单帧完成指示
        .frame_good (frame_good),     // 输出：单帧正常指示
        .frame_error(frame_error)     // 输出：帧错误码
    );

    // 2. 像素解包与灰度转换：将 2 个连续字节合成 1 个 RGB565 像素，并同步提取 8-bit 灰度
    rgb565_unpack_gray #(
        .HIGH_BYTE_FIRST(HIGH_BYTE_FIRST) // 字节序配置参数传递
    ) u_rgb565_unpack_gray (
        .cam_pclk  (cam_pclk),        // 像素时钟接入
        .cam_rst_n (cam_rst_n),       // 复位信号接入
        .raw_valid (raw_valid),       // 输入：原始字节有效
        .raw_data  (raw_data),        // 输入：原始字节数据
        .raw_sof   (raw_sof),         // 输入：字节级帧起始
        .raw_eol   (raw_eol),         // 输入：字节级行结束
        .px_valid  (px_valid),        // 输出：像素有效
        .rgb565    (rgb565),          // 输出：16-bit 像素数据
        .gray8     (gray8),           // 输出：8-bit 灰度数据
        .px_sof    (px_sof),          // 输出：像素级帧起始
        .px_eol    (px_eol)           // 输出：像素级行结束
    );

    // 3. 统计监控模块：统计总帧数、良品率、溢出丢帧情况与故障定位
    frame_stats u_frame_stats (
        .cam_pclk      (cam_pclk),      // 像素时钟接入
        .cam_rst_n     (cam_rst_n),     // 复位信号接入
        .frame_done    (frame_done),    // 输入：单帧完成脉冲
        .frame_good    (frame_good),    // 输入：单帧正常标志
        .frame_error   (frame_error),   // 输入：单帧错误码
        .fifo_overflow (fifo_overflow), // 输入：后级 FIFO 溢出输入
        .frames_seen   (frames_seen),   // 输出：总帧数统计
        .frames_good   (frames_good),   // 输出：良品帧统计
        .frames_bad    (frames_bad),    // 输出：坏帧统计
        .frames_dropped(frames_dropped),// 输出：溢出丢帧统计
        .last_error    (last_error)     // 输出：最近一次错误码记录
    );

endmodule