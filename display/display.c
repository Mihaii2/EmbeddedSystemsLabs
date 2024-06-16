#include <8051.h>

int main(void) {
  P3_3 = 0;
  P3_4 = 0;

  int direction = 1;
	while(1) {
    P1 = 0b10001000;

    if (direction == 1) {
      if(P3_3 == 0) {
        P3_3 = 1;
      }
      else if(P3_4 == 0) {
        P3_4 = 1;
        P3_3 = 0;
      }
      
      if(P3_3 == 1 && P3_4 == 1) {
        direction = 1 - direction;
        P3_3 = 0;
      }
    }
    else {
      if(P3_3 == 1) {
        P3_3 = 0;
      }
      else if(P3_4 == 1) {
        P3_4 == 0;
        P3_3 == 1;
      }
      
      if(P3_3 == 0 && P3_4 == 0) {
        direction = 1 - direction;
        P3_3 = 1;
      }
    }
	}
}