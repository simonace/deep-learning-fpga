`timescale 1 ns / 1 ps

import axi4stream_vip_pkg::*;
import test_master_axi4stream_vip_0_0_pkg::*;

module AXISMaster_tb();
    reg clk_reg;
    reg rst_reg;
    wire clk;
    wire rst;
    assign clk = clk_reg;
    assign rst = rst_reg;

    // Clock generation
    always #5 clk_reg = !clk_reg;

    // External ports
    reg [32-1:0] data_array [8-1:0];
    wire [4-1:0] index;
    reg enable_reg;

    wire enable;
    wire [32-1:0] data_out;
    assign enable = enable_reg;
    assign data_out = data_array[index[3-1:0]];

    // AXI4 Stream VIP Agents
    test_master_axi4stream_vip_0_0_slv_t slv_agent;

    initial begin
        clk_reg = 0;
        rst_reg = 0;

        enable_reg = 0;

        for (int i = 0; i < 8; i = i+1) begin
            data_array[i] = i;
        end

        slv_agent = new("Slave VIP agent", DUT.test_master_i.axi4stream_vip_0.inst.IF);
        slv_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
        slv_agent.set_agent_tag("Slave VIP");
        slv_agent.set_verbosity(0);
        slv_agent.start_slave();

        @(posedge clk);
        rst_reg = 1;
        @(posedge clk);

        // Initiate two separate transactions to master interface

        enable_reg = 1;
        while (index != 8) begin
            @(posedge clk);
            if (index == 8) begin
                enable_reg = 0;
            end
        end

        #100

        enable_reg = 1;
        while (index != 8) begin
            @(posedge clk);
            if (index == 8) begin
                enable_reg = 0;
            end
        end

        #100

        $finish();
    end

    test_master_wrapper DUT(
        .aclk_0(clk),
        .aresetn_0(rst),
        .data_out_0(data_out),
        .enable_0(enable),
        .index_0(index)
    );

    // Generates a READY signal from the AXI-Stream slave. This allows the
    // data from master to flow through.
    task slv_gen_ready();
        axi4stream_ready_gen ready_gen;
        ready_gen = slv_agent.driver.create_ready("ready_gen");
        ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_AFTER_VALID_SINGLE);
        slv_agent.driver.send_tready(ready_gen);
    endtask
endmodule
