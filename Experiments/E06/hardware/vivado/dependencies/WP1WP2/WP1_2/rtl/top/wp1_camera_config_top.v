`timescale 1ns / 1ps

module wp1_camera_config_top (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,

    output wire        camera_scl,
    inout  wire        camera_sda,

    output wire        init_done,
    output wire        init_error,
    output wire [7:0]  error_code,
    output wire [15:0] sensor_id,
    output wire        sccb_busy,
    output wire        sccb_nack,
    output wire        sccb_timeout
);

    wire        cmd_valid;
    wire        cmd_ready;
    wire        cmd_read;
    wire [6:0]  dev_addr;
    wire [15:0] reg_addr;
    wire [7:0]  wr_data;
    wire        rsp_valid;
    wire [7:0]  rd_data;
    wire        sda_o;
    wire        sda_oe;
    wire        sda_i;

  
    assign camera_sda = sda_oe ? sda_o : 1'bz;
    assign sda_i      = camera_sda;

    sccb_master #(
        .CLK_HZ  (50_000_000),
        .SCCB_HZ (100_000)
    ) u_sccb_master (
        .clk       (clk),
        .rst_n     (rst_n),
        .cmd_valid (cmd_valid),
        .cmd_ready (cmd_ready),
        .cmd_read  (cmd_read),
        .dev_addr  (dev_addr),
        .reg_addr  (reg_addr),
        .wr_data   (wr_data),
        .rsp_valid (rsp_valid),
        .rd_data   (rd_data),
        .nack      (sccb_nack),
        .timeout   (sccb_timeout),
        .busy      (sccb_busy),
        .scl_o     (camera_scl),
        .sda_o     (sda_o),
        .sda_oe    (sda_oe),
        .sda_i     (sda_i)
    );

    ov5640_init #(
        .CLK_HZ    (50_000_000),
        .ROM_DEPTH (512),
        .ROM_COUNT (256)
    ) u_ov5640_init (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (start),
        .cmd_valid  (cmd_valid),
        .cmd_ready  (cmd_ready),
        .cmd_read   (cmd_read),
        .dev_addr   (dev_addr),
        .reg_addr   (reg_addr),
        .wr_data    (wr_data),
        .rsp_valid  (rsp_valid),
        .rd_data    (rd_data),
        .nack       (sccb_nack),
        .timeout    (sccb_timeout),
        .init_done  (init_done),
        .init_error (init_error),
        .error_code (error_code),
        .sensor_id  (sensor_id)
    );

endmodule
