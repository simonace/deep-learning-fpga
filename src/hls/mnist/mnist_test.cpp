#include "mnist.hpp"
#include "hls_stream.h"
#include "limits.h"

#define TEST_CASES 10000

int main()
{
	// Read file
	data_t *x_test = (data_t*) malloc(TEST_CASES * 784 * sizeof(data_t));
	data_t *y_test = (data_t*) malloc(TEST_CASES * 10 * sizeof(data_t));

	// Data file has to be 32 bits because that's how simulation deals with data types.
	FILE *fd = fopen("x_test.dat", "rb");
	int read = fread(x_test, 1, TEST_CASES * 784 * sizeof(data_t), fd);
	fclose(fd);

	std::cout << read << " bytes read." << std::endl;
	std::cout << "Expected: " << TEST_CASES * 784 << std::endl;

	fd = fopen("y_test.dat", "rb");
	read = fread(y_test, 1, TEST_CASES * 10 * sizeof(data_t), fd);
	fclose(fd);

	std::cout << read << " bytes read." << std::endl;
	std::cout << "Expected: " << TEST_CASES * 10 << std::endl;

	hls::stream<data_t> data_in;
	hls::stream<result_data_t> result;

	hls::stream<sdata_in_t> sdata_in;
	hls::stream<sdata_out_t> sdata_out;

	int correct = 0;
	for (int i = 0; i < TEST_CASES; i++) {

		// Send input into input stream
		for (int j = 0; j < 784; j++) {
			data_in << x_test[i * 784 + j];
		}

		// Pack into AXIS packets
	    packer<data_t, 8, 784>(data_in, sdata_in);
		mnist(sdata_in, sdata_out);
	    unpacker<result_data_t, 32, 10>(sdata_out, result);

		// Get the prediction
		int answer;
		int res_index = 0;
		result_data_t max = INT_MIN;
		while (!result.empty()) {
			result_data_t curr = result.read();
			if (curr > max) {
				max = curr;
				answer = res_index;
			}
			res_index++;
		}

		// Get the correct answer
		int expected;
		for (int j = 0; j < 10; j++) {
			if (y_test[i * 10 + j] == 1) {
				expected = j;
			}
		}

		if (expected == answer) {
			correct++;
		}
	}

	std::cout << data_in.size() << " data left." << std::endl;
	std::cout << (float) correct / TEST_CASES * 100 << "% accuracy." << std::endl;

	return 0;
}
