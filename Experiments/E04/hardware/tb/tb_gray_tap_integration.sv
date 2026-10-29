`timescale 1ns/1ps
// Exercise unchanged WP2 DVP, actual Xilinx asynchronous FIFOs, actual WP3,
// and the NEW top-level tap. Baseline is the original wrapper with only its
// module name changed. Only sensor SCCB completion is injected; no video logic
// is mocked. Random RGB stalls are identical on both paths.
module tb_gray_tap_integration #(
    parameter integer SYSTEM_MODE=0,FRAME_COUNT=2
)(
    input wire ctrl_request,ctrl_release,ctrl_cancel,ctrl_clear,
    input wire [31:0] ctrl_request_id,ctrl_epoch,
    input wire [63:0] ctrl_ticks,
    input wire ctrl_bram_en,
    input wire [16:0] ctrl_bram_addr,
    output logic source_complete=0
);
    logic aclk=0,cam_pclk=0,sys_clk50=0,xclk24=0;
    always #5 aclk=~aclk;
    always #11 cam_pclk=~cam_pclk;
    always #10 sys_clk50=~sys_clk50;
    always #20.833 xclk24=~xclk24;
    logic aresetn=0,sys_rst_n=0,capture_enable=1;
    logic cam_vsync=1,cam_href=0;
    logic [7:0] cam_data=0;
    wire cam_xclk,cam_scl,base_xclk,base_scl;
    tri1 cam_sda,base_sda;
    logic m_axis_tready=1;
    wire m_axis_tvalid,m_axis_tuser,m_axis_tlast;
    wire [15:0] m_axis_tdata;
    wire [31:0] status,base_status;
    wire base_valid,base_sof,base_eol;
    wire [15:0] base_data;
    wire gray_valid,gray_sof,gray_eol,frame_abort,frame_commit,gray_resetn;
    wire [7:0] gray_data;
    wire [31:0] committed_frame_id;
    wire [31:0] gray_source_id,verdict_source_id;
    wire verdict_valid,verdict_good,provenance_fault;
    logic request=0,release_frame=0,cancel=0,clear_error=0;
    logic [31:0] request_id=51,epoch=4;
    logic [63:0] time_ticks=0;
    wire busy,ready,error,bram_we;
    wire [31:0] snap_request_id,snap_frame_id,snap_epoch,snap_error_code,bram_wdata;
    wire [63:0] snap_source_ticks,snap_commit_ticks;
    wire [14:0] bram_addr;
    wire snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event;
    logic bram_en=0;
    logic [16:0] read_addr=0;
    wire [31:0] bram_rddata;
    logic [7:0] expected[0:95999];
    logic [7:0] base_expected[0:95999];
    // Bound the simulator oracle storage to one frame; all FRAME_COUNT frames
    // remain checked against independent Python files, not a reduced subset.
    logic [7:0] frame_expected[0:95999];
    string golden_name;
    integer golden_fd;
    logic [7:0] expected_pixel;
    integer rgb_count=0,gray_count=0,commits=0,aborts=0,words=0;
    // User-approved status retiming is not RGB retiming. Derive the expected
    // stable level from the IMMUTABLE baseline camera counters, sample on the
    // source edge, then use the specified two receiving edges. Never use the
    // derived DUT's good/bad registers to compute their own expected values.
    reg [1:0] expected_cam_status=0,expected_status_meta=0,expected_status=0;
    always @(posedge cam_pclk or negedge baseline.path_cam_rst_n)
        if(!baseline.path_cam_rst_n) expected_cam_status<=0;
        else expected_cam_status<={baseline.frames_good!=0,
                                  (baseline.frames_bad!=0)||(baseline.frames_dropped!=0)};
    always @(posedge aclk or negedge baseline.path_axi_rst_n)
        if(!baseline.path_axi_rst_n) begin expected_status_meta<=0;expected_status<=0;end
        else begin expected_status_meta<=expected_cam_status;expected_status<=expected_status_meta;end
    logic [31:0] lfsr=32'h5123abc9;
    real_camera_wp2_wp3_axis_source dut(
        .sys_clk50(sys_clk50),.sys_rst_n(sys_rst_n),.xclk24(xclk24),
        .cam_xclk(cam_xclk),.cam_scl(cam_scl),.cam_sda(cam_sda),
        .cam_pclk(cam_pclk),.cam_vsync(cam_vsync),.cam_href(cam_href),.cam_data(cam_data),
        .aclk(aclk),.aresetn(aresetn),.capture_enable(capture_enable),
        .m_axis_tvalid(m_axis_tvalid),.m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),.m_axis_tuser(m_axis_tuser),.m_axis_tlast(m_axis_tlast),
        .status(status),.gray_tap_valid(gray_valid),.gray_tap_data(gray_data),
        .gray_tap_sof(gray_sof),.gray_tap_eol(gray_eol),.gray_tap_abort(frame_abort),
        .gray_tap_commit(frame_commit),.gray_tap_frame_id(committed_frame_id),
        .gray_tap_resetn(gray_resetn),.gray_tap_source_id(gray_source_id),
        .gray_tap_verdict_source_id(verdict_source_id),.gray_tap_verdict_valid(verdict_valid),
        .gray_tap_verdict_good(verdict_good),.gray_tap_provenance_fault(provenance_fault));
    real_camera_wp2_wp3_axis_source_baseline baseline(
        .sys_clk50(sys_clk50),.sys_rst_n(sys_rst_n),.xclk24(xclk24),
        .cam_xclk(base_xclk),.cam_scl(base_scl),.cam_sda(base_sda),
        .cam_pclk(cam_pclk),.cam_vsync(cam_vsync),.cam_href(cam_href),.cam_data(cam_data),
        .aclk(aclk),.aresetn(aresetn),.capture_enable(capture_enable),
        .m_axis_tvalid(base_valid),.m_axis_tready(m_axis_tready),.m_axis_tdata(base_data),
        .m_axis_tuser(base_sof),.m_axis_tlast(base_eol),.status(base_status));
    gray_snapshot_capture cap(.aresetn(aresetn && gray_resetn),
        .request(SYSTEM_MODE?ctrl_request:request),.release_frame(SYSTEM_MODE?ctrl_release:release_frame),
        .cancel(SYSTEM_MODE?ctrl_cancel:cancel),.clear_error(SYSTEM_MODE?ctrl_clear:clear_error),
        .request_id(SYSTEM_MODE?ctrl_request_id:request_id),.epoch(SYSTEM_MODE?ctrl_epoch:epoch),
        .time_ticks(SYSTEM_MODE?ctrl_ticks:time_ticks),.*);
    gray_snapshot_bram ram(.aclk(aclk),.bram_we(bram_we),.bram_addr(bram_addr),
        .bram_wdata(bram_wdata),.bram_clk(aclk),.bram_rst(!aresetn),
        .bram_en(SYSTEM_MODE?ctrl_bram_en:bram_en),
        .bram_byte_addr(SYSTEM_MODE?ctrl_bram_addr:read_addr),.bram_rddata(bram_rddata),
        .bram_wrdata(32'hffffffff),.bram_wrwe(4'hf));
    function automatic [15:0] pattern(input integer n,input integer f);
        pattern=(n*37)^(n>>3)^16'h5a35^(f*16'h137);
    endfunction
    always @(negedge aclk) begin
        lfsr={lfsr[30:0],lfsr[31]^lfsr[21]^lfsr[1]^lfsr[0]};
        m_axis_tready=lfsr[2:0]!=0;
    end
    always @(posedge aclk) begin
        time_ticks<=time_ticks+1;
        if(aresetn) begin
            if({m_axis_tvalid,m_axis_tdata,m_axis_tuser,m_axis_tlast} !==
               {base_valid,base_data,base_sof,base_eol})
                $fatal(1,"TAP RGB changed pixel=%0d expected=%h actual=%h",rgb_count,
                       {base_valid,base_data,base_sof,base_eol},
                       {m_axis_tvalid,m_axis_tdata,m_axis_tuser,m_axis_tlast});
            if({status[31:8],status[5:0]} !== {base_status[31:8],base_status[5:0]} ||
               status[7:6] !== expected_status)
                $fatal(1,"TAP status sampling pixel=%0d expected=%h actual=%h",rgb_count,
                       {base_status[31:8],expected_status,base_status[5:0]},status);
            if(m_axis_tvalid && m_axis_tready) begin
                if(m_axis_tdata!==pattern(rgb_count%384000,rgb_count/384000))
                    $fatal(1,"TAP RGB byte order pixel=%0d expected=%h actual=%h",rgb_count,
                        pattern(rgb_count%384000,rgb_count/384000),m_axis_tdata);
                rgb_count<=rgb_count+1;
            end
            if(gray_valid) begin
                if(gray_sof && gray_count%96000!=0) $fatal(1,"TAP repeated SOF");
                if(gray_count<0 || gray_count>=FRAME_COUNT*96000) $fatal(1,"TAP unexpected gray count=%0d",gray_count);
                // Keep both memory accesses explicitly in range. This also
                // avoids speculative out-of-range indexing in old XSim codegen.
                if(SYSTEM_MODE) begin
                    if(gray_count%96000==0) begin
                        golden_name=$sformatf("tap_frame_%03d.mem",gray_count/96000);
                        golden_fd=$fopen(golden_name,"r");
                        if(!golden_fd)$fatal(1,"TOP missing oracle frame=%0d file=%s",gray_count/96000,golden_name);
                        $fclose(golden_fd);
                        $readmemh(golden_name,frame_expected);
                    end
                    expected_pixel=frame_expected[gray_count%96000];
                end
                else if(gray_count<96000) expected_pixel=base_expected[gray_count];
                else expected_pixel=expected[gray_count-96000];
                if(gray_data !== expected_pixel)
                    $fatal(1,"TAP gray frame=%0d pixel=%0d expected=%h actual=%h",gray_count/96000,
                        gray_count%96000,expected_pixel,gray_data);
                if(gray_count%24000==0) $display("TAP_PROGRESS gray=%0d rgb=%0d source=%0d",gray_count,rgb_count,gray_source_id);
                if(gray_sof && gray_source_id!==gray_count/96000+1)
                    $fatal(1,"TAP source ID expected=%0d actual=%0d",gray_count/96000+1,gray_source_id);
                gray_count<=gray_count+1;
            end
            if(frame_commit) begin
                if(committed_frame_id!==commits+1 || gray_count!=(commits+1)*96000 || rgb_count!=(commits+1)*384000)
                    $fatal(1,"TAP commit alignment id=%0d rgb=%0d gray=%0d",committed_frame_id,rgb_count,gray_count);
                commits<=commits+1;
            end
            if(frame_abort) aborts<=aborts+1;
            if(bram_we) words<=words+1;
        end
    end
    task frame(input integer f);
        logic [15:0] value;
        begin
            @(negedge cam_pclk);cam_vsync=0;repeat(12) @(negedge cam_pclk);
            for(integer y=0;y<480;y++) begin
                for(integer b=0;b<1600;b++) begin
                    value=pattern(y*800+b/2,f);cam_href=1;
                    cam_data=b%2?value[15:8]:value[7:0];@(negedge cam_pclk);
                end
                cam_href=0;repeat(18) @(negedge cam_pclk);
            end
`ifdef TEST_LATE_BAD_TAIL
            if(f==1) begin
                // All expected pixels were sent. Add a 481st raw row before
                // VSYNC: WP2 suppresses its pixels but flags the final frame.
                for(integer b=0;b<1600;b++) begin
                    cam_href=1;cam_data=b[7:0];@(negedge cam_pclk);
                end
                cam_href=0;repeat(18) @(negedge cam_pclk);
            end
