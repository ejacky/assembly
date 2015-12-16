	.file	"helloworld.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello world"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB34:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$.LC0, (%esp)
	call	puts
	movl	$0, (%esp)
	call	exit
	.cfi_endproc
.LFE34:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
