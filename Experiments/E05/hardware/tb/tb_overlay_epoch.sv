`timescale 1ns/1ps
module tb_overlay_epoch;
    logic aclk=0,dst_clk=0,aresetn=0,dst_rst_n=0;
    always #5 aclk=~aclk;
    always #6.734 dst_clk=~dst_clk;
    logic [15:0] s_axi_awaddr=0,s_axi_araddr=0;
    logic [31:0] s_axi_wdata=0,s_axi_rdata;
    logic [3:0] s_axi_wstrb=15;
    logic [1:0] s_axi_bresp,s_axi_rresp;
    logic s_axi_awvalid=0,s_axi_wvalid=0,s_axi_arvalid=0,s_axi_bready=0,s_axi_rready=0;
    logic s_axi_awready,s_axi_wready,s_axi_arready,s_axi_bvalid,s_axi_rvalid;
    logic box_send,mailbox_recover,epoch_changed,mailbox_busy,channel_ready,src_ack,src_timeout,expired,src_reset_event;
    logic [447:0] box_shadow,dst_payload;
    logic dst_frame_start=0,dst_update,dst_box_valid;
    overlay_regs regs (
        .aclk(aclk),.aresetn(aresetn),
        .s_axi_awaddr(s_axi_awaddr),.s_axi_awvalid(s_axi_awvalid),.s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata),.s_axi_wstrb(s_axi_wstrb),.s_axi_wvalid(s_axi_wvalid),.s_axi_wready(s_axi_wready),
        .s_axi_bresp(s_axi_bresp),.s_axi_bvalid(s_axi_bvalid),.s_axi_bready(s_axi_bready),
        .s_axi_araddr(s_axi_araddr),.s_axi_arvalid(s_axi_arvalid),.s_axi_arready(s_axi_arready),
        .s_axi_rdata(s_axi_rdata),.s_axi_rresp(s_axi_rresp),.s_axi_rvalid(s_axi_rvalid),.s_axi_rready(s_axi_rready),
        .snap_busy(1'b0),.snap_ready(1'b0),.snap_error(1'b0),.mailbox_busy(mailbox_busy),.channel_ready(channel_ready),.channel_reset_event(src_reset_event),
        .snap_request_id(32'b0),.snap_frame_id(32'b0),.snap_epoch(32'b0),.snap_error_code(32'b0),.box_ack_sequence(32'b0),
        .snap_source_ticks(64'b0),.snap_commit_ticks(64'b0),
        .snap_ready_event(1'b0),.snap_abort_event(1'b0),.format_error_event(1'b0),.snap_timeout_event(1'b0),
        .box_expire_event(expired),.mailbox_timeout_event(src_timeout),
        .box_send(box_send),.mailbox_recover(mailbox_recover),.epoch_changed(epoch_changed),.box_shadow(box_shadow)
    );
    bbox_mailbox #(.TIMEOUT_CYCLES(128)) mailbox (
        .src_clk(aclk),.src_rst_n(aresetn),.dst_clk(dst_clk),.dst_rst_n(dst_rst_n),
        .src_send(box_send),.src_recover(mailbox_recover),.invalidate(epoch_changed),
        .src_payload(box_shadow),.dst_frame_start(dst_frame_start),
        .src_busy(mailbox_busy),.src_channel_ready(channel_ready),.src_ack(src_ack),.src_timeout(src_timeout),.src_reset_event(src_reset_event),
        .dst_payload(dst_payload),.dst_update(dst_update),.dst_box_valid(dst_box_valid),.expired(expired)
    );
    task automatic idle;
        integer limit;
        begin
            limit=0;
            while(mailbox_busy || !channel_ready) begin
                @(negedge aclk); if(limit++>300) $fatal(1,"epoch channel idle timeout");
            end
            repeat(3) @(negedge aclk);
        end
    endtask
    task automatic write_reg(input logic [15:0] addr,input logic [31:0] data,input logic [1:0] response);
        begin
            @(negedge aclk); s_axi_awaddr=addr; s_axi_wdata=data; s_axi_awvalid=1; s_axi_wvalid=1;
            do @(posedge aclk); while(!s_axi_awready || !s_axi_wready);
            @(negedge aclk); s_axi_awvalid=0; s_axi_wvalid=0;
            while(!s_axi_bvalid) @(negedge aclk);
            if(s_axi_bresp!==response) $fatal(1,"EPOCH response addr=%04x data=%08x expected=%b actual=%b",addr,data,response,s_axi_bresp);
            s_axi_bready=1; @(negedge aclk); s_axi_bready=0;
        end
    endtask
    task automatic frame;
        begin
            repeat(12) @(negedge aclk);
            @(negedge dst_clk); dst_frame_start=1;
            @(negedge dst_clk); dst_frame_start=0;
            idle();
        end
    endtask
    initial begin
        repeat(5) @(negedge aclk); aresetn=1; dst_rst_n=1; idle();
        write_reg('h004,1,0); idle();
        for(integer w=0;w<14;w++) write_reg('h040+w*4,0,0);
        write_reg('h040,1,0); write_reg('h044,10,0); write_reg('h048,20,0);
        write_reg('h04c,30,0); write_reg('h050,40,0);
        write_reg('h05c,1,0); write_reg('h074,1,0);
        write_reg('h008,16,0); frame();
        if(!dst_box_valid || dst_payload[447:416]!=1) $fatal(1,"first epoch not applied");
        // Keep PS registers running; ONLY reset the display domain.
        @(negedge dst_clk); dst_rst_n=0;
        repeat(10) @(negedge aclk); dst_rst_n=1; idle();
        if(dst_box_valid) $fatal(1,"old epoch box after display reset");
        write_reg('h008,16,2); // Old shadow and epoch cannot be resubmitted.
        write_reg('h004,1,2); // Same epoch is not a refresh.
        write_reg('h004,2,0); idle();
        write_reg('h008,16,2); // Even after refresh, shadow epoch=1 remains stale.
        write_reg('h05c,2,0); write_reg('h074,2,0);
        write_reg('h008,16,0); frame();
        if(!dst_box_valid || dst_payload[447:416]!=2 || dst_payload[255:224]!=2)
            $fatal(1,"new epoch payload not applied");
        // A physical display reset during an intentional epoch clear is another
        // generation loss; it must not be masked as the expected ready down/up.
        write_reg('h004,3,0);
        wait(!channel_ready);
        @(negedge dst_clk); dst_rst_n=0;
        repeat(10) @(negedge aclk); dst_rst_n=1; idle();
        write_reg('h05c,3,0); write_reg('h074,3,0);
        write_reg('h008,16,2);
        write_reg('h004,3,2);
        write_reg('h004,4,0); idle();
        write_reg('h05c,4,0); write_reg('h074,4,0);
        write_reg('h008,16,0); frame();
        if(!dst_box_valid || dst_payload[255:224]!=4) $fatal(1,"refresh after reset during clear failed");
        $display("EPOCH_PASS display_reset=isolated old_result=rejected new_epoch=required");
        $finish;
    end
    initial begin #1000000; $fatal(1,"EPOCH_TIMEOUT"); end
endmodule
