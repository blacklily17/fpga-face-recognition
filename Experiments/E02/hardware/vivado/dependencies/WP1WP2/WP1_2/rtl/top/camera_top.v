`timescale 1ns / 1ps

module camera_top (
    // 系统物理接口
    input  wire        sys_clk,       // 50MHz 时钟输入 (Y9)[cite: 11]
    input  wire        sys_rst_n,     // 复位按键 (P17)[cite: 11]

    // 摄像头物理接口
    output wire        cam_xclk,      // 输出给摄像头的驱动时钟 (AA18)[cite: 3, 11]
    output wire        cam_pwdn_n,    // 摄像头复位引脚，必须拉高使能 (N20)[cite: 11]
    output wire        cam_scl,       // SCCB I2C 时钟 (U22)[cite: 3, 11]
    inout  wire        cam_sda,       // SCCB I2C 数据 (T22)[cite: 3, 11]
    input  wire        cam_pclk,      // 像素时钟 (Y18)[cite: 1, 3, 11]
    input  wire        cam_vsync,     // 场同步 (U21)[cite: 1, 3, 11]
    input  wire        cam_href,      // 行有效 (T21)[cite: 1, 3, 11]
    input  wire [7:0]  cam_data,      // 图像数据 (U17~W21)[cite: 1, 3, 11]

    // 板载指示灯
    output wire [3:0]  led            // LED0~LED3 (N22, P22, R18, T18)[cite: 11]
);

    // 1. 生成 25MHz cam_xclk 时钟并释放摄像头硬件复位
    reg clk_25m = 1'b0;
    always @(posedge sys_clk) begin
        clk_25m <= ~clk_25m;          // 50MHz 二分频得到 25MHz，满足 OV5640 运行需求
    end
    assign cam_xclk   = clk_25m;
    assign cam_pwdn_n = 1'b1;         // 拉高释放硬件复位[cite: 11]

    // 内部总线连线
    wire        init_done;
    wire        frame_good;
    wire        px_valid;
    wire [15:0] rgb565;
    wire [7:0]  gray8;
    wire        px_sof;
    wire        px_eol;

    // 2. 实例化 WP1 顶层配置模块[cite: 4]
    wp1_camera_config_top u_wp1 (
        .clk           (sys_clk),
        .rst_n         (sys_rst_n),
        .start         (1'b1),         // 复位释放后自启动配置
        .camera_scl    (cam_scl),
        .camera_sda    (cam_sda),
        .init_done     (init_done),    // 配置成功后拉高
        .init_error    (),
        .error_code    (),
        .sensor_id     (),
        .sccb_busy     (),
        .sccb_nack     (),
        .sccb_timeout  ()
    );

    // 3. 跨时钟域打拍：将 50MHz 域的 init_done 同步到 cam_pclk 域
    reg rst_pclk_m, rst_pclk_sync;
    always @(posedge cam_pclk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            rst_pclk_m    <= 1'b0;
            rst_pclk_sync <= 1'b0;
        end else begin
            rst_pclk_m    <= init_done;
            rst_pclk_sync <= rst_pclk_m;
        end
    end

    // 4. 实例化 WP2 顶层图像接收模块[cite: 1]
    wp2_camera_top #(
        .ACTIVE_W        (800),
        .ACTIVE_H        (480),
        .HIGH_BYTE_FIRST (1'b0)        // 0: 低字节在前
    ) u_wp2 (
        .cam_pclk      (cam_pclk),
        .cam_rst_n     (rst_pclk_sync), // 开机完成且 pclk 稳定后释放复位[cite: 3]
        .cam_vsync     (cam_vsync),
        .cam_href      (cam_href),
        .cam_data      (cam_data),
        .fifo_overflow (1'b0),          // 暂无溢出反馈，固定接地[cite: 1]
        .px_valid      (px_valid),      // 像素有效
        .rgb565        (rgb565),        // RGB565 像素流[cite: 1, 2, 3]
        .gray8         (gray8),         // 8 位灰度像素流[cite: 1, 2, 3]
        .px_sof        (px_sof),
        .px_eol        (px_eol),
        .frame_good    (frame_good),    // 合格帧标志
        .raw_valid     (),
        .raw_data      (),
        .raw_sof       (),
        .raw_eol       (),
        .raw_byte_x    (),
        .raw_y         (),
        .frame_done    (),
        .frame_error   (),
        .frames_seen   (),
        .frames_good   (),
        .frames_bad    (),
        .frames_dropped(),
        .last_error    ()
    );

    // 5. 板载状态指示诊断逻辑
    // 对好帧计数，每收到 16 帧完整图像翻转一次电平
    reg [4:0] frame_cnt;
    always @(posedge cam_pclk or negedge rst_pclk_sync) begin
        if (!rst_pclk_sync)
            frame_cnt <= 5'd0;
        else if (frame_good)
            frame_cnt <= frame_cnt + 1'b1;
    end

    // 采样画面中央像素的灰度最高位 (用于手电筒/遮光物理测试)
    reg gray_msb;
    always @(posedge cam_pclk) begin
        if (px_valid)
            gray_msb <= gray8[7];
    end

    assign led[0] = init_done;     // LED0: WP1 初始化成功标志 (常亮代表 I2C 通信完成)[cite: 3]
    assign led[1] = frame_cnt[4];  // LED1: WP2 帧心跳 (以约 1~2Hz 均匀闪烁，说明以 30fps 正常收图)[cite: 3]
    assign led[2] = gray_msb;      // LED2: 亮度指示 (照光亮，遮黑灭)
    assign led[3] = sys_rst_n;     // LED3: 电源/复位正常指示

endmodule