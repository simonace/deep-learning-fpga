module LeadingZeros #(
    parameter integer INPUT_WIDTH = 32,
    parameter integer ENCODED_WIDTH = 2,
    parameter integer OUTPUT_WIDTH = 6
) (
    input wire [INPUT_WIDTH-1:0] encoded,
    output wire [OUTPUT_WIDTH-1:0] result
);

localparam GROUPS = INPUT_WIDTH / ENCODED_WIDTH;
localparam NEXT_WIDTH = (ENCODED_WIDTH + 1) * INPUT_WIDTH/ (ENCODED_WIDTH * 2);
localparam NW = ENCODED_WIDTH + 1;
localparam EW = ENCODED_WIDTH;

reg [NEXT_WIDTH-1:0] next;

always_comb begin
    for (int i = 0; i < GROUPS; i = i + 2) begin
        // Both left and right start with 1s
        if (encoded[(i+2)*EW-1] == 1'b1 && encoded[(i+1)*EW-1] == 1'b1) begin
            // 1000...00
            next[(i/2+1)*NW-1 -: NW] <= {1'b1, {EW{1'b0}}};
        end
        // Left starts with 0
        else if (encoded[(i+2)*EW-1] == 1'b0) begin
            // 0[left]
            next[(i/2+1)*NW-1 -: NW] <= {1'b0, {encoded[(i+2)*EW-1 -: EW]}};
        end
        // Left starts with 1
        else if (encoded[(i+2)*EW-1] == 1'b1) begin
            // 01[right(msb-1:0)]
            next[(i/2+1)*NW-1 -: NW] <= {2'b01, {encoded[(i+1)*EW-2 -: EW-1]}};
        end
    end
end

// RECURSION IN VERILOG!
generate
    if (ENCODED_WIDTH != OUTPUT_WIDTH) begin
        LeadingZeros #(
            .INPUT_WIDTH(NEXT_WIDTH),
            .ENCODED_WIDTH(ENCODED_WIDTH + 1),
            .OUTPUT_WIDTH(OUTPUT_WIDTH)
        ) nxt (
            .encoded(next),
            .result(result)
        );
    end
    else begin
        assign result = encoded;
    end
endgenerate

endmodule

