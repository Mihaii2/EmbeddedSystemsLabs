#include <8051.h>

char keyPressed() {
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
  char number = numbers[0];

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
  
  return number;
}

int main(void) {
  char numbers[10];
  char number = 0b11000000;
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
// read 4 numbers from keypad and display
  char first;
  while((first = keyPressed()) == 0b11000000) ;
  while(keyPressed() != 0b11000000) ;
  char second; 
  while((second = keyPressed()) == 0b11000000) ;
  while(keyPressed() != 0b11000000) ;
  char third;
  while((third = keyPressed()) == 0b11000000) ;
  while(keyPressed() != 0b11000000) ;
  char fourth;
  while((fourth = keyPressed()) == 0b11000000) ;
  while(1) {
    P0_7 = 0;
    P3_3 = 0;
    P3_4 = 0;
    P0_7 = 1;
    P1 = fourth;
    for(int i = 0; i < 5; i++) ;

    P0_7 = 0;
    P3_3 = 1;
    P3_4 = 0;
    P0_7 = 1;
    P1 = third;
    for(int i = 0; i < 5; i++) ;

    P0_7 = 0;
    P3_3 = 0;
    P3_4 = 1;
    P0_7 = 1;
    P1 = second;
    for(int i = 0; i < 5; i++) ;

    P0_7 = 0;
    P3_3 = 1;
    P3_4 = 1;
    P0_7 = 1;
    P1 = first;
    for(int i = 0; i < 5; i++) ;
  }
}