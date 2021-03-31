SECTION		.text
global		_ft_read
extern		___error

_ft_read:
	mov	rax, 0x2000003		; syscall to read
	syscall
	jc	error				; "jump if condition is met"
	jmp exit				; jump to exit

error:
	call	___error		; call to extern function error
exit:
	ret