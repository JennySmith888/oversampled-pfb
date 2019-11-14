#include <stdio.h>
#include <iostream>
#include "os_pfb_debug.h"


int main() {

const coeff_t h[L] = {
    #include "coeff.dat"
};
  static int shift_states[SHIFT_STATES] = {0, 8, 16, 24};
  static int state_idx = 0;
  static cx_dataout_t filter_state[L];
  cx_dataout_t temp[M];
  cx_datain_t in[D];
 
 for (int p = P-1; p >= 0 ; --p) {
 std::cout << "p = " << p << "\n";
    for (int m = M-1; m >= 0; --m) {
    std::cout << "m = " << m << "\n";
      int idx = p*M+m;
      std::cout << "idx = " << idx << "\n";
      if (idx <= D-1) {
      filter_state[idx] = in[idx];
      std::cout << "filter_state[idx] is " << filter_state[idx] << "\n";
      } 
      else {
        filter_state[idx] = filter_state[idx-D];
      std::cout << "filter_state[idx] is " << filter_state[idx] << "\n";
      }
      temp[m] = temp[m] + h[idx]*filter_state[idx];
      std::cout << "temp[m] is " << temp[m] << "\n";
    }
  }
}
