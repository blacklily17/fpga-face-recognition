`timescale 1ns/1ps
module tb_overlay_regs;
    logic aclk=0,aresetn=0;
    always #5 aclk=~aclk;
    logic [15:0] s_axi_awaddr=0,s_axi_araddr=0;
    logic s_axi_awvalid=0,s_axi_awready,s_axi_wvalid=0,s_axi_wready;
    logic [31:0] s_axi_wdata=0,s_axi_rdata;
    logic [3:0] s_axi_wstrb=0;
    logic [1:0] s_axi_bresp,s_axi_rresp;
    logic s_axi_bvalid,s_axi_bready=0,s_axi_arvalid=0,s_axi_arready;
    logic s_axi_rvalid,s_axi_rready=0;
    logic snap_busy=0,snap_ready=0,snap_error=0,mailbox_busy=0,channel_ready=1;
    logic channel_reset_event=0;
    logic [31:0] snap_request_id=0,snap_frame_id=0,snap_epoch=0,snap_error_code=0,box_ack_sequence=0;
    logic [63:0] snap_source_ticks=0,snap_commit_ticks=0;
    logic snap_ready_event=0,snap_abort_event=0,format_error_event=0;
    logic snap_timeout_event=0,box_expire_event=0,mailbox_timeout_event=0;
    logic request,release_frame,cancel,clear_error,box_send,mailbox_recover,epoch_changed;
    logic [31:0] request_id,epoch;
    logic [447:0] box_shadow;
    logic [63:0] time_ticks;
    overlay_regs dut(.*);
    integer request_count=0,send_count=0,seed=20261005,tests=0;
    integer release_count=0,cancel_count=0,clear_count=0,recover_count=0;
    integer epoch_clear_age=0;
    // Standalone register TB models the mailbox clear handshake for EPOCH writes.
    // A separate TB instantiates the real mailbox to verify reset isolation.
    always @(posedge aclk) begin
        if(request) request_count++;
        if(box_send) send_count++;
        if(release_frame) release_count++;
        if(cancel) cancel_count++;
        if(clear_error) clear_count++;
        if(mailbox_recover) recover_count++;
        if(epoch_changed) begin channel_ready<=0; epoch_clear_age<=4; end
        else if(epoch_clear_age>0) begin
            epoch_clear_age<=epoch_clear_age-1;
            if(epoch_clear_age==1) channel_ready<=1;
        end
    end
    task automatic aw(input logic [15:0] address);
        begin
            @(negedge aclk); s_axi_awaddr=address; s_axi_awvalid=1;
            do @(posedge aclk); while(!s_axi_awready);
            @(negedge aclk); s_axi_awvalid=0;
        end
    endtask
    task automatic wd(input logic [31:0] data,input logic [3:0] strobe);
        begin
            @(negedge aclk); s_axi_wdata=data; s_axi_wstrb=strobe; s_axi_wvalid=1;
            do @(posedge aclk); while(!s_axi_wready);
            @(negedge aclk); s_axi_wvalid=0;
        end
    endtask
    task automatic write_reg(input logic [15:0] address,input logic [31:0] data,
                             input logic [3:0] strobe,input logic [1:0] resp,input bit w_first);
        integer delay_cycles;
        begin
            if(w_first) begin wd(data,strobe); repeat(3) @(negedge aclk); aw(address); end
            else begin aw(address); repeat(4) @(negedge aclk); wd(data,strobe); end
            while(!s_axi_bvalid) @(negedge aclk);
            delay_cycles=1+$unsigned($random(seed))%7;
            repeat(delay_cycles) begin
                @(negedge aclk);
                if(!s_axi_bvalid || s_axi_bresp!==resp)
                    $fatal(1,"B response address=%04x expected=%b actual=%b valid=%b",address,resp,s_axi_bresp,s_axi_bvalid);
            end
            s_axi_bready=1; @(negedge aclk); s_axi_bready=0;
            tests++;
        end
    endtask
    task automatic read_reg(input logic [15:0] address,input logic [31:0] expected,input logic [1:0] resp);
        logic [31:0] first;
        integer delay_cycles;
        begin
            @(negedge aclk); s_axi_arvalid=1; s_axi_araddr=address;
            do @(posedge aclk); while(!s_axi_arready);
            @(negedge aclk); s_axi_arvalid=0;
            while(!s_axi_rvalid) @(negedge aclk);
            first=s_axi_rdata;
            delay_cycles=1+$unsigned($random(seed))%8;
            repeat(delay_cycles) begin
                if(!s_axi_rvalid || s_axi_rdata!==first || s_axi_rresp!==resp)
                    $fatal(1,"R backpressure address=%04x expected=%b actual=%b",address,resp,s_axi_rresp);
                @(negedge aclk);
            end
            if(first!==expected) $fatal(1,"R data address=%04x expected=%08x actual=%08x",address,expected,first);
            s_axi_rready=1; @(negedge aclk); s_axi_rready=0; tests++;
        end
    endtask
    initial begin
        repeat(5) @(negedge aclk); aresetn=1;
        read_reg('h000,32'h424f0001,0);
        write_reg('h008,1,15,2,0); // epoch zero forbids requests
        write_reg('h004,17,15,0,1); read_reg('h004,17,0);
        write_reg('h010,23,15,0,0);
        write_reg('h008,1,15,0,1);
        if(request_count!=1) $fatal(1,"request pulse duplicated count=%0d",request_count);
        snap_busy=1;
        write_reg('h008,1,15,2,0); write_reg('h010,99,15,2,1);
        write_reg('h004,18,15,2,0); read_reg('h004,17,0); read_reg('h010,23,0);
        snap_busy=0; snap_ready=1; snap_request_id=23;
        write_reg('h008,2,15,0,1); // matching ownership release
        snap_request_id=24;
        write_reg('h008,2,15,2,0); // wrong owner
        write_reg('h008,4,15,2,1); // READY cancellation has the same owner rule
        if(cancel_count!=0) $fatal(1,"wrong owner cancellation emitted");
        if(release_count!=1) $fatal(1,"release owner protection count=%0d",release_count);
        snap_ready=0;
        write_reg('h008,0,15,2,0); write_reg('h008,3,15,2,1);
        write_reg('h008,1,1,2,1); write_reg('h008,64,15,2,0);
        write_reg('h008,4,15,0,1); write_reg('h008,8,15,0,0);
        if(cancel_count!=1 || clear_count!=1) $fatal(1,"cancel/clear pulse counts");
        write_reg('h000,0,15,2,1); write_reg('h0a0,0,15,2,0);
        write_reg('h041,0,15,2,0); read_reg('h041,0,2); read_reg('h008,0,2); read_reg('h0a0,0,2);
        for(integer word=0;word<14;word++) begin
            write_reg('h040+word*4,32'h10203040+word,15,0,word%2);
            read_reg('h040+word*4,32'h10203040+word,0);
        end
        write_reg('h040,32'haabbccdd,5,0,1); read_reg('h040,32'h10bb30dd,0);
        write_reg('h040,0,0,0,0); read_reg('h040,32'h10bb30dd,0);
        write_reg('h05c,17,15,0,1); // Payload epoch must match the live epoch.
        write_reg('h008,16,15,0,0);
        if(send_count!=1) $fatal(1,"box send pulse duplicated");
        mailbox_busy=1;
        write_reg('h040,0,15,2,1); read_reg('h040,32'h10bb30dd,0);
        write_reg('h008,16,15,2,0); write_reg('h004,99,15,2,1);
        write_reg('h008,32,15,0,0); // timeout recovery is allowed while busy
        if(recover_count!=1) $fatal(1,"recovery pulse count=%0d",recover_count);
        mailbox_busy=0;
        @(negedge aclk); snap_ready_event=1; box_expire_event=1;
        @(negedge aclk); snap_ready_event=0; box_expire_event=0;
        read_reg('h084,1,0); read_reg('h098,1,0);
        read_reg('h080,1,0); read_reg('h094,1,0);
        // A reset must flush a half-received write; it cannot pair old AW with new W.
        aw('h044);
        @(negedge aclk); aresetn=0;
        repeat(3) @(negedge aclk); aresetn=1;
        read_reg('h004,0,0); read_reg('h084,0,0);
        wd(33,15);
        repeat(12) @(negedge aclk);
        if(s_axi_bvalid) $fatal(1,"old AW survived reset");
        aw('h004);
        while(!s_axi_bvalid) @(negedge aclk);
        if(s_axi_bresp!==0) $fatal(1,"W-first write after reset failed");
        s_axi_bready=1; @(negedge aclk); s_axi_bready=0;
        read_reg('h004,33,0); read_reg('h044,0,0);
        $display("REGS_PASS transactions=%0d seed=20261005 aw_w=separate backpressure=random",tests);
        $finish;
    end
    initial begin #1000000; $fatal(1,"REGS_TIMEOUT"); end
endmodule
