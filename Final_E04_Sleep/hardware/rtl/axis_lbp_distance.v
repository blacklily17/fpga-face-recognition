`timescale 1ns / 1ps
// Protocol v1: QUERY command packet, raw u16 query packet; then any number of
// BATCH(count) command packets followed by count contiguous raw u16 templates.
// Two PEs process even/odd bins in parallel. Only the final batch result TLASTs.
module axis_lbp_distance #(
    parameter integer FEATURE_COUNT = 3776
) (
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *)
    input wire aclk,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *) input wire aresetn,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input wire [31:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input wire [3:0] s_axis_tkeep,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input wire s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire s_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input wire s_axis_tlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output wire [31:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output wire [3:0] m_axis_tkeep,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input wire m_axis_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output wire m_axis_tlast,
    output wire protocol_error
);
    localparam integer WORDS=FEATURE_COUNT/2;
    localparam [2:0] CMD=0, QUERY=1, TEMPLATES=2, DRAIN=3;
    (* ram_style = "block" *) reg [31:0] query_ram [0:WORDS-1];
    reg [31:0] query_read, template_word;
    reg [11:0] word_index;
    reg [3:0] template_index, result_index, batch_count;
    reg [2:0] state;
    reg query_valid, pending, pending_last, error;
    wire [1:0] pe_ready, pe_valid, pe_error;
    wire [31:0] even_distance, odd_distance;
    wire [32:0] sum={1'b0,even_distance}+{1'b0,odd_distance};
    wire fault=error || (|pe_error);
    wire both_ready=&pe_ready;
    wire take=s_axis_tvalid && s_axis_tready;
    wire pair_last=word_index==WORDS-1;
    wire packet_last=pair_last && template_index==batch_count-1;
    wire output_take=m_axis_tvalid && m_axis_tready;
    wire bins_good=s_axis_tdata[15:0]<=16'd14400 && s_axis_tdata[31:16]<=16'd14400;
    assign protocol_error=fault;
    assign s_axis_tready=aresetn && !fault &&
        (state==CMD || state==QUERY || (state==TEMPLATES && (!pending || both_ready)));
    assign m_axis_tvalid=aresetn && !fault && (&pe_valid);
    assign m_axis_tdata=sum[32]?32'hffffffff:sum[31:0];
    assign m_axis_tkeep=4'hf;
    assign m_axis_tlast=result_index==batch_count-1;

    // RAM contents are never reset. query_valid gates all reads until a complete
    // query packet has been accepted. Synchronous read infers true block RAM.
    always @(posedge aclk) begin
        if(take && state==QUERY && s_axis_tkeep==4'hf && bins_good)
            query_ram[word_index]<=s_axis_tdata;
        if(take && state==TEMPLATES) query_read<=query_ram[word_index];
    end
    lbp_distance_pipeline #(.FEATURE_COUNT(WORDS)) even_pe (
        .clk(aclk),.rst_n(aresetn),.s_valid(pending && both_ready && !fault),
        .s_ready(pe_ready[0]),.s_feature(query_read[15:0]),
        .s_template(template_word[15:0]),.s_last(pending_last),
        .m_valid(pe_valid[0]),.m_ready(m_axis_tready && pe_valid[1] && !fault),
        .m_distance(even_distance),.protocol_error(pe_error[0]));
    lbp_distance_pipeline #(.FEATURE_COUNT(WORDS)) odd_pe (
        .clk(aclk),.rst_n(aresetn),.s_valid(pending && both_ready && !fault),
        .s_ready(pe_ready[1]),.s_feature(query_read[31:16]),
        .s_template(template_word[31:16]),.s_last(pending_last),
        .m_valid(pe_valid[1]),.m_ready(m_axis_tready && pe_valid[0] && !fault),
        .m_distance(odd_distance),.protocol_error(pe_error[1]));

    always @(posedge aclk or negedge aresetn) begin
        if(!aresetn) begin
            state<=CMD;word_index<=0;template_index<=0;result_index<=0;
            batch_count<=0;query_valid<=0;pending<=0;pending_last<=0;
            template_word<=0;error<=0;
        end else if(!fault) begin
            if(pending && both_ready) pending<=0;
            if(output_take) begin
                if(m_axis_tlast) begin state<=CMD;result_index<=0;end
                else result_index<=result_index+1'b1;
            end
            if(take) begin
                if(s_axis_tkeep!=4'hf) error<=1;
                else case(state)
                    CMD: begin
                        if(!s_axis_tlast) error<=1;
                        else if(s_axis_tdata==32'h51525901) begin
                            state<=QUERY;word_index<=0;query_valid<=0;
                        end else if(s_axis_tdata[31:8]==24'h424154 &&
                                    s_axis_tdata[7:0]>=1 && s_axis_tdata[7:0]<=8 && query_valid) begin
                            state<=TEMPLATES;batch_count<=s_axis_tdata[3:0];
                            word_index<=0;template_index<=0;result_index<=0;
                        end else error<=1;
                    end
                    QUERY: begin
                        if(!bins_good || s_axis_tlast!=pair_last) error<=1;
                        else if(pair_last) begin state<=CMD;query_valid<=1;word_index<=0;end
                        else word_index<=word_index+1'b1;
                    end
                    TEMPLATES: begin
                        if(!bins_good || s_axis_tlast!=packet_last) error<=1;
                        else begin
                            template_word<=s_axis_tdata;pending<=1;pending_last<=pair_last;
                            if(pair_last) begin
                                word_index<=0;template_index<=template_index+1'b1;
                                if(packet_last) state<=DRAIN;
                            end else word_index<=word_index+1'b1;
                        end
                    end
                    default: error<=1;
                endcase
            end
        end
    end
endmodule

