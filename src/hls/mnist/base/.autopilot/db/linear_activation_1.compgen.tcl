# This script segment is generated automatically by AutoPilot

set id 82
set name mnist_mux_104_32_hbi
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 4
set din10_signed 0
set dout_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 84
set MemName linear_activationfYi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 80
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000100001101000001000000000000000011000010100001000000000000000000" "00000000000000001100001101000010000000000000000011000011010000000000000000000000" "00000000000000000100001000101100000000000000000011000010110101000000000000000000" "00000000000000001100001011101000000000000000000001000011100011110000000000000000" "00000000000000000100001111010001100000000000000001000010000110000000000000000000" "00000000000000000100001010100000000000000000000011000001000100000000000000000000" "00000000000000001100001011000010000000000000000001000011101011011000000000000000" "00000000000000000100001111011101000000000000000001000011000101000000000000000000" "00000000000000000100001101100111000000000000000001000100000101100100000000000000" "00000000000000001100000111010000000000000000000001000011000110100000000000000000" "00000000000000000100000110100000000000000000000011000010111001000000000000000000" "00000000000000000100001110111110100000000000000001000011001110010000000000000000" "00000000000000000100001100000011000000000000000001000001111110000000000000000000" "00000000000000000100001101111001000000000000000011000000100000000000000000000000" "00000000000000001100001001010000000000000000000011000010100000000000000000000000" "00000000000000000100000010100000000000000000000001000011001011100000000000000000" "00000000000000000100001100010111000000000000000001000010011101000000000000000000" "00000000000000001100001010111100000000000000000001000011010111010000000000000000" "00000000000000001100001001101000000000000000000001000100000000100000000000000000" "00000000000000000100001100000011000000000000000011000010101011100000000000000000" "00000000000000001100001001111000000000000000000001000010011111000000000000000000" "00000000000000000100001100100101000000000000000001000011001111010000000000000000" "00000000000000000100001111011011100000000000000011000001110110000000000000000000" "00000000000000000100000110000000000000000000000011000010001100000000000000000000" "00000000000000000100001100110010000000000000000011000001101110000000000000000000" "00000000000000001100001100000101000000000000000001000011101100100000000000000000" "00000000000000000100001110100000000000000000000001000011000010110000000000000000" "00000000000000001100001011110010000000000000000011000010000111000000000000000000" "00000000000000001100001100101000000000000000000001000011101100100000000000000000" "10000000000000000100001110101001000000000000000011000010100011000000000000000000" "00000000000000001100001001011100000000000000000001000001110000000000000000000000" "00000000000000001100001101011000000000000000000001000011011011000000000000000000" "00000000000000000100001010011110000000000000000001000011001100010000000000000000" "00000000000000001100001010100110000000000000000001000011010000110000000000000000" "00000000000000000100001011010010000000000000000001000001101110000000000000000000" "00000000000000000100001001110000000000000000000011000011001001110000000000000000" "00000000000000001100001011100010000000000000000011000001001000000000000000000000" "00000000000000000100000110101000000000000000000011000010011000000000000000000000" "00000000000000001100000001000000000000000000000001000011001110010000000000000000" "00000000000000001100001010001110000000000000000001000100000001100100000000000000" "00000000000000000100000111000000000000000000000011000010111011100000000000000000" "00000000000000001100001101101111000000000000000001000010110011000000000000000000" "00000000000000000100000110111000000000000000000011000010110110000000000000000000" "00000000000000001100001100100111000000000000000001000011000101100000000000000000" "00000000000000000100001101000111000000000000000001000011010101010000000000000000" "00000000000000000100001110010001000000000000000001000010100101100000000000000000" "00000000000000001100001110001110000000000000000001000100000001101100000000000000" "00000000000000000100001100000000000000000000000011000011000000100000000000000000" "00000000000000000100001100001001000000000000000001000010111001000000000000000000" "00000000000000000100001110111010000000000000000001000010000101000000000000000000" "00000000000000001100001001000100000000000000000001000010110110000000000000000000" "00000000000000000100001010110000000000000000000001000010111000100000000000000000" "00000000000000001100001100010010000000000000000001000011011011000000000000000000" "00000000000000000100001110000101100000000000000011000010101110000000000000000000" "00000000000000001100000100010000000000000000000000111111100000000000000000000000" "00000000000000001100001101111001000000000000000001000011010010100000000000000000" "00000000000000001100001100000101000000000000000001000001011000000000000000000000" "00000000000000000100001101101010000000000000000011000010110110100000000000000000" "00000000000000000100001100000110000000000000000001000011011000110000000000000000" "00000000000000000100001101110011000000000000000001000010110000100000000000000000" "00000000000000000100001101001001000000000000000011000010100110100000000000000000" "00000000000000001100001000000000000000000000000011000011011000010000000000000000" "00000000000000000100001010000010000000000000000001000010111000100000000000000000" "00000000000000001100000111111000000000000000000001000001011000000000000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 85
set MemName linear_activationg8j
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 8
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "00000000" "00000000" "11000010" "01000010" "00000000" "00000000" "01000000" "01000000" "00000000" "00000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name data_in_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_in_V_V \
    op interface \
    ports { data_in_V_V_dout { I 32 vector } data_in_V_V_empty_n { I 1 bit } data_in_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name data_out_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out_V_V \
    op interface \
    ports { data_out_V_V_din { O 32 vector } data_out_V_V_full_n { I 1 bit } data_out_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


