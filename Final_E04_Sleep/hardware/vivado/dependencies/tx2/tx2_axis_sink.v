`timescale 1ns / 1ps

module tx2_axis_sink (
    (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 pixel_clk CLK" *)
    (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF s, ASSOCIATED_RESET rst_n, FREQ_HZ 74250000" *)
    input wire pixel_clk,
    (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 serial_clk CLK" *)
    (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME serial_clk, FREQ_HZ 371250000" *)
    input wire serial_clk,
    (* X_INTERFACE_INFO="xilinx.com:signal:reset:1.0 rst_n RST" *)
    (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *)
    input wire rst_n,
    (* X_INTERFACE_INFO="xilinx.com:interface:axis:1.0 s TVALID" *)
    input wire s_tvalid,
    (* X_INTERFACE_INFO="xilinx.com:interface:axis:1.0 s TREADY" *)
    output wire s_tready,
    (* X_INTERFACE_INFO="xilinx.com:interface:axis:1.0 s TDATA" *)
    input wire [15:0] s_tdata,
    (* X_INTERFACE_INFO="xilinx.com:interface:axis:1.0 s TUSER" *)
    input wire s_tuser,
    (* X_INTERFACE_INFO="xilinx.com:interface:axis:1.0 s TLAST" *)
    input wire s_tlast,
    output wire [2:0] tmds_data_p,
    output wire [2:0] tmds_data_n,
    (* X_INTERFACE_IGNORE="true" *) output wire tmds_clk_p,
    (* X_INTERFACE_IGNORE="true" *) output wire tmds_clk_n,
    output wire [31:0] status,
    (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 box_src_clk CLK" *)
    (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME box_src_clk, ASSOCIATED_RESET box_src_rst_n, FREQ_HZ 100000000" *)
    input wire box_src_clk,
    (* X_INTERFACE_INFO="xilinx.com:signal:reset:1.0 box_src_rst_n RST" *)
    (* X_INTERFACE_PARAMETER="XIL_INTERFACENAME box_src_rst_n, POLARITY ACTIVE_LOW" *)
    input wire box_src_rst_n,
    input wire box_send,box_recover,box_invalidate,
    input wire hdmi_disable,
    input wire [447:0] box_payload,
    output wire box_busy,box_ack,box_timeout,box_channel_ready,box_reset_event,box_expired
);
    wire [23:0] rgb;
    wire de;
    wire hs;
    wire vs;
    wire underflow;
    wire [15:0] frames;
    wire [10:0] active_x;
    wire [9:0] active_y;
    wire pixel_ok,frame_start;
    wire [447:0] applied_payload;
    wire mailbox_box_valid,mailbox_update;
    wire [23:0] overlay_rgb;
    wire overlay_de,overlay_hs,overlay_vs;
    wire [23:0] status_rgb;
    wire status_de,status_hs,status_vs;
    reg [10:0] osd_x;
    reg [9:0] osd_y;
    reg sleep_mode;
    (* ASYNC_REG = "TRUE" *) reg disable_meta,disable_sync;
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin disable_meta <= 1'b0; disable_sync <= 1'b0; end
        else begin disable_meta <= hdmi_disable; disable_sync <= disable_meta; end
    end
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin osd_x<=11'd0; osd_y<=10'd0; sleep_mode<=1'b0; end
        else begin
            osd_x<=active_x; osd_y<=active_y;
            if (frame_start) sleep_mode<=disable_sync;
        end
    end
    // Validate full-width payload before narrowing to the overlay's 9-bit ports.
    wire [31:0] bx=applied_payload[63:32],by=applied_payload[95:64];
    wire [31:0] bw=applied_payload[127:96],bh=applied_payload[159:128];
    wire legal_box=mailbox_box_valid && applied_payload[31:0]==32'd1 &&
        bx<400 && by<240 && bw!=0 && bh!=0 && bw<=400-bx && bh<=240-by;
    tx2_axis_viewport u_view(.pixel_clk(pixel_clk),.rst_n(rst_n),
        .s_tvalid(s_tvalid),.s_tready(s_tready),.s_tdata(s_tdata),.s_tuser(s_tuser),.s_tlast(s_tlast),
        .rgb(rgb),.de(de),.hs(hs),.vs(vs),.underflow_sticky(underflow),.frames_displayed(frames),
        .active_x(active_x),.active_y(active_y),.pixel_ok(pixel_ok),.frame_start(frame_start),
        .preview_suspend(disable_sync));
    bbox_mailbox u_box_mailbox(.src_clk(box_src_clk),.src_rst_n(box_src_rst_n),
        .dst_clk(pixel_clk),.dst_rst_n(rst_n),.src_send(box_send),.src_recover(box_recover),
        .invalidate(box_invalidate),.src_payload(box_payload),.dst_frame_start(frame_start),
        .src_busy(box_busy),.src_ack(box_ack),.src_timeout(box_timeout),
        .src_channel_ready(box_channel_ready),.src_reset_event(box_reset_event),
        .dst_payload(applied_payload),.dst_update(mailbox_update),.dst_box_valid(mailbox_box_valid),.expired(box_expired));
    hdmi_bbox_overlay u_box_overlay(.pixel_clk(pixel_clk),.rst_n(rst_n),
        .rgb_i(rgb),.de_i(de),.hs_i(hs),.vs_i(vs),.pixel_ok_i(pixel_ok),
        .x_i(active_x),.y_i(active_y),.box_valid(legal_box),
        .box_x(bx[8:0]),.box_y(by[8:0]),.box_w(bw[8:0]),.box_h(bh[8:0]),
        .rgb_o(overlay_rgb),.de_o(overlay_de),.hs_o(overlay_hs),.vs_o(overlay_vs));
    // 休眠时只停DDR预览读取，TMDS继续发送静态提示；工作时保留视频和绿框。
    tx2_sleep_osd u_sleep_osd(.pixel_clk(pixel_clk),.rst_n(rst_n),.sleep_mode(sleep_mode),
        .rgb_i(overlay_rgb),.de_i(overlay_de),.hs_i(overlay_hs),.vs_i(overlay_vs),
        .x_i(osd_x),.y_i(osd_y),.rgb_o(status_rgb),.de_o(status_de),.hs_o(status_hs),.vs_o(status_vs));
    tx2_video_out u_tx(pixel_clk,serial_clk,rst_n,status_rgb,status_de,status_hs,status_vs,
                      tmds_data_p,tmds_data_n,tmds_clk_p,tmds_clk_n,1'b1);
    // 状态由像素时钟域GPIO采样，AXI时钟转换器完成到100MHz的可靠跨域。
    assign status = {frames,15'd0,underflow};
endmodule
