`timescale 1ns/1ps
module tb_lbp_gallery;
    reg clk=0;always #5 clk=~clk;
    reg rst=0,sv=0,sl=0,mr=0;
    reg [31:0] sd=0;
    reg [3:0] sk=15;
    wire sr,mv,ml,protocol_error;wire [31:0] md;wire [3:0] mk;
    reg [15:0] query[0:3775];
    reg [31:0] expected[0:127];reg expected_last[0:127];
    integer produced=0,consumed=0,cycle=0,checks=0;
    reg [31:0] held_data;reg held_last,held=0;
    axis_lbp_distance dut(.aclk(clk),.aresetn(rst),.s_axis_tdata(sd),
        .s_axis_tkeep(sk),.s_axis_tvalid(sv),.s_axis_tready(sr),.s_axis_tlast(sl),
        .m_axis_tdata(md),.m_axis_tkeep(mk),.m_axis_tvalid(mv),
        .m_axis_tready(mr),.m_axis_tlast(ml),.protocol_error(protocol_error));
    always @(negedge clk) begin
        cycle=cycle+1;
        mr=(cycle%97>=31); // long backpressure plus input bubbles
    end
    always @(posedge clk) if(rst && !protocol_error) begin
        if(held && (!mv || md!==held_data || ml!==held_last))
            $fatal(1,"output changed under backpressure");
        held=mv && !mr;held_data=md;held_last=ml;
        if(mv && mr) begin
            if(consumed>=produced || md!==expected[consumed] ||
                ml!==expected_last[consumed] || mk!==15)
                $fatal(1,"result mismatch index=%0d got=%h expected=%h last=%b",consumed,md,expected[consumed],ml);
            consumed=consumed+1;
        end
    end else held=0;
    task reset;
    begin
        @(negedge clk);rst=0;sv=0;sl=0;sk=15;produced=0;consumed=0;
        repeat(6)@(negedge clk);rst=1;repeat(3)@(negedge clk);
        if(protocol_error)$fatal(1,"reset error");
    end endtask
    task send;
        input [31:0] value;input last;input [3:0] keep;
        integer waited;
    begin
        @(negedge clk);sd=value;sl=last;sk=keep;sv=1;waited=0;
        @(posedge clk);
        while(!sr) begin
            waited=waited+1;if(waited>2000)$fatal(1,"input stall");
            @(posedge clk);
        end
        // Most words are back-to-back: next send updates at the next negedge.
        // Deterministic gaps additionally exercise valid bubbles.
        if(cycle%7==0)begin @(negedge clk);sv=0;repeat(2)@(negedge clk);end
    end endtask
    task load_query;
        input integer kind;
        integer i;
    begin
        send(32'h51525901,1,15);
        for(i=0;i<3776;i=i+1)
            query[i]=(kind==0)?0:(kind==2)?14400:((i*13+7)%226);
        for(i=0;i<3776;i=i+2)send({query[i+1],query[i]},i==3774,15);
        @(negedge clk);sv=0;
    end endtask
    function [15:0] value_for;
        input integer t,i,kind;
    begin
        value_for=(kind==0)?query[i]:(kind==2)?0:((i*7+t*19)%226);
    end endfunction
    function [63:0] term;
        input [15:0] a,b;
        reg [63:0] delta,denom;
    begin
        delta=a>b?a-b:b-a;denom={1'b0,a}+{1'b0,b};
        term=denom==0?0:(delta*delta*64'd1024)/denom;
    end endfunction
    task batch;
        input integer count,kind;
        integer t,i,first;
        reg [63:0] total;
        reg [15:0] a,b;
    begin
        first=produced;
        for(t=0;t<count;t=t+1)begin
            total=0;
            for(i=0;i<3776;i=i+1)total=total+term(query[i],value_for(t,i,kind));
            expected[produced]=(total > 64'hffffffff) ? 32'hffffffff : total[31:0];
            expected_last[produced]=(t==count-1);produced=produced+1;
        end
        send(32'h42415400|count,1,15);
        for(t=0;t<count;t=t+1)for(i=0;i<3776;i=i+2)begin
            a=value_for(t,i,kind);b=value_for(t,i+1,kind);
            send({b,a},t==count-1 && i==3774,15);
        end
        @(negedge clk);sv=0;
        repeat(200)@(negedge clk);
        if(protocol_error || consumed!=first+count)$fatal(1,"batch completion");
        checks=checks+1;
    end endtask
    task expect_error;
    begin
        @(negedge clk);sv=0;
        repeat(10)@(negedge clk);
        if(!protocol_error || sr || mv)$fatal(1,"protocol error not locked");
        checks=checks+1;
    end endtask
    integer i;
    initial begin
        reset;load_query(0);batch(1,0);batch(8,1);
        load_query(1);batch(8,1);batch(3,0); // query replacement, tie/zero
        load_query(2);batch(2,2); // saturated sums
        reset;send(32'h42415401,1,15);expect_error; // no cached query
        reset;send(32'h51525901,0,15);expect_error;
        reset;send(32'h51525901,1,3);expect_error;
        reset;send(32'h51525901,1,15);send(0,1,15);expect_error;
        reset;send(32'h51525901,1,15);send(32'h00003841,0,15);expect_error;
        reset;load_query(1);send(32'h42415400,1,15);expect_error;
        reset;load_query(1);send(32'h42415409,1,15);expect_error;
        reset;load_query(1);send(32'h42415401,1,15);send(0,1,15);expect_error;
        reset;load_query(1);send(32'h42415401,1,15);
        for(i=0;i<1888;i=i+1)send(0,0,15);expect_error; // missing last
        reset;load_query(1);send(32'h42415401,1,15);send(0,0,7);expect_error;
        reset;load_query(1);send(32'h42415401,1,15);send(32'hffff0000,0,15);expect_error;
        reset;send(32'h51525901,1,15);repeat(13)send(0,0,15);
        reset;load_query(1);send(32'h42415401,1,15);repeat(53)send(0,0,15);
        reset;load_query(0);batch(8,1);
        $display("ALL_GALLERY_TESTS_PASS checks=%0d: exact 3776-bin distance, query reuse/replacement, stalls, packets, saturation, reset",checks);
        $finish;
    end
    initial begin #30000000;$fatal(1,"watchdog");end
endmodule

