global      _ft_write

section     .text

_ft_write:
    mov rbx, rdi; put fd to rbx
    mov rcx, rsi; put msg to rcx
    movsx r8, rdx; put msg len to
    jmp write

write:
    mov rax, 0x2000004
    mov rsi, rcx
    mov rdi, 1
    mov rdx, rdx
    syscall
    jmp exit

exit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall