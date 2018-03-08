`timescale 1 ns / 1 ps

module ShiftMantissa #(
    parameter integer RESULT_SIZE = 32,
    parameter integer MANTISSA_SIZE = 48,
    parameter integer EXPONENT_SIZE = 9,
    parameter integer BIAS = 127
) (
    input unsigned [MANTISSA_SIZE-1:0] Mantissa,
    input unsigned [EXPONENT_SIZE-1:0] Exponent,
    output reg unsigned [RESULT_SIZE-1:0] Result
);

    localparam ZERO_POINT = RESULT_SIZE / 2;

    wire [RESULT_SIZE-1:0] ZeroedMantissa;

    // Shift the mantissa to zero point
    assign ZeroedMantissa = Mantissa << (ZERO_POINT - MANTISSA_SIZE + 1);

    always_comb begin
        if (Exponent < BIAS) begin
            Result = ZeroedMantissa >> (BIAS - Exponent);
        end
        else begin
            Result = ZeroedMantissa << (Exponent - BIAS);
        end
    end

endmodule

