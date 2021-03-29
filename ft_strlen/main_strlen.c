#include <stdio.h>

int		ft_strlen (char *str);

int 	main(int argc, char **argv)
{
	int i;
	(void)argc;
	
	i = ft_strlen(argv[1]);
		printf("%i\n", i);
	return(1);
}