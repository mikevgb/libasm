global _print_A ; con guion bajo para nasm y sin cuando usamos gcc
;si quiero llamar a una funcion externa pondriamos
;extern _nombredelafuncion
;tenemos 3 tipos de section 
		;1.
		;data ej: section.data -> pones cualquier variable que quieres definir de antemano
		;				test1:  ->ponemos el nombre de la variable y luego el tamanyo que reservamos 
		;						"db declare byte como char en c" "dw declare word, como short en c"
		;						"dd declare double como un int en c" "dq declare quad word, como long"
_print_A		
section.data 
	test1:	dd 1234
	test2:	db 65 ;si queremos meter un caracter seria su valor en ascii en este caso 65 es A
		;2.
		;bss ej: resreva memoria para la variable pero no tenemos que definirlo
section.bss
	test1:	dd
		;3.
		;text llama a los registros predefinidos en la cpu y la memoria ram
		;hay 16 registros de uso general dentro de una cpu 64 bits moderna
		;https://courses.cs.washington.edu/courses/cse378/10au/sections/Section1_recap.pdf
section.text
	sub rax, rax ;aqui ponemos el registro rax a 0 por que no sabemos que contienen sus bits, 
					;lo que hacemos con sub es restar el valor que pueda contener rax
	mov rax, test2 ;guardamos el valor de test2 que esta en data (alojado en la RAM) y lo movemos a rax
	ret				;con ret finalizamos la funcion, y sigue con el resto del programa
