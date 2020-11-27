SYS_WRITE_MAC equ 0x2000004

global      _ft_write
extern      ___error

section     .text

_ft_write:          ; rdi = file descriptor, rsi = string, rdx = string length
    cmp rdx, 0      ; check if the str lenght is < 0
    jl len_error    ; if len < 0 ==> call len_error

    mov rbx, rdx
    mov rax, SYS_WRITE_MAC
    syscall

    jc error        ; error sets carry flag, rax = errno
    mov rax, rbx    ; put the printed chars length in rax
    ret             ; return rax

len_error:
    mov rax, -1
    ret

error:
    mov rbx, rax     ; save errno
    call ___error    ; rax is now points to external variable errno.
    mov [rax], rbx
    mov rax, 0
    ret