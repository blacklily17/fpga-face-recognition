from pathlib import Path
p=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline/rtl/axis_cnn_conv3x3.sv';s=p.read_text()
s=s.replace('REQUANT=8, TX_OUTPUT=9;', 'REQUANT=8, TX_OUTPUT=9, RQ_MUL=10, RQ_ROUND=11, RQ_SHIFT=12;')
s=s.replace('reg signed [31:0] accumulator;', 'reg signed [31:0] accumulator;\n    reg signed [63:0] rq_product;\n    reg [63:0] rq_rounded,rq_scaled;')
a=s.index('    function automatic signed [7:0] requantize_relu;');b=s.index('    always @(posedge aclk or negedge aresetn)',a);s=s[:a]+s[b:]
s=s.replace('accumulator<=0;error<=0;', 'accumulator<=0;rq_product<=0;rq_rounded<=0;rq_scaled<=0;error<=0;')
s=s.replace('if(ic+1==in_channels) state<=REQUANT;', 'if(ic+1==in_channels) state<=RQ_MUL;')
s=s.replace('                REQUANT: begin', '''                // ReLU makes every negative product exactly zero. For nonnegative
                // products, retain the original round-half-away-from-zero result.
                // Separate multiply, 64-bit round, barrel shift, and saturate paths.
                RQ_MUL: begin rq_product<=accumulator*multiplier_ram[oc];state<=RQ_ROUND;end
                RQ_ROUND: begin
                    rq_rounded<=rq_product[63]?64'd0:$unsigned(rq_product)+(64'd1<<(requant_shift-1));
                    state<=RQ_SHIFT;
                end
                RQ_SHIFT: begin rq_scaled<=rq_rounded>>requant_shift;state<=REQUANT;end
                REQUANT: begin''')
s=s.replace('requantize_relu(accumulator,multiplier_ram[oc],requant_shift)', "(rq_scaled>127)?8'd127:rq_scaled[7:0]")
p.write_text(s)
