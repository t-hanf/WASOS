[org 0x7c00]

    mov bx, 50

    cmp bx, 4
    jle then_block
    cmp bx, 40
    jl then_2_block
    mov al, 'C'
    jmp end_block

then_2_block:
    mov al, 'B'
    jmp end_block

then_block:
    mov al, 'A'

end_block:
    mov ah, 0x0e
    int 0x10
    jmp $    

times 510-($-$$) db 0

dw 0xaa55