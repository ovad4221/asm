	.file	"allmy_for.s"
    
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

    .section	.rodata
.LC0:
	.string	"..: %d"

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
	subq	$16, %rsp  ;# then we have 16 bytes of local stack

start:
	movl $0, %eax
	movl $0, -4(%rbp)
	jmp for

infor:
	movl -4(%rbp), %ecx
	leaq 0(, %ecx, 4), %rdx
	leaq arr(%rip), %rbx
	addq (%rdx, %rbx), %rax
	addl $1, -4(%rbp)

for:
	cmpl $10, -4(%rbp)
	jb infor

exit_out:
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
    movq	%rax, %rdi
    movl	$0, %eax
	call	printf@PLT
    
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


