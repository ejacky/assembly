	.file	"arith.c"
	.text
	.p2align 4,,15
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	pushl	%ebx
	movl	16(%ebp), %eax
	movl	%edx, %ebx
	.cfi_offset 3, -12
	addl	$40, %edx
	imull	%ecx, %ebx
	addl	%ecx, %ecx
	sarl	%cl, %edx
	subl	%ebx, %eax
	imull	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
