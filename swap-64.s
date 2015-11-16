	.file	"swap-64.c"
	.text
	.p2align 4,,15
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	(%rsi), %edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, (%rdi)
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%eax, (%rsi)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
