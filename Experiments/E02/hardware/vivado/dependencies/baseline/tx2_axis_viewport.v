`timescale 1ns / 1ps

module tx2_axis_viewport #(
    parameter H_ACTIVE=1280, H_FRONT=110, H_SYNC=40, H_BACK=220,
    parameter V_ACTIVE=720, V_FRONT=5, V_SYNC=5, V_BACK=20,
    parameter IMAGE_W=800, IMAGE_H=480
) (
    input wire pixel_clk,
    input wire rst_n,
    input wire s_tvalid,
    output wire s_tready,
    input wire [15:0] s_tdata,
    input wire s_tuser,
    input wire s_tlast,
    output reg [23:0] rgb,
    output reg de,
    output reg hs,
    output reg vs,
    output reg underflow_sticky,
    output reg [15:0] frames_displayed
);
    localparam LEFT=H_SYNC+H_BACK+(H_ACTIVE-IMAGE_W)/2;
    localparam TOP=V_SYNC+V_BACK+(V_ACTIVE-IMAGE_H)/2;
    wire [11:0] h_count;
    wire [11:0] v_count;
    wire active;
    wire raw_hs;
    wire raw_vs;
    wire window;
    wire first_pixel;
    wire last_column;
    wire last_pixel;
    reg stream_locked;
    wire marker_ok;

    // 720p完整有效区仍输出DE，800x480之外补黑，不进行昂贵的缩放。
    tx2_raster #(
        .H_ACTIVE(H_ACTIVE),.H_FRONT(H_FRONT),.H_SYNC(H_SYNC),.H_BACK(H_BACK),
        .V_ACTIVE(V_ACTIVE),.V_FRONT(V_FRONT),.V_SYNC(V_SYNC),.V_BACK(V_BACK)
    ) u_raster(pixel_clk,rst_n,h_count,v_count,active,raw_hs,raw_vs);
    assign window = (h_count >= LEFT) && (h_count < LEFT+IMAGE_W) &&
                    (v_count >= TOP) && (v_count < TOP+IMAGE_H);
    assign first_pixel = (h_count == LEFT) && (v_count == TOP);
    assign last_column = h_count == LEFT+IMAGE_W-1;
    assign last_pixel = last_column && (v_count == TOP+IMAGE_H-1);
    // 未对齐时排空旧帧残留，但停在新的SOF，等待下一个显示窗口。
    assign s_tready = rst_n && ((window && (stream_locked || first_pixel)) ||
                        (!stream_locked && s_tvalid && !s_tuser));
    assign marker_ok = (s_tuser == first_pixel) && (s_tlast == last_column);

    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin
            rgb <= 24'd0;
            de <= 1'b0;
            hs <= 1'b0;
            vs <= 1'b0;
            stream_locked <= 1'b0;
            underflow_sticky <= 1'b0;
            frames_displayed <= 16'd0;
        end else begin
            rgb <= 24'd0;
            de <= active;
            hs <= raw_hs;
            vs <= raw_vs;
            if (window && (stream_locked || first_pixel)) begin
                if (s_tvalid && s_tready && marker_ok) begin
                    rgb <= {{s_tdata[15:11],s_tdata[15:13]},
                            {s_tdata[10:5],s_tdata[10:9]},
                            {s_tdata[4:0],s_tdata[4:2]}};
                    stream_locked <= !last_pixel;
                    if (last_pixel) frames_displayed <= frames_displayed+16'd1;
                end else begin
                    stream_locked <= 1'b0;
                    // 首帧到达前保持黑场，已有帧显示后才锁存欠载。
                    if ((frames_displayed != 16'd0) || s_tvalid || stream_locked)
                        underflow_sticky <= 1'b1;
                end
            end
        end
    end
endmodule
