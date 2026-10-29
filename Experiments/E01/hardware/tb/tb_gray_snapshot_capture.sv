`timescale 1ns/1ps
// Real capture + inferred RAM. Mutations caught: early ready, omitted first/
// last word, swapped lanes, accepting stale commit, writing while READY.
module tb_gray_snapshot_capture;
    logic aclk=0, aresetn=0;
    always #5 aclk=~aclk;
    logic gray_valid=0,gray_sof=0,gray_eol=0;
    logic [7:0] gray_data=0;
    logic frame_abort=0,frame_commit=0,request=0,release_frame=0,cancel=0,clear_error=0;
    logic [31:0] committed_frame_id=9,request_id=12,epoch=3;
    logic [31:0] gray_source_id=32'd700,verdict_source_id=32'd700;
    logic verdict_valid=0,verdict_good=1,provenance_fault=0;
    logic [63:0] time_ticks=0;
    logic busy,ready,error,bram_we;
    logic [31:0] snap_request_id,snap_frame_id,snap_epoch,snap_error_code,bram_wdata;
    logic [63:0] snap_source_ticks,snap_commit_ticks;
    logic [14:0] bram_addr;
    logic snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event;
    logic bram_en=0,bram_rst=0;
    logic [16:0] read_addr=0;
    logic [31:0] bram_rddata;
    integer writes=0,ready_events=0;
`ifdef TB_BD_WRAPPER
    gray_snapshot_capture_bd #(.TIMEOUT_TICKS(64'd2000000)) dut(.*);
