#include "mnist_edp.hpp"

// Data files
#include "l1_b_data.h"
#include "l1_w_data.h"
#include "l2_b_data.h"
#include "l2_w_data.h"

#define INPUT_DIM 784
#define LAYER_1_UNITS 64
#define LAYER_2_UNITS 10

void mnist_edp(
	hls::stream<sdata_in_t> &sdata_in,
	hls::stream<sdata_out_t> &sdata_out
) {
#pragma HLS INTERFACE axis register both port=sdata_in
#pragma HLS INTERFACE axis register both port=sdata_out
#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS DATAFLOW

    hls::stream<data_t> data_in;
    hls::stream<result_data_t> data_out;

    // Unpack AXIS packets
    unpacker<data_t, 16, INPUT_DIM>(sdata_in, data_in);

	// Layer 1
	hls::stream<result_data_t> l1_result, l1_relu;
	linear_activation<data_t, result_data_t, data_t, data_t, result_data_t, INPUT_DIM, LAYER_1_UNITS>(data_in, l1_result, L1_WEIGHTS, L1_BIAS);
	relu<result_data_t, result_data_t, LAYER_1_UNITS>(l1_result, l1_relu);

	// Layer 2
	linear_activation<result_data_t, result_data_t, data_t, data_t, result_data_t, LAYER_1_UNITS, LAYER_2_UNITS>(l1_relu, data_out, L2_WEIGHTS, L2_BIAS);

	// Pack into AXIS packets
    packer<result_data_t, 16, LAYER_2_UNITS>(data_out, sdata_out);
}
