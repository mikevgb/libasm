SRCS =	srcs/ft_read/ft_read.s \
		srcs/ft_strcmp/ft_strcmp.s \
		srcs/ft_strcpy/ft_strcpy.s \
		srcs/ft_strdup/ft_strdup.s \
		srcs/ft_strlen/ft_strlen.s \
		srcs/ft_write/ft_write.s

OBJS =	$(SRCS:.s=.o)

%.o	: %.s
	nasm -f macho64 $< -o $@

NAME = 	libasm.a

RM	=	rm -rf

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

all:	$(NAME)

clean:	
		$(RM) $(OBJS)

fclean:	clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:	all clean fclean re