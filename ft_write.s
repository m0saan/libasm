global      _ft_write

section     .text

_ft_write:
    mov rbx, rdi
    mov rcx, rsi
    mov eax, rdx


write:
    mov rax, 0x2000004
    mov rsi, rbx
    mov rdi, rcx
    mov rdx, r9b
    syscall
    jmp exit

exit:
    mov rax, 0x200000
    mov rdi, 0
    syscall