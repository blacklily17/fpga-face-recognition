`timescale 1ns/1ps

module axis_frame_resync #(
    parameter integer DATA_W = 8
) (
    input  logic              aclk,
    input  logic              aresetn,
    input  logic              abort_pulse,

    input  logic              s_tvalid,
    output logic              s_tready,
    input  logic [DATA_W-1:0] s_tdata,
    input  logic              s_tuser,
    input  logic              s_tlast,

    output logic              m_tvalid,
    input  logic              m_tready,
    output logic [DATA_W-1:0] m_tdata,
    output logic              m_tuser,
    output logic              m_tlast,
    output logic              dropping_until_sof
);
    logic drop_active;
    wire pass_current = !abort_pulse && (!drop_active || s_tuser);

    always_comb begin
        m_tvalid = s_tvalid && pass_current;
        m_tdata = s_tdata;
        m_tuser = s_tuser;
        m_tlast = s_tlast;
        s_tready = pass_current ? m_tready : 1'b1;
        dropping_until_sof = drop_active;
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            drop_active <= 1'b1;
        end else if (abort_pulse) begin
            drop_active <= 1'b1;
        end else if (drop_active && s_tvalid && s_tready && s_tuser) begin
            drop_active <= 1'b0;
        end
    end

endmodule
