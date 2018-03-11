module LeadingZerosEncoder #(
    parameter integer DATA_WIDTH = 32
) (
    input wire [DATA_WIDTH-1:0] in,
    output reg [DATA_WIDTH-1:0] out
);

always_comb begin
    for (int i = 0; i < DATA_WIDTH; i = i + 2) begin
        if (in[i +: 2] == 2'b00) begin
            out[i+:2] <= 2'b10;
        end
        else if (in[i +: 2] == 2'b01) begin
            out[i+:2] <= 2'b01;
        end
        else if (in[i +: 2] == 2'b10) begin
            out [i+:2] <= 2'b00;
        end
        else begin
            out [i+:2] <= 2'b00;
        end
    end
end

endmodule

