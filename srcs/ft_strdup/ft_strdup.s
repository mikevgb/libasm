SECTION		.text
global		_ft_strdup
extern		___error
extern		_malloc

_ft_strdup:
	call _strlen
	jz	error				; if len is 0 we call a error function
	inc	rax					; increase rax for NULL termination
	mov	rdi, rax			; give the size to rax that will be passed
	call _malloc			; to malloc
	cmp rax, 0				; check if malloc was ok comparing to 0
	jz	error				; if its 0 show error
	mov	rdi, rax			; move string malloced in rax to rdi
	call _strcpy			; copy it
	call exit

_strcpy:
	mov	rax, rdi
_strcpy_loop:
	cmp BYTE[rsi], 0		; check if we are at the end of the string
	jz	_ft_strdup			; if end was found move to exit
	mov cl, BYTE[rsi]		; copy the first byte of origin to temp (cl)
							; we use cl operand because we only want to copy
							; the first byte of rcx
	mov BYTE[rdi], cl		; copy the first byte of temp to dest
	inc rsi					; increase counter of origin
	inc rdi					; increase counter of dest
	jmp _strcpy_loop		; start loop again

_strlen:
	mov	rax, 0				; set rax to 0
loop:						; we calculate the size of s1 in bytes
	cmp BYTE[rdi], 0		; this will be passed to malloc to
	jz	_ft_strdup			; get the right size when in copys s1
	inc rdi
	jmp loop

error:
	call	___error

exit:
	ret