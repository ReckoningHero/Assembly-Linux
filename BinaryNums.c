#include <stdio.h>
#include <stdlib.h>
 
int main(int argc, char *argv[])
{ 
	int bin_arr[8];
	int other_bin_arr[8];
	
	printf("Please enter a binary number: ");
	for (int r=0;r<8;r++)
	{
		scanf("%d",&bin_arr[r]);
	}
	
	printf("\nBinary Number: ");
	printf("%d%d%d%d%d%d%d%d\n", bin_arr[0],bin_arr[1],bin_arr[2], 
	bin_arr[3],bin_arr[4],bin_arr[5],bin_arr[6],bin_arr[7]);
 
	printf("\nThe logical NOT operation of the inputted number is: ");
	
	for ( int i = 0; i < 8; i++) 
	{
		other_bin_arr[i]=(bin_arr[i] ^ 1 ) ;
	}
	
	printf("%d%d%d%d%d%d%d%d\n", other_bin_arr[0],other_bin_arr[1],other_bin_arr[2], 
	other_bin_arr[3],other_bin_arr[4],other_bin_arr[5],other_bin_arr[6],other_bin_arr[7]);
	printf("\n");
	
	return 0;
	
}
