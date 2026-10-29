`timescale 1ns/1ps

// Transaction manager for three candidate frame buffers. A buffer becomes
// visible only after both RGB and GRAY branches finish without an abort.
module triple_buffer_commit_manager (
    input  logic       aclk,
    input  logic       aresetn,
    input  logic       rgb_frame_start_pulse,
    input  logic       gray_frame_start_pulse,
    input  logic       rgb_frame_done_pulse,
    input  logic       gray_frame_done_pulse,
    input  logic       frame_abort_pulse,
    input  logic       abort_recovery_done_pulse,
    input  logic [2:0] reader_busy_mask,

    output logic [1:0] writing_buffer_index,
    output logic       writing_buffer_available,
    output logic [1:0] completed_buffer_index,
    output logic       completed_buffer_valid,
    output logic       frame_active,
    output logic       abort_recovery_required,
    output logic       rgb_axis_enable,
    output logic       gray_axis_enable,
    output logic       frame_commit_pulse,
    output logic [31:0] committed_frame_id,
    output logic [31:0] aborted_frame_count,
    output logic       protocol_error_sticky
);
    logic writer_slot_valid;
    logic rgb_started;
    logic gray_started;
    logic rgb_done;
    logic gray_done;
    integer candidate;
    logic [1:0] selected_index;
    logic selected_valid;

    always_comb begin
        selected_index = 2'd0;
        selected_valid = 1'b0;
        for (candidate = 0; candidate < 3; candidate = candidate + 1) begin
            if (!selected_valid && !reader_busy_mask[candidate] &&
                !(completed_buffer_valid && candidate == completed_buffer_index)) begin
                selected_index = candidate[1:0];
                selected_valid = 1'b1;
            end
        end
        writing_buffer_available = writer_slot_valid
                                 && !reader_busy_mask[writing_buffer_index]
                                 && !(completed_buffer_valid &&
                                      writing_buffer_index == completed_buffer_index);

        // Before a transaction starts, a branch may accept its first TUSER only
        // when a candidate slot exists. During a transaction, each branch may
        // continue until its own frame-done pulse. A branch that finishes early
        // is held off so it cannot start the next frame before its peer commits.
        rgb_axis_enable = frame_active ? !rgb_done
                                       : (writing_buffer_available &&
                                          !abort_recovery_required);
        gray_axis_enable = frame_active ? !gray_done
                                        : (writing_buffer_available &&
                                           !abort_recovery_required);
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            writing_buffer_index <= 2'd0;
            writer_slot_valid <= 1'b1;
            completed_buffer_index <= 2'd0;
            completed_buffer_valid <= 1'b0;
            frame_active <= 1'b0;
            abort_recovery_required <= 1'b0;
            frame_commit_pulse <= 1'b0;
            committed_frame_id <= 32'd0;
            aborted_frame_count <= 32'd0;
            protocol_error_sticky <= 1'b0;
            rgb_started <= 1'b0;
            gray_started <= 1'b0;
            rgb_done <= 1'b0;
            gray_done <= 1'b0;
        end else begin
            frame_commit_pulse <= 1'b0;

            if (abort_recovery_done_pulse && !frame_abort_pulse)
                abort_recovery_required <= 1'b0;

            if (!frame_active && !writing_buffer_available && selected_valid) begin
                writing_buffer_index <= selected_index;
                writer_slot_valid <= 1'b1;
            end

            if (frame_abort_pulse) begin
                aborted_frame_count <= aborted_frame_count + 1'b1;
                frame_active <= 1'b0;
                abort_recovery_required <= 1'b1;
                rgb_started <= 1'b0;
                gray_started <= 1'b0;
                rgb_done <= 1'b0;
                gray_done <= 1'b0;
            end else begin
                if (rgb_frame_start_pulse || gray_frame_start_pulse) begin
                    if (!frame_active) begin
                        if (writing_buffer_available) begin
                            frame_active <= 1'b1;
                            rgb_started <= rgb_frame_start_pulse;
                            gray_started <= gray_frame_start_pulse;
                            rgb_done <= 1'b0;
                            gray_done <= 1'b0;
                        end else begin
                            protocol_error_sticky <= 1'b1;
                        end
                    end else begin
                        if (rgb_frame_start_pulse && rgb_started)
                            protocol_error_sticky <= 1'b1;
                        if (gray_frame_start_pulse && gray_started)
                            protocol_error_sticky <= 1'b1;
                        rgb_started <= rgb_started || rgb_frame_start_pulse;
                        gray_started <= gray_started || gray_frame_start_pulse;
                    end
                end

                if (frame_active) begin
                    if (rgb_frame_done_pulse && !rgb_started)
                        protocol_error_sticky <= 1'b1;
                    if (gray_frame_done_pulse && !gray_started)
                        protocol_error_sticky <= 1'b1;
                    rgb_done <= rgb_done || rgb_frame_done_pulse;
                    gray_done <= gray_done || gray_frame_done_pulse;

                    if ((rgb_done || rgb_frame_done_pulse) &&
                        (gray_done || gray_frame_done_pulse) &&
                        rgb_started && gray_started) begin
                        completed_buffer_index <= writing_buffer_index;
                        completed_buffer_valid <= 1'b1;
                        committed_frame_id <= committed_frame_id + 1'b1;
                        frame_commit_pulse <= 1'b1;
                        frame_active <= 1'b0;
                        rgb_started <= 1'b0;
                        gray_started <= 1'b0;
                        rgb_done <= 1'b0;
                        gray_done <= 1'b0;
                        writer_slot_valid <= 1'b0;
                    end
                end
            end
        end
    end

endmodule
