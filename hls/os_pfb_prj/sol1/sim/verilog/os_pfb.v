// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="os_pfb,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu28dr-ffvg1517-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=3443,HLS_SYN_TPT=3444,HLS_SYN_MEM=7,HLS_SYN_DSP=16,HLS_SYN_FF=8767,HLS_SYN_LUT=7320,HLS_VERSION=2018_3}" *)

module os_pfb (
        in_r_TDATA,
        out_r_TDATA,
        out_r_TLAST,
        ovflow_TDATA,
        ap_clk,
        ap_rst_n,
        in_r_TVALID,
        in_r_TREADY,
        out_r_TVALID,
        out_r_TREADY,
        ovflow_TVALID,
        ovflow_TREADY
);


input  [63:0] in_r_TDATA;
output  [63:0] out_r_TDATA;
output  [0:0] out_r_TLAST;
output  [7:0] ovflow_TDATA;
input   ap_clk;
input   ap_rst_n;
input   in_r_TVALID;
output   in_r_TREADY;
output   out_r_TVALID;
input   out_r_TREADY;
output   ovflow_TVALID;
input   ovflow_TREADY;

 reg    ap_rst_n_inv;
wire    polyphase_filter_U0_ap_start;
wire    polyphase_filter_U0_start_full_n;
wire    polyphase_filter_U0_ap_done;
wire    polyphase_filter_U0_ap_continue;
wire    polyphase_filter_U0_ap_idle;
wire    polyphase_filter_U0_ap_ready;
wire    polyphase_filter_U0_start_out;
wire    polyphase_filter_U0_start_write;
wire    polyphase_filter_U0_in_r_TREADY;
wire   [63:0] polyphase_filter_U0_filter_out_din;
wire    polyphase_filter_U0_filter_out_write;
wire   [7:0] polyphase_filter_U0_ifft_config_data_V_din;
wire    polyphase_filter_U0_ifft_config_data_V_write;
wire    fft_os_pfb_config_U0_ap_start;
wire    fft_os_pfb_config_U0_ap_done;
wire    fft_os_pfb_config_U0_ap_idle;
wire    fft_os_pfb_config_U0_ap_ready;
wire    fft_os_pfb_config_U0_ap_continue;
wire    fft_os_pfb_config_U0_xn_read;
wire   [63:0] fft_os_pfb_config_U0_xk_din;
wire    fft_os_pfb_config_U0_xk_write;
wire   [7:0] fft_os_pfb_config_U0_status_data_V_din;
wire    fft_os_pfb_config_U0_status_data_V_write;
wire    fft_os_pfb_config_U0_config_ch_data_V_read;
wire    be_U0_ap_start;
wire    be_U0_ap_done;
wire    be_U0_ap_continue;
wire    be_U0_ap_idle;
wire    be_U0_ap_ready;
wire    be_U0_ifft_out_read;
wire   [63:0] be_U0_out_r_TDATA;
wire    be_U0_out_r_TVALID;
wire   [0:0] be_U0_out_r_TLAST;
wire    be_U0_ifft_status_data_V_read;
wire   [7:0] be_U0_ovflow_TDATA;
wire    be_U0_ovflow_TVALID;
wire    ap_sync_continue;
wire    filter_out_channel_full_n;
wire   [63:0] filter_out_channel_dout;
wire    filter_out_channel_empty_n;
wire    ifft_config_data_V_full_n;
wire   [7:0] ifft_config_data_V_dout;
wire    ifft_config_data_V_empty_n;
wire    ifft_out_channel_full_n;
wire   [63:0] ifft_out_channel_dout;
wire    ifft_out_channel_empty_n;
wire    ifft_status_data_V_full_n;
wire   [7:0] ifft_status_data_V_dout;
wire    ifft_status_data_V_empty_n;
wire   [0:0] start_for_fft_os_pfb_config_U0_din;
wire    start_for_fft_os_pfb_config_U0_full_n;
wire   [0:0] start_for_fft_os_pfb_config_U0_dout;
wire    start_for_fft_os_pfb_config_U0_empty_n;
wire   [0:0] start_for_be_U0_din;
wire    start_for_be_U0_full_n;
wire   [0:0] start_for_be_U0_dout;
wire    start_for_be_U0_empty_n;
wire    fft_os_pfb_config_U0_start_full_n;
wire    fft_os_pfb_config_U0_start_write;
wire    be_U0_start_full_n;
wire    be_U0_start_write;

