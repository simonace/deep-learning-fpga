
�
Command: %s
53*	vivadotcl2_
Ksynth_design -top base_mnist_0_0 -part xc7z020clg400-1 -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1269.578 ; gain = 86.996 ; free physical = 974 ; free virtual = 5640
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2"
base_mnist_0_02default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ip/base_mnist_0_0/synth/base_mnist_0_0.v2default:default2
572default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
mnist2default:default2�
r/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist.v2default:default2
122default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
unpacker2default:default2�
u/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/unpacker.v2default:default2
102default:default8@Z8-638h px� 
Z
%s
*synth2B
.	Parameter ap_ST_fsm_state1 bound to: 3'b001 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ap_ST_fsm_pp0_stage0 bound to: 3'b010 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ap_ST_fsm_state4 bound to: 3'b100 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
u/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/unpacker.v2default:default2
702default:default8@Z8-5534h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
unpacker2default:default2
12default:default2
12default:default2�
u/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/unpacker.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2%
linear_activation2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
102default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter ap_ST_fsm_state1 bound to: 5'b00001 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ap_ST_fsm_pp0_stage0 bound to: 5'b00010 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter ap_ST_fsm_state5 bound to: 5'b00100 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ap_ST_fsm_pp1_stage0 bound to: 5'b01000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter ap_ST_fsm_state9 bound to: 5'b10000 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
612default:default8@Z8-5534h px� 
�
synthesizing module '%s'638*oasys2(
linear_activationbkb2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
432default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter DataWidth bound to: 1022 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter AddressRange bound to: 784 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter AddressWidth bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
linear_activationbkb_rom2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
92default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter DWIDTH bound to: 1022 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter AWIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter MEM_SIZE bound to: 784 - type: integer 
2default:defaulth p
x
� 
�
,$readmem data file '%s' is read successfully3426*oasys22
./linear_activationbkb_rom.dat2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
242default:default8@Z8-3876h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
linear_activationbkb_rom2default:default2
22default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
linear_activationbkb2default:default2
32default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
linear_activationcud2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
432default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter DataWidth bound to: 5 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter AddressRange bound to: 128 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter AddressWidth bound to: 7 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
linear_activationcud_rom2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
92default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter DWIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter AWIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter MEM_SIZE bound to: 128 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
	ram_style2default:default2
distributed2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
212default:default8@Z8-5534h px� 
�
,$readmem data file '%s' is read successfully3426*oasys22
./linear_activationcud_rom.dat2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
242default:default8@Z8-3876h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
linear_activationcud_rom2default:default2
42default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
linear_activationcud2default:default2
52default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationcud.v2default:default2
432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
mnist_mux_1287_32dEe2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mux_1287_32dEe.v2default:default2
112default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter ID bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter NUM_STAGE bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din0_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din1_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din2_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din3_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din4_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din5_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din6_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din7_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din8_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din9_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din10_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din11_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din12_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din13_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din14_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din15_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din16_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din17_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din18_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din19_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din20_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din21_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din22_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din23_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din24_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din25_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din26_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din27_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din28_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din29_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din30_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din31_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din32_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din33_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din34_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din35_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din36_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din37_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din38_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din39_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din40_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din41_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din42_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din43_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din44_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din45_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din46_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din47_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din48_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din49_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din50_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din51_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din52_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din53_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din54_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din55_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din56_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din57_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din58_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din59_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din60_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din61_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din62_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din63_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din64_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din65_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din66_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din67_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din68_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din69_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din70_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din71_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din72_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din73_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din74_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din75_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din76_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din77_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din78_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din79_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din80_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din81_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din82_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din83_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din84_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din85_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din86_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din87_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din88_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din89_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din90_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din91_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din92_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din93_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din94_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din95_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din96_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din97_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din98_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din99_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din100_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din101_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din102_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din103_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din104_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din105_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din106_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din107_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din108_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din109_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din110_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din111_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din112_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din113_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din114_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din115_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din116_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din117_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din118_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din119_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din120_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din121_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din122_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din123_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din124_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din125_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din126_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter din127_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter din128_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter dout_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
mnist_mux_1287_32dEe2default:default2
62default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mux_1287_32dEe.v2default:default2
112default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
mnist_mac_muladd_eOg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_eOg.v2default:default2
342default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter ID bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter NUM_STAGE bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter din0_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter din1_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din2_WIDTH bound to: 25 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter dout_WIDTH bound to: 25 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys20
mnist_mac_muladd_eOg_DSP48_02default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_eOg.v2default:default2
102default:default8@Z8-638h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys20
mnist_mac_muladd_eOg_DSP48_02default:default2
72default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_eOg.v2default:default2
102default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
mnist_mac_muladd_eOg2default:default2
82default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_eOg.v2default:default2
342default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
mnist_mac_muladd_fYi2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_fYi.v2default:default2
342default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter ID bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter NUM_STAGE bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter din0_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter din1_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din2_WIDTH bound to: 23 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter dout_WIDTH bound to: 23 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys20
mnist_mac_muladd_fYi_DSP48_12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_fYi.v2default:default2
102default:default8@Z8-638h px� 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys20
mnist_mac_muladd_fYi_DSP48_12default:default2
92default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_fYi.v2default:default2
102default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
mnist_mac_muladd_fYi2default:default2
102default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mac_muladd_fYi.v2default:default2
342default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
linear_activation2default:default2
112default:default2
12default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
relu2default:default2�
q/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/relu.v2default:default2
102default:default8@Z8-638h px� 
Y
%s
*synth2A
-	Parameter ap_ST_fsm_state1 bound to: 2'b01 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter ap_ST_fsm_state2 bound to: 2'b10 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
q/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/relu.v2default:default2
592default:default8@Z8-5534h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
relu2default:default2
122default:default2
12default:default2�
q/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/relu.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
linear_activation_12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
102default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter ap_ST_fsm_state1 bound to: 5'b00001 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ap_ST_fsm_pp0_stage0 bound to: 5'b00010 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter ap_ST_fsm_state6 bound to: 5'b00100 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ap_ST_fsm_pp1_stage0 bound to: 5'b01000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter ap_ST_fsm_state10 bound to: 5'b10000 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
612default:default8@Z8-5534h px� 
�
synthesizing module '%s'638*oasys2(
linear_activationg8j2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
432default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DataWidth bound to: 80 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter AddressRange bound to: 128 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter AddressWidth bound to: 7 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
linear_activationg8j_rom2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
92default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter DWIDTH bound to: 80 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter AWIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter MEM_SIZE bound to: 128 - type: integer 
2default:defaulth p
x
� 
�
,$readmem data file '%s' is read successfully3426*oasys22
./linear_activationg8j_rom.dat2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
242default:default8@Z8-3876h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
linear_activationg8j_rom2default:default2
132default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
linear_activationg8j2default:default2
142default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
linear_activationhbi2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
432default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter DataWidth bound to: 4 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter AddressRange bound to: 10 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter AddressWidth bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
linear_activationhbi_rom2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
92default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter DWIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter AWIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter MEM_SIZE bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
	ram_style2default:default2
distributed2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
212default:default8@Z8-5534h px� 
�
,$readmem data file '%s' is read successfully3426*oasys22
./linear_activationhbi_rom.dat2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
242default:default8@Z8-3876h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
linear_activationhbi_rom2default:default2
152default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
linear_activationhbi2default:default2
162default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationhbi.v2default:default2
432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
mnist_mux_104_32_ibs2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mux_104_32_ibs.v2default:default2
112default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter ID bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter NUM_STAGE bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din0_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din1_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din2_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din3_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din4_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din5_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din6_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din7_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din8_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din9_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter din10_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter dout_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
mnist_mux_104_32_ibs2default:default2
172default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist_mux_104_32_ibs.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
linear_activation_12default:default2
182default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
packer2default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
102default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter ap_ST_fsm_state1 bound to: 4'b0001 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ap_ST_fsm_pp0_stage0 bound to: 4'b0010 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ap_ST_fsm_pp0_stage1 bound to: 4'b0100 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter ap_ST_fsm_state6 bound to: 4'b1000 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
632default:default8@Z8-5534h px� 
�
synthesizing module '%s'638*oasys2(
packer_packet_usejbC2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
432default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter DataWidth bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter AddressRange bound to: 10 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter AddressWidth bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
packer_packet_usejbC_rom2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
92default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter DWIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter AWIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter MEM_SIZE bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
	ram_style2default:default2
distributed2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
212default:default8@Z8-5534h px� 
�
,$readmem data file '%s' is read successfully3426*oasys22
./packer_packet_usejbC_rom.dat2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
242default:default8@Z8-3876h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
packer_packet_usejbC_rom2default:default2
192default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
packer_packet_usejbC2default:default2
202default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_usejbC.v2default:default2
432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
packer_packet_laskbM2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_laskbM.v2default:default2
462default:default8@Z8-638h px� 
^
%s
*synth2F
2	Parameter DataWidth bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter AddressRange bound to: 10 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter AddressWidth bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2,
packer_packet_laskbM_ram2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_laskbM.v2default:default2
92default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter DWIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter AWIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter MEM_SIZE bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
	ram_style2default:default2
distributed2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_laskbM.v2default:default2
222default:default8@Z8-5534h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
packer_packet_laskbM_ram2default:default2
212default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_laskbM.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
packer_packet_laskbM2default:default2
222default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer_packet_laskbM.v2default:default2
462default:default8@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys24
 stream_out_V_keep_V_1_sel_rd_reg2default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
4392default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys24
 stream_out_V_strb_V_1_sel_rd_reg2default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
5012default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
packer2default:default2
232default:default2
12default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
fifo_w8_d1_A2default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w8_d1_A.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2)
fifo_w8_d1_A_shiftReg2default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w8_d1_A.v2default:default2
112default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2)
fifo_w8_d1_A_shiftReg2default:default2
242default:default2
12default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w8_d1_A.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
fifo_w8_d1_A2default:default2
252default:default2
12default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w8_d1_A.v2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2!
fifo_w32_d1_A2default:default2�
z/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w32_d1_A.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2*
fifo_w32_d1_A_shiftReg2default:default2�
z/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w32_d1_A.v2default:default2
112default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
fifo_w32_d1_A_shiftReg2default:default2
262default:default2
12default:default2�
z/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w32_d1_A.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
fifo_w32_d1_A2default:default2
272default:default2
12default:default2�
z/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/fifo_w32_d1_A.v2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
start_for_linear_mb62default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_mb6.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys21
start_for_linear_mb6_shiftReg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_mb6.v2default:default2
112default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
start_for_linear_mb6_shiftReg2default:default2
282default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_mb6.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
start_for_linear_mb62default:default2
292default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_mb6.v2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2%
start_for_relu_U02default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_relu_U0.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2.
start_for_relu_U0_shiftReg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_relu_U0.v2default:default2
112default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2.
start_for_relu_U0_shiftReg2default:default2
302default:default2
12default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_relu_U0.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
start_for_relu_U02default:default2
312default:default2
12default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_relu_U0.v2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2(
start_for_linear_ncg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_ncg.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys21
start_for_linear_ncg_shiftReg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_ncg.v2default:default2
112default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
start_for_linear_ncg_shiftReg2default:default2
322default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_ncg.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
start_for_linear_ncg2default:default2
332default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_linear_ncg.v2default:default2
452default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2'
start_for_packer_U02default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_packer_U0.v2default:default2
452default:default8@Z8-638h px� 
`
%s
*synth2H
4	Parameter MEM_STYLE bound to: auto - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys20
start_for_packer_U0_shiftReg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_packer_U0.v2default:default2
112default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys20
start_for_packer_U0_shiftReg2default:default2
342default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_packer_U0.v2default:default2
112default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
start_for_packer_U02default:default2
352default:default2
12default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/start_for_packer_U0.v2default:default2
452default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mnist2default:default2
362default:default2
12default:default2�
r/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/mnist.v2default:default2
122default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
base_mnist_0_02default:default2
372default:default2
12default:default2�
y/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ip/base_mnist_0_0/synth/base_mnist_0_0.v2default:default2
572default:default8@Z8-256h px� 
�
!design %s has unconnected port %s3331*oasys2(
packer_packet_usejbC2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
packer_packet_laskbM2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
linear_activationhbi2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
linear_activationg8j2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
linear_activationcud2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
linear_activationbkb2default:default2
reset2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2%
sdata_in_TKEEP[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2%
sdata_in_TSTRB[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2%
sdata_in_TUSER[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2%
sdata_in_TLAST[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2#
sdata_in_TID[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
unpacker2default:default2%
sdata_in_TDEST[0]2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1342.125 ; gain = 159.543 ; free physical = 955 ; free virtual = 5624
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1342.125 ; gain = 159.543 ; free physical = 963 ; free virtual = 5632
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
|/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ip/base_mnist_0_0/constraints/mnist_ooc.xdc2default:default2
inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
|/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ip/base_mnist_0_0/constraints/mnist_ooc.xdc2default:default2
inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2z
d/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.runs/base_mnist_0_0_synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2z
d/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.runs/base_mnist_0_0_synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.302default:default2
00:00:00.102default:default2
1711.3052default:default2
2.0002default:default2
6162default:default2
53212default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:38 . Memory (MB): peak = 1711.305 ; gain = 528.723 ; free physical = 727 ; free virtual = 5432
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:38 . Memory (MB): peak = 1711.305 ; gain = 528.723 ; free physical = 727 ; free virtual = 5432
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:38 . Memory (MB): peak = 1711.305 ; gain = 528.723 ; free physical = 729 ; free virtual = 5434
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
exitcond_fu_108_p22default:defaultZ8-5546h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
i_reg_97_reg2default:default2�
u/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/unpacker.v2default:default2
2372default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
q0_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
332default:default8@Z8-6014h px� 
�
fAttribute ram_style/rom_style = distributed specified for ROM  "%s". This will be implemented in logic3994*oasys2
ram2default:defaultZ8-5542h px� 
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2(
exitcond2_fu_2195_p22default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
exitcond_fu_4388_p22default:defaultZ8-5546h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
ii_reg_2173_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
41212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
ires_reg_2184_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
41292default:default8@Z8-6014h px� 
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
exitcond_fu_78_p22default:defaultZ8-5546h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
ii_reg_67_reg2default:default2�
q/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/relu.v2default:default2
1172default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
q0_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationg8j.v2default:default2
332default:default8@Z8-6014h px� 
�
fAttribute ram_style/rom_style = distributed specified for ROM  "%s". This will be implemented in logic3994*oasys2
ram2default:defaultZ8-5542h px� 
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
exitcond5_fu_302_p22default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2&
exitcond_fu_543_p22default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_0_V_reg_267_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2412default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_1_V_reg_255_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2422default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_2_V_reg_243_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2432default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_3_V_reg_231_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2442default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_4_V_reg_219_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2452default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_5_V_reg_207_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2462default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_6_V_reg_195_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2472default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_7_V_reg_183_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_8_V_reg_171_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
acc_9_V_reg_159_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
2502default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
ii_reg_279_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
4552default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
ires_1_reg_778_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
4912default:default8@Z8-6014h px� 
�
fAttribute ram_style/rom_style = distributed specified for ROM  "%s". This will be implemented in logic3994*oasys2
ram2default:defaultZ8-5542h px� 
�
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2&
exitcond_fu_212_p22default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
tmp_8_fu_229_p22default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
i_2_reg_244_reg2default:default2�
s/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/packer.v2default:default2
5782default:default8@Z8-6014h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2$
internal_empty_n2default:default2
22default:default2
52default:defaultZ8-5544h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:40 . Memory (MB): peak = 1711.305 ; gain = 528.723 ; free physical = 716 ; free virtual = 5421
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
$decloning instance '%s' (%s) to '%s'223*oasys22
inst/packer_U0/packet_user_V_U2default:default2(
packer_packet_usejbC2default:default20
inst/packer_U0/packet_id_V_U2default:defaultZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys22
inst/packer_U0/packet_user_V_U2default:default2(
packer_packet_usejbC2default:default22
inst/packer_U0/packet_dest_V_U2default:defaultZ8-223h px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 8     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1022 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               80 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               25 Bit    Registers := 254   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 144   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 84    
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                 8x32  Multipliers := 10    
2default:defaulth p
x
� 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                              ROMs := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 141   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     25 Bit        Muxes := 127   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     23 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 93    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
=
%s
*synth2%
Module unpacker 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
� 
M
%s
*synth25
!Module linear_activationbkb_rom 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1022 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
� 
M
%s
*synth25
!Module linear_activationcud_rom 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
I
%s
*synth21
Module mnist_mux_1287_32dEe 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 127   
2default:defaulth p
x
� 
F
%s
*synth2.
Module linear_activation 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               25 Bit    Registers := 254   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 128   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 12    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     25 Bit        Muxes := 127   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     23 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
� 
9
%s
*synth2!
Module relu 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
M
%s
*synth25
!Module linear_activationg8j_rom 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               80 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
� 
M
%s
*synth25
!Module linear_activationhbi_rom 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
I
%s
*synth21
Module mnist_mux_104_32_ibs 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 9     
2default:defaulth p
x
� 
H
%s
*synth20
Module linear_activation_1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                 8x32  Multipliers := 10    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
� 
M
%s
*synth25
!Module packer_packet_usejbC_rom 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
M
%s
*synth25
!Module packer_packet_laskbM_ram 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module packer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 23    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
J
%s
*synth22
Module fifo_w8_d1_A_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module fifo_w8_d1_A 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
K
%s
*synth23
Module fifo_w32_d1_A_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module fifo_w32_d1_A 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
R
%s
*synth2:
&Module start_for_linear_mb6_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
I
%s
*synth21
Module start_for_linear_mb6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
O
%s
*synth27
#Module start_for_relu_U0_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
F
%s
*synth2.
Module start_for_relu_U0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
R
%s
*synth2:
&Module start_for_linear_ncg_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
I
%s
*synth21
Module start_for_linear_ncg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Q
%s
*synth29
%Module start_for_packer_U0_shiftReg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
H
%s
*synth20
Module start_for_packer_U0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
fAttribute ram_style/rom_style = distributed specified for ROM  "%s". This will be implemented in logic3994*oasys2
p_0_out2default:defaultZ8-5542h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2(
exitcond2_fu_2195_p22default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
exitcond_fu_4388_p22default:defaultZ8-5546h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
ii_reg_2173_reg_rep2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
41212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2D
0L1_WEIGHTS_V_U/linear_activationbkb_rom_U/q0_reg2default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activationbkb.v2default:default2
332default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_4_reg_5596_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12042default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_6_reg_5601_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12182default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_7_reg_5606_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12322default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_8_reg_5611_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12462default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_9_reg_5616_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12602default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_3_reg_5621_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12742default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
tmp_5_reg_5626_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
12882default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_10_reg_5631_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13022default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_11_reg_5636_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13162default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_12_reg_5641_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_13_reg_5646_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13442default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_14_reg_5651_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_15_reg_5656_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13722default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_16_reg_5661_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
13862default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_17_reg_5666_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_18_reg_5671_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14142default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_19_reg_5676_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14282default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_20_reg_5681_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14422default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_21_reg_5686_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14562default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_22_reg_5691_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14702default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_23_reg_5696_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14842default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_24_reg_5701_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
14982default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_25_reg_5706_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15122default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_26_reg_5711_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15262default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_27_reg_5716_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15402default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_28_reg_5721_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15542default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_29_reg_5726_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15682default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_30_reg_5731_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15822default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_31_reg_5736_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
15962default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_32_reg_5741_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16102default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_33_reg_5746_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16242default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_34_reg_5751_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16382default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_35_reg_5756_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16522default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_36_reg_5761_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16662default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_37_reg_5766_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16802default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_38_reg_5771_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
16942default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_39_reg_5776_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17082default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_40_reg_5781_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17222default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_41_reg_5786_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17362default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_42_reg_5791_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17502default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_43_reg_5796_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17642default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_44_reg_5801_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17782default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_45_reg_5806_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
17922default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_46_reg_5811_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18062default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_47_reg_5816_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18202default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_48_reg_5821_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18342default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_49_reg_5826_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_50_reg_5831_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18622default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_51_reg_5836_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18762default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_52_reg_5841_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
18902default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_53_reg_5846_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19042default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_54_reg_5851_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19182default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_55_reg_5856_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19322default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_56_reg_5861_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19462default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_57_reg_5866_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19602default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_58_reg_5871_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19742default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_59_reg_5876_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
19882default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_60_reg_5881_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20022default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_61_reg_5886_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20162default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_62_reg_5891_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_63_reg_5896_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20442default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_64_reg_5901_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_65_reg_5906_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20722default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_66_reg_5911_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
20862default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_67_reg_5916_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_68_reg_5921_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21142default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_69_reg_5926_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21282default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_70_reg_5931_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21422default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_71_reg_5936_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21562default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_72_reg_5941_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21702default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_73_reg_5946_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21842default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_74_reg_5951_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
21982default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_75_reg_5956_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
22122default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_76_reg_5961_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
22262default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_77_reg_5966_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
22402default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_78_reg_5971_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
22542default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
tmp_79_reg_5976_reg2default:default2�
~/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation.v2default:default2
22682default:default8@Z8-6014h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-60142default:default2
1002default:defaultZ17-14h px� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_0_V_reg_2161_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
�
%s
*synth2�
qDSP Report: register L1_WEIGHTS_V_U/linear_activationbkb_rom_U/q0_reg is absorbed into DSP acc_0_V_reg_2161_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_4_reg_5596_reg is absorbed into DSP acc_0_V_reg_2161_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_0_V_reg_2161_reg is absorbed into DSP acc_0_V_reg_2161_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U10/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_0_V_reg_2161_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U10/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_0_V_reg_2161_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_1_V_reg_2149_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_1_V_reg_2149_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_6_reg_5601_reg is absorbed into DSP acc_1_V_reg_2149_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_1_V_reg_2149_reg is absorbed into DSP acc_1_V_reg_2149_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U11/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_1_V_reg_2149_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U11/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_1_V_reg_2149_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_2_V_reg_2137_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_2_V_reg_2137_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_7_reg_5606_reg is absorbed into DSP acc_2_V_reg_2137_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_2_V_reg_2137_reg is absorbed into DSP acc_2_V_reg_2137_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U12/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_2_V_reg_2137_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U12/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_2_V_reg_2137_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_3_V_reg_2125_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_3_V_reg_2125_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_8_reg_5611_reg is absorbed into DSP acc_3_V_reg_2125_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_3_V_reg_2125_reg is absorbed into DSP acc_3_V_reg_2125_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U13/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_3_V_reg_2125_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U13/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_3_V_reg_2125_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_4_V_reg_2113_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_4_V_reg_2113_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_9_reg_5616_reg is absorbed into DSP acc_4_V_reg_2113_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_4_V_reg_2113_reg is absorbed into DSP acc_4_V_reg_2113_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U14/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_4_V_reg_2113_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U14/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_4_V_reg_2113_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_5_V_reg_2101_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_5_V_reg_2101_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_3_reg_5621_reg is absorbed into DSP acc_5_V_reg_2101_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_5_V_reg_2101_reg is absorbed into DSP acc_5_V_reg_2101_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U15/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_5_V_reg_2101_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U15/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_5_V_reg_2101_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_6_V_reg_2089_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_6_V_reg_2089_reg.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: register tmp_5_reg_5626_reg is absorbed into DSP acc_6_V_reg_2089_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_6_V_reg_2089_reg is absorbed into DSP acc_6_V_reg_2089_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U16/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_6_V_reg_2089_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U16/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_6_V_reg_2089_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_7_V_reg_2077_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_7_V_reg_2077_reg.
2default:defaulth p
x
� 
�
%s
*synth2h
TDSP Report: register tmp_10_reg_5631_reg is absorbed into DSP acc_7_V_reg_2077_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_7_V_reg_2077_reg is absorbed into DSP acc_7_V_reg_2077_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U17/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_7_V_reg_2077_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U17/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_7_V_reg_2077_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_8_V_reg_2065_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_8_V_reg_2065_reg.
2default:defaulth p
x
� 
�
%s
*synth2h
TDSP Report: register tmp_11_reg_5636_reg is absorbed into DSP acc_8_V_reg_2065_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_8_V_reg_2065_reg is absorbed into DSP acc_8_V_reg_2065_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U18/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_8_V_reg_2065_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U18/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_8_V_reg_2065_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_9_V_reg_2053_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_9_V_reg_2053_reg.
2default:defaulth p
x
� 
�
%s
*synth2h
TDSP Report: register tmp_12_reg_5641_reg is absorbed into DSP acc_9_V_reg_2053_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_9_V_reg_2053_reg is absorbed into DSP acc_9_V_reg_2053_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U19/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_9_V_reg_2053_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
zDSP Report: operator mnist_mac_muladd_eOg_U19/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_9_V_reg_2053_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_10_V_reg_2041_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_10_V_reg_2041_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_13_reg_5646_reg is absorbed into DSP acc_10_V_reg_2041_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_10_V_reg_2041_reg is absorbed into DSP acc_10_V_reg_2041_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U20/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_10_V_reg_2041_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U20/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_10_V_reg_2041_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_11_V_reg_2029_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_11_V_reg_2029_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_14_reg_5651_reg is absorbed into DSP acc_11_V_reg_2029_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_11_V_reg_2029_reg is absorbed into DSP acc_11_V_reg_2029_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U21/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_11_V_reg_2029_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U21/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_11_V_reg_2029_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_12_V_reg_2017_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_12_V_reg_2017_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_15_reg_5656_reg is absorbed into DSP acc_12_V_reg_2017_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_12_V_reg_2017_reg is absorbed into DSP acc_12_V_reg_2017_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U22/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_12_V_reg_2017_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U22/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_12_V_reg_2017_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_13_V_reg_2005_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_13_V_reg_2005_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_16_reg_5661_reg is absorbed into DSP acc_13_V_reg_2005_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_13_V_reg_2005_reg is absorbed into DSP acc_13_V_reg_2005_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U23/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_13_V_reg_2005_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U23/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_13_V_reg_2005_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_14_V_reg_1993_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_14_V_reg_1993_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_17_reg_5666_reg is absorbed into DSP acc_14_V_reg_1993_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_14_V_reg_1993_reg is absorbed into DSP acc_14_V_reg_1993_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U24/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_14_V_reg_1993_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U24/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_14_V_reg_1993_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_15_V_reg_1981_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_15_V_reg_1981_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_18_reg_5671_reg is absorbed into DSP acc_15_V_reg_1981_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_15_V_reg_1981_reg is absorbed into DSP acc_15_V_reg_1981_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U25/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_15_V_reg_1981_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U25/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_15_V_reg_1981_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_16_V_reg_1969_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_16_V_reg_1969_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_19_reg_5676_reg is absorbed into DSP acc_16_V_reg_1969_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_16_V_reg_1969_reg is absorbed into DSP acc_16_V_reg_1969_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U26/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_16_V_reg_1969_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U26/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_16_V_reg_1969_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_17_V_reg_1957_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_17_V_reg_1957_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_20_reg_5681_reg is absorbed into DSP acc_17_V_reg_1957_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_17_V_reg_1957_reg is absorbed into DSP acc_17_V_reg_1957_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U27/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_17_V_reg_1957_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U27/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_17_V_reg_1957_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_18_V_reg_1945_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_18_V_reg_1945_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_21_reg_5686_reg is absorbed into DSP acc_18_V_reg_1945_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_18_V_reg_1945_reg is absorbed into DSP acc_18_V_reg_1945_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U28/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_18_V_reg_1945_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U28/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_18_V_reg_1945_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_19_V_reg_1933_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_19_V_reg_1933_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_22_reg_5691_reg is absorbed into DSP acc_19_V_reg_1933_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_19_V_reg_1933_reg is absorbed into DSP acc_19_V_reg_1933_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U29/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_19_V_reg_1933_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U29/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_19_V_reg_1933_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_20_V_reg_1921_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_20_V_reg_1921_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_23_reg_5696_reg is absorbed into DSP acc_20_V_reg_1921_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_20_V_reg_1921_reg is absorbed into DSP acc_20_V_reg_1921_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U30/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_20_V_reg_1921_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U30/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_20_V_reg_1921_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_21_V_reg_1909_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_21_V_reg_1909_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_24_reg_5701_reg is absorbed into DSP acc_21_V_reg_1909_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_21_V_reg_1909_reg is absorbed into DSP acc_21_V_reg_1909_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U31/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_21_V_reg_1909_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U31/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_21_V_reg_1909_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_22_V_reg_1897_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_22_V_reg_1897_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_25_reg_5706_reg is absorbed into DSP acc_22_V_reg_1897_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_22_V_reg_1897_reg is absorbed into DSP acc_22_V_reg_1897_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U32/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_22_V_reg_1897_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U32/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_22_V_reg_1897_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_23_V_reg_1885_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_23_V_reg_1885_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_26_reg_5711_reg is absorbed into DSP acc_23_V_reg_1885_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_23_V_reg_1885_reg is absorbed into DSP acc_23_V_reg_1885_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U33/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_23_V_reg_1885_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U33/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_23_V_reg_1885_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_24_V_reg_1873_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_24_V_reg_1873_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_27_reg_5716_reg is absorbed into DSP acc_24_V_reg_1873_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_24_V_reg_1873_reg is absorbed into DSP acc_24_V_reg_1873_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U34/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_24_V_reg_1873_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U34/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_24_V_reg_1873_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_25_V_reg_1861_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_25_V_reg_1861_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_28_reg_5721_reg is absorbed into DSP acc_25_V_reg_1861_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_25_V_reg_1861_reg is absorbed into DSP acc_25_V_reg_1861_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U35/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_25_V_reg_1861_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U35/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_25_V_reg_1861_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_26_V_reg_1849_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_26_V_reg_1849_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_29_reg_5726_reg is absorbed into DSP acc_26_V_reg_1849_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_26_V_reg_1849_reg is absorbed into DSP acc_26_V_reg_1849_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U36/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_26_V_reg_1849_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U36/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_26_V_reg_1849_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_27_V_reg_1837_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_27_V_reg_1837_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_30_reg_5731_reg is absorbed into DSP acc_27_V_reg_1837_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_27_V_reg_1837_reg is absorbed into DSP acc_27_V_reg_1837_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U37/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_27_V_reg_1837_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U37/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_27_V_reg_1837_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_28_V_reg_1825_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_28_V_reg_1825_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_31_reg_5736_reg is absorbed into DSP acc_28_V_reg_1825_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_28_V_reg_1825_reg is absorbed into DSP acc_28_V_reg_1825_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U38/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_28_V_reg_1825_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U38/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_28_V_reg_1825_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_29_V_reg_1813_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_29_V_reg_1813_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_32_reg_5741_reg is absorbed into DSP acc_29_V_reg_1813_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_29_V_reg_1813_reg is absorbed into DSP acc_29_V_reg_1813_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U39/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_29_V_reg_1813_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U39/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_29_V_reg_1813_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_30_V_reg_1801_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_30_V_reg_1801_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_33_reg_5746_reg is absorbed into DSP acc_30_V_reg_1801_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_30_V_reg_1801_reg is absorbed into DSP acc_30_V_reg_1801_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U40/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_30_V_reg_1801_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U40/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_30_V_reg_1801_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_31_V_reg_1789_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_31_V_reg_1789_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_34_reg_5751_reg is absorbed into DSP acc_31_V_reg_1789_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_31_V_reg_1789_reg is absorbed into DSP acc_31_V_reg_1789_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U41/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_31_V_reg_1789_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U41/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_31_V_reg_1789_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_32_V_reg_1777_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_32_V_reg_1777_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_35_reg_5756_reg is absorbed into DSP acc_32_V_reg_1777_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_32_V_reg_1777_reg is absorbed into DSP acc_32_V_reg_1777_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U42/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_32_V_reg_1777_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U42/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_32_V_reg_1777_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_33_V_reg_1765_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_33_V_reg_1765_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_36_reg_5761_reg is absorbed into DSP acc_33_V_reg_1765_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_33_V_reg_1765_reg is absorbed into DSP acc_33_V_reg_1765_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U43/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_33_V_reg_1765_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U43/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_33_V_reg_1765_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_34_V_reg_1753_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_34_V_reg_1753_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_37_reg_5766_reg is absorbed into DSP acc_34_V_reg_1753_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_34_V_reg_1753_reg is absorbed into DSP acc_34_V_reg_1753_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U44/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_34_V_reg_1753_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U44/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_34_V_reg_1753_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_35_V_reg_1741_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_35_V_reg_1741_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_38_reg_5771_reg is absorbed into DSP acc_35_V_reg_1741_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_35_V_reg_1741_reg is absorbed into DSP acc_35_V_reg_1741_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U45/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_35_V_reg_1741_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U45/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_35_V_reg_1741_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_36_V_reg_1729_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_36_V_reg_1729_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_39_reg_5776_reg is absorbed into DSP acc_36_V_reg_1729_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_36_V_reg_1729_reg is absorbed into DSP acc_36_V_reg_1729_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U46/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_36_V_reg_1729_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U46/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_36_V_reg_1729_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_37_V_reg_1717_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_37_V_reg_1717_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_40_reg_5781_reg is absorbed into DSP acc_37_V_reg_1717_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_37_V_reg_1717_reg is absorbed into DSP acc_37_V_reg_1717_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U47/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_37_V_reg_1717_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U47/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_37_V_reg_1717_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_38_V_reg_1705_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_38_V_reg_1705_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_41_reg_5786_reg is absorbed into DSP acc_38_V_reg_1705_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_38_V_reg_1705_reg is absorbed into DSP acc_38_V_reg_1705_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U48/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_38_V_reg_1705_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U48/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_38_V_reg_1705_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_39_V_reg_1693_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_39_V_reg_1693_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_42_reg_5791_reg is absorbed into DSP acc_39_V_reg_1693_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_39_V_reg_1693_reg is absorbed into DSP acc_39_V_reg_1693_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U49/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_39_V_reg_1693_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U49/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_39_V_reg_1693_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_40_V_reg_1681_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_40_V_reg_1681_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_43_reg_5796_reg is absorbed into DSP acc_40_V_reg_1681_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_40_V_reg_1681_reg is absorbed into DSP acc_40_V_reg_1681_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U50/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_40_V_reg_1681_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U50/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_40_V_reg_1681_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_41_V_reg_1669_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_41_V_reg_1669_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_44_reg_5801_reg is absorbed into DSP acc_41_V_reg_1669_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_41_V_reg_1669_reg is absorbed into DSP acc_41_V_reg_1669_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U51/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_41_V_reg_1669_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U51/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_41_V_reg_1669_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_42_V_reg_1657_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_42_V_reg_1657_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_45_reg_5806_reg is absorbed into DSP acc_42_V_reg_1657_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_42_V_reg_1657_reg is absorbed into DSP acc_42_V_reg_1657_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U52/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_42_V_reg_1657_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U52/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_42_V_reg_1657_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_43_V_reg_1645_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_43_V_reg_1645_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_46_reg_5811_reg is absorbed into DSP acc_43_V_reg_1645_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_43_V_reg_1645_reg is absorbed into DSP acc_43_V_reg_1645_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U53/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_43_V_reg_1645_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U53/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_43_V_reg_1645_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_44_V_reg_1633_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_44_V_reg_1633_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_47_reg_5816_reg is absorbed into DSP acc_44_V_reg_1633_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_44_V_reg_1633_reg is absorbed into DSP acc_44_V_reg_1633_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U54/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_44_V_reg_1633_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U54/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_44_V_reg_1633_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_45_V_reg_1621_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_45_V_reg_1621_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_48_reg_5821_reg is absorbed into DSP acc_45_V_reg_1621_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_45_V_reg_1621_reg is absorbed into DSP acc_45_V_reg_1621_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U55/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_45_V_reg_1621_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U55/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_45_V_reg_1621_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_46_V_reg_1609_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_46_V_reg_1609_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_49_reg_5826_reg is absorbed into DSP acc_46_V_reg_1609_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_46_V_reg_1609_reg is absorbed into DSP acc_46_V_reg_1609_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U56/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_46_V_reg_1609_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U56/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_46_V_reg_1609_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_47_V_reg_1597_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_47_V_reg_1597_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_50_reg_5831_reg is absorbed into DSP acc_47_V_reg_1597_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_47_V_reg_1597_reg is absorbed into DSP acc_47_V_reg_1597_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U57/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_47_V_reg_1597_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U57/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_47_V_reg_1597_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_48_V_reg_1585_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_48_V_reg_1585_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_51_reg_5836_reg is absorbed into DSP acc_48_V_reg_1585_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_48_V_reg_1585_reg is absorbed into DSP acc_48_V_reg_1585_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U58/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_48_V_reg_1585_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U58/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_48_V_reg_1585_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_49_V_reg_1573_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_49_V_reg_1573_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_52_reg_5841_reg is absorbed into DSP acc_49_V_reg_1573_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_49_V_reg_1573_reg is absorbed into DSP acc_49_V_reg_1573_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U59/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_49_V_reg_1573_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U59/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_49_V_reg_1573_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_50_V_reg_1561_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_50_V_reg_1561_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_53_reg_5846_reg is absorbed into DSP acc_50_V_reg_1561_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_50_V_reg_1561_reg is absorbed into DSP acc_50_V_reg_1561_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U60/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_50_V_reg_1561_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U60/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_50_V_reg_1561_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_51_V_reg_1549_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_51_V_reg_1549_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_54_reg_5851_reg is absorbed into DSP acc_51_V_reg_1549_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_51_V_reg_1549_reg is absorbed into DSP acc_51_V_reg_1549_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U61/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_51_V_reg_1549_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U61/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_51_V_reg_1549_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_52_V_reg_1537_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_52_V_reg_1537_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_55_reg_5856_reg is absorbed into DSP acc_52_V_reg_1537_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_52_V_reg_1537_reg is absorbed into DSP acc_52_V_reg_1537_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U62/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_52_V_reg_1537_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U62/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_52_V_reg_1537_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_53_V_reg_1525_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_53_V_reg_1525_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_56_reg_5861_reg is absorbed into DSP acc_53_V_reg_1525_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_53_V_reg_1525_reg is absorbed into DSP acc_53_V_reg_1525_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U63/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_53_V_reg_1525_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U63/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_53_V_reg_1525_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_54_V_reg_1513_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_54_V_reg_1513_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_57_reg_5866_reg is absorbed into DSP acc_54_V_reg_1513_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_54_V_reg_1513_reg is absorbed into DSP acc_54_V_reg_1513_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U64/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_54_V_reg_1513_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U64/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_54_V_reg_1513_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_55_V_reg_1501_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_55_V_reg_1501_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_58_reg_5871_reg is absorbed into DSP acc_55_V_reg_1501_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_55_V_reg_1501_reg is absorbed into DSP acc_55_V_reg_1501_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U65/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_55_V_reg_1501_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U65/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_55_V_reg_1501_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_56_V_reg_1489_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_56_V_reg_1489_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_59_reg_5876_reg is absorbed into DSP acc_56_V_reg_1489_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_56_V_reg_1489_reg is absorbed into DSP acc_56_V_reg_1489_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U66/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_56_V_reg_1489_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U66/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_56_V_reg_1489_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_57_V_reg_1477_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_57_V_reg_1477_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_60_reg_5881_reg is absorbed into DSP acc_57_V_reg_1477_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_57_V_reg_1477_reg is absorbed into DSP acc_57_V_reg_1477_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U67/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_57_V_reg_1477_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U67/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_57_V_reg_1477_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_58_V_reg_1465_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_58_V_reg_1465_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_61_reg_5886_reg is absorbed into DSP acc_58_V_reg_1465_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_58_V_reg_1465_reg is absorbed into DSP acc_58_V_reg_1465_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U68/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_58_V_reg_1465_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U68/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_58_V_reg_1465_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_59_V_reg_1453_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_59_V_reg_1453_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_62_reg_5891_reg is absorbed into DSP acc_59_V_reg_1453_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_59_V_reg_1453_reg is absorbed into DSP acc_59_V_reg_1453_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U69/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_59_V_reg_1453_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U69/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_59_V_reg_1453_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_60_V_reg_1441_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_60_V_reg_1441_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_63_reg_5896_reg is absorbed into DSP acc_60_V_reg_1441_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_60_V_reg_1441_reg is absorbed into DSP acc_60_V_reg_1441_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U70/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_60_V_reg_1441_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U70/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_60_V_reg_1441_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_61_V_reg_1429_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_61_V_reg_1429_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_64_reg_5901_reg is absorbed into DSP acc_61_V_reg_1429_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_61_V_reg_1429_reg is absorbed into DSP acc_61_V_reg_1429_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U71/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_61_V_reg_1429_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U71/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_61_V_reg_1429_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_62_V_reg_1417_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_62_V_reg_1417_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_65_reg_5906_reg is absorbed into DSP acc_62_V_reg_1417_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_62_V_reg_1417_reg is absorbed into DSP acc_62_V_reg_1417_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U72/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_62_V_reg_1417_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U72/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_62_V_reg_1417_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_63_V_reg_1405_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_63_V_reg_1405_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_66_reg_5911_reg is absorbed into DSP acc_63_V_reg_1405_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_63_V_reg_1405_reg is absorbed into DSP acc_63_V_reg_1405_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U73/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_63_V_reg_1405_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U73/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_63_V_reg_1405_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_64_V_reg_1393_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_64_V_reg_1393_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_67_reg_5916_reg is absorbed into DSP acc_64_V_reg_1393_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_64_V_reg_1393_reg is absorbed into DSP acc_64_V_reg_1393_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U74/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_64_V_reg_1393_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U74/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_64_V_reg_1393_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_65_V_reg_1381_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_65_V_reg_1381_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_68_reg_5921_reg is absorbed into DSP acc_65_V_reg_1381_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_65_V_reg_1381_reg is absorbed into DSP acc_65_V_reg_1381_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U75/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_65_V_reg_1381_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U75/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_65_V_reg_1381_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_66_V_reg_1369_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_66_V_reg_1369_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_69_reg_5926_reg is absorbed into DSP acc_66_V_reg_1369_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_66_V_reg_1369_reg is absorbed into DSP acc_66_V_reg_1369_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U76/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_66_V_reg_1369_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U76/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_66_V_reg_1369_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_67_V_reg_1357_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_67_V_reg_1357_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_70_reg_5931_reg is absorbed into DSP acc_67_V_reg_1357_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_67_V_reg_1357_reg is absorbed into DSP acc_67_V_reg_1357_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U77/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_67_V_reg_1357_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U77/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_67_V_reg_1357_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_68_V_reg_1345_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_68_V_reg_1345_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_71_reg_5936_reg is absorbed into DSP acc_68_V_reg_1345_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_68_V_reg_1345_reg is absorbed into DSP acc_68_V_reg_1345_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U78/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_68_V_reg_1345_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U78/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_68_V_reg_1345_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_69_V_reg_1333_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_69_V_reg_1333_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_72_reg_5941_reg is absorbed into DSP acc_69_V_reg_1333_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_69_V_reg_1333_reg is absorbed into DSP acc_69_V_reg_1333_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U79/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_69_V_reg_1333_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U79/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_69_V_reg_1333_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_70_V_reg_1321_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_70_V_reg_1321_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_73_reg_5946_reg is absorbed into DSP acc_70_V_reg_1321_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_70_V_reg_1321_reg is absorbed into DSP acc_70_V_reg_1321_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U80/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_70_V_reg_1321_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U80/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_70_V_reg_1321_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_71_V_reg_1309_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_71_V_reg_1309_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_74_reg_5951_reg is absorbed into DSP acc_71_V_reg_1309_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_71_V_reg_1309_reg is absorbed into DSP acc_71_V_reg_1309_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U81/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_71_V_reg_1309_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U81/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_71_V_reg_1309_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_72_V_reg_1297_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_72_V_reg_1297_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_75_reg_5956_reg is absorbed into DSP acc_72_V_reg_1297_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_72_V_reg_1297_reg is absorbed into DSP acc_72_V_reg_1297_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U82/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_72_V_reg_1297_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U82/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_72_V_reg_1297_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_73_V_reg_1285_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_73_V_reg_1285_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_76_reg_5961_reg is absorbed into DSP acc_73_V_reg_1285_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_73_V_reg_1285_reg is absorbed into DSP acc_73_V_reg_1285_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U83/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_73_V_reg_1285_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U83/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_73_V_reg_1285_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_74_V_reg_1273_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_74_V_reg_1273_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_77_reg_5966_reg is absorbed into DSP acc_74_V_reg_1273_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_74_V_reg_1273_reg is absorbed into DSP acc_74_V_reg_1273_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U84/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_74_V_reg_1273_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U84/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_74_V_reg_1273_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_75_V_reg_1261_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_75_V_reg_1261_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_78_reg_5971_reg is absorbed into DSP acc_75_V_reg_1261_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_75_V_reg_1261_reg is absorbed into DSP acc_75_V_reg_1261_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U85/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_75_V_reg_1261_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U85/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_75_V_reg_1261_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_76_V_reg_1249_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_76_V_reg_1249_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_79_reg_5976_reg is absorbed into DSP acc_76_V_reg_1249_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_76_V_reg_1249_reg is absorbed into DSP acc_76_V_reg_1249_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U86/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_76_V_reg_1249_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U86/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_76_V_reg_1249_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_77_V_reg_1237_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_77_V_reg_1237_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_80_reg_5981_reg is absorbed into DSP acc_77_V_reg_1237_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_77_V_reg_1237_reg is absorbed into DSP acc_77_V_reg_1237_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U87/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_77_V_reg_1237_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U87/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_77_V_reg_1237_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_78_V_reg_1225_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_78_V_reg_1225_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_81_reg_5986_reg is absorbed into DSP acc_78_V_reg_1225_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_78_V_reg_1225_reg is absorbed into DSP acc_78_V_reg_1225_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U88/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_78_V_reg_1225_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U88/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_78_V_reg_1225_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_79_V_reg_1213_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_79_V_reg_1213_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_82_reg_5991_reg is absorbed into DSP acc_79_V_reg_1213_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_79_V_reg_1213_reg is absorbed into DSP acc_79_V_reg_1213_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U89/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_79_V_reg_1213_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U89/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_79_V_reg_1213_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_80_V_reg_1201_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_80_V_reg_1201_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_83_reg_5996_reg is absorbed into DSP acc_80_V_reg_1201_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_80_V_reg_1201_reg is absorbed into DSP acc_80_V_reg_1201_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U90/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_80_V_reg_1201_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U90/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_80_V_reg_1201_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_81_V_reg_1189_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_81_V_reg_1189_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_84_reg_6001_reg is absorbed into DSP acc_81_V_reg_1189_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_81_V_reg_1189_reg is absorbed into DSP acc_81_V_reg_1189_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U91/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_81_V_reg_1189_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U91/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_81_V_reg_1189_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_82_V_reg_1177_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_82_V_reg_1177_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_85_reg_6006_reg is absorbed into DSP acc_82_V_reg_1177_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_82_V_reg_1177_reg is absorbed into DSP acc_82_V_reg_1177_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U92/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_82_V_reg_1177_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U92/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_82_V_reg_1177_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_83_V_reg_1165_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_83_V_reg_1165_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_86_reg_6011_reg is absorbed into DSP acc_83_V_reg_1165_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_83_V_reg_1165_reg is absorbed into DSP acc_83_V_reg_1165_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U93/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_83_V_reg_1165_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U93/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_83_V_reg_1165_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_84_V_reg_1153_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_84_V_reg_1153_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_87_reg_6016_reg is absorbed into DSP acc_84_V_reg_1153_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_84_V_reg_1153_reg is absorbed into DSP acc_84_V_reg_1153_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U94/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_84_V_reg_1153_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U94/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_84_V_reg_1153_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_85_V_reg_1141_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_85_V_reg_1141_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_88_reg_6021_reg is absorbed into DSP acc_85_V_reg_1141_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_85_V_reg_1141_reg is absorbed into DSP acc_85_V_reg_1141_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U95/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_85_V_reg_1141_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U95/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_85_V_reg_1141_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_86_V_reg_1129_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_86_V_reg_1129_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_89_reg_6026_reg is absorbed into DSP acc_86_V_reg_1129_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_86_V_reg_1129_reg is absorbed into DSP acc_86_V_reg_1129_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U96/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_86_V_reg_1129_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U96/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_86_V_reg_1129_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_87_V_reg_1117_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_87_V_reg_1117_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_90_reg_6031_reg is absorbed into DSP acc_87_V_reg_1117_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_87_V_reg_1117_reg is absorbed into DSP acc_87_V_reg_1117_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U97/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_87_V_reg_1117_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U97/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_87_V_reg_1117_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_88_V_reg_1105_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_88_V_reg_1105_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_91_reg_6036_reg is absorbed into DSP acc_88_V_reg_1105_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_88_V_reg_1105_reg is absorbed into DSP acc_88_V_reg_1105_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U98/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_88_V_reg_1105_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U98/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_88_V_reg_1105_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_89_V_reg_1093_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_89_V_reg_1093_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_92_reg_6041_reg is absorbed into DSP acc_89_V_reg_1093_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_89_V_reg_1093_reg is absorbed into DSP acc_89_V_reg_1093_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U99/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_89_V_reg_1093_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U99/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_89_V_reg_1093_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_90_V_reg_1081_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_90_V_reg_1081_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_93_reg_6046_reg is absorbed into DSP acc_90_V_reg_1081_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_90_V_reg_1081_reg is absorbed into DSP acc_90_V_reg_1081_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U100/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_90_V_reg_1081_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U100/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_90_V_reg_1081_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_91_V_reg_1069_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_91_V_reg_1069_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_94_reg_6051_reg is absorbed into DSP acc_91_V_reg_1069_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_91_V_reg_1069_reg is absorbed into DSP acc_91_V_reg_1069_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U101/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_91_V_reg_1069_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U101/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_91_V_reg_1069_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_92_V_reg_1057_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_92_V_reg_1057_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_95_reg_6056_reg is absorbed into DSP acc_92_V_reg_1057_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_92_V_reg_1057_reg is absorbed into DSP acc_92_V_reg_1057_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U102/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_92_V_reg_1057_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U102/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_92_V_reg_1057_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_93_V_reg_1045_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_93_V_reg_1045_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_96_reg_6061_reg is absorbed into DSP acc_93_V_reg_1045_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_93_V_reg_1045_reg is absorbed into DSP acc_93_V_reg_1045_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U103/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_93_V_reg_1045_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U103/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_93_V_reg_1045_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_94_V_reg_1033_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_94_V_reg_1033_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_97_reg_6066_reg is absorbed into DSP acc_94_V_reg_1033_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_94_V_reg_1033_reg is absorbed into DSP acc_94_V_reg_1033_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U104/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_94_V_reg_1033_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U104/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_94_V_reg_1033_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_95_V_reg_1021_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_95_V_reg_1021_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_98_reg_6071_reg is absorbed into DSP acc_95_V_reg_1021_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_95_V_reg_1021_reg is absorbed into DSP acc_95_V_reg_1021_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U105/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_95_V_reg_1021_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U105/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_95_V_reg_1021_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_96_V_reg_1009_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_96_V_reg_1009_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_99_reg_6076_reg is absorbed into DSP acc_96_V_reg_1009_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_96_V_reg_1009_reg is absorbed into DSP acc_96_V_reg_1009_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U106/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_96_V_reg_1009_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U106/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_96_V_reg_1009_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_97_V_reg_997_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_97_V_reg_997_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_100_reg_6081_reg is absorbed into DSP acc_97_V_reg_997_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_97_V_reg_997_reg is absorbed into DSP acc_97_V_reg_997_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U107/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_97_V_reg_997_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U107/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_97_V_reg_997_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_98_V_reg_985_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_98_V_reg_985_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_101_reg_6086_reg is absorbed into DSP acc_98_V_reg_985_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_98_V_reg_985_reg is absorbed into DSP acc_98_V_reg_985_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U108/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_98_V_reg_985_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U108/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_98_V_reg_985_reg.
2default:defaulth p
x
� 
�
%s
*synth2o
[DSP Report: Generating DSP acc_99_V_reg_973_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: register B is absorbed into DSP acc_99_V_reg_973_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register tmp_102_reg_6091_reg is absorbed into DSP acc_99_V_reg_973_reg.
2default:defaulth p
x
� 
�
%s
*synth2i
UDSP Report: register acc_99_V_reg_973_reg is absorbed into DSP acc_99_V_reg_973_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U109/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_99_V_reg_973_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator mnist_mac_muladd_eOg_U109/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_99_V_reg_973_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_100_V_reg_961_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_100_V_reg_961_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_103_reg_6096_reg is absorbed into DSP acc_100_V_reg_961_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_100_V_reg_961_reg is absorbed into DSP acc_100_V_reg_961_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U110/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_100_V_reg_961_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U110/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_100_V_reg_961_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_101_V_reg_949_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_101_V_reg_949_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_104_reg_6101_reg is absorbed into DSP acc_101_V_reg_949_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_101_V_reg_949_reg is absorbed into DSP acc_101_V_reg_949_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U111/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_101_V_reg_949_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U111/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_101_V_reg_949_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_102_V_reg_937_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_102_V_reg_937_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_105_reg_6106_reg is absorbed into DSP acc_102_V_reg_937_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_102_V_reg_937_reg is absorbed into DSP acc_102_V_reg_937_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U112/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_102_V_reg_937_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U112/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_102_V_reg_937_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_103_V_reg_925_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_103_V_reg_925_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_106_reg_6111_reg is absorbed into DSP acc_103_V_reg_925_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_103_V_reg_925_reg is absorbed into DSP acc_103_V_reg_925_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U113/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_103_V_reg_925_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U113/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_103_V_reg_925_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_104_V_reg_913_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_104_V_reg_913_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_107_reg_6116_reg is absorbed into DSP acc_104_V_reg_913_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_104_V_reg_913_reg is absorbed into DSP acc_104_V_reg_913_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U114/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_104_V_reg_913_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U114/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_104_V_reg_913_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_105_V_reg_901_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_105_V_reg_901_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_108_reg_6121_reg is absorbed into DSP acc_105_V_reg_901_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_105_V_reg_901_reg is absorbed into DSP acc_105_V_reg_901_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U115/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_105_V_reg_901_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U115/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_105_V_reg_901_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_106_V_reg_889_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_106_V_reg_889_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_109_reg_6126_reg is absorbed into DSP acc_106_V_reg_889_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_106_V_reg_889_reg is absorbed into DSP acc_106_V_reg_889_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U116/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_106_V_reg_889_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U116/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_106_V_reg_889_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_107_V_reg_877_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_107_V_reg_877_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_110_reg_6131_reg is absorbed into DSP acc_107_V_reg_877_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_107_V_reg_877_reg is absorbed into DSP acc_107_V_reg_877_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U117/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_107_V_reg_877_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U117/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_107_V_reg_877_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_108_V_reg_865_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_108_V_reg_865_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_111_reg_6136_reg is absorbed into DSP acc_108_V_reg_865_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_108_V_reg_865_reg is absorbed into DSP acc_108_V_reg_865_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U118/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_108_V_reg_865_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U118/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_108_V_reg_865_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_109_V_reg_853_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_109_V_reg_853_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_112_reg_6141_reg is absorbed into DSP acc_109_V_reg_853_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_109_V_reg_853_reg is absorbed into DSP acc_109_V_reg_853_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U119/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_109_V_reg_853_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U119/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_109_V_reg_853_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_110_V_reg_841_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_110_V_reg_841_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_113_reg_6146_reg is absorbed into DSP acc_110_V_reg_841_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_110_V_reg_841_reg is absorbed into DSP acc_110_V_reg_841_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U120/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_110_V_reg_841_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U120/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_110_V_reg_841_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_111_V_reg_829_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_111_V_reg_829_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_114_reg_6151_reg is absorbed into DSP acc_111_V_reg_829_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_111_V_reg_829_reg is absorbed into DSP acc_111_V_reg_829_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U121/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_111_V_reg_829_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U121/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_111_V_reg_829_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_112_V_reg_817_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_112_V_reg_817_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_115_reg_6156_reg is absorbed into DSP acc_112_V_reg_817_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_112_V_reg_817_reg is absorbed into DSP acc_112_V_reg_817_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U122/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_112_V_reg_817_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U122/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_112_V_reg_817_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_113_V_reg_805_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_113_V_reg_805_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_116_reg_6161_reg is absorbed into DSP acc_113_V_reg_805_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_113_V_reg_805_reg is absorbed into DSP acc_113_V_reg_805_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U123/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_113_V_reg_805_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U123/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_113_V_reg_805_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_114_V_reg_793_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_114_V_reg_793_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_117_reg_6166_reg is absorbed into DSP acc_114_V_reg_793_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_114_V_reg_793_reg is absorbed into DSP acc_114_V_reg_793_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U124/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_114_V_reg_793_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U124/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_114_V_reg_793_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_115_V_reg_781_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_115_V_reg_781_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_118_reg_6171_reg is absorbed into DSP acc_115_V_reg_781_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_115_V_reg_781_reg is absorbed into DSP acc_115_V_reg_781_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U125/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_115_V_reg_781_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U125/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_115_V_reg_781_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_116_V_reg_769_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_116_V_reg_769_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_119_reg_6176_reg is absorbed into DSP acc_116_V_reg_769_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_116_V_reg_769_reg is absorbed into DSP acc_116_V_reg_769_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U126/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_116_V_reg_769_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U126/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_116_V_reg_769_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_117_V_reg_757_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_117_V_reg_757_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_120_reg_6181_reg is absorbed into DSP acc_117_V_reg_757_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_117_V_reg_757_reg is absorbed into DSP acc_117_V_reg_757_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U127/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_117_V_reg_757_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U127/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_117_V_reg_757_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_118_V_reg_745_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_118_V_reg_745_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_121_reg_6186_reg is absorbed into DSP acc_118_V_reg_745_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_118_V_reg_745_reg is absorbed into DSP acc_118_V_reg_745_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U128/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_118_V_reg_745_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U128/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_118_V_reg_745_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_119_V_reg_733_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_119_V_reg_733_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_122_reg_6191_reg is absorbed into DSP acc_119_V_reg_733_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_119_V_reg_733_reg is absorbed into DSP acc_119_V_reg_733_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U129/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_119_V_reg_733_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U129/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_119_V_reg_733_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_120_V_reg_721_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_120_V_reg_721_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_123_reg_6196_reg is absorbed into DSP acc_120_V_reg_721_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_120_V_reg_721_reg is absorbed into DSP acc_120_V_reg_721_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U130/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_120_V_reg_721_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U130/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_120_V_reg_721_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_121_V_reg_709_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_121_V_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_124_reg_6201_reg is absorbed into DSP acc_121_V_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_121_V_reg_709_reg is absorbed into DSP acc_121_V_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U131/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_121_V_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U131/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_121_V_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_122_V_reg_697_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_122_V_reg_697_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_125_reg_6206_reg is absorbed into DSP acc_122_V_reg_697_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_122_V_reg_697_reg is absorbed into DSP acc_122_V_reg_697_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U132/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_122_V_reg_697_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U132/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_122_V_reg_697_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_123_V_reg_685_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_123_V_reg_685_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_126_reg_6211_reg is absorbed into DSP acc_123_V_reg_685_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_123_V_reg_685_reg is absorbed into DSP acc_123_V_reg_685_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U133/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_123_V_reg_685_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U133/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_123_V_reg_685_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_124_V_reg_673_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_124_V_reg_673_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_127_reg_6216_reg is absorbed into DSP acc_124_V_reg_673_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_124_V_reg_673_reg is absorbed into DSP acc_124_V_reg_673_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U134/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_124_V_reg_673_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U134/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_124_V_reg_673_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_125_V_reg_661_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_125_V_reg_661_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_128_reg_6221_reg is absorbed into DSP acc_125_V_reg_661_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_125_V_reg_661_reg is absorbed into DSP acc_125_V_reg_661_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U135/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_125_V_reg_661_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U135/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_125_V_reg_661_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_126_V_reg_649_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_126_V_reg_649_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_129_reg_6226_reg is absorbed into DSP acc_126_V_reg_649_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_126_V_reg_649_reg is absorbed into DSP acc_126_V_reg_649_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U136/mnist_mac_muladd_eOg_DSP48_0_U/p is absorbed into DSP acc_126_V_reg_649_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_eOg_U136/mnist_mac_muladd_eOg_DSP48_0_U/m is absorbed into DSP acc_126_V_reg_649_reg.
2default:defaulth p
x
� 
�
%s
*synth2p
\DSP Report: Generating DSP acc_127_V_reg_637_reg, operation Mode is: (P or 0)+(A*B'' or 0).
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: register B is absorbed into DSP acc_127_V_reg_637_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register tmp_130_reg_6231_reg is absorbed into DSP acc_127_V_reg_637_reg.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register acc_127_V_reg_637_reg is absorbed into DSP acc_127_V_reg_637_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_fYi_U137/mnist_mac_muladd_fYi_DSP48_1_U/p is absorbed into DSP acc_127_V_reg_637_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
|DSP Report: operator mnist_mac_muladd_fYi_U137/mnist_mac_muladd_fYi_DSP48_1_U/m is absorbed into DSP acc_127_V_reg_637_reg.
2default:defaulth p
x
� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys22
unpacker_U0/exitcond_fu_108_p22default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2-
relu_U0/exitcond_fu_78_p22default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2>
*linear_activation_1_U0/exitcond5_fu_302_p22default:defaultZ8-5546h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8312default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8272default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8232default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8192default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8152default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8112default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8072default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8032default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
7992default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2�
�/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ipshared/2239/hdl/verilog/linear_activation_1.v2default:default2
8372default:default8@Z8-5845h px� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_9_fu_488_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_9_fu_488_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: register linear_activation_1_U0/tmp_14_reg_669_reg is absorbed into DSP linear_activation_1_U0/tmp_12_9_fu_488_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_9_fu_488_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_9_fu_488_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_9_fu_488_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_9_fu_488_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_9_fu_488_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_9_reg_719_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_14_reg_669_reg is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_9_reg_719_reg is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_9_fu_488_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_9_fu_488_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_9_reg_719_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_8_fu_480_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_8_fu_480_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: register linear_activation_1_U0/tmp_13_reg_664_reg is absorbed into DSP linear_activation_1_U0/tmp_12_8_fu_480_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_8_fu_480_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_8_fu_480_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_8_fu_480_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_8_fu_480_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_8_fu_480_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_8_reg_714_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_13_reg_664_reg is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_8_reg_714_reg is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_8_fu_480_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_8_fu_480_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_8_reg_714_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_7_fu_472_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_7_fu_472_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: register linear_activation_1_U0/tmp_12_reg_659_reg is absorbed into DSP linear_activation_1_U0/tmp_12_7_fu_472_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_7_fu_472_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_7_fu_472_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_7_fu_472_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_7_fu_472_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_7_fu_472_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_7_reg_709_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_reg_659_reg is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_7_reg_709_reg is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_7_fu_472_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_7_fu_472_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_7_reg_709_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_6_fu_464_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_6_fu_464_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: register linear_activation_1_U0/tmp_11_reg_654_reg is absorbed into DSP linear_activation_1_U0/tmp_12_6_fu_464_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_6_fu_464_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_6_fu_464_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_6_fu_464_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_6_fu_464_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_6_fu_464_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_6_reg_704_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_11_reg_654_reg is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_6_reg_704_reg is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_6_fu_464_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_6_fu_464_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_6_reg_704_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_5_fu_456_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_5_fu_456_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: register linear_activation_1_U0/tmp_10_reg_649_reg is absorbed into DSP linear_activation_1_U0/tmp_12_5_fu_456_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_5_fu_456_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_5_fu_456_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_5_fu_456_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_5_fu_456_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_5_fu_456_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_5_reg_699_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_10_reg_649_reg is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_5_reg_699_reg is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_5_fu_456_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_5_fu_456_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_5_reg_699_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_4_fu_448_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_4_fu_448_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
~DSP Report: register linear_activation_1_U0/tmp_9_reg_644_reg is absorbed into DSP linear_activation_1_U0/tmp_12_4_fu_448_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_4_fu_448_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_4_fu_448_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_4_fu_448_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_4_fu_448_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_4_fu_448_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_4_reg_694_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_9_reg_644_reg is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_4_reg_694_reg is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_4_fu_448_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_4_fu_448_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_4_reg_694_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_3_fu_440_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_3_fu_440_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
~DSP Report: register linear_activation_1_U0/tmp_6_reg_639_reg is absorbed into DSP linear_activation_1_U0/tmp_12_3_fu_440_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_3_fu_440_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_3_fu_440_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_3_fu_440_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_3_fu_440_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_3_fu_440_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_3_reg_689_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_6_reg_639_reg is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_3_reg_689_reg is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_3_fu_440_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_3_fu_440_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_3_reg_689_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_2_fu_432_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_2_fu_432_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
~DSP Report: register linear_activation_1_U0/tmp_5_reg_634_reg is absorbed into DSP linear_activation_1_U0/tmp_12_2_fu_432_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_2_fu_432_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_2_fu_432_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_2_fu_432_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_2_fu_432_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_2_fu_432_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_2_reg_684_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_5_reg_634_reg is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_2_reg_684_reg is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_2_fu_432_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_2_fu_432_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_2_reg_684_reg.
2default:defaulth p
x
� 
�
%s
*synth2u
aDSP Report: Generating DSP linear_activation_1_U0/tmp_12_1_fu_424_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_1_fu_424_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
~DSP Report: register linear_activation_1_U0/tmp_4_reg_629_reg is absorbed into DSP linear_activation_1_U0/tmp_12_1_fu_424_p2.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_1_fu_424_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_1_fu_424_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_1_fu_424_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
DSP Report: operator linear_activation_1_U0/tmp_12_1_fu_424_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_1_fu_424_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
nDSP Report: Generating DSP linear_activation_1_U0/tmp_12_1_reg_679_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register B is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_4_reg_629_reg is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2m
YDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/tmp_12_1_reg_679_reg is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_1_fu_424_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: operator linear_activation_1_U0/tmp_12_1_fu_424_p2 is absorbed into DSP linear_activation_1_U0/tmp_12_1_reg_679_reg.
2default:defaulth p
x
� 
�
%s
*synth2r
^DSP Report: Generating DSP linear_activation_1_U0/tmp_3_fu_416_p2, operation Mode is: A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/L2_WEIGHTS_V_U/linear_activationg8j_rom_U/q0_reg is absorbed into DSP linear_activation_1_U0/tmp_3_fu_416_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: register linear_activation_1_U0/tmp_1_reg_624_reg is absorbed into DSP linear_activation_1_U0/tmp_3_fu_416_p2.
2default:defaulth p
x
� 
�
%s
*synth2h
TDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_3_fu_416_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
yDSP Report: operator linear_activation_1_U0/tmp_3_fu_416_p2 is absorbed into DSP linear_activation_1_U0/tmp_3_fu_416_p2.
2default:defaulth p
x
� 
�
%s
*synth2�
yDSP Report: operator linear_activation_1_U0/tmp_3_fu_416_p2 is absorbed into DSP linear_activation_1_U0/tmp_3_fu_416_p2.
2default:defaulth p
x
� 
�
%s
*synth2
kDSP Report: Generating DSP linear_activation_1_U0/tmp_3_reg_674_reg, operation Mode is: (PCIN>>17)+A2*B''.
2default:defaulth p
x
� 
�
%s
*synth2�
�DSP Report: register linear_activation_1_U0/L2_WEIGHTS_V_U/linear_activationg8j_rom_U/q0_reg is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
%s
*synth2j
VDSP Report: register A is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
}DSP Report: register linear_activation_1_U0/tmp_1_reg_624_reg is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
}DSP Report: register linear_activation_1_U0/tmp_3_reg_674_reg is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator linear_activation_1_U0/tmp_3_fu_416_p2 is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
%s
*synth2�
{DSP Report: operator linear_activation_1_U0/tmp_3_fu_416_p2 is absorbed into DSP linear_activation_1_U0/tmp_3_reg_674_reg.
2default:defaulth p
x
� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2%
sdata_in_TKEEP[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2%
sdata_in_TSTRB[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2%
sdata_in_TUSER[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2%
sdata_in_TLAST[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2#
sdata_in_TID[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
mnist2default:default2%
sdata_in_TDEST[0]2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[24]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[25]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[26]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[27]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[28]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[29]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[30]2default:default2
FDE2default:default2F
2inst/linear_activation_U0/tmp_132_reg_7530_reg[31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default22
inst/\relu_U0/ap_done_reg_reg 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2A
-inst/\linear_activation_1_U0/ap_done_reg_reg 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)inst/linear_activation_U0/ap_done_reg_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 inst/\packer_U0/ap_done_reg_reg 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"inst/\unpacker_U0/ap_done_reg_reg 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Y
Einst/\packer_U0/packet_user_V_U/packer_packet_usejbC_rom_U/q0_reg[0] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[25]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[26]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[27]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[28]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[29]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[30]2default:default2
FDE2default:default2D
0inst/linear_activation_U0/tmp_V_reg_7535_reg[31]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2K
7inst/\packer_U0/stream_out_V_dest_V_1_payload_B_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2K
7inst/\packer_U0/stream_out_V_dest_V_1_payload_A_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5inst/\packer_U0/stream_out_V_id_V_1_payload_B_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5inst/\packer_U0/stream_out_V_id_V_1_payload_A_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2K
7inst/\packer_U0/stream_out_V_user_V_1_payload_B_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2K
7inst/\packer_U0/stream_out_V_user_V_1_payload_A_reg[0] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][25]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][26]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][26]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][27]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][27]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][28]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][28]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][29]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][29]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][30]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][30]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][31]2default:default2
FDE2default:default2O
;inst/l1_result_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][25]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][26]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][26]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][27]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][27]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][28]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][28]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][29]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][29]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][30]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][30]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[0][31]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][31]2default:default2
FDE2default:default2M
9inst/l1_relu_V_V_U/U_fifo_w32_d1_A_ram/SRL_SIG_reg[1][25]2default:defaultZ8-3886h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
ap_done_reg_reg2default:default2%
linear_activation2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
unpacker_U0/ap_done_reg_reg2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
relu_U0/ap_done_reg_reg2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&linear_activation_1_U0/ap_done_reg_reg2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
packer_U0/ap_done_reg_reg2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[47]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[46]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[45]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[44]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[43]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[42]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[41]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[40]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[39]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[38]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[37]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[36]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[35]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[34]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[33]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[32]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[31]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[30]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[29]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[28]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[27]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[26]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[25]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[24]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[23]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[22]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[21]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[20]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[19]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[18]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_9_reg_719_reg[17]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[47]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[46]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[45]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[44]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[43]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[42]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[41]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[40]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[39]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[38]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[37]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[36]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[35]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[34]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[33]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[32]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[31]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[30]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[29]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[28]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[27]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[26]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[25]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[24]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[23]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[22]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[21]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[20]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[19]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[18]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_8_reg_714_reg[17]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[47]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[46]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[45]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[44]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[43]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[42]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[41]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[40]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[39]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[38]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[37]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[36]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[35]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[34]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[33]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[32]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[31]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[30]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[29]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[28]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[27]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[26]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[25]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[24]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[23]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[22]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[21]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[20]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[19]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[18]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_7_reg_709_reg[17]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_6_reg_704_reg[47]2default:default2
mnist2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/linear_activation_1_U0/tmp_12_6_reg_704_reg[46]2default:default2
mnist2default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:53 . Memory (MB): peak = 1711.305 ; gain = 528.723 ; free physical = 606 ; free virtual = 5322
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
2
%s*synth2

ROM:
2default:defaulth px� 
�
%s*synth2}
i+-------------------------+-------------------------------------------+---------------+----------------+
2default:defaulth px� 
�
%s*synth2~
j|Module Name              | RTL Object                                | Depth x Width | Implemented As | 
2default:defaulth px� 
�
%s*synth2}
i+-------------------------+-------------------------------------------+---------------+----------------+
2default:defaulth px� 
�
%s*synth2~
j|linear_activationbkb_rom | q0_reg                                    | 1024x1022     | Block RAM      | 
2default:defaulth px� 
�
%s*synth2~
j|linear_activationcud_rom | p_0_out                                   | 128x5         | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j|linear_activationg8j_rom | q0_reg                                    | 128x80        | Block RAM      | 
2default:defaulth px� 
�
%s*synth2~
j|linear_activationhbi_rom | p_0_out                                   | 16x4          | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j|packer_packet_usejbC_rom | p_0_out                                   | 16x1          | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j|linear_activation        | p_0_out                                   | 128x5         | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j|linear_activation        | ii_reg_2173_reg_rep                       | 1024x1022     | Block RAM      | 
2default:defaulth px� 
�
%s*synth2~
j|mnist                    | p_0_out                                   | 16x4          | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j|mnist                    | linear_activation_1_U0/ii_reg_279_reg_rep | 128x80        | Block RAM      | 
2default:defaulth px� 
�
%s*synth2~
j|mnist                    | p_0_out                                   | 16x1          | LUT            | 
2default:defaulth px� 
�
%s*synth2~
j+-------------------------+-------------------------------------------+---------------+----------------+

2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name | RTL Object                                                   | Inference      | Size (Depth x Width) | Primitives     | 
2default:defaulth px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+
2default:defaulth px� 
�
%s*synth2�
�|inst        | packer_U0/packet_last_V_U/packer_packet_laskbM_ram_U/ram_reg | User Attribute | 16 x 1               | RAM16X1S x 1   | 
2default:defaulth px� 
�
%s*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name       | DSP Mapping           | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+------------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 8      | -      | -      | 25     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|linear_activation | (P or 0)+(A*B'' or 0) | 8      | 6      | -      | -      | 23     | 0    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | A2*B''                | 18     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|mnist             | (PCIN>>17)+A2*B''     | 15     | 8      | -      | -      | 48     | 1    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth px� 
�
%s*synth2�
�+------------------+-----------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:46 ; elapsed = 00:01:03 . Memory (MB): peak = 1789.305 ; gain = 606.723 ; free physical = 424 ; free virtual = 5148
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:01:04 . Memory (MB): peak = 1811.305 ; gain = 628.723 ; free physical = 402 ; free virtual = 5126
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Object                                                   | Inference      | Size (Depth x Width) | Primitives     | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|inst        | packer_U0/packet_last_V_U/packer_packet_laskbM_ram_U/ram_reg | User Attribute | 16 x 1               | RAM16X1S x 1   | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------------------------------------------+----------------+----------------------+----------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2D
0inst/linear_activation_1_U0/ii_reg_279_reg_rep_02default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2D
0inst/linear_activation_1_U0/ii_reg_279_reg_rep_02default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2D
0inst/linear_activation_1_U0/ii_reg_279_reg_rep_12default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2D
0inst/linear_activation_1_U0/ii_reg_279_reg_rep_12default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2D
0inst/linear_activation_1_U0/ii_reg_279_reg_rep_22default:defaultZ8-4480h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:01:07 . Memory (MB): peak = 1851.961 ; gain = 669.379 ; free physical = 363 ; free virtual = 5087
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_3_19892default:default2
882default:default2
92default:defaultZ8-6064h px� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_3_19882default:default2
882default:default2
92default:defaultZ8-6064h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:01:08 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 364 ; free virtual = 5087
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:01:08 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 364 ; free virtual = 5087
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 364 ; free virtual = 5086
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 364 ; free virtual = 5086
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 363 ; free virtual = 5085
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 363 ; free virtual = 5085
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |CARRY4      |    99|
2default:defaulth px� 
I
%s*synth21
|2     |DSP48E1_3   |   138|
2default:defaulth px� 
I
%s*synth21
|3     |DSP48E1_4   |    10|
2default:defaulth px� 
I
%s*synth21
|4     |LUT1        |    14|
2default:defaulth px� 
I
%s*synth21
|5     |LUT2        |   371|
2default:defaulth px� 
I
%s*synth21
|6     |LUT3        |    91|
2default:defaulth px� 
I
%s*synth21
|7     |LUT4        |   254|
2default:defaulth px� 
I
%s*synth21
|8     |LUT5        |   122|
2default:defaulth px� 
I
%s*synth21
|9     |LUT6        |  1076|
2default:defaulth px� 
I
%s*synth21
|10    |MUXF7       |   435|
2default:defaulth px� 
I
%s*synth21
|11    |MUXF8       |   200|
2default:defaulth px� 
I
%s*synth21
|12    |RAM16X1S    |     1|
2default:defaulth px� 
I
%s*synth21
|13    |RAMB18E1_1  |     1|
2default:defaulth px� 
I
%s*synth21
|14    |RAMB18E1_2  |     1|
2default:defaulth px� 
I
%s*synth21
|15    |RAMB18E1_3  |     1|
2default:defaulth px� 
I
%s*synth21
|16    |RAMB18E1_4  |     1|
2default:defaulth px� 
I
%s*synth21
|17    |RAMB36E1_28 |     1|
2default:defaulth px� 
I
%s*synth21
|18    |RAMB36E1_29 |     1|
2default:defaulth px� 
I
%s*synth21
|19    |RAMB36E1_30 |     1|
2default:defaulth px� 
I
%s*synth21
|20    |RAMB36E1_31 |     1|
2default:defaulth px� 
I
%s*synth21
|21    |RAMB36E1_32 |     1|
2default:defaulth px� 
I
%s*synth21
|22    |RAMB36E1_33 |     1|
2default:defaulth px� 
I
%s*synth21
|23    |RAMB36E1_34 |     1|
2default:defaulth px� 
I
%s*synth21
|24    |RAMB36E1_35 |     1|
2default:defaulth px� 
I
%s*synth21
|25    |RAMB36E1_36 |     1|
2default:defaulth px� 
I
%s*synth21
|26    |RAMB36E1_37 |     1|
2default:defaulth px� 
I
%s*synth21
|27    |RAMB36E1_38 |     1|
2default:defaulth px� 
I
%s*synth21
|28    |RAMB36E1_39 |     1|
2default:defaulth px� 
I
%s*synth21
|29    |RAMB36E1_40 |     1|
2default:defaulth px� 
I
%s*synth21
|30    |RAMB36E1_41 |     1|
2default:defaulth px� 
I
%s*synth21
|31    |RAMB36E1_42 |     1|
2default:defaulth px� 
I
%s*synth21
|32    |RAMB36E1_43 |     1|
2default:defaulth px� 
I
%s*synth21
|33    |RAMB36E1_44 |     1|
2default:defaulth px� 
I
%s*synth21
|34    |RAMB36E1_45 |     1|
2default:defaulth px� 
I
%s*synth21
|35    |RAMB36E1_46 |     1|
2default:defaulth px� 
I
%s*synth21
|36    |RAMB36E1_47 |     1|
2default:defaulth px� 
I
%s*synth21
|37    |RAMB36E1_48 |     1|
2default:defaulth px� 
I
%s*synth21
|38    |RAMB36E1_49 |     1|
2default:defaulth px� 
I
%s*synth21
|39    |RAMB36E1_50 |     1|
2default:defaulth px� 
I
%s*synth21
|40    |RAMB36E1_51 |     1|
2default:defaulth px� 
I
%s*synth21
|41    |RAMB36E1_52 |     1|
2default:defaulth px� 
I
%s*synth21
|42    |RAMB36E1_53 |     1|
2default:defaulth px� 
I
%s*synth21
|43    |RAMB36E1_54 |     1|
2default:defaulth px� 
I
%s*synth21
|44    |RAMB36E1_55 |     1|
2default:defaulth px� 
I
%s*synth21
|45    |FDRE        |  4376|
2default:defaulth px� 
I
%s*synth21
|46    |FDSE        |    21|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
z
%s
*synth2b
N+------+-----------------------------------+-------------------------+------+
2default:defaulth p
x
� 
z
%s
*synth2b
N|      |Instance                           |Module                   |Cells |
2default:defaulth p
x
� 
z
%s
*synth2b
N+------+-----------------------------------+-------------------------+------+
2default:defaulth p
x
� 
z
%s
*synth2b
N|1     |top                                |                         |  7240|
2default:defaulth p
x
� 
z
%s
*synth2b
N|2     |  inst                             |mnist                    |  7240|
2default:defaulth p
x
� 
z
%s
*synth2b
N|3     |    data_in_V_V_U                  |fifo_w8_d1_A             |    81|
2default:defaulth p
x
� 
z
%s
*synth2b
N|4     |      U_fifo_w8_d1_A_ram           |fifo_w8_d1_A_shiftReg    |    73|
2default:defaulth p
x
� 
z
%s
*synth2b
N|5     |    data_out_V_V_U                 |fifo_w32_d1_A            |   104|
2default:defaulth p
x
� 
z
%s
*synth2b
N|6     |      U_fifo_w32_d1_A_ram          |fifo_w32_d1_A_shiftReg_3 |    96|
2default:defaulth p
x
� 
z
%s
*synth2b
N|7     |    l1_relu_V_V_U                  |fifo_w32_d1_A_0          |   105|
2default:defaulth p
x
� 
z
%s
*synth2b
N|8     |      U_fifo_w32_d1_A_ram          |fifo_w32_d1_A_shiftReg_2 |    97|
2default:defaulth p
x
� 
z
%s
*synth2b
N|9     |    l1_result_V_V_U                |fifo_w32_d1_A_1          |   117|
2default:defaulth p
x
� 
z
%s
*synth2b
N|10    |      U_fifo_w32_d1_A_ram          |fifo_w32_d1_A_shiftReg   |   109|
2default:defaulth p
x
� 
z
%s
*synth2b
N|11    |    linear_activation_1_U0         |linear_activation_1      |  1226|
2default:defaulth p
x
� 
z
%s
*synth2b
N|12    |      L2_BIAS_V_U                  |linear_activationhbi     |    18|
2default:defaulth p
x
� 
z
%s
*synth2b
N|13    |        linear_activationhbi_rom_U |linear_activationhbi_rom |    18|
2default:defaulth p
x
� 
z
%s
*synth2b
N|14    |    linear_activation_U0           |linear_activation        |  5092|
2default:defaulth p
x
� 
z
%s
*synth2b
N|15    |      L1_BIAS_V_U                  |linear_activationcud     |    17|
2default:defaulth p
x
� 
z
%s
*synth2b
N|16    |        linear_activationcud_rom_U |linear_activationcud_rom |    17|
2default:defaulth p
x
� 
z
%s
*synth2b
N|17    |    packer_U0                      |packer                   |   202|
2default:defaulth p
x
� 
z
%s
*synth2b
N|18    |      packet_last_V_U              |packer_packet_laskbM     |    21|
2default:defaulth p
x
� 
z
%s
*synth2b
N|19    |        packer_packet_laskbM_ram_U |packer_packet_laskbM_ram |    21|
2default:defaulth p
x
� 
z
%s
*synth2b
N|20    |    relu_U0                        |relu                     |    36|
2default:defaulth p
x
� 
z
%s
*synth2b
N|21    |    start_for_linear_mb6_U         |start_for_linear_mb6     |    10|
2default:defaulth p
x
� 
z
%s
*synth2b
N|22    |    start_for_linear_ncg_U         |start_for_linear_ncg     |     9|
2default:defaulth p
x
� 
z
%s
*synth2b
N|23    |    start_for_packer_U0_U          |start_for_packer_U0      |     9|
2default:defaulth p
x
� 
z
%s
*synth2b
N|24    |    start_for_relu_U0_U            |start_for_relu_U0        |     9|
2default:defaulth p
x
� 
z
%s
*synth2b
N|25    |    unpacker_U0                    |unpacker                 |    80|
2default:defaulth p
x
� 
z
%s
*synth2b
N+------+-----------------------------------+-------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.227 ; gain = 676.645 ; free physical = 363 ; free virtual = 5085
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 696 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:43 ; elapsed = 00:00:48 . Memory (MB): peak = 1859.227 ; gain = 307.465 ; free physical = 428 ; free virtual = 5149
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:52 ; elapsed = 00:01:09 . Memory (MB): peak = 1859.234 ; gain = 676.645 ; free physical = 428 ; free virtual = 5149
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
9152default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2l
X  A total of 1 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 1 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1972default:default2
2202default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:552default:default2
00:01:112default:default2
1859.2342default:default2
695.7542default:default2
5272default:default2
52492default:defaultZ17-722h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.runs/base_mnist_0_0_synth_1/base_mnist_0_0.dcp2default:defaultZ17-1381h px� 
�
,Added synthesis output to IP cache for IP %s415*coretcl2�
u/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.srcs/sources_1/bd/base/ip/base_mnist_0_0/base_mnist_0_0.xci2default:defaultZ2-1482h px� 
Q
Renamed %s cell refs.
330*coretcl2
242default:defaultZ2-1174h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/home/xbili/Code/FPGA/vivado-projects/hls_mnist/hls_mnist.runs/base_mnist_0_0_synth_1/base_mnist_0_0.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file base_mnist_0_0_utilization_synth.rpt -pb base_mnist_0_0_utilization_synth.pb
2default:defaulth px� 
�
�report_utilization: Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.14 . Memory (MB): peak = 1883.238 ; gain = 0.000 ; free physical = 525 ; free virtual = 5257
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Apr  5 21:56:24 20182default:defaultZ17-206h px� 


End Record