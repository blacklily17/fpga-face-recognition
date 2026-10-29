`timescale 1ns/1ps
// Real BD boundary and implementation: ACK remains the accepted sequence even
// when PS edits a later shadow, and invalidation wins over simultaneous ACK.
module tb_overlay_ack_tracker;
    logic aclk=0,aresetn=0,ack=0,invalidate=0;
    logic [31:0] sequence_value=0;
    wire [31:0] acknowledged_sequence;
    logic [31:0] expected=0,random_state=32'h3456abcd;
    always #5 aclk=~aclk;
    overlay_ack_tracker_bd dut(.*);
    task check;
        begin
            @(posedge aclk);#1;
            if(acknowledged_sequence!==expected)
                $fatal(1,"ACK tracker expected=%h actual=%h shadow=%h ack=%b invalidate=%b",
                       expected,acknowledged_sequence,sequence_value,ack,invalidate);
            @(negedge aclk);
        end
    endtask
    initial begin
        check(); aresetn=1;
        for(integer i=0;i<100;i++)begin
            random_state={random_state[30:0],random_state[31]^random_state[21]^random_state[1]^random_state[0]};
            sequence_value=random_state;ack=1;expected=random_state;check();
            ack=0;sequence_value=~random_state;repeat(4)check();
            invalidate=1;ack=1;expected=0;check();
            invalidate=0;ack=0;check();
        end
        aresetn=0;ack=1;sequence_value=32'hffffffff;check();
        $display("ACK_TRACKER_PASS updates=100 shadow_isolation=1 invalidate_priority=1");$finish;
    end
    initial begin #100000;$fatal(1,"ACK_TRACKER_TIMEOUT");end
endmodule
