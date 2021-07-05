[org 0x7c00]

; setup the stack
	mov bp, 0x8000
	mov sp, bp
; give 'A' as parameter
	mov al, 'T'
	call print_function
; give 'B' as parameter
	mov al, 'C'
	call print_function

	jmp end

test_function:
	pusha
	mov ah, 0x0e
	int 0x10
	popa
	ret


end:
	jmp $

%include "print_test.asm"
times 510-($-$$) db 0

dw 0xaa55
