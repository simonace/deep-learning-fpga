#include "linear_activation.hpp"

template<class data_T, class result_data_T, class weight_T, class bias_T, class acc_T, int INPUT_DIM, int HIDDEN_UNITS>
void linear_activation(
        hls::stream<data_T> &data_in,
        hls::stream<result_data_T> &data_out,
        weight_T weights[INPUT_DIM][HIDDEN_UNITS],
        bias_T bias[HIDDEN_UNITS]
) {
    data_T data_cache;
    acc_T acc[HIDDEN_UNITS];

    #pragma HLS ARRAY_PARTITION variable=weights cyclic factor=128 dim=2
    #pragma HLS ARRAY_PARTITION variable=acc cyclic factor=128 dim=1

    // Optional... Cuts down on a few of the BRAMs
    #pragma HLS RESOURCE variable=acc core=RAM_2P_LUTRAM

    Reset: for(int iacc = 0; iacc < HIDDEN_UNITS; iacc++) {
        #pragma HLS UNROLL factor=128
        acc[iacc] = 0;
    }

    NewInput: for(int ii = 0; ii < INPUT_DIM; ii++) {
        data_cache = data_in.read();
        Product: for(int jj = 0; jj < HIDDEN_UNITS; jj++) {
        #pragma HLS UNROLL factor=128
        #pragma HLS PIPELINE
            acc[jj] += data_cache * weights[ii][jj];
        }
    }

    Result: for(int ires = 0; ires < HIDDEN_UNITS; ires++) {
    #pragma HLS PIPELINE
        data_out << (result_data_T) (acc[ires] + (acc_T) bias[ires]);
    }
}
