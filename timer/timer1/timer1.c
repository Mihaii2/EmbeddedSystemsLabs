#include <8051.h>

volatile char P1_value; 

void f(void) __interrupt(1) {

  P1 = ~P1_value;
  P1_value = P1_value << 1;

  if(P1_value == 0) {
    P1_value = 1;
  }
  TF0 = 0;
  TH0 = 200;
  TL0 = 0;

}
// let switch left with timer
int main(void) {
  TR0 = 0;
  TH0 = 200;
  TL0 = 0;
  TMOD = 0b00000001;
  P1_value = 1;
  EA = 1;
  ET0 = 1;
  TR0 = 1;

  while(1) {}
  return 0;
}