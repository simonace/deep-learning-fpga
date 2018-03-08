`timescale 1 ns / 1 ps

import axi4stream_vip_pkg::*;
import testbench_axi4stream_vip_0_0_pkg::*;
import testbench_axi4stream_vip_1_0_pkg::*;

import axi_vip_pkg::*;
import testbench_axi_vip_0_0_pkg::*;

module MACAccelerator_tb();
    localparam integer DATA_WIDTH = 32;
    localparam integer INPUT_DIM = 32;
    localparam integer HIDDEN_UNITS = 32;
    localparam integer PACKET_LENGTH = INPUT_DIM;
    localparam integer HIDDEN_UNITS_BITS = $clog2(HIDDEN_UNITS);

    // Clock and resets
    reg tb_ACLK;
    reg tb_RSTN;
    wire temp_clk;
    wire temp_rstn;
    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_RSTN;

    // Weights
    reg [HIDDEN_UNITS-1:0] load_vector;
    wire [HIDDEN_UNITS-1:0] temp_load_vector;
    assign temp_load_vector = load_vector;

    // Clock generation
    always #5 tb_ACLK = !tb_ACLK;

    // AXI4 Lite VIP Agents
    testbench_axi_vip_0_0_mst_t ctrl_agent;

    // AXIS VIP Agents
    testbench_axi4stream_vip_0_0_mst_t mst_agent;
    testbench_axi4stream_vip_1_0_slv_t slv_agent;

    // AXI4 write response
    xil_axi_resp_t resp;

    reg [64-1:0] wdata;

    initial begin
        tb_ACLK = 0;
        tb_RSTN = 0;
        load_vector = 0;
        wdata = 0;

        mst_agent = new("Master VIP agent", DUT.testbench_i.axi4stream_vip_0.inst.IF);
        slv_agent = new("Slave VIP agent", DUT.testbench_i.axi4stream_vip_1.inst.IF);
        ctrl_agent = new("AXI Control Registers VIP agent", DUT.testbench_i.axi_vip_0.inst.IF);

        mst_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
        slv_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

        mst_agent.set_agent_tag("Master VIP");
        slv_agent.set_agent_tag("Slave VIP");
        mst_agent.set_verbosity(0);
        slv_agent.set_verbosity(0);

        $display("Starting agents...");
        mst_agent.start_master();
        slv_agent.start_slave();
        ctrl_agent.start_master();
        $display("Agents started!");

        @(posedge temp_clk);
        tb_RSTN = 1;

        $display("Loading weights...");
        // Load weights into the accelerator
        @(posedge temp_clk);

        // Clear
        wdata = 1;
        ctrl_agent.AXI4LITE_WRITE_BURST(0, 0, wdata, resp);

        // Enable weights mode
        wdata = 2;
        ctrl_agent.AXI4LITE_WRITE_BURST(0, 0, wdata, resp);

        load_vector = 1;
        for (int i = 0; i < HIDDEN_UNITS; i = i+1) begin
            wdata[HIDDEN_UNITS-1:0] = load_vector;
            ctrl_agent.AXI4LITE_WRITE_BURST(4, 0, wdata, resp);
            mst_gen_weights_transaction();
            @(posedge temp_clk);
            load_vector = load_vector << 1;
        end
        @(posedge temp_clk);

        // Disable load weights
        wdata = 0;
        ctrl_agent.AXI4LITE_WRITE_BURST(0, 0, wdata, resp);
        ctrl_agent.AXI4LITE_WRITE_BURST(4, 0, wdata, resp);

        @(posedge temp_clk);
        $display("Load weights complete");

        #100

        slv_gen_ready();

        $display("Streaming inputs...");
        // Stream inputs into the accelerator
        @(posedge temp_clk);
        mst_gen_input_transaction();
        $display("Stream inputs complete");

        // Allow time for the accelerator to write from master
        #1000

        // Clear the accelerator registers
        @(posedge temp_clk);
        // Clear
        wdata = 1;
        ctrl_agent.AXI4LITE_WRITE_BURST(0, 0, wdata, resp);
        @(posedge temp_clk);

        mst_agent.stop_master();
        slv_agent.stop_slave();
        ctrl_agent.stop_master();

        $finish();
    end

    testbench_wrapper DUT(
        .clk_0(temp_clk),
        .aresetn_0(temp_rstn)
    );

    // Generates a transaction from the AXI-Stream master.
    // This works in packet mode, where a tlast signal will be generated on the
    // last beat of data.
    //
    // Our accelerator works in packet mode, to determine when the write of
    // results to the slave start.
    task mst_gen_weights_transaction();
        xil_axi4stream_data_byte data [4-1:0];
        axi4stream_transaction wr_transaction;
        wr_transaction = mst_agent.driver.create_transaction(
            "Write transaction");
        wr_transaction.set_delay(0);
        // Write transaction created by VIP
        for (int i = 0; i < PACKET_LENGTH; i = i+1) begin
            data[0] = i[31:24];
            data[1] = i[23:16];
            data[2] = i[15:8];
            data[3] = i[7:0];
            wr_transaction.set_data(data);
            if (i < PACKET_LENGTH-1) begin
                wr_transaction.set_last(1'b0);
            end
            else begin
                wr_transaction.set_last(1'b1);
            end
            mst_agent.driver.send(wr_transaction);
        end
    endtask

    // Generates a transaction from the AXI-Stream master.
    // This works in packet mode, where a tlast signal will be generated on the
    // last beat of data.
    //
    // Our accelerator works in packet mode, to determine when the write of
    // results to the slave start.
    task mst_gen_input_transaction();
        xil_axi4stream_data_byte data [4-1:0];
        axi4stream_transaction wr_transaction;
        wr_transaction = mst_agent.driver.create_transaction(
            "Write transaction");
        wr_transaction.set_delay(0);
        // Write transaction created by VIP
        for (int i = 0; i < PACKET_LENGTH; i = i+1) begin
            data[0] = i[31:24];
            data[1] = i[23:16];
            data[2] = i[15:8];
            data[3] = i[7:0];
            wr_transaction.set_data(data);
            if (i < PACKET_LENGTH+8-1) begin
                wr_transaction.set_last(1'b0);
            end
            else begin
                wr_transaction.set_last(1'b1);
            end
            mst_agent.driver.send(wr_transaction);
        end
    endtask

    // Generates a READY signal from the AXI-Stream slave. This allows the
    // data from master to flow through.
    task slv_gen_ready();
        axi4stream_ready_gen ready_gen;
        ready_gen = slv_agent.driver.create_ready("ready_gen");
        ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_AFTER_VALID_SINGLE);
        slv_agent.driver.send_tready(ready_gen);
    endtask
endmodule
