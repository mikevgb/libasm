section .text
    global _start

_start:
    mov edx, len    ;   length
    mov ecx, msg    ;   write
    mov ebx,1       ;   stdout
    mov eax,4       ;   sys_write
    int 0x80        ;   call kernel

    mov eax,1       ;   sys_exit
    int 0x80        ;   call kernel

section .data
msg db 'Hello, world!', 0xa     ;   string to be printed
len egu $ - msg                 ;   length of the string