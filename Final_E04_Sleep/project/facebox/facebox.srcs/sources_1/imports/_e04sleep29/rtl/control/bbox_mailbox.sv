`timescale 1ns/1ps
// One stable bundled-data slot. ACK means applied at a display frame boundary.
// Either external reset asserts BOTH local resets; releases are synchronized
// independently. A four-phase clear handshake establishes a fresh req baseline.
module bbox_mailbox #(
    parameter integer TIMEOUT_CYCLES=100_000_000,
    parameter integer EXPIRE_FRAMES=60
)(
    input logic src_clk,src_rst_n,dst_clk,dst_rst_n,
    input logic src_send,src_recover,invalidate,
    input logic [447:0] src_payload,
    input logic dst_frame_start,
    output logic src_busy,src_ack,src_timeout,src_channel_ready,src_reset_event,
    output logic [447:0] dst_payload,
    output logic dst_update,dst_box_valid,
    output logic expired
);
    logic combined_reset_n;
    assign combined_reset_n=src_rst_n && dst_rst_n;
    (* ASYNC_REG="TRUE" *) logic [1:0] src_reset_pipe,dst_reset_pipe;
    always_ff @(posedge src_clk or negedge combined_reset_n)
        if(!combined_reset_n) src_reset_pipe<=0;
        else src_reset_pipe<={src_reset_pipe[0],1'b1};
    always_ff @(posedge dst_clk or negedge combined_reset_n)
        if(!combined_reset_n) dst_reset_pipe<=0;
        else dst_reset_pipe<={dst_reset_pipe[0],1'b1};
    logic sr,dr;
    assign sr=src_reset_pipe[1]; assign dr=dst_reset_pipe[1];

    logic req,ack,clear_req,clear_ack,dst_ready;
    logic [447:0] held_payload;
    (* ASYNC_REG="TRUE" *) logic [1:0] ack_s,clear_ack_s,ready_s;
    (* ASYNC_REG="TRUE" *) logic [1:0] req_d,clear_d;
    logic expire_req,expire_ack;
    (* ASYNC_REG="TRUE" *) logic [1:0] expire_s,expire_ack_d;
    always_ff @(posedge src_clk or negedge sr) begin
        if(!sr) begin ack_s<=0; clear_ack_s<=0; ready_s<=0; expire_s<=0; end
        else begin
            ack_s<={ack_s[0],ack}; clear_ack_s<={clear_ack_s[0],clear_ack};
            ready_s<={ready_s[0],dst_ready}; expire_s<={expire_s[0],expire_req};
        end
    end
    always_ff @(posedge dst_clk or negedge dr) begin
        if(!dr) begin req_d<=0; clear_d<=2'b11; expire_ack_d<=0; end
        else begin
            req_d<={req_d[0],req}; clear_d<={clear_d[0],clear_req};
            expire_ack_d<={expire_ack_d[0],expire_ack};
        end
    end
    localparam WAIT_HIGH=0,WAIT_LOW=1,IDLE=2,WAIT_ACK=3,FAILED=4;
    logic [2:0] state;
    integer timeout_age;
    logic reset_notice_pending;
    assign src_busy=(state!=IDLE) || invalidate || !ready_s[1];
    assign src_channel_ready=(state==IDLE || state==WAIT_ACK) && ready_s[1] && !invalidate;
    always_ff @(posedge src_clk or negedge sr) begin
        if(!sr) begin
            state<=WAIT_HIGH; clear_req<=1; req<=0; held_payload<=0;
            timeout_age<=0; src_ack<=0; src_timeout<=0; expired<=0; expire_ack<=0;
            src_reset_event<=0; reset_notice_pending<=1;
        end else begin
            src_ack<=0; src_timeout<=0; expired<=0;
            src_reset_event<=reset_notice_pending; reset_notice_pending<=0;
            if(expire_s[1]!=expire_ack) begin
                expire_ack<=expire_s[1]; expired<=1;
            end
            if ((src_recover || invalidate) && state!=WAIT_HIGH && state!=WAIT_LOW) begin
                clear_req<=1; state<=WAIT_HIGH; timeout_age<=0;
            end else case(state)
                WAIT_HIGH: if(clear_ack_s[1] && !invalidate) begin
                    req<=0; clear_req<=0; state<=WAIT_LOW;
                end
                WAIT_LOW: if(!clear_ack_s[1] && ready_s[1] && ack_s[1]==0) state<=IDLE;
                IDLE: if(src_send && ready_s[1]) begin
                    held_payload<=src_payload; req<=~req; timeout_age<=0; state<=WAIT_ACK;
                end
                WAIT_ACK: begin
                    if(ack_s[1]==req) begin src_ack<=1; state<=IDLE; end
                    else if(timeout_age>=TIMEOUT_CYCLES-1) begin
                        src_timeout<=1; state<=FAILED;
                    end else timeout_age<=timeout_age+1;
                end
                FAILED: begin end // Payload remains locked, even if a late ACK arrives.
                default: begin clear_req<=1; state<=WAIT_HIGH; end
            endcase
        end
    end

    logic pending,pending_req;
    logic [447:0] pending_payload;
    integer age_frames;
    always_ff @(posedge dst_clk or negedge dr) begin
        if(!dr) begin
            ack<=0; clear_ack<=0; dst_ready<=0; pending<=0; pending_req<=0;
            pending_payload<=0; dst_payload<=0; dst_update<=0; dst_box_valid<=0;
            age_frames<=0; expire_req<=0;
        end else begin
            dst_update<=0;
            if(clear_d[1]) begin
                clear_ack<=1; dst_ready<=0; pending<=0;
                dst_box_valid<=0; dst_payload<=0; age_frames<=0;
                // Ack baseline is not changed until clear is released below.
            end else if(clear_ack) begin
                // req and clear use independent synchronizers: clear may fall
                // first. Do not acknowledge the OLD req as the new baseline.
                // Source explicitly drives req=0 during this four-phase reset.
                if(req_d[1]==0) begin
                    clear_ack<=0; ack<=0; dst_ready<=1; pending<=0;
                end
            end else if(dst_ready) begin
                if(!pending && req_d[1]!=ack) begin
                    pending_payload<=held_payload; pending_req<=req_d[1]; pending<=1;
                end
                if(dst_frame_start) begin
                    if(pending) begin
                        dst_payload<=pending_payload; dst_box_valid<=(pending_payload[31:0]==32'd1);
                        dst_update<=1; ack<=pending_req; pending<=0; age_frames<=0;
                    end else if(dst_box_valid) begin
                        if(age_frames>=EXPIRE_FRAMES-1) begin
                            dst_box_valid<=0; age_frames<=EXPIRE_FRAMES;
                            // Expiry cannot retrigger before a new valid application;
                            // the source returns ACK before another expiry is possible.
                            if(expire_req==expire_ack_d[1]) expire_req<=~expire_req;
                        end else age_frames<=age_frames+1;
                    end
                end
            end
        end
    end
endmodule
