	.file	"RateofChange.c"
	.section	.rodata
.LC0:
	.string	"Enter first X parameter:"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Enter corresponding Y parameter:"
.LC3:
	.string	"Enter second X parameter:"
.LC4:
	.string	"The rate of change is:%f \n"
.LC6:
	.string	"The equation is increasing. "
.LC7:
	.string	"The equation is decreasing. "
	.align 8
.LC8:
	.string	"The equation is not changing. "
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
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, %ebx
	cltd
	idivl	%ebx
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movss	-20(%rbp), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L12
	movl	$.LC6, %edi
	call	puts
	jmp	.L4
.L12:
	xorps	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.L13
	movl	$.LC7, %edi
	call	puts
	jmp	.L4
.L13:
	xorps	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L4
	xorps	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L4
	movl	$.LC8, %edi
	call	puts
.L4:
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
