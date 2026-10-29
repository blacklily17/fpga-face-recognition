`timescale 1ns/1ps
module tb_cnn16_regs;
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


    reg [7:0] input_mem[0:16383],expected_mem[0:14399];
    reg [31:0] weight_mem[0:575],bias_mem[0:15];
    integer cycles=0,received=0,expected_bytes=0,checking=0,job_number=0;
    reg held=0; reg [31:0] held_data; reg held_last;
    always @(negedge clk) begin
        cycles=cycles+1;
        m_ready=(cycles%11!=0 && cycles%11!=1 && cycles%11!=2);
        if(cycles>12000000)$fatal(1,"C16 watchdog");
    end
    always @(posedge clk) begin
        if(checking)begin
            if(held && (!m_valid || m_data!==held_data || m_last!==held_last))$fatal(1,"unstable output under backpressure");
            if(m_valid && m_ready)begin
                if(m_keep!==15 || received>=expected_bytes || m_last!==(received==expected_bytes-4))$fatal(1,"bad C16 output framing");
                for(integer k=0;k<4;k=k+1)
                    if(m_data[k*8+:8]!==expected_mem[received+k])$fatal(1,"C16 byte mismatch job=%0d byte=%0d got=%h expected=%h",job_number,received+k,m_data[k*8+:8],expected_mem[received+k]);
                received=received+4;
            end
            if(done && received!=expected_bytes)$fatal(1,"C16 done before final DMA handshake");
            held=m_valid && !m_ready;held_data=m_data;held_last=m_last;
        end else held=0;
    end
    task send_word(input integer index,input integer last_flag);
        begin
            @(negedge clk);s_valid=1;s_last=last_flag;s_keep=15;
            s_data={input_mem[index+3],input_mem[index+2],input_mem[index+1],input_mem[index]};
            @(posedge clk);while(!s_ready)@(posedge clk);
            @(negedge clk);s_valid=0;s_last=0;
        end
    endtask
    task reset_job;
        begin
            checking=0;axi_write(8,2,0,15,0);repeat(4)@(negedge clk);
            if(!start_ready || busy || error || done)$fatal(1,"C16 abort failed to clear state");
        end
    endtask
    task configure(input integer which);
        integer i,words,config_value;
        begin
            config_value=which==0 ? (4 | (5<<8)) : which==1 ? (5 | (8<<8)) : 7;
            axi_write(12,config_value,0,15,0);
            if(which<2)begin
                words=which==0?36:576;
                if(which==0)begin
                    $readmemh("../../tb/cnn16_vectors/case0_weight.mem",weight_mem,0,35);
                    $readmemh("../../tb/cnn16_vectors/case0_bias.mem",bias_mem);
                end else begin
                    $readmemh("../../tb/cnn16_vectors/case1_weight.mem",weight_mem);
                    $readmemh("../../tb/cnn16_vectors/case1_bias.mem",bias_mem);
                end
                axi_write(16,0,1,15,0);axi_write(24,0,-1,15,0);
                for(i=0;i<words;i=i+1)axi_write(20,weight_mem[i],i%3-1,15,0);
                for(i=0;i<16;i=i+1)axi_write(28,bias_mem[i],i%3-1,15,0);
            end
        end
    endtask
    task run_case(input integer which);
        integer bytes,i,before_cycle;
        begin
            reset_job();configure(which);received=0;expected_bytes=which==2?4096:14400;
            bytes=which==0?1024:16384;
            case(which)
                0:begin $readmemh("../../tb/cnn16_vectors/case0_input.mem",input_mem,0,1023);$readmemh("../../tb/cnn16_vectors/case0_output.mem",expected_mem);end
                1:begin $readmemh("../../tb/cnn16_vectors/case1_input.mem",input_mem);$readmemh("../../tb/cnn16_vectors/case1_output.mem",expected_mem);end
                2:begin $readmemh("../../tb/cnn16_vectors/case2_input.mem",input_mem);$readmemh("../../tb/cnn16_vectors/case2_output.mem",expected_mem,0,4095);end
            endcase
            job_number=job_number+1;axi_write(44,job_number,0,15,0);
            checking=1;before_cycle=cycles;axi_write(8,1,0,15,0);
            for(i=0;i<bytes;i=i+4)begin send_word(i,i==bytes-4);if(i%28==0)repeat(3)@(negedge clk);end
            while(!done && !error)@(negedge clk);
            if(error || received!=expected_bytes)$fatal(1,"C16 failed result");
            // Real arithmetic/AXIS cycles, including intentional stalls. A
            // one-lane build exceeds these limits; all output bytes are also
            // checked against frozen independent vectors above.
            if(which==0 && cycles-before_cycle>120000)$fatal(1,"C1 two-lane throughput regression");
            if(which==1 && cycles-before_cycle>1200000)$fatal(1,"C16 two-lane throughput regression");
            axi_read(36,bytes,0);axi_read(40,expected_bytes,0);axi_read(48,job_number,0);
            $display("C16_JOB_PASS case=%0d bytes=%0d cycles_with_stalls=%0d",which,received,cycles-before_cycle);
            checking=0;
        end
    endtask
    initial begin
        repeat(5)@(negedge clk);resetn=1;repeat(4)@(negedge clk);
        axi_read(0,32'h434e0012,0);
        // Reject unsupported geometry and incomplete 16-channel parameter load.
        axi_write(12,6,0,15,2);reset_job();
        axi_write(12,5,0,15,0);axi_write(8,1,0,15,2);reset_job();
        // Pool needs no weights, but packet framing is still mandatory.
        configure(2);axi_write(8,1,0,15,0);input_mem[0]=1;input_mem[1]=2;input_mem[2]=3;input_mem[3]=4;
        send_word(0,1);repeat(4)@(negedge clk);if(!error)$fatal(1,"early C16 TLAST accepted");reset_job();
        configure(2);axi_write(8,1,0,15,0);send_word(0,0);reset_job();
        for(integer case_id=0;case_id<3;case_id=case_id+1)run_case(case_id);
        // Missing parameters cannot be silently reused from the previous job.
        axi_write(12,5,0,15,0);axi_write(8,1,0,15,2);reset_job();run_case(2);
        $display("ALL_CNN16_REG_TESTS_PASS jobs=4 malformed_or_cancel_cases=5");$finish;
    end
endmodule
