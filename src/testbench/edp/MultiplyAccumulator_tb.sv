`timescale 1 ns / 1 ps

module MultiplyAccumulator_tb;

    reg tb_ACLK;
    reg tb_ARESETn;

    wire temp_clk;
    wire temp_rstn;

    reg [31:0] In1;
    reg [31:0] In2;
    wire [31:0] Out;

    reg Enable;

    wire temp_Enable;

    // Simple clock generation
    always #5 tb_ACLK = !tb_ACLK;

    assign temp_Enable = Enable;
    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_ARESETn;

    initial begin
        tb_ACLK = 1'b0;
        tb_ARESETn = 1'b1;
        In1 = 0;
        In2 = 0;
        Enable = 1'b0;
    end

    initial begin
        $display("Running testbench for Kulisch Multiply Accumulator...");

        #10
        Enable = 1'b1; // Enable the accumulator

        #10
        In1 = 32'h3e800000; // 0.25
        In2 = 32'h40000000; // 2
        // Expected result: 0x3f000000 (0.5)

        #10
        Enable = 1'b0;
        In1 = 0;
        In2 = 0;

        #10
        Enable = 1'b1;

        #10
        In1 = 32'h3ea5e354; // 0.324
        In2 = 32'h3ed9999a; // 0.425
        // Expected result: 0x3e0d013b (0.1377)

        #10 // Expected result: 0.2754
        #10 // Expected result: 0.4131
        #10 // Expected result: 0.5508
        #10
        $stop;
    end

    // Kulisch Accumulator
    MultiplyAccumulator KulMAC(
        .Clk(temp_clk),
        .Rst(temp_rstn),
        .Enable(temp_Enable),
        .In1(In1),
        .In2(In2),
        .Out(Out)
    );

endmodule

