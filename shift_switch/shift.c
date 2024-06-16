#include <8051.h>

int main(int argc, char** argv) {
  unsigned char x;
  x = 1;
  while(1) {
    if(P2_0 == 1) {
      x = x << 1;
      if(x == 0) x = 1;
      P1 = ~x;
    }
    else {
      x = x >> 1;
      if(x == 0) x = 1 << 7;
      P1 = ~x;
    }
  }
} // led shift switch