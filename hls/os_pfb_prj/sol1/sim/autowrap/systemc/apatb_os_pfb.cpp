// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct os_pfb_axis_t {
        std::complex<float > data;
        ap_uint<1> last;
       } os_pfb_axis_t;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "in_r"
#define AUTOTB_TVIN_in_r  "../tv/cdatafile/c.os_pfb.autotvin_in_r.dat"
// wrapc file define: "out_data"
#define AUTOTB_TVOUT_out_data  "../tv/cdatafile/c.os_pfb.autotvout_out_data.dat"
#define AUTOTB_TVIN_out_data  "../tv/cdatafile/c.os_pfb.autotvin_out_data.dat"
// wrapc file define: "out_last_V"
#define AUTOTB_TVOUT_out_last_V  "../tv/cdatafile/c.os_pfb.autotvout_out_last_V.dat"
#define AUTOTB_TVIN_out_last_V  "../tv/cdatafile/c.os_pfb.autotvin_out_last_V.dat"
// wrapc file define: "ovflow"
#define AUTOTB_TVOUT_ovflow  "../tv/cdatafile/c.os_pfb.autotvout_ovflow.dat"
#define AUTOTB_TVIN_ovflow  "../tv/cdatafile/c.os_pfb.autotvin_ovflow.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_data"
#define AUTOTB_TVOUT_PC_out_data  "../tv/rtldatafile/rtl.os_pfb.autotvout_out_data.dat"
// tvout file define: "out_last_V"
#define AUTOTB_TVOUT_PC_out_last_V  "../tv/rtldatafile/rtl.os_pfb.autotvout_out_last_V.dat"
// tvout file define: "ovflow"
#define AUTOTB_TVOUT_PC_ovflow  "../tv/rtldatafile/rtl.os_pfb.autotvout_ovflow.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			in_r_depth = 0;
			out_data_depth = 0;
			out_last_V_depth = 0;
			ovflow_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{in_r " << in_r_depth << "}\n";
			total_list << "{out_data " << out_data_depth << "}\n";
			total_list << "{out_last_V " << out_last_V_depth << "}\n";
			total_list << "{ovflow " << ovflow_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int in_r_depth;
		int out_data_depth;
		int out_last_V_depth;
		int ovflow_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void os_pfb (
std::complex<float > in[24],
os_pfb_axis_t out[32],
bool* ovflow);

