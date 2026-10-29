`timescale 1ns/1ps
// Real viewport + mailbox + overlay up to the TMDS input boundary. Original
// viewport checks RGB acceptance and underflow; checking only an overlay TB
// would miss a sideband/register alignment error at the actual TX2 boundary.
module tb_tx2_overlay_path;
    logic pixel_clk=0,serial_clk=0,src_clk=0,rst_n=0,src_rst_n=0;
    always #6.734 pixel_clk=~pixel_clk;
    // Physical serializer is outside this local test, not an electrical proof.
    always #5 src_clk=~src_clk;
    logic valid=1,user=1,last=0;
    logic [15:0] data=16'h529a;
    wire ready,base_ready;
    wire [31:0] status;
    wire [23:0] base_rgb;
    wire base_de,base_hs,base_vs,base_underflow;
    wire [15:0] base_frames;
    logic send=0,recover=0,invalidate=0;
    logic [447:0] payload=0;
    wire busy,ack,timeout_event,channel_ready,reset_event,expired;
    wire [2:0] dp,dn;
    wire cp,cn;
    tx2_axis_sink dut(.pixel_clk(pixel_clk),.serial_clk(serial_clk),.rst_n(rst_n),
        .s_tvalid(valid),.s_tready(ready),.s_tdata(data),.s_tuser(user),.s_tlast(last),
        .tmds_data_p(dp),.tmds_data_n(dn),.tmds_clk_p(cp),.tmds_clk_n(cn),.status(status),
        .box_src_clk(src_clk),.box_src_rst_n(src_rst_n),.box_send(send),
        .box_recover(recover),.box_invalidate(invalidate),.box_payload(payload),
        .box_busy(busy),.box_ack(ack),.box_timeout(timeout_event),
        .box_channel_ready(channel_ready),.box_reset_event(reset_event),.box_expired(expired));
    tx2_axis_viewport_original base(pixel_clk,rst_n,valid,base_ready,data,user,last,
                                   base_rgb,base_de,base_hs,base_vs,base_underflow,base_frames);
    integer tx_x=0,tx_y=0,cycles=0,starts=0,checked=0,green=0,holes=0;
    logic [23:0] expected_rgb=0;
    logic expected_de=0,expected_hs=0,expected_vs=0;
    logic [10:0] sampled_x;
    logic [9:0] sampled_y;
    logic sampled_pixel_ok;
    integer source_messages=0;
    // Sender advances only on handshake, so markers remain stable under stalls.
    always @(posedge pixel_clk) begin
        if(!rst_n)begin tx_x=0;tx_y=0;end
        else if(valid && ready)begin
            if(tx_x==799)begin tx_x=0;if(tx_y==479)tx_y=0;else tx_y=tx_y+1;end
            else tx_x=tx_x+1;
        end
    end
    always @(negedge pixel_clk) begin
        user=(tx_x==0 && tx_y==0);last=(tx_x==799);
        // Missing actual pixel right on a box edge; must remain black, not green.
        valid=!(starts==2 && dut.u_view.h_count==580 && dut.u_view.v_count==245);
    end
    function automatic [23:0] golden(input [23:0] rgb_i,input logic de_i,ok,
                                    input integer x,y,input logic box_valid,
                                    input [447:0] box);
        integer bx,by,bw,bh,l,r,t,b;
        begin
            golden=rgb_i;bx=box[63:32];by=box[95:64];bw=box[127:96];bh=box[159:128];
            if(box_valid && box[31:0]==1 && bx>=0 && bx<400 && by>=0 && by<240 &&
               bw>0 && bh>0 && bw<=400-bx && bh<=240-by)begin
                l=240+2*bx;r=l+2*bw;t=120+2*by;b=t+2*bh;
                if(de_i && ok && x>=l && x<r && y>=t && y<b &&
                   (x-l<2 || r-1-x<2 || y-t<2 || b-1-y<2))golden=24'h00ff00;
            end
        end
    endfunction
    always @(posedge pixel_clk) begin
        if(rst_n)begin
            if(ready!==base_ready)$fatal(1,"TX2 ready changed cycle=%0d",cycles);
            sampled_x=dut.u_view.h_count-260;
            sampled_y=dut.u_view.v_count-25;
            // Unlocked ready can drain stale non-SOF data in the image window.
            sampled_pixel_ok=base.window && (base.stream_locked || base.first_pixel) &&
                             valid && base_ready && base.marker_ok;
            expected_rgb=golden(base_rgb,base_de,dut.pixel_ok,dut.active_x,dut.active_y,
                                dut.mailbox_box_valid,dut.applied_payload);
            expected_de=base_de;expected_hs=base_hs;expected_vs=base_vs;
            #0.5;
            if({dut.rgb,dut.de,dut.hs,dut.vs}!=={base_rgb,base_de,base_hs,base_vs})
                $fatal(1,"TX2 baseline mismatch cycle=%0d",cycles);
            if(status!=={base_frames,15'd0,base_underflow})$fatal(1,"TX2 status changed");
            if(dut.pixel_ok!==sampled_pixel_ok)$fatal(1,"TX2 pixel_ok wrong cycle=%0d",cycles);
            if(base_de && {dut.active_x,dut.active_y}!=={sampled_x,sampled_y})
                $fatal(1,"TX2 coordinate wrong x=%0d y=%0d",sampled_x,sampled_y);
            if(dut.frame_start)begin
                if(!base_de || dut.active_x!=0 || dut.active_y!=0)$fatal(1,"TX2 frame boundary wrong");
                starts=starts+1;
            end
            if({dut.overlay_rgb,dut.overlay_de,dut.overlay_hs,dut.overlay_vs}!==
               {expected_rgb,expected_de,expected_hs,expected_vs})
                $fatal(1,"TX2 overlay alignment cycle=%0d expected=%h actual=%h",cycles,expected_rgb,dut.overlay_rgb);
            if({dut.u_tx.rgb,dut.u_tx.de,dut.u_tx.hs,dut.u_tx.vs}!==
               {expected_rgb,expected_de,expected_hs,expected_vs})$fatal(1,"TX2 input wiring wrong");
            if(dut.overlay_rgb==24'h00ff00)green=green+1;
            if(starts==2 && !dut.pixel_ok && dut.active_x==320 && dut.active_y==220)holes=holes+1;
            checked=checked+1;cycles=cycles+1;
        end
    end
    task automatic publish(input [31:0] x,input [31:0] w);
        begin
            wait(channel_ready && !busy);@(negedge src_clk);
            payload=0;payload[31:0]=1;payload[63:32]=x;payload[95:64]=50;
            payload[127:96]=w;payload[159:128]=60;payload[255:224]=7;
            payload[447:416]=source_messages+1;send=1;
            @(negedge src_clk);send=0;wait(ack);source_messages=source_messages+1;
        end
    endtask
    initial begin
        repeat(8)@(negedge src_clk);src_rst_n=1;rst_n=1;
        publish(40,80);
        wait(starts==2);publish(32'h10000028,80); // illegal before narrowing, must clear
        wait(starts==3);publish(70,70);
        wait(starts==4);@(negedge src_clk);src_rst_n=0;
        repeat(10)@(negedge src_clk);src_rst_n=1;
        wait(channel_ready);repeat(10)@(posedge pixel_clk);
        if(dut.mailbox_box_valid)$fatal(1,"TX2 stale box survived isolated source reset");
        if(checked<3000000 || green==0 || holes==0 || source_messages!=3 || !base_underflow)
            $fatal(1,"TX2 coverage checked=%0d green=%0d holes=%0d messages=%0d underflow=%0d",checked,green,holes,source_messages,base_underflow);
        $display("TX2_PATH_PASS frames=4 baseline_pixels=%0d green=%0d missing_pixel=%0d source_reset=1",checked,green,holes);
        $finish;
    end
    initial begin #90000000;$fatal(1,"TX2_PATH_TIMEOUT");end
endmodule
