MEMORY {
	flash : ORIGIN = 0, LENGTH = 10
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
}
