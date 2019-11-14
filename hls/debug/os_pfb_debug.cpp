#include <stdio.h>
#include <iostream>

#include "os_pfb_debug.h"

void polyphase_filter(cx_datain_t in[D], cx_dataout_t filter_out[M]) {

  // filter taps
  const coeff_t h[L] = {
    #include "coeff.dat"
  };

  // shift states that have been pre-determined. Need to figure out how to auto-generate
//  static int shift_states[SHIFT_STATES] = {0, 8, 16, 24};
 // static int state_idx = 0;
  
  static cx_dataout_t filter_state[L];
  cx_dataout_t temp[M]; // need a temp variable to not violate dataflow requirements in synthesis
  cx_datain_t in[D];

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

int main()
{
  return 0;
}
