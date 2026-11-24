;end of .text in flash, begining of .data in flash (to copy to ram)
ldi zl, lo8(__text_end)
ldi zh, hi8(__text_end)

;begining of .data in ram (copied here)
ldi yl, lo8(__data_begin)
ldi yh, hi8(__data_begin)

;end of .data in ram (copied here)
ldi xl, lo8(__data_end)
ldi xh, hi8(__data_end)


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



end:
rjmp main

