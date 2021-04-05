SECTION		.text
global		_ft_strcmp

; int	ft_strcmp(const char *s1, const char *s2)
; strcmp compares 2 strings and prints < 0 if strA is less than strB
; > 0 if strB is less than strA and 0 if strA and strB are equal length

_ft_strcmp:

loop:
	mov	cl, BYTE[rsi]	; copy the first byte to cl reg
	cmp cl, BYTE[rdi]	; check if values are equal
	jne	return			; if not equal jump to notzero
	cmp	cl, 0			; check if is 0
	jz	return			; if 0 jump to zero
	inc	rdi				; rdi++
	inc	rsi				; rsi++
	jmp	loop

return:
	mov		al, BYTE[rdi]	; copy first byte of rdi to al reg
	movzx	rax, al			; copy al into rax and fill the left space with 0
	movzx	rcx, cl			; copy cl into rcx and fill the left space with 0
	sub		rax, rcx		; rcx - rax
	jmp 	exit

exit:
	ret