`else
    gray_snapshot_capture #(.TIMEOUT_TICKS(64'd2000000)) dut(.*);
`endif
    gray_snapshot_bram ram(.aclk(aclk),.bram_we(bram_we),.bram_addr(bram_addr),
        .bram_wdata(bram_wdata),.bram_clk(aclk),.bram_rst(bram_rst),
        .bram_en(bram_en),.bram_byte_addr(read_addr),.bram_rddata(bram_rddata),
        .bram_wrdata(32'hdeadbeef),.bram_wrwe(4'hf));
    always @(posedge aclk) begin
        time_ticks<=time_ticks+1;
        if(bram_we) writes<=writes+1;
        if(snap_ready_event) ready_events<=ready_events+1;
    end
    task tick; begin @(posedge aclk); #1; @(negedge aclk); end endtask
    task command(input integer kind);
        begin
            request=kind==1; release_frame=kind==2; cancel=kind==4; clear_error=kind==8;
            tick(); request=0;release_frame=0;cancel=0;clear_error=0;
        end
    endtask
    task pixel(input integer n,input integer kind);
        begin
            gray_valid=1;gray_data=n[7:0];gray_sof=n==0;
            gray_eol=n%400==399;
            if(kind==1 && n==398) gray_eol=1;
            if(kind==2 && n==399) gray_eol=0;
            if(kind==3 && n==2) gray_sof=1;
            tick(); gray_valid=0;gray_sof=0;gray_eol=0;
        end
    endtask
    task frame; begin for(integer n=0;n<96000;n++) pixel(n,0); end endtask
    task fail_check(input integer code);
        begin
            if(!error || ready || snap_error_code!=code)
                $fatal(1,"SNAPSHOT error expected=%0d actual=%0d ready=%0d",code,snap_error_code,ready);
            command(8);
            if(error || busy || ready) $fatal(1,"SNAPSHOT clear failed");
        end
    endtask
    task read_word(input integer address,input logic [31:0] expected);
        begin
            bram_en=1;read_addr=address;
            tick();
            if(bram_rddata!==expected)
                $fatal(1,"SNAPSHOT byte=%0d expected=%h actual=%h",address,expected,bram_rddata);
            bram_en=0;
        end
    endtask
    initial begin
        tick();tick();aresetn=1;tick();
        command(1);
        // Request in a previous frame: ignore a hundred partial-line pixels.
        for(integer n=40000;n<40100;n++) pixel(n,0);
        if(writes!=0) $fatal(1,"SNAPSHOT captured partial preceding frame");
        frame();
        if(ready || error || writes!=24000) $fatal(1,"SNAPSHOT premature ready/word count=%0d",writes);
        repeat(10) tick();
        frame_commit=1; committed_frame_id=10;tick();frame_commit=0;tick();
        if(ready || error) $fatal(1,"SNAPSHOT raster commit bypassed source verdict");
        verdict_valid=1;verdict_source_id=701;tick();verdict_valid=0;
        if(ready || error) $fatal(1,"SNAPSHOT unrelated verdict confirmed frame");
        verdict_valid=1;verdict_source_id=700;tick();verdict_valid=0;tick();
        if(!ready || snap_request_id!=12 || snap_frame_id!=700 || snap_epoch!=3)
            $fatal(1,"SNAPSHOT metadata mismatch");
        // Every physical word independently checked. Native PS write pins are
        // deliberately tied high: they must have NO effect on capture memory.
        for(integer i=0;i<24000;i++)
            read_word(4*i,32'h03020100+32'h04040404*(i%64));
        read_word(96000,0);read_word(1,0);
        for(integer f=0;f<100;f++) begin
            frame();frame_abort=1;frame_commit=1;committed_frame_id=committed_frame_id+1;
            tick();frame_abort=0;frame_commit=0;
        end
        if(writes!=24000 || !ready || snap_frame_id!=700 || ready_events!=1)
            $fatal(1,"SNAPSHOT held frame changed writes=%0d events=%0d",writes,ready_events);
        read_word(0,32'h03020100);read_word(95996,32'hfffefdfc);
        request_id=11;command(2);if(!ready) $fatal(1,"SNAPSHOT wrong owner released");
        request_id=12;command(2);if(ready || busy) $fatal(1,"SNAPSHOT release failed");
        for(integer k=1;k<=3;k++) begin
            command(1);for(integer n=0;n<400;n++) pixel(n,k); fail_check(1);
        end
        command(1);pixel(0,0);frame_abort=1;frame_commit=1;tick();
        frame_abort=0;frame_commit=0;fail_check(2);
        command(1);pixel(0,0);cancel=1;frame_abort=1;tick();cancel=0;frame_abort=0;
        if(error || busy || ready) $fatal(1,"SNAPSHOT cancel priority");
        command(1);time_ticks=time_ticks+2000001;tick();fail_check(3);
        command(1);frame();pixel(999,0);fail_check(1);
        command(1);frame();frame_commit=1;committed_frame_id=700;tick();frame_commit=0;fail_check(1);
        // Late bad verdict after a correctly numbered early raster commit.
        gray_source_id=800;command(1);frame();
        frame_commit=1;committed_frame_id=701;tick();frame_commit=0;
        if(ready || error) $fatal(1,"SNAPSHOT early raster published without final verdict");
        verdict_valid=1;verdict_source_id=800;verdict_good=0;tick();verdict_valid=0;fail_check(2);
        // A provenance-channel overrun destroys even an otherwise valid lease.
        verdict_good=1;gray_source_id=900;command(1);pixel(0,0);
        provenance_fault=1;tick();fail_check(2);provenance_fault=0;
        committed_frame_id=32'hffffffff;gray_source_id=0;command(1);frame();
        verdict_valid=1;verdict_source_id=0;tick();verdict_valid=0;
        frame_commit=1;committed_frame_id=0;tick();frame_commit=0;tick();
        if(!ready || snap_frame_id!=0) $fatal(1,"SNAPSHOT frame id wrap");
        // Later unrelated bad verdicts may not invalidate the validated frame.
        verdict_valid=1;verdict_good=0;verdict_source_id=1;tick();verdict_valid=0;
        if(!ready || error) $fatal(1,"SNAPSHOT later independent bad frame broke lease");
        aresetn=0;tick();if(ready || busy || error || bram_we) $fatal(1,"SNAPSHOT reset");
        $display("SNAPSHOT_PASS held_frames=100 words=24000 faults=10");$finish;
    end
    initial begin #200000000; $fatal(1,"SNAPSHOT_TIMEOUT"); end
endmodule
