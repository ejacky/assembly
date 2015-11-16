	.file	"zincr.c"
	.text
	.p2align 4,,15
	.globl	zincr
	.type	zincr, @function
zincr:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
.L2:
	addl	$1, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	$5, %eax
	jne	.L2
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	zincr, .-zincr
	.globl	ucb
	.data
	.align 4
	.type	ucb, @object
	.size	ucb, 20
ucb:
	.long	9
	.long	4
	.long	7
	.long	2
	.long	0
	.globl	mit
	.align 4
	.type	mit, @object
	.size	mit, 20
mit:
	.long	0
	.long	2
	.long	1
	.long	3
	.long	9
	.globl	cmu
	.align 4
	.type	cmu, @object
	.size	cmu, 20
cmu:
	.long	1
	.long	5
	.long	2
	.long	1
	.long	3
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
