from pathlib import Path
p=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline/rtl/axis_cnn_conv3x3.sv';s=p.read_text()
s=s.replace('RQ_SHIFT=12;', 'RQ_SHIFT=12, HEADER_AREA=13, HEADER_TOTAL=14, HEADER_CHECK=15,\n               MAC_ADDR_A=16, MAC_ADDR_B=17;')
s=s.replace('reg [3:0] state;', 'reg [4:0] state;')
s=s.replace('reg [31:0] input_total,weight_total,output_total,receive_count,send_index;', 'reg [31:0] input_total,weight_total,output_total,receive_count,send_index;\n    reg [31:0] spatial_total,input_row,weight_base,input_address,weight_address;\n    reg mac_in_bounds;')
a=s.index('    wire [31:0] input_derived=');b=s.index('    wire signed [17:0] iy=',a);s=s[:a]+s[b:]
a=s.index('    wire [31:0] input_address=');b=s.index('    reg signed [7:0] input_q',a);s=s[:a]+s[b:]
s=s.replace('send_index<=0;oc<=0;', 'spatial_total<=0;input_row<=0;weight_base<=0;input_address<=0;weight_address<=0;mac_in_bounds<=0;\n            send_index<=0;oc<=0;',1)
a=s.index('                            15: begin');b=s.index('                        endcase',a)
s=s[:a]+'''                            15: begin requant_shift<=assembled[5:0];state<=HEADER_AREA;end
'''+s[b:]
s=s.replace('                PIXEL_INIT: begin accumulator<=bias_ram[oc];ic<=0;ky<=0;kx<=0;state<=MAC_READ;end', '''                // Dimension products and bounds checks occupy separate clocks.
                HEADER_AREA: begin spatial_total<=width*height;state<=HEADER_TOTAL;end
                HEADER_TOTAL: begin
                    input_total<=spatial_total*in_channels;
                    output_total<=spatial_total*out_channels;
                    weight_total<=in_channels*out_channels*9;
                    state<=HEADER_CHECK;
                end
                HEADER_CHECK: begin
                    if(width==0 || width>MAX_WIDTH || height==0 || height>MAX_HEIGHT ||
                       in_channels==0 || in_channels>MAX_CHANNELS || out_channels==0 ||
                       out_channels>MAX_CHANNELS || requant_shift==0 || requant_shift>31 ||
                       input_total>MAX_INPUT_BYTES || weight_total>MAX_WEIGHT_BYTES ||
                       output_total>MAX_OUTPUT_BYTES) error<=1;
                    else begin receive_count<=0;state<=RX_INPUT;end
                end
                PIXEL_INIT: begin accumulator<=bias_ram[oc];ic<=0;ky<=0;kx<=0;state<=MAC_ADDR_A;end
                MAC_ADDR_A: begin
                    input_row<=ic*height+iy;
                    weight_base<=oc*in_channels+ic;
                    mac_in_bounds<=in_bounds;state<=MAC_ADDR_B;
                end
                MAC_ADDR_B: begin
                    input_address<=mac_in_bounds?input_row*width+ix:0;
                    weight_address<=(weight_base*3+ky)*3+kx;
                    state<=MAC_READ;
                end''')
s=s.replace('if(in_bounds) accumulator<=', 'if(mac_in_bounds) accumulator<=')
s=s.replace('else begin ic<=ic+1;state<=MAC_READ;end', 'else begin ic<=ic+1;state<=MAC_ADDR_A;end').replace('else begin ky<=ky+1;state<=MAC_READ;end','else begin ky<=ky+1;state<=MAC_ADDR_A;end').replace('else begin kx<=kx+1;state<=MAC_READ;end','else begin kx<=kx+1;state<=MAC_ADDR_A;end')
p.write_text(s)
