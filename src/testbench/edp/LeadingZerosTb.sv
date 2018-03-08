module LeadingZerosTb;

reg [1024-1:0] in;
wire [1024-1:0] encoded;
reg [11-1:0] out;

initial begin
    in = 0;
   
    #10
    $stop;
end


LeadingZerosEncoder #(
    .DATA_WIDTH(1024)
) encoder (
    .in(in),
    .out(encoded)
);

LeadingZeros #(
    .INPUT_WIDTH(1024),
    .ENCODED_WIDTH(2),
    .OUTPUT_WIDTH(11)
) dut (
    .encoded(encoded),
    .result(out)
);

endmodule

