global      _ft_strcpy

section     .text

_ft_strcpy:
    mov r8, 0

loop :
    mov     cl, byte [rsi + r8]
    mov     byte [rdi + r8],cl
    inc     r8
    cmp     cl, 0
    jne     loop
    jmp     end

end:
    mov rax, rdi
    ret

exit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall


;print:
    ;mov     rax, 0x2000004
    ;mov     rsi, rdi
    ;mov     rdi, 1
    ;mov     rdx, 23
    ;syscall