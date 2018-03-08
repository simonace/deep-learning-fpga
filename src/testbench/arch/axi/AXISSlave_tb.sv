`timescale 1 ns / 1 ps

import axi4stream_vip_pkg::*;
import test_slave_axi4stream_vip_0_0_pkg::*;

module AXISSlave_tb();
    reg clk_reg;
    reg rst_reg;
    wire clk;
    wire rst;
    assign clk = clk_reg;
    assign rst = rst_reg;

    // Clock generation
    always #5 clk_reg = !clk_reg;

    // External ports
    wire [4-1:0] index;
    wire enable;
    wire [32-1:0] data_in;

    // AXI4 Stream VIP Agents
    test_slave_axi4stream_vip_0_0_mst_t mst_agent;

    initial begin
        clk_reg = 0;
        rst_reg = 0;

        mst_agent = new("Master VIP agent", DUT.test_slave_i.axi4stream_vip_0.inst.IF);
        mst_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
        mst_agent.set_agent_tag("Master VIP");
        mst_agent.set_verbosity(0);
        mst_agent.start_master();

        @(posedge clk);
        rst_reg = 1;
        @(posedge clk);

        mst_gen_input_transaction();

        #100

        mst_gen_input_transaction();

        #100

        $finish();
    end

    test_slave_wrapper DUT(
        .aclk_0(clk),
        .aresetn_0(rst),
        .data_in_0(data_in),
        .enable_0(enable),
        .index_0(index)
    );

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
        for (int i = 0; i < 8; i = i+1) begin
            data[0] = i[31:24];
            data[1] = i[23:16];
            data[2] = i[15:8];
            data[3] = i[7:0];
            wr_transaction.set_data(data);
            if (i == 7) begin
                wr_transaction.set_last(1'b1);
            end
            else begin
                wr_transaction.set_last(1'b0);
            end
            mst_agent.driver.send(wr_transaction);
        end
    endtask
endmodule
