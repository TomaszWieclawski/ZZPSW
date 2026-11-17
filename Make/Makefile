CC = avr-gcc -c -mmcu=atmega328p
a.out: main.o led.o
	avr-ld $(^)
%.o: %.c
	$(CC) $<
clean:
	del *.o