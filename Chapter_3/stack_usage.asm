[org 0x7c00]
    mov ah, 0x0e

    mov bp, 0x8000
    mov sp, bp

    push 'A'
    push 'B'
    push 'C'

    pop bx
    mov al, bl
    int 0x10

    pop bx
    mov al, bl
    int 0x10

    mov al, [0x7ffe]
    int 0x10

    jmp $    

the_secret:
    db "X"

times 510-($-$$) db 0

dw 0xaa55