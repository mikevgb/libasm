#include <string.h>
#include <stdio.h>

char	*ft_strdup(const char *s1);

int		main(int argc, char **argv)
{
	(void)argc;
	char i;
	char x;

	x = *ft_strdup(argv[1]);
	i = *strdup(argv[1]);
	printf("original %c\n", i);
	printf("our %c\n", x);
	


}