#include "hls_stream.h"
#include "complete_register.cpp"

#define LENGTH 100

void exact_dot_product(hls::stream<data_t> &data_in, hls::stream<data_t> &data_out)
{
	CompleteRegister cr;
	data_t data_cache;
	Accumulate: for (int i = 0; i < LENGTH; i++) {
		data_cache = data_in.read();
		cr.multiply_accumulate(0.5, data_cache);
	}

	// Read results
	data_out << cr.get_result();
}
