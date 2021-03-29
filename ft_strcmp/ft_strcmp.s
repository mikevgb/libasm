SECTION		.text
global		_ft_strcmp

; int	ft_strcmp(const char *s1, const char *s2)
; strcmp compares 2 strings and prints < 0 if strA is less than strB
; > 0 if strB is less than strA and 0 if strA and strB are equal length

_ft_strcmp:
	mov rax, 0			; set rax to 0

loop1:
	cmp BYTE[rdi], 0	; check if strA has ended
	jz	loop2			; jump to loop2 if strA has ended
	inc	rdi				; increase rdi
	jmp loop2			; jump to second loop

loop2:
	cmp BYTE[rsi], 0	; check if strB has ended
	jz	exit			; exit if strB has ended
	inc	rsi				; increase rsi
	jmp loop1			; start loop again
	
compare:
	cmp rdi, rsi		; compare value of the 2 counters

exit:
	ret