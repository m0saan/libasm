%include "srcs/ft_strlen.s"

global _ft_strdup

section .bss
    BUFF: resb 1024

section .text

_ft_strdup:
    mov r8, -1

duplicate:
    ;inc r8
    ;mov al, byte[rdi + r8]
    ;mov byte[BUFF + r8], al
    ;cmp al , 0
    ;jne duplicate
    ;mov rax, BUFF
    ret
