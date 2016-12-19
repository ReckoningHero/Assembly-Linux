	.file	"Table.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Multiplication Table from 1 to 10\n"
.LC1:
	.string	" X"
.LC2:
	.string	"%5d"
.LC3:
	.string	" "
.LC4:
	.string	"%2d"
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
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$10, -4(%rbp)
	jle	.L3
	movl	$.LC3, %edi
	call	puts
	movl	$1, -8(%rbp)
	jmp	.L4
.L7:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$1, -4(%rbp)
	jmp	.L5
.L6:
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L5:
	cmpl	$10, -4(%rbp)
	jle	.L6
	movl	$.LC3, %edi
	call	puts
	addl	$1, -8(%rbp)
.L4:
	cmpl	$10, -8(%rbp)
	jle	.L7
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
