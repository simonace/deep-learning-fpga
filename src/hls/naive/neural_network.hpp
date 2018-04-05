#include "ap_int.h"
#include "ap_utils.h"

typedef ap_int<8> data_t;
typedef ap_int<32> result_data_t;

void neural_network(
		data_t *mem,
		result_data_t *out,
		unsigned int w1_offset,
		unsigned int w2_offset,
		unsigned int input_offset,
		unsigned int b1_offset,
		unsigned int b2_offset,
		unsigned int result_offset
);