polyphase_filter polyphase_filter_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(polyphase_filter_U0_ap_start),
    .start_full_n(polyphase_filter_U0_start_full_n),
    .ap_done(polyphase_filter_U0_ap_done),
    .ap_continue(polyphase_filter_U0_ap_continue),
    .ap_idle(polyphase_filter_U0_ap_idle),
    .ap_ready(polyphase_filter_U0_ap_ready),
    .start_out(polyphase_filter_U0_start_out),
    .start_write(polyphase_filter_U0_start_write),
    .in_r_TDATA(in_r_TDATA),
    .in_r_TVALID(in_r_TVALID),
    .in_r_TREADY(polyphase_filter_U0_in_r_TREADY),
    .filter_out_din(polyphase_filter_U0_filter_out_din),
    .filter_out_full_n(filter_out_channel_full_n),
    .filter_out_write(polyphase_filter_U0_filter_out_write),
    .ifft_config_data_V_din(polyphase_filter_U0_ifft_config_data_V_din),
    .ifft_config_data_V_full_n(ifft_config_data_V_full_n),
    .ifft_config_data_V_write(polyphase_filter_U0_ifft_config_data_V_write)
);

fft_os_pfb_config_s fft_os_pfb_config_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(fft_os_pfb_config_U0_ap_start),
    .ap_ce(1'b1),
    .ap_done(fft_os_pfb_config_U0_ap_done),
    .ap_idle(fft_os_pfb_config_U0_ap_idle),
    .ap_ready(fft_os_pfb_config_U0_ap_ready),
    .ap_continue(fft_os_pfb_config_U0_ap_continue),
    .xn_dout(filter_out_channel_dout),
    .xn_empty_n(filter_out_channel_empty_n),
    .xn_read(fft_os_pfb_config_U0_xn_read),
    .xk_din(fft_os_pfb_config_U0_xk_din),
    .xk_full_n(ifft_out_channel_full_n),
    .xk_write(fft_os_pfb_config_U0_xk_write),
    .status_data_V_din(fft_os_pfb_config_U0_status_data_V_din),
    .status_data_V_full_n(ifft_status_data_V_full_n),
    .status_data_V_write(fft_os_pfb_config_U0_status_data_V_write),
    .config_ch_data_V_dout(ifft_config_data_V_dout),
    .config_ch_data_V_empty_n(ifft_config_data_V_empty_n),
    .config_ch_data_V_read(fft_os_pfb_config_U0_config_ch_data_V_read)
);

be be_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(be_U0_ap_start),
    .ap_done(be_U0_ap_done),
    .ap_continue(be_U0_ap_continue),
    .ap_idle(be_U0_ap_idle),
    .ap_ready(be_U0_ap_ready),
    .ifft_out_dout(ifft_out_channel_dout),
    .ifft_out_empty_n(ifft_out_channel_empty_n),
    .ifft_out_read(be_U0_ifft_out_read),
    .out_r_TDATA(be_U0_out_r_TDATA),
    .out_r_TVALID(be_U0_out_r_TVALID),
    .out_r_TREADY(out_r_TREADY),
    .out_r_TLAST(be_U0_out_r_TLAST),
    .ifft_status_data_V_dout(ifft_status_data_V_dout),
    .ifft_status_data_V_empty_n(ifft_status_data_V_empty_n),
    .ifft_status_data_V_read(be_U0_ifft_status_data_V_read),
    .ovflow_TDATA(be_U0_ovflow_TDATA),
    .ovflow_TVALID(be_U0_ovflow_TVALID),
    .ovflow_TREADY(ovflow_TREADY)
);

fifo_w64_d1_A filter_out_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(polyphase_filter_U0_filter_out_din),
    .if_full_n(filter_out_channel_full_n),
    .if_write(polyphase_filter_U0_filter_out_write),
    .if_dout(filter_out_channel_dout),
    .if_empty_n(filter_out_channel_empty_n),
    .if_read(fft_os_pfb_config_U0_xn_read)
);

fifo_w8_d1_A ifft_config_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(polyphase_filter_U0_ifft_config_data_V_din),
    .if_full_n(ifft_config_data_V_full_n),
    .if_write(polyphase_filter_U0_ifft_config_data_V_write),
    .if_dout(ifft_config_data_V_dout),
    .if_empty_n(ifft_config_data_V_empty_n),
    .if_read(fft_os_pfb_config_U0_config_ch_data_V_read)
);

fifo_w64_d1_A ifft_out_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(fft_os_pfb_config_U0_xk_din),
    .if_full_n(ifft_out_channel_full_n),
    .if_write(fft_os_pfb_config_U0_xk_write),
    .if_dout(ifft_out_channel_dout),
    .if_empty_n(ifft_out_channel_empty_n),
    .if_read(be_U0_ifft_out_read)
);

fifo_w8_d1_A ifft_status_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(fft_os_pfb_config_U0_status_data_V_din),
    .if_full_n(ifft_status_data_V_full_n),
    .if_write(fft_os_pfb_config_U0_status_data_V_write),
    .if_dout(ifft_status_data_V_dout),
    .if_empty_n(ifft_status_data_V_empty_n),
    .if_read(be_U0_ifft_status_data_V_read)
);

start_for_fft_os_pfb_config_U0 start_for_fft_os_pfb_config_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_fft_os_pfb_config_U0_din),
    .if_full_n(start_for_fft_os_pfb_config_U0_full_n),
    .if_write(polyphase_filter_U0_start_write),
    .if_dout(start_for_fft_os_pfb_config_U0_dout),
    .if_empty_n(start_for_fft_os_pfb_config_U0_empty_n),
    .if_read(fft_os_pfb_config_U0_ap_ready)
);

start_for_be_U0 start_for_be_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_be_U0_din),
    .if_full_n(start_for_be_U0_full_n),
    .if_write(polyphase_filter_U0_start_write),
    .if_dout(start_for_be_U0_dout),
    .if_empty_n(start_for_be_U0_empty_n),
    .if_read(be_U0_ap_ready)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign be_U0_ap_continue = 1'b1;

assign be_U0_ap_start = start_for_be_U0_empty_n;

assign be_U0_start_full_n = 1'b1;

assign be_U0_start_write = 1'b0;

assign fft_os_pfb_config_U0_ap_continue = 1'b1;

assign fft_os_pfb_config_U0_ap_start = start_for_fft_os_pfb_config_U0_empty_n;

assign fft_os_pfb_config_U0_start_full_n = 1'b1;

assign fft_os_pfb_config_U0_start_write = 1'b0;

assign in_r_TREADY = polyphase_filter_U0_in_r_TREADY;

assign out_r_TDATA = be_U0_out_r_TDATA;

assign out_r_TLAST = be_U0_out_r_TLAST;

assign out_r_TVALID = be_U0_out_r_TVALID;

assign ovflow_TDATA = be_U0_ovflow_TDATA;

assign ovflow_TVALID = be_U0_ovflow_TVALID;

assign polyphase_filter_U0_ap_continue = 1'b1;

assign polyphase_filter_U0_ap_start = 1'b1;

assign polyphase_filter_U0_start_full_n = (start_for_fft_os_pfb_config_U0_full_n & start_for_be_U0_full_n);

assign start_for_be_U0_din = 1'b1;

assign start_for_fft_os_pfb_config_U0_din = 1'b1;

endmodule //os_pfb
