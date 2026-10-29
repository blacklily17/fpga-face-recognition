// Vivado 2018.3 module-reference boundary; real implementation remains SV.
module overlay_ack_tracker_bd(
    input wire aclk,aresetn,ack,invalidate,
    input wire [31:0] sequence_value,
    output wire [31:0] acknowledged_sequence
);
    overlay_ack_tracker u_core(
        .aclk(aclk),
        .aresetn(aresetn),
        .ack(ack),
        .invalidate(invalidate),
        .sequence_value(sequence_value),
        .acknowledged_sequence(acknowledged_sequence)
    );
endmodule

