`timescale 1ns / 1ps

// Stage-4A AXI4-Stream video source.
//
// It emits three deliberately different 800x480 RGB565 frames.  A gap after
// every frame gives the PS enough time to stop S2MM after the third completed
// frame, so the captured buffers are never partially overwritten.
module axis_stage4_pattern_source #(
    parameter integer H_ACTIVE   = 800,
    parameter integer V_ACTIVE   = 480,
    parameter integer FRAME_GAP  = 65536
) (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 33333333" *)
    input  wire        axis_aclk,
    input  wire        axis_aresetn,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
    output wire        m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
    input  wire        m_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
    output wire [15:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
    output wire        m_axis_tuser,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
    output wire        m_axis_tlast
);

    reg [9:0]  x;
    reg [8:0]  y;
    reg [1:0]  frame_id;
    reg [16:0] gap_count;
    reg [15:0] pixel;

    wire fire = m_axis_tvalid && m_axis_tready;
    wire in_gap = (gap_count != 0);

    assign m_axis_tvalid = axis_aresetn && !in_gap;
    assign m_axis_tuser  = (x == 0) && (y == 0);
    assign m_axis_tlast  = (x == H_ACTIVE - 1);
    assign m_axis_tdata  = pixel;

    always @* begin
        // Left half: checkerboard. Right half: eight RGB565 colour bands.
        if (x < (H_ACTIVE / 2)) begin
            pixel = (((x >> 5) ^ (y >> 5)) & 1) ? 16'hFFFF : 16'h2104;
        end else begin
            case (y / 60)
                0: pixel = 16'hFFFF;
                1: pixel = 16'hFFE0;
                2: pixel = 16'h07FF;
                3: pixel = 16'h07E0;
                4: pixel = 16'hF81F;
                5: pixel = 16'hF800;
                6: pixel = 16'h001F;
                default: pixel = 16'h0000;
            endcase
        end

        // Cyan centre cross checks the X/Y geometry on every captured frame.
        if (((x >= 398) && (x <= 401)) ||
            ((y >= 238) && (y <= 241))) begin
            pixel = 16'h07FF;
        end

        // Each DDR frame store has a unique border and a 64x64 badge.
        case (frame_id)
            0: begin
                if ((x < 4) || (x >= H_ACTIVE - 4) ||
                    (y < 4) || (y >= V_ACTIVE - 4))
                    pixel = 16'hF800; // red border
                if ((x >= 48) && (x < 112) && (y >= 48) && (y < 112))
                    pixel = 16'hF800; // top-left red badge
            end
            1: begin
                if ((x < 4) || (x >= H_ACTIVE - 4) ||
                    (y < 4) || (y >= V_ACTIVE - 4))
                    pixel = 16'h07E0; // green border
                if ((x >= 368) && (x < 432) && (y >= 208) && (y < 272))
                    pixel = 16'h07E0; // centre green badge
            end
            default: begin
                if ((x < 4) || (x >= H_ACTIVE - 4) ||
                    (y < 4) || (y >= V_ACTIVE - 4))
                    pixel = 16'h001F; // blue border
                if ((x >= 688) && (x < 752) && (y >= 368) && (y < 432))
                    pixel = 16'h001F; // bottom-right blue badge
            end
        endcase
    end

    always @(posedge axis_aclk) begin
        if (!axis_aresetn) begin
            x         <= 0;
            y         <= 0;
            frame_id  <= 0;
            gap_count <= 0;
        end else if (in_gap) begin
            gap_count <= gap_count - 1'b1;
        end else if (fire) begin
            if (x == H_ACTIVE - 1) begin
                x <= 0;
                if (y == V_ACTIVE - 1) begin
                    y <= 0;
                    frame_id <= (frame_id == 2) ? 0 : frame_id + 1'b1;
                    gap_count <= FRAME_GAP;
                end else begin
                    y <= y + 1'b1;
                end
            end else begin
                x <= x + 1'b1;
            end
        end
    end

endmodule
