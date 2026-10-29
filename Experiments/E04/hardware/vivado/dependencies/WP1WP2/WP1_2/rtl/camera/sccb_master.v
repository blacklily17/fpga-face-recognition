`timescale 1ns / 1ps
`default_nettype none

// M3: SCCB/I2C 单次寄存器读写主机控制器（支持 16 位寄存器地址 + 8 位数据）
module sccb_master #(
    parameter integer CLK_HZ  = 50_000_000, // 主系统时钟频率
    parameter integer SCCB_HZ = 100_000     // SCCB 通信速率 (100 kHz)
) (
    input  wire        clk,
    input  wire        rst_n,

    // 命令通道 (Command Handshake)
    input  wire        cmd_valid,
    output wire        cmd_ready,
    input  wire        cmd_read,       // 0: 写寄存器; 1: 读寄存器
    input  wire [6:0]  dev_addr,       // 7 位从机地址 (OV5640 为 7'h3C)
    input  wire [15:0] reg_addr,       // 16 位寄存器地址
    input  wire [7:0]  wr_data,        // 待写入的 8 位数据

    // 响应通道 (Response)
    output reg         rsp_valid,      // 响应有效脉冲 (仅拉高 1 个时钟周期)
    output reg  [7:0]  rd_data,        // 读回的 8 位数据
    output reg         nack,           // 1: 通信被拒收 (NACK)
    output reg         timeout,        // 1: 通信超时
    output wire        busy,           // 1: 处于总线占用状态

    // 物理总线引脚控制 (开漏结构)
    output reg         scl_o,          // 串行时钟输出
    output wire        sda_o,          // 固定为 0，与 sda_oe 构成开漏输出
    output reg         sda_oe,         // 1: 强拉低总线(输出0); 0: 释放总线并上拉(输出1/读取输入)
    input  wire        sda_i           // 串行数据物理采样输入
);

    // 半周期计数基准：50 MHz / (2 * 100 kHz) = 250 个周期
    localparam integer HALF_PERIOD_CYCLES = CLK_HZ / (2 * SCCB_HZ);
    localparam [31:0]  HALF_PERIOD_LAST   = HALF_PERIOD_CYCLES - 1;

    // 命令超时阈值：100 ms 未完成即判定超时强行退出
    localparam integer CMD_TIMEOUT_CYCLES = CLK_HZ / 10;
    localparam [31:0]  CMD_TIMEOUT_LAST   = CMD_TIMEOUT_CYCLES - 1;

    // 通信主状态机
    localparam [4:0] ST_IDLE           = 5'd0,
                     ST_START_HOLD     = 5'd1,
                     ST_START_DRIVE    = 5'd2,
                     ST_TX_LOW         = 5'd3,
                     ST_TX_HIGH        = 5'd4,
                     ST_ACK_LOW        = 5'd5,
                     ST_ACK_HIGH       = 5'd6,
                     ST_RESTART_LOW    = 5'd7,
                     ST_RESTART_HIGH   = 5'd8,
                     ST_RESTART_DRIVE  = 5'd9,
                     ST_RX_LOW         = 5'd10,
                     ST_RX_HIGH        = 5'd11,
                     ST_NACK_LOW       = 5'd12,
                     ST_NACK_HIGH      = 5'd13,
                     ST_STOP_LOW       = 5'd14,
                     ST_STOP_HIGH      = 5'd15,
                     ST_STOP_RELEASE   = 5'd16,
                     ST_RESPONSE       = 5'd17;

    // 写/读阶段细分
    localparam [2:0] STEP_DEV_WRITE  = 3'd0, // 发送写设备地址 (0x78)
                     STEP_REG_HIGH   = 3'd1, // 发送寄存器高 8 位地址
                     STEP_REG_LOW    = 3'd2, // 发送寄存器低 8 位地址
                     STEP_WRITE_DATA = 3'd3, // 发送待写入数据
                     STEP_DEV_READ   = 3'd4; // 发送读设备地址 (0x79)

    reg [4:0]  state;
    reg [2:0]  tx_step;
    reg [2:0]  bit_index;
    reg [7:0]  tx_shift;
    reg [7:0]  rx_shift;
    reg        cmd_read_latched;
    reg [6:0]  dev_addr_latched;
    reg [15:0] reg_addr_latched;
    reg [7:0]  wr_data_latched;
    reg [31:0] half_count;
    reg [31:0] timeout_count;

    assign cmd_ready = (state == ST_IDLE);
    assign busy      = (state != ST_IDLE);
    assign sda_o     = 1'b0; // 纯开漏控制：sda_oe=1 拉低，sda_oe=0 外部上拉为高

    // 参数防御性校验
    initial begin
        if (CLK_HZ <= 0 || SCCB_HZ <= 0) begin
            $error("CLK_HZ and SCCB_HZ must be positive values.");
        end
        if (HALF_PERIOD_CYCLES < 2) begin
            $error("System clock frequency is too low for target SCCB clock.");
        end
    end

    // 主时序控制逻辑
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= ST_IDLE;
            tx_step          <= STEP_DEV_WRITE;
            bit_index        <= 3'd7;
            tx_shift         <= 8'd0;
            rx_shift         <= 8'd0;
            cmd_read_latched <= 1'b0;
            dev_addr_latched <= 7'd0;
            reg_addr_latched <= 16'd0;
            wr_data_latched  <= 8'd0;
            half_count       <= 32'd0;
            timeout_count    <= 32'd0;
            rsp_valid        <= 1'b0;
            rd_data          <= 8'd0;
            nack             <= 1'b0;
            timeout          <= 1'b0;
            scl_o            <= 1'b1;
            sda_oe           <= 1'b0;
        end else begin
            // 响应脉冲默认每拍清零，严格确保只输出 1 拍高电平
            rsp_valid <= 1'b0;

            if (state == ST_IDLE) begin
                half_count    <= 32'd0;
                timeout_count <= 32'd0;
                scl_o         <= 1'b1;
                sda_oe        <= 1'b0; // 空闲时释放总线

                // 接收到上层有效命令，锁存任务参数并进入启动流程
                if (cmd_valid) begin
                    cmd_read_latched <= cmd_read;
                    dev_addr_latched <= dev_addr;
                    reg_addr_latched <= reg_addr;
                    wr_data_latched  <= wr_data;
                    tx_shift         <= {dev_addr, 1'b0}; // 写入阶段：设备地址 + 写标志(0)
                    tx_step          <= STEP_DEV_WRITE;
                    bit_index        <= 3'd7;
                    rx_shift         <= 8'd0;
                    rd_data          <= 8'd0;
                    nack             <= 1'b0;
                    timeout          <= 1'b0;
                    state            <= ST_START_HOLD;
                end
            end else if (state == ST_RESPONSE) begin
                // 发送单周期完成响应，并返回空闲状态
                rsp_valid     <= 1'b1;
                half_count    <= 32'd0;
                timeout_count <= 32'd0;
                scl_o         <= 1'b1;
                sda_oe        <= 1'b0;
                state         <= ST_IDLE;
            end else if ((state != ST_STOP_LOW) &&
                         (state != ST_STOP_HIGH) &&
                         (state != ST_STOP_RELEASE) &&
                         (timeout_count >= CMD_TIMEOUT_LAST)) begin
                // 总线超时：强行切入停止位序列释放总线，上报 timeout 异常
                timeout       <= 1'b1;
                nack          <= 1'b0;
                timeout_count <= 32'd0;
                half_count    <= 32'd0;
                scl_o         <= 1'b0;
                sda_oe        <= 1'b1;
                state         <= ST_STOP_LOW;
            end else begin
                timeout_count <= timeout_count + 1'b1;

                // 步进计时：半个 SCCB 周期切换一次状态
                if (half_count >= HALF_PERIOD_LAST) begin
                    half_count <= 32'd0;

                    case (state)
                        // 1. 起始条件生成 (START)
                        ST_START_HOLD: begin
                            // SCL 为高时将 SDA 拉低，形成 START
                            scl_o  <= 1'b1;
                            sda_oe <= 1'b1;
                            state  <= ST_START_DRIVE;
                        end

                        ST_START_DRIVE: begin
                            // SCL 拉低，准备发送最高位数据 (Bit 7)
                            scl_o     <= 1'b0;
                            sda_oe    <= ~tx_shift[7];
                            bit_index <= 3'd7;
                            state     <= ST_TX_LOW;
                        end

                        // 2. 数据发送循环 (8-bit TX)
                        ST_TX_LOW: begin
                            // SCL 拉高，从机在此高电平期间采样数据位
                            scl_o <= 1'b1;
                            state <= ST_TX_HIGH;
                        end

                        ST_TX_HIGH: begin
                            scl_o <= 1'b0; // SCL 拉低，准备切换下一位

                            if (bit_index == 3'd0) begin
                                // 8 位发送完毕，释放 SDA 准备在第 9 拍接收从机应答
                                sda_oe <= 1'b0;
                                state  <= ST_ACK_LOW;
                            end else begin
                                bit_index <= bit_index - 1'b1;
                                sda_oe    <= ~tx_shift[bit_index - 1'b1];
                                state     <= ST_TX_LOW;
                            end
                        end

                        // 3. 应答采样阶段 (ACK/NACK)
                        ST_ACK_LOW: begin
                            scl_o <= 1'b1; // SCL 拉高，采样 SDA 确认从机是否应答
                            state <= ST_ACK_HIGH;
                        end

                        ST_ACK_HIGH: begin
                            if (sda_i) begin
                                // SDA 仍为高电平：说明未得到应答 (NACK)，终止传输并退出
                                nack   <= 1'b1;
                                scl_o  <= 1'b0;
                                sda_oe <= 1'b1;
                                state  <= ST_STOP_LOW;
                            end else begin
                                // 收到 ACK (SDA 为低)，推进至下一阶段
                                case (tx_step)
                                    STEP_DEV_WRITE: begin
                                        tx_shift  <= reg_addr_latched[15:8];
                                        tx_step   <= STEP_REG_HIGH;
                                        bit_index <= 3'd7;
                                        scl_o     <= 1'b0;
                                        sda_oe    <= ~reg_addr_latched[15];
                                        state     <= ST_TX_LOW;
                                    end

                                    STEP_REG_HIGH: begin
                                        tx_shift  <= reg_addr_latched[7:0];
                                        tx_step   <= STEP_REG_LOW;
                                        bit_index <= 3'd7;
                                        scl_o     <= 1'b0;
                                        sda_oe    <= ~reg_addr_latched[7];
                                        state     <= ST_TX_LOW;
                                    end

                                    STEP_REG_LOW: begin
                                        if (cmd_read_latched) begin
                                            // 读事务：产生重复起始条件 (Repeated START) 切换为读地址
                                            scl_o  <= 1'b0;
                                            sda_oe <= 1'b0;
                                            state  <= ST_RESTART_LOW;
                                        end else begin
                                            // 写事务：发送写入数据字节
                                            tx_shift  <= wr_data_latched;
                                            tx_step   <= STEP_WRITE_DATA;
                                            bit_index <= 3'd7;
                                            scl_o     <= 1'b0;
                                            sda_oe    <= ~wr_data_latched[7];
                                            state     <= ST_TX_LOW;
                                        end
                                    end

                                    STEP_WRITE_DATA: begin
                                        // 写数据完毕，进入停止序列
                                        scl_o  <= 1'b0;
                                        sda_oe <= 1'b1;
                                        state  <= ST_STOP_LOW;
                                    end

                                    STEP_DEV_READ: begin
                                        // 读地址已被从机应答，准备接收来自从机的数据
                                        rx_shift  <= 8'd0;
                                        bit_index <= 3'd7;
                                        scl_o     <= 1'b0;
                                        sda_oe    <= 1'b0; // 释放 SDA 供从机驱动
                                        state     <= ST_RX_LOW;
                                    end

                                    default: begin
                                        timeout <= 1'b1;
                                        nack    <= 1'b0;
                                        scl_o   <= 1'b0;
                                        sda_oe  <= 1'b1;
                                        state   <= ST_STOP_LOW;
                                    end
                                endcase
                            end
                        end

                        // 4. 重复起始序列 (Repeated START)
                        ST_RESTART_LOW: begin
                            scl_o  <= 1'b1;
                            sda_oe <= 1'b0;
                            state  <= ST_RESTART_HIGH;
                        end

                        ST_RESTART_HIGH: begin
                            // SCL 保持高电平时拉低 SDA，产生 Repeated START
                            scl_o  <= 1'b1;
                            sda_oe <= 1'b1;
                            state  <= ST_RESTART_DRIVE;
                        end

                        ST_RESTART_DRIVE: begin
                            // 切换为读设备地址 (低位赋 1)
                            tx_shift  <= {dev_addr_latched, 1'b1};
                            tx_step   <= STEP_DEV_READ;
                            bit_index <= 3'd7;
                            scl_o     <= 1'b0;
                            sda_oe    <= ~dev_addr_latched[6];
                            state     <= ST_TX_LOW;
                        end

                        // 5. 数据接收阶段 (8-bit RX)
                        ST_RX_LOW: begin
                            scl_o  <= 1'b1; // SCL 抬高采样从机输出
                            sda_oe <= 1'b0;
                            state  <= ST_RX_HIGH;
                        end

                        ST_RX_HIGH: begin
                            scl_o <= 1'b0;

                            if (bit_index == 3'd0) begin
                                rx_shift[0] <= sda_i;
                                sda_oe      <= 1'b0;
                                state       <= ST_NACK_LOW;
                            end else begin
                                rx_shift[bit_index] <= sda_i;
                                bit_index           <= bit_index - 1'b1;
                                sda_oe              <= 1'b0;
                                state               <= ST_RX_LOW;
                            end
                        end

                        // 6. 主机发送 NACK（单字节读结束标志）
                        ST_NACK_LOW: begin
                            rd_data <= rx_shift;
                            scl_o   <= 1'b1;
                            sda_oe  <= 1'b0; // 主机释放 SDA (保持高电平即为 NACK)
                            state   <= ST_NACK_HIGH;
                        end

                        ST_NACK_HIGH: begin
                            scl_o  <= 1'b0;
                            sda_oe <= 1'b1; // 拉低 SDA 准备形成 STOP
                            state  <= ST_STOP_LOW;
                        end

                        // 7. 停止条件生成 (STOP)
                        ST_STOP_LOW: begin
                            scl_o  <= 1'b1; // SCL 抬高
                            sda_oe <= 1'b1; // SDA 维持为低
                            state  <= ST_STOP_HIGH;
                        end

                        ST_STOP_HIGH: begin
                            // SCL 为高电平期间释放 SDA (跳变为高)，形成 STOP 条件
                            scl_o  <= 1'b1;
                            sda_oe <= 1'b0;
                            state  <= ST_STOP_RELEASE;
                        end

                        ST_STOP_RELEASE: begin
                            // STOP 结束，总线完全释放，进入响应上报阶段
                            scl_o  <= 1'b1;
                            sda_oe <= 1'b0;
                            state  <= ST_RESPONSE;
                        end

                        default: begin
                            timeout <= 1'b1;
                            nack    <= 1'b0;
                            scl_o   <= 1'b0;
                            sda_oe  <= 1'b1;
                            state   <= ST_STOP_LOW;
                        end
                    endcase
                end else begin
                    half_count <= half_count + 1'b1;
                end
            end
        end
    end

endmodule

`default_nettype wire