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
    // Validate full-width payload before narrowing to the overlay's 9-bit ports.
    wire [31:0] bx=applied_payload[63:32],by=applied_payload[95:64];
    wire [31:0] bw=applied_payload[127:96],bh=applied_payload[159:128];
    wire legal_box=mailbox_box_valid && applied_payload[31:0]==32'd1 &&
        bx<400 && by<240 && bw!=0 && bh!=0 && bw<=400-bx && bh<=240-by;
    tx2_axis_viewport u_view(.pixel_clk(pixel_clk),.rst_n(rst_n),
        .s_tvalid(s_tvalid),.s_tready(s_tready),.s_tdata(s_tdata),.s_tuser(s_tuser),.s_tlast(s_tlast),
        .rgb(rgb),.de(de),.hs(hs),.vs(vs),.underflow_sticky(underflow),.frames_displayed(frames),
        .active_x(active_x),.active_y(active_y),.pixel_ok(pixel_ok),.frame_start(frame_start));
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
    tx2_video_out u_tx(pixel_clk,serial_clk,rst_n,overlay_rgb,overlay_de,overlay_hs,overlay_vs,
                      tmds_data_p,tmds_data_n,tmds_clk_p,tmds_clk_n);
    // 状态由像素时钟域GPIO采样，AXI时钟转换器完成到100MHz的可靠跨域。
    assign status = {frames,15'd0,underflow};
endmodule
