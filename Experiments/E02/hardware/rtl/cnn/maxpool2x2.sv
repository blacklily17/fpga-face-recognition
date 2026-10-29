// -----------------------------------------------------------------------------
// M15 maxpool2x2 —— INT8 2×2 最大池化（stride 2，无 padding）
//
// 依据：系统方案与模块接口.md §5.3 / §5.4 / M15；模块分组与仿真任务书.md §8
//
// 冻结语义
//   * 按**有符号** int8 比较。0xFF 按无符号是 255、按有符号是 -1；用无符号比较
//     会在含负值的窗口上给出完全相反的答案。这是本模块最容易写错的一点。
//   * 2×2、stride 2、无 padding。奇数宽高的**最后一行/列丢弃**，不补零参与比较。
//   * 输入输出都是 HWC 通道交织（y 外、x 中、c 内），池化**不改变通道顺序**。
//   * tuser 只在 (0,0,0)，tlast 只在一个空间行的最后一个 HWC beat。
//   * 本模块**没有配置端口**：几何尺寸 IMG_W/IMG_H/CH 是编译期常量，
//     由例化方负责与上游 M14 的实际输出尺寸对齐。
//
// 微架构
//   只需一行输入行缓存。偶数输入行写进 lbuf；奇数输入行边读 lbuf 边算。
//   每个输出 (oy,ox,c) 的四个采样点是
//       (2oy  , 2ox  , c)  (2oy  , 2ox+1, c)     ← lbuf（上一行）
//       (2oy+1, 2ox  , c)  (2oy+1, 2ox+1, c)     ← 当前行
//   当前行的左列先寄存进 hold_cur[c]（列内通道最内，故 hold_cur 需要 CH 深），
//   到右列那拍凑齐四点取最大并输出。
//
//   这四点的最值与比较顺序无关，所以「先取行内两列的较大者、再与上一行取大」
//   与黄金模型「一次性取四点最大」逐位等价，无需引入任何数值近似。
//
// 吞吐
//   输入每拍 1 个 beat，每 2 个 beat 出 1 个输出点（x 为奇数那一拍）。
//   benchmark 30×30×8 → 15×15×8：输入 7200 拍、输出 1800 拍；
//   理想情况下每个输出点占 2 拍（右列那拍出、左列那拍不进不出）。
//
// 未冻结的假设（与上游联调前需确认）
//   * 位置只由内部计数器推进，**不使用** s_tuser/s_tlast 重新对齐。也就是说
//     IMG_W/IMG_H/CH 必须与上游实际输出尺寸一致；不一致时结果无意义，且不会
//     有错误标志 —— 本模块没有 overflow 端口。TB 会校验激励流的 tuser/tlast
//     与计数器一致，以此兜住这条假设。
//   * 本模块不需要 M16 下发任何配置，故不参与 cfg_valid/cfg_ready 握手。
// -----------------------------------------------------------------------------

