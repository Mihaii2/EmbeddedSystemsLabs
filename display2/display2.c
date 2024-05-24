#include <8051.h>

int main(void) {
  const unsigned char n = 10;
  unsigned int n_mut = n;

  char numbers[10];

  numbers[0] = 0b11000000;
  numbers[1] = 0b11111001;
  numbers[2] = 0b11100100;
  numbers[3] = 0b10110000;
  numbers[4] = 0b10011001;
  numbers[5] = 0b10010010;
  numbers[6] = 0b10000010;
  numbers[7] = 0b11111000;
  numbers[8] = 0b10000000;
  numbers[9] = 0b10011000;

  int first = n_mut%10;  
  n_mut/=10;
  int second = n_mut%10;
  n_mut/=10;
  int third = n_mut%10; 
  n_mut/=10;
  int fourth = n_mut%10; 

  while(1) {

    P0_7 = 0;

    P3_3 = 0;
    P3_4 = 0;

    P0_7 = 1;

    P1 = numbers[first];

    for(int i = 0; i < 5; i++) ;

    if(n >= 10) {

      P0_7 = 0;

      P3_3 = 1;
      P3_4 = 0;

      P0_7 = 1;

      P1 = numbers[second];

      for(int i = 0; i < 5; i++) ;

      if(n >= 100) {
        P0_7 = 0;

        P3_3 = 0;
        P3_4 = 1;

        P0_7 = 1;

        P1 = numbers[third];

        
        for(int i = 0; i < 5; i++) ;

        if(n >= 1000) {
          P0_7 = 0;

          P3_3 = 1;
          P3_4 = 1;

          P0_7 = 1;

          P1 = numbers[fourth];

          for(int i = 0; i < 5; i++) ;
        }
      }
    }



  }

  return 0;
}