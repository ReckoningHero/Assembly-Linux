;Alen Shaju

;Programming Assignment Part 2

;In this program, when the for loop is executed, it uses 2 Branch and link functions (size) and (next),
;which branches out and return using the register R14.
;The program reserves an address space based on the memory requirements. 
;In the store part of the code. The value after the subtract operation is stored in the array a[i],
;which is computed using logical shift left, since the size of the integer is 4 bytes.
;If the comparison turns out to be equal or greater than 100, then program exits.

	TTL HW_5v1

	AREA RESET,DATA,READONLY
	
	EXPORT __Vectors ;
		
__Vectors	DCD 0x20002000	 ; stack pointer value when
							 ; stack is empty

			DCD Reset_Handler	; reset vector
				
	AREA MYCODE,CODE,READONLY
		
	ENTRY
	
	EXPORT Reset_Handler
	
Reset_Handler

MOV32	R1, #0 ; set R1 to 0 
	ADRL	R2, A	; Load register R2 with address
	MOV32  	R0, #0	; set R0 to 0
	MOV32	R3, #100 ; set R3 to 100

A	SPACE 400 ; defines 400 bytes of zeroed store 
	
loop	
	BL size	; Calls the function size
	CMP R0, R5	; compares the register R0 and R5
	SUB R1, R3, R0 ; subtracts R0 from R3 and stores the result to R1
	BL next ; Calls next
	BGE Exit	; If the compare statement is greater than or equal to 100, the it Branches to Exit
	STR R1, [R2, R0, LSL #2] ; Address of a[i]: R2 + R0*2^2 (Logical Shift Left of 4 bytes)
							 ; And stores R1 to a[i]
	BLT loop	; if the compare statement on line 28 is less than 100, the loop continues

size
	MOV32 R5, #100 ; sets R5 to 100
	BX R14 ;  Return to the calling function

next
	ADD	R0, R0, #1	; Adds 1 to R0 and stores in R0
	BX R14	;  Return to the calling function

Exit
	
	END