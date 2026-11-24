#include "led.h"

char tab_noninit[6];
char tab_init[3] ={0x33,0x44,0x55};

int main(void){
   char i;
   for (i=0; i<sizeof(tab_init);i++){
      tab_noninit[i] = tab_init[i]+3;
   }
   
   led_init();   
   while(1){
      led_on();
      led_off();
   }  
}
