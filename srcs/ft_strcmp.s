
; s1 > s2 ==> int bigger than zero
; s1 < s2 ==> int less than zero
; s1 == s2 ==> int equal to zero

global _ft_strcmp

section .text

_ft_strcmp:
    mov r8, -1

compare:
    inc r8
    mov cl, byte [rdi + r8]
    cmp cl, byte [rsi + r8]

    jg  IS_GREAT
    jl  IS_LESS

    cmp cl, 0
    je IS_EQUAL
    jmp compare

IS_EQUAL:
    mov rax, 0
    ret

IS_LESS:
    mov rax, -1
    ret

IS_GREAT:
    mov rax, 1
    ret