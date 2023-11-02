	.file	"structs.c"
	.text
	.globl	print_s
	.type	print_s, @function
print_s:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	32(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	print_s, .-print_s
	.globl	abram_lincoln
	.type	abram_lincoln, @function
abram_lincoln:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	%edx, -60(%ebp)
	movl	%gs:20, %edx
	movl	%edx, -12(%ebp)
	xorl	%edx, %edx
	movl	$3, -44(%ebp)
	fldl	.LC0@GOTOFF(%eax)
	fstpl	-40(%ebp)
	movb	$102, -32(%ebp)
	movl	$4, -28(%ebp)
	movl	$4, -24(%ebp)
	movl	$1, -20(%ebp)
	movl	$1, -16(%ebp)
	movl	-60(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, (%eax)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-28(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-24(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-16(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L5
	call	__stack_chk_fail_local
.L5:
	movl	-60(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE7:
	.size	abram_lincoln, .-abram_lincoln
	.section	.rodata
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$80, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$1, -44(%ebp)
	fldl	.LC1@GOTOFF(%ebx)
	fstpl	-40(%ebp)
	movb	$109, -32(%ebp)
	movl	$7, -28(%ebp)
	movl	$7, -24(%ebp)
	movl	$6, -20(%ebp)
	movl	$6, -16(%ebp)
	leal	-88(%ebp), %eax
	subl	$12, %esp
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	pushl	-44(%ebp)
	pushl	%eax
	call	abram_lincoln
	addl	$44, %esp
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	pushl	-44(%ebp)
	call	print_s
	addl	$32, %esp
	subl	$8, %esp
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	movl	$0, %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L8
	call	__stack_chk_fail_local
.L8:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-1717986918
	.long	1072798105
	.align 8
.LC1:
	.long	1717986918
	.long	1073899110
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB9:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE9:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB10:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE10:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