void AESL_WRAP_os_pfb (
std::complex<float > in[24],
os_pfb_axis_t out[32],
bool* ovflow)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "out_data"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_data, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_data, AESL_token); // data

			sc_bv<64> *out_data_pc_buffer = new sc_bv<64>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_data_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_data, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_data))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_data
				{
					// bitslice(31, 0)
					// {
						// celement: out.data._M_real(31, 0)
						// {
							sc_lv<32>* out_data__M_real_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }
					// bitslice(63, 32)
					// {
						// celement: out.data._M_imag(31, 0)
						// {
							sc_lv<32>* out_data__M_imag_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out.data._M_real(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									out_data__M_real_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(out_data_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
						// celement: out.data._M_imag(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									out_data__M_imag_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(out_data_pc_buffer[hls_map_index].range(63, 32));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
    float wrap_real_out_data__M_real;
						// celement: out.data._M_real(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].data.real()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].data
								// output_left_conversion : *(int*)&wrap_real_out_data__M_real
								// output_type_conversion : (out_data__M_real_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									wrap_real_out_data__M_real = out[i_0].data.real();
									*(int*)&wrap_real_out_data__M_real = (out_data__M_real_lv0_0_31_1[hls_map_index]).to_uint64();
									out[i_0].data.real(wrap_real_out_data__M_real);
									hls_map_index++;
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
    float wrap_imag_out_data__M_imag;
						// celement: out.data._M_imag(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].data.imag()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].data
								// output_left_conversion : *(int*)&wrap_imag_out_data__M_imag
								// output_type_conversion : (out_data__M_imag_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									wrap_imag_out_data__M_imag = out[i_0].data.imag();
									*(int*)&wrap_imag_out_data__M_imag = (out_data__M_imag_lv0_0_31_1[hls_map_index]).to_uint64();
									out[i_0].data.imag(wrap_imag_out_data__M_imag);
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_data_pc_buffer;
		}

		// output port post check: "out_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // data

			sc_bv<1> *out_last_V_pc_buffer = new sc_bv<1>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_last_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_last_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: out.last.V(0, 0)
						// {
							sc_lv<1>* out_last_V_lv0_0_31_1 = new sc_lv<1>[32];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.last.V(0, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(out[0].last) != NULL) // check the null address if the c port is array or others
								{
									out_last_V_lv0_0_31_1[hls_map_index].range(0, 0) = sc_bv<1>(out_last_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.last.V(0, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].last
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].last
								// output_left_conversion : out[i_0].last
								// output_type_conversion : (out_last_V_lv0_0_31_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].last) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].last = (out_last_V_lv0_0_31_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_last_V_pc_buffer;
		}

		// output port post check: "ovflow"
		aesl_fh.read(AUTOTB_TVOUT_PC_ovflow, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ovflow, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ovflow, AESL_token); // data

			sc_bv<8> *ovflow_pc_buffer = new sc_bv<8>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ovflow', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ovflow', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ovflow_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ovflow, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ovflow))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ovflow
				{
					// bitslice(0, 0)
					// {
						// celement: ovflow(0, 0)
						// {
							sc_lv<1>* ovflow_lv0_0_0_1 = new sc_lv<1>[1];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: ovflow(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(ovflow[0]) != NULL) // check the null address if the c port is array or others
								{
									ovflow_lv0_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(ovflow_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: ovflow(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : ovflow[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : ovflow[0]
								// output_left_conversion : ovflow[i_0]
								// output_type_conversion : (ovflow_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(ovflow[0]) != NULL) // check the null address if the c port is array or others
								{
									ovflow[i_0] = (ovflow_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] ovflow_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "in_r"
		char* tvin_in_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_r);

		// "out_data"
		char* tvin_out_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_data);
		char* tvout_out_data = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_data);

		// "out_last_V"
		char* tvin_out_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_last_V);
		char* tvout_out_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_last_V);

		// "ovflow"
		char* tvin_ovflow = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_ovflow);
		char* tvout_ovflow = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ovflow);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_in_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);

		sc_bv<64>* in_r_tvin_wrapc_buffer = new sc_bv<64>[24];

		// RTL Name: in_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_in__M_real;
				// celement: in._M_real(31, 0)
				{
					// carray: (0) => (23) @ (1)
					for (int i_0 = 0; i_0 <= 23; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0]
						// regulate_c_name       : in__M_real
						// input_type_conversion : *(int*)&wrap_real_in__M_real
						if (&(in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in__M_real_tmp_mem;
                                 	       wrap_real_in__M_real = in[i_0].real();
							in__M_real_tmp_mem = *(int*)&wrap_real_in__M_real;
							in_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_in__M_imag;
				// celement: in._M_imag(31, 0)
				{
					// carray: (0) => (23) @ (1)
					for (int i_0 = 0; i_0 <= 23; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0]
						// regulate_c_name       : in__M_imag
						// input_type_conversion : *(int*)&wrap_imag_in__M_imag
						if (&(in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in__M_imag_tmp_mem;
                                 	       wrap_imag_in__M_imag = in[i_0].imag();
							in__M_imag_tmp_mem = *(int*)&wrap_imag_in__M_imag;
							in_r_tvin_wrapc_buffer[hls_map_index].range(63, 32) = in__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 24; i++)
		{
			sprintf(tvin_in_r, "%s\n", (in_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);
		}

		tcl_file.set_num(24, &tcl_file.in_r_depth);
		sprintf(tvin_in_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);

		// release memory allocation
		delete [] in_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_data, tvin_out_data);

		sc_bv<64>* out_data_tvin_wrapc_buffer = new sc_bv<64>[32];

		// RTL Name: out_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_out_data__M_real;
				// celement: out.data._M_real(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data.real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data__M_real
						// input_type_conversion : *(int*)&wrap_real_out_data__M_real
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data__M_real_tmp_mem;
                                 	       wrap_real_out_data__M_real = out[i_0].data.real();
							out_data__M_real_tmp_mem = *(int*)&wrap_real_out_data__M_real;
							out_data_tvin_wrapc_buffer[hls_map_index].range(31, 0) = out_data__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_out_data__M_imag;
				// celement: out.data._M_imag(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data.imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data__M_imag
						// input_type_conversion : *(int*)&wrap_imag_out_data__M_imag
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data__M_imag_tmp_mem;
                                 	       wrap_imag_out_data__M_imag = out[i_0].data.imag();
							out_data__M_imag_tmp_mem = *(int*)&wrap_imag_out_data__M_imag;
							out_data_tvin_wrapc_buffer[hls_map_index].range(63, 32) = out_data__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_out_data, "%s\n", (out_data_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_data, tvin_out_data);
		}

		tcl_file.set_num(32, &tcl_file.out_data_depth);
		sprintf(tvin_out_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_data, tvin_out_data);

		// release memory allocation
		delete [] out_data_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);

		sc_bv<1>* out_last_V_tvin_wrapc_buffer = new sc_bv<1>[32];

		// RTL Name: out_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.last.V(0, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].last
						// regulate_c_name       : out_last_V
						// input_type_conversion : (out[i_0].last).to_string(2).c_str()
						if (&(out[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_last_V_tmp_mem;
							out_last_V_tmp_mem = (out[i_0].last).to_string(2).c_str();
							out_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_out_last_V, "%s\n", (out_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);
		}

		tcl_file.set_num(32, &tcl_file.out_last_V_depth);
		sprintf(tvin_out_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);

		// release memory allocation
		delete [] out_last_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_ovflow, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_ovflow, tvin_ovflow);

		sc_bv<8>* ovflow_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: ovflow
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: ovflow(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : ovflow[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : ovflow[0]
						// regulate_c_name       : ovflow
						// input_type_conversion : ovflow[i_0]
						if (&(ovflow[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> ovflow_tmp_mem;
							ovflow_tmp_mem = ovflow[i_0];
							ovflow_tvin_wrapc_buffer[hls_map_index].range(0, 0) = ovflow_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_ovflow, "%s\n", (ovflow_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_ovflow, tvin_ovflow);
		}

		tcl_file.set_num(1, &tcl_file.ovflow_depth);
		sprintf(tvin_ovflow, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_ovflow, tvin_ovflow);

		// release memory allocation
		delete [] ovflow_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		os_pfb(in, out, ovflow);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_out_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_data, tvout_out_data);

		sc_bv<64>* out_data_tvout_wrapc_buffer = new sc_bv<64>[32];

		// RTL Name: out_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_out_data__M_real;
				// celement: out.data._M_real(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data.real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data__M_real
						// input_type_conversion : *(int*)&wrap_real_out_data__M_real
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data__M_real_tmp_mem;
                                 	       wrap_real_out_data__M_real = out[i_0].data.real();
							out_data__M_real_tmp_mem = *(int*)&wrap_real_out_data__M_real;
							out_data_tvout_wrapc_buffer[hls_map_index].range(31, 0) = out_data__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_out_data__M_imag;
				// celement: out.data._M_imag(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data.imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data__M_imag
						// input_type_conversion : *(int*)&wrap_imag_out_data__M_imag
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data__M_imag_tmp_mem;
                                 	       wrap_imag_out_data__M_imag = out[i_0].data.imag();
							out_data__M_imag_tmp_mem = *(int*)&wrap_imag_out_data__M_imag;
							out_data_tvout_wrapc_buffer[hls_map_index].range(63, 32) = out_data__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_out_data, "%s\n", (out_data_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_data, tvout_out_data);
		}

		tcl_file.set_num(32, &tcl_file.out_data_depth);
		sprintf(tvout_out_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_data, tvout_out_data);

		// release memory allocation
		delete [] out_data_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);

		sc_bv<1>* out_last_V_tvout_wrapc_buffer = new sc_bv<1>[32];

		// RTL Name: out_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.last.V(0, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].last
						// regulate_c_name       : out_last_V
						// input_type_conversion : (out[i_0].last).to_string(2).c_str()
						if (&(out[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_last_V_tmp_mem;
							out_last_V_tmp_mem = (out[i_0].last).to_string(2).c_str();
							out_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_out_last_V, "%s\n", (out_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);
		}

		tcl_file.set_num(32, &tcl_file.out_last_V_depth);
		sprintf(tvout_out_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);

		// release memory allocation
		delete [] out_last_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ovflow, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ovflow, tvout_ovflow);

		sc_bv<8>* ovflow_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: ovflow
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: ovflow(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : ovflow[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : ovflow[0]
						// regulate_c_name       : ovflow
						// input_type_conversion : ovflow[i_0]
						if (&(ovflow[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> ovflow_tmp_mem;
							ovflow_tmp_mem = ovflow[i_0];
							ovflow_tvout_wrapc_buffer[hls_map_index].range(0, 0) = ovflow_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ovflow, "%s\n", (ovflow_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ovflow, tvout_ovflow);
		}

		tcl_file.set_num(1, &tcl_file.ovflow_depth);
		sprintf(tvout_ovflow, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ovflow, tvout_ovflow);

		// release memory allocation
		delete [] ovflow_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "in_r"
		delete [] tvin_in_r;
		// release memory allocation: "out_data"
		delete [] tvout_out_data;
		delete [] tvin_out_data;
		// release memory allocation: "out_last_V"
		delete [] tvout_out_last_V;
		delete [] tvin_out_last_V;
		// release memory allocation: "ovflow"
		delete [] tvout_ovflow;
		delete [] tvin_ovflow;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

