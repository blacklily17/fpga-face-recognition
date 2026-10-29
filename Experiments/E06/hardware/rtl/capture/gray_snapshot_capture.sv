`timescale 1ns/1ps
// Passive, always-consuming tap. No output can change RGB/GRAY ready.
module gray_snapshot_capture #(
    parameter integer WIDTH=400, HEIGHT=240,
    parameter logic [63:0] TIMEOUT_TICKS=64'd100000000
)(
    input logic aclk,aresetn,gray_valid,gray_sof,gray_eol,
    input logic [7:0] gray_data,
    input logic frame_abort,frame_commit,request,release_frame,cancel,clear_error,
    input logic [31:0] committed_frame_id,request_id,epoch,
    input logic [31:0] gray_source_id,verdict_source_id,
    input logic verdict_valid,verdict_good,provenance_fault,
    input logic [63:0] time_ticks,
    output logic busy,ready,error,
    output logic [31:0] snap_request_id,snap_frame_id,snap_epoch,snap_error_code,
    output logic [63:0] snap_source_ticks,snap_commit_ticks,
    output logic bram_we,
    output logic [14:0] bram_addr,
    output logic [31:0] bram_wdata,
    output logic snap_ready_event,snap_abort_event,format_error_event,snap_timeout_event
);
    localparam integer PIXELS=WIDTH*HEIGHT;
    typedef enum logic [2:0] {IDLE,WAIT_SOF,WRITING,WAIT_COMMIT,READY,FAILED} state_t;
    state_t state;
    logic [31:0] expected_frame;
    logic [31:0] source_frame;
    logic commit_seen,verdict_seen,matching_verdict;
    logic [63:0] request_ticks;
    logic [16:0] count;
    logic [9:0] x;
    logic [23:0] packed_bytes;
    logic timed_out,pixel_legal;
    initial begin
        if(WIDTH<4 || WIDTH>1024 || WIDTH%4 || HEIGHT<1 || PIXELS>96000)
            $error("snapshot expects a multiple-of-four raster, at most 96000 pixels");
    end
    assign busy=(state==WAIT_SOF || state==WRITING || state==WAIT_COMMIT);
    assign ready=state==READY;
    assign error=state==FAILED;
    assign timed_out=(time_ticks-request_ticks)>=TIMEOUT_TICKS;
    assign pixel_legal=!gray_sof && (gray_eol==(x==WIDTH-1));
    assign matching_verdict=verdict_valid && verdict_source_id==source_frame;
    // Present the fourth byte BEFORE the edge RAM samples the write. No reset
    // or clearing loop on RAM. Cancel/abort always suppress the same-edge write.
    assign bram_we=aresetn && state==WRITING && gray_valid && pixel_legal &&
                   !frame_commit && !frame_abort && !cancel && !timed_out &&
                   !provenance_fault && !(matching_verdict && !verdict_good) && count[1:0]==3;
    assign bram_addr=count[16:2];
    assign bram_wdata={gray_data,packed_bytes};
    task automatic fail(input logic [31:0] code);
        begin
            state<=FAILED;snap_error_code<=code;
            snap_abort_event<=code==2;
            format_error_event<=code==1;
            snap_timeout_event<=code==3;
        end
    endtask
    always_ff @(posedge aclk) begin
        if(!aresetn) begin
            state<=IDLE;expected_frame<=0;request_ticks<=0;count<=0;x<=0;packed_bytes<=0;
            source_frame<=0;commit_seen<=0;verdict_seen<=0;
            snap_request_id<=0;snap_frame_id<=0;snap_epoch<=0;snap_error_code<=0;
            snap_source_ticks<=0;snap_commit_ticks<=0;
            snap_ready_event<=0;snap_abort_event<=0;format_error_event<=0;snap_timeout_event<=0;
        end else begin
            snap_ready_event<=0;snap_abort_event<=0;format_error_event<=0;snap_timeout_event<=0;
            if(cancel) begin state<=IDLE;snap_error_code<=0; end
            else if(provenance_fault && (busy || ready || request)) fail(2);
            else if(state==READY) begin
                if(release_frame && request_id==snap_request_id) state<=IDLE;
            end else if(state==FAILED) begin
                if(clear_error) begin state<=IDLE;snap_error_code<=0; end
            end else if(busy && frame_abort) fail(2);
            else if(busy && timed_out) fail(3);
            else if((state==WRITING || state==WAIT_COMMIT) && matching_verdict && !verdict_good) fail(2);
            else begin
                if((state==WRITING || state==WAIT_COMMIT) && matching_verdict && verdict_good)
                    verdict_seen<=1;
                case(state)
                IDLE: if(request && epoch!=0) begin
                    state<=WAIT_SOF;request_ticks<=time_ticks;
                    snap_request_id<=request_id;snap_epoch<=epoch;snap_error_code<=0;
                end
                WAIT_SOF: if(gray_valid && gray_sof) begin
                    if(gray_eol) fail(1);
                    else if(verdict_valid && !verdict_good && verdict_source_id==gray_source_id) fail(2);
                    else begin
                        state<=WRITING;expected_frame<=committed_frame_id+32'd1;
                        source_frame<=gray_source_id;commit_seen<=0;
                        verdict_seen<=verdict_valid && verdict_good && verdict_source_id==gray_source_id;
                        snap_source_ticks<=time_ticks;count<=1;x<=1;
                        packed_bytes<={16'd0,gray_data};
                    end
                end
                WRITING: if(frame_commit) fail(1);
                else if(gray_valid) begin
                    if(!pixel_legal) fail(1);
                    else begin
                        case(count[1:0])
                            0: packed_bytes[7:0]<=gray_data;
                            1: packed_bytes[15:8]<=gray_data;
                            2: packed_bytes[23:16]<=gray_data;
                            default: begin end
                        endcase
                        x<=gray_eol?10'd0:x+10'd1;
                        count<=count+17'd1;
                        if(count==PIXELS-1) state<=WAIT_COMMIT;
                    end
                end
                WAIT_COMMIT: if(gray_valid) fail(1);
                else if(frame_commit && (commit_seen || committed_frame_id!=expected_frame)) fail(1);
                else begin
                    if(frame_commit) commit_seen<=1;
                    if((commit_seen || frame_commit) &&
                       (verdict_seen || (matching_verdict && verdict_good))) begin
                        snap_frame_id<=source_frame;snap_commit_ticks<=time_ticks;
                        state<=READY;snap_ready_event<=1;
                    end
                end
                default: state<=IDLE;
                endcase
            end
        end
    end
endmodule
