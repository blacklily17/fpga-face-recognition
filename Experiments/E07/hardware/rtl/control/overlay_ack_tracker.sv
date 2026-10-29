`timescale 1ns/1ps
// The shadow is locked while mailbox is busy. Latch acknowledged sequence,
// never expose the subsequently editable shadow as the ACK register.
module overlay_ack_tracker(
    input logic aclk,aresetn,ack,invalidate,
    input logic [31:0] sequence_value,
    output logic [31:0] acknowledged_sequence
);
    always_ff @(posedge aclk) begin
        if(!aresetn || invalidate) acknowledged_sequence<=0;
        else if(ack) acknowledged_sequence<=sequence_value;
    end
endmodule
