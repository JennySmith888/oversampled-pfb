#include <stdio.h>
#include <iostream>

#include "os_pfb.h"

void polyphase_filter(cx_datain_t in[D], cx_dataout_t filter_out[M], os_pfb_config_t* ifft_config) {

  // filter taps
  const coeff_t h[L] = {
    #include "coeff.dat"
  };

  // shift states that have been pre-determined. Need to figure out how to auto-generate
  static int shift_states[SHIFT_STATES] = {0, 8, 16, 24};
  static int state_idx = 0;
  ifft_config->setDir(0); //inverse transform

  static cx_dataout_t filter_state[L];
  cx_dataout_t temp[M]; // need a temp variable to not violate dataflow requirements in synthesis

  // shift/capture samples and polyphase fir filter
  for (int p = P-1; p >= 0 ; --p) {
    for (int m = M-1; m >= 0; --m) {
      int idx = p*M+m;

      if (idx <= D-1) {
        // TODO: synthesis still complains about non-sequential accessing. Since these
        // are being accessed in reverse order I don't think there is a problem.
        filter_state[idx] = in[idx];
      } else {
        filter_state[idx] = filter_state[idx-D];
      }
      temp[m] = temp[m] + h[idx]*filter_state[idx];
    }
  }

  //apply phase correction
  int shift = shift_states[state_idx];
  int tmpidx;
  for (int i=0; i<M; ++i) {
    tmpidx = (M-shift+i) % M;
    filter_out[i] = temp[tmpidx];
  }
  state_idx = (state_idx+1) % SHIFT_STATES;

  return;
}

// Currently not used because ran into synthesis problems complaining dataflow
// optimization requirements are violated
void apply_phase_correction (cx_dataout_t filter_out[M], cx_dataout_t ifft_buffer[M]) {

  // TODO: match implementation above in polyphase filter
  // shift states that have been pre-determined. Need to figure out how to auto-generate
  static int shift_states[SHIFT_STATES] = {0, 8, 16, 24};

  //apply phase correction
  int shift = shift_states[0];
  int oidx;
  for (int i=0; i<M; ++i) {
    oidx = (i+shift) % M;
    ifft_buffer[oidx] = filter_out[i];
  }

  // move shift array up by one and copy end to beginning
  int tmp = shift_states[SHIFT_STATES-1];
  for (int i=SHIFT_STATES-1; i > 0; --i) {
    shift_states[i] = shift_states[i-1];
  }
  shift_states[0] = tmp;

  return;
}

void be(cx_dataout_t ifft_out[M], os_pfb_axis_t out[M], os_pfb_status_t* ifft_status, bool* ovflow) {
  for (int i=0; i < M; ++i) {
    out[i].data = ifft_out[i];
    out[i].last = (i==M-1) ? 1 : 0;
  }
  *ovflow = ifft_status->getOvflo() & 0x1;
  return;
}

//void os_pfb(cx_datain_t in[M], cx_dataout_t out[M], int shift_states[SHIFT_STATES], bool* overflow)
void os_pfb(cx_datain_t in[D], os_pfb_axis_t out[M], bool* ovflow)
{
#pragma HLS interface axis depth=1 port=ovflow
#pragma HLS interface axis depth=FFT_LENGTH port=in,out
#pragma HLS interface ap_ctrl_none port=return
#pragma HLS data_pack variable=in
#pragma HLS data_pack variable=out
#pragma HLS dataflow

  os_pfb_config_t ifft_config;
  os_pfb_status_t ifft_status;
  cx_dataout_t filter_out[M];
//  cx_dataout_t ifft_buffer[M]; // some how violates dataflow requirements
  cx_dataout_t ifft_out[M];

  polyphase_filter(in, filter_out, &ifft_config);
//  apply_phase_correction(filter_out, ifft_buffer);
//  hls::fft<os_pfb_config>(ifft_buffer, ifft_out, &ifft_status, &ifft_config);
  hls::fft<os_pfb_config>(filter_out, ifft_out, &ifft_status, &ifft_config);
  be(ifft_out, out, &ifft_status, ovflow);

  return;
}


