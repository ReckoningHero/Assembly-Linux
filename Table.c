#include <stdio.h>
using namespace std;
int main(int argc, char *argv[])
{
	int multi1,multi2; 
	printf ("Multiplication Table from 1 to 10\n\n" );
	printf (" X" );
 
	for (multi2 = 1 ; multi2 <= 10; multi2++ )
	printf("%5d" ,multi2);
	printf(" \n" );
	
	for (multi1 = 1 ; multi1 <= 10; multi1++ ) 
	{
		printf ("%2d" ,multi1); 
		for (multi2 = 1 ; multi2 <=10; multi2++ )
			printf("%5d" , multi1 * multi2);
			printf(" \n" );
	}
	
	return 0;
}