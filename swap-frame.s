	.file	"swap-frame.c"
	.text
	.p2align 4,,15
	.globl	swap
	.type	swap, @function
swap:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	pushl	%ebx
	movl	(%edx), %ecx
	movl	(%eax), %ebx
	.cfi_offset 3, -12
	movl	%ebx, (%edx)
	movl	%ecx, (%eax)
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1:
	.size	swap, .-swap
	.p2align 4,,15
	.globl	call_swap
	.type	call_swap, @function
call_swap:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$zip2, 4(%esp)
	movl	$zip1, (%esp)
	call	swap
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	call_swap, .-call_swap
	.globl	zip2
	.data
	.align 4
	.type	zip2, @object
	.size	zip2, 4
zip2:
	.long	91125
	.globl	zip1
	.align 4
	.type	zip1, @object
	.size	zip1, 4
zip1:
	.long	15213
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
