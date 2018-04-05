#include "neural_network.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void neural_network::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"m_axi_mem_V_AWVALID\" :  \"" << m_axi_mem_V_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_AWREADY\" :  \"" << m_axi_mem_V_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWADDR\" :  \"" << m_axi_mem_V_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWID\" :  \"" << m_axi_mem_V_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWLEN\" :  \"" << m_axi_mem_V_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWSIZE\" :  \"" << m_axi_mem_V_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWBURST\" :  \"" << m_axi_mem_V_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWLOCK\" :  \"" << m_axi_mem_V_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWCACHE\" :  \"" << m_axi_mem_V_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWPROT\" :  \"" << m_axi_mem_V_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWQOS\" :  \"" << m_axi_mem_V_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWREGION\" :  \"" << m_axi_mem_V_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_AWUSER\" :  \"" << m_axi_mem_V_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WVALID\" :  \"" << m_axi_mem_V_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_WREADY\" :  \"" << m_axi_mem_V_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WDATA\" :  \"" << m_axi_mem_V_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WSTRB\" :  \"" << m_axi_mem_V_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WLAST\" :  \"" << m_axi_mem_V_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WID\" :  \"" << m_axi_mem_V_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_WUSER\" :  \"" << m_axi_mem_V_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARVALID\" :  \"" << m_axi_mem_V_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_ARREADY\" :  \"" << m_axi_mem_V_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARADDR\" :  \"" << m_axi_mem_V_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARID\" :  \"" << m_axi_mem_V_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARLEN\" :  \"" << m_axi_mem_V_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARSIZE\" :  \"" << m_axi_mem_V_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARBURST\" :  \"" << m_axi_mem_V_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARLOCK\" :  \"" << m_axi_mem_V_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARCACHE\" :  \"" << m_axi_mem_V_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARPROT\" :  \"" << m_axi_mem_V_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARQOS\" :  \"" << m_axi_mem_V_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARREGION\" :  \"" << m_axi_mem_V_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_ARUSER\" :  \"" << m_axi_mem_V_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RVALID\" :  \"" << m_axi_mem_V_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_RREADY\" :  \"" << m_axi_mem_V_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RDATA\" :  \"" << m_axi_mem_V_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RLAST\" :  \"" << m_axi_mem_V_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RID\" :  \"" << m_axi_mem_V_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RUSER\" :  \"" << m_axi_mem_V_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_RRESP\" :  \"" << m_axi_mem_V_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_BVALID\" :  \"" << m_axi_mem_V_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_mem_V_BREADY\" :  \"" << m_axi_mem_V_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_BRESP\" :  \"" << m_axi_mem_V_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_BID\" :  \"" << m_axi_mem_V_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_mem_V_BUSER\" :  \"" << m_axi_mem_V_BUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWVALID\" :  \"" << m_axi_out_V_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_AWREADY\" :  \"" << m_axi_out_V_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWADDR\" :  \"" << m_axi_out_V_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWID\" :  \"" << m_axi_out_V_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWLEN\" :  \"" << m_axi_out_V_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWSIZE\" :  \"" << m_axi_out_V_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWBURST\" :  \"" << m_axi_out_V_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWLOCK\" :  \"" << m_axi_out_V_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWCACHE\" :  \"" << m_axi_out_V_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWPROT\" :  \"" << m_axi_out_V_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWQOS\" :  \"" << m_axi_out_V_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWREGION\" :  \"" << m_axi_out_V_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_AWUSER\" :  \"" << m_axi_out_V_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WVALID\" :  \"" << m_axi_out_V_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_WREADY\" :  \"" << m_axi_out_V_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WDATA\" :  \"" << m_axi_out_V_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WSTRB\" :  \"" << m_axi_out_V_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WLAST\" :  \"" << m_axi_out_V_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WID\" :  \"" << m_axi_out_V_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_WUSER\" :  \"" << m_axi_out_V_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARVALID\" :  \"" << m_axi_out_V_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_ARREADY\" :  \"" << m_axi_out_V_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARADDR\" :  \"" << m_axi_out_V_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARID\" :  \"" << m_axi_out_V_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARLEN\" :  \"" << m_axi_out_V_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARSIZE\" :  \"" << m_axi_out_V_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARBURST\" :  \"" << m_axi_out_V_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARLOCK\" :  \"" << m_axi_out_V_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARCACHE\" :  \"" << m_axi_out_V_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARPROT\" :  \"" << m_axi_out_V_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARQOS\" :  \"" << m_axi_out_V_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARREGION\" :  \"" << m_axi_out_V_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_ARUSER\" :  \"" << m_axi_out_V_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RVALID\" :  \"" << m_axi_out_V_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_RREADY\" :  \"" << m_axi_out_V_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RDATA\" :  \"" << m_axi_out_V_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RLAST\" :  \"" << m_axi_out_V_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RID\" :  \"" << m_axi_out_V_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RUSER\" :  \"" << m_axi_out_V_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_RRESP\" :  \"" << m_axi_out_V_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_BVALID\" :  \"" << m_axi_out_V_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_out_V_BREADY\" :  \"" << m_axi_out_V_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_BRESP\" :  \"" << m_axi_out_V_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_BID\" :  \"" << m_axi_out_V_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_out_V_BUSER\" :  \"" << m_axi_out_V_BUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_AWVALID\" :  \"" << s_axi_ctrl_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_AWREADY\" :  \"" << s_axi_ctrl_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_AWADDR\" :  \"" << s_axi_ctrl_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WVALID\" :  \"" << s_axi_ctrl_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_WREADY\" :  \"" << s_axi_ctrl_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WDATA\" :  \"" << s_axi_ctrl_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_WSTRB\" :  \"" << s_axi_ctrl_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_ARVALID\" :  \"" << s_axi_ctrl_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_ARREADY\" :  \"" << s_axi_ctrl_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_ARADDR\" :  \"" << s_axi_ctrl_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RVALID\" :  \"" << s_axi_ctrl_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_RREADY\" :  \"" << s_axi_ctrl_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RDATA\" :  \"" << s_axi_ctrl_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_RRESP\" :  \"" << s_axi_ctrl_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_BVALID\" :  \"" << s_axi_ctrl_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_ctrl_BREADY\" :  \"" << s_axi_ctrl_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_ctrl_BRESP\" :  \"" << s_axi_ctrl_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

