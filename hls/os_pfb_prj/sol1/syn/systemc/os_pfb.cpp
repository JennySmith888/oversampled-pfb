// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "os_pfb.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<64> os_pfb::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<1> os_pfb::ap_const_lv1_0 = "0";
const sc_lv<8> os_pfb::ap_const_lv8_0 = "00000000";
const sc_logic os_pfb::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic os_pfb::ap_const_logic_0 = sc_dt::Log_0;

os_pfb::os_pfb(sc_module_name name) : sc_module(name), mVcdFile(0) {
    polyphase_filter_U0 = new polyphase_filter("polyphase_filter_U0");
    polyphase_filter_U0->ap_clk(ap_clk);
    polyphase_filter_U0->ap_rst(ap_rst_n_inv);
    polyphase_filter_U0->ap_start(polyphase_filter_U0_ap_start);
    polyphase_filter_U0->start_full_n(polyphase_filter_U0_start_full_n);
    polyphase_filter_U0->ap_done(polyphase_filter_U0_ap_done);
    polyphase_filter_U0->ap_continue(polyphase_filter_U0_ap_continue);
    polyphase_filter_U0->ap_idle(polyphase_filter_U0_ap_idle);
    polyphase_filter_U0->ap_ready(polyphase_filter_U0_ap_ready);
    polyphase_filter_U0->start_out(polyphase_filter_U0_start_out);
    polyphase_filter_U0->start_write(polyphase_filter_U0_start_write);
    polyphase_filter_U0->in_r_TDATA(in_r_TDATA);
    polyphase_filter_U0->in_r_TVALID(in_r_TVALID);
    polyphase_filter_U0->in_r_TREADY(polyphase_filter_U0_in_r_TREADY);
    polyphase_filter_U0->filter_out_din(polyphase_filter_U0_filter_out_din);
    polyphase_filter_U0->filter_out_full_n(filter_out_channel_full_n);
    polyphase_filter_U0->filter_out_write(polyphase_filter_U0_filter_out_write);
    polyphase_filter_U0->ifft_config_data_V_din(polyphase_filter_U0_ifft_config_data_V_din);
    polyphase_filter_U0->ifft_config_data_V_full_n(ifft_config_data_V_full_n);
    polyphase_filter_U0->ifft_config_data_V_write(polyphase_filter_U0_ifft_config_data_V_write);
    fft_os_pfb_config_U0 = new fft_os_pfb_config_s("fft_os_pfb_config_U0");
    fft_os_pfb_config_U0->ap_clk(ap_clk);
    fft_os_pfb_config_U0->ap_rst(ap_rst_n_inv);
    fft_os_pfb_config_U0->ap_start(fft_os_pfb_config_U0_ap_start);
    fft_os_pfb_config_U0->ap_ce(ap_var_for_const0);
    fft_os_pfb_config_U0->ap_done(fft_os_pfb_config_U0_ap_done);
    fft_os_pfb_config_U0->ap_idle(fft_os_pfb_config_U0_ap_idle);
    fft_os_pfb_config_U0->ap_ready(fft_os_pfb_config_U0_ap_ready);
    fft_os_pfb_config_U0->ap_continue(fft_os_pfb_config_U0_ap_continue);
    fft_os_pfb_config_U0->xn_dout(filter_out_channel_dout);
    fft_os_pfb_config_U0->xn_empty_n(filter_out_channel_empty_n);
    fft_os_pfb_config_U0->xn_read(fft_os_pfb_config_U0_xn_read);
    fft_os_pfb_config_U0->xk_din(fft_os_pfb_config_U0_xk_din);
    fft_os_pfb_config_U0->xk_full_n(ifft_out_channel_full_n);
    fft_os_pfb_config_U0->xk_write(fft_os_pfb_config_U0_xk_write);
    fft_os_pfb_config_U0->status_data_V_din(fft_os_pfb_config_U0_status_data_V_din);
    fft_os_pfb_config_U0->status_data_V_full_n(ifft_status_data_V_full_n);
    fft_os_pfb_config_U0->status_data_V_write(fft_os_pfb_config_U0_status_data_V_write);
    fft_os_pfb_config_U0->config_ch_data_V_dout(ifft_config_data_V_dout);
    fft_os_pfb_config_U0->config_ch_data_V_empty_n(ifft_config_data_V_empty_n);
    fft_os_pfb_config_U0->config_ch_data_V_read(fft_os_pfb_config_U0_config_ch_data_V_read);
    be_U0 = new be("be_U0");
    be_U0->ap_clk(ap_clk);
    be_U0->ap_rst(ap_rst_n_inv);
    be_U0->ap_start(be_U0_ap_start);
    be_U0->ap_done(be_U0_ap_done);
    be_U0->ap_continue(be_U0_ap_continue);
    be_U0->ap_idle(be_U0_ap_idle);
    be_U0->ap_ready(be_U0_ap_ready);
    be_U0->ifft_out_dout(ifft_out_channel_dout);
    be_U0->ifft_out_empty_n(ifft_out_channel_empty_n);
    be_U0->ifft_out_read(be_U0_ifft_out_read);
    be_U0->out_r_TDATA(be_U0_out_r_TDATA);
    be_U0->out_r_TVALID(be_U0_out_r_TVALID);
    be_U0->out_r_TREADY(out_r_TREADY);
    be_U0->out_r_TLAST(be_U0_out_r_TLAST);
    be_U0->ifft_status_data_V_dout(ifft_status_data_V_dout);
    be_U0->ifft_status_data_V_empty_n(ifft_status_data_V_empty_n);
    be_U0->ifft_status_data_V_read(be_U0_ifft_status_data_V_read);
    be_U0->ovflow_TDATA(be_U0_ovflow_TDATA);
    be_U0->ovflow_TVALID(be_U0_ovflow_TVALID);
    be_U0->ovflow_TREADY(ovflow_TREADY);
    filter_out_channel_U = new fifo_w64_d1_A("filter_out_channel_U");
    filter_out_channel_U->clk(ap_clk);
    filter_out_channel_U->reset(ap_rst_n_inv);
    filter_out_channel_U->if_read_ce(ap_var_for_const0);
    filter_out_channel_U->if_write_ce(ap_var_for_const0);
    filter_out_channel_U->if_din(polyphase_filter_U0_filter_out_din);
    filter_out_channel_U->if_full_n(filter_out_channel_full_n);
    filter_out_channel_U->if_write(polyphase_filter_U0_filter_out_write);
    filter_out_channel_U->if_dout(filter_out_channel_dout);
    filter_out_channel_U->if_empty_n(filter_out_channel_empty_n);
    filter_out_channel_U->if_read(fft_os_pfb_config_U0_xn_read);
    ifft_config_data_V_U = new fifo_w8_d1_A("ifft_config_data_V_U");
    ifft_config_data_V_U->clk(ap_clk);
    ifft_config_data_V_U->reset(ap_rst_n_inv);
    ifft_config_data_V_U->if_read_ce(ap_var_for_const0);
    ifft_config_data_V_U->if_write_ce(ap_var_for_const0);
    ifft_config_data_V_U->if_din(polyphase_filter_U0_ifft_config_data_V_din);
    ifft_config_data_V_U->if_full_n(ifft_config_data_V_full_n);
    ifft_config_data_V_U->if_write(polyphase_filter_U0_ifft_config_data_V_write);
    ifft_config_data_V_U->if_dout(ifft_config_data_V_dout);
    ifft_config_data_V_U->if_empty_n(ifft_config_data_V_empty_n);
    ifft_config_data_V_U->if_read(fft_os_pfb_config_U0_config_ch_data_V_read);
    ifft_out_channel_U = new fifo_w64_d1_A("ifft_out_channel_U");
    ifft_out_channel_U->clk(ap_clk);
    ifft_out_channel_U->reset(ap_rst_n_inv);
    ifft_out_channel_U->if_read_ce(ap_var_for_const0);
    ifft_out_channel_U->if_write_ce(ap_var_for_const0);
    ifft_out_channel_U->if_din(fft_os_pfb_config_U0_xk_din);
    ifft_out_channel_U->if_full_n(ifft_out_channel_full_n);
    ifft_out_channel_U->if_write(fft_os_pfb_config_U0_xk_write);
    ifft_out_channel_U->if_dout(ifft_out_channel_dout);
    ifft_out_channel_U->if_empty_n(ifft_out_channel_empty_n);
    ifft_out_channel_U->if_read(be_U0_ifft_out_read);
    ifft_status_data_V_U = new fifo_w8_d1_A("ifft_status_data_V_U");
    ifft_status_data_V_U->clk(ap_clk);
    ifft_status_data_V_U->reset(ap_rst_n_inv);
    ifft_status_data_V_U->if_read_ce(ap_var_for_const0);
    ifft_status_data_V_U->if_write_ce(ap_var_for_const0);
    ifft_status_data_V_U->if_din(fft_os_pfb_config_U0_status_data_V_din);
    ifft_status_data_V_U->if_full_n(ifft_status_data_V_full_n);
    ifft_status_data_V_U->if_write(fft_os_pfb_config_U0_status_data_V_write);
    ifft_status_data_V_U->if_dout(ifft_status_data_V_dout);
    ifft_status_data_V_U->if_empty_n(ifft_status_data_V_empty_n);
    ifft_status_data_V_U->if_read(be_U0_ifft_status_data_V_read);
    start_for_fft_os_jbC_U = new start_for_fft_os_jbC("start_for_fft_os_jbC_U");
    start_for_fft_os_jbC_U->clk(ap_clk);
    start_for_fft_os_jbC_U->reset(ap_rst_n_inv);
    start_for_fft_os_jbC_U->if_read_ce(ap_var_for_const0);
    start_for_fft_os_jbC_U->if_write_ce(ap_var_for_const0);
    start_for_fft_os_jbC_U->if_din(start_for_fft_os_pfb_config_U0_din);
    start_for_fft_os_jbC_U->if_full_n(start_for_fft_os_pfb_config_U0_full_n);
    start_for_fft_os_jbC_U->if_write(polyphase_filter_U0_start_write);
    start_for_fft_os_jbC_U->if_dout(start_for_fft_os_pfb_config_U0_dout);
    start_for_fft_os_jbC_U->if_empty_n(start_for_fft_os_pfb_config_U0_empty_n);
    start_for_fft_os_jbC_U->if_read(fft_os_pfb_config_U0_ap_ready);
    start_for_be_U0_U = new start_for_be_U0("start_for_be_U0_U");
    start_for_be_U0_U->clk(ap_clk);
    start_for_be_U0_U->reset(ap_rst_n_inv);
    start_for_be_U0_U->if_read_ce(ap_var_for_const0);
    start_for_be_U0_U->if_write_ce(ap_var_for_const0);
    start_for_be_U0_U->if_din(start_for_be_U0_din);
    start_for_be_U0_U->if_full_n(start_for_be_U0_full_n);
    start_for_be_U0_U->if_write(polyphase_filter_U0_start_write);
    start_for_be_U0_U->if_dout(start_for_be_U0_dout);
    start_for_be_U0_U->if_empty_n(start_for_be_U0_empty_n);
    start_for_be_U0_U->if_read(be_U0_ap_ready);

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_be_U0_ap_continue);

    SC_METHOD(thread_be_U0_ap_start);
    sensitive << ( start_for_be_U0_empty_n );

    SC_METHOD(thread_be_U0_start_full_n);

    SC_METHOD(thread_be_U0_start_write);

    SC_METHOD(thread_fft_os_pfb_config_U0_ap_continue);

    SC_METHOD(thread_fft_os_pfb_config_U0_ap_start);
    sensitive << ( start_for_fft_os_pfb_config_U0_empty_n );

    SC_METHOD(thread_fft_os_pfb_config_U0_start_full_n);

    SC_METHOD(thread_fft_os_pfb_config_U0_start_write);

    SC_METHOD(thread_in_r_TREADY);
    sensitive << ( polyphase_filter_U0_in_r_TREADY );

    SC_METHOD(thread_out_r_TDATA);
    sensitive << ( be_U0_out_r_TDATA );

    SC_METHOD(thread_out_r_TLAST);
    sensitive << ( be_U0_out_r_TLAST );

    SC_METHOD(thread_out_r_TVALID);
    sensitive << ( be_U0_out_r_TVALID );

    SC_METHOD(thread_ovflow_TDATA);
    sensitive << ( be_U0_ovflow_TDATA );

    SC_METHOD(thread_ovflow_TVALID);
    sensitive << ( be_U0_ovflow_TVALID );

    SC_METHOD(thread_polyphase_filter_U0_ap_continue);

    SC_METHOD(thread_polyphase_filter_U0_ap_start);

    SC_METHOD(thread_polyphase_filter_U0_start_full_n);
    sensitive << ( start_for_fft_os_pfb_config_U0_full_n );
    sensitive << ( start_for_be_U0_full_n );

    SC_METHOD(thread_start_for_be_U0_din);

    SC_METHOD(thread_start_for_fft_os_pfb_config_U0_din);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "os_pfb_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, in_r_TDATA, "(port)in_r_TDATA");
    sc_trace(mVcdFile, out_r_TDATA, "(port)out_r_TDATA");
    sc_trace(mVcdFile, out_r_TLAST, "(port)out_r_TLAST");
    sc_trace(mVcdFile, ovflow_TDATA, "(port)ovflow_TDATA");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, in_r_TVALID, "(port)in_r_TVALID");
    sc_trace(mVcdFile, in_r_TREADY, "(port)in_r_TREADY");
    sc_trace(mVcdFile, out_r_TVALID, "(port)out_r_TVALID");
    sc_trace(mVcdFile, out_r_TREADY, "(port)out_r_TREADY");
    sc_trace(mVcdFile, ovflow_TVALID, "(port)ovflow_TVALID");
    sc_trace(mVcdFile, ovflow_TREADY, "(port)ovflow_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, polyphase_filter_U0_ap_start, "polyphase_filter_U0_ap_start");
    sc_trace(mVcdFile, polyphase_filter_U0_start_full_n, "polyphase_filter_U0_start_full_n");
    sc_trace(mVcdFile, polyphase_filter_U0_ap_done, "polyphase_filter_U0_ap_done");
    sc_trace(mVcdFile, polyphase_filter_U0_ap_continue, "polyphase_filter_U0_ap_continue");
    sc_trace(mVcdFile, polyphase_filter_U0_ap_idle, "polyphase_filter_U0_ap_idle");
    sc_trace(mVcdFile, polyphase_filter_U0_ap_ready, "polyphase_filter_U0_ap_ready");
    sc_trace(mVcdFile, polyphase_filter_U0_start_out, "polyphase_filter_U0_start_out");
    sc_trace(mVcdFile, polyphase_filter_U0_start_write, "polyphase_filter_U0_start_write");
    sc_trace(mVcdFile, polyphase_filter_U0_in_r_TREADY, "polyphase_filter_U0_in_r_TREADY");
    sc_trace(mVcdFile, polyphase_filter_U0_filter_out_din, "polyphase_filter_U0_filter_out_din");
    sc_trace(mVcdFile, polyphase_filter_U0_filter_out_write, "polyphase_filter_U0_filter_out_write");
    sc_trace(mVcdFile, polyphase_filter_U0_ifft_config_data_V_din, "polyphase_filter_U0_ifft_config_data_V_din");
    sc_trace(mVcdFile, polyphase_filter_U0_ifft_config_data_V_write, "polyphase_filter_U0_ifft_config_data_V_write");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_ap_start, "fft_os_pfb_config_U0_ap_start");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_ap_done, "fft_os_pfb_config_U0_ap_done");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_ap_idle, "fft_os_pfb_config_U0_ap_idle");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_ap_ready, "fft_os_pfb_config_U0_ap_ready");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_ap_continue, "fft_os_pfb_config_U0_ap_continue");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_xn_read, "fft_os_pfb_config_U0_xn_read");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_xk_din, "fft_os_pfb_config_U0_xk_din");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_xk_write, "fft_os_pfb_config_U0_xk_write");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_status_data_V_din, "fft_os_pfb_config_U0_status_data_V_din");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_status_data_V_write, "fft_os_pfb_config_U0_status_data_V_write");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_config_ch_data_V_read, "fft_os_pfb_config_U0_config_ch_data_V_read");
    sc_trace(mVcdFile, be_U0_ap_start, "be_U0_ap_start");
    sc_trace(mVcdFile, be_U0_ap_done, "be_U0_ap_done");
    sc_trace(mVcdFile, be_U0_ap_continue, "be_U0_ap_continue");
    sc_trace(mVcdFile, be_U0_ap_idle, "be_U0_ap_idle");
    sc_trace(mVcdFile, be_U0_ap_ready, "be_U0_ap_ready");
    sc_trace(mVcdFile, be_U0_ifft_out_read, "be_U0_ifft_out_read");
    sc_trace(mVcdFile, be_U0_out_r_TDATA, "be_U0_out_r_TDATA");
    sc_trace(mVcdFile, be_U0_out_r_TVALID, "be_U0_out_r_TVALID");
    sc_trace(mVcdFile, be_U0_out_r_TLAST, "be_U0_out_r_TLAST");
    sc_trace(mVcdFile, be_U0_ifft_status_data_V_read, "be_U0_ifft_status_data_V_read");
    sc_trace(mVcdFile, be_U0_ovflow_TDATA, "be_U0_ovflow_TDATA");
    sc_trace(mVcdFile, be_U0_ovflow_TVALID, "be_U0_ovflow_TVALID");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, filter_out_channel_full_n, "filter_out_channel_full_n");
    sc_trace(mVcdFile, filter_out_channel_dout, "filter_out_channel_dout");
    sc_trace(mVcdFile, filter_out_channel_empty_n, "filter_out_channel_empty_n");
    sc_trace(mVcdFile, ifft_config_data_V_full_n, "ifft_config_data_V_full_n");
    sc_trace(mVcdFile, ifft_config_data_V_dout, "ifft_config_data_V_dout");
    sc_trace(mVcdFile, ifft_config_data_V_empty_n, "ifft_config_data_V_empty_n");
    sc_trace(mVcdFile, ifft_out_channel_full_n, "ifft_out_channel_full_n");
    sc_trace(mVcdFile, ifft_out_channel_dout, "ifft_out_channel_dout");
    sc_trace(mVcdFile, ifft_out_channel_empty_n, "ifft_out_channel_empty_n");
    sc_trace(mVcdFile, ifft_status_data_V_full_n, "ifft_status_data_V_full_n");
    sc_trace(mVcdFile, ifft_status_data_V_dout, "ifft_status_data_V_dout");
    sc_trace(mVcdFile, ifft_status_data_V_empty_n, "ifft_status_data_V_empty_n");
    sc_trace(mVcdFile, start_for_fft_os_pfb_config_U0_din, "start_for_fft_os_pfb_config_U0_din");
    sc_trace(mVcdFile, start_for_fft_os_pfb_config_U0_full_n, "start_for_fft_os_pfb_config_U0_full_n");
    sc_trace(mVcdFile, start_for_fft_os_pfb_config_U0_dout, "start_for_fft_os_pfb_config_U0_dout");
    sc_trace(mVcdFile, start_for_fft_os_pfb_config_U0_empty_n, "start_for_fft_os_pfb_config_U0_empty_n");
    sc_trace(mVcdFile, start_for_be_U0_din, "start_for_be_U0_din");
    sc_trace(mVcdFile, start_for_be_U0_full_n, "start_for_be_U0_full_n");
    sc_trace(mVcdFile, start_for_be_U0_dout, "start_for_be_U0_dout");
    sc_trace(mVcdFile, start_for_be_U0_empty_n, "start_for_be_U0_empty_n");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_start_full_n, "fft_os_pfb_config_U0_start_full_n");
    sc_trace(mVcdFile, fft_os_pfb_config_U0_start_write, "fft_os_pfb_config_U0_start_write");
    sc_trace(mVcdFile, be_U0_start_full_n, "be_U0_start_full_n");
    sc_trace(mVcdFile, be_U0_start_write, "be_U0_start_write");
