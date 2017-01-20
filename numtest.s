	.file	"numtest.c"
	.section	.rodata
.LC0:
	.string	"Please enter a number"
.LC1:
	.string	"%d"
.LC2:
	.string	"The number is a power of 2"
	.align 8
.LC3:
	.string	"The number is NOT a power of 2"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$.LC0, %edi
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L2
	movl	$.LC2, %edi
	call	puts
	jmp	.L3
.L2:
	movl	$.LC3, %edi
	call	puts
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
