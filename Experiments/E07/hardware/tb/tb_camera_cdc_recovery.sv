`timescale 1ns/1ps
// Real derived front end; SCCB completion is the only sensor-side boundary.
// Pause PCLK to distinguish source-registered status from combinational CDC.
module tb_camera_cdc_recovery;
    reg cam_pclk=0,aclk=0,sys_clk50=0,xclk24=0,clock_run=1;
    always #11 if(clock_run) cam_pclk=~cam_pclk;
    always #5 aclk=~aclk;
    always #10 sys_clk50=~sys_clk50;
    always #20.833 xclk24=~xclk24;
    reg sys_rst_n=0,aresetn=0,capture_enable=1;
    reg cam_vsync=1,cam_href=0;
    reg [7:0] cam_data=8'hac;
    wire cam_xclk,cam_scl;
    tri1 cam_sda;
    wire [31:0] status;
    real_camera_wp2_wp3_axis_source dut(
        .sys_clk50(sys_clk50),.sys_rst_n(sys_rst_n),.xclk24(xclk24),
        .cam_xclk(cam_xclk),.cam_scl(cam_scl),.cam_sda(cam_sda),
        .cam_pclk(cam_pclk),.cam_vsync(cam_vsync),.cam_href(cam_href),.cam_data(cam_data),
        .aclk(aclk),.aresetn(aresetn),.capture_enable(capture_enable),
        .m_axis_tready(1'b1),.status(status));
    integer edge_count;
    task reset_release;
        begin
            @(negedge cam_pclk);sys_rst_n=0;#2;
            if(dut.cam_data_q !== 0) $fatal(1,"CAMERA_CDC asynchronous assertion failed");
            #3;sys_rst_n=1;
            for(edge_count=0;edge_count<2;edge_count=edge_count+1) begin
                @(posedge cam_pclk);#1;
                if(dut.cam_data_q !== 0)
                    $fatal(1,"CAMERA_CDC reset released before two PCLK edges edge=%0d",edge_count);
            end
            @(posedge cam_pclk);#1;
            if(dut.cam_data_q !== 8'hac) $fatal(1,"CAMERA_CDC IOB capture failed after release");
            repeat(12) @(negedge cam_pclk);
        end
    endtask
    initial begin
        force dut.wp1_status=32'h56400001;
        repeat(6) @(negedge cam_pclk);aresetn=1;
        reset_release();
        // A stopped source clock cannot register a new counter comparison.
        @(negedge cam_pclk);clock_run=0;
        force dut.frames_good=32'h1;force dut.frames_bad=32'h1;
        repeat(5) @(negedge aclk);
        if(status[7:6] !== 2'b00)
            $fatal(1,"CAMERA_CDC counter logic crossed before source clock status=%h",status);
        release dut.frames_good;release dut.frames_bad;
        repeat(5) @(negedge aclk);
        if(status[7:6] !== 2'b00) $fatal(1,"CAMERA_CDC off-edge transient leaked");
        force dut.frames_good=32'h1;force dut.frames_bad=32'h1;
        clock_run=1;
        repeat(4) @(negedge cam_pclk);repeat(4) @(negedge aclk);
        if(status[7:6] !== 2'b11) $fatal(1,"CAMERA_CDC registered status not delivered");
        release dut.frames_good;release dut.frames_bad;
        // Reset with no source edges must assert, but never release on ACLK.
        @(negedge cam_pclk);clock_run=0;#2;sys_rst_n=0;#2;
        if(dut.cam_data_q !== 0) $fatal(1,"CAMERA_CDC stopped-clock assertion failed");
        sys_rst_n=1;repeat(4) @(negedge aclk);
        if(dut.cam_data_q !== 0) $fatal(1,"CAMERA_CDC stopped-clock release failed");
        clock_run=1;reset_release();
        $display("CAMERA_CDC_PASS resets=3 stopped_clock=1 off_edge_status=2");
        $finish;
    end
    initial begin #20000;$fatal(1,"CAMERA_CDC_TIMEOUT");end
endmodule
