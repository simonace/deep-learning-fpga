`timescale 1 ns / 1 ps

// AXI4 Stream Master module that handles interfacing to transfer data out of
// the accelerator.
//
// Adapted from the version provided by Xilinx in their IP Packager.
module AXISMaster # (
    // Users to add parameters here
    parameter integer INDEX_WIDTH = 8,
    parameter integer NUMBER_OF_OUTPUT_WORDS = 8,
    // User parameters ends
    // Do not modify the parameters beyond this line

    // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    parameter integer C_M_AXIS_TDATA_WIDTH	= 32
)
(
    // Users to add ports here
    input wire enable,
    output wire [INDEX_WIDTH-1:0] index,
    input wire [C_M_AXIS_TDATA_WIDTH-1:0] data_out,
    // User ports ends
    // Do not modify the ports beyond this line

    // Global ports
    input wire  M_AXIS_ACLK,
    //
    input wire  M_AXIS_ARESETN,
    // Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
    output wire  M_AXIS_TVALID,
    // TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
    output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
    // TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
    output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
    // TLAST indicates the boundary of a packet.
    output wire  M_AXIS_TLAST,
    // TREADY indicates that the slave can accept a transfer in the current cycle.
    input wire  M_AXIS_TREADY
);
    // function called clogb2 that returns an integer which has the
    // value of the ceiling of the log base 2.
    function integer clogb2 (input integer bit_depth);
        begin
            for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
                bit_depth = bit_depth >> 1;
        end
    endfunction

    // bit_num gives the minimum number of bits needed to address 'depth' size of FIFO.
    localparam bit_num  = clogb2(NUMBER_OF_OUTPUT_WORDS);

    // Define the states of state machine
    // The control state machine oversees the writing of input streaming data to the FIFO,
    // and outputs the streaming data from the FIFO
    localparam IDLE = 1'b0,        // This is the initial/idle state
               SEND_STREAM = 1'b1; // Stream data is output
    reg mst_exec_state;

    // Read index
    reg [bit_num-1:0] read_pointer;

    // streaming data valid
    wire  	axis_tvalid;
    // streaming data valid delayed by one clock cycle
    reg  	axis_tvalid_delay;
    // Last of the streaming data
    wire  	axis_tlast;
    // Last of the streaming data delayed by one clock cycle
    reg  	axis_tlast_delay;
    // FIFO implementation signals
    wire  	tx_en;
    // The master has issued all the streaming data stored in FIFO
    reg  	tx_done;


    // I/O Connections assignments

    assign M_AXIS_TVALID = axis_tvalid;
    assign M_AXIS_TDATA	= data_out;
    assign M_AXIS_TLAST	= axis_tlast;
    assign M_AXIS_TSTRB	= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};


    // Control state machine implementation
    always @(posedge M_AXIS_ACLK) begin
        if (!M_AXIS_ARESETN) begin
            // Synchronous reset (active low)
            mst_exec_state <= IDLE;
        end
        else begin
            case (mst_exec_state)
                IDLE:
                    if (enable) begin
                        mst_exec_state  <= SEND_STREAM;
                    end
                    else begin
                        mst_exec_state  <= IDLE;
                    end

                SEND_STREAM:
                    // The example design streaming master functionality starts
                    // when the master drives output tdata from the FIFO and the slave
                    // has finished storing the S_AXIS_TDATA
                    if (tx_done) begin
                        mst_exec_state <= IDLE;
                    end
                    else begin
                        mst_exec_state <= SEND_STREAM;
                    end
            endcase
        end
    end


    //tvalid generation
    //axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
    //number of output streaming data is less than the NUMBER_OF_OUTPUT_WORDS.
    assign axis_tvalid = ((mst_exec_state == SEND_STREAM) && (read_pointer < NUMBER_OF_OUTPUT_WORDS));

    // AXI tlast generation
    // axis_tlast is asserted number of output streaming data is NUMBER_OF_OUTPUT_WORDS-1
    // (0 to NUMBER_OF_OUTPUT_WORDS-1)
    assign axis_tlast = (read_pointer == NUMBER_OF_OUTPUT_WORDS-1);


    // Delay the axis_tvalid and axis_tlast signal by one clock cycle
    // to match the latency of M_AXIS_TDATA
    always @(posedge M_AXIS_ACLK) begin
        if (!M_AXIS_ARESETN) begin
            axis_tvalid_delay <= 1'b0;
            axis_tlast_delay <= 1'b0;
        end
        else begin
            axis_tvalid_delay <= axis_tvalid;
            axis_tlast_delay <= axis_tlast;
        end
    end


    //read_pointer pointer

    always@(posedge M_AXIS_ACLK) begin
        if(!M_AXIS_ARESETN) begin
            read_pointer <= 0;
            tx_done <= 1'b0;
        end
        else begin
            if (read_pointer <= NUMBER_OF_OUTPUT_WORDS-1) begin
                if (tx_en) begin
                    // read pointer is incremented after every read from the FIFO
                    // when FIFO read signal is enabled.
                    read_pointer <= read_pointer + 1;
                    tx_done <= 1'b0;
                end
            end
            if (read_pointer == NUMBER_OF_OUTPUT_WORDS) begin
                // tx_done is asserted when NUMBER_OF_OUTPUT_WORDS numbers of streaming data
                // has been out.
                if (tx_done) begin
                    tx_done <= 1'b0;
                    read_pointer <= 0;
                end
                else begin
                    tx_done <= 1'b1;
                end
            end
        end
    end

    assign tx_en = M_AXIS_TREADY && axis_tvalid;

    // Add user logic here
    assign index = read_pointer;
    // User logic ends
endmodule

