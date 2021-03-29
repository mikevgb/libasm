#include <stdio.h>

int		ft_strcpy (char *dest, char *origin);

int		main(int argc, char **argv)
{
	(void)argc;
	int i;

	i = ft_strcpy(argv[1], argv[2]);
		printf("dest %s\n origin %s\n", argv[1], argv[2]);
	return(1);

}