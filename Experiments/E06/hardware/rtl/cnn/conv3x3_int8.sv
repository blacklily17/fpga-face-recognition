// -----------------------------------------------------------------------------
// M14 conv3x3_int8 -- INT8 3×3 卷积加速器
//
// 依据：系统方案与模块接口.md §5.3 / §5.4 / M14；模块分组与仿真任务书.md §8
//
// 冻结语义（A1-A10，逐条对应实现位置）：
//   A1  40 bit 有符号累加器 `acc`，乘积与 32 bit bias 全部符号扩展；
//       中间不回绕、不截断、不饱和。见 ACC_WIDTH 与 ST_MAC。
//   A2  互相关，核不翻转，(ky,kx) 直接对应输入窗口 (ky,kx)。见 win_index。
//   A3  cfg_w/cfg_h 是**输入**宽高；输出 = floor((输入-3)/stride)+1。
//   A4  PAR_MUL 只改变并行度。每个输出按 t = ((ic*3+ky)*3+kx) 递增的顺序分组，
//       一组 PAR_MUL 项组合求和后累加。加法是精确整数运算，40 bit 内任何
//       求和顺序结果相同，因此 PAR_MUL=1 与任意并行度逐位一致。
//   A5  done = 最后一个输出 beat 完成握手当拍的单周期脉冲（组合）。
//       overflow 为保持型状态，复位或下一次合法 cfg 握手清零。
//   A6  cfg_stride 只允许 1/2。
//   A7  valid、无 padding。
//   A8  权重按 4 lane/32 bit 打包；RTL 按 weight_index 取 lane；
//       不读取超过 cfg_out_ch*cfg_in_ch*9 的 lane，因此末字补零与否不影响数值。
//   A9  输入 tlast 在 x=cfg_w-1 && c=cfg_in_ch-1（由上游保证，本模块不检查）；
//       输出 tuser 在 (0,0,0)，tlast 在每个空间行最后一个通道。见 ST_EMIT。
//   A10 非法配置在本模块内 $fatal（仿真专用，`ifndef SYNTHESIS`）。
//
// 微架构（主文档允许自行选择）：
//   输入张量整块缓冲进 xbuf 再计算，不做滑动窗口行缓存。
//   * 输入流本来就是 HWC 线性序，xbuf 的下标与流的序号相同，装载是直写。
//   * 代价是 BRAM：MAX_H*MAX_W*MAX_IN_CH 字节（默认 48*48*16 = 36 KB）。
//   * 收益是消除行缓存/stride 交错的整类错误。资源报告见 §8.5 门禁。
//
// 索引推进（2026-09-24 重构，性能所迫）：
//   初版用 out_idx 做运行时**变量除法**算出 (oy,ox,oc) 与 xbuf/wmem 下标。
//   变量除法综合成组合进位链：OOC 实测单条路径 574 级逻辑 / 521 个 CARRY4 /
//   157.8 ns，PAR_MUL=8 时 LUT 用量 214.84%，根本装不进 Z-7020。
//   现改为**计数器推进**，所有增量在 cfg 装载时一次算好（见 idx 增量段）。
//   语义未变：累加顺序仍是 in_ch→ky→kx，仍是精确整数加，PAR_MUL=1 仍逐位一致。
//
// 周期数
//   每个输出元素需要 ceil(cfg_in_ch*9 / PAR_MUL) 拍累加 + 1 拍收尾 + 1 拍出数。
//   benchmark 30*30*8 个输出，PAR_MUL=8 时约 7200*(72/8+2) ≈ 79k 拍。
// -----------------------------------------------------------------------------

