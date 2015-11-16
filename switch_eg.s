	.file	"switch_eg.c"
	.text
	.p2align 4,,15
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	cmpl	$6, %ebx
	jbe	.L11
.L8:
	movl	$2, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.p2align 4,,7
	.p2align 3
.L11:
	.cfi_restore_state
	jmp	*.L7(,%ebx,4)
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L8
	.long	.L3
	.long	.L4
	.long	.L9
	.long	.L8
	.long	.L6
	.long	.L6
	.text
	.p2align 4,,7
	.p2align 3
.L6:
	movl	$1, %eax
	subl	%ecx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,7
	.p2align 3
.L9:
	.cfi_restore_state
	movl	$1, %eax
	addl	%ecx, %eax
.L12:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,7
	.p2align 3
.L4:
	.cfi_restore_state
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	addl	%ecx, %eax
	jmp	.L12
	.p2align 4,,7
	.p2align 3
.L3:
	imull	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg, .-switch_eg
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
