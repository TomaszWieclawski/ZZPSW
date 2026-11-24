; FLASH src_ptr, ! adress must be doubled
ldi zl, 0x40
ldi zh, 0x00

; RAM dst_ptr
ldi yl, 0x00
ldi yh, 0x01

; RAM dst_end_ptr
ldi xl, 0x04
ldi xh, 0x01

loop: ; copying loop begin

; jump to infinite loop if dst end reached
;(dst_ptr == dst_ptr_end)
cp  yl , xl
cpc yh , xh
breq end

; copy 1B from FLASH to RAM and increment memory pointers
lpm  r0, Z+
st   Y+, r0

rjmp loop ; copying loop end

end:jmp end ; infinite loop

.org 0x20 ; bytes in FLASH to copy
.db 0x11,0x22,0x33,0x44
