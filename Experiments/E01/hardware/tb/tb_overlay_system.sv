`timescale 1ns/1ps
// Real DVP/WP2 + actual Xilinx FIFOs/WP3 + snapshot/RAM + AXI-Lite regs
// + ACK tracker + actual TX2 viewport/mailbox/overlay. Explicit boundaries:
// DDR/VDMA is a 3-bank frame memory model; PS is an AXI/BRAM transaction driver;
// SCCB completion and physical TMDS serializer are external test boundaries.
// This is NOT a DDR bandwidth, ARM Haar performance, or electrical TMDS test.
module tb_overlay_system;
`ifdef TOP_DEBUG_TWO
    localparam integer FRAMES=2,SAMPLES=1;
`elsif TOP_EXTENDED_HUNDRED
    localparam integer FRAMES=100,SAMPLES=40,RESET_A=12,RESET_B=25;
`else
    // User-approved acceptance gate: 30 complete source frames. Keep both
    // isolated reset paths and 12 complete independent snapshot comparisons.
    localparam integer FRAMES=30,SAMPLES=12,RESET_A=3,RESET_B=8;
`endif
`ifdef TOP_DEBUG_TWO
    localparam integer RESET_A=-1,RESET_B=-1;
`endif
    wire aclk,aresetn;
    logic pixel_clk=0,pixel_rst_n=0,box_reset_n=1;
    always #6.734 pixel_clk=~pixel_clk;
    logic [15:0] s_axi_awaddr=0,s_axi_araddr=0;
    logic s_axi_awvalid=0,s_axi_awready,s_axi_wvalid=0,s_axi_wready;
    logic [31:0] s_axi_wdata=0,s_axi_rdata;
    logic [3:0] s_axi_wstrb=15;
    logic [1:0] s_axi_bresp,s_axi_rresp;
    logic s_axi_bvalid,s_axi_bready=0,s_axi_arvalid=0,s_axi_arready;
    logic s_axi_rvalid,s_axi_rready=0;
    wire request,release_frame,cancel,clear_error,box_send,mailbox_recover,epoch_changed;
    wire [31:0] request_id,epoch,box_ack_sequence;
    wire [447:0] box_shadow;
    wire [63:0] time_ticks;
    wire mailbox_busy,channel_ready,channel_reset_event,ack;
    wire box_expire_event,mailbox_timeout_event;
    logic bram_en=0;
    logic [16:0] bram_addr=0;
    wire source_complete;
    tb_gray_tap_integration #(.SYSTEM_MODE(1),.FRAME_COUNT(FRAMES)) tap(
        .ctrl_request(request),.ctrl_release(release_frame),.ctrl_cancel(cancel),.ctrl_clear(clear_error),
        .ctrl_request_id(request_id),.ctrl_epoch(epoch),.ctrl_ticks(time_ticks),
        .ctrl_bram_en(bram_en),.ctrl_bram_addr(bram_addr),.source_complete(source_complete));
    assign aclk=tap.aclk; assign aresetn=tap.aresetn;
    overlay_regs regs(.aclk(aclk),.aresetn(aresetn),
        .snap_busy(tap.busy),.snap_ready(tap.ready),.snap_error(tap.error),
        .snap_request_id(tap.snap_request_id),.snap_frame_id(tap.snap_frame_id),
        .snap_epoch(tap.snap_epoch),.snap_error_code(tap.snap_error_code),
        .snap_source_ticks(tap.snap_source_ticks),.snap_commit_ticks(tap.snap_commit_ticks),
        .snap_ready_event(tap.snap_ready_event),.snap_abort_event(tap.snap_abort_event),
        .format_error_event(tap.format_error_event),.snap_timeout_event(tap.snap_timeout_event),.*);
    overlay_ack_tracker tracker(.aclk(aclk),.aresetn(aresetn),.invalidate(epoch_changed),
        .ack(ack),.sequence_value(box_shadow[447:416]),.acknowledged_sequence(box_ack_sequence));

    // Frame storage consumes actual source RGB, never regenerates camera data.
    // Reader locks a complete bank until all 384000 words have handshaken.
    logic [15:0] ddr[0:1151999];
    integer write_bank=0,front_bank=-1,read_bank=-1,write_index=0;
    integer rgb_frames=0,tx_x=0,tx_y=0,seed=20261006;
    logic tx_valid=0,tx_user=0,tx_last=0;
    logic [15:0] tx_data=0;
    wire tx_ready,base_ready;
    always @(posedge aclk) begin
        if(aresetn && tap.m_axis_tvalid && tap.m_axis_tready) begin
            if(write_bank==read_bank) $fatal(1,"TOP DDR overwrite bank=%0d",write_bank);
            if(tap.m_axis_tuser!==(write_index==0) || tap.m_axis_tlast!==(write_index%800==799))
                $fatal(1,"TOP DDR marker pixel=%0d",write_index);
            ddr[write_bank*384000+write_index]=tap.m_axis_tdata;
            if(write_index==383999) begin
                front_bank=write_bank;write_index=0;rgb_frames++;
                for(integer b=0;b<3;b++) if(b!=front_bank && b!=read_bank) write_bank=b;
            end else write_index++;
        end
        if(aresetn && tap.ready && tap.bram_we) $fatal(1,"TOP held snapshot overwritten");
    end
    always @(posedge pixel_clk) begin
        if(!pixel_rst_n)begin tx_x=0;tx_y=0;read_bank=-1;end
        else if(tx_valid && tx_ready)begin
            if(tx_x==799)begin
                tx_x=0;
                if(tx_y==479)begin tx_y=0;read_bank=-1;end else tx_y++;
            end else tx_x++;
        end
    end
    always @(negedge pixel_clk) begin
        if(pixel_rst_n && read_bank<0 && front_bank>=0) read_bank=front_bank;
        tx_valid=pixel_rst_n && read_bank>=0;
        tx_user=(tx_x==0 && tx_y==0);tx_last=(tx_x==799);
        if(read_bank>=0) tx_data=ddr[read_bank*384000+tx_y*800+tx_x];
        else tx_data=0;
    end
    wire [2:0] dp,dn; wire cp,cn;
    wire [31:0] hdmi_status;
    wire [23:0] base_rgb; wire base_de,base_hs,base_vs,base_underflow;
    wire [15:0] base_frames;
    tx2_axis_sink sink(.pixel_clk(pixel_clk),.serial_clk(1'b0),.rst_n(pixel_rst_n),
        .s_tvalid(tx_valid),.s_tready(tx_ready),.s_tdata(tx_data),.s_tuser(tx_user),.s_tlast(tx_last),
        .tmds_data_p(dp),.tmds_data_n(dn),.tmds_clk_p(cp),.tmds_clk_n(cn),.status(hdmi_status),
        .box_src_clk(aclk),.box_src_rst_n(aresetn && box_reset_n),
        .box_send(box_send),.box_recover(mailbox_recover),.box_invalidate(epoch_changed),.box_payload(box_shadow),
        .box_busy(mailbox_busy),.box_ack(ack),.box_timeout(mailbox_timeout_event),
        .box_channel_ready(channel_ready),.box_reset_event(channel_reset_event),.box_expired(box_expire_event));
    tx2_axis_viewport_original base(pixel_clk,pixel_rst_n,tx_valid,base_ready,tx_data,tx_user,tx_last,
                                   base_rgb,base_de,base_hs,base_vs,base_underflow,base_frames);
    integer starts=0,checked=0,green=0,snapshots=0,reset_checks=0;
    logic [23:0] expected_rgb;
    logic expected_de,expected_hs,expected_vs;
    function automatic [23:0] golden(input [23:0] rgb,input bit de,ok,
                                   input integer x,y,input bit valid,input [447:0] box);
        integer l,r,t,b,bx,by,bw,bh;
        begin
            golden=rgb;bx=box[63:32];by=box[95:64];bw=box[127:96];bh=box[159:128];
            if(valid && box[31:0]==1 && bx>=0 && bx<400 && by>=0 && by<240 &&
               bw>0 && bh>0 && bw<=400-bx && bh<=240-by)begin
                l=240+2*bx;r=l+2*bw;t=120+2*by;b=t+2*bh;
                if(de && ok && x>=l && x<r && y>=t && y<b &&
                   (x-l<2 || r-1-x<2 || y-t<2 || b-1-y<2))golden=24'h00ff00;
            end
        end
    endfunction
    always @(posedge pixel_clk) if(pixel_rst_n)begin
        if(tx_ready!==base_ready)$fatal(1,"TOP ready changed cycle=%0d",checked);
        expected_rgb=golden(base_rgb,base_de,sink.pixel_ok,sink.active_x,sink.active_y,
                            sink.mailbox_box_valid,sink.applied_payload);
        expected_de=base_de;expected_hs=base_hs;expected_vs=base_vs;
        #0.5;
        if({sink.rgb,sink.de,sink.hs,sink.vs}!=={base_rgb,base_de,base_hs,base_vs})
            $fatal(1,"TOP baseline RGB changed cycle=%0d expected=%h actual=%h",checked,base_rgb,sink.rgb);
        if(hdmi_status!=={base_frames,15'd0,base_underflow})$fatal(1,"TOP underflow/frame status changed");
        if({sink.u_tx.rgb,sink.u_tx.de,sink.u_tx.hs,sink.u_tx.vs}!==
           {expected_rgb,expected_de,expected_hs,expected_vs})
            $fatal(1,"TOP output pixel cycle=%0d x=%0d y=%0d expected=%h actual=%h",checked,
                sink.active_x,sink.active_y,expected_rgb,sink.u_tx.rgb);
        if(sink.frame_start)starts++;
        if(sink.legal_box && expected_rgb==24'h00ff00)green++;
        checked++;
    end
    task automatic aw(input [15:0] address);
        @(negedge aclk);s_axi_awaddr=address;s_axi_awvalid=1;
        do @(posedge aclk);while(!s_axi_awready);
        @(negedge aclk);s_axi_awvalid=0;
    endtask
    task automatic wd(input [31:0] value);
        @(negedge aclk);s_axi_wdata=value;s_axi_wvalid=1;
        do @(posedge aclk);while(!s_axi_wready);
        @(negedge aclk);s_axi_wvalid=0;
    endtask
    task automatic write_reg(input [15:0] address,input [31:0] value);
        integer delay;
        begin
            if($unsigned($random(seed))%2)begin wd(value);repeat(3)@(negedge aclk);aw(address);end
            else begin aw(address);repeat(4)@(negedge aclk);wd(value);end
            wait(s_axi_bvalid);delay=1+$unsigned($random(seed))%7;
            repeat(delay)begin
                @(negedge aclk);
                if(!s_axi_bvalid || s_axi_bresp!==0)$fatal(1,"TOP AXI write addr=%h resp=%b",address,s_axi_bresp);
            end
            s_axi_bready=1;@(negedge aclk);s_axi_bready=0;
        end
    endtask
    task automatic read_reg(input [15:0] address,output [31:0] value);
        integer delay;
        begin
            @(negedge aclk);s_axi_araddr=address;s_axi_arvalid=1;
            do @(posedge aclk);while(!s_axi_arready);
            @(negedge aclk);s_axi_arvalid=0;wait(s_axi_rvalid);value=s_axi_rdata;
            delay=1+$unsigned($random(seed))%8;
            repeat(delay)begin
                @(negedge aclk);
                if(!s_axi_rvalid || s_axi_rresp!==0 || s_axi_rdata!==value)$fatal(1,"TOP AXI read stability addr=%h",address);
            end
            s_axi_rready=1;@(negedge aclk);s_axi_rready=0;
        end
    endtask
    logic [447:0] wanted;
    logic [31:0] value,previous_frame=0,current_frame;
    logic [7:0] snapshot_expected[0:95999];
    string snapshot_golden_name;
    integer snapshot_golden_fd;
    initial begin
        wait(aresetn);repeat(8)@(negedge aclk);pixel_rst_n=1;
        wait(channel_ready && !mailbox_busy);write_reg('h004,7);
        repeat(30)@(negedge aclk);wait(channel_ready && !mailbox_busy);
        for(integer sample=0;sample<SAMPLES;sample++)begin
            write_reg('h010,sample+1);write_reg('h008,1);
            wait(tap.ready || tap.error);
            if(tap.error)$fatal(1,"TOP snapshot sample=%0d error=%0d",sample,tap.snap_error_code);
            read_reg('h018,current_frame);
            if(current_frame<=previous_frame || current_frame>FRAMES || tap.snap_request_id!=sample+1 || tap.snap_epoch!=epoch)
                $fatal(1,"TOP metadata sample=%0d previous=%0d actual=%0d",sample,previous_frame,current_frame);
            previous_frame=current_frame;
            snapshot_golden_name=$sformatf("tap_frame_%03d.mem",current_frame-1);
            snapshot_golden_fd=$fopen(snapshot_golden_name,"r");
            if(!snapshot_golden_fd)$fatal(1,"TOP missing snapshot oracle frame=%0d",current_frame);
            $fclose(snapshot_golden_fd);
            $readmemh(snapshot_golden_name,snapshot_expected);
            for(integer w=0;w<24000;w++)begin
                @(negedge aclk);bram_en=1;bram_addr=4*w;@(posedge aclk);#1;
                if(tap.bram_rddata!=={snapshot_expected[4*w+3],snapshot_expected[4*w+2],
                                     snapshot_expected[4*w+1],snapshot_expected[4*w]})
                    $fatal(1,"TOP copied pixel frame=%0d index=%0d actual=%h",current_frame,4*w,tap.bram_rddata);
                if(w%256==255)begin bram_en=0;repeat(1+$unsigned($random(seed))%9)@(negedge aclk);end
            end
            @(negedge aclk);bram_en=0;
            repeat(20+$unsigned($random(seed))%500)@(negedge aclk);
            if(!tap.ready || tap.snap_frame_id!=current_frame)$fatal(1,"TOP hold changed frame=%0d",current_frame);
            write_reg('h008,2);wait(!tap.ready);
            wanted=0;wanted[31:0]=(sample%7!=6);wanted[63:32]=(current_frame*7)%280;
            wanted[95:64]=(current_frame*3)%170;wanted[127:96]=60;wanted[159:128]=60;
            wanted[191:160]=current_frame;wanted[223:192]=sample+1;wanted[255:224]=epoch;
            wanted[319:256]=tap.snap_source_ticks;wanted[383:320]=time_ticks;
            wanted[415:384]=(sample%7==6);wanted[447:416]=sample+1;
            wait(channel_ready && !mailbox_busy);
            for(integer word=0;word<14;word++)write_reg('h040+word*4,wanted[32*word+:32]);
            write_reg('h008,16);
            // ACK is a pulse; bus response stalls may outlast it. Wait on the
            // actual acknowledged-sequence level, as the PS must do as well.
            wait(!mailbox_busy && box_ack_sequence==sample+1);repeat(3)@(negedge aclk);
            if(sink.applied_payload!==wanted)$fatal(1,"TOP applied payload sequence=%0d",sample+1);
            read_reg('h03c,value);if(value!=sample+1)$fatal(1,"TOP ACK sequence expected=%0d actual=%0d",sample+1,value);
            snapshots++;
            if(sample==RESET_A || sample==RESET_B)begin
                if(sample==RESET_A)begin @(negedge aclk);box_reset_n=0;repeat(5)@(negedge aclk);box_reset_n=1;end
                else begin @(negedge pixel_clk);pixel_rst_n=0;repeat(5)@(negedge pixel_clk);pixel_rst_n=1;end
                wait(channel_ready && !mailbox_busy);
                if(sink.mailbox_box_valid)$fatal(1,"TOP stale box survived isolated reset");
                write_reg('h004,epoch+1);repeat(30)@(negedge aclk);wait(channel_ready && !mailbox_busy);reset_checks++;
            end
            $display("TOP_PROGRESS snapshots=%0d source_frame=%0d hdmi_frames=%0d",snapshots,current_frame,starts);
        end
        // A box can be acknowledged before its first border reaches the
        // raster. Wait for actual rendered coverage, not just the ACK event.
        wait(source_complete && starts>=FRAMES && green>0);repeat(10)@(negedge aclk);
        if(rgb_frames!=FRAMES || snapshots!=SAMPLES || green==0 || mailbox_timeout_event || tap.error)
            $fatal(1,"TOP coverage camera=%0d snapshots=%0d green=%0d",rgb_frames,snapshots,green);
        if(FRAMES!=2 && reset_checks!=2)$fatal(1,"TOP resets not exercised");
        // Exercise the actual corrected source-path reset after all frames.
        tap.capture_enable=0;repeat(20)@(negedge tap.cam_pclk);
        if(tap.gray_resetn || tap.ready)$fatal(1,"TOP source reset retained snapshot");
        if(FRAMES!=2)$display("TOP_PASS frames=%0d snapshots=%0d rgb_pixels=%0d gray_pixels=%0d display_pixels=%0d resets=%0d",FRAMES,snapshots,tap.rgb_count,tap.gray_count,checked,reset_checks);
        else $display("TOP_DEBUG_PASS frames=2 snapshots=%0d (NOT full-chain gate)",snapshots);
        $finish;
    end
endmodule
