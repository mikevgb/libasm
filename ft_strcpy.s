SECTION		.text
global		_ft_strcpy

;	ft_strcpy(char *dest, char *origin)
;	copy from origin(rsi) to dest(rdi) till find a null
;	we cant copy directly to rdi, so we use rcx as temp

_ft_strcpy:
	mov rax, 0		; set rax to 0

loop:
	mov cl, [rsi + rax]	; copy the first byte of rsi and rax to temp (cl)
						; we use cl operand because we only want to copy
						; the first byte
	cmp cl, 0			; check if we are at the end of the string
	jz	exit			; if end was found move to exit
	mov [rdi + rax], cl	; copy the first byte of temp (cl) to dest and rax
	inc rax				; rax++
	jmp loop			; start loop again

exit:
	mov	cl, 0			; set cl to 0
	mov	[rdi + rax], cl	; set last chars to 0
	mov	rax, rdi		; copy dest to rax
	ret
