`timescale 1ns/1ps
module tb_hdmi_bbox_overlay;
    logic pixel_clk=0, rst_n=0;
    always #5 pixel_clk=~pixel_clk;
    logic [23:0] rgb_i, rgb_o;
    logic de_i, hs_i, vs_i, pixel_ok_i, de_o, hs_o, vs_o;
    logic [10:0] x_i;
    logic [9:0] y_i;
    logic box_valid;
    logic [8:0] box_x,box_y,box_w,box_h;
`ifdef MUTATION_COORDINATE_DELAY
    hdmi_bbox_overlay_coordinate_mutant dut(.*);
`elsif MUTATION_ZERO_LATENCY
    hdmi_bbox_overlay_zero_latency_mutant dut(.*);
`else
    hdmi_bbox_overlay dut(.*);
`endif
    logic [39:0] boxes[0:99];
    logic [63:0] rows[0:71999];
    logic [63:0] spans;
    logic [23:0] expected;
    bit border;
    integer f,x,y;
    integer checked=0;
    task automatic beat(input integer frame, input integer xx, input integer yy,
                        input bit de, input bit mask);
        logic [26:0] previous_output;
        begin
            @(negedge pixel_clk);
            previous_output={rgb_o,de_o,hs_o,vs_o};
            x_i=xx; y_i=yy;
            rgb_i=((xx*19) ^ (yy*257) ^ (frame*12347)) & 24'hffffff;
            de_i=de; hs_i=(xx==1280); vs_i=(yy==720);
            pixel_ok_i=(((xx+yy*7+frame*13)%23)!=0);
            expected=(de && pixel_ok_i && mask) ? 24'h00ff00 : rgb_i;
            #1;
            if({rgb_o,de_o,hs_o,vs_o} !== previous_output)
                $fatal(1,"OVERLAY early output change frame=%0d x=%0d y=%0d expected=%h actual=%h",
                       frame,xx,yy,previous_output,{rgb_o,de_o,hs_o,vs_o});
            @(posedge pixel_clk); #1;
            if (rgb_o !== expected || de_o !== de_i || hs_o !== hs_i || vs_o !== vs_i)
                $fatal(1,"OVERLAY mismatch frame=%0d x=%0d y=%0d expected=%06x actual=%06x sync=%b/%b %b/%b %b/%b",
                       frame,xx,yy,expected,rgb_o,de_i,de_o,hs_i,hs_o,vs_i,vs_o);
            checked=checked+1;
        end
    endtask
    initial begin
        $readmemh("boxes.mem", boxes);
        $readmemh("rows.mem", rows);
        rgb_i=0; de_i=0; hs_i=0; vs_i=0; pixel_ok_i=0;
        x_i=0; y_i=0; box_valid=0; box_x=0; box_y=0; box_w=0; box_h=0;
        repeat(3) @(posedge pixel_clk);
        #1;
        if ({rgb_o,de_o,hs_o,vs_o} !== 27'b0) $fatal(1,"reset outputs not cleared");
        @(negedge pixel_clk); rst_n=1;
        for(f=0;f<100;f=f+1) begin
            {box_valid,box_h,box_w,box_y,box_x}=boxes[f][36:0];
            for(y=0;y<720;y=y+1) begin
                spans=rows[f*720+y];
                if (^spans === 1'bx) $fatal(1,"Missing oracle row frame=%0d y=%0d",f,y);
                for(x=0;x<1280;x=x+1) begin
                    border=((x>=spans[15:0] && x<spans[31:16]) ||
                            (x>=spans[47:32] && x<spans[63:48]));
                    beat(f,x,y,1,border);
                end
                // Blanking must pass RGB, sync and DE without painting a border.
                beat(f,1280,y,0,1);
                beat(f,240,y,0,1);
            end
            beat(f,0,720,0,1);
            $display("OVERLAY_FRAME=%0d checked=%0d",f,checked);
        end
        @(negedge pixel_clk); rst_n=0;
        @(posedge pixel_clk); #1;
        if ({rgb_o,de_o,hs_o,vs_o} !== 27'b0) $fatal(1,"reset after video not cleared");
        $display("OVERLAY_PASS frames=100 seed=20261005 active_pixels=92160000 checked=%0d",checked);
        $finish;
    end
    initial begin #1000000000; $fatal(1,"OVERLAY_TIMEOUT"); end
endmodule
