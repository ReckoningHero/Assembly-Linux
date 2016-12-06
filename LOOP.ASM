		.Ltext0:
			.section	.rodata
		.LC0:
0000 48656C6C		.string "Hello World!"
     6F20576F 
     726C6421 
     00
			.text
			.globl	main
		main:
		.LFB2:
			.cfi_startproc
0000 55 		pushq	%rbp
			.cfi_def_cfa_offset 16
			.cfi_offset 6, -16
0001 4889E5		movq	%rsp, %rbp
			.cfi_def_cfa_register 6
0004 BF000000		movl	$.LC0, %edi
     00
0009 E8000000		call	puts
     00
000e B8000000		movl	$0, %eax
     00
0013 5D 		popq	%rbp
			.cfi_def_cfa 7, 8
0014 C3 		ret
			.cfi_endproc
		.LFE2:
		.Letext0: