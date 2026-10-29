`timescale 1ns/1ps
// AXI4-Lite register file: independent AW/W queues, held B/R responses.
module overlay_regs (
    (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 aclk CLK", X_INTERFACE_PARAMETER="XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000" *)
    input logic aclk,
    (* X_INTERFACE_INFO="xilinx.com:signal:reset:1.0 aresetn RST", X_INTERFACE_PARAMETER="XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
    input logic aresetn,
    input logic [15:0] s_axi_awaddr,s_axi_araddr,
    input logic s_axi_awvalid,s_axi_wvalid,s_axi_bready,s_axi_arvalid,s_axi_rready,
    input logic [31:0] s_axi_wdata,
    input logic [3:0] s_axi_wstrb,
    output logic s_axi_awready,s_axi_wready,s_axi_bvalid,s_axi_arready,s_axi_rvalid,
    output logic [1:0] s_axi_bresp,s_axi_rresp,
    output logic [31:0] s_axi_rdata,
    input logic snap_busy,snap_ready,snap_error,mailbox_busy,channel_ready,channel_reset_event,
    input logic [31:0] snap_request_id,snap_frame_id,snap_epoch,snap_error_code,box_ack_sequence,
    input logic [63:0] snap_source_ticks,snap_commit_ticks,
    input logic snap_ready_event,snap_abort_event,format_error_event,
    input logic snap_timeout_event,box_expire_event,mailbox_timeout_event,
    output logic request,release_frame,cancel,clear_error,box_send,mailbox_recover,epoch_changed,
    output logic [31:0] request_id,epoch,
    output logic [447:0] box_shadow,
    output logic [63:0] time_ticks
);
    localparam [15:0] R_ID_VERSION=16'h000, R_EPOCH=16'h004, R_COMMAND=16'h008,
        R_STATUS=16'h00c, R_REQUEST_ID=16'h010, R_SNAP_REQUEST_ID=16'h014,
        R_SNAP_FRAME_ID=16'h018, R_SNAP_EPOCH=16'h01c, R_SNAP_SOF_LO=16'h020,
        R_SNAP_SOF_HI=16'h024, R_SNAP_COMMIT_LO=16'h028, R_SNAP_COMMIT_HI=16'h02c,
        R_TIME_LO=16'h030, R_TIME_HI=16'h034, R_SNAP_ERROR=16'h038,
        R_BOX_ACK_SEQUENCE=16'h03c, R_BOX_SHADOW=16'h040,
        R_SNAP_REQUESTS=16'h080, R_READY_COUNT=16'h084, R_ABORT_COUNT=16'h088,
        R_FORMAT_ERRORS=16'h08c, R_SNAP_TIMEOUTS=16'h090, R_BOX_COMMITS=16'h094,
        R_BOX_EXPIRES=16'h098, R_MAILBOX_TIMEOUTS=16'h09c;
    logic aw_full,w_full;
    logic [15:0] aw_addr;
    logic [31:0] w_data;
    logic [3:0] w_strobe;
    logic [31:0] shadow[0:13];
    logic [31:0] requests,ready_count,abort_count,format_errors,snap_timeouts;
    logic [31:0] box_commits,box_expires,mailbox_timeouts;
    logic [31:0] read_data,epoch_next;
    logic read_legal,write_legal,command_legal;
    logic channel_ready_q,epoch_refresh_required;
    // Epoch writes deliberately invalidate the mailbox. Distinguish that
    // expected down/up handshake from an independent display reset/channel loss.
    logic [1:0] epoch_refresh_phase; // 0 normal, 1 wait down, 2 wait up
    integer index;
    assign s_axi_awready=aresetn && !aw_full && !s_axi_bvalid;
    assign s_axi_wready=aresetn && !w_full && !s_axi_bvalid;
    assign s_axi_arready=aresetn && !s_axi_rvalid;
    for(genvar g=0;g<14;g++) assign box_shadow[32*g+:32]=shadow[g];
    function automatic [31:0] byte_merge(input [31:0] old_data,input [31:0] new_data,input [3:0] strobe);
        for(integer b=0;b<4;b++) byte_merge[8*b+:8]=strobe[b]?new_data[8*b+:8]:old_data[8*b+:8];
    endfunction
    always_comb begin
        read_legal=(s_axi_araddr[1:0]==0); read_data=0;
        case(s_axi_araddr)
            R_ID_VERSION: read_data=32'h424f0001;
            R_EPOCH: read_data=epoch;
            R_STATUS: read_data={27'b0,channel_ready,mailbox_busy,snap_error,snap_ready,snap_busy};
            R_REQUEST_ID: read_data=request_id;
            R_SNAP_REQUEST_ID: read_data=snap_request_id;
            R_SNAP_FRAME_ID: read_data=snap_frame_id;
            R_SNAP_EPOCH: read_data=snap_epoch;
            R_SNAP_SOF_LO: read_data=snap_source_ticks[31:0];
            R_SNAP_SOF_HI: read_data=snap_source_ticks[63:32];
            R_SNAP_COMMIT_LO: read_data=snap_commit_ticks[31:0];
            R_SNAP_COMMIT_HI: read_data=snap_commit_ticks[63:32];
            R_TIME_LO: read_data=time_ticks[31:0];
            R_TIME_HI: read_data=time_ticks[63:32];
            R_SNAP_ERROR: read_data=snap_error_code;
            R_BOX_ACK_SEQUENCE: read_data=box_ack_sequence;
            R_SNAP_REQUESTS: read_data=requests;
            R_READY_COUNT: read_data=ready_count;
            R_ABORT_COUNT: read_data=abort_count;
            R_FORMAT_ERRORS: read_data=format_errors;
            R_SNAP_TIMEOUTS: read_data=snap_timeouts;
            R_BOX_COMMITS: read_data=box_commits;
            R_BOX_EXPIRES: read_data=box_expires;
            R_MAILBOX_TIMEOUTS: read_data=mailbox_timeouts;
            default: begin
                if(s_axi_araddr>=R_BOX_SHADOW && s_axi_araddr<=16'h074 && s_axi_araddr[1:0]==0)
                    read_data=shadow[(s_axi_araddr-R_BOX_SHADOW)>>2];
                else read_legal=0;
            end
        endcase
    end
    always_comb begin
        command_legal=0;
        if(w_strobe==4'b1111) case(w_data)
            32'd1: command_legal=!snap_busy && !snap_ready && !snap_error && epoch!=0;
            32'd2: command_legal=snap_ready && request_id==snap_request_id;
            32'd4: command_legal=!snap_ready || request_id==snap_request_id;
            32'd8: command_legal=!snap_busy;
            32'd16: command_legal=!mailbox_busy && channel_ready && epoch!=0 &&
                                  !epoch_refresh_required && epoch_refresh_phase==0 && shadow[7]==epoch;
            32'd32: command_legal=1;
            default: command_legal=0;
        endcase
        epoch_next=byte_merge(epoch,w_data,w_strobe);
        write_legal=0;
        if(aw_addr[1:0]==0) begin
            if(aw_addr==R_COMMAND) write_legal=command_legal;
            else if(aw_addr==R_EPOCH) write_legal=!snap_busy && !snap_ready && !snap_error && !mailbox_busy && epoch_next!=0 &&
                                                 (!epoch_refresh_required || epoch_next!=epoch);
            else if(aw_addr==R_REQUEST_ID) write_legal=!snap_busy && !snap_ready && !snap_error;
            else if(aw_addr>=R_BOX_SHADOW && aw_addr<=16'h074) write_legal=!mailbox_busy;
        end
    end
    always_ff @(posedge aclk) begin
        if(!aresetn) begin
            aw_full<=0; w_full<=0; aw_addr<=0; w_data<=0; w_strobe<=0;
            s_axi_bvalid<=0; s_axi_bresp<=0; s_axi_rvalid<=0; s_axi_rdata<=0; s_axi_rresp<=0;
            request<=0; release_frame<=0; cancel<=0; clear_error<=0;
            box_send<=0; mailbox_recover<=0; epoch_changed<=0;
            request_id<=0; epoch<=0; time_ticks<=0;
            channel_ready_q<=0; epoch_refresh_required<=1; epoch_refresh_phase<=0;
            requests<=0; ready_count<=0; abort_count<=0; format_errors<=0; snap_timeouts<=0;
            box_commits<=0; box_expires<=0; mailbox_timeouts<=0;
            for(integer n=0;n<14;n++) shadow[n]<=0;
        end else begin
            time_ticks<=time_ticks+1;
            channel_ready_q<=channel_ready;
            if(epoch_refresh_phase==1 && !channel_ready) epoch_refresh_phase<=2;
            if(epoch_refresh_phase==2 && channel_ready) epoch_refresh_phase<=0;
            if(channel_ready_q && !channel_ready && epoch_refresh_phase==0) epoch_refresh_required<=1;
            // Explicit reset notice also covers display reset DURING an epoch's
            // deliberate clear handshake, when ready was already low.
            if(channel_reset_event) begin epoch_refresh_required<=1; epoch_refresh_phase<=0; end
            request<=0; release_frame<=0; cancel<=0; clear_error<=0;
            box_send<=0; mailbox_recover<=0; epoch_changed<=0;
            if(snap_ready_event) ready_count<=ready_count+1;
            if(snap_abort_event) abort_count<=abort_count+1;
            if(format_error_event) format_errors<=format_errors+1;
            if(snap_timeout_event) snap_timeouts<=snap_timeouts+1;
            if(box_expire_event) box_expires<=box_expires+1;
            if(mailbox_timeout_event) mailbox_timeouts<=mailbox_timeouts+1;
            if(s_axi_awvalid && s_axi_awready) begin aw_addr<=s_axi_awaddr; aw_full<=1; end
            if(s_axi_wvalid && s_axi_wready) begin w_data<=s_axi_wdata; w_strobe<=s_axi_wstrb; w_full<=1; end
            if(s_axi_bvalid && s_axi_bready) s_axi_bvalid<=0;
            if(aw_full && w_full && !s_axi_bvalid) begin
                aw_full<=0; w_full<=0; s_axi_bvalid<=1;
                s_axi_bresp<=write_legal?2'b00:2'b10;
                if(write_legal) begin
                    if(aw_addr==R_EPOCH) begin
                        epoch<=epoch_next; epoch_changed<=(epoch_next!=epoch);
                        if(epoch_next!=epoch) begin
                            epoch_refresh_required<=0; epoch_refresh_phase<=1;
                        end
                    end
                    else if(aw_addr==R_REQUEST_ID) request_id<=byte_merge(request_id,w_data,w_strobe);
                    else if(aw_addr==R_COMMAND) case(w_data)
                        32'd1: begin request<=1; requests<=requests+1; end
                        32'd2: release_frame<=1;
                        32'd4: cancel<=1;
                        32'd8: clear_error<=1;
                        32'd16: begin box_send<=1; box_commits<=box_commits+1; end
                        32'd32: mailbox_recover<=1;
                    endcase
                    else begin
                        index=(aw_addr-R_BOX_SHADOW)>>2;
                        shadow[index]<=byte_merge(shadow[index],w_data,w_strobe);
                    end
                end
            end
            if(s_axi_rvalid && s_axi_rready) s_axi_rvalid<=0;
            if(s_axi_arvalid && s_axi_arready) begin
                s_axi_rdata<=read_data; s_axi_rresp<=read_legal?2'b00:2'b10; s_axi_rvalid<=1;
            end
        end
    end
endmodule
