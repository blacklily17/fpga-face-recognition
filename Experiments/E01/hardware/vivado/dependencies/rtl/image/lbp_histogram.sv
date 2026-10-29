`timescale 1ns/1ps

module lbp_histogram #(
    parameter MAP_FILE = "lbp_uniform_map.mem"
) (
    input  logic        aclk,
    input  logic        aresetn,
    input  logic        clear,
    output logic        clear_done,
    input  logic        lbp_valid,
    output logic        lbp_ready,
    input  logic [7:0]  lbp_code,
    input  logic [6:0]  lbp_x,
    input  logic [6:0]  lbp_y,
    input  logic        lbp_last,
    output logic        hist_done,
    output logic [15:0] hist_total,
    output logic        hist_total_error,
    input  logic        rd_en,
    input  logic [11:0] rd_addr,
    output logic [15:0] rd_data
);

    localparam integer HIST_SIZE = 3776;
    localparam integer EXPECTED_TOTAL = 14400;

    localparam logic [2:0] ST_IDLE  = 3'd0;
    localparam logic [2:0] ST_CELL  = 3'd1;
    localparam logic [2:0] ST_BASE  = 3'd2;
    localparam logic [2:0] ST_ADDR  = 3'd3;
    localparam logic [2:0] ST_READ  = 3'd4;
    localparam logic [2:0] ST_WRITE = 3'd5;

    logic [5:0] uniform_map [0:255];
    (* ram_style = "block" *) logic [15:0] hist_mem [0:HIST_SIZE-1];

    logic        clearing;
    logic [11:0] clear_addr;
    logic [2:0]  state;

    logic [7:0] sample_code;
    logic [6:0] sample_x;
    logic [6:0] sample_y;
    logic       sample_counted;
    logic       sample_last;
    logic [2:0] cell_x_reg;
    logic [2:0] cell_y_reg;
    logic [5:0] bucket_reg;
    logic [11:0] base_addr;
    logic [11:0] rmw_addr;
    logic [15:0] ram_read_data;

    wire input_counted = (lbp_x >= 7'd3) && (lbp_x <= 7'd122) &&
                         (lbp_y >= 7'd3) && (lbp_y <= 7'd122);
    wire [5:0] region_index = {cell_y_reg, cell_x_reg};
    wire lbp_fire = lbp_valid && lbp_ready;
    wire [11:0] ram_a_addr = clearing ? clear_addr : rmw_addr;
    wire ram_a_we = clearing || ((state == ST_WRITE) && sample_counted);
    wire [15:0] ram_a_wdata = clearing ? 16'd0 : (ram_read_data + 1'b1);

    assign lbp_ready = aresetn && !clear && !clearing && (state == ST_IDLE);

    function automatic [2:0] cell_index(input logic [6:0] coordinate);
        begin
            if (coordinate < 7'd18)
                cell_index = 3'd0;
            else if (coordinate < 7'd33)
                cell_index = 3'd1;
            else if (coordinate < 7'd48)
                cell_index = 3'd2;
            else if (coordinate < 7'd63)
                cell_index = 3'd3;
            else if (coordinate < 7'd78)
                cell_index = 3'd4;
            else if (coordinate < 7'd93)
                cell_index = 3'd5;
            else if (coordinate < 7'd108)
                cell_index = 3'd6;
            else
                cell_index = 3'd7;
        end
    endfunction

    function automatic [11:0] region_base_lookup(input logic [5:0] region);
        begin
            case (region)
                6'd0:  region_base_lookup = 12'd0;
                6'd1:  region_base_lookup = 12'd59;
                6'd2:  region_base_lookup = 12'd118;
                6'd3:  region_base_lookup = 12'd177;
                6'd4:  region_base_lookup = 12'd236;
                6'd5:  region_base_lookup = 12'd295;
                6'd6:  region_base_lookup = 12'd354;
                6'd7:  region_base_lookup = 12'd413;
                6'd8:  region_base_lookup = 12'd472;
                6'd9:  region_base_lookup = 12'd531;
                6'd10: region_base_lookup = 12'd590;
                6'd11: region_base_lookup = 12'd649;
                6'd12: region_base_lookup = 12'd708;
                6'd13: region_base_lookup = 12'd767;
                6'd14: region_base_lookup = 12'd826;
                6'd15: region_base_lookup = 12'd885;
                6'd16: region_base_lookup = 12'd944;
                6'd17: region_base_lookup = 12'd1003;
                6'd18: region_base_lookup = 12'd1062;
                6'd19: region_base_lookup = 12'd1121;
                6'd20: region_base_lookup = 12'd1180;
                6'd21: region_base_lookup = 12'd1239;
                6'd22: region_base_lookup = 12'd1298;
                6'd23: region_base_lookup = 12'd1357;
                6'd24: region_base_lookup = 12'd1416;
                6'd25: region_base_lookup = 12'd1475;
                6'd26: region_base_lookup = 12'd1534;
                6'd27: region_base_lookup = 12'd1593;
                6'd28: region_base_lookup = 12'd1652;
                6'd29: region_base_lookup = 12'd1711;
                6'd30: region_base_lookup = 12'd1770;
                6'd31: region_base_lookup = 12'd1829;
                6'd32: region_base_lookup = 12'd1888;
                6'd33: region_base_lookup = 12'd1947;
                6'd34: region_base_lookup = 12'd2006;
                6'd35: region_base_lookup = 12'd2065;
                6'd36: region_base_lookup = 12'd2124;
                6'd37: region_base_lookup = 12'd2183;
                6'd38: region_base_lookup = 12'd2242;
                6'd39: region_base_lookup = 12'd2301;
                6'd40: region_base_lookup = 12'd2360;
                6'd41: region_base_lookup = 12'd2419;
                6'd42: region_base_lookup = 12'd2478;
                6'd43: region_base_lookup = 12'd2537;
                6'd44: region_base_lookup = 12'd2596;
                6'd45: region_base_lookup = 12'd2655;
                6'd46: region_base_lookup = 12'd2714;
                6'd47: region_base_lookup = 12'd2773;
                6'd48: region_base_lookup = 12'd2832;
                6'd49: region_base_lookup = 12'd2891;
                6'd50: region_base_lookup = 12'd2950;
                6'd51: region_base_lookup = 12'd3009;
                6'd52: region_base_lookup = 12'd3068;
                6'd53: region_base_lookup = 12'd3127;
                6'd54: region_base_lookup = 12'd3186;
                6'd55: region_base_lookup = 12'd3245;
                6'd56: region_base_lookup = 12'd3304;
                6'd57: region_base_lookup = 12'd3363;
                6'd58: region_base_lookup = 12'd3422;
                6'd59: region_base_lookup = 12'd3481;
                6'd60: region_base_lookup = 12'd3540;
                6'd61: region_base_lookup = 12'd3599;
                6'd62: region_base_lookup = 12'd3658;
                default: region_base_lookup = 12'd3717;
            endcase
        end
    endfunction

    integer map_index;
    initial begin
        $readmemh(MAP_FILE, uniform_map);
        for (map_index = 0; map_index < 256; map_index = map_index + 1) begin
            if (^uniform_map[map_index] === 1'bx)
                $error("lbp_histogram map entry missing at code %0d", map_index);
            if (uniform_map[map_index] > 58)
                $error("lbp_histogram map entry out of range at code %0d", map_index);
        end
    end

    // Port A follows the standard synchronous read/write BRAM template. The
    // FSM dedicates ST_READ to capturing the old bin value and ST_WRITE to
    // writing the incremented value at the same registered address.
    always_ff @(posedge aclk) begin
        if (ram_a_we)
            hist_mem[ram_a_addr] <= ram_a_wdata;
        ram_read_data <= hist_mem[ram_a_addr];
    end

    // Port B: frozen one-clock-latency feature readback.
    always_ff @(posedge aclk) begin
        if (rd_en)
            rd_data <= hist_mem[rd_addr];
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            clearing         <= 1'b0;
            clear_addr       <= '0;
            clear_done       <= 1'b0;
            state            <= ST_IDLE;
            sample_code      <= '0;
            sample_x         <= '0;
            sample_y         <= '0;
            sample_counted   <= 1'b0;
            sample_last      <= 1'b0;
            cell_x_reg       <= '0;
            cell_y_reg       <= '0;
            bucket_reg       <= '0;
            base_addr        <= '0;
            rmw_addr         <= '0;
            hist_done        <= 1'b0;
            hist_total       <= '0;
            hist_total_error <= 1'b0;
        end else begin
            clear_done <= 1'b0;
            hist_done  <= 1'b0;

            if (clear && !clearing) begin
                clearing         <= 1'b1;
                clear_addr       <= '0;
                state            <= ST_IDLE;
                hist_total       <= '0;
                hist_total_error <= 1'b0;
            end else if (clearing) begin
                if (clear_addr == HIST_SIZE-1) begin
                    clearing   <= 1'b0;
                    clear_addr <= '0;
                    clear_done <= 1'b1;
                end else begin
                    clear_addr <= clear_addr + 1'b1;
                end
            end else begin
                case (state)
                    ST_IDLE: begin
                        if (lbp_fire) begin
                            sample_code    <= lbp_code;
                            sample_x       <= lbp_x;
                            sample_y       <= lbp_y;
                            sample_counted <= input_counted;
                            sample_last    <= lbp_last;
                            state          <= ST_CELL;
                        end
                    end

                    ST_CELL: begin
                        cell_x_reg <= cell_index(sample_x);
                        cell_y_reg <= cell_index(sample_y);
                        bucket_reg <= uniform_map[sample_code];
                        state      <= ST_BASE;
                    end

                    ST_BASE: begin
                        // Fixed 64-entry region base table avoids a divider or
                        // multiplier on the 100 MHz address path.
                        base_addr <= region_base_lookup(region_index);
                        state <= ST_ADDR;
                    end

                    ST_ADDR: begin
                        rmw_addr <= base_addr + bucket_reg;
                        state <= ST_READ;
                    end

                    ST_READ: begin
                        state <= ST_WRITE;
                    end

                    ST_WRITE: begin
                        if (sample_counted)
                            hist_total <= hist_total + 1'b1;
                        if (sample_last) begin
                            hist_done <= 1'b1;
                            if (sample_counted)
                                hist_total_error <= ((hist_total + 1'b1) != EXPECTED_TOTAL);
                            else
                                hist_total_error <= (hist_total != EXPECTED_TOTAL);
                        end
                        state <= ST_IDLE;
                    end

                    default: state <= ST_IDLE;
                endcase
            end
        end
    end

endmodule
