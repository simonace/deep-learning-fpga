`timescale 1 ns / 1 ps

module MultiplyAccumulator #(
    parameter integer COMPLETE_REGISTER_WORDS = 128,
    parameter integer WORD_SIZE = 8
)
(
    input Clk,
    input Rst,
    input Enable,
    input [32-1:0] In1,
    input [32-1:0] In2,
    output reg [32-1:0] Out
);

    localparam ZERO_POINT = COMPLETE_REGISTER_WORDS * WORD_SIZE / 2;
    localparam COMPLETE_REGISTER_SIZE = WORD_SIZE * COMPLETE_REGISTER_WORDS;

    /* ----------------- EXACT FLOATING POINT MULTIPLIER ----------------- */
    wire Sign_Product;
    wire unsigned [9-1:0] Exponent_Product; // 9-bit
    wire unsigned [48-1:0] Mantissa_Product; // 48-bit

    ExactFPMult #() mult (
        .In1(In1),
        .In2(In2),
        .MultSign(Sign_Product),
        .MultExponent(Exponent_Product),
        .MultMantissa(Mantissa_Product)
    );

    /* --------------- SHIFT MANTISSA TO THE CORRECT POSITION -------------- */
    wire [COMPLETE_REGISTER_SIZE-1:0] ShiftedMantissa;

    ShiftMantissa #(
        .RESULT_SIZE(COMPLETE_REGISTER_SIZE),
        .MANTISSA_SIZE(48),
        .EXPONENT_SIZE(9),
        .BIAS(127)
    ) shift_mantissa (
        .Mantissa(Mantissa_Product),
        .Exponent(Exponent_Product),
        .Result(ShiftedMantissa)
    );

    reg [COMPLETE_REGISTER_SIZE-1:0] CompleteRegister;
    reg Sign_Result;

    /* --------- LEADING ZEROS DETECTION AND SHIFT ---------- */
    localparam LEADING_ZERO_BITS = $clog2(COMPLETE_REGISTER_SIZE) + 1;
    wire [LEADING_ZERO_BITS-1:0] Lz;
    wire [COMPLETE_REGISTER_SIZE-1:0] LzEncoded;

    LeadingZerosEncoder #(
        .DATA_WIDTH(COMPLETE_REGISTER_SIZE)
    ) LzEncoder (
        .in(CompleteRegister),
        .out(LzEncoded)
    );

    LeadingZeros #(
        .INPUT_WIDTH(COMPLETE_REGISTER_SIZE),
        .OUTPUT_WIDTH(LEADING_ZERO_BITS)
    ) lz0 (
        .encoded(LzEncoded),
        .result(Lz)
    );

    // Accumulate in Complete Register
    always @(posedge Clk) begin
        if (Enable == 1'b1) begin
            // Add to complete register
            if (Sign_Product ^ Sign_Result == 1'b0) begin
                CompleteRegister <= CompleteRegister + ShiftedMantissa;
            end
            else begin
                if (ShiftedMantissa > CompleteRegister) begin
                    Sign_Result <= ~Sign_Result;
                    CompleteRegister <= ShiftedMantissa - CompleteRegister;
                end
                else begin
                    CompleteRegister <= CompleteRegister - ShiftedMantissa;
                end
            end
        end
        else begin
            Sign_Result <= 0;
            CompleteRegister <= 0;
        end
    end

    // Returns the correct mantissa slice from Complete Register
    always_comb begin
        if (Enable == 1'b1) begin
            // Sign
            Out[31] = Sign_Result;

            // Exponent
            if (Lz == COMPLETE_REGISTER_SIZE) begin
                Out[30:23] = 0;
            end
            else begin
                Out[30:23] = 127 + ZERO_POINT - Lz;
            end
            
            // Mantissa
            if (COMPLETE_REGISTER_SIZE - Lz >= 23 + 5) begin
                Out[22:0] = CompleteRegister[COMPLETE_REGISTER_SIZE - Lz - 2 -: 23];
            end
            else begin
                Out[22:0] = 23'b0;
            end
        end
        else begin
            Out = 0;
        end
    end
endmodule

