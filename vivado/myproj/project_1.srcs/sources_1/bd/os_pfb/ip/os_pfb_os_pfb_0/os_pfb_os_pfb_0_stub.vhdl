-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Oct 25 15:38:00 2019
-- Host        : smithpc running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_os_pfb_0/os_pfb_os_pfb_0_stub.vhdl
-- Design      : os_pfb_os_pfb_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity os_pfb_os_pfb_0 is
  Port ( 
    in_r_TVALID : in STD_LOGIC;
    in_r_TREADY : out STD_LOGIC;
    in_r_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    out_r_TVALID : out STD_LOGIC;
    out_r_TREADY : in STD_LOGIC;
    out_r_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_r_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ovflow_TVALID : out STD_LOGIC;
    ovflow_TREADY : in STD_LOGIC;
    ovflow_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end os_pfb_os_pfb_0;

architecture stub of os_pfb_os_pfb_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_r_TVALID,in_r_TREADY,in_r_TDATA[63:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[63:0],out_r_TLAST[0:0],ovflow_TVALID,ovflow_TREADY,ovflow_TDATA[7:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "os_pfb,Vivado 2018.3";
begin
end;
