`timescale 1ns/1ps

module gray_downscale_2x #(
    parameter integer IN_W = 800,
    parameter integer IN_H = 480
) (
    input  logic       aclk,
    input  logic       aresetn,
    input  logic       s_tvalid,
    output logic       s_tready,
    input  logic [7:0] s_tdata,
    input  logic       s_tuser,
    input  logic       s_tlast,
    output logic       m_tvalid,
    input  logic       m_tready,
    output logic [7:0] m_tdata,
    output logic       m_tuser,
    output logic       m_tlast
);

    localparam integer X_W = (IN_W <= 2) ? 1 : $clog2(IN_W);
    localparam integer Y_W = (IN_H <= 2) ? 1 : $clog2(IN_H);

    logic [7:0] line_buffer [0:IN_W-1];
    logic [8:0] left_column_sum;
    logic [X_W-1:0] x_count;
    logic [Y_W-1:0] y_count;

    wire [X_W-1:0] cur_x = s_tuser ? {X_W{1'b0}} : x_count;
    wire [Y_W-1:0] cur_y = s_tuser ? {Y_W{1'b0}} : y_count;

    // One-entry output register. Stalling it stalls the input and therefore
    // freezes the counters and line-buffer access as required by AXI4-Stream.
    assign s_tready = ~m_tvalid | m_tready;

    initial begin
        if ((IN_W < 2) || (IN_H < 2) || (IN_W % 2) || (IN_H % 2))
            $error("gray_downscale_2x requires positive even IN_W/IN_H");
    end

    // Keep the RAM write process free of asynchronous reset so Vivado can
    // infer memory instead of expanding 800 bytes into individual flip-flops.
    // Old contents are harmless: every even source row is written completely
    // before the following odd row reads it.
    always_ff @(posedge aclk) begin
        if (aresetn && s_tvalid && s_tready && !cur_y[0])
            line_buffer[cur_x] <= s_tdata;
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            x_count         <= '0;
            y_count         <= '0;
            left_column_sum <= '0;
            m_tvalid        <= 1'b0;
            m_tdata         <= '0;
            m_tuser         <= 1'b0;
            m_tlast         <= 1'b0;
        end else begin
            if (m_tvalid && m_tready)
                m_tvalid <= 1'b0;

            if (s_tvalid && s_tready) begin
                if (cur_y[0] && !cur_x[0]) begin
                    left_column_sum <= {1'b0, line_buffer[cur_x]}
                                     + {1'b0, s_tdata};
                end else if (cur_y[0] && cur_x[0]) begin
                    m_tdata  <= ({1'b0, left_column_sum}
                               + {2'b0, line_buffer[cur_x]}
                               + {2'b0, s_tdata}
                               + 10'd2) >> 2;
                    m_tuser  <= (cur_x == {{(X_W-1){1'b0}}, 1'b1})
                             && (cur_y == {{(Y_W-1){1'b0}}, 1'b1});
                    m_tlast  <= (cur_x == IN_W-1);
                    m_tvalid <= 1'b1;
                end

                if (s_tlast) begin
                    x_count <= '0;
                    if (cur_y == IN_H-1)
                        y_count <= '0;
                    else
                        y_count <= cur_y + 1'b1;
                end else begin
                    x_count <= cur_x + 1'b1;
                    y_count <= cur_y;
                end
            end
        end
    end

endmodule
