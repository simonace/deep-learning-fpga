#include "stdio.h"
#include "ap_int.h"
#include "ap_utils.h"

#include "neural_network.hpp"

#define TOTAL_SIZE 8347050
#define INPUT_SIZE 784
#define LAYER_1_UNITS 512
#define LAYER_2_UNITS 10
#define DATASET_SIZE 10000

#define Y_OFFSET 0
#define INPUT_OFFSET (DATASET_SIZE * LAYER_2_UNITS)
#define W1_OFFSET (INPUT_OFFSET + DATASET_SIZE * INPUT_SIZE)
#define B1_OFFSET (W1_OFFSET + LAYER_1_UNITS * INPUT_SIZE)
#define W2_OFFSET (B1_OFFSET + LAYER_1_UNITS)
#define B2_OFFSET (W2_OFFSET + LAYER_2_UNITS * LAYER_1_UNITS)
#define RESULT_OFFSET B2_OFFSET + LAYER_2_UNITS

#define TEST_SIZE 10000

half convert_to_half(data_t data)
{
	half result = 0;
	result.set_bits(data);
	return result;
}

int main()
{
	printf("Starting Neural Network Simulation...\n");

	// Read file
	data_t *mem = (data_t*) malloc(TOTAL_SIZE * sizeof(data_t));
	data_t *result = (data_t*) malloc(LAYER_2_UNITS * sizeof(data_t));

	FILE *fd = fopen("nn.dat", "rb");
	int read = fread(mem, 1, TOTAL_SIZE * sizeof(data_t), fd);
	printf("%d bytes read to memory.\n", read);
	printf("%d bytes per entry\n", sizeof(data_t));

	// Run test
	int correct;
	int actual;
	int expected;
	for (int i = 0; i < TEST_SIZE; i++) {
		neural_network(
				mem,
				result,
				W1_OFFSET,
				B1_OFFSET,
				W2_OFFSET,
				B2_OFFSET,
				INPUT_OFFSET + i * INPUT_SIZE,
				0
		);

		float max = -std::numeric_limits<half>::max();
		for (int j = 0; j < LAYER_2_UNITS; j++) {
			if (convert_to_half(mem[Y_OFFSET + i * LAYER_2_UNITS + j]) == 1) {
				expected = j;
			}

			float curr = convert_to_half(result[j]);
			if (curr > max) {
				actual = j;
				max = curr;
			}
		}

		if (expected == actual) {
			correct++;
		} else {
			printf("%d vs %d\n", expected, actual);
			for (int j = 0; j < LAYER_2_UNITS; j++) {
				std::cout << (float) convert_to_half(result[j]) << " ";
			}
			std::cout << std::endl;
		}

		if ((i+1) % 1000 == 0) {
			std::cout << "Iteration " << i+1 << " complete." << std::endl;
			std::cout << "Correct: " << correct << std::endl;
		}
	}

	printf("%d correct out of %d.\n", correct, TEST_SIZE);

	fclose(fd);

	return 0;
}
