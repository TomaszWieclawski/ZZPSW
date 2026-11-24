#include <avr/io.h>

void led_init(void)
{
   DDRD = 0x01;
}


void led_on(void)
{
   PORTD = 0x01;
}


void led_off(void)
{
   PORTD = 0x01;
}


int main(void)
{
  led_init();
	
  while(1){
      led_on();
      led_off();
  }
}