#endif

    }
    mHdltvinHandle.open("os_pfb.hdltvin.dat");
    mHdltvoutHandle.open("os_pfb.hdltvout.dat");
}

os_pfb::~os_pfb() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete polyphase_filter_U0;
    delete fft_os_pfb_config_U0;
    delete be_U0;
    delete filter_out_channel_U;
    delete ifft_config_data_V_U;
    delete ifft_out_channel_U;
    delete ifft_status_data_V_U;
    delete start_for_fft_os_jbC_U;
    delete start_for_be_U0_U;
}

void os_pfb::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void os_pfb::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void os_pfb::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_0;
}

void os_pfb::thread_be_U0_ap_continue() {
    be_U0_ap_continue = ap_const_logic_1;
}

void os_pfb::thread_be_U0_ap_start() {
    be_U0_ap_start = start_for_be_U0_empty_n.read();
}

void os_pfb::thread_be_U0_start_full_n() {
    be_U0_start_full_n = ap_const_logic_1;
}

void os_pfb::thread_be_U0_start_write() {
    be_U0_start_write = ap_const_logic_0;
}

void os_pfb::thread_fft_os_pfb_config_U0_ap_continue() {
    fft_os_pfb_config_U0_ap_continue = ap_const_logic_1;
}

void os_pfb::thread_fft_os_pfb_config_U0_ap_start() {
    fft_os_pfb_config_U0_ap_start = start_for_fft_os_pfb_config_U0_empty_n.read();
}