`timescale 1ns / 1ps

module maxpool2x2 #(
    parameter integer IMG_W = 30,
    parameter integer IMG_H = 30,
    parameter integer CH    = 8
) (
    input  logic       aclk, aresetn,             // 全局时钟与低电平有效复位
    input  logic       s_tvalid,                  // 输入有效（AXI-Stream 从接口）
    output logic       s_tready,                  // 输入可接收
    input  logic [7:0] s_tdata,                   // 输入 INT8 激活，HWC 交织
    input  logic       s_tuser, s_tlast,          // 帧首标志 / 该空间行最后一个通道
    output logic       m_tvalid,                  // 输出有效（AXI-Stream 主接口）
    input  logic       m_tready,                  // 下游可接收
    output logic [7:0] m_tdata,                   // 输出 INT8，HWC 交织不变
    output logic       m_tuser, m_tlast           // 帧首标志 / 该空间行最后一个通道
);

    // 奇数宽高时整除自动丢弃末行末列（5/2=2、7/2=3），不需要额外分支
    localparam integer OUT_W = IMG_W / 2;
    localparam integer OUT_H = IMG_H / 2;

    // -------------------------------------------------------------------------
    // 存储
    // -------------------------------------------------------------------------
    logic [7:0] lbuf     [0:IMG_W*CH-1];   // 行缓存：只存偶数输入行
    logic [7:0] hold_cur [0:CH-1];         // 当前（奇数）行左列的 CH 个通道

    int iy = 0, ix = 0, ic = 0;            // 输入位置：行 / 列 / 通道

    // -------------------------------------------------------------------------
    // 有符号比较（本模块的核心语义）
    // -------------------------------------------------------------------------
    function automatic logic signed [7:0] maxs(input logic signed [7:0] a,
                                              input logic signed [7:0] b);
        maxs = (a > b) ? a : b;
    endfunction

    // -------------------------------------------------------------------------
    // 只有在「奇数行 + 奇数列」那拍才出结果，若此时输出寄存器还被占着就继续
    // 收输入，会把已算好的结果直接覆盖掉。所以收输入的前提是输出寄存器空闲。
    // 下游 m_tready 恒为 1 时，寄存器当拍就被接走，不损失吞吐。
    // -------------------------------------------------------------------------
    assign s_tready = aresetn && ((!m_tvalid) || m_tready);

    // -------------------------------------------------------------------------
    // 主状态机：无状态编码，纯数据流推进
    // -------------------------------------------------------------------------
    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            iy       <= 0;
            ix       <= 0;
            ic       <= 0;
            m_tvalid <= 1'b0;
            m_tdata  <= 8'd0;
            m_tuser  <= 1'b0;
            m_tlast  <= 1'b0;
        end else begin
            // 下游接走则腾空输出寄存器。若同一拍又出了新结果，
            // 下面的赋值在后面，会覆盖掉这一句，寄存器保持有效。
            if (m_tvalid && m_tready) m_tvalid <= 1'b0;

            if (s_tvalid && s_tready) begin
                if (!iy[0]) begin
                    // 偶数输入行：整行写进行缓存，本行不产生任何输出
                    lbuf[ix*CH + ic] <= s_tdata;

                end else if (!ix[0]) begin
                    // 奇数行、偶数列：左列先存起来，等右列那拍一起比较
                    hold_cur[ic] <= s_tdata;

                end else begin
                    // 奇数行、奇数列：2×2 窗口凑齐，取最大并输出
                    logic signed [7:0] mx;
                    mx = maxs(maxs($signed(hold_cur[ic]),  $signed(s_tdata)),
                              maxs($signed(lbuf[(ix-1)*CH + ic]),
                                   $signed(lbuf[ix*CH + ic])));

                    m_tdata  <= mx;
                    m_tvalid <= 1'b1;
                    // 帧首个输出点即 (oy,ox,oc) = (0,0,0)，对应输入 (1,1,0)
                    m_tuser  <= (iy == 1) && (ix == 1) && (ic == 0);
                    // 行尾：该输出行的最后一个输出列 + 最后一个通道（§5.3）
                    m_tlast  <= (ic == CH-1) && ((ix >> 1) == OUT_W-1);
                end

                // 位置推进：通道最内 → 列 → 行
                if (ic + 1 == CH) begin
                    ic <= 0;
                    if (ix + 1 == IMG_W) begin
                        ix <= 0;
                        iy <= (iy + 1 == IMG_H) ? 0 : iy + 1;
                    end else begin
                        ix <= ix + 1;
                    end
                end else begin
                    ic <= ic + 1;
                end
            end
        end
    end

    // -------------------------------------------------------------------------
    // 编译期几何检查：OUT_W/OUT_H 为 0 时模块不出任何结果，属于例化错误
    // -------------------------------------------------------------------------
`ifndef SYNTHESIS
    initial begin
        if (IMG_W < 2 || IMG_H < 2)
            $fatal(1, "M15: IMG_W/IMG_H 必须 >= 2（否则 OUT_W/OUT_H 为 0，模块不出结果）");
        if (CH < 1)
            $fatal(1, "M15: CH 必须 >= 1");
    end
`endif

endmodule
