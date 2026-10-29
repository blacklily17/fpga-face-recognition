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
    localparam [3:0] RX_HEADER=0, RX_INPUT=1, RX_WEIGHT=2, RX_BIAS=3,
                     RX_MULT=4, PIXEL_INIT=5, MAC=6, REQUANT=7,
                     TX_LOAD=8, TX_OUTPUT=9;
    localparam [31:0] MAGIC=32'h314e4e43; // little-endian bytes "CNN1"

    (* ram_style = "block" *) reg signed [7:0] input_ram [0:MAX_INPUT_BYTES-1];
    (* ram_style = "block" *) reg signed [7:0] weight_ram [0:MAX_WEIGHT_BYTES-1];
    (* ram_style = "block" *) reg signed [7:0] output_ram [0:MAX_OUTPUT_BYTES-1];
    reg signed [31:0] bias_ram [0:MAX_CHANNELS-1];
    reg signed [31:0] multiplier_ram [0:MAX_CHANNELS-1];

    reg [3:0] state;
    reg [2:0] header_index;
    reg [15:0] width, height, in_channels, out_channels;
    reg [5:0] requant_shift;
    reg [31:0] input_total, weight_total, output_total, receive_count;
    reg [31:0] send_index;
    reg [15:0] oc, oy, ox, ic;
    reg [1:0] ky, kx;
    reg signed [31:0] accumulator;
    reg error;
    integer byte_index;
    integer iy;
    integer ix;
    integer input_address;
    integer weight_address;
    integer output_address;

    wire take_input=s_axis_tvalid && s_axis_tready;
    wire take_output=m_axis_tvalid && m_axis_tready;
    wire [2:0] keep_bytes=(s_axis_tkeep[0]?1:0)+(s_axis_tkeep[1]?1:0)+
                          (s_axis_tkeep[2]?1:0)+(s_axis_tkeep[3]?1:0);
    wire keep_contiguous=(s_axis_tkeep==4'b0001 || s_axis_tkeep==4'b0011 ||
                          s_axis_tkeep==4'b0111 || s_axis_tkeep==4'b1111);
    wire [31:0] input_derived=width*height*in_channels;
    wire [31:0] weight_derived=in_channels*out_channels*9;
    wire [31:0] output_derived=width*height*out_channels;

    assign s_axis_tready=aresetn && !error && state<=RX_MULT;
    assign m_axis_tvalid=aresetn && !error && state==TX_OUTPUT;
    assign m_axis_tlast=state==TX_OUTPUT && send_index+4>=output_total;
    assign protocol_error=error;
    assign busy=state!=RX_HEADER || header_index!=0;

    function automatic signed [7:0] requantize_relu;
        input signed [31:0] value;
        input signed [31:0] multiplier;
        input [5:0] shift;
        reg signed [63:0] product;
        reg signed [63:0] rounded;
        begin
            product=value*multiplier;
            if(product>=0)
                rounded=(product+(64'sd1<<(shift-1)))>>>shift;
            else
                rounded=-(((-product)+(64'sd1<<(shift-1)))>>>shift);
            if(rounded<0) requantize_relu=8'sd0;
            else if(rounded>127) requantize_relu=8'sd127;
            else requantize_relu=rounded[7:0];
        end
    endfunction

    always @(posedge aclk or negedge aresetn) begin
        if(!aresetn) begin
            state<=RX_HEADER;header_index<=0;width<=0;height<=0;
            in_channels<=0;out_channels<=0;requant_shift<=0;
            input_total<=0;weight_total<=0;output_total<=0;receive_count<=0;
            send_index<=0;oc<=0;oy<=0;ox<=0;ic<=0;ky<=0;kx<=0;
            accumulator<=0;error<=0;m_axis_tdata<=0;m_axis_tkeep<=0;
        end else if(!error) begin
            if(take_output) begin
                if(m_axis_tlast) begin
                    state<=RX_HEADER;header_index<=0;send_index<=0;
                end else begin send_index<=send_index+4;state<=TX_LOAD;end
            end
            if(take_input) begin
                case(state)
                    RX_HEADER: begin
                        if(s_axis_tkeep!=4'hf || s_axis_tlast) error<=1;
                        else case(header_index)
                            0: begin
                                if(s_axis_tdata!=MAGIC) error<=1;
                                else header_index<=1;
                            end
                            1: begin
                                width<=s_axis_tdata[15:0];height<=s_axis_tdata[31:16];
                                header_index<=2;
                            end
                            2: begin
                                in_channels<=s_axis_tdata[15:0];
                                out_channels<=s_axis_tdata[31:16];header_index<=3;
                            end
                            default: begin
                                requant_shift<=s_axis_tdata[5:0];
                                if(width==0 || width>MAX_WIDTH || height==0 ||
                                   height>MAX_HEIGHT || in_channels==0 ||
                                   in_channels>MAX_CHANNELS || out_channels==0 ||
                                   out_channels>MAX_CHANNELS || s_axis_tdata[5:0]==0 ||
                                   s_axis_tdata[5:0]>31 || input_derived>MAX_INPUT_BYTES ||
                                   weight_derived>MAX_WEIGHT_BYTES ||
                                   output_derived>MAX_OUTPUT_BYTES) error<=1;
                                else begin
                                    input_total<=input_derived;
                                    weight_total<=weight_derived;
                                    output_total<=output_derived;
                                    receive_count<=0;state<=RX_INPUT;
                                end
                            end
                        endcase
                    end
                    RX_INPUT: begin
                        if(!keep_contiguous || s_axis_tlast ||
                           receive_count+keep_bytes>input_total) error<=1;
                        else begin
                            for(byte_index=0;byte_index<4;byte_index=byte_index+1)
                                if(s_axis_tkeep[byte_index])
                                    input_ram[receive_count+byte_index]<=
                                        s_axis_tdata[byte_index*8 +: 8];
                            if(receive_count+keep_bytes==input_total) begin
                                receive_count<=0;state<=RX_WEIGHT;
                            end else receive_count<=receive_count+keep_bytes;
                        end
                    end
                    RX_WEIGHT: begin
                        if(!keep_contiguous || s_axis_tlast ||
                           receive_count+keep_bytes>weight_total) error<=1;
                        else begin
                            for(byte_index=0;byte_index<4;byte_index=byte_index+1)
                                if(s_axis_tkeep[byte_index])
                                    weight_ram[receive_count+byte_index]<=
                                        s_axis_tdata[byte_index*8 +: 8];
                            if(receive_count+keep_bytes==weight_total) begin
                                receive_count<=0;state<=RX_BIAS;
                            end else receive_count<=receive_count+keep_bytes;
                        end
                    end
                    RX_BIAS: begin
                        if(s_axis_tkeep!=4'hf || s_axis_tlast ||
                           receive_count>=out_channels) error<=1;
                        else begin
                            bias_ram[receive_count]<=s_axis_tdata;
                            if(receive_count+1==out_channels) begin
                                receive_count<=0;state<=RX_MULT;
                            end else receive_count<=receive_count+1;
                        end
                    end
                    RX_MULT: begin
                        if(s_axis_tkeep!=4'hf || receive_count>=out_channels ||
                           s_axis_tlast!=(receive_count+1==out_channels)) error<=1;
                        else begin
                            multiplier_ram[receive_count]<=s_axis_tdata;
                            if(receive_count+1==out_channels) begin
                                oc<=0;oy<=0;ox<=0;state<=PIXEL_INIT;
                            end else receive_count<=receive_count+1;
                        end
                    end
                    default: error<=1;
                endcase
            end else case(state)
                PIXEL_INIT: begin
                    accumulator<=bias_ram[oc];ic<=0;ky<=0;kx<=0;state<=MAC;
                end
                MAC: begin
                    iy=$signed({1'b0,oy})+$signed({1'b0,ky})-1;
                    ix=$signed({1'b0,ox})+$signed({1'b0,kx})-1;
                    if(iy>=0 && iy<height && ix>=0 && ix<width) begin
                        input_address=(ic*height+iy)*width+ix;
                        weight_address=((oc*in_channels+ic)*3+ky)*3+kx;
                        accumulator<=accumulator+
                            input_ram[input_address]*weight_ram[weight_address];
                    end
                    if(kx==2) begin
                        kx<=0;
                        if(ky==2) begin
                            ky<=0;
                            if(ic+1==in_channels) state<=REQUANT;
                            else ic<=ic+1;
                        end else ky<=ky+1;
                    end else kx<=kx+1;
                end
                REQUANT: begin
                    output_address=(oc*height+oy)*width+ox;
                    output_ram[output_address]<=
                        requantize_relu(accumulator,multiplier_ram[oc],requant_shift);
                    if(ox+1==width) begin
                        ox<=0;
                        if(oy+1==height) begin
                            oy<=0;
                            if(oc+1==out_channels) begin
                                send_index<=0;state<=TX_LOAD;
                            end else begin oc<=oc+1;state<=PIXEL_INIT;end
                        end else begin oy<=oy+1;state<=PIXEL_INIT;end
                    end else begin ox<=ox+1;state<=PIXEL_INIT;end
                end
                TX_LOAD: begin
                    m_axis_tdata<=32'd0;m_axis_tkeep<=4'd0;
                    if(send_index<output_total) begin
                        m_axis_tdata[7:0]<=output_ram[send_index];m_axis_tkeep[0]<=1'b1;
                    end
                    if(send_index+1<output_total) begin
                        m_axis_tdata[15:8]<=output_ram[send_index+1];m_axis_tkeep[1]<=1'b1;
                    end
                    if(send_index+2<output_total) begin
                        m_axis_tdata[23:16]<=output_ram[send_index+2];m_axis_tkeep[2]<=1'b1;
                    end
                    if(send_index+3<output_total) begin
                        m_axis_tdata[31:24]<=output_ram[send_index+3];m_axis_tkeep[3]<=1'b1;
                    end
                    state<=TX_OUTPUT;
                end
                default: begin end
            endcase
        end
    end
endmodule
