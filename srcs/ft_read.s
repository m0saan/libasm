SYS_READ_MAC equ 0x2000003

global _ft_read
extern ___error

section     .text

_ft_read:
    mov rbx, rdx
    mov rax, SYS_READ_MAC
    syscall
    jc error
    mov rdx, rax
    ret

error:
    push rax
    call ___error
    pop qword[rax]
    mov rax, -1
    ret