#include <stdio.h>
#include <stdlib.h>
 
 
bool isPrime(int n);
 
int main(int argc, char *argv[])
{
	int number; 
	printf("Please enter a number: "); 
 
	scanf("%d", &number); 
	
	if(isPrime(number))
	{
		printf("%d is a prime number\n",num);
	}
	else
	{
		printf("%d is NOT a prime number\n",num);
	}
 
}
 
bool isPrime(int n)
{
	long i; 
	if (n < 2) 
		return false; 
		
	for (i = 2; i < n; i++) 
	{
		if ((n % i) == 0) 
			return false;
	}	
	return true; 
}
 