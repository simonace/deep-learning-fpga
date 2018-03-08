`timescale 1 ns / 1 ps

module MAC #(
    parameter integer DATA_WIDTH = 32
) (
    input clk,
    input rst,
    input enable,
    input clear,
    input [DATA_WIDTH-1:0] inA,
    input [DATA_WIDTH-1:0] inB,
    output [DATA_WIDTH-1:0] out
);
    // Sequeuntial logic
    reg [DATA_WIDTH-1:0] accum;
    always @(posedge clk) begin
        if (!rst) begin
            accum <= 0;
        end
        else if (clear) begin // active high
            accum <= 0;
        end
        else begin
            accum <= out;
        end
    end

    // Combinational logic
    assign out = enable ? inA * inB + accum : accum;
endmodule

