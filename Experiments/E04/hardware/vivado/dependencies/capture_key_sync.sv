module capture_key_sync (
    input wire clk, rst_n,
    input wire [1:0] key_n,
    output wire [1:0] key_sync_n
);
    (* ASYNC_REG="TRUE" *) reg [1:0] key_meta_n;
    (* ASYNC_REG="TRUE" *) reg [1:0] key_stable_n;
    always @(posedge clk) begin
        if (!rst_n) begin
            key_meta_n <= 2'b11;
            key_stable_n <= 2'b11;
        end else begin
            key_meta_n <= key_n;
            key_stable_n <= key_meta_n;
        end
    end
    assign key_sync_n=key_stable_n;
endmodule


