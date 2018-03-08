`timescale 1 ns / 1 ps

// A single hidden unit in a neural network, comes with its own BRAM and
// a MAC unit.
module MACUnit #(
    parameter integer DATA_WIDTH = 32,
    parameter integer BRAM_DEPTH = 256,
    parameter integer W_ADDR_BITS = $clog2(BRAM_DEPTH)
) (
    input clk,
    input rst,
    input clear,
    input enable,
    input write_enable,
    input [W_ADDR_BITS-1:0] address,
    input [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out
);
    wire [DATA_WIDTH-1:0] weight;

    // Weight memory bank in BRAM
    Memory #(
        .WIDTH(DATA_WIDTH),
        .DEPTH(BRAM_DEPTH)
    ) weights (
        .clk(clk),
        .write_enable(write_enable),
        .address(address),
        .data_in(data_in),
        .data_out(weight)
    );

    // MAC unit
    MAC #(
        .DATA_WIDTH(DATA_WIDTH)
    ) mac (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .clear(clear),
        .inA(data_in),
        .inB(weight),
        .out(data_out)
    );
endmodule

