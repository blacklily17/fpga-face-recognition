`timescale 1ns / 1ps
`default_nettype none

// M4: OV5640 上电初始化调度状态机，通过握手接口控制 M3 (sccb_master)
module ov5640_init #(
    parameter integer CLK_HZ    = 50_000_000, // 系统时钟频率
    parameter integer ROM_DEPTH = 512,        // 配置 ROM 容量上限
    parameter integer ROM_COUNT = 0           // 实际生效的配置条目数
) (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,                 // 启动脉冲/电平（内部采上升沿）

    // 命令发送接口（对接 M3 sccb_master）
    output reg         cmd_valid,             // 命令有效指示
    input  wire        cmd_ready,             // M3 空闲就绪指示
    output reg         cmd_read,              // 0: 写寄存器; 1: 读寄存器
    output reg  [6:0]  dev_addr,              // 7 位从机地址 (7'h3C)
    output reg  [15:0] reg_addr,              // 16 位寄存器地址
    output reg  [7:0]  wr_data,               // 待写入寄存器的 8 位数据

    // 响应接收接口（对接 M3 sccb_master）
    input  wire        rsp_valid,             // 响应有效脉冲（单周期）
    input  wire [7:0]  rd_data,               // M3 读回的数据
    input  wire        nack,                  // 从机无应答标志
    input  wire        timeout,               // 通信超时标志

    // 状态输出指示
    output reg         init_done,             // 初始化成功（高电平保持）
    output reg         init_error,            // 初始化失败（高电平保持）
    output reg  [7:0]  error_code,            // 失败原因编码
    output reg  [15:0] sensor_id              // 读出的芯片 ID（正常为 16'h5640）
);

    // 延时计数：上电后等待 20 ms (50 MHz / 50)
    localparam integer POWER_WAIT_CYCLES = CLK_HZ / 50;
    localparam [31:0]  POWER_WAIT_LAST   = POWER_WAIT_CYCLES - 1;

    // 延时计数：软件复位后等待 5 ms (50 MHz / 200)
    localparam integer RESET_WAIT_CYCLES = CLK_HZ / 200;
    localparam [31:0]  RESET_WAIT_LAST   = RESET_WAIT_CYCLES - 1;

    // 状态机编码
    localparam [4:0] ST_IDLE             = 5'd0,
                     ST_POWER_WAIT       = 5'd1,
                     ST_SEND_CLK_SOURCE  = 5'd2,
                     ST_WAIT_CLK_SOURCE  = 5'd3,
                     ST_SEND_SW_RESET    = 5'd4,
                     ST_WAIT_SW_RESET    = 5'd5,
                     ST_RESET_WAIT       = 5'd6,
                     ST_SEND_ID_HIGH     = 5'd7,
                     ST_WAIT_ID_HIGH     = 5'd8,
                     ST_SEND_ID_LOW      = 5'd9,
                     ST_WAIT_ID_LOW      = 5'd10,
                     ST_CHECK_ID         = 5'd11,
                     ST_ROM_READ         = 5'd12,
                     ST_LOAD_ROM         = 5'd13,
                     ST_SEND_ROM         = 5'd14,
                     ST_WAIT_ROM         = 5'd15,
                     ST_DONE             = 5'd16,
                     ST_ERROR            = 5'd17;

    // 故障状态码定义
    localparam [7:0] ERR_NONE             = 8'h00, // 正常无错误
                     ERR_ROM_RANGE        = 8'h01, // ROM 条目数超出容量限制
                     ERR_PREAMBLE_NACK    = 8'h10, // 复位前导阶段收到 NACK
                     ERR_PREAMBLE_TIMEOUT = 8'h11, // 复位前导阶段超时
                     ERR_ID_NACK          = 8'h20, // 读芯片 ID 时收到 NACK
                     ERR_ID_TIMEOUT       = 8'h21, // 读芯片 ID 时超时
                     ERR_ID_MISMATCH      = 8'h22, // 芯片 ID 与 16'h5640 不匹配
                     ERR_ROM_NACK         = 8'h30, // 烧录配置 ROM 阶段收到 NACK
                     ERR_ROM_TIMEOUT      = 8'h31; // 烧录配置 ROM 阶段超时

    localparam [15:0] EXPECTED_SENSOR_ID = 16'h5640;
    localparam [6:0]  OV5640_ADDR        = 7'h3C;
    localparam [8:0]  ROM_COUNT_LAST     = ROM_COUNT[8:0] - 9'd1;

    reg [4:0]  state;
    reg        start_d;
    reg [31:0] wait_count;
    reg [8:0]  rom_index;
    reg [23:0] rom_data;

    // 指定 Vivado 综合为专有块状 RAM (Block RAM)，避免生成过深的组合逻辑选择器
    (* rom_style = "block" *) reg [23:0] config_rom [0:ROM_DEPTH-1];

    // 边沿捕获：提取 start 上升沿脉冲
    wire start_pulse;
    assign start_pulse = start & ~start_d;

    // 初始化时从外部 hex 文本载入配置数据（高 16 位为地址，低 8 位为数据）
    initial begin
        $readmemh("ov5640_800x480_rgb565_30fps.mem", config_rom);

        if (CLK_HZ <= 0 || ROM_DEPTH <= 0) begin
            $error("CLK_HZ and ROM_DEPTH must be greater than zero.");
        end
        if (ROM_COUNT > ROM_DEPTH) begin
            $error("ROM_COUNT must not exceed ROM_DEPTH.");
        end
    end

    // 同步读逻辑（推断 BRAM 所需的标准时钟流水寄存）
    always @(posedge clk) begin
        rom_data <= config_rom[rom_index];
    end

    // 初始化主状态机
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= ST_IDLE;
            start_d     <= 1'b0;
            wait_count  <= 32'd0;
            rom_index   <= 9'd0;
            cmd_valid   <= 1'b0;
            cmd_read    <= 1'b0;
            dev_addr    <= OV5640_ADDR;
            reg_addr    <= 16'd0;
            wr_data     <= 8'd0;
            init_done   <= 1'b0;
            init_error  <= 1'b0;
            error_code  <= ERR_NONE;
            sensor_id   <= 16'd0;
        end else begin
            start_d <= start;

            case (state)
                // 1. 空闲态：捕获启动上升沿
                ST_IDLE: begin
                    cmd_valid <= 1'b0;
                    if (start_pulse) begin
                        init_done  <= 1'b0;
                        init_error <= 1'b0;
                        error_code <= ERR_NONE;
                        sensor_id  <= 16'd0;
                        rom_index  <= 9'd0;
                        wait_count <= 32'd0;
                        dev_addr   <= OV5640_ADDR;
                        state      <= ST_POWER_WAIT;
                    end
                end

                // 2. 上电等待态：延时 20 ms 确保硬件平稳
                ST_POWER_WAIT: begin
                    cmd_valid <= 1'b0;
                    if ((ROM_COUNT <= 0) || (ROM_COUNT > ROM_DEPTH)) begin
                        init_error <= 1'b1;
                        error_code <= ERR_ROM_RANGE;
                        state      <= ST_ERROR;
                    end else if (wait_count >= POWER_WAIT_LAST) begin
                        wait_count <= 32'd0;
                        state      <= ST_SEND_CLK_SOURCE;
                    end else begin
                        wait_count <= wait_count + 1'b1;
                    end
                end

                // 3. 配置内部时钟源：向 0x3103 写入 0x11
                ST_SEND_CLK_SOURCE: begin
                    cmd_read <= 1'b0;
                    reg_addr <= 16'h3103;
                    wr_data  <= 8'h11;

                    if (!cmd_valid) begin
                        cmd_valid <= 1'b1;
                    end else if (cmd_ready) begin
                        cmd_valid <= 1'b0;
                        state     <= ST_WAIT_CLK_SOURCE;
                    end
                end

                ST_WAIT_CLK_SOURCE: begin
                    if (rsp_valid) begin
                        if (timeout) begin
                            init_error <= 1'b1;
                            error_code <= ERR_PREAMBLE_TIMEOUT;
                            state      <= ST_ERROR;
                        end else if (nack) begin
                            init_error <= 1'b1;
                            error_code <= ERR_PREAMBLE_NACK;
                            state      <= ST_ERROR;
                        end else begin
                            state <= ST_SEND_SW_RESET;
                        end
                    end
                end

                // 4. 触发软件复位：向 0x3008 写入 0x82
                ST_SEND_SW_RESET: begin
                    cmd_read <= 1'b0;
                    reg_addr <= 16'h3008;
                    wr_data  <= 8'h82;

                    if (!cmd_valid) begin
                        cmd_valid <= 1'b1;
                    end else if (cmd_ready) begin
                        cmd_valid <= 1'b0;
                        state     <= ST_WAIT_SW_RESET;
                    end
                end

                ST_WAIT_SW_RESET: begin
                    if (rsp_valid) begin
                        if (timeout) begin
                            init_error <= 1'b1;
                            error_code <= ERR_PREAMBLE_TIMEOUT;
                            state      <= ST_ERROR;
                        end else if (nack) begin
                            init_error <= 1'b1;
                            error_code <= ERR_PREAMBLE_NACK;
                            state      <= ST_ERROR;
                        end else begin
                            wait_count <= 32'd0;
                            state      <= ST_RESET_WAIT;
                        end
                    end
                end

                // 5. 软件复位后延时：等待 5 ms
                ST_RESET_WAIT: begin
                    if (wait_count >= RESET_WAIT_LAST) begin
                        wait_count <= 32'd0;
                        state      <= ST_SEND_ID_HIGH;
                    end else begin
                        wait_count <= wait_count + 1'b1;
                    end
                end

                // 6. 读取芯片 ID 高字节 (0x300A)
                ST_SEND_ID_HIGH: begin
                    cmd_read <= 1'b1;
                    reg_addr <= 16'h300A;
                    wr_data  <= 8'd0;

                    if (!cmd_valid) begin
                        cmd_valid <= 1'b1;
                    end else if (cmd_ready) begin
                        cmd_valid <= 1'b0;
                        state     <= ST_WAIT_ID_HIGH;
                    end
                end

                ST_WAIT_ID_HIGH: begin
                    if (rsp_valid) begin
                        if (timeout) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ID_TIMEOUT;
                            state      <= ST_ERROR;
                        end else if (nack) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ID_NACK;
                            state      <= ST_ERROR;
                        end else begin
                            sensor_id[15:8] <= rd_data;
                            state           <= ST_SEND_ID_LOW;
                        end
                    end
                end

                // 7. 读取芯片 ID 低字节 (0x300B)
                ST_SEND_ID_LOW: begin
                    cmd_read <= 1'b1;
                    reg_addr <= 16'h300B;
                    wr_data  <= 8'd0;

                    if (!cmd_valid) begin
                        cmd_valid <= 1'b1;
                    end else if (cmd_ready) begin
                        cmd_valid <= 1'b0;
                        state     <= ST_WAIT_ID_LOW;
                    end
                end

                ST_WAIT_ID_LOW: begin
                    if (rsp_valid) begin
                        if (timeout) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ID_TIMEOUT;
                            state      <= ST_ERROR;
                        end else if (nack) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ID_NACK;
                            state      <= ST_ERROR;
                        end else begin
                            sensor_id[7:0] <= rd_data;
                            state          <= ST_CHECK_ID;
                        end
                    end
                end

                // 8. 校验芯片 ID：必须为 16'h5640
                ST_CHECK_ID: begin
                    if (sensor_id == EXPECTED_SENSOR_ID) begin
                        rom_index <= 9'd0;
                        state     <= ST_ROM_READ;
                    end else begin
                        init_error <= 1'b1;
                        error_code <= ERR_ID_MISMATCH;
                        state      <= ST_ERROR;
                    end
                end

                // 9. 遍历写 ROM 配置表（包含一拍 BRAM 流水线延时）
                ST_ROM_READ: begin
                    cmd_valid <= 1'b0;
                    state     <= ST_LOAD_ROM; // 等待 BRAM 输出稳定
                end

                ST_LOAD_ROM: begin
                    cmd_read  <= 1'b0;
                    reg_addr  <= rom_data[23:8]; // 高 16 位为寄存器地址
                    wr_data   <= rom_data[7:0];  // 低 8 位为写入数据
                    cmd_valid <= 1'b0;
                    state     <= ST_SEND_ROM;
                end

                ST_SEND_ROM: begin
                    if (!cmd_valid) begin
                        cmd_valid <= 1'b1;
                    end else if (cmd_ready) begin
                        cmd_valid <= 1'b0;
                        state     <= ST_WAIT_ROM;
                    end
                end

                ST_WAIT_ROM: begin
                    if (rsp_valid) begin
                        if (timeout) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ROM_TIMEOUT;
                            state      <= ST_ERROR;
                        end else if (nack) begin
                            init_error <= 1'b1;
                            error_code <= ERR_ROM_NACK;
                            state      <= ST_ERROR;
                        end else if (rom_index == ROM_COUNT_LAST) begin
                            // 所有寄存器写入完毕，顺利通关
                            init_done  <= 1'b1;
                            init_error <= 1'b0;
                            error_code <= ERR_NONE;
                            state      <= ST_DONE;
                        end else begin
                            rom_index <= rom_index + 1'b1;
                            state     <= ST_ROM_READ;
                        end
                    end
                end

                // 10. 完成与故障挂起态（状态粘滞，直到下一次 start 上升沿复位）
                ST_DONE: begin
                    cmd_valid <= 1'b0;
                    if (start_pulse) begin
                        init_done  <= 1'b0;
                        init_error <= 1'b0;
                        error_code <= ERR_NONE;
                        sensor_id  <= 16'd0;
                        rom_index  <= 9'd0;
                        wait_count <= 32'd0;
                        state      <= ST_POWER_WAIT;
                    end
                end

                ST_ERROR: begin
                    cmd_valid <= 1'b0;
                    if (start_pulse) begin
                        init_done  <= 1'b0;
                        init_error <= 1'b0;
                        error_code <= ERR_NONE;
                        sensor_id  <= 16'd0;
                        rom_index  <= 9'd0;
                        wait_count <= 32'd0;
                        state      <= ST_POWER_WAIT;
                    end
                end

                default: begin
                    cmd_valid  <= 1'b0;
                    init_done  <= 1'b0;
                    init_error <= 1'b1;
                    error_code <= ERR_ROM_RANGE;
                    state      <= ST_ERROR;
                end
            endcase
        end
    end

endmodule

`default_nettype wire

