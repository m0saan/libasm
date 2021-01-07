global      _ft_strcpy

section     .text

_ft_strcpy:
    mov r8, 0 ; set r8 to 0

loop :
    mov     cl, byte [rsi + r8] ;get a char from src and put it into cl.
    mov     byte [rdi + r8],cl  ;put the char in cl into the destination.
    inc     r8  ;increment r8.
    cmp     cl, 0 ;compare char in cl if it is NULL.
    jne     loop
    jmp     end

end:
    mov rax, rdi ;move the string in dest to rax so to be returned.
    ret ; return.