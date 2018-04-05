#include "complete_register.cpp"
#include "ap_utils.h"

void neural_network(
	// AXI-4 Master Interfaces
	data_t *mem,
	data_t *out,

	// Weight and bias memory address offset
	unsigned int w1_offset,
	unsigned int b1_offset,
	unsigned int w2_offset,
	unsigned int b2_offset,

	// Input and output memory address offset
	unsigned int input_offset,
	unsigned int result_offset
);
