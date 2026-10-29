`timescale 1ns/1ps
// Stable bundle, one event in flight. Overrun fails closed until either reset.
// Multi-bit payload is NOT bitwise synchronized; source holds it until ack.
module source_frame_verdict_cdc(
    input logic src_clk,src_rst_n,dst_clk,dst_rst_n,src_valid,src_good,
    input logic [31:0] src_id,
    output logic src_busy,dst_valid,dst_good,dst_fault,dst_resetn,
    output logic [31:0] dst_id
);
    logic common_resetn;
    (* ASYNC_REG="TRUE" *) logic [1:0] src_release,dst_release;
    (* ASYNC_REG="TRUE" *) logic ack_s1,ack_s2,req_s1,req_s2,fault_s1,fault_s2;
    logic req,ack,overrun;
    logic [32:0] bundle;
    logic sr,dr;
    assign common_resetn=src_rst_n && dst_rst_n;
    always_ff @(posedge src_clk or negedge common_resetn)
        if(!common_resetn) src_release<=0; else src_release<={src_release[0],1'b1};
    always_ff @(posedge dst_clk or negedge common_resetn)
        if(!common_resetn) dst_release<=0; else dst_release<={dst_release[0],1'b1};
    assign sr=src_release[1];
    assign dr=dst_release[1];
    assign dst_resetn=dr;
    assign src_busy=!sr || overrun || req!=ack_s2;
    assign dst_fault=fault_s2;
    // Plain two-stage receivers, no release-gated data mux/enable in front of
    // either stage. Local reset asserts asynchronously, releases on this clock.
    always_ff @(posedge src_clk or negedge sr) begin
        if(!sr) begin ack_s1<=0;ack_s2<=0;end
        else begin ack_s1<=ack;ack_s2<=ack_s1;end
    end
    always_ff @(posedge dst_clk or negedge dr) begin
        if(!dr) begin req_s1<=0;req_s2<=0;fault_s1<=0;fault_s2<=0;end
        else begin
            req_s1<=req;req_s2<=req_s1;fault_s1<=overrun;fault_s2<=fault_s1;
        end
    end
    always_ff @(posedge src_clk or negedge sr) begin
        if(!sr) begin
            req<=0;overrun<=0;bundle<=0;
        end else begin
            if(src_valid) begin
                if(src_busy) overrun<=1;
                else begin bundle<={src_good,src_id};req<=~req;end
            end
        end
    end
    always_ff @(posedge dst_clk or negedge dr) begin
        if(!dr) begin
            ack<=0;dst_valid<=0;dst_good<=0;dst_id<=0;
        end else begin
            dst_valid<=0;
            if(req_s2!=ack && !fault_s2) begin
                {dst_good,dst_id}<=bundle;dst_valid<=1;ack<=req_s2;
            end
        end
    end
endmodule
