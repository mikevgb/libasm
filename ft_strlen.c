int		ft_strlen(char *input)
{
	int i;
	
	i = 0;
	while(input[i] != '\0')
		i++;
	return(i);
}