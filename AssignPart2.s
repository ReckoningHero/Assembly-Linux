	.file	"AssignPart2.c"
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
	subq	$432, %rsp
	movl	%edi, -420(%rbp)
	movq	%rsi, -432(%rbp)
	movl	$0, -404(%rbp)
	jmp	.L2
.L3:
	movl	$100, %eax
	subl	-404(%rbp), %eax
	movl	%eax, %edx
	movl	-404(%rbp), %eax
	cltq
	movl	%edx, -400(%rbp,%rax,4)
	movl	-404(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	next
.L2:
	movl	$0, %eax
	call	size
	cmpl	-404(%rbp), %eax
	jg	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
