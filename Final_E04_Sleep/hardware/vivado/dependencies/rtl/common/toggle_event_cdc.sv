`timescale 1ns/1ps

// Transfers a source-domain toggle event into a one-cycle destination pulse
// and returns an acknowledgement toggle. The source must not issue a second
// event until src_toggle == the acknowledgement synchronized back to source.
module toggle_event_cdc (
    input  logic src_toggle,
    input  logic dst_clk,
    input  logic dst_rst_n,
    output logic dst_pulse,
    output logic dst_ack_toggle
);
    (* ASYNC_REG = "TRUE" *) logic toggle_sync_1;
    (* ASYNC_REG = "TRUE" *) logic toggle_sync_2;
    logic toggle_seen;

    always_ff @(posedge dst_clk or negedge dst_rst_n) begin
        if (!dst_rst_n) begin
            toggle_sync_1 <= 1'b0;
            toggle_sync_2 <= 1'b0;
            toggle_seen <= 1'b0;
            dst_pulse <= 1'b0;
            dst_ack_toggle <= 1'b0;
        end else begin
            toggle_sync_1 <= src_toggle;
            toggle_sync_2 <= toggle_sync_1;
            dst_pulse <= 1'b0;
            if (toggle_sync_2 != toggle_seen) begin
                toggle_seen <= toggle_sync_2;
                dst_ack_toggle <= toggle_sync_2;
                dst_pulse <= 1'b1;
            end
        end
    end

endmodule