`endif
            cam_vsync=1;repeat(200) @(negedge cam_pclk);
        end
    endtask
    initial begin
        $readmemh("tap_expected.mem",expected);
        $readmemh("tap_base_expected.mem",base_expected);
        // SCCB is an external sensor boundary, not the subject of this test.
        force dut.wp1_status=32'h56400001;
        force baseline.wp1_status=32'h56400001;
        repeat(20) @(negedge cam_pclk);sys_rst_n=1;aresetn=1;
        repeat(50) @(negedge cam_pclk);
        if(SYSTEM_MODE) begin
            for(integer f=0;f<FRAME_COUNT;f++) frame(f);
            repeat(100) @(negedge aclk);
            if(rgb_count!=FRAME_COUNT*384000 || gray_count!=FRAME_COUNT*96000 ||
               commits!=FRAME_COUNT || aborts!=0 || status[5:2]!=0)
                $fatal(1,"TOP source counts rgb=%0d gray=%0d commits=%0d aborts=%0d",rgb_count,gray_count,commits,aborts);
            source_complete=1;
            // Parent controls completion after display and simulated PS checks.
        end else begin
        fork
            begin frame(0);frame(1); end
            begin
                wait(rgb_count>=80000);@(negedge aclk);request=1;
                @(negedge aclk);request=0;
                wait(commits==1);if(ready || error || words!=0) $fatal(1,"TAP captured preceding partial frame");
            end
        join
        repeat(100) @(negedge aclk);
`ifdef TEST_LATE_BAD_TAIL
        if(ready || !error)
            $fatal(1,"TAP_LATE_VERDICT_BUG ready=%0d error=%0d raw_bad=%0d aborts=%0d",ready,error,dut.frames_bad,aborts);
        $display("LATE_TAIL_PASS malformed_frame_rejected=1");$finish;
`endif
        if(!ready || error || snap_frame_id!=2 || words!=24000 || commits!=2)
            $fatal(1,"TAP snapshot not ready id=%0d commits=%0d err=%0d words=%0d",snap_frame_id,commits,snap_error_code,words);
        for(integer i=0;i<24000;i++) begin
            bram_en=1;read_addr=4*i;@(posedge aclk);#1;
            if(bram_rddata!=={expected[4*i+3],expected[4*i+2],expected[4*i+1],expected[4*i]})
                $fatal(1,"TAP gray pixel=%0d expected=%h actual=%h",4*i,
                    {expected[4*i+3],expected[4*i+2],expected[4*i+1],expected[4*i]},bram_rddata);
            @(negedge aclk);
        end
        bram_en=0;
        if(aborts!=0 || status[5:2]!=0) $fatal(1,"TAP unexpected fault");
        $display("TAP_PASS frames=2 rgb_pixels=768000 gray_pixels=192000 snapshot_words=24000");$finish;
        end
    end
    initial begin #(SYSTEM_MODE?2300000000.0:60000000.0);$fatal(1,"TAP_TIMEOUT");end
endmodule
