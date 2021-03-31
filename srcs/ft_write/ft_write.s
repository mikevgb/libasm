SECTION		.text
global		_ft_write
extern		___error

_ft_write:
	mov	rax, 0x2000004		; syscall to write
	syscall
	jc	error				; "jump if condition is met"
	jmp exit				; jump to exit

error:
	call	___error		; call to extern function error
exit:
	ret						; return the result in rax