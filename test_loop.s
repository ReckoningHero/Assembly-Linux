	.file	"test.c"
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
	subq	$296, %rsp
	movl	$0, -404(%rbp)
	jmp	.L2
.L3:
	movl	$100, %eax
	subl	-404(%rbp), %eax
	movl	%eax, %edx
	movl	-404(%rbp), %eax
	cltq
	movl	%edx, -400(%rbp,%rax,4)
	addl	$1, -404(%rbp)
.L2:
	cmpl	$99, -404(%rbp)
	jle	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
