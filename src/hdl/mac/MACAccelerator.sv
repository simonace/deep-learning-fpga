`timescale 1 ns / 1 ps

module MACAccelerator #(
    parameter integer DATA_WIDTH = 32,
    parameter integer HIDDEN_UNITS = 64,
    parameter integer INPUT_DIM = 64
) (
    input clk,
    input rst,

    // Control Registers (AXI-LITE Interface)
    input wire [4-1:0] s_axi_awaddr,
    input wire [2:0] s_axi_awprot,
    input wire s_axi_awvalid,
    output wire s_axi_awready,
    input wire [32-1:0] s_axi_wdata,
    input wire [(32/8)-1 : 0] s_axi_wstrb,
    input wire s_axi_wvalid,
    output wire s_axi_wready,
    output wire [1:0] s_axi_bresp,
    output wire s_axi_bvalid,
    input wire s_axi_bready,
    input wire [4-1:0] s_axi_araddr,
    input wire [2:0] s_axi_arprot,
    input wire s_axi_arvalid,
    output wire s_axi_arready,
    output wire [32-1:0] s_axi_rdata,
    output wire [1:0] s_axi_rresp,
    output wire s_axi_rvalid,
    input wire s_axi_rready,

    // Input (AXI-Stream Slave Interface)
    input wire [DATA_WIDTH-1:0] s_axis_tdata,
    input wire s_axis_tvalid,
    input wire s_axis_tlast,
    output wire s_axis_tready,

    // Output (AXI-Stream Master Interface)
    input wire m_axis_tready,
    output wire [DATA_WIDTH-1:0] m_axis_tdata,
    output wire m_axis_tvalid,
    output wire m_axis_tlast
);
    localparam INPUT_DIM_BITS = $clog2(INPUT_DIM);
    localparam HIDDEN_UNITS_BITS = $clog2(HIDDEN_UNITS);

    wire enable;
    wire load_w;
    wire clear;
    wire [DATA_WIDTH*2-1:0] load_vector;

    wire [INPUT_DIM_BITS-1:0] read_index;
    wire [HIDDEN_UNITS_BITS+1-1:0] write_index; // Extra bit here

    reg output_enable;
    wire [DATA_WIDTH-1:0] read_data;
    wire [DATA_WIDTH-1:0] write_data;
    wire [DATA_WIDTH-1:0] results [HIDDEN_UNITS-1:0];

    assign write_data = results[write_index];

    // We have to latch the read data in order to synchronize BRAM
    // access in the compute unit.
    wire [DATA_WIDTH-1:0] data_in;
    reg [DATA_WIDTH-1:0] read_data_reg;
    always @(posedge clk) begin
        if (!rst) read_data_reg <= 0;
        else read_data_reg <= read_data;
    end
    assign data_in = load_w ? read_data : read_data_reg;

    // We have to latch the compute enable signal to synchronize BRAM access
    // in compute unit.
    wire compute_enable;
    reg compute_enable_reg;
    always @(posedge clk) begin
        if (!rst) begin
            compute_enable_reg <= 0;
        end
        else begin
            compute_enable_reg <= enable;
        end
    end
    assign compute_enable = compute_enable_reg && !load_w;

    // Latch the write enable for master interface for the next clock cycle
    // after the final read index is done.
    always @(posedge clk) begin
        if (!rst) begin
            output_enable <= 1'b0;
        end
        else begin
            if (read_index == INPUT_DIM-1 && enable && !load_w) begin
                output_enable <= 1'b1;
            end
            else if (write_index == HIDDEN_UNITS && output_enable) begin
                output_enable <= 1'b0;
            end
            else begin
                output_enable <= output_enable;
            end
        end
    end

    // -------- INTERFACE INSTANTIATION ---------------
    AXILiteSlave4 #(
        .C_S_AXI_DATA_WIDTH(DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(4)
    ) ctrl (
        .load_w(load_w),
        .load_vector(load_vector),
        .clear(clear),
        .S_AXI_ACLK(clk),
        .S_AXI_ARESETN(rst),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWPROT(s_axi_awprot),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WVALID(s_axi_wvalid),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARPROT(s_axi_arprot),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_RREADY(s_axi_rready)
    );

    AXISSlave #(
        .C_S_AXIS_TDATA_WIDTH(DATA_WIDTH),
        .NUMBER_OF_INPUT_WORDS(INPUT_DIM),
        .INDEX_WIDTH(INPUT_DIM_BITS)
    ) axis_input (
        .index(read_index),
        .data_in(read_data),
        .enable(enable),
        .S_AXIS_ACLK(clk),
        .S_AXIS_ARESETN(rst),
        .S_AXIS_TREADY(s_axis_tready),
        .S_AXIS_TDATA(s_axis_tdata),
        .S_AXIS_TLAST(s_axis_tlast),
        .S_AXIS_TVALID(s_axis_tvalid)
    );

    AXISMaster #(
        .C_M_AXIS_TDATA_WIDTH(DATA_WIDTH),
        .NUMBER_OF_OUTPUT_WORDS(HIDDEN_UNITS),
        .INDEX_WIDTH(HIDDEN_UNITS_BITS+1)
    ) axis_output (
        .index(write_index),
        .data_out(write_data),
        .enable(output_enable),
        .M_AXIS_ACLK(clk),
        .M_AXIS_ARESETN(rst),
        .M_AXIS_TVALID(m_axis_tvalid),
        .M_AXIS_TDATA(m_axis_tdata),
        .M_AXIS_TLAST(m_axis_tlast),
        .M_AXIS_TREADY(m_axis_tready)
    );

    // ------------- COMPUTE UNITS ---------------
    generate
        genvar i;
        for (i = 0; i < HIDDEN_UNITS; i = i+1) begin
            MACUnit #(
                .DATA_WIDTH(DATA_WIDTH),
                .BRAM_DEPTH(INPUT_DIM),
                .W_ADDR_BITS(INPUT_DIM_BITS)
            ) unit (
                .clk(clk),
                .rst(rst),
                .enable(compute_enable),
                .clear(clear),
                .write_enable(enable && load_vector[i] && load_w),
                .address(read_index),
                .data_in(data_in),
                .data_out(results[i])
            );
        end
    endgenerate
endmodule

