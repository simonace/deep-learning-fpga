#include "hls_stream.h"
#include "ap_axi_sdata.h"

template<class in_stream_T, int OUT_DATA_WIDTH, int LENGTH>
void packer(hls::stream<in_stream_T> &stream_in, hls::stream<ap_axis<OUT_DATA_WIDTH,1,1,1> > &stream_out)
{
	in_stream_T data[LENGTH];
	ap_axis<OUT_DATA_WIDTH,1,1,1> packet[LENGTH];

	Pack: for (int i = 0; i < LENGTH; i++) {
	#pragma HLS PIPELINE
		data[i] = stream_in.read();
		packet[i].data = data[i];
		// Packet is not be discarded!
		packet[i].keep = ~(packet[i].keep & 0);
		packet[i].strb = ~(packet[i].strb & 0);
		if (i == LENGTH-1){
			packet[i].last = true;
		} else {
			packet[i].last = false;
		}

		stream_out << packet[i];
	}
}
