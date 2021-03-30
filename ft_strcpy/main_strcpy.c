#include <stdio.h>
#include <string.h>

int		ft_strcpy (char *dest, char *origin);

int		main(int argc, char **argv)
{
	(void)argc;
	int i;
	char	*x;

	i = ft_strcpy(argv[1], argv[2]);
	printf("dest %s ori %s\n", argv[1], argv[2]);
	// x = strcpy(argv[1], argv[2]);
	// printf("dest %s ori %s\n", argv[1], argv[2]);
	return(1);
}