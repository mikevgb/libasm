#include <stdio.h>
#include <string.h>

int	ft_strcmp(const char *s1, const char *s2);

int		main(int argc, char **argv)
{
	int i;
	(void)argc;
	int x;

	// i = ft_strcmp(argv[1], argv[2]);
	// 	printf("%i\n", i);
	x = strcmp(argv[1], argv[2]);
	printf("strcmp %i\n" , x);
	return(1);
}