`timescale 1 ns / 1 ps

module ShiftMantissa_tb;

    localparam RESULT_SIZE = 1024;
    localparam MANTISSA_SIZE = 48;
    localparam EXPONENT_SIZE = 9;
    localparam BIAS = 256;

    reg tb_ACLK;
    reg tb_ARESETn;

    wire temp_clk;
    wire temp_rstn;

    reg Clear;

    wire temp_Clear;

    // Inputs and Outputs of module
    reg unsigned [MANTISSA_SIZE-1:0] Mantissa;
    reg unsigned [EXPONENT_SIZE-1:0] Exponent;
    wire [RESULT_SIZE-1:0] Result;

    // Clock generation
    always #5 tb_ACLK = !tb_ACLK;

    initial begin
        Clear = 0;
        Mantissa = 0;
        Exponent = 0;
        // Expected result: 0

        #10
        Mantissa[MANTISSA_SIZE-2:0] = 10;
        Mantissa[MANTISSA_SIZE-1] = 1'b1; // implicit bit
        Exponent = BIAS;

        #10
        $finish();
    end

    // Instantiate device under test
    ShiftMantissa #(
        .RESULT_SIZE(RESULT_SIZE),
        .MANTISSA_SIZE(MANTISSA_SIZE),
        .EXPONENT_SIZE(EXPONENT_SIZE),
        .BIAS(BIAS)
    ) dut (
        .Mantissa(Mantissa),
        .Exponent(Exponent),
        .Result(Result)
    );

endmodule