void os_pfb::thread_fft_os_pfb_config_U0_start_full_n() {
    fft_os_pfb_config_U0_start_full_n = ap_const_logic_1;
}

void os_pfb::thread_fft_os_pfb_config_U0_start_write() {
    fft_os_pfb_config_U0_start_write = ap_const_logic_0;
}

void os_pfb::thread_in_r_TREADY() {
    in_r_TREADY = polyphase_filter_U0_in_r_TREADY.read();
}

void os_pfb::thread_out_r_TDATA() {
    out_r_TDATA = be_U0_out_r_TDATA.read();
}

void os_pfb::thread_out_r_TLAST() {
    out_r_TLAST = be_U0_out_r_TLAST.read();
}

void os_pfb::thread_out_r_TVALID() {
    out_r_TVALID = be_U0_out_r_TVALID.read();
}

void os_pfb::thread_ovflow_TDATA() {
    ovflow_TDATA = be_U0_ovflow_TDATA.read();
}

void os_pfb::thread_ovflow_TVALID() {
    ovflow_TVALID = be_U0_ovflow_TVALID.read();
}

void os_pfb::thread_polyphase_filter_U0_ap_continue() {
    polyphase_filter_U0_ap_continue = ap_const_logic_1;
}

void os_pfb::thread_polyphase_filter_U0_ap_start() {
    polyphase_filter_U0_ap_start = ap_const_logic_1;
}

void os_pfb::thread_polyphase_filter_U0_start_full_n() {
    polyphase_filter_U0_start_full_n = (start_for_fft_os_pfb_config_U0_full_n.read() & start_for_be_U0_full_n.read());
}

void os_pfb::thread_start_for_be_U0_din() {
    start_for_be_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void os_pfb::thread_start_for_fft_os_pfb_config_U0_din() {
    start_for_fft_os_pfb_config_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void os_pfb::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"in_r_TDATA\" :  \"" << in_r_TDATA.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"out_r_TDATA\" :  \"" << out_r_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TLAST\" :  \"" << out_r_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ovflow_TDATA\" :  \"" << ovflow_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_TVALID\" :  \"" << in_r_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_TREADY\" :  \"" << in_r_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_TVALID\" :  \"" << out_r_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_r_TREADY\" :  \"" << out_r_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ovflow_TVALID\" :  \"" << ovflow_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ovflow_TREADY\" :  \"" << ovflow_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
