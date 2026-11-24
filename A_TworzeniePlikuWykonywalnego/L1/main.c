#include "led.h"

char i=0x33;
char j=0x55;

int main(void){
   led_init();

   while(1){
      led_on();
      led_off();
      i -= 3;
      j -= 5;
   }  
}
