int		ft_strcpy(char *origin, char *dest)
{
	int i;

	i = 0;
	while(origin[i] != '\0')
	{
		dest[i] = origin[i];
		i++;
	}
	dest[i] = '\0';
	return(dest);
}