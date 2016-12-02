	;Name: Joshua Nguyen
;Part1 of Programming Assignment 2

;Solution_Brief________________________________________________________________________________________________
;This program provides a loop counter for each register and reserves a address empty space from a 32 bit. 
;When a value is branches out and return, it is using Register 0 and 1. Thus, exiting the code if the value is greater or equal to 10  and continues if less than 10.
;_______________________________________________________________________________________________________________
;C Code Below

;int main(int argc, char **argv)
;{
;int a[10]={7,6,4,5,5,1,3,2,9,8};
;int i;
;int s=1;
;for (i=0; i<10; i++)
;if (s==a[i]) break;
;return 0;
;}
;

	TTL Programming Assignment2 Part_1
	AREA RESET,DATA,READONLY
	
	EXPORT __Vectors;

__Vectors 	DCD 0x20002000
			DCD Reset_Handler ; reset vector
    
    AREA MYCODE,CODE,READONLY
    
    ENTRY
    EXPORT Reset_Handler
    
Reset_Handler

;;Moving Registers and declaring registers to 0 and 1
		ADRL R1, x; Array start at A
		MOV32 R3, #0;	"Integer i = 0"
		MOV32 R2, #1;	"Integer s = 1"

;;Loop Counter-looping each registers and exiting it
loop_counter

		CMP R3, #10; 'Comparing numbers in the array x to 10'
		BGE branch_exit; "If the number is greater than or equal to 10, the program exits! Otherwise, moves it to the next step
		LDR R0, [R1,R3, LSL #2]; loads 4 bits to make space for the next element in the array
		CMP R2, R0; Compares R2 and R0's number
		ADD R3, #1; Adding number to register 3 which then moves it to the next element in the array
		BEQ branch_exit; 'If numbers in the array are equal, the loop will exits!
		B loop_counter; Goes to another loop iteration
		
;;Branch Exit-Exiting the code of the loop
branch_exit    

	MOV32 R3, #0;Declaring Register 3 to 0
	
x 

	DCD 7,6,4,5,5,1,3,2,9,8 ;Giving the values to the Array X
	
	END;Exiting the code