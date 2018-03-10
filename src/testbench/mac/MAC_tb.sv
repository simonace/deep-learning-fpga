`timescale 1 ns / 1 ps

module MAC_tb;
    localparam DATA_WIDTH = 32;

    // Clock and resets
    reg tb_ACLK;
    reg tb_RSTN;
    wire temp_clk;
    wire temp_rstn;
    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_RSTN;

    // Enable and clear
    reg tb_enable;
    reg tb_clear;

    // Inputs
    reg [DATA_WIDTH-1:0] tb_inA;
    reg [DATA_WIDTH-1:0] tb_inB;

    // Output
    wire [DATA_WIDTH-1:0] tb_out;

    // Clock generation
    always #5 tb_ACLK = !tb_ACLK;

    initial begin
        tb_ACLK = 0;
        tb_RSTN = 0;
        tb_enable = 0;
        tb_clear = 0;
        @(posedge temp_clk);
        tb_RSTN = 1;
        compute();
        tb_inA = 0;
        tb_inB = 2;
        @(posedge temp_clk);
        tb_clear = 1;
        @(posedge temp_clk);
        tb_clear = 0;
        @(posedge temp_clk);
        compute();
        #100
        $finish();
    end

    MAC #(
        .DATA_WIDTH(32)
    ) DUT (
        .clk(temp_clk),
        .rst(temp_rstn),
        .enable(tb_enable),
        .clear(tb_clear),
        .inA(tb_inA),
        .inB(tb_inB),
        .out(tb_out)
    );

    task compute();
        tb_enable = 1;
        for (int i = 0; i < 8; i = i+1) begin
            tb_inA = i+1;
            tb_inB = i+1;
            @(posedge temp_clk);
        end
        tb_enable = 0;
    endtask
endmodule;
