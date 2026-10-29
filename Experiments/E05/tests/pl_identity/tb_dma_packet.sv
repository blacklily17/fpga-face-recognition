`timescale 1ns/1ps
module tb_dma_packet;
reg clk=0,resetn=0,svalid=0,slast=0,mready=0;
reg [31:0] sd=0; reg [3:0] sk=0; wire sr,mv,ml,err,busy;
wire [31:0] md; wire [3:0] mk;
`include "counts.vh"
reg [31:0] packets[0:WORDS-1]; reg [3:0] keeps[0:WORDS-1];reg [7:0] expected[0:BYTES-1];
reg lasts[0:WORDS-1];reg outlast[0:BYTES-1];
reg stalled=0;reg[36:0] saved;
integer actual_file;integer i,j,n=0,cycles=0;reg [31:0] rng=32'hdeadbeef;
axis_cnn_conv3x3 dut(.aclk(clk),.aresetn(resetn),.s_axis_tdata(sd),.s_axis_tkeep(sk),.s_axis_tvalid(svalid),.s_axis_tready(sr),.s_axis_tlast(slast),.m_axis_tdata(md),.m_axis_tkeep(mk),.m_axis_tvalid(mv),.m_axis_tready(mready),.m_axis_tlast(ml),.protocol_error(err),.busy(busy));
always #5 clk=~clk;
always @(negedge clk) begin rng={rng[30:0],rng[31]^rng[21]^rng[1]^rng[0]};mready=rng[0]|rng[3];end
always @(posedge clk) if(resetn) begin
cycles=cycles+1;
if(err) $fatal(1,"unexpected protocol_error word=%0d bytes=%0d",i,n);
if(stalled && {ml,mk,md}!==saved) $fatal(1,"AXIS changed under backpressure");
stalled=mv&&!mready;saved={ml,mk,md};
if(mv&&mready) for(j=0;j<4;j=j+1) if(mk[j]) begin
if(n>=BYTES||md[j*8+:8]!==expected[n]) $fatal(1,"byte=%0d expected=%0d actual=%0d",n,expected[n],md[j*8+:8]);$fwrite(actual_file,"%02x\n",md[j*8+:8]);if(outlast[n]!== (ml && (j==3 || !mk[j+1]))) $fatal(1,"TLAST mismatch byte=%0d",n);n=n+1;
end
end
initial begin
actual_file=$fopen("actual_outputs.hex","w");$readmemh("last.hex",lasts);$readmemh("outlast.hex",outlast);$readmemh("packet.hex",packets);$readmemh("keep.hex",keeps);$readmemh("expected.hex",expected);
repeat(4) @(negedge clk);resetn=1;
for(i=0;i<WORDS;i=i+1) begin
@(negedge clk);sd=packets[i];sk=keeps[i];svalid=1;slast=lasts[i];
@(posedge clk);while(!sr) @(posedge clk);
@(negedge clk);svalid=0;
end
wait(n==BYTES);repeat(4) @(negedge clk);
if(busy) $fatal(1,"busy after output");
$fclose(actual_file);$display("CONTIGUOUS_DMA_GOLDEN_PASS bytes=%0d cycles=%0d",n,cycles);$finish;
end
initial begin #500000000;$fatal(1,"timeout word=%0d bytes=%0d",i,n);end
endmodule
