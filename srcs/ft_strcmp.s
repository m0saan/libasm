
; s1 > s2 ==> int bigger than zero
; s1 < s2 ==> int less than zero
; s1 == s2 ==> int equal to zero

global _ft_strcmp

section .text

_ft_strcmp:
    mov r11, 0

compare:
    mov r15, [rdi + r11]
    cmp r15, [rsi + r11]

    jg  IS_GREAT
    jl  IS_LESS

    cmp r15, 0
    je IS_EQUAL
    inc r11
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