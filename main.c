#include "libasm.h"

void clear_buffer(char *buffer, int size)
{
	int i = 0;
	while (i < size)
		buffer[i++] = 0;
}

int		main(int argc, char **argv)
{
	(void)argc;
	int x;
	char i;
	
	//////STRCMP
	if ((argv[1] && argv[2]) != 0)
	{
		printf("\033[0;32m[*] Strcmp [*]\033[0m\n");
		x = ft_strcmp(argv[1], argv[2]);
			printf("[  ft_strcmp  ]\n");
			printf("ft_strcmp %i\n" , x);
		x = strcmp(argv[1], argv[2]);
			printf("[  strcmp  ]\n");
			printf("strcmp %i\n" , x);
	}

	//////STRDUP	
	if (argv[1] != 0)
	{
		printf("\033[0;32m[*] Strdup [*]\033[0m\n");
		i = *ft_strdup(argv[1]);
			printf("[  ft_strdup  ]\n");
			printf("ft_strdup %c\n", i);
		i = *strdup(argv[1]);
			printf("[  strdup  ]\n");
			printf("strdup %c\n", i);
	}
	
	//////STRLEN
	if (argv[1] != 0)
	{
		printf("\033[0;32m[+] Strlen [+]\033[0m\n");
		x = ft_strlen(argv[1]);
			printf("[  ft_strlen  ]\n");
			printf("ft_strlen %i\n", x);
		x = strlen(argv[1]);
			printf("[  strlen  ]\n");
			printf("strlen %i\n", x);
	}
	
	//////WRITE
	if (argv[1] != 0)
	{
		printf("\033[0;32m[*] Write [*]\033[0m\n");
		printf("[  ft_write  ]\n");
		ft_write(0, argv[1], ft_strlen(argv[1]));
		write(0, "\n", 1);
		printf("[  write  ]\n");
		write(0, argv[1], strlen(argv[1]));
		write(0, "\n", 1);
	}
	//////STRCPY
	char	s1[] = "Hey!!!";
	char	s2[20];

	s2[0] = '\0';
	printf("\033[0;32m[*] Strcpy [*]\033[0m\n");
	printf("S1: %s\n", s1);
	printf("S2: %s\n", s2);
	printf("Copy S1 to S2...\n");
	ft_strcpy(s2, s1);
	printf("S1: %s\n", s1);
	printf("S2: %s\n", s2);

	//////READ
	int fd = open("read_test.txt", O_RDONLY);
	char buff1[891];
	int ret = 1;
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("\033[0;32m[*] Read [*]\033[0m\n");
	printf("%s\n", buff1);
	close(fd);

}