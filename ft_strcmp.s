
; s1 > s2 ==> int bigger than zero
; s1 < s2 ==> int less than zero
; s1 == s2 ==> int equal to zero

global _ft_strcmp

section .text

_ft_strcmp:
    mov r8, -1
    mov rax, 0

compare:
    inc r8
    mov cl, byte [rdi + r8]
    mov al, byte [rsi + r8]

    cmp cl, 0
    je end

    cmp al, 0
    je end

    cmp cl, al
    jg  add_to_register
    jl  sub_from_register
    jmp compare


add_to_register:
    movsx rdx, cl
    add rax, rdx

sub_from_register:
    movsx rdx, cl
    sub rax, rdx


end:
    ret