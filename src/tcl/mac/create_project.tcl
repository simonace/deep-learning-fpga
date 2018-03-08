set PROEJECT_PATH <project path here>
set RESPOSITORY_PATH <repo>

# Create new project
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property simulator_language Verilog [current_project]
add_files -norecurse {
    $REPOSITORY_PATH/src/hdl/arch/axi/AXILiteSlave4.sv
    $REPOSITORY_PATH/src/hdl/arch/axi/AXISSlave.sv
    $REPOSITORY_PATH/src/hdl/mac/MACAccelerator.sv
    $REPOSITORY_PATH/src/hdl/arch/axi/AXISMaster.sv
    $REPOSITORY_PATH/src/hdl/common/Memory.sv
    $REPOSITORY_PATH/src/hdl/mac/MACUnit.sv
    $REPOSITORY_PATH/src/hdl/mac/MACAcceleratorTop.v
    $REPOSITORY_PATH/src/hdl/mac/MAC.sv
}

# Create block diagram
create_bd_design "testbench"
create_bd_cell -type module -reference MACAcceleratorTop MACAcceleratorTop_0

# Create VIP blocks
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 axi4stream_vip_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 axi4stream_vip_1
endgroup

# AXI-Lite VIP Configuration
set_property -dict [list CONFIG.PROTOCOL.VALUE_SRC USER] [get_bd_cells axi_vip_0]
set_property -dict [list CONFIG.PROTOCOL {AXI4LITE} CONFIG.INTERFACE_MODE {MASTER}] [get_bd_cells axi_vip_0]
connect_bd_intf_net [get_bd_intf_pins axi_vip_0/M_AXI] [get_bd_intf_pins MACAcceleratorTop_0/s_axi]

# AXI Stream Master Configuration
set_property -dict [list CONFIG.INTERFACE_MODE {MASTER}] [get_bd_cells axi4stream_vip_0]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1}] [get_bd_cells axi4stream_vip_0]
connect_bd_intf_net [get_bd_intf_pins axi4stream_vip_0/M_AXIS] [get_bd_intf_pins MACAcceleratorTop_0/s_axis]

# AXI Stream Slave Configuration
set_property -dict [list CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells axi4stream_vip_1]
set_property -dict [list CONFIG.INTERFACE_MODE {SLAVE} CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1}] [get_bd_cells axi4stream_vip_1]
connect_bd_intf_net [get_bd_intf_pins axi4stream_vip_1/S_AXIS] [get_bd_intf_pins MACAcceleratorTop_0/m_axis]

# Make clock signal external
startgroup
make_bd_pins_external  [get_bd_pins MACAcceleratorTop_0/clk]
endgroup
connect_bd_net [get_bd_ports clk_0] [get_bd_pins axi4stream_vip_0/aclk]
connect_bd_net [get_bd_ports clk_0] [get_bd_pins axi_vip_0/aclk]
connect_bd_net [get_bd_ports clk_0] [get_bd_pins axi4stream_vip_1/aclk]

# Make reset signal external
startgroup
make_bd_pins_external  [get_bd_pins axi4stream_vip_0/aresetn]
endgroup
connect_bd_net [get_bd_ports aresetn_0] [get_bd_pins axi_vip_0/aresetn]
connect_bd_net [get_bd_ports aresetn_0] [get_bd_pins axi4stream_vip_1/aresetn]
connect_bd_net [get_bd_ports aresetn_0] [get_bd_pins MACAcceleratorTop_0/rst]

# Auto assign address
assign_bd_address
save_bd_design

# Create wrapper
make_wrapper -files [get_files /home/xbili/Code/FPGA/vivado-projects/mac_accel_testbench/mac_accel_testbench.srcs/sources_1/bd/testbench/testbench.bd] -top
add_files -norecurse /home/xbili/Code/FPGA/vivado-projects/mac_accel_testbench/mac_accel_testbench.srcs/sources_1/bd/testbench/hdl/testbench_wrapper.v
update_compile_order -fileset sources_1
set_property used_in_synthesis false [get_files  /home/xbili/Code/FPGA/vivado-projects/mac_accel_testbench/mac_accel_testbench.srcs/sources_1/bd/testbench/hdl/testbench_wrapper.v]

# Import testbench file
add_files -fileset sim_1 -norecurse /home/xbili/Code/FPGA/deep-learning-fpga/src/testbench/mac/MACAccelerator_tb.sv
set_property top MACAccelerator_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
