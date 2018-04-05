#include "hls_stream.h"
#include "ap_axi_sdata.h"

template<class out_stream_T, int IN_DATA_WIDTH, int LENGTH>
void unpacker(hls::stream<ap_axis<IN_DATA_WIDTH,1,1,1> > &stream_in, hls::stream<out_stream_T> &stream_out)
{
	ap_axis<IN_DATA_WIDTH,1,1,1> packet[LENGTH];
	out_stream_T data[LENGTH];

	Unpack: for (int i = 0; i < LENGTH; i++) {
	#pragma HLS PIPELINE
		packet[i] = stream_in.read();
		data[i] = packet[i].data;
		stream_out << data[i];
	}
}
