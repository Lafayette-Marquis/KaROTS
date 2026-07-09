; library for KaROTS interpretation through Python

section .data
memoryByte db 0x5A        ; Initial value: 01011010
hexChars   db "0123456789ABCDEF"
output     db "00",10

section .text
global _start

_start:

    ; Load byte
    mov al, [memoryByte]

    ; Toggle bit 5
    xor al, 00100000b

    ; Store it back
    mov [memoryByte], al

    ; Convert to ASCII hex
    mov bl, al

    mov cl, bl
    shr cl, 4
    movzx ecx, cl
    mov dl, [hexChars + rcx]
    mov [output], dl

    mov cl, bl
    and cl, 0x0F
    movzx ecx, cl
    mov dl, [hexChars + rcx]
    mov [output+1], dl

    ; write(stdout, output, 3)
    mov rax, 1
    mov rdi, 1
    mov rsi, output
    mov rdx, 3
    syscall

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall