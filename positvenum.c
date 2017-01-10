#include <stdio.h>
#include <stdlib.h>
#include <math.h>
 
int main(int argc, char *argv[])
{
	float x;
	int count=0; 
	float t;
	
	printf("Enter a number: ");
	scanf("%f" ,&x); 
 
	if(x<=0)
	{
		printf("Invalid!\n");
		exit(0);
	}
	else
	{
		do
		{ 
			t=x/2;
			x=t; 
			count++; 
		}
		while(!(x<=0));
		printf("Number of iterations:%d\n ", count); 
	}
	return 0;
}