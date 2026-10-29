// AXI4-Lite control + fixed-geometry CNN, all ports in the 50 MHz domain.
module cnn_regs_bd (
    (* X_INTERFACE_INFO="xilinx.com:signal:clock:1.0 aclk CLK", X_INTERFACE_PARAMETER="XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi:s_axis:m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000" *)
    input wire aclk,
    (* X_INTERFACE_INFO="xilinx.com:signal:reset:1.0 aresetn RST", X_INTERFACE_PARAMETER="XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
    input wire aresetn,
    input wire [15:0] s_axi_awaddr, s_axi_araddr,
    input wire s_axi_awvalid, s_axi_wvalid, s_axi_bready, s_axi_arvalid, s_axi_rready,
    input wire [31:0] s_axi_wdata,
    input wire [3:0] s_axi_wstrb,
    output wire s_axi_awready, s_axi_wready, s_axi_arready,
    output reg s_axi_bvalid, s_axi_rvalid,
    output reg [1:0] s_axi_bresp, s_axi_rresp,
    output reg [31:0] s_axi_rdata,
    input wire [31:0] s_axis_tdata,
    input wire [3:0] s_axis_tkeep,
    input wire s_axis_tvalid, s_axis_tlast,
    output wire s_axis_tready,
    output wire [31:0] m_axis_tdata,
    output wire [3:0] m_axis_tkeep,
    output wire m_axis_tvalid, m_axis_tlast,
    input wire m_axis_tready
);
    reg aw_full, w_full;
    reg [15:0] awaddr;
    reg [31:0] wdata;
    reg [3:0] wstrb;
    assign s_axi_awready=aresetn && !aw_full && !s_axi_bvalid;
    assign s_axi_wready=aresetn && !w_full && !s_axi_bvalid;
    assign s_axi_arready=aresetn && !s_axi_rvalid;
    reg [31:0] config_word, weight_addr, bias_addr, job, active_job, done_job;
    reg [575:0] weight_valid;
    reg [15:0] bias_valid;
    reg [31:0] cycles, in_bytes, out_bytes, error_code;
    reg running, done_latched, error_latched;
    reg start_pulse, abort_pulse, w_we, b_we;
    reg [15:0] w_addr_q;
    reg [7:0] b_addr_q;
    reg [31:0] w_data_q, b_data_q;
    wire core_ready, core_busy, core_done, core_error;
    wire ready=core_ready && !running && !start_pulse && !abort_pulse && !error_latched;
    wire fullframe=config_word[2];
    wire pool_only=fullframe && config_word[1];
    wire [31:0] weight_limit=fullframe ? (config_word[0] ? 576 : 36) : (config_word[0] ? 144 : 18);
    wire [31:0] bias_limit=fullframe ? 16 : 8;
    wire all_weights=pool_only || (fullframe ? (config_word[0] ? (&weight_valid) : (&weight_valid[35:0])) : (config_word[0] ? (&weight_valid[143:0]) : (&weight_valid[17:0])));
    wire all_bias=pool_only || (fullframe ? (&bias_valid) : (&bias_valid[7:0]));
    cnn_layer_axis core(.aclk(aclk), .aresetn(aresetn), .abort_job(abort_pulse),
        .start(start_pulse), .layer2(config_word[0]), .fullframe(fullframe), .pool_only(pool_only), .shift(config_word[13:8]),
        .start_ready(core_ready), .busy(core_busy), .done(core_done), .error(core_error),
        .w_we(w_we), .b_we(b_we), .w_addr(w_addr_q), .b_addr(b_addr_q),
        .w_data(w_data_q), .b_data(b_data_q),
        .s_tdata(s_axis_tdata), .s_tkeep(s_axis_tkeep), .s_tvalid(s_axis_tvalid), .s_tlast(s_axis_tlast), .s_tready(s_axis_tready),
        .m_tdata(m_axis_tdata), .m_tkeep(m_axis_tkeep), .m_tvalid(m_axis_tvalid), .m_tlast(m_axis_tlast), .m_tready(m_axis_tready));

    always @(posedge aclk) begin
        if (!aresetn) begin
            aw_full<=0; w_full<=0; awaddr<=0; wdata<=0; wstrb<=0;
            s_axi_bvalid<=0; s_axi_rvalid<=0; s_axi_bresp<=0; s_axi_rresp<=0; s_axi_rdata<=0;
            config_word<=32'h700; weight_addr<=0; bias_addr<=0; job<=0; active_job<=0; done_job<=0;
            weight_valid<=0; bias_valid<=0; cycles<=0; in_bytes<=0; out_bytes<=0; error_code<=0;
            running<=0; done_latched<=0; error_latched<=0;
            start_pulse<=0; abort_pulse<=0; w_we<=0; b_we<=0;
            w_addr_q<=0; b_addr_q<=0; w_data_q<=0; b_data_q<=0;
        end else begin
            start_pulse<=0; abort_pulse<=0; w_we<=0; b_we<=0;
            if (running) begin
                cycles<=cycles+1'b1;
                if (s_axis_tvalid && s_axis_tready) in_bytes<=in_bytes+4;
                if (m_axis_tvalid && m_axis_tready) out_bytes<=out_bytes+4;
                // Ignore the prior job's sticky done during the start pulse.
                if (core_done && !start_pulse) begin running<=0; done_latched<=1; done_job<=active_job; end
                if (core_error) begin running<=0; error_latched<=1; error_code<=4; done_latched<=0; end
            end
            if (s_axi_bvalid && s_axi_bready) s_axi_bvalid<=0;
            if (s_axi_awvalid && s_axi_awready) begin awaddr<=s_axi_awaddr; aw_full<=1; end
            if (s_axi_wvalid && s_axi_wready) begin wdata<=s_axi_wdata; wstrb<=s_axi_wstrb; w_full<=1; end
            if (aw_full && w_full && !s_axi_bvalid) begin
                aw_full<=0; w_full<=0; s_axi_bvalid<=1; s_axi_bresp<=0;
                if (wstrb==0) begin end // Legal AXI no-op.
                else if (wstrb!=15 || awaddr[1:0]!=0) begin
                    s_axi_bresp<=2; error_latched<=1; error_code<=1;
                end else if (awaddr==16'h0008 && wdata==2) begin
                    abort_pulse<=1; running<=0; done_latched<=0; error_latched<=0; error_code<=0;
                    weight_valid<=0; bias_valid<=0; done_job<=0;
                end else if (awaddr==16'h0008 && wdata==4 && !core_busy && !running) begin
                    done_latched<=0; error_latched<=0; error_code<=0;
                end else if (!ready) begin
                    s_axi_bresp<=2; error_latched<=1; error_code<=2;
                end else case (awaddr)
                    16'h0008: if (wdata==1 && all_weights && all_bias) begin
                        start_pulse<=1; running<=1; done_latched<=0; active_job<=job;
                        cycles<=0; in_bytes<=0; out_bytes<=0;
                        // Every new launch requires a complete fresh parameter load.
                        weight_valid<=0; bias_valid<=0;
                    end else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h000c: if ((wdata & ~32'h00003f07)==0 && (wdata[2:0]==0 || wdata[2:0]==1 || wdata[2:0]==4 || wdata[2:0]==5 || wdata[2:0]==7)) begin
                        config_word<=wdata; weight_valid<=0; bias_valid<=0; weight_addr<=0; bias_addr<=0;
                    end else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h0010: if (wdata<(fullframe ? 576 : 144)) weight_addr<=wdata;
                        else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h0014: if (weight_addr<(fullframe ? 576 : 144)) begin
                        w_we<=1; w_addr_q<=weight_addr[15:0]; w_data_q<=wdata;
                        weight_valid[weight_addr]<=1; weight_addr<=weight_addr+1'b1;
                    end else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h0018: if (wdata<bias_limit) bias_addr<=wdata;
                        else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h001c: if (bias_addr<bias_limit) begin
                        b_we<=1; b_addr_q<=bias_addr[7:0]; b_data_q<=wdata;
                        bias_valid[bias_addr]<=1; bias_addr<=bias_addr+1'b1;
                    end else begin s_axi_bresp<=2; error_latched<=1; error_code<=3; end
                    16'h002c: job<=wdata;
                    default: begin s_axi_bresp<=2; error_latched<=1; error_code<=1; end
                endcase
            end
            if (s_axi_rvalid && s_axi_rready) s_axi_rvalid<=0;
            if (s_axi_arvalid && s_axi_arready) begin
                s_axi_rvalid<=1; s_axi_rresp<=0;
                case (s_axi_araddr)
                    16'h0000: s_axi_rdata<=32'h434e0012;
                    16'h0004: s_axi_rdata<={28'd0,ready,(error_latched || core_error),done_latched,(core_busy || running)};
                    16'h0008: s_axi_rdata<=0;
                    16'h000c: s_axi_rdata<=config_word;
                    16'h0010: s_axi_rdata<=weight_addr;
                    16'h0018: s_axi_rdata<=bias_addr;
                    16'h0020: s_axi_rdata<=cycles;
                    16'h0024: s_axi_rdata<=in_bytes;
                    16'h0028: s_axi_rdata<=out_bytes;
                    16'h002c: s_axi_rdata<=job;
                    16'h0030: s_axi_rdata<=done_job;
                    16'h0034: s_axi_rdata<=error_code;
                    default: begin s_axi_rdata<=0; s_axi_rresp<=2; end
                endcase
            end
        end
    end
endmodule
