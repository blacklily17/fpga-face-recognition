`timescale 1ns/1ps
module tb_source_frame_verdict_cdc;
    logic src_clk=0,dst_clk=0,src_rst_n=0,dst_rst_n=0,dst_run=1;
    always #11 src_clk=~src_clk;
    always #5 if(dst_run) dst_clk=~dst_clk;
    logic src_valid=0,src_good=0;
    logic [31:0] src_id=0;
    wire src_busy,dst_valid,dst_good,dst_fault,dst_resetn;
    wire [31:0] dst_id;
    integer received=0;
    logic [31:0] expected_id;
    logic expected_good;
    source_frame_verdict_cdc dut(.*);
    always @(posedge dst_clk) if(dst_valid) begin
        if(dst_id!==expected_id || dst_good!==expected_good)
            $fatal(1,"VERDICT expected id=%h good=%b actual id=%h good=%b",
                expected_id,expected_good,dst_id,dst_good);
        received<=received+1;
    end
    task reset_link;
        begin
            src_valid=0;src_rst_n=0;dst_rst_n=0;dst_run=1;
            repeat(6) @(negedge src_clk);
            src_rst_n=1;dst_rst_n=1;
            repeat(8) @(negedge src_clk);
            if(src_busy || dst_fault || !dst_resetn) $fatal(1,"VERDICT startup");
        end
    endtask
    task send(input logic [31:0] id,input logic good);
        begin
            wait(!src_busy);@(negedge src_clk);
            src_id=id;src_good=good;src_valid=1;expected_id=id;expected_good=good;
            @(negedge src_clk);src_valid=0;
            wait(!src_busy);repeat(3) @(negedge src_clk);
        end
    endtask
    initial begin
        reset_link();
        for(integer i=0;i<100;i++) send(32'hffffffce+i,i%3!=0);
        if(received!=100) $fatal(1,"VERDICT missing event count=%0d",received);
        // A stopped destination must not cause a silent overwrite of payload.
        @(negedge dst_clk);dst_run=0;
        @(negedge src_clk);src_valid=1;src_id=77;src_good=1;
        @(negedge src_clk);src_valid=0;
        @(negedge src_clk);src_valid=1;src_id=88;src_good=0;
        @(negedge src_clk);src_valid=0;
        expected_id=77;expected_good=1;dst_run=1;
        repeat(15) @(negedge src_clk);
        if(!dst_fault || !src_busy || received>101) $fatal(1,"VERDICT overrun was lost");
        // Either domain reset destroys all in-flight provenance.
        dst_rst_n=0;repeat(5) @(negedge src_clk);dst_rst_n=1;
        repeat(8) @(negedge src_clk);send(500,1);
        src_rst_n=0;repeat(5) @(negedge src_clk);src_rst_n=1;
        repeat(8) @(negedge src_clk);send(0,0);
        if(dst_fault) $fatal(1,"VERDICT reset did not recover fault");
        $display("VERDICT_PASS messages=100 overrun=1 isolated_resets=2");$finish;
    end
    initial begin #200000;$fatal(1,"VERDICT_TIMEOUT");end
endmodule
