_ft_strlen:

    push    rcx
    xor     rcx, rcx        ; save and clear counter

_ft_strlen_next:

    cmp     [rdi], byte 0   ; null byte
    jz      _ft_strlen_null ; if yes, exit
    inc     rcx             ; if char, count
    inc     rdi             ; move
    jmp     _ft_strlen_next ; repeat

_ft_strlen_null:

    mov     rax, rcx        ; length
    pop     rcx             ; restore
    ret                     ; exit