MEMORY {
	flash : ORIGIN = 0, LENGTH = 2K
	sram : ORIGIN = 0X800060, LENGTH = 128
}	

SECTIONS
{
   .text :
   {
      *.o(.text)
   } > flash
   .data :
   {
      *.o(.data)
   } > sram       
   .bss :
   {
		*.o(.bss)
   } > sram
}
