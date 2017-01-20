#include <stdio.h>
int main(int argc, char *argv[])
{
	int i;
 
	printf("Please enter a number\n");
	scanf("%d", &i);
 
	if((i&(i-1))==0)
	{
		printf("The number is a power of 2\n");
	}
	else 
	{
		printf("The number is NOT a power of 2\n");
	}
 
	return 0;
}
