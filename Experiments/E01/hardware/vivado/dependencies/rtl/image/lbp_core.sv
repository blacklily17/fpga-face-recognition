`timescale 1ns/1ps

module lbp_core (
    input  logic [7:0] win_p [0:8],
    output logic [7:0] lbp_code
);

    // Keep these comparisons explicit. Vivado/XSim 2018.3 does not reliably
    // infer an always_comb sensitivity list through every unpacked-array
    // element when the array is indexed by a procedural loop variable.
    assign lbp_code[0] = (win_p[0] >= win_p[8]);
    assign lbp_code[1] = (win_p[1] >= win_p[8]);
    assign lbp_code[2] = (win_p[2] >= win_p[8]);
    assign lbp_code[3] = (win_p[3] >= win_p[8]);
    assign lbp_code[4] = (win_p[4] >= win_p[8]);
    assign lbp_code[5] = (win_p[5] >= win_p[8]);
    assign lbp_code[6] = (win_p[6] >= win_p[8]);
    assign lbp_code[7] = (win_p[7] >= win_p[8]);

endmodule
