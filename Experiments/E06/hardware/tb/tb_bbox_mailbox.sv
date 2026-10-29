`timescale 1ns/1ps
module tb_bbox_mailbox;
    logic src_clk=0, dst_clk=0;
    bit dst_running=1;
    always #5 src_clk=~src_clk;
    always begin #6.734; if(dst_running) dst_clk=~dst_clk; else dst_clk=0; end
    logic src_rst_n=0,dst_rst_n=0;
    logic src_send=0,src_recover=0,invalidate=0,dst_frame_start=0;
    logic [447:0] src_payload=0,dst_payload;
    logic src_busy,src_ack,src_timeout,src_channel_ready,src_reset_event;
    logic dst_update,dst_box_valid,expired;
    bbox_mailbox #(.TIMEOUT_CYCLES(128),.EXPIRE_FRAMES(60)) dut(.*);
    integer ack_count=0, timeout_count=0, expire_count=0;
    integer update_count=0,fault_ack,fault_updates;
    integer seed=20261005,random_delay;
    always @(posedge src_clk) begin
        if (src_ack) ack_count<=ack_count+1;
        if (src_timeout) timeout_count<=timeout_count+1;
        if (expired) expire_count<=expire_count+1;
    end
    always @(posedge dst_clk) if(dst_update) update_count++;
    function automatic [447:0] valid_message(input logic [31:0] sequence_number);
        logic [447:0] msg;
        begin
            msg=0; msg[31:0]=1; msg[63:32]=10; msg[95:64]=20;
            msg[127:96]=30; msg[159:128]=40;
            msg[191:160]=sequence_number; msg[223:192]=sequence_number;
            msg[255:224]=7; msg[447:416]=sequence_number;
            return msg;
        end
    endfunction
    task automatic wait_idle;
        integer limit;
        begin
            limit=0;
            while(src_busy || !src_channel_ready) begin
                @(negedge src_clk); limit++;
                if(limit>200) $fatal(1,"MAILBOX idle timeout busy=%b ready=%b",src_busy,src_channel_ready);
            end
        end
    endtask
    task automatic frame;
        begin
            @(negedge dst_clk); dst_frame_start=1;
            @(posedge dst_clk); #1;
            @(negedge dst_clk); dst_frame_start=0;
        end
    endtask
    task automatic send(input logic [447:0] message);
        begin
            wait_idle();
            @(negedge src_clk); src_payload=message; src_send=1;
            @(negedge src_clk); src_send=0;
        end
    endtask
    task automatic check_frame_message(input integer sequence_number);
        logic [447:0] message;
        integer i, before_ack;
        begin
            for(i=0;i<14;i++) message[32*i+:32]=(sequence_number*15991) ^ (32'hf00d1234+i*77);
            message[31:0]=(sequence_number%5!=0);
            message[447:416]=sequence_number;
            before_ack=ack_count;
            send(message);
            // Input bus may move after send: only the captured bundle belongs to this request.
            src_payload=~message;
            repeat(12) @(negedge src_clk);
            if(src_ack || ack_count!=before_ack || !src_busy)
                $fatal(1,"ack before display frame sequence=%0d",sequence_number);
            random_delay=$unsigned($random(seed))%27;
            #(random_delay);
            frame();
            if(dst_payload !== message || dst_box_valid !== message[0])
                $fatal(1,"atomic bundle mismatch sequence=%0d expected=%h actual=%h",sequence_number,message,dst_payload);
            wait_idle();
            repeat(2) @(negedge src_clk);
            if(ack_count!=before_ack+1) $fatal(1,"ack count sequence=%0d expected=%0d actual=%0d",sequence_number,before_ack+1,ack_count);
        end
    endtask
    initial begin
        repeat(5) @(negedge src_clk); src_rst_n=1; dst_rst_n=1;
        wait_idle();
        for(integer n=0;n<100;n++) check_frame_message(n);
        check_frame_message(101);
        for(integer age=1;age<=59;age++) begin
            frame();
            if(!dst_box_valid) $fatal(1,"box expired early age=%0d",age);
        end
        frame();
        if(dst_box_valid) $fatal(1,"box not expired after 60 frames");
        repeat(12) @(negedge src_clk);
        if(expire_count!=1) $fatal(1,"expiry count expected=1 actual=%0d",expire_count);
        frame(); repeat(10) @(negedge src_clk);
        if(expire_count!=1) $fatal(1,"repeated expiry");
        check_frame_message(102);
        // Destination-only reset invalidates the entire channel, even while source is running.
        @(negedge src_clk); dst_rst_n=0;
        repeat(3) @(negedge src_clk); dst_rst_n=1;
        wait_idle();
        if(dst_box_valid) $fatal(1,"stale box after destination reset");
        check_frame_message(103);
        @(negedge src_clk); src_rst_n=0;
        repeat(3) @(negedge src_clk); src_rst_n=1;
        wait_idle();
        if(dst_box_valid) $fatal(1,"stale box after source reset");
        // Reset an in-flight request: it must never be acknowledged/applied later.
        fault_ack=ack_count; fault_updates=update_count;
        send(valid_message(32'hfe01));
        repeat(5) @(negedge src_clk);
        src_rst_n=0; repeat(3) @(negedge src_clk); src_rst_n=1;
        wait_idle(); frame();
        repeat(2) @(negedge dst_clk);
        if(dst_box_valid || dst_payload[447:416]==32'hfe01 || update_count!=fault_updates || ack_count!=fault_ack)
            $fatal(1,"inflight request survived reset sequence=%0h updates=%0d/%0d ack=%0d/%0d",dst_payload[447:416],update_count,fault_updates,ack_count,fault_ack);
        // Stopped pixel clock -> timeout, retained busy; explicit recovery must wait for clock.
        @(negedge dst_clk); dst_running=0;
        fault_ack=ack_count; fault_updates=update_count;
        send(valid_message(32'hfe02));
        repeat(150) @(negedge src_clk);
        if(timeout_count!=1 || !src_busy) $fatal(1,"timeout must retain busy, count=%0d",timeout_count);
        force dut.ack_s=2'b11; // Late old ACK must not release FAILED slot.
        repeat(3) @(negedge src_clk); release dut.ack_s;
        if(!src_busy || ack_count!=fault_ack) $fatal(1,"late ACK unlocked timed-out slot");
        src_recover=1; @(negedge src_clk); src_recover=0;
        repeat(20) @(negedge src_clk);
        if(!src_busy) $fatal(1,"recovery completed while pixel clock stopped");
        dst_running=1; wait_idle(); frame();
        repeat(2) @(negedge dst_clk);
        if(dst_box_valid || dst_payload[447:416]==32'hfe02 || update_count!=fault_updates || ack_count!=fault_ack)
            $fatal(1,"timed out payload applied during recovery sequence=%0h updates=%0d/%0d ack=%0d/%0d",dst_payload[447:416],update_count,fault_updates,ack_count,fault_ack);
        check_frame_message(104);
        // Recovery after req=ack=1. Model one extra destination cycle of req
        // synchronization versus clear; this is a CDC skew, not a new request.
        if(dut.req==0) check_frame_message(106);
        @(negedge src_clk); src_recover=1;
        @(negedge src_clk); src_recover=0;
        wait(dut.clear_d[1]==1);
        @(negedge dst_clk); force dut.req_d=2'b11;
        wait(dut.clear_d[1]==0);
        @(posedge dst_clk); #1;
        if(dut.dst_ready) $fatal(1,"recovery reopened before req reached zero baseline");
        @(negedge dst_clk); release dut.req_d;
        wait_idle(); frame();
        if(dst_update || dst_box_valid) $fatal(1,"old valid payload replayed after recovery skew");
        // Level invalidation blocks send until explicitly released.
        @(negedge src_clk); invalidate=1;
        repeat(15) @(negedge src_clk);
        if(!src_busy || dst_box_valid) $fatal(1,"invalidation not propagated");
        invalidate=0; wait_idle();
        check_frame_message(105);
        $display("MAILBOX_PASS messages=100 reset=both_independent expiry=60 timeout=recovered seed=20261005");
        $finish;
    end
    initial begin #1000000; $fatal(1,"MAILBOX_TIMEOUT"); end
endmodule
