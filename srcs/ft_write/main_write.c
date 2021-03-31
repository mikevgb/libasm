#include <stdio.h>
#include <string.h>

ssize_t write(int fildes, const void *buf, size_t nbyte);

int		main(int argc, char **argv)
{
	(void)argc;

	write(0, argv[1], strlen(argv[1]));
	return(1);
}