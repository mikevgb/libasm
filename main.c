#include "libasm.h"

int		main(int argc, char **argv)
{
	(void)argc;
	int x;
	char i;
	char *j;
	char	*tmp1;
	char	*tmp2;
	
	if ((argv[1] && argv[2]) != 0)
	{
		x = ft_strcmp(argv[1], argv[2]);
			printf("ft_strcmp %i\n" , x);
		x = strcmp(argv[1], argv[2]);
			printf("strcmp %i\n" , x);
	}
		
	if (argv[1] != 0)
	{
		i = *ft_strdup(argv[1]);
			printf("ft_strdup %c\n", i);
		i = *strdup(argv[1]);
			printf("strdup %c\n", i);
	}
	
	if (argv[1] != 0)
	{
		x = ft_strlen(argv[1]);
			printf("ft_strlen %i\n", x);
		x = strlen(argv[1]);
			printf("strlen %i\n", x);
	}
	
	if (argv[1] != 0)
	{
		ft_write(0, argv[1], ft_strlen(argv[1]));
		write(0, "\n", 1);
		write(0, argv[1], strlen(argv[1]));
		write(0, "\n", 1);
	}

	if ((argv[1] && argv[2]) != 0)
	{
		tmp1 = argv[1];
		tmp2 = argv[2];
		j = ft_strcpy(tmp1, tmp2);
			printf("ft_strcpy dest %s ori %s\n", tmp1, tmp2);
		j = strcpy(argv[1], argv[2]);
			printf("strcpy dest %s ori %s\n", argv[1], argv[2]);
	}
	
	return(0);
}