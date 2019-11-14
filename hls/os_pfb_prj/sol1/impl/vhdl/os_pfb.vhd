-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity os_pfb is
port (
    in_r_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_r_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ovflow_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    in_r_TVALID : IN STD_LOGIC;
    in_r_TREADY : OUT STD_LOGIC;
    out_r_TVALID : OUT STD_LOGIC;
    out_r_TREADY : IN STD_LOGIC;
    ovflow_TVALID : OUT STD_LOGIC;
    ovflow_TREADY : IN STD_LOGIC );
end;


architecture behav of os_pfb is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "os_pfb,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu28dr-ffvg1517-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=3443,HLS_SYN_TPT=3444,HLS_SYN_MEM=7,HLS_SYN_DSP=16,HLS_SYN_FF=8477,HLS_SYN_LUT=7176,HLS_VERSION=2019_2}";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal polyphase_filter_U0_ap_start : STD_LOGIC;
    signal polyphase_filter_U0_start_full_n : STD_LOGIC;
    signal polyphase_filter_U0_ap_done : STD_LOGIC;
    signal polyphase_filter_U0_ap_continue : STD_LOGIC;
    signal polyphase_filter_U0_ap_idle : STD_LOGIC;
    signal polyphase_filter_U0_ap_ready : STD_LOGIC;
    signal polyphase_filter_U0_start_out : STD_LOGIC;
    signal polyphase_filter_U0_start_write : STD_LOGIC;
    signal polyphase_filter_U0_in_r_TREADY : STD_LOGIC;
    signal polyphase_filter_U0_filter_out_din : STD_LOGIC_VECTOR (63 downto 0);
    signal polyphase_filter_U0_filter_out_write : STD_LOGIC;
    signal polyphase_filter_U0_ifft_config_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal polyphase_filter_U0_ifft_config_data_V_write : STD_LOGIC;
    signal fft_os_pfb_config_U0_ap_start : STD_LOGIC;
    signal fft_os_pfb_config_U0_ap_done : STD_LOGIC;
    signal fft_os_pfb_config_U0_ap_idle : STD_LOGIC;
    signal fft_os_pfb_config_U0_ap_ready : STD_LOGIC;
    signal fft_os_pfb_config_U0_ap_continue : STD_LOGIC;
    signal fft_os_pfb_config_U0_xn_read : STD_LOGIC;
    signal fft_os_pfb_config_U0_xk_din : STD_LOGIC_VECTOR (63 downto 0);
    signal fft_os_pfb_config_U0_xk_write : STD_LOGIC;
    signal fft_os_pfb_config_U0_status_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal fft_os_pfb_config_U0_status_data_V_write : STD_LOGIC;
    signal fft_os_pfb_config_U0_config_ch_data_V_read : STD_LOGIC;
    signal be_U0_ap_start : STD_LOGIC;
    signal be_U0_ap_done : STD_LOGIC;
    signal be_U0_ap_continue : STD_LOGIC;
    signal be_U0_ap_idle : STD_LOGIC;
    signal be_U0_ap_ready : STD_LOGIC;
    signal be_U0_ifft_out_read : STD_LOGIC;
    signal be_U0_out_r_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal be_U0_out_r_TVALID : STD_LOGIC;
    signal be_U0_out_r_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal be_U0_ifft_status_data_V_read : STD_LOGIC;
    signal be_U0_ovflow_TDATA : STD_LOGIC_VECTOR (7 downto 0);
    signal be_U0_ovflow_TVALID : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal filter_out_channel_full_n : STD_LOGIC;
    signal filter_out_channel_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal filter_out_channel_empty_n : STD_LOGIC;
    signal ifft_config_data_V_full_n : STD_LOGIC;
    signal ifft_config_data_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal ifft_config_data_V_empty_n : STD_LOGIC;
    signal ifft_out_channel_full_n : STD_LOGIC;
    signal ifft_out_channel_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal ifft_out_channel_empty_n : STD_LOGIC;
    signal ifft_status_data_V_full_n : STD_LOGIC;
    signal ifft_status_data_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal ifft_status_data_V_empty_n : STD_LOGIC;
    signal start_for_fft_os_pfb_config_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fft_os_pfb_config_U0_full_n : STD_LOGIC;
    signal start_for_fft_os_pfb_config_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fft_os_pfb_config_U0_empty_n : STD_LOGIC;
    signal start_for_be_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_be_U0_full_n : STD_LOGIC;
    signal start_for_be_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_be_U0_empty_n : STD_LOGIC;
    signal fft_os_pfb_config_U0_start_full_n : STD_LOGIC;
    signal fft_os_pfb_config_U0_start_write : STD_LOGIC;
    signal be_U0_start_full_n : STD_LOGIC;
    signal be_U0_start_write : STD_LOGIC;

    component polyphase_filter IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        in_r_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        in_r_TVALID : IN STD_LOGIC;
        in_r_TREADY : OUT STD_LOGIC;
        filter_out_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        filter_out_full_n : IN STD_LOGIC;
        filter_out_write : OUT STD_LOGIC;
        ifft_config_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        ifft_config_data_V_full_n : IN STD_LOGIC;
        ifft_config_data_V_write : OUT STD_LOGIC );
    end component;


    component fft_os_pfb_config_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ce : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        xn_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        xn_empty_n : IN STD_LOGIC;
        xn_read : OUT STD_LOGIC;
        xk_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        xk_full_n : IN STD_LOGIC;
        xk_write : OUT STD_LOGIC;
        status_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        status_data_V_full_n : IN STD_LOGIC;
        status_data_V_write : OUT STD_LOGIC;
        config_ch_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        config_ch_data_V_empty_n : IN STD_LOGIC;
        config_ch_data_V_read : OUT STD_LOGIC );
    end component;


    component be IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ifft_out_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        ifft_out_empty_n : IN STD_LOGIC;
        ifft_out_read : OUT STD_LOGIC;
        out_r_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        out_r_TVALID : OUT STD_LOGIC;
        out_r_TREADY : IN STD_LOGIC;
        out_r_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        ifft_status_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        ifft_status_data_V_empty_n : IN STD_LOGIC;
        ifft_status_data_V_read : OUT STD_LOGIC;
        ovflow_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
        ovflow_TVALID : OUT STD_LOGIC;
        ovflow_TREADY : IN STD_LOGIC );
    end component;


    component fifo_w64_d1_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d1_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_fft_os_jbC IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_be_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    polyphase_filter_U0 : component polyphase_filter
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => polyphase_filter_U0_ap_start,
        start_full_n => polyphase_filter_U0_start_full_n,
        ap_done => polyphase_filter_U0_ap_done,
        ap_continue => polyphase_filter_U0_ap_continue,
        ap_idle => polyphase_filter_U0_ap_idle,
        ap_ready => polyphase_filter_U0_ap_ready,
        start_out => polyphase_filter_U0_start_out,
        start_write => polyphase_filter_U0_start_write,
        in_r_TDATA => in_r_TDATA,
        in_r_TVALID => in_r_TVALID,
        in_r_TREADY => polyphase_filter_U0_in_r_TREADY,
        filter_out_din => polyphase_filter_U0_filter_out_din,
        filter_out_full_n => filter_out_channel_full_n,
        filter_out_write => polyphase_filter_U0_filter_out_write,
        ifft_config_data_V_din => polyphase_filter_U0_ifft_config_data_V_din,
        ifft_config_data_V_full_n => ifft_config_data_V_full_n,
        ifft_config_data_V_write => polyphase_filter_U0_ifft_config_data_V_write);

    fft_os_pfb_config_U0 : component fft_os_pfb_config_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => fft_os_pfb_config_U0_ap_start,
        ap_ce => ap_const_logic_1,
        ap_done => fft_os_pfb_config_U0_ap_done,
        ap_idle => fft_os_pfb_config_U0_ap_idle,
        ap_ready => fft_os_pfb_config_U0_ap_ready,
        ap_continue => fft_os_pfb_config_U0_ap_continue,
        xn_dout => filter_out_channel_dout,
        xn_empty_n => filter_out_channel_empty_n,
        xn_read => fft_os_pfb_config_U0_xn_read,
        xk_din => fft_os_pfb_config_U0_xk_din,
        xk_full_n => ifft_out_channel_full_n,
        xk_write => fft_os_pfb_config_U0_xk_write,
        status_data_V_din => fft_os_pfb_config_U0_status_data_V_din,
        status_data_V_full_n => ifft_status_data_V_full_n,
        status_data_V_write => fft_os_pfb_config_U0_status_data_V_write,
        config_ch_data_V_dout => ifft_config_data_V_dout,
        config_ch_data_V_empty_n => ifft_config_data_V_empty_n,
        config_ch_data_V_read => fft_os_pfb_config_U0_config_ch_data_V_read);

    be_U0 : component be
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => be_U0_ap_start,
        ap_done => be_U0_ap_done,
        ap_continue => be_U0_ap_continue,
        ap_idle => be_U0_ap_idle,
        ap_ready => be_U0_ap_ready,
        ifft_out_dout => ifft_out_channel_dout,
        ifft_out_empty_n => ifft_out_channel_empty_n,
        ifft_out_read => be_U0_ifft_out_read,
        out_r_TDATA => be_U0_out_r_TDATA,
        out_r_TVALID => be_U0_out_r_TVALID,
        out_r_TREADY => out_r_TREADY,
        out_r_TLAST => be_U0_out_r_TLAST,
        ifft_status_data_V_dout => ifft_status_data_V_dout,
        ifft_status_data_V_empty_n => ifft_status_data_V_empty_n,
        ifft_status_data_V_read => be_U0_ifft_status_data_V_read,
        ovflow_TDATA => be_U0_ovflow_TDATA,
        ovflow_TVALID => be_U0_ovflow_TVALID,
        ovflow_TREADY => ovflow_TREADY);

    filter_out_channel_U : component fifo_w64_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => polyphase_filter_U0_filter_out_din,
        if_full_n => filter_out_channel_full_n,
        if_write => polyphase_filter_U0_filter_out_write,
        if_dout => filter_out_channel_dout,
        if_empty_n => filter_out_channel_empty_n,
        if_read => fft_os_pfb_config_U0_xn_read);

    ifft_config_data_V_U : component fifo_w8_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => polyphase_filter_U0_ifft_config_data_V_din,
        if_full_n => ifft_config_data_V_full_n,
        if_write => polyphase_filter_U0_ifft_config_data_V_write,
        if_dout => ifft_config_data_V_dout,
        if_empty_n => ifft_config_data_V_empty_n,
        if_read => fft_os_pfb_config_U0_config_ch_data_V_read);

    ifft_out_channel_U : component fifo_w64_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_os_pfb_config_U0_xk_din,
        if_full_n => ifft_out_channel_full_n,
        if_write => fft_os_pfb_config_U0_xk_write,
        if_dout => ifft_out_channel_dout,
        if_empty_n => ifft_out_channel_empty_n,
        if_read => be_U0_ifft_out_read);

    ifft_status_data_V_U : component fifo_w8_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_os_pfb_config_U0_status_data_V_din,
        if_full_n => ifft_status_data_V_full_n,
        if_write => fft_os_pfb_config_U0_status_data_V_write,
        if_dout => ifft_status_data_V_dout,
        if_empty_n => ifft_status_data_V_empty_n,
        if_read => be_U0_ifft_status_data_V_read);

    start_for_fft_os_jbC_U : component start_for_fft_os_jbC
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_fft_os_pfb_config_U0_din,
        if_full_n => start_for_fft_os_pfb_config_U0_full_n,
        if_write => polyphase_filter_U0_start_write,
        if_dout => start_for_fft_os_pfb_config_U0_dout,
        if_empty_n => start_for_fft_os_pfb_config_U0_empty_n,
        if_read => fft_os_pfb_config_U0_ap_ready);

    start_for_be_U0_U : component start_for_be_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_be_U0_din,
        if_full_n => start_for_be_U0_full_n,
        if_write => polyphase_filter_U0_start_write,
        if_dout => start_for_be_U0_dout,
        if_empty_n => start_for_be_U0_empty_n,
        if_read => be_U0_ap_ready);





    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_0;
    be_U0_ap_continue <= ap_const_logic_1;
    be_U0_ap_start <= start_for_be_U0_empty_n;
    be_U0_start_full_n <= ap_const_logic_1;
    be_U0_start_write <= ap_const_logic_0;
    fft_os_pfb_config_U0_ap_continue <= ap_const_logic_1;
    fft_os_pfb_config_U0_ap_start <= start_for_fft_os_pfb_config_U0_empty_n;
    fft_os_pfb_config_U0_start_full_n <= ap_const_logic_1;
    fft_os_pfb_config_U0_start_write <= ap_const_logic_0;
    in_r_TREADY <= polyphase_filter_U0_in_r_TREADY;
    out_r_TDATA <= be_U0_out_r_TDATA;
    out_r_TLAST <= be_U0_out_r_TLAST;
    out_r_TVALID <= be_U0_out_r_TVALID;
    ovflow_TDATA <= be_U0_ovflow_TDATA;
    ovflow_TVALID <= be_U0_ovflow_TVALID;
    polyphase_filter_U0_ap_continue <= ap_const_logic_1;
    polyphase_filter_U0_ap_start <= ap_const_logic_1;
    polyphase_filter_U0_start_full_n <= (start_for_fft_os_pfb_config_U0_full_n and start_for_be_U0_full_n);
    start_for_be_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_fft_os_pfb_config_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;