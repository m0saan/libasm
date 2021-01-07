global _ft_strlen


section .text

_ft_strlen:
    mov rax, rdi ;move the content of rdi(which is the 1st param) to rax.

iterate:
    cmp byte[rax] , 0 ;check the current character is it equal NULL
    je end ;end if it equal NULL. 

    inc rax ; else increment rax.
    jmp iterate

end:
    sub rax, rdi
    ret
    call exit

exit:
    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall