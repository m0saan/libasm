SYS_WRITE_MAC equ 0x2000004

global      _ft_write
extern      ___error

section     .text

_ft_write:          ; rdi = file descriptor, rsi = string, rdx = string length
    mov rbx, rdx
    mov rax, SYS_WRITE_MAC
    syscall

    jc error        ; error sets carry flag, rax = errno
    mov rax, rbx    ; put the printed chars length in rax
    ret             ; return rax

error:
    push rax        ; save errno
    call ___error   ; rax is now points to external variable errno.
    pop qword[rax]  ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov rax, -1
    ret