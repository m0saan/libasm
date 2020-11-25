global _ft_strlen


section .text

_ft_strlen:
    mov rax, rdi

iterate:
    cmp byte[rax] , 0
    je end

    inc rax
    jmp iterate

end:
    sub rax, rdi
    ret
    call exit

exit:
    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall