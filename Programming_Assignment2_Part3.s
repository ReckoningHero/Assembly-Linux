	;Name: Joshua Nguyen
;Part3 of Programming Assignment 2

;Solution_Brief
;This program provides a case_counter for each register and reserves a address empty space from a 32 bit. 
;When a value is loading in each register, it switches each element in each registers regarding which case it fits best.
;
;int a[10]={7,6,4,5,5,1,3,2,9,8};
;int r=0, s=2;
;switch ( s ) {
;case 0:
;r = a[0] + a[1]; break;
;case 1:
;r = a[1] - a[2]; break;
;case 2:
;r = a[2] * a[3]; break;
;default:
;r = a[9];
;}
;


	TTL Programming Assignment2 Part_3
	AREA RESET,DATA,READONLY
	
	EXPORT __Vectors;

__Vectors 	DCD 0x20002000; Memory 
			DCD Reset_Handler ; reset vector
    
    AREA MYCODE,CODE,READONLY
    
    ENTRY
    EXPORT Reset_Handler
    
Reset_Handler

;;Moving Registers and declaring registers to 1,2,and 3
		ADRL R1, x; Array start at x
		MOV32 R2, #0;	"R2 equals to zero"
		MOV32 R3, #2;	"R3 equals to two"
		
		CMP R3, #0; compare each number in R3 to 0
		BEQ CASE_0; Number equal to zero then it goes to method, CASE_0	
		CMP R3, #1; Compare each number in R3 to 1
		BEQ CASE_1; Number equal to zero then it goes to method, CASE_1
		CMP R3, #2;compare any number in R3 to 2
		BEQ CASE_2; Number equal to zero then it goes to method, CASE_2
		
CASE_0
		LDR R4, [R1, #0];Loads R4's number in the array in first position
		LDR R5, [R1, #4];Loads R5's number in the array in secound position
		ADD R2, R4, R5; Totalling the two numbers in the array together
		B branch_exit; Exit Loop
		
CASE_1
		LDR R4, [R1, #4];Loads R4's number in the array in secound position
		LDR R5, [R1, #8];Loads R5's number in the array in third position
		SUB R2, R4, R5; Subtracting the two numbers in the array together
		B branch_exit; Exit Loop
		
CASE_2
		LDR R4, [R1, #8];Loads R4's number in the array in third position
		LDR R5, [R1, #12];Loads R5's number in the array in fouth position
		MUL R2, R4, R5; Multiplying the two numbers in the array together
		B branch_exit; Exit Loop
		
		LDR R4, [R2, #36]; loading number's ninth futher position in the array
		MOV R2, R4; Moving it from R4 to R2
		B branch_exit;

branch_exit    
		MOV32 R2, #0; Declaring zero in R2
		
		
x
	DCD 7,6,4,5,5,1,3,2,9,8; numbers in the array's elements
		
	END;Exiting the code