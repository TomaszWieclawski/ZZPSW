#include "led.h"

int main(void){
   led_init();

   while(1){
      led_on();
      led_off();
   }  
}
