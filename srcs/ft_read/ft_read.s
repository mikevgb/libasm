SECTION		.text
global		_ft_read
extern		___error

_ft_read:
	mov	rax, 0x2000003		; syscall to read
	syscall
	jc	error				; "jump if condition is met"
	jmp exit				; jump to exit

error:
	push	rax				; push rax to stack so we presserve the value
	call	___error		; call to extern function error
	mov	rdi, rax			; move the value of rax to rdi
	pop rax					; restore the original value of rax
	mov	[rdi], rax			; copy rax to base rdi
	mov	rax, -1				; set to -1 for error handling
	jmp	exit

exit:
	ret