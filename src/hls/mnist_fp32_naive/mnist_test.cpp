#include "mnist_fp32_naive.hpp"
#include "hls_stream.h"
#include "limits.h"

#define TEST_CASES 1000

int main()
{
	// Read file
	data_t *x_test = (data_t*) malloc(TEST_CASES * 784 * sizeof(data_t));

	FILE *fd = fopen("x_test.dat", "rb");
	int read = fread(x_test, 1, TEST_CASES * 784 * sizeof(data_t), fd);
	fclose(fd);

	std::cout << read << " bytes read." << std::endl;
	std::cout << "Expected: " << TEST_CASES * 784 * sizeof(data_t) << std::endl;

	int write;
	fd = fopen("results.dat", "wb");

	hls::stream<data_t> data_in;
	hls::stream<result_data_t> result;

	hls::stream<sdata_in_t> sdata_in;
	hls::stream<sdata_out_t> sdata_out;

	for (int i = 0; i < TEST_CASES; i++) {
		// Send input into input stream
		for (int j = 0; j < 784; j++) {
			data_in << fp_struct<float>(x_test[i * 784 + j]).to_float();
		}

		// Pack into AXIS packets
	    packer<data_t, 32, 784>(data_in, sdata_in);
		mnist_fp32_naive(sdata_in, sdata_out);
	    unpacker<result_data_t, 32, 10>(sdata_out, result);

		// Write the prediction into the results file as 32-bit unsigned integers
		int answer;
		while (!result.empty()) {
			result_data_t curr = result.read();
			write += fwrite(&curr, sizeof(result_data_t), 1, fd);
		}
	}

	fclose(fd);
	std::cout << data_in.size() << " data left." << std::endl;
	std::cout << write << " bytes of results wrote." << std::endl;

	return 0;
}
