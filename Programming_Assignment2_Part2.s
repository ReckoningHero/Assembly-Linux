	;Name: Joshua Nguyen
;Part2 of Programming Assignment 2

;Solution_Brief
;This program provides a loop counter for each register and reserves a address empty space from a 32 bit. 
;When a value is branches out and return, it is using Register 12. Thus, exiting the code if the value is greater or equal to 10  and continues if less.

;C Code Below

;int main(int argc, char **argv)
;{
;int a[10]={7,6,4,5,5,1,3,2,9,8};
;int i=0;
;int s=0;
;while ( i < 10 ) {
;s = s + a[i];
;i = i+1;
;}
;return 0;
;}
;

	TTL Programming Assignment2 Part_2
	AREA RESET,DATA,READONLY
	
	EXPORT __Vectors;

__Vectors 	DCD 0x20002000
			DCD Reset_Handler ; reset vector
    
    AREA MYCODE,CODE,READONLY
    
    ENTRY
    EXPORT Reset_Handler
    
Reset_Handler

;;Moving Registers and Storing bytes into memory
		ADRL  	R1, x ;Array set to R1 
		MOV32  	R2, #0	; interger i must be equal to 0
		MOV32	R3, #1; integer s must be equal to 1
		
;;Loop Counter-looping each registers
while_loop_counter

		CMP R4, #10; Comparing numbers within each element of the array to 10
		BGE branch_exit; "If the number in the array is greatter or equal to 10, the program will exits. Thus, it will move to the next element in the arrray
		LDR R3, [R1, R4, LSL #2]; Loading at least 4 bits/bytes to create space for the next element in the array
		ADD R5, R3, R5; Adding from R3 to R5 in the array
		ADD R2, #1; Implementing ADD to add one to R1 in order to move the next element in the array
		B while_loop_counter; Return to the while_loop method in order to repeat the iteration once again
		

branch_exit    
	MOV32 R2, #0 ;Declaring R2 to 0
x
	DCD 7,6,4,5,5,1,3,2,9,8;Numbers in each element in the array x
		
	END;Exiting the code