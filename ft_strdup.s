SECTION		.text
global		_ft_strdup
extern 		_ft_strcpy
extern 		_ft_strlen
extern		___error
extern		_malloc

_ft_strdup:
	push 	rdi					; push rdi to stack to save source string
	call 	_ft_strlen
	inc		rax					; increase rax for NULL termination
	mov		rdi, rax
	call 	_malloc				; mallc with the size of rax
	cmp		rax, 0
	jz		error
	pop 	rsi					; move pushed saved string to rsi
	mov		rdi, rax			; move string malloced in rax to rdi
	call 	_ft_strcpy			; copy it
	jmp		exit

error:
	call	___error
	jmp		exit

exit:
	ret