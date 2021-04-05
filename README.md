# libasm

* Must be 64 bits ASM
* Can't do inline ASM
* Must compile with nasm
* Must use Intel syntax
* library must be called libasm.a
* Must submit a main that will test the functions
* Must rewrite the following functions:
    * ft_strlen
    * ft_strcpy
    * ft_strcmp
    * ft_write
    * ft_read
    * ft_strdup
* Check errors during syscalls and properly set them when needed
* Must set the variable errno properly, you are allowed to call the extern ___error

Check that nasm is installed:
whereis nasm
should show something similar to /usr/bin/nasm otherwise you will se just nasm:

Links:
https://www.plantation-productions.com/Webster/www.artofasm.com/index.html

RAX is a 64 bit size register, is used to return values in functions.

RDI "register destination index" used for passing arguments to functions.

Example of compiling one function and the main:

nasm -f macho64 ft_strlen.s
gcc -c main_strlen.c
gcc ft_strlen.o main_strlen.o
./a.out "string"
