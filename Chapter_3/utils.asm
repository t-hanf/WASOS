print_string:
	pusha
	mov ah, 0x0e
start_loop:
	mov cl, [bx]
	cmp cl, 0x0
	je end
	mov al, [bx]
	int 0x10
	add bx, 0x1
	jmp start_loop
end:	
	popa
	ret


print_hex:
	pusha
	mov ax, 0		; set index to 0
start_loop_h:
	cmp ax, 3
	jg end_h
	mov bx, dx		; copy target value
	and bx, 0x000f		; isolate the last number
	add bx, ALPHABET	; add the last number to the adress of the alphabet
	mov cl, [bx]		; load the char into cx
	mov bx, HEX_OUT		; load the adress of HEX_OUT into bx
	add bx, 5		; calulcate the end of HEX_OUT
	sub bx, ax		; set bx to the location of the current char
	mov [bx], cl		; write the char into HEX_OUT
	inc ax
	shr dx, 4
	jmp start_loop_h
end_h:
	mov bx, HEX_OUT
	call print_string
	popa
	ret

HEX_OUT: db '0x0000',0

ALPHABET: db '0123456789abcdef'
