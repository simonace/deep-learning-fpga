#include "neural_network.hpp"

#define INPUT_SIZE 784
#define LAYER_1_UNITS 512
#define LAYER_2_UNITS 10

void neural_network(
		data_t *mem,
		result_data_t *out,
		unsigned int w1_offset,
		unsigned int w2_offset,
		unsigned int input_offset,
		unsigned int b1_offset,
		unsigned int b2_offset,
		unsigned int result_offset
) {
	// Weights and bias buffer
	data_t weights_1 [LAYER_1_UNITS];
	data_t weights_2 [LAYER_2_UNITS];
	data_t bias_1 [LAYER_1_UNITS];
	data_t bias_2 [LAYER_2_UNITS];

	// Inputs
	data_t inputs [INPUT_SIZE];

	// Results
	result_data_t l1_result [LAYER_1_UNITS];
	result_data_t l2_result [LAYER_2_UNITS];

	// Read inputs
	memcpy(inputs, (const data_t*) mem + input_offset, INPUT_SIZE * sizeof(data_t));

	// Read bias
	memcpy(bias_1, (const data_t*) mem + b1_offset,  LAYER_1_UNITS * sizeof(data_t));
	memcpy(bias_2, (const data_t*) mem + b2_offset,  LAYER_2_UNITS * sizeof(data_t));

	// Initialize the result buffers as the bias (so that we don't have to add it later)
	InitL1: for (int i = 0; i < LAYER_1_UNITS; i++) {
		l1_result[i] = bias_1[i];
	}

	InitL2: for (int i = 0; i < LAYER_2_UNITS; i++) {
		l2_result[i] = bias_2[i];
	}

	Layer1: for (int i = 0; i < INPUT_SIZE; i++) {
		memcpy(weights_1, (const data_t*) mem + w1_offset + i * LAYER_1_UNITS, LAYER_1_UNITS * sizeof(data_t));

		Layer1DotProduct: for (int j = 0; j < LAYER_1_UNITS; j++) {
			l1_result[j] += weights_1[j] * inputs[i];
		}
	}

	ReLU: for (int i = 0; i < LAYER_1_UNITS; i++) {
		if (l1_result[i] < 0) {
			l1_result[i] = 0;
		}
	}

	Layer2: for (int i = 0; i < LAYER_1_UNITS; i++) {
		memcpy(weights_2, (const data_t*) mem + w2_offset + i * LAYER_2_UNITS, LAYER_2_UNITS * sizeof(data_t));

		Layer2DotProduct: for (int j = 0; j < LAYER_2_UNITS; j++) {
			l2_result[j] += weights_2[j] * l1_result[i];
		}
	}

	// Write output result
	memcpy(out + result_offset, (const result_data_t*) l2_result, LAYER_2_UNITS * sizeof(result_data_t));
}
