`timescale 1ns/1ps
module tb_dma_errors;
reg clk=0,rst=0,valid=0,last=0,ready=1;reg[31:0] data=0;reg[3:0] keep=0;
wire sr,mv,ml,err,busy;wire[31:0] md;wire[3:0] mk;
axis_cnn_conv3x3 dut(.aclk(clk),.aresetn(rst),.s_axis_tdata(data),.s_axis_tkeep(keep),.s_axis_tvalid(valid),.s_axis_tready(sr),.s_axis_tlast(last),.m_axis_tdata(md),.m_axis_tkeep(mk),.m_axis_tvalid(mv),.m_axis_tready(ready),.m_axis_tlast(ml),.protocol_error(err),.busy(busy));
always #5 clk=~clk;
task reset_core;begin @(negedge clk);valid=0;rst=0;repeat(3)@(negedge clk);rst=1;repeat(2)@(negedge clk);if(err||busy||!sr) $fatal(1,"reset failed");end endtask
task beat(input[31:0] d,input[3:0] k,input l);begin
@(negedge clk);data=d;keep=k;last=l;valid=1;
@(posedge clk);while(!sr)@(posedge clk);
@(negedge clk);valid=0;
end endtask
task rejected(input[127:0] label);begin
repeat(12)@(negedge clk);
if(!err||sr||mv) $fatal(1,"expected sticky error: %s err=%d sr=%d mv=%d",label,err,sr,mv);
repeat(4)@(negedge clk);if(!err)$fatal(1,"error not sticky");
$display("ERROR_CASE_PASS %s",label);
end endtask
task header(input[31:0] dims);begin beat(32'h314e4e43,15,0);beat(dims,15,0);beat(32'h00010001,15,0);beat(20,15,0);end endtask
initial begin
reset_core;beat(0,15,0);rejected("bad_magic");
reset_core;beat(32'h314e4e43,5,0);rejected("keep_hole");
reset_core;beat(32'h314e4e43,15,1);rejected("early_last");
reset_core;header(0);rejected("zero_dims");
reset_core;header(32'h00310031);rejected("oversize_dims");
// 1 input + 9 weights + 4 bias + 4 multiplier =18 payload bytes.
reset_core;header(32'h00010001);beat(0,15,0);beat(0,15,0);beat(0,15,0);beat(0,15,0);beat(0,3,0);rejected("missing_last");
reset_core;header(32'h00010001);beat(0,15,0);beat(0,15,0);beat(0,15,0);beat(0,15,0);beat(0,7,1);rejected("trailing_byte");
reset_core;beat(32'h314e4e43,15,0);@(negedge clk);reset_core;
$display("DMA_ERROR_RESET_PASS cases=8");$finish;
end
initial begin #500000;$fatal(1,"error suite timeout");end
endmodule
