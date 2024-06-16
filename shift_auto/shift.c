#include <8051.h>

int main(int argc, char** argv) {
  unsigned char x;
  x = 1;
  int direction = 1;
  while(1) {
      if(direction == 1) {
        x = x << 1; 
      }
      else {
        x = x >> 1;
      }
      if(x == 1 << 7) {
        direction = 0;
      }
      else if(x == 1) {
        direction = 1;
      }
      P1 = ~x;
  }
} // led shift auto