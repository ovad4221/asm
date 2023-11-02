	.file	"structs.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZL1n, @object
	.size	_ZL1n, 4
_ZL1n:
	.long	100000000
	.text
	.globl	_Z9petrushka3Dog
	.type	_Z9petrushka3Dog, @function
_Z9petrushka3Dog:
.LFB1731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	16(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1731:
	.size	_Z9petrushka3Dog, .-_Z9petrushka3Dog
	.globl	main
	.type	main, @function
main:
.LFB1732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-399998976(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1072, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$4, -400000032(%rbp)
	movb	$109, -400000016(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -400000024(%rbp)
	movl	$0, -400000036(%rbp)
	jmp	.L4
.L5:
	movl	-400000036(%rbp), %eax
	cltq
	leaq	4(%rax), %rdx
	movl	-400000036(%rbp), %eax
	movl	%eax, -400000028(%rbp,%rdx,4)
	addl	$1, -400000036(%rbp)
.L4:
	cmpl	$99999999, -400000036(%rbp)
	jle	.L5
	subq	$400000024, %rsp
	movq	%rsp, %rax
	movq	%rax, %rcx
	leaq	-400000032(%rbp), %rax
	movl	$400000024, %edx
	subq	$8, %rsp
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	addq	$8, %rsp
	call	_Z9petrushka3Dog
	addq	$400000024, %rsp
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L10
	cmpl	$65535, -8(%rbp)
	jne	.L10
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2227:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z9petrushka3Dog, @function
_GLOBAL__sub_I__Z9petrushka3Dog:
.LFB2228:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2228:
	.size	_GLOBAL__sub_I__Z9petrushka3Dog, .-_GLOBAL__sub_I__Z9petrushka3Dog
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9petrushka3Dog
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1076690944
	.hidden	__dso_handle
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
