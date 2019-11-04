// ==============================================================
// File generated on Fri Oct 25 14:58:46 PDT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_ovflow_TDATA "./impl_rtl.os_pfb.autotvout_ovflow.dat"

`define AUTOTB_TRANSACTION_NUM 4

module AESL_axi_s_ovflow (
    input clk,
    input reset,
    input [8 - 1:0] TRAN_ovflow_TDATA,
    input TRAN_ovflow_TVALID,
    output TRAN_ovflow_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_ovflow_TVALID_temp;
    wire ovflow_TDATA_full;
    wire ovflow_TDATA_empty;
    reg ovflow_TDATA_write_en;
    reg [8 - 1:0] ovflow_TDATA_write_data;
    reg ovflow_TDATA_read_en;
    wire [8 - 1:0] ovflow_TDATA_read_data;
    
    fifo #(1, 8) fifo_ovflow_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(ovflow_TDATA_write_en),
        .write_data(ovflow_TDATA_write_data),
        .read_clock(clk),
        .read_en(ovflow_TDATA_read_en),
        .read_data(ovflow_TDATA_read_data),
        .full(ovflow_TDATA_full),
        .empty(ovflow_TDATA_empty));
    
    always @ (*) begin
        ovflow_TDATA_write_en <= TRAN_ovflow_TVALID;
        ovflow_TDATA_write_data <= TRAN_ovflow_TDATA;
        ovflow_TDATA_read_en <= 0;
    end
    assign TRAN_ovflow_TVALID = TRAN_ovflow_TVALID_temp;

    
    assign TRAN_ovflow_TREADY = ~(ovflow_TDATA_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [151:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [151:0] rm_0x(input [151:0] token);
        reg [151:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_ovflow_TDATA;
    
    assign transaction = transaction_save_ovflow_TDATA;
    
    initial begin : AXI_stream_receiver_ovflow_TDATA
        integer fp;
        reg [8 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_ovflow_TDATA = 0;
        fifo_ovflow_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_ovflow_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_ovflow_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_ovflow_TDATA);
                while (~fifo_ovflow_TDATA.empty) begin
                    fifo_ovflow_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_ovflow_TDATA = transaction_save_ovflow_TDATA + 1;
                fifo_ovflow_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
