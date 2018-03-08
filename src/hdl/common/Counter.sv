`timescale 1 ns / 1 ps

module Counter #(
    parameter integer MAX_VALUE = 32,
    parameter integer COUNT_BITS = $clog2(MAX_VALUE)
) (
    input clk,
    input rst,
    input enable,
    input clear,
    output [COUNT_BITS-1:0] out
);

    // Sequeuntial logic
    reg [COUNT_BITS-1:0] count;
    always @(posedge clk) begin
        if (!rst) begin
            count <= MAX_VALUE-1;
        end
        else if (clear) begin // active high
            count <= MAX_VALUE-1;
        end
        else if (enable) begin
            count <= out;
        end
        else begin
            count <= count;
        end
    end

    // Combinational logic
    assign out = count + 1;
endmodule

