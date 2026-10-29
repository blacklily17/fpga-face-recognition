`timescale 1ns/1ps
module tb_cnn_regs;
    reg clk=0; always #10 clk=~clk;
    reg resetn=0, abort_job=0, start=0, layer2=0;
    reg [5:0] shift=7;
    wire start_ready, busy, done, error;
    reg w_we=0, b_we=0;
    reg [15:0] w_addr=0;
    reg [7:0] b_addr=0;
    reg [31:0] w_data=0, b_data=0, s_data=0;
    reg [3:0] s_keep=15;
    reg s_valid=0, s_last=0, m_ready=0;
    wire s_ready, m_valid, m_last;
    wire [31:0] m_data;
    wire [3:0] m_keep;
    reg [15:0] awaddr=0, araddr=0;
    reg awvalid=0,wvalid=0,bready=0,arvalid=0,rready=0;
    reg [31:0] wdata=0;
    reg [3:0] wstrb=15;
    wire awready,wready,bvalid,arready,rvalid;
    wire [1:0] bresp,rresp;
    wire [31:0] rdata;
    cnn_regs_bd dut(.aclk(clk),.aresetn(resetn),
        .s_axi_awaddr(awaddr),.s_axi_awvalid(awvalid),.s_axi_awready(awready),
        .s_axi_wdata(wdata),.s_axi_wstrb(wstrb),.s_axi_wvalid(wvalid),.s_axi_wready(wready),
        .s_axi_bvalid(bvalid),.s_axi_bresp(bresp),.s_axi_bready(bready),
        .s_axi_araddr(araddr),.s_axi_arvalid(arvalid),.s_axi_arready(arready),
        .s_axi_rdata(rdata),.s_axi_rresp(rresp),.s_axi_rvalid(rvalid),.s_axi_rready(rready),
        .s_axis_tdata(s_data),.s_axis_tkeep(s_keep),.s_axis_tvalid(s_valid),.s_axis_tlast(s_last),.s_axis_tready(s_ready),
        .m_axis_tdata(m_data),.m_axis_tkeep(m_keep),.m_axis_tvalid(m_valid),.m_axis_tlast(m_last),.m_axis_tready(m_ready));
    assign start_ready=dut.ready;
    assign busy=dut.core_busy || dut.running;
    assign done=dut.done_latched;
    assign error=dut.error_latched || dut.core_error;
    integer job_token=0;
    task axi_write(input [15:0] address,input [31:0] data,input integer order,input [3:0] strobe,input [1:0] response);
        integer hold;
        begin
            fork
                begin
                    if(order>0)repeat(3)@(negedge clk);
                    @(negedge clk);awaddr=address;awvalid=1;
                    @(posedge clk);while(!awready)@(posedge clk);
                    @(negedge clk);awvalid=0;
                end
                begin
                    if(order<0)repeat(3)@(negedge clk);
                    @(negedge clk);wdata=data;wstrb=strobe;wvalid=1;
                    @(posedge clk);while(!wready)@(posedge clk);
                    @(negedge clk);wvalid=0;
                end
            join
            while(!bvalid)@(negedge clk);
            for(hold=0;hold<4;hold=hold+1)begin
                @(negedge clk);
                if(!bvalid || bresp!==response)$fatal(1,"bad/unstable BRESP at %h",address);
            end
            bready=1;@(posedge clk);@(negedge clk);bready=0;
        end
    endtask
    task axi_read(input [15:0] address,input [31:0] expected,input [1:0] response);
        integer hold;
        begin
            @(negedge clk);araddr=address;arvalid=1;
            @(posedge clk);while(!arready)@(posedge clk);
            @(negedge clk);arvalid=0;
            while(!rvalid)@(negedge clk);
            for(hold=0;hold<4;hold=hold+1)begin
                @(negedge clk);
                if(!rvalid || rdata!==expected || rresp!==response)$fatal(1,"bad/unstable RDATA at %h got %h expected %h",address,rdata,expected);
            end
            rready=1;@(posedge clk);@(negedge clk);rready=0;
        end
    endtask


    reg [7:0] input_mem[0:1799], expected_mem[0:1799];
    reg [7:0] expected_conv[0:7199];
    reg [31:0] weight_mem[0:143], bias_mem[0:7];
    integer expected_bytes=0, received=0, cycles=0, layer_start_cycle=0;
    integer conv_received=0, conv_expected=0, conv_row=0;
    integer layer_passes=0, protocol_passes=0, odd_tail_cases=0;
    reg compare=0, drive_ready=0;
    integer first_stall=0, last_stall=0;
    reg stalled=0;
    reg [31:0] previous_data;
    reg previous_last;
    integer lane;
    always @(posedge clk) begin
        cycles=cycles+1;
        if (!resetn || dut.abort_pulse) stalled=0;
        else begin
            if (stalled && (!m_valid || m_data !== previous_data || m_last !== previous_last || m_keep !== 15))
                $fatal(1, "unstable output under backpressure");
            stalled=m_valid && !m_ready;
            previous_data=m_data; previous_last=m_last;
            if (compare && dut.core.cv_valid && dut.core.cv_ready) begin
                if (conv_received >= conv_expected || dut.core.cv_data !== expected_conv[conv_received] ||
                    dut.core.cv_user !== (conv_received == 0) || dut.core.cv_last !== (conv_received%conv_row == conv_row-1))
                    $fatal(1, "conv tensor/sideband mismatch at %0d", conv_received);
                conv_received=conv_received+1;
            end
            if (compare && m_valid && m_ready) begin
                if (received >= expected_bytes || m_keep !== 15 || m_last !== (received+4 == expected_bytes))
                    $fatal(1, "bad output packet boundary at %0d", received);
                for (lane=0; lane<4; lane=lane+1)
                    if (m_data[8*lane +: 8] !== expected_mem[received+lane])
                        $fatal(1, "data mismatch at %0d: got %0d expected %0d", received+lane,
                               m_data[8*lane +: 8], expected_mem[received+lane]);
                received=received+4;
                if (m_last && dut.core.layer_r && !dut.core.conv_seen && !dut.core.cv_done) begin
                    odd_tail_cases=odd_tail_cases+1;
                    if (!busy || done) $fatal(1, "odd tail completed too early");
                end
            end
            if (compare && done && (received != expected_bytes || conv_received != conv_expected || !dut.core.conv_seen))
                $fatal(1, "done before all work drained");
        end
        if (cycles > 2200000) $fatal(1, "watchdog timeout");
    end
    always @(negedge clk) begin
        if (drive_ready) begin
            if (m_valid && received == 0 && first_stall < 100) begin
                m_ready=0; first_stall=first_stall+1;
            end else if (m_valid && m_last && last_stall < 80) begin
                m_ready=0; last_stall=last_stall+1;
            end else m_ready=(cycles%11 != 0 && cycles%7 != 0);
        end else m_ready=0;
    end

    task load_weights(input integer second);
        integer i, count;
        begin
            if (!start_ready) $fatal(1, "load while busy");
            if (second) begin
                $readmemh("../../tb/cnn_vectors/conv2_w.mem", weight_mem);
                $readmemh("../../tb/cnn_vectors/conv2_b.mem", bias_mem);
                count=144;
            end else begin
                $readmemh("../../tb/cnn_vectors/conv1_w.mem", weight_mem, 0, 17);
                $readmemh("../../tb/cnn_vectors/conv1_b.mem", bias_mem);
                count=18;
            end
            axi_write(16'hc,32'h700+second,0,15,0);
            axi_write(16'h10,0,-1,15,0);axi_write(16'h18,0,1,15,0);
            for (i=0;i<count;i=i+1)axi_write(16'h14,weight_mem[i],i%3-1,15,0);
            for (i=0;i<8;i=i+1)axi_write(16'h1c,bias_mem[i],i%3-1,15,0);
        end
    endtask
    task launch(input integer second);
        begin
            job_token=job_token+1;axi_write(16'h2c,job_token,0,15,0);
            layer_start_cycle=cycles;axi_write(16'h8,1,-1,15,0);
        end
    endtask
    task send_word(input [31:0] data, input last, input [3:0] keep);
        begin
            @(negedge clk); s_data=data; s_last=last; s_keep=keep; s_valid=1;
            @(posedge clk);
            while (!s_ready) @(posedge clk);
            @(negedge clk); s_valid=0;
        end
    endtask
    task feed(input integer size);
        integer i;
        begin
            for (i=0; i<size; i=i+4) begin
                if (i%28 == 0) repeat (3) @(negedge clk);
                send_word({input_mem[i+3], input_mem[i+2], input_mem[i+1], input_mem[i]}, i+4 == size, 15);
            end
        end
    endtask
    task cancel;
        begin
            @(negedge clk);compare=0;drive_ready=0;s_valid=0;
            axi_write(16'h8,2,1,15,0);repeat(3)@(negedge clk);
            if(!start_ready || done || error || m_valid)$fatal(1,"abort did not clear state");
            axi_read(16'h4,8,0);
        end
    endtask
    task run_layer(input integer fixture, input integer second);
        reg [1023:0] input_file, expected_file, conv_file;
        begin
            if (second) begin
                $sformat(input_file, "../../tb/cnn_vectors/case%0d_pool1.mem", fixture);
                $sformat(expected_file, "../../tb/cnn_vectors/case%0d_pool2.mem", fixture);
                $readmemh(input_file, input_mem);
                $readmemh(expected_file, expected_mem, 0, 287);
                $sformat(conv_file, "../../tb/cnn_vectors/case%0d_conv2.mem", fixture);
                $readmemh(conv_file, expected_conv, 0, 1351);
                conv_expected=1352; conv_row=104;
                expected_bytes=288;
            end else begin
                $sformat(input_file, "../../tb/cnn_vectors/case%0d_input.mem", fixture);
                $sformat(expected_file, "../../tb/cnn_vectors/case%0d_pool1.mem", fixture);
                $readmemh(input_file, input_mem, 0, 1023);
                $readmemh(expected_file, expected_mem);
                $sformat(conv_file, "../../tb/cnn_vectors/case%0d_conv1.mem", fixture);
                $readmemh(conv_file, expected_conv);
                conv_expected=7200; conv_row=240;
                expected_bytes=1800;
            end
            load_weights(second);
            @(negedge clk); received=0; conv_received=0; first_stall=0; last_stall=0;
            // launch clears sticky done; enable scoreboard only afterwards.
            launch(second);
            @(negedge clk); compare=1; drive_ready=1;
            feed(second ? 1800 : 1024);
            while (!done && !error) @(negedge clk);
            if (error || received != expected_bytes || busy) $fatal(1, "layer failed");
            axi_read(16'h24,second?1800:1024,0);
            axi_read(16'h28,expected_bytes,0);axi_read(16'h30,job_token,0);
            $display("LAYER_PASS case=%0d layer=%0d bytes=%0d cycles_with_stalls=%0d", fixture, second+1,
                     received, cycles-layer_start_cycle);
            layer_passes=layer_passes+1;
            @(negedge clk); compare=0; drive_ready=0;
            repeat (10) @(negedge clk);
            if (!done || m_valid) $fatal(1, "sticky done or trailing packet error");
        end
    endtask
    integer test_case;
    initial begin
        repeat (5) @(negedge clk); resetn=1;
        repeat (3) @(negedge clk);
        axi_read(0,32'h434e0012,0);axi_read(16'hffff,0,2);
        // WSTRB zero is a no-op; partial writes and absent weights are rejected.
        axi_write(16'hc,32'h701,1,0,0);axi_read(16'hc,32'h700,0);
        axi_write(16'hc,32'h701,-1,1,2);cancel();protocol_passes=protocol_passes+1;
        axi_write(16'h8,1,0,15,2);cancel();protocol_passes=protocol_passes+1;
        load_weights(0);launch(0);send_word(0,1,15);
        repeat(4)@(negedge clk);if(!error || done || start_ready)$fatal(1,"early TLAST accepted");
        cancel();protocol_passes=protocol_passes+1;
        load_weights(0);launch(0);send_word(0,0,7);
        repeat(4)@(negedge clk);if(!error || done)$fatal(1,"partial TKEEP accepted");
        cancel();protocol_passes=protocol_passes+1;
        load_weights(0);launch(0);send_word(0,0,15);cancel();protocol_passes=protocol_passes+1;
        $readmemh("../../tb/cnn_vectors/case0_input.mem",input_mem,0,1023);
        load_weights(0);launch(0);feed(1024);repeat(50)@(negedge clk);cancel();protocol_passes=protocol_passes+1;
        load_weights(0);launch(0);feed(1024);while(!m_valid)@(negedge clk);cancel();protocol_passes=protocol_passes+1;
        axi_write(16'h10,144,0,15,2);cancel();protocol_passes=protocol_passes+1;
        load_weights(0);launch(0);axi_write(16'h14,0,1,15,2);
        if(!error)$fatal(1,"busy write accepted");cancel();protocol_passes=protocol_passes+1;
        for (test_case=0; test_case<4; test_case=test_case+1) begin
            run_layer(test_case, 0);
            run_layer(test_case, 1);
        end
        if (odd_tail_cases != 4) $fatal(1, "odd tail drain not exercised");
        $display("ALL_CNN_REG_TESTS_PASS layers=%0d protocol_cases=%0d odd_tail_cases=%0d",
                 layer_passes, protocol_passes, odd_tail_cases);
        $finish;
    end
endmodule
