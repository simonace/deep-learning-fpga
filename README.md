# Deep Learning on FPGA

Source code for my Final Year Project (FYP).

**NOTE:**

Altera/Quartus support is not done yet, partly also because the accelerators
built are interfaced with the AXI-4 Stream interface. It takes some effort to
translate this into Altera's Avalon Stream interface.

## Hardware

The Verilog/SystemVerilog code for the accelerators can be found in `src/hdl`.

### Shared Modules

Commonly shared modules such as BRAM and Counters are found in `src/hdl/common`.

### Integer Dot Product Unit

Source code for the integer dot product accumulator can be found under
`src/hdl/mac`.

### Exact Dot Product Unit

Source code for the exact floating point dot product unit can be found under
`src/hdl/edp`.

### Architecture/Interface Code

Architecture interface code is responsible for implementing the interfacing
between different IPs in the Xilinx environment. Most of these are implemented
using the AXI4 Stream interface, together with the AXI4 Lite interface for
configuring the accelerator.

More information about AXI4 Stream Interface can be found at the
[ARM documentation portal](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ihi0051a/index.html).

Source code is found under `src/hdl/arch`.

## Testbenches

Every individual component comes with its own testbench as well. The data files
required to run the testbenches can be found in the same directory under
`src/testbench/resources`.

The testbenches are expected to run in a Vivado environment. Some testbenches
require special libraries from Xilinx (such as the AXI4 Stream Verification IP),
thus it is needed to be run together with a generated Vivado project with `tcl`.

**NOTE**: Tools such as Verilator/Icarus Verilog is not tested. The testbenches
only work well with Vivado Simulator.

## Software

Software is written for two different platforms, first is our Xilinx Zynq bare
metal platform. The code can be run by importing it into a Xilinx SDK project,
when configured with the right Board Support Package (BSP).

## TCL Project Files

Create a new Vivado project with the TCL files located in `src/tcl`.
