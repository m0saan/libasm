global      _ft_write

section     .text

_ft_write:
    mov rbx, rdi; put fd to rbx
    mov rcx, rsi; put msg to rcx
    mov r8, rdx; put msg len to


write:
    mov rax, 0x2000004
    mov rdi, rbx
    mov rsi, rcx
    mov rdx, r8
    syscall
    jmp exit

exit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall