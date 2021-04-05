SECTION		.text
global		_ft_write
extern		___error

_ft_write:
	mov	rax, 0x2000004		; syscall to write
	syscall
	jc	error				; syscall sets a flag if jc reads it jump
							; to error
	jmp exit				; jump to exit

error:
	push	rax				; push rax to stack so we presserve the value
							; before ___error call changes value of rax
	call	___error		; call to extern function error
	mov	rdi, rax			; move the value of rax to rdi
	pop rax					; restore the original value of rax
	mov	[rdi], rax			; copy rax to base rdi because error is a 32 bit
							; 
	mov	rax, -1				; set to -1 for error handling
	jmp	exit
exit:
	ret						; return the result in rax
