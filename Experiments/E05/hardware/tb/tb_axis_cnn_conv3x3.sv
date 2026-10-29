`timescale 1ns / 1ps
module tb_axis_cnn_conv3x3;
    reg clk=0, resetn=0;
    reg [31:0] s_data=0;
    reg [3:0] s_keep=0;
    reg s_valid=0, s_last=0;
    wire s_ready;
    wire [31:0] m_data;
    wire [3:0] m_keep;
    wire m_valid, m_last, error, busy;
    reg m_ready=1;
    integer received=0;
    reg [7:0] expected [0:8];

    always #5 clk=~clk;
    axis_cnn_conv3x3 dut(
        .aclk(clk),.aresetn(resetn),.s_axis_tdata(s_data),
        .s_axis_tkeep(s_keep),.s_axis_tvalid(s_valid),.s_axis_tready(s_ready),
        .s_axis_tlast(s_last),.m_axis_tdata(m_data),.m_axis_tkeep(m_keep),
        .m_axis_tvalid(m_valid),.m_axis_tready(m_ready),.m_axis_tlast(m_last),
        .protocol_error(error),.busy(busy));

    task send_word(input [31:0] data,input [3:0] keep,input last);
        begin
            @(negedge clk);s_data=data;s_keep=keep;s_last=last;s_valid=1;
            while(!s_ready) @(negedge clk);
            @(negedge clk);s_valid=0;s_last=0;s_keep=0;s_data=0;
        end
    endtask

    always @(posedge clk) if(m_valid && m_ready) begin
        if(m_keep[0]) begin if(m_data[7:0]!==expected[received]) $fatal(1,"byte %0d",received); received=received+1; end
        if(m_keep[1]) begin if(m_data[15:8]!==expected[received]) $fatal(1,"byte %0d",received); received=received+1; end
        if(m_keep[2]) begin if(m_data[23:16]!==expected[received]) $fatal(1,"byte %0d",received); received=received+1; end
        if(m_keep[3]) begin if(m_data[31:24]!==expected[received]) $fatal(1,"byte %0d",received); received=received+1; end
        if(m_last && received!=9) $fatal(1,"short output %0d",received);
    end

    initial begin
        expected[0]=0;expected[1]=5;expected[2]=9;
        expected[3]=11;expected[4]=0;expected[5]=15;
        expected[6]=17;expected[7]=19;expected[8]=0;
        repeat(4) @(negedge clk);resetn=1;
        send_word(32'h314e4e43,4'hf,0);
        send_word({16'd3,16'd3},4'hf,0);
        send_word({16'd1,16'd1},4'hf,0);
        send_word(32'd20,4'hf,0);
        send_word(32'h050402fd,4'hf,0); // -3,2,4,5
        send_word(32'h090807fa,4'hf,0); // -6,7,8,9
        send_word(32'h000000f6,4'h1,0); // -10
        send_word(32'h00000000,4'hf,0);
        send_word(32'h00000002,4'hf,0); // center weight=2
        send_word(32'h00000000,4'h1,0);
        send_word(32'd1,4'hf,0);       // bias
        send_word(32'h00100000,4'hf,1); // multiplier=2^20
        wait(m_last && m_valid);@(posedge clk);#1;
        if(error || received!=9 || busy) $fatal(1,"status error=%0d count=%0d busy=%0d",error,received,busy);
        $display("AXIS_CNN_CONV3X3_PASS bytes=%0d",received);
        $finish;
    end
    initial begin #2000000;$fatal(1,"timeout");end
endmodule
