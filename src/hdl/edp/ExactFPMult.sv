`timescale 1 ns / 1 ps

module ExactFPMult #(
    parameter integer DATA_WIDTH = 32,
    parameter integer EXP_WIDTH = 8,
    parameter integer MANTISSA_WIDTH = 24,
    parameter integer RESULT_EXP_WIDTH = 9,
    parameter integer RESULT_MANTISSA_WIDTH = 48
) (
    input [DATA_WIDTH-1:0] In1,
    input [DATA_WIDTH-1:0] In2,
    output reg MultSign,
    output reg [RESULT_EXP_WIDTH-1:0] MultExponent,
    output reg [RESULT_MANTISSA_WIDTH-1:0] MultMantissa
);

    /* -------- UNPACK FLOATING POINT --------- */
    wire Sign1;
    wire unsigned [EXP_WIDTH-1:0] Exponent1;
    wire unsigned [MANTISSA_WIDTH-1:0] Mantissa1;

    wire Sign2;
    wire unsigned [EXP_WIDTH-1:0] Exponent2;
    wire unsigned [MANTISSA_WIDTH-1:0] Mantissa2;

    assign Sign1 = In1[31]; // Single bit sign
    assign Exponent1 = In1[30:23]; // 8-bit exponent in excess-128
    assign Mantissa1[23] = Exponent1 == 0 ? 1'b0 : 1'b1; // Implicit mantissa bit
    assign Mantissa1[22:0] = In1[22:0]; // Explicit mantissa

    assign Sign2 = In2[31]; // Single bit sign
    assign Exponent2 = In2[30:23]; // 8-bit exponent in excess-128
    assign Mantissa2[23] = Exponent2 == 0 ? 1'b0 : 1'b1; // Implicit mantissa bit
    assign Mantissa2[22:0] = In2[22:0]; // Explicit mantissa

    wire Sign_Product;
    wire unsigned [RESULT_EXP_WIDTH-1:0] Exponent_Product; // 9-bit
    wire unsigned [RESULT_MANTISSA_WIDTH-1:0] Mantissa_Product; // 48-bit

    /* ------------ SIGN COMPUTATION -------------- */
    always_comb begin
        MultSign <= Sign1 ^ Sign2;
    end

    /* ------------ EXPONENT COMPUTATION -------------- */
    always_comb begin
        if (Exponent1 == 0 && Exponent2 == 0)
            MultExponent = Exponent1 + Exponent2 + 2 - 127;
        else if (Exponent1 == 0 || Exponent2 == 0)
            MultExponent = Exponent1 + Exponent2 + 1 - 127;
        else
            MultExponent = Exponent1 + Exponent2 - 127;
    end


    /* ------------ MANTISSA COMPUTATION -------------- */
    always_comb begin
        MultMantissa = Mantissa1 * Mantissa2;
    end

endmodule

