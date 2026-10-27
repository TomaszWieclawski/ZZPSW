SECTIONS
{
.mytext :
{
	main.o(.text)
}

.mydata :
{
	*.o(.data)
}
}
