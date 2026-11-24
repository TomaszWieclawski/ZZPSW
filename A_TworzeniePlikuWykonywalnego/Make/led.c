#include "led.h"
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