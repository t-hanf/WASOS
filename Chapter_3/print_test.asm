print_function:
	pusha
	mov ah, 0x0e
	int 0x10
	mov al, '_'
	int 0x10
	popa
	ret

