[org 0x7c00]

	mov bx, HELLO_MSG
	call print_string

	mov bx, GOODBY_MSG
	call print_string

	mov dx, 0xdead
	call print_hex

	mov dx, 0xbeef
	call print_hex

	mov dx, 0x1f5d
	call print_hex

	jmp $

%include "utils.asm"

HELLO_MSG:
	db 'Hello, World!', 0

GOODBY_MSG:
	db 'Goodby!', 0

times 510-($-$$) db 0
dw 0xaa55
