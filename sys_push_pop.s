BITS 64

global _start

section .rodata

    write db "test", 10, 0
    write_len equ $-write

section .text
    
_start:
    mov rax, 56
    push rax
    pop rdi
    syscall
    jmp _exit

_exit:
    mov rax, 60
    mov rdi, 0
    syscall
