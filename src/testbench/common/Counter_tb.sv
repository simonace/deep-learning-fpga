`timescale 1 ns / 1 ps

module Counter_tb;
    localparam MAX_VALUE = 32;

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

    // Output
    localparam COUNT_BITS = $clog2(MAX_VALUE);
    wire [COUNT_BITS-1:0] out;

    always #5 tb_ACLK = !tb_ACLK;

    initial begin
        tb_ACLK = 0;
        tb_RSTN = 0;
        tb_enable = 0;
        tb_clear = 0;
        @(posedge temp_clk);
        tb_RSTN = 1;
        @(posedge temp_clk);
        @(posedge temp_clk);
        @(posedge temp_clk);
        @(posedge temp_clk);
        tb_enable = 1;
        count();
        tb_enable = 0;
        tb_clear = 1;

        #100

        $finish();
    end

    Counter #(
        .MAX_VALUE(MAX_VALUE)
    ) DUT (
        .clk(temp_clk),
        .rst(temp_rstn),
        .enable(tb_enable),
        .clear(tb_clear),
        .out(out)
    );

    task count();
        for (int i = 0; i < MAX_VALUE; i = i+1) begin
            @(posedge temp_clk);
        end
    endtask
endmodule
