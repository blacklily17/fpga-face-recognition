`timescale 1ns/1ps

// M13: frame-buffered bilinear ROI resize with frozen half-pixel Q8 mapping.
// Input dimensions are bounded to 256x256 to keep the implementation in BRAM.
module roi_resize_128 #(
    parameter integer MAX_IN_W = 256,
    parameter integer MAX_IN_H = 256
) (
    input  logic        aclk,
    input  logic        aresetn,
    input  logic        cfg_valid,
    output logic        cfg_ready,
    input  logic [10:0] cfg_in_w,
    input  logic [9:0]  cfg_in_h,
    input  logic        s_tvalid,
    output logic        s_tready,
    input  logic [7:0]  s_tdata,
    input  logic        s_tuser,
    input  logic        s_tlast,
    output logic        m_tvalid,
    input  logic        m_tready,
    output logic [7:0]  m_tdata,
    output logic        m_tuser,
    output logic        m_tlast,
    output logic        done,
    output logic        size_error
);

    localparam integer OUT_SIZE = 128;
    localparam integer MEM_DEPTH = MAX_IN_W * MAX_IN_H;

    localparam logic [3:0] ST_IDLE  = 4'd0;
    localparam logic [3:0] ST_LOAD  = 4'd1;
    localparam logic [3:0] ST_COORD = 4'd2;
    localparam logic [3:0] ST_RD00  = 4'd3;
    localparam logic [3:0] ST_CAP00 = 4'd4;
    localparam logic [3:0] ST_RD10  = 4'd5;
    localparam logic [3:0] ST_CAP10 = 4'd6;
    localparam logic [3:0] ST_RD01  = 4'd7;
    localparam logic [3:0] ST_CAP01 = 4'd8;
    localparam logic [3:0] ST_RD11  = 4'd9;
    localparam logic [3:0] ST_CAP11 = 4'd10;
    localparam logic [3:0] ST_TOP   = 4'd11;
    localparam logic [3:0] ST_BOTTOM= 4'd12;
    localparam logic [3:0] ST_VERT  = 4'd13;
    localparam logic [3:0] ST_ROUND = 4'd14;
    localparam logic [3:0] ST_OUT   = 4'd15;

    (* ram_style = "block" *) logic [7:0] frame_mem [0:MEM_DEPTH-1];
    logic [3:0] state;
    logic [10:0] input_width;
    logic [9:0] input_height;
    logic [10:0] input_x;
    logic [9:0] input_y;
    logic [6:0] output_x;
    logic [6:0] output_y;
    logic [7:0] p00, p10, p01, p11;
    logic [7:0] ram_read_data;
    logic [15:0] read_address;
    logic [15:0] write_address;
    logic [8:0] coordinate_x0, coordinate_x1;
    logic [8:0] coordinate_y0, coordinate_y1;
    logic [7:0] coordinate_fraction_x, coordinate_fraction_y;
    logic [8:0] sample_x0, sample_x1;
    logic [8:0] sample_y0, sample_y1;
    logic [7:0] sample_fraction_x, sample_fraction_y;
    logic [15:0] top_mix, bottom_mix;
    logic [23:0] vertical_mix;
    logic signed [8:0] top_delta, bottom_delta;
    logic signed [16:0] vertical_delta;
    logic signed [17:0] top_mix_next, bottom_mix_next;
    logic signed [25:0] vertical_mix_next;

    wire input_fire = s_tvalid && s_tready;
    wire output_fire = m_tvalid && m_tready;
    wire input_final = (input_x == input_width - 1'b1) &&
                       (input_y == input_height - 1'b1);
    wire output_final = (output_x == OUT_SIZE-1) && (output_y == OUT_SIZE-1);

    integer coordinate_x_q8;
    integer coordinate_y_q8;
    integer maximum_x_q8;
    integer maximum_y_q8;

    // Separable bilinear interpolation.  Each multiply-add is isolated by a
    // register boundary so the block meets the 100 MHz PL clock target.
    assign top_delta = $signed({1'b0, p10}) - $signed({1'b0, p00});
    assign bottom_delta = $signed({1'b0, p11}) - $signed({1'b0, p01});
    assign vertical_delta = $signed({1'b0, bottom_mix}) -
                            $signed({1'b0, top_mix});
    assign top_mix_next = $signed({1'b0, p00, 8'b0}) +
                          top_delta * $signed({1'b0, sample_fraction_x});
    assign bottom_mix_next = $signed({1'b0, p01, 8'b0}) +
                             bottom_delta * $signed({1'b0, sample_fraction_x});
    assign vertical_mix_next = $signed({1'b0, top_mix, 8'b0}) +
                               vertical_delta * $signed({1'b0, sample_fraction_y});

    assign cfg_ready = (state == ST_IDLE);
    assign s_tready = (state == ST_LOAD);
    assign write_address = input_y * MAX_IN_W + input_x;

    always_comb begin
        coordinate_x_q8 = ((output_x << 1) + 1) * input_width - OUT_SIZE;
        maximum_x_q8 = (input_width - 1) << 8;
        if (coordinate_x_q8 <= 0) begin
            coordinate_x0 = 0;
            coordinate_x1 = (input_width > 1) ? 1 : 0;
            coordinate_fraction_x = 0;
        end else if (coordinate_x_q8 >= maximum_x_q8) begin
            coordinate_x0 = input_width - 1'b1;
            coordinate_x1 = input_width - 1'b1;
            coordinate_fraction_x = 0;
        end else begin
            coordinate_x0 = coordinate_x_q8 >> 8;
            coordinate_x1 = (coordinate_x_q8 >> 8) + 1;
            coordinate_fraction_x = coordinate_x_q8[7:0];
        end

        coordinate_y_q8 = ((output_y << 1) + 1) * input_height - OUT_SIZE;
        maximum_y_q8 = (input_height - 1) << 8;
        if (coordinate_y_q8 <= 0) begin
            coordinate_y0 = 0;
            coordinate_y1 = (input_height > 1) ? 1 : 0;
            coordinate_fraction_y = 0;
        end else if (coordinate_y_q8 >= maximum_y_q8) begin
            coordinate_y0 = input_height - 1'b1;
            coordinate_y1 = input_height - 1'b1;
            coordinate_fraction_y = 0;
        end else begin
            coordinate_y0 = coordinate_y_q8 >> 8;
            coordinate_y1 = (coordinate_y_q8 >> 8) + 1;
            coordinate_fraction_y = coordinate_y_q8[7:0];
        end

        case (state)
            ST_RD00, ST_CAP00: read_address = sample_y0 * MAX_IN_W + sample_x0;
            ST_RD10, ST_CAP10: read_address = sample_y0 * MAX_IN_W + sample_x1;
            ST_RD01, ST_CAP01: read_address = sample_y1 * MAX_IN_W + sample_x0;
            default:           read_address = sample_y1 * MAX_IN_W + sample_x1;
        endcase

    end

    always_ff @(posedge aclk) begin
        if (input_fire)
            frame_mem[write_address] <= s_tdata;
        ram_read_data <= frame_mem[read_address];
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            state        <= ST_IDLE;
            input_width  <= 1;
            input_height <= 1;
            input_x      <= 0;
            input_y      <= 0;
            output_x     <= 0;
            output_y     <= 0;
            sample_x0    <= 0;
            sample_x1    <= 0;
            sample_y0    <= 0;
            sample_y1    <= 0;
            sample_fraction_x <= 0;
            sample_fraction_y <= 0;
            p00          <= 0;
            p10          <= 0;
            p01          <= 0;
            p11          <= 0;
            top_mix      <= 0;
            bottom_mix   <= 0;
            vertical_mix <= 0;
            m_tvalid     <= 1'b0;
            m_tdata      <= 0;
            m_tuser      <= 1'b0;
            m_tlast      <= 1'b0;
            done          <= 1'b0;
            size_error    <= 1'b0;
        end else begin
            done <= 1'b0;
            case (state)
                ST_IDLE: begin
                    m_tvalid <= 1'b0;
                    if (cfg_valid) begin
                        size_error <= (cfg_in_w == 0) || (cfg_in_h == 0) ||
                                      (cfg_in_w > MAX_IN_W) || (cfg_in_h > MAX_IN_H);
                        if ((cfg_in_w != 0) && (cfg_in_h != 0) &&
                            (cfg_in_w <= MAX_IN_W) && (cfg_in_h <= MAX_IN_H)) begin
                            input_width  <= cfg_in_w;
                            input_height <= cfg_in_h;
                            input_x      <= 0;
                            input_y      <= 0;
                            state        <= ST_LOAD;
                        end
                    end
                end

                ST_LOAD: begin
                    if (input_fire) begin
                        if (s_tuser != ((input_x == 0) && (input_y == 0)))
                            size_error <= 1'b1;
                        if (s_tlast != (input_x == input_width - 1'b1))
                            size_error <= 1'b1;
                        if (input_final) begin
                            input_x  <= 0;
                            input_y  <= 0;
                            output_x <= 0;
                            output_y <= 0;
                            state    <= ST_COORD;
                        end else if (input_x == input_width - 1'b1) begin
                            input_x <= 0;
                            input_y <= input_y + 1'b1;
                        end else begin
                            input_x <= input_x + 1'b1;
                        end
                    end
                end

                ST_COORD: begin
                    sample_x0         <= coordinate_x0;
                    sample_x1         <= coordinate_x1;
                    sample_y0         <= coordinate_y0;
                    sample_y1         <= coordinate_y1;
                    sample_fraction_x <= coordinate_fraction_x;
                    sample_fraction_y <= coordinate_fraction_y;
                    state             <= ST_RD00;
                end

                ST_RD00:  state <= ST_CAP00;
                ST_CAP00: begin p00 <= ram_read_data; state <= ST_RD10; end
                ST_RD10:  state <= ST_CAP10;
                ST_CAP10: begin p10 <= ram_read_data; state <= ST_RD01; end
                ST_RD01:  state <= ST_CAP01;
                ST_CAP01: begin p01 <= ram_read_data; state <= ST_RD11; end
                ST_RD11:  state <= ST_CAP11;
                ST_CAP11: begin p11 <= ram_read_data; state <= ST_TOP; end

                ST_TOP: begin
                    top_mix <= top_mix_next[15:0];
                    state   <= ST_BOTTOM;
                end

                ST_BOTTOM: begin
                    bottom_mix <= bottom_mix_next[15:0];
                    state      <= ST_VERT;
                end

                ST_VERT: begin
                    vertical_mix <= vertical_mix_next[23:0];
                    state        <= ST_ROUND;
                end

                ST_ROUND: begin
                    m_tdata  <= (vertical_mix + 24'd32768) >> 16;
                    m_tuser  <= (output_x == 0) && (output_y == 0);
                    m_tlast  <= (output_x == OUT_SIZE-1);
                    m_tvalid <= 1'b1;
                    state    <= ST_OUT;
                end

                ST_OUT: begin
                    if (output_fire) begin
                        m_tvalid <= 1'b0;
                        if (output_final) begin
                            done  <= 1'b1;
                            state <= ST_IDLE;
                        end else begin
                            if (output_x == OUT_SIZE-1) begin
                                output_x <= 0;
                                output_y <= output_y + 1'b1;
                            end else begin
                                output_x <= output_x + 1'b1;
                            end
                            state <= ST_COORD;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
