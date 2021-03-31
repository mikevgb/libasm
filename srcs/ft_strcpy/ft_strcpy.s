SECTION		.text
global		_ft_strcpy

;	ft_strcpy(char *dest, char *origin)
;	copy from origin(rsi) to dest(rdi) till find a null
;	we cant copy directly to rdi, so we use rcx as temp

_ft_strcpy:
	mov rax, rdi		; mov rdi to rax

loop:
	cmp BYTE[rsi], 0	; check if we are at the end of the string
	jz	exit			; if end was found move to exit
	mov cl, BYTE[rsi]	; copy the first byte of origin to temp (cl)
						; we use cl operand because we only want to copy
						; the first byte of rcx
	mov BYTE[rdi], cl	; copy the first byte of temp to dest
	inc rsi				; increase counter of origin
	inc rdi				; increase counter of dest
	jmp loop			; start loop again

exit:
	ret