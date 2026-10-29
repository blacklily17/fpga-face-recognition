`timescale 1ns/1ps

// Safe board wrapper for the delivered WP1 SCCB/OV5640 initializer.
// Camera PWDN/RST are intentionally absent: on AC880 they are fixed by the
// carrier-board pull resistors and are not connected to confirmed PL pins.
module wp1_ov5640_board_if (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk50 CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk50, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000" *)
    input  wire        sys_clk50,
    input  wire        sys_rst_n,
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 xclk24 CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME xclk24, FREQ_HZ 24000000" *)
    input  wire        xclk24,

    output wire        cam_xclk,
    output wire        cam_scl,
    inout  wire        cam_sda,
    output wire [31:0] status,
    input wire slow_request,
    output wire [3:0] rate_status
);
    wire        init_done;
    wire        init_error;
    wire [7:0]  error_code;
    wire [15:0] sensor_id;
    wire        sccb_busy;
    wire        sccb_nack;
    wire        sccb_timeout;
    wire        cmd_valid;
    wire        cmd_ready;
    wire        cmd_read;
    wire [6:0]  dev_addr;
    wire [15:0] reg_addr;
    wire [7:0]  wr_data;
    wire        rsp_valid;
    wire [7:0]  rd_data;
    wire        sda_i;
    wire        sda_o;
    wire        sda_oe;
    wire init_cmd_valid, init_cmd_read;
    wire [6:0] init_dev_addr;
    wire [15:0] init_reg_addr;
    wire [7:0] init_wr_data;
    wire rate_cmd_valid, rate_cmd_read;
    wire [15:0] rate_reg_addr;
    wire [7:0] rate_wr_data;
    wire rate_slow, rate_busy, rate_fault;
    assign cmd_valid = init_done ? rate_cmd_valid : init_cmd_valid;
    assign cmd_read = init_done ? rate_cmd_read : init_cmd_read;
    assign dev_addr = init_done ? 7'h3c : init_dev_addr;
    assign reg_addr = init_done ? rate_reg_addr : init_reg_addr;
    assign wr_data = init_done ? rate_wr_data : init_wr_data;
    assign rate_status = {init_done,rate_fault,rate_busy,rate_slow};
    ov5640_rate_control u_rate (
        .clk(sys_clk50),.rst_n(sys_rst_n),.init_done(init_done),
        .slow_request(slow_request),.cmd_valid(rate_cmd_valid),
        .cmd_ready(cmd_ready && init_done),.cmd_read(rate_cmd_read),
        .reg_addr(rate_reg_addr),.wr_data(rate_wr_data),
        .rsp_valid(rsp_valid && init_done),.rd_data(rd_data),
        .nack(sccb_nack),.timeout(sccb_timeout),
        .slow_applied(rate_slow),.busy(rate_busy),.fault(rate_fault)
    );

    // Forward the Clocking-Wizard 24 MHz clock through an ODDR so the output
    // has a dedicated clock-forwarding path and a clean 50% duty cycle.
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_xclk_forward (
        .Q(cam_xclk),
        .C(xclk24),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .R(1'b0),
        .S(1'b0)
    );

    // Keep the bidirectional buffer at the physical-board boundary.  A
    // tri-state hidden inside a Block Design module reference can otherwise
    // be reduced to an incomplete pad buffer, losing SCCB ACK/readback.
    IOBUF u_sda_iobuf (
        .I(sda_o),
        .T(~sda_oe),
        .O(sda_i),
        .IO(cam_sda)
    );

    sccb_master #(
        .CLK_HZ(50_000_000),
        .SCCB_HZ(100_000)
    ) u_sccb_master (
        .clk(sys_clk50),
        .rst_n(sys_rst_n),
        .cmd_valid(cmd_valid),
        .cmd_ready(cmd_ready),
        .cmd_read(cmd_read),
        .dev_addr(dev_addr),
        .reg_addr(reg_addr),
        .wr_data(wr_data),
        .rsp_valid(rsp_valid),
        .rd_data(rd_data),
        .nack(sccb_nack),
        .timeout(sccb_timeout),
        .busy(sccb_busy),
        .scl_o(cam_scl),
        .sda_o(sda_o),
        .sda_oe(sda_oe),
        .sda_i(sda_i)
    );

    ov5640_init #(
        .CLK_HZ(50_000_000),
        .ROM_DEPTH(512),
        .ROM_COUNT(249)
    ) u_ov5640_init (
        .clk(sys_clk50),
        .rst_n(sys_rst_n),
        .start(1'b1),
        .cmd_valid(init_cmd_valid),
        .cmd_ready(cmd_ready && !init_done),
        .cmd_read(init_cmd_read),
        .dev_addr(init_dev_addr),
        .reg_addr(init_reg_addr),
        .wr_data(init_wr_data),
        .rsp_valid(rsp_valid && !init_done),
        .rd_data(rd_data),
        .nack(sccb_nack),
        .timeout(sccb_timeout),
        .init_done(init_done),
        .init_error(init_error),
        .error_code(error_code),
        .sensor_id(sensor_id)
    );

    // [31:16] sensor ID, [15:8] sticky init error code,
    // [4:0] timeout/nack/busy/error/done.
    assign status = {sensor_id, error_code, 3'b000, sccb_timeout,
                     sccb_nack, sccb_busy, init_error, init_done};
endmodule
