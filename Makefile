SRC =	ft_read.s \
		ft_strcmp.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_strlen.s \
		ft_write.s

OBJS =	$(SRC:.s=.o)

%.o	: %.s libasm.h
	nasm -f macho64 $< -o $@

LIB = 	libasm.a

RM	=	rm -rf

$(LIB): $(OBJS)
		ar rcs $(LIB) $(OBJS)
		gcc -Wall -Wextra -Werror -o main.out main.c -L ./ -lasm

all:	$(LIB)

clean:	
		$(RM) $(OBJS) main.out

fclean:	clean
		$(RM) $(LIB) main.out

re:		fclean all

.PHONY:	all clean fclean re