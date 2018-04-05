#include "neural_network.hpp"

#define INPUT_SIZE 784
#define LAYER_1_UNITS 32
#define LAYER_2_UNITS 10

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
) {
	// Weights and bias buffer
	data_t weights_1 [LAYER_1_UNITS];
	data_t weights_2 [LAYER_2_UNITS];
	data_t bias_1 [LAYER_1_UNITS];
	data_t bias_2 [LAYER_2_UNITS];

	// Exact Dot Product Accumulators
	CompleteRegister accums_1[LAYER_1_UNITS];
	CompleteRegister accums_2[LAYER_2_UNITS];

	// Inputs
	data_t inputs [INPUT_SIZE];

	// Results
	data_t l1_result [LAYER_1_UNITS];
	data_t l2_result [LAYER_2_UNITS];

	// Read inputs
	memcpy(inputs, (const data_t*) mem + input_offset, INPUT_SIZE * sizeof(data_t));

	// Read bias
	memcpy(bias_1, (const data_t*) mem + b1_offset, LAYER_1_UNITS * sizeof(data_t));
	memcpy(bias_2, (const data_t*) mem + b2_offset, LAYER_2_UNITS * sizeof(data_t));

	// Initialize the result buffers as the bias (so that we don't have to add it later)
	InitL1: for (int i = 0; i < LAYER_1_UNITS; i++) {
		accums_1[i].multiply_accumulate(data_t(1), bias_1[i]);
	}

	InitL2: for (int i = 0; i < LAYER_2_UNITS; i++) {
		accums_2[i].multiply_accumulate(data_t(1), bias_2[i]);
	}

	Layer1: for (int i = 0; i < INPUT_SIZE; i++) {
		memcpy(weights_1, (const data_t*) mem + w1_offset + i * LAYER_1_UNITS, LAYER_1_UNITS * sizeof(data_t));

		Layer1DotProduct: for (int j = 0; j < LAYER_1_UNITS; j++) {
			accums_1[j].multiply_accumulate(weights_1[j], inputs[i]);
		}
	}

	ReLU: for (int i = 0; i < LAYER_1_UNITS; i++) {
		data_t pre_relu = accums_1[i].get_result();
		if (pre_relu.get_bit(15) == true) {
			l1_result[i] = 0;
		} else {
			l1_result[i] = pre_relu;
		}

		accums_1[i].clear();
	}

	Layer2: for (int i = 0; i < LAYER_1_UNITS; i++) {
		memcpy(weights_2, (const data_t*) mem + w2_offset + i * LAYER_2_UNITS, LAYER_2_UNITS * sizeof(data_t));

		Layer2DotProduct: for (int j = 0; j < LAYER_2_UNITS; j++) {
			accums_2[j].multiply_accumulate(weights_2[j], l1_result[i]);
		}
	}

	Result: for (int i = 0; i < LAYER_2_UNITS; i++) {
		l2_result[i] = accums_2[i].get_result();
		accums_2[i].clear();
	}

	// Write output result
	memcpy(out + result_offset, (const data_t*) l2_result, LAYER_2_UNITS * sizeof(data_t));
}
