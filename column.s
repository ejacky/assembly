	.file	"column.c"
	.text
	.p2align 4,,15
	.globl	column
	.type	column, @function
column:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.p2align 4,,7
	.p2align 3
.L2:
	leal	b(,%edx,4), %edi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%ebx, %ebx
	.p2align 4,,7
	.p2align 3
.L4:
	movl	(%edi), %esi
	xorl	%eax, %eax
	.p2align 4,,7
	.p2align 3
.L3:
	movl	a(%eax,%ebx,4), %ecx
	imull	%esi, %ecx
	addl	%ecx, c(%eax,%edx,4)
	addl	$40, %eax
	cmpl	$400, %eax
	jne	.L3
	addl	$1, %ebx
	addl	$40, %edi
	cmpl	$10, %ebx
	jne	.L4
	addl	$1, %edx
	cmpl	$10, %edx
	jne	.L2
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	column, .-column
	.comm	c,400,32
	.comm	b,400,32
	.comm	a,400,32
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
