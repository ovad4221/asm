	.file	"hh.c"
	.text
	.globl	arr
	.data
	.align 32
	.type	arr, @object
	.size	arr, 40
arr:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	0
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L2
.L6:
	movl	$0, -4(%rbp)
	jmp	.L3
.L5:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	arr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	leaq	arr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	arr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rcx
	leaq	arr(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	swap@PLT
.L4:
	addl	$1, -4(%rbp)
.L3:
	cmpl	$8, -4(%rbp)
	jbe	.L5
	addl	$1, -8(%rbp)
.L2:
	cmpl	$9, -8(%rbp)
	jbe	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
