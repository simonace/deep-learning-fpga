
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.052default:default2
2677.5082default:default2
0.0002default:default2
7452default:default2
69272default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 98c24b76
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 745 ; free virtual = 69272default:defaulth px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.042default:default2
2677.5082default:default2
0.0002default:default2
7542default:default2
69372default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: a867a61e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 591 ; free virtual = 68132default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 131ee94cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:25 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 337 ; free virtual = 65752default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 131ee94cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:25 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 337 ; free virtual = 65752default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 131ee94cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:25 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 338 ; free virtual = 65742default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 273f26ce2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:58 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 415 ; free virtual = 66072default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 273f26ce2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:58 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 415 ; free virtual = 66072default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 150fd01e6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:01:05 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 410 ; free virtual = 66042default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 13f60ab67
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:01:06 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 394 ; free virtual = 66012default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 20a010793
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:01:06 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 394 ; free virtual = 66012default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 1c16e6f2f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:05 ; elapsed = 00:01:23 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 223 ; free virtual = 64742default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 2122d62bf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:07 ; elapsed = 00:01:25 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 168 ; free virtual = 64122default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 14d296afe
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:07 ; elapsed = 00:01:25 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 165 ; free virtual = 64112default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 14d296afe
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:08 ; elapsed = 00:01:26 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 165 ; free virtual = 64092default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 19db96f99
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
42default:defaultZ32-721h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2e
Qbase_i/mnist_edp_0/inst/linear_activation_U0/grp_multiply_accumulate_fu_1601/E[0]2default:defaultZ46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2W
Cbase_i/mnist_edp_0/inst/linear_activation_U0/acc_0_m_cr_V_reg_152102default:defaultZ46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2V
Bbase_i/mnist_edp_0/inst/linear_activation_U0/acc_63_m_cr_V_reg_7652default:defaultZ46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2b
Nbase_i/mnist_edp_0/inst/linear_activation_U0/acc_8_m_cr_V_reg_1425[79]_i_1_n_32default:defaultZ46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2Z
Fbase_i/mnist_edp_0/inst/linear_activation_U0/acc_10_m_cr_V_1_reg_390902default:defaultZ46-33h px� 
�
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2b
Nbase_i/mnist_edp_0/inst/linear_activation_U0/acc_62_m_cr_V_reg_777[79]_i_1_n_32default:defaultZ46-33h px� 
�
�BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
62default:default2
02default:default2
62default:default2
02default:default2
02default:defaultZ46-31h px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 19db96f99
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:26 ; elapsed = 00:01:35 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 249 ; free virtual = 64792default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.4982default:defaultZ30-746h px� 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: fddd355e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:26 ; elapsed = 00:01:35 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 250 ; free virtual = 64792default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: fddd355e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:26 ; elapsed = 00:01:35 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 249 ; free virtual = 64782default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: fddd355e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:27 ; elapsed = 00:01:36 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 252 ; free virtual = 64792default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: fddd355e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:27 ; elapsed = 00:01:36 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 255 ; free virtual = 64822default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.4 Final Placement Cleanup | Checksum: acff49fc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:28 ; elapsed = 00:01:37 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 255 ; free virtual = 64822default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: acff49fc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:28 ; elapsed = 00:01:37 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 261 ; free virtual = 64872default:defaulth px� 
=
(Ending Placer Task | Checksum: a435c8f1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:28 ; elapsed = 00:01:37 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 287 ; free virtual = 65182default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:02:332default:default2
00:01:422default:default2
2677.5082default:default2
0.0002default:default2
2782default:default2
65142default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:092default:default2
00:00:042default:default2
2677.5082default:default2
0.0002default:default2
2312default:default2
65132default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2{
g/home/xbili/Code/FPGA/vivado-projects/hls_mnist_edpa/hls_mnist_edpa.runs/impl_1/base_wrapper_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:162default:default2
00:00:132default:default2
2677.5082default:default2
0.0002default:default2
2152default:default2
65042default:defaultZ17-722h px� 
g
%s4*runtcl2K
7Executing : report_io -file base_wrapper_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.18 ; elapsed = 00:00:00.22 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 205 ; free virtual = 6494
*commonh px� 
�
%s4*runtcl2�
pExecuting : report_utilization -file base_wrapper_utilization_placed.rpt -pb base_wrapper_utilization_placed.pb
2default:defaulth px� 
�
�report_utilization: Time (s): cpu = 00:00:00.72 ; elapsed = 00:00:00.92 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 207 ; free virtual = 6495
*commonh px� 
�
%s4*runtcl2h
TExecuting : report_control_sets -verbose -file base_wrapper_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.34 . Memory (MB): peak = 2677.508 ; gain = 0.000 ; free physical = 191 ; free virtual = 6480
*commonh px� 


End Record