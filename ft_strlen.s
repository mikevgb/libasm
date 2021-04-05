SECTION		.text
global		_ft_strlen

_ft_strlen:
	mov rax, 0			; set rax to 0

loop:
	cmp BYTE[rdi], 0	; compare byte by byte if is end of string (0)
	jz	exit			; if cmp returns 0 jz cals exit
	inc rdi				; increase one char to rdi
	inc	rax				; increment rax if 0 has not been found
	jmp	loop			; jump to loop

exit:
	ret					; return the result in rax


; nasm -f macho64 ft_strlen.s
; gcc -c main_strlen.c
; gcc ft_strlen.o main_strlen.o
; ./a.out "string"