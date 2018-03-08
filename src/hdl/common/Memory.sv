// Basic Block RAM to store weights.
module Memory #(
    parameter integer DEPTH = 32,
    parameter integer WIDTH = 32,
    parameter integer ADDRESS_WIDTH = $clog2(DEPTH)
) (
    input clk,
    input write_enable,
    input [ADDRESS_WIDTH-1:0] address,
    input [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
);
    reg [WIDTH-1:0] mem [DEPTH-1:0];

    initial begin
        for (int i = 0; i < DEPTH; i = i+1) begin
            mem[i] = 0;
        end
    end

    always @(posedge clk) begin
        if (write_enable) begin
            mem[address] <= data_in;
        end
        data_out <= mem[address];
    end
endmodule

