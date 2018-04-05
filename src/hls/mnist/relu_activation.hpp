#include "hls_stream.h"
    
template<class data_T, class res_T, int N_IN>
void relu(hls::stream<data_T> &data_in, hls::stream<res_T> &data_out)
{
    data_T data;
    for (int ii=0; ii<N_IN; ii++) {
        data = data_in.read();
        if (data > 0) data_out << data;
        else data_out << 0;
    }
}
