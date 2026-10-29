`timescale 1ns / 1ps

// 模块名称: rgb565_unpack_gray
// 功能描述: 连续双字节拼接为 RGB565，并通过 3 级流水线解算出 8 位灰度值 (Gray8)

module rgb565_unpack_gray #(
    parameter HIGH_BYTE_FIRST = 1'b0                             // 字节序：0 为 0x4300=0x6F(低字节在前)；1 为 0x4300=0x61(高字节在前)
) (
    input  wire        cam_pclk,     // 摄像头像素时钟输入
    input  wire        cam_rst_n,    // 异步复位信号，低电平有效
    input  wire        raw_valid,    // 输入原始字节有效指示
    input  wire [7:0]  raw_data,     // 输入 8-bit 字节数据
    input  wire        raw_sof,      // 帧起始指示脉冲 (Start of Frame)
    input  wire        raw_eol,      // 行结束指示脉冲 (End of Line)
    output reg         px_valid,     // 输出像素有效使能信号
    output reg  [15:0] rgb565,       // 拼接完成的 16-bit RGB565 像素
    output reg  [7:0]  gray8,        // 计算得出的 8-bit 灰度像素
    output reg         px_sof,       // 像素级帧起始指示脉冲
    output reg         px_eol        // 像素级行结束指示脉冲
);

    // 字节拼接与防错暂存寄存器
    reg        have_first;                                       // 已锁存当前像素的第 1 个字节
    reg [7:0]  first_byte;                                       // 暂存的第 1 个字节数据
    reg        sof_pending;                                      // 帧起始标志挂起等待第 2 个字节

    //  0: 字节拼接完成，重组为 16-bit RGB565 像素
    reg        valid_s0;     // Stage 0 像素有效使能
    reg [15:0] rgb_s0;       // Stage 0 组装好的 RGB565 数据
    reg        sof_s0;       // Stage 0 帧起始指示
    reg        eol_s0;       // Stage 0 行结束指示

    //  1: 位宽拉伸扩展 (R5->R8, G6->G8, B5->B8)
    reg        valid_s1;          // Stage 1 像素有效打拍
    reg [15:0] rgb_s1;            // Stage 1 RGB565 数据流水打拍
    reg [7:0]  red_s1;            // 红通道扩展至 8 位
    reg [7:0]  green_s1;          // 绿通道扩展至 8 位
    reg [7:0]  blue_s1;           // 蓝通道扩展至 8 位
    reg        sof_s1;            // Stage 1 帧起始打拍
    reg        eol_s1;            // Stage 1 行结束打拍

    //  2: BT.601 定点权重乘法 (77*R, 150*G, 29*B)
    reg        valid_s2;        // Stage 2 像素有效打拍
    reg [15:0] rgb_s2;          // Stage 2 RGB565 数据流水打拍
    reg [15:0] red_product;     // 红色通道乘积 (77 * R)
    reg [15:0] green_product;   // 绿色通道乘积 (150 * G)
    reg [15:0] blue_product;    // 蓝色通道乘积 (29 * B)
    reg        sof_s2;          // Stage 2 帧起始打拍
    reg        eol_s2;          // Stage 2 行结束打拍

    // 灰度加权求和（+128 用于实现硬件四舍五入）
    wire [15:0] gray_sum;
    assign gray_sum = red_product + green_product + blue_product + 16'd128; // 三分量乘积累加并偏移 128 用于舍入

    always @(posedge cam_pclk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            // 异步复位：全部控制寄存器与流水线清零
            have_first    <= 1'b0;           // 清除首字节缓存标志
            first_byte    <= 8'd0;           // 清零暂存字节数据
            sof_pending   <= 1'b0;           // 清除帧起始挂起状态
            valid_s0      <= 1'b0;           // 复位 Stage 0 有效信号
            rgb_s0        <= 16'd0;          // 复位 Stage 0 像素数据
            sof_s0        <= 1'b0;           // 复位 Stage 0 帧起始
            eol_s0        <= 1'b0;           // 复位 Stage 0 行结束
            valid_s1      <= 1'b0;           // 复位 Stage 1 有效信号
            rgb_s1        <= 16'd0;          // 复位 Stage 1 像素数据
            red_s1        <= 8'd0;           // 复位 Stage 1 红色分量
            green_s1      <= 8'd0;           // 复位 Stage 1 绿色分量
            blue_s1       <= 8'd0;           // 复位 Stage 1 蓝色分量
            sof_s1        <= 1'b0;           // 复位 Stage 1 帧起始
            eol_s1        <= 1'b0;           // 复位 Stage 1 行结束
            valid_s2      <= 1'b0;           // 复位 Stage 2 有效信号
            rgb_s2        <= 16'd0;          // 复位 Stage 2 像素数据
            red_product   <= 16'd0;          // 复位红色加权乘积
            green_product <= 16'd0;          // 复位绿色加权乘积
            blue_product  <= 16'd0;          // 复位蓝色加权乘积
            sof_s2        <= 1'b0;           // 复位 Stage 2 帧起始
            eol_s2        <= 1'b0;           // 复位 Stage 2 行结束
            px_valid      <= 1'b0;           // 复位输出像素有效信号
            rgb565        <= 16'd0;          // 复位输出 RGB565 像素
            gray8         <= 8'd0;           // 复位输出灰度像素
            px_sof        <= 1'b0;           // 复位输出帧起始脉冲
            px_eol        <= 1'b0;           // 复位输出行结束脉冲
        end else begin
            // 默认清除单拍控制/有效信号
            valid_s0 <= 1'b0;                                    // 默认无组装完成的像素
            sof_s0   <= 1'b0;                                    // 默认清除帧起始指示
            eol_s0   <= 1'b0;                                    // 默认清除行结束指示

            // 字节拼接逻辑: 抓取连续两个字节，组装为 16-bit RGB565
            if (raw_valid) begin
                if (raw_sof || !have_first) begin
                    // 新帧首字节强制重新对齐；行尾不得保留半像素
                    first_byte  <= raw_data;                     // 锁存第 1 个输入字节
                    have_first  <= !raw_eol;                     // 标记首字节已到位（若突发行尾则丢弃半像素）
                    sof_pending <= raw_sof && !raw_eol;          // 记录帧起始脉冲挂起状态
                end else begin
                    // 0x6F 低字节先发；0x61 高字节先发
                    rgb_s0      <= HIGH_BYTE_FIRST ? {first_byte, raw_data} :
                                                     {raw_data, first_byte}; // 按照配置的字节序重组为 16 位像素
                    valid_s0    <= 1'b1;                         // 组装完成，拉高有效使能
                    sof_s0      <= sof_pending;                  // 传递挂起的帧首标志
                    eol_s0      <= raw_eol;                      // 传递当前字节的行尾标志
                    have_first  <= 1'b0;                         // 清除首字节标志，等待下一像素
                    sof_pending <= 1'b0;                         // 清除帧起始挂起状态
                end
            end else if (raw_eol) begin
                // 孤立行尾清除半像素缓存，避免与下一行的字节错拼
                have_first  <= 1'b0;                             // 行结束强制清除残留半像素
                sof_pending <= 1'b0;                             // 强制清除残留的帧首挂起
            end

            //  1: 高位复制镜像法，将 5/6 位通道拉伸扩展到 8 位
            valid_s1 <= valid_s0;                                // 有效信号推进至 Stage 1
            rgb_s1   <= rgb_s0;                                  // RGB565 像素打拍传递
            red_s1   <= {rgb_s0[15:11], rgb_s0[15:13]};          // 5 位红通道扩展为 8 位 (高 3 位补到低位)
            green_s1 <= {rgb_s0[10:5],  rgb_s0[10:9]};           // 6 位绿通道扩展为 8 位 (高 2 位补到低位)
            blue_s1  <= {rgb_s0[4:0],   rgb_s0[4:2]};            // 5 位蓝通道扩展为 8 位 (高 3 位补到低位)
            sof_s1   <= sof_s0;                                  // 帧起始标志打拍传递
            eol_s1   <= eol_s0;                                  // 行结束标志打拍传递

            // 2: BT.601 定点权重乘法 (系数和: 77 + 150 + 29 = 256)
            valid_s2      <= valid_s1;                           // 有效信号推进至 Stage 2
            rgb_s2        <= rgb_s1;                             // RGB565 像素打拍传递
            red_product   <= 8'd77  * red_s1;                    // 红通道乘法定点计算 (权重 77)
            green_product <= 8'd150 * green_s1;                  // 绿通道乘法定点计算 (权重 150)
            blue_product  <= 8'd29  * blue_s1;                   // 蓝通道乘法定点计算 (权重 29)
            sof_s2        <= sof_s1;                             // 帧起始标志打拍传递
            eol_s2        <= eol_s1;                             // 行结束标志打拍传递

            //  3 (输出级): 舍入除以 256，所有数据与控制信号同拍输出
            px_valid <= valid_s2;                                // 产生最终像素有效使能
            rgb565   <= rgb_s2;                                  // 输出对齐打拍后的 RGB565 数据
            gray8    <= gray_sum[15:8];                          // 取高 8 位等效于除以 256 并实现四舍五入
            px_sof   <= valid_s2 && sof_s2;                      // 仅在数据有效时输出帧起始脉冲
            px_eol   <= valid_s2 && eol_s2;                      // 仅在数据有效时输出行结束脉冲
        end
    end

endmodule