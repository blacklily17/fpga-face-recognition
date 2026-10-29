`timescale 1ns / 1ps

// Generic signed INT8 3x3 convolution engine for the TinyFace network.
// One AXI packet contains four header words, NCHW input bytes, OIHW weight
// bytes, one INT32 bias per output channel, and one Q-shift multiplier per
// output channel.  The output packet is NCHW INT8 after ReLU/requantization.
module axis_cnn_conv3x3 #(
    parameter integer MAX_WIDTH = 48,
    parameter integer MAX_HEIGHT = 48,
    parameter integer MAX_CHANNELS = 16,
    parameter integer MAX_INPUT_BYTES = 36864,
    parameter integer MAX_WEIGHT_BYTES = 2304,
    parameter integer MAX_OUTPUT_BYTES = 36864
) (
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *)
    input  wire        aclk,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *) input wire aresetn,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input wire [31:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input wire [3:0]  s_axis_tkeep,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input wire        s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire       s_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input wire         s_axis_tlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output reg [31:0]  m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output reg [3:0]   m_axis_tkeep,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire       m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input wire        m_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output wire        m_axis_tlast,
    output wire protocol_error,
    output wire busy
);

    // Serialize each accepted AXIS beat before interpreting packet sections.
    // DMA does not insert partial beats at input/weight/bias boundaries.
    localparam RX_HEADER=0, RX_INPUT=1, RX_WEIGHT=2, RX_BIAS=3,
               RX_MULT=4, PIXEL_INIT=5, MAC_READ=6, MAC_ADD=7,
               REQUANT=8, TX_OUTPUT=9, RQ_MUL=10, RQ_ROUND=11, RQ_SHIFT=12;
    (* ram_style="block" *) reg signed [7:0] input_ram[0:MAX_INPUT_BYTES-1];
    (* ram_style="block" *) reg signed [7:0] weight_ram[0:MAX_WEIGHT_BYTES-1];
    reg signed [31:0] bias_ram[0:MAX_CHANNELS-1];
    reg signed [31:0] multiplier_ram[0:MAX_CHANNELS-1];
    reg [3:0] state;
    reg [4:0] header_index;
    reg [31:0] assembly;
    reg [15:0] width,height,in_channels,out_channels;
    reg [5:0] requant_shift;
    reg [31:0] input_total,weight_total,output_total,receive_count,send_index;
    reg [15:0] oc,oy,ox,ic;
    reg [1:0] ky,kx,pack_index;
    reg signed [31:0] accumulator;
    reg signed [63:0] rq_product;
    reg [63:0] rq_rounded,rq_scaled;
    reg error,rx_pending,rx_last;
    reg [31:0] rx_word;
    reg [2:0] rx_remaining;
    wire [7:0] rx_byte=rx_word[7:0];
    wire consume=rx_pending && state<=RX_MULT && !error;
    wire keep_ok=s_axis_tkeep==1 || s_axis_tkeep==3 || s_axis_tkeep==7 || s_axis_tkeep==15;
    wire [2:0] keep_bytes=s_axis_tkeep==15?4:s_axis_tkeep==7?3:s_axis_tkeep==3?2:1;
    wire [31:0] assembled={rx_byte,assembly[31:8]};
    wire [31:0] input_derived=width*height*in_channels;
    wire [31:0] weight_derived=in_channels*out_channels*9;
    wire [31:0] output_derived=width*height*out_channels;
    wire signed [17:0] iy=$signed({1'b0,oy})+$signed({1'b0,ky})-1;
    wire signed [17:0] ix=$signed({1'b0,ox})+$signed({1'b0,kx})-1;
    wire in_bounds=iy>=0 && iy<height && ix>=0 && ix<width;
    wire [31:0] input_address=in_bounds?(ic*height+iy)*width+ix:0;
    wire [31:0] weight_address=((oc*in_channels+ic)*3+ky)*3+kx;
    reg signed [7:0] input_q,weight_q;
    // One write and one synchronous read per memory: true block RAM inference.
    always @(posedge aclk) begin
        if(consume && state==RX_INPUT) input_ram[receive_count]<=rx_byte;
        if(consume && state==RX_WEIGHT) weight_ram[receive_count]<=rx_byte;
        input_q<=input_ram[input_address];
        weight_q<=weight_ram[weight_address];
    end
    assign s_axis_tready=aresetn && !error && !rx_pending && state<=RX_MULT;
    assign m_axis_tvalid=aresetn && !error && state==TX_OUTPUT;
    assign m_axis_tlast=state==TX_OUTPUT && send_index==output_total;
    assign protocol_error=error;
    assign busy=state!=RX_HEADER || header_index!=0 || rx_pending;
    always @(posedge aclk or negedge aresetn) begin
        if(!aresetn) begin
            state<=RX_HEADER;header_index<=0;assembly<=0;width<=0;height<=0;
            in_channels<=0;out_channels<=0;requant_shift<=0;
            input_total<=0;weight_total<=0;output_total<=0;receive_count<=0;
            send_index<=0;oc<=0;oy<=0;ox<=0;ic<=0;ky<=0;kx<=0;
            accumulator<=0;rq_product<=0;rq_rounded<=0;rq_scaled<=0;error<=0;m_axis_tdata<=0;m_axis_tkeep<=0;
            rx_pending<=0;rx_word<=0;rx_remaining<=0;rx_last<=0;pack_index<=0;
        end else if(!error) begin
            if(s_axis_tvalid && s_axis_tready) begin
                if(!keep_ok) error<=1;
                else begin rx_word<=s_axis_tdata;rx_remaining<=keep_bytes;
                    rx_last<=s_axis_tlast;rx_pending<=1;end
            end
            if(consume) begin
                rx_word<=rx_word>>8;rx_remaining<=rx_remaining-1;
                if(rx_remaining==1) rx_pending<=0;
                assembly<=assembled;
                // TLAST must mark exactly the final multiplier byte.
                if(rx_last && rx_remaining==1 &&
                   !(state==RX_MULT && receive_count+1==out_channels*4)) error<=1;
                case(state)
                    RX_HEADER: begin
                        header_index<=header_index+1;
                        case(header_index)
                            3: if(assembled!=32'h314e4e43) error<=1;
                            7: begin width<=assembled[15:0];height<=assembled[31:16];end
                            11: begin in_channels<=assembled[15:0];out_channels<=assembled[31:16];end
                            15: begin
                                requant_shift<=assembled[5:0];
                                if(width==0 || width>MAX_WIDTH || height==0 || height>MAX_HEIGHT ||
                                   in_channels==0 || in_channels>MAX_CHANNELS || out_channels==0 ||
                                   out_channels>MAX_CHANNELS || assembled[5:0]==0 || assembled[5:0]>31 ||
                                   input_derived>MAX_INPUT_BYTES || weight_derived>MAX_WEIGHT_BYTES ||
                                   output_derived>MAX_OUTPUT_BYTES) error<=1;
                                else begin input_total<=input_derived;weight_total<=weight_derived;
                                    output_total<=output_derived;receive_count<=0;state<=RX_INPUT;end
                            end
                        endcase
                    end
                    RX_INPUT: if(receive_count+1==input_total) begin receive_count<=0;state<=RX_WEIGHT;end
                              else receive_count<=receive_count+1;
                    RX_WEIGHT: if(receive_count+1==weight_total) begin receive_count<=0;state<=RX_BIAS;end
                               else receive_count<=receive_count+1;
                    RX_BIAS: begin
                        if(receive_count[1:0]==3) bias_ram[receive_count>>2]<=assembled;
                        if(receive_count+1==out_channels*4) begin receive_count<=0;state<=RX_MULT;end
                        else receive_count<=receive_count+1;
                    end
                    RX_MULT: begin
                        if(receive_count[1:0]==3) multiplier_ram[receive_count>>2]<=assembled;
                        if(receive_count+1==out_channels*4) begin
                            if(!rx_last || rx_remaining!=1) error<=1;
                            else begin oc<=0;oy<=0;ox<=0;send_index<=0;pack_index<=0;
                                m_axis_tkeep<=0;m_axis_tdata<=0;state<=PIXEL_INIT;end
                        end else receive_count<=receive_count+1;
                    end
                endcase
            end
            case(state)
                PIXEL_INIT: begin accumulator<=bias_ram[oc];ic<=0;ky<=0;kx<=0;state<=MAC_READ;end
                MAC_READ: state<=MAC_ADD;
                MAC_ADD: begin
                    if(in_bounds) accumulator<=accumulator+input_q*weight_q;
                    if(kx==2) begin kx<=0;
                        if(ky==2) begin ky<=0;
                            if(ic+1==in_channels) state<=RQ_MUL;
                            else begin ic<=ic+1;state<=MAC_READ;end
                        end else begin ky<=ky+1;state<=MAC_READ;end
                    end else begin kx<=kx+1;state<=MAC_READ;end
                end
                // ReLU makes every negative product exactly zero. For nonnegative
                // products, retain the original round-half-away-from-zero result.
                // Separate multiply, 64-bit round, barrel shift, and saturate paths.
                RQ_MUL: begin rq_product<=accumulator*multiplier_ram[oc];state<=RQ_ROUND;end
                RQ_ROUND: begin
                    rq_rounded<=rq_product[63]?64'd0:$unsigned(rq_product)+(64'd1<<(requant_shift-1));
                    state<=RQ_SHIFT;
                end
                RQ_SHIFT: begin rq_scaled<=rq_rounded>>requant_shift;state<=REQUANT;end
                REQUANT: begin
                    m_axis_tdata[pack_index*8+:8]<=(rq_scaled>127)?8'd127:rq_scaled[7:0];
                    m_axis_tkeep[pack_index]<=1;
                    send_index<=send_index+1;
                    if(ox+1==width) begin ox<=0;
                        if(oy+1==height) begin oy<=0;oc<=oc+1;end
                        else oy<=oy+1;
                    end else ox<=ox+1;
                    if(pack_index==3 || send_index+1==output_total) state<=TX_OUTPUT;
                    else begin pack_index<=pack_index+1;state<=PIXEL_INIT;end
                end
                TX_OUTPUT: if(m_axis_tready) begin
                    m_axis_tdata<=0;m_axis_tkeep<=0;pack_index<=0;
                    if(send_index==output_total) begin state<=RX_HEADER;header_index<=0;end
                    else state<=PIXEL_INIT;
                end
            endcase
        end
    end
endmodule