`timescale 1ns / 1ps

module conv3x3_int8 #(
    parameter integer MAX_IN_CH  = 16,
    parameter integer MAX_OUT_CH = 16,
    parameter integer PAR_MUL    = 8,
    parameter integer ACC_WIDTH  = 40,
    // 微架构容量。超出即 overflow（属内部缓冲溢出，见 A5）
    parameter integer MAX_H      = 48,
    parameter integer MAX_W      = 48
) (
    input   logic           aclk, aresetn,          // 全局时钟与低电平有效复位信号
    input   logic           cfg_valid,              // 配置有效请求信号（握手协议）
    output  logic           cfg_ready,              // 加速器空闲可接收配置应答信号（ST_IDLE 状态置高）
    input   logic [15:0]    cfg_w, cfg_h,           // 输入特征图的宽度与高度（像素值，必须 >= 3）
    input   logic [7:0]     cfg_in_ch, cfg_out_ch,  // 输入通道数与输出通道数（1 ~ MAX 范围）
    input   logic [1:0]     cfg_stride,             // 卷积步长（仅允许 1 或 2）
    input   logic [5:0]     cfg_shift,              // 累加结果算术右移位数（用于量化比例缩放）
    input   logic           cfg_relu,               // ReLU 激活函数使能（1 为使能截断负数，0 为直通）
    input   logic           w_we,                   // 权重存储器（wmem）写使能
    input   logic [15:0]    w_addr,                 // 权重存储器写地址（每个字对应 4 个 INT8）
    input   logic [31:0]    w_data,                 // 写入的权重数据（32-bit 打包 4 个 INT8 lane）
    input   logic           b_we,                   // 偏置存储器（bmem）写使能
    input   logic [7:0]     b_addr,                 // 偏置存储器写地址（对应输出通道索引）
    input   logic [31:0]    b_data,                 // 写入的偏置数据（32-bit 有符号整数）
    input   logic           s_tvalid,               // 输入数据流有效信号（AXI-Stream 从接口）
    output  logic           s_tready,               // 输入数据流就绪信号（ST_LOAD 状态置高）
    input   logic [7:0]     s_tdata,                // 输入特征图像素数据（INT8，按 HWC 线性流装载）
    input   logic           s_tuser, s_tlast,       // 输入流标志：s_tuser 帧起始，s_tlast 为该空间行最后通道（见 A9）
    output  logic           m_tvalid,               // 输出数据流有效信号（AXI-Stream 主接口）
    input   logic           m_tready,               // 下游接收就绪应答信号（AXI-Stream 主接口）
    output  logic [7:0]     m_tdata,                // 卷积运算结果数据（8-bit 有符号饱和截断值）
    output  logic           m_tuser, m_tlast,       // 输出流标志：m_tuser 为帧首(0,0,0)，m_tlast 为行尾最后通道
    output  logic           done, overflow          // done 为完成单周期脉冲，overflow 为参数超限保持型报警
);

    localparam integer KERNEL     = 3;
    localparam integer MAX_TENSOR = MAX_H * MAX_W * MAX_IN_CH;
    localparam integer MAX_WORDS  = (MAX_OUT_CH * MAX_IN_CH * KERNEL * KERNEL + 3) / 4;

    // ---------------------------------------------------------------------
    // 存储
    // ---------------------------------------------------------------------
    logic [7:0]  xbuf [0:MAX_TENSOR-1];                    // 输入张量，HWC 线性序
    logic [31:0] wmem [0:MAX_WORDS-1];                     // 每字 4 个 int8 权重
    logic [31:0] bmem [0:MAX_OUT_CH-1];                    // 每通道一个 int32 bias

    always_ff @(posedge aclk) if (w_we) wmem[w_addr] <= w_data;
    always_ff @(posedge aclk) if (b_we) bmem[b_addr] <= b_data;

    // ---------------------------------------------------------------------
    // 配置锁存
    // ---------------------------------------------------------------------
    localparam logic [2:0] ST_IDLE = 3'd0, ST_LOAD = 3'd1, ST_MAC = 3'd2, ST_EMIT = 3'd3, ST_PREMAC = 3'd4;

    logic [2:0] state = ST_IDLE;

    // 非零初值：这些量在 always_comb 里充当**除数**，time 0 为 0 会算出 X 并污染 group_sum
    int cfg_w_r = 1, cfg_h_r = 1, cfg_in_ch_r = 1, cfg_out_ch_r = 1;
    int cfg_stride_r = 1, cfg_shift_r = 0;
    logic cfg_relu_r = 1'b0;
    int out_w_r = 1, out_h_r = 1, out_count_r = 0, in_count_r = 0, total_terms_r = 0;

    // ---------------------------------------------------------------------
    // 输出游标与索引增量（2026-09-24 重构）
    //
    // 初版用 out_idx 做运行时变量除法（/ out_w_r、% cfg_out_ch_r …）来算
    // (oy, ox, oc) 与 xbuf/wmem 下标。变量除数在综合里展开成组合进位链：
    // OOC 实测 574 级逻辑 / 521 个 CARRY4 / 157.8 ns，PAR_MUL=8 时 LUT 214.84%。
    //
    // 改为寄存器推进，且每级增量在 cfg 装载时一次算好：
    //   oc      0..out_ch-1              每出一个元素 +1
    //   ox_b    输出列起点（已乘 stride） 每次 +stride；到最后一列则回绕
    //   xbase   xbuf 中当前输出像素 (oy_b, ox_b, 0) 的线性偏移 —— 只加不乘
    //   woc     wmem 中当前 oc 的权重起始 lane = oc*in_ch*KERNEL*KERNEL
    //   r_base / ic_base   把 t_base 拆成 t_base = ic_base*9 + r_base，
    //           于是 lane p 的 t = t_base+p 只需 s = r_base+p（p 是常量，
    //           s ≤ 8+7 = 15），再用一次 s>=9 条件减就得到 (ic, ky, kx)。
    // ---------------------------------------------------------------------
    int ox_b    = 0;       // 输出列起点在输入列上的位置（已乘 stride）
    int oc      = 0;       // 当前输出通道
    int xbase   = 0;       // xbuf 线性偏移：(oy_b*cfg_w_r + ox_b)*cfg_in_ch_r
    int woc     = 0;       // wmem lane 偏移：oc*cfg_in_ch_r*KERNEL*KERNEL
    // Legal remainder is 0..8; avoid 32-bit selector/subtraction logic.
    localparam integer RBITS = $clog2(KERNEL*KERNEL);
    localparam integer CBITS = (MAX_IN_CH < 2) ? 1 : $clog2(MAX_IN_CH+1);
    logic [RBITS-1:0] r_base = 0;       // t_base % (KERNEL*KERNEL)
    logic [CBITS-1:0] ic_base = 0;       // t_base / (KERNEL*KERNEL)

    // cfg 装载时一次算好的增量，索引路径上直接取用
    int row_stride_r = 1;  // cfg_w_r * cfg_in_ch_r
    int x_step_r     = 1;  // cfg_stride_r * cfg_in_ch_r
    int y_wrap_r     = 1;  // 换行时 xbase 的增量 = cfg_stride_r*cfg_in_ch_r*(cfg_w_r-out_w_r+1)
    int w_step_r     = 1;  // cfg_in_ch_r * KERNEL * KERNEL
    int ox_last_b_r  = 0;  // (out_w_r - 1) * cfg_stride_r

    localparam integer PM_DIV9 = PAR_MUL / (KERNEL * KERNEL);   // 编译期常量
    localparam integer PM_MOD9 = PAR_MUL % (KERNEL * KERNEL);
    // ---------------------------------------------------------------------
    // 地址预计算表（2026-09-24 时序修复）
    //
    // 病：xbuf[xbase + koff + ic] 三个量原本都是 32 位 int，综合出 32 位串行
    //     进位加法器直接怼进 LUTRAM 异步读口。50 MHz 真 P&R（synth -> opt ->
    //     place -> route，20 ns）实测三档 PAR_MUL 关键路径结构完全相同：
    //         par1  22.777 ns  29 级 CARRY4   WNS  -2.782 ns
    //         par2  26.205 ns  30 级 CARRY4   WNS  -6.211 ns
    //         par8  32.065 ns  32 级 CARRY4   WNS -12.070 ns
    //     起点 r_base_reg，终点 acc_reg，中间穿过 RAMD64E，全部超 20 ns。
    //
    // 药：xbase 是寄存器，ST_MAC 期间**完全不变**，所以 base_tab[j] =
    //     xbase + koff_tab[j] 这 9 项可以并行预计算，不在关键路径上。
    //     koff_tab 在 cfg 装载时按 ky*row_stride + kx*in_ch 建好，把原来的
    //     两条比较器 + 两个三选一 + 一次加法整体消掉。
    //     地址收窄到 ABITS 位（32*32*8 -> 13 位），加法器从 ~30 级降到 ~13 级。
    //
    // 语义不变（A1-A10 逐条不动）：地址真值恒 < MAX_TENSOR <= 2^ABITS，窄位宽
    //     加法按模 2^ABITS 取低位，结果与真值逐位相同。
    // ---------------------------------------------------------------------
    localparam integer KA    = KERNEL * KERNEL;                   // 9
    localparam integer ABITS = (MAX_TENSOR <= 1) ? 1 : $clog2(MAX_TENSOR);
    localparam integer WBITS = (MAX_WORDS * 4 <= 1) ? 1 : $clog2(MAX_WORDS * 4);

    logic [ABITS-1:0] koff_tab [0:KA-1];   // cfg 装载时填：ky*row_stride + kx*in_ch
    logic [ABITS-1:0] base_tab [0:KA-1];   // xbase + koff_tab[j]，与 r 的译码并行
    logic [ABITS-1:0] xb_n;                // xbase 收窄到地址位宽

    always_comb xb_n = xbase;              // 截断即可，地址真值 < 2^ABITS

    // Register the per-window addresses off the RAM-read/MAC critical path.
    // ST_PREMAC lets these registers settle after a window move.
    always_ff @(posedge aclk) begin
        for (int j = 0; j < KA; j++) begin
            if (!aresetn) base_tab[j] <= '0;
            else base_tab[j] <= koff_tab[j] + xb_n;
        end
    end

    // t_base 前进 PAR_MUL 时，r_base/ic_base 同步推进；乘法已提成编译期常量
    logic [RBITS:0] r_next;
    logic [CBITS:0] ic_next;
    always_comb begin
        r_next  = r_base + PM_MOD9;
        ic_next = ic_base + PM_DIV9;
        if (r_next >= KERNEL * KERNEL) begin   // r_base+PM_MOD9 ≤ 8+8 = 16 < 2*9，一次减够
            r_next  = r_next - KERNEL * KERNEL;
            ic_next = ic_next + 1;
        end
    end

    // cfg 路径上的几何推导：stride 只可能是 1 或 2（A6），
    // 所以 (n-KERNEL)/stride 就是 n-KERNEL 或 (n-KERNEL)>>>1 —— 用选择代替变量除法。
    int mkw, mkh, ow, oh, xstep_c, rowstride_c;
    always_comb begin
        mkw         = int'(cfg_w) - KERNEL;
        mkh         = int'(cfg_h) - KERNEL;
        ow          = (int'(cfg_stride) == 2) ? (mkw >>> 1) : mkw;
        oh          = (int'(cfg_stride) == 2) ? (mkh >>> 1) : mkh;
        xstep_c     = int'(cfg_stride) * int'(cfg_in_ch);
        rowstride_c = int'(cfg_w) * int'(cfg_in_ch);
    end

    int load_cnt = 0;      // 已装载的输入 beat 数
    int out_idx  = 0;      // 当前输出元素的线性序号（HWC，通道最内），仅用于 done/tuser
    int t_base   = 0;      // 当前分组起始的 t

    logic signed [ACC_WIDTH-1:0] acc = '0;
    logic signed [ACC_WIDTH-1:0] acc_next;

    // ---------------------------------------------------------------------
    // 握手与状态输出
    // ---------------------------------------------------------------------
    assign cfg_ready = (state == ST_IDLE);
    assign s_tready  = (state == ST_LOAD);

    // A5：done 是最后一个输出 beat 完成握手**当拍**的单周期脉冲
    assign done = (state == ST_EMIT) && m_tvalid && m_tready &&
                  (out_idx + 1 == out_count_r);

    // ---------------------------------------------------------------------
    // A5：overflow 为保持型；复位或下一次合法 cfg 握手时清零。
    //     本模块没有 FIFO，唯一可能的内部缓冲溢出是配置超出微架构容量。
    // ---------------------------------------------------------------------
    logic cfg_exceeds_capacity;
    assign cfg_exceeds_capacity =
        (cfg_w      > MAX_W)      || (cfg_h      > MAX_H) ||
        (cfg_in_ch  > MAX_IN_CH)  || (cfg_out_ch > MAX_OUT_CH);

    always_ff @(posedge aclk) begin
        if (!aresetn)                       overflow <= 1'b0;
        else if (cfg_valid && cfg_ready)    overflow <= cfg_exceeds_capacity;
    end

    // ---------------------------------------------------------------------
    // 饱和（§5.4：最后一步）
    // ---------------------------------------------------------------------
    function automatic logic [7:0] sat_int8(input logic signed [ACC_WIDTH-1:0] v);
        if (v > 127)       sat_int8 = 8'd127;
        else if (v < -128) sat_int8 = 8'h80;      // -128 的 8 bit 二补码
        else               sat_int8 = v[7:0];
    endfunction

    // ---------------------------------------------------------------------
    // 并行 MAC 组：把第 t_base .. t_base+PAR_MUL-1 项乘积累加到 acc
    // ---------------------------------------------------------------------
    logic signed [ACC_WIDTH-1:0] group_sum;

    always_comb begin
        group_sum = '0;
        for (int p = 0; p < PAR_MUL; p++) begin
            int t;
            logic [RBITS:0] s;
            logic [RBITS-1:0] r;
            logic [ABITS-1:0] ic;
            logic [WBITS-1:0] widx;
            logic signed [7:0] a, wv;
            t = t_base + p;
            if (t < total_terms_r) begin
                // 由 s = r_base + p 直接得 (ic, r)：p 是常量，s <= 15，
                // 一次条件减就够，且没有变量除法。
                s  = r_base + p;
                ic = ic_base + ((s >= KA) ? 1 : 0);
                r  = (s >= KA) ? (s - KA) : s;

                // A2：互相关，核不翻转。地址 = xbase + (ky*W + kx)*C + ic。
                // base_tab[r] 已把 xbase + koff(ky,kx) 预计算好（见表声明处的
                // 时序修复说明），这里只剩一次 9 选 1 和一次 ABITS 位加法。
                a = $signed(xbuf[base_tab[r] + ic]);

                // A8：按 weight_index 取 lane，不越过有效范围
                // widx = oc*in_ch*9 + (ic*9 + ky*3 + kx) = woc + t
                widx = woc + t;
                wv = $signed(wmem[widx >> 2][8 * (widx & 3) +: 8]);

                group_sum = group_sum + (a * wv);
            end
        end
    end

    assign acc_next = acc + group_sum;

    // ---------------------------------------------------------------------
    // 主状态机
    // ---------------------------------------------------------------------
    logic signed [ACC_WIDTH-1:0] post;

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            state    <= ST_IDLE;
            m_tvalid <= 1'b0;
            m_tdata  <= 8'd0;
            m_tuser  <= 1'b0;
            m_tlast  <= 1'b0;
            load_cnt <= 0;
            out_idx  <= 0;
            t_base   <= 0;
            ox_b     <= 0;
            oc       <= 0;
            xbase    <= 0;
            woc      <= 0;
            r_base   <= 0;
            ic_base  <= 0;
            acc      <= '0;
        end else begin
            unique case (state)

                // ---------------------------------------------------------
                ST_IDLE: begin
                    m_tvalid <= 1'b0;
                    if (cfg_valid && cfg_ready && !cfg_exceeds_capacity) begin
                        cfg_w_r      <= int'(cfg_w);
                        cfg_h_r      <= int'(cfg_h);
                        cfg_in_ch_r  <= int'(cfg_in_ch);
                        cfg_out_ch_r <= int'(cfg_out_ch);
                        cfg_stride_r <= int'(cfg_stride);
                        cfg_shift_r  <= int'(cfg_shift);
                        cfg_relu_r   <= cfg_relu;

                        out_w_r       <= ow + 1;
                        out_h_r       <= oh + 1;
                        out_count_r   <= (oh + 1) * (ow + 1) * int'(cfg_out_ch);
                        in_count_r    <= int'(cfg_h) * int'(cfg_w) * int'(cfg_in_ch);
                        total_terms_r <= int'(cfg_in_ch) * KERNEL * KERNEL;

                        // 索引增量：在这里一次算好，之后索引路径只剩加法
                        row_stride_r <= rowstride_c;
                        // 时序修复：9 项偏移表。ky*row_stride + kx*in_ch 原本在
                        // 组合路径上算，现在挪到配置阶段一次算好。
                        for (int j = 0; j < KA; j++)
                            koff_tab[j] <= (j / KERNEL) * rowstride_c +
                                           (j % KERNEL) * int'(cfg_in_ch);
                        x_step_r     <= xstep_c;
                        w_step_r     <= int'(cfg_in_ch) * KERNEL * KERNEL;
                        ox_last_b_r  <= ow * int'(cfg_stride);
                        // 换行：xbase 从 (oy_b*W + (out_w-1)*stride)*C 变成
                        //       ((oy_b+stride)*W + 0)*C，差值 = stride*C*(W - out_w + 1)
                        y_wrap_r     <= xstep_c * (int'(cfg_w) - ow);

                        load_cnt <= 0;
                        out_idx  <= 0;
                        t_base   <= 0;
                        ox_b     <= 0;
                        oc       <= 0;
                        xbase    <= 0;
                        woc      <= 0;
                        r_base   <= 0;
                        ic_base  <= 0;
                        acc      <= '0;
                        state    <= ST_LOAD;
                    end
                end

                // ---------------------------------------------------------
                // 输入流本来就是 HWC 线性序，xbuf 的下标等于流的序号
                ST_LOAD: begin
                    if (s_tvalid && s_tready) begin
                        xbuf[load_cnt] <= s_tdata;
                        load_cnt <= load_cnt + 1;
                        if (load_cnt + 1 == in_count_r) begin
                            out_idx  <= 0;
                            t_base   <= 0;
                            ox_b     <= 0;
                            oc       <= 0;
                            xbase    <= 0;
                            woc      <= 0;
                            r_base   <= 0;
                            ic_base  <= 0;
                            acc      <= '0;
                            state    <= ST_PREMAC;
                        end
                    end
                end

                // ---------------------------------------------------------
                ST_PREMAC: state <= ST_MAC;

                ST_MAC: begin
                    if (t_base < total_terms_r) begin
                        acc     <= acc_next;
                        t_base  <= t_base + PAR_MUL;
                        r_base  <= r_next;
                        ic_base <= ic_next;
                    end else begin
                        // 累加完毕：bias -> ReLU -> 算术右移 -> 饱和（§5.4）
                        post = acc + $signed(bmem[oc]);
                        if (cfg_relu_r && post < 0) post = '0;
                        post = post >>> cfg_shift_r;

                        m_tdata  <= sat_int8(post);
                        // A9：tuser 只在 (0,0,0)；tlast 只在每个空间行最后一个通道。
                        // 计数器版等价于原来的 ((out_idx/out_ch)%out_w == out_w-1)
                        //                   && (out_idx%out_ch == out_ch-1)
                        m_tuser  <= (out_idx == 0);
                        m_tlast  <= (ox_b == ox_last_b_r) && (oc == cfg_out_ch_r - 1);
                        m_tvalid <= 1'b1;
                        state    <= ST_EMIT;
                    end
                end

                // ---------------------------------------------------------
                ST_EMIT: begin
                    if (m_tvalid && m_tready) begin
                        m_tvalid <= 1'b0;
                        if (out_idx + 1 == out_count_r) begin
                            state <= ST_IDLE;      // done 由组合逻辑给出
                        end else begin
                            out_idx  <= out_idx + 1;
                            t_base   <= 0;
                            r_base   <= 0;
                            ic_base  <= 0;
                            acc      <= '0;
                            // 推进输出游标：通道最内，其次列，最后行
                            if (oc + 1 == cfg_out_ch_r) begin
                                oc  <= 0;
                                woc <= 0;
                                if (ox_b == ox_last_b_r) begin
                                    ox_b  <= 0;
                                    xbase <= xbase + y_wrap_r;
                                end else begin
                                    ox_b  <= ox_b + cfg_stride_r;
                                    xbase <= xbase + x_step_r;
                                end
                            end else begin
                                oc  <= oc + 1;
                                woc <= woc + w_step_r;
                            end
                            state <= ST_PREMAC;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

    // ---------------------------------------------------------------------
    // A10：非法配置在本模块内 $fatal（仅仿真）
    // ---------------------------------------------------------------------
`ifndef SYNTHESIS
    always_ff @(posedge aclk) begin
        if (aresetn && cfg_valid && cfg_ready) begin
            if (int'(cfg_w) < KERNEL || int'(cfg_h) < KERNEL)
                $fatal(1, "M14: cfg_w/cfg_h 必须 >= %0d（A10）", KERNEL);
            if (int'(cfg_in_ch) < 1 || int'(cfg_in_ch) > MAX_IN_CH)
                $fatal(1, "M14: cfg_in_ch=%0d 越界 1..%0d（A10）", cfg_in_ch, MAX_IN_CH);
            if (int'(cfg_out_ch) < 1 || int'(cfg_out_ch) > MAX_OUT_CH)
                $fatal(1, "M14: cfg_out_ch=%0d 越界 1..%0d（A10）", cfg_out_ch, MAX_OUT_CH);
            if (cfg_stride != 2'd1 && cfg_stride != 2'd2)
                $fatal(1, "M14: cfg_stride=%0d 只允许 1 或 2（A6/A10）", cfg_stride);
            if (cfg_shift > 6'd63)
                $fatal(1, "M14: cfg_shift 越界 0..63（A10）");
        end
    end
`endif

endmodule