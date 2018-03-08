`timescale 1 ns / 1 ps

module MACAcceleratorTop #(
    parameter integer DATA_WIDTH = 32,
    parameter integer HIDDEN_UNITS = 32,
    parameter integer INPUT_DIM = 32
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
    input [DATA_WIDTH-1:0] s_axis_tdata,
    input s_axis_tvalid,
    input s_axis_tlast,
    output s_axis_tready,

    // Output (AXI-Stream Master Interface)
    input m_axis_tready,
    output [DATA_WIDTH-1:0] m_axis_tdata,
    output m_axis_tvalid,
    output m_axis_tlast
);

    MACAccelerator #(
        .DATA_WIDTH(DATA_WIDTH),
        .HIDDEN_UNITS(HIDDEN_UNITS),
        .INPUT_DIM(INPUT_DIM)
    ) inst (
        .clk(clk),
        .rst(rst),

        // Control Registers (AXI-LITE Interface)
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),

        // Input (AXI-Stream Slave Interface)
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),

        // Output (AXI-Stream Master Interface)
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tlast(m_axis_tlast)
    );

endmodule
