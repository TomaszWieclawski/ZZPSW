MEMORY {
	flash : ORIGIN = 0, LENGTH = 2K
	sram : ORIGIN = 0X800100, LENGTH = 128
}	

SECTIONS
{
   .text :
   {	
	  startup.o(.text)
      *.o(.text)
   } > flash
   __text_end = . ;
   .data :
   {
      __data_begin = . ;
      *.o(.data)
   } > sram AT > flash       
   __data_end = . ;

   .bss :
   {
		*.o(.bss)
   } > sram
}
