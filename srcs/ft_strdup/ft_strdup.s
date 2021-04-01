SECTION		.text
global		_ft_strdup
extern		___error
extern 		_ft_strcpy
extern 		_ft_strlen
extern		_malloc

_ft_strdup:
	push 	rdi					; push rdi to stack to save src string
	call 	_ft_strlen
	inc		rax					; increase rax for NULL termination
	mov		rdi, rax			; give the size to rax that will be passed
	call 	_malloc				; to malloc
	cmp 	rax, 0				; check if malloc was ok comparing to 0
	jz		error				; if its 0 show error
	pop 	rsi					; move pushed saved string to rsi
	mov		rdi, rax			; move string malloced in rax to rdi
	call 	_ft_strcpy			; copy it
	jmp		exit

error:
	call	___error
	jmp		exit

exit:
	ret