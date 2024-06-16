#include <8051.h>

int main(void) {
  char numbers[10];
  numbers[0] = 0b11000000;
  numbers[1] = 0b11111001;
  numbers[2] = 0b10100100;
  numbers[3] = 0b10110000;
  numbers[4] = 0b10011001;
  numbers[5] = 0b10010010;
  numbers[6] = 0b10000010;
  numbers[7] = 0b11111000;
  numbers[8] = 0b10000000;
  numbers[9] = 0b10011000;
  char number = numbers[7];

// keypad single number read
  P0 = 0b11111101;
  if(P0_4 == 0) {
    number = numbers[9];
  } else if(P0_5 == 0) {
    number = numbers[8];
  } else if(P0_6 == 0) {
    number = numbers[7];
  }
  P0 = 0b11111011;
  if(P0_4 == 0) {
    number = numbers[6];
  } else if(P0_5 == 0) {
    number = numbers[5];
  } else if(P0_6 == 0) {
    number = numbers[4];
  }

  P0 = 0b11110111;
  if(P0_4 == 0) {
    number = numbers[3];
  } else if(P0_5 == 0) {
    number = numbers[2];
  } else if(P0_6 == 0) {
    number = numbers[1];
  }
  while(1) {
    P3_3 = 0;
    P3_4 = 0;

    P1 = number;
  }
  return 0;
}