`timescale 1ns/1ps
// Bundled data: software holds the complete word until round-trip ack.
// Only toggles pass through 2FF; payload commits at a display frame boundary.
module live_status_cdc(
 input logic aclk,aresetn,
 input logic [31:0] status_command,
 output logic [31:0] status_ack,
 input logic lcd_clk,lcd_resetn,frame_boundary,
 output logic [15:0] active_command
);
 (* ASYNC_REG="TRUE" *) logic req_meta,req_sync,ack_meta,ack_sync;
 (* ASYNC_REG="TRUE" *) logic global_meta,global_ready;
 logic seen,pending,ack_lcd;
 logic [15:0] pending_command;
 function automatic [15:0] sanitize(input [31:0] value);
   begin
     if(value[30:16]!=0 || value[7:0]>5 ||
        (value[7:0]==2 && value[15:8]==0) ||
        (value[7:0]!=2 && value[15:8]!=0)) sanitize=16'h0005;
     else sanitize=value[15:0];
   end
 endfunction
 // Global reset invalidates the protocol. Local video/MMCM reset must NOT
 // turn an uncommitted toggle=0 into an ACK or erase the retained result.
 // Asynchronously assert, synchronously release the global reset here.
 always_ff @(posedge lcd_clk or negedge aresetn) begin
   if(!aresetn) begin global_meta<=0;global_ready<=0;end
   else begin global_meta<=1;global_ready<=global_meta;end
 end
 always_ff @(posedge lcd_clk) begin
   if(!global_ready) begin
     req_meta<=0;req_sync<=0;seen<=0;pending<=0;
     pending_command<=0;active_command<=0;ack_lcd<=0;
   end else if(lcd_resetn) begin
     req_meta<=status_command[31];req_sync<=req_meta;
     if(req_sync!=seen && !pending) begin
       pending_command<=sanitize(status_command);seen<=req_sync;pending<=1;
     end
     if(frame_boundary && pending) begin
       active_command<=pending_command;ack_lcd<=seen;pending<=0;
     end
   end
 end
 always_ff @(posedge aclk) begin
   if(!aresetn) begin ack_meta<=0;ack_sync<=0;end
   else begin ack_meta<=ack_lcd;ack_sync<=ack_meta;end
 end
 assign status_ack={31'b0,ack_sync};
endmodule


