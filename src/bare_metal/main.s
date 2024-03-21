	.text
	.file	"main.c"
	.globl	merge                           # -- Begin function merge
	.p2align	4, 0x90
	.type	merge,@function
merge:                                  # @merge
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp) # lst1
	movq	%rsi, -16(%rbp) # lst2
	movq	%rdx, -24(%rbp) # res
	movl	$0, -28(%rbp) # p1
	movl	$0, -32(%rbp) # p2
	movl	$0, -36(%rbp) # i
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
  cmpl	$10, -36(%rbp) # if i is greater than equal 10
	jge	.LBB0_13
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
  cmpl	$5, -28(%rbp) # if p1 is less than 5
  jl	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
  # p1 >= 5 at this point
	movq	-16(%rbp), %rax # Save lst2 pointer in rax
	movslq	-32(%rbp), %rcx # save p2 in rcx
	movl	(%rax,%rcx,4), %edx # move lst2[p2] into edx
	movq	-24(%rbp), %rax # save res in rax
	movslq	-36(%rbp), %rcx # save i in rcx
	movl	%edx, (%rax,%rcx,4) # move lst2[p2] into res[i]
	movl	-32(%rbp), %eax # save p2 in eax
	addl	$1, %eax # add 1 to eax
	movl	%eax, -32(%rbp) # update p2 to p2++.
	jmp	.LBB0_11
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
  cmpl	$5, -32(%rbp) # if p2 is less than 5
	jl	.LBB0_6
  # If we reach here, then p2 >= LENGTH_RIGHT and p1 < LENGTH_LEFT
	movq	-8(%rbp), %rax # save lst1 address in rax
	movslq	-28(%rbp), %rcx # save p1 in rcx
  movl	(%rax,%rcx,4), %edx # index into lst1[p1] and save value in edx
	movq	-24(%rbp), %rax # save res in rax
	movslq	-36(%rbp), %rcx # save i in rcx
	movl	%edx, (%rax,%rcx,4) # move lst1[p1] into res[i]
	movl	-28(%rbp), %eax # Move p1 in eax
	addl	$1, %eax # add one to p1
	movl	%eax, -28(%rbp) # move p1 back to p1 position on stack
	jmp	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
  # both p1 < LENGTH_LEFT and p2 < LENGTH_RIGHT
	movq	-8(%rbp), %rax # move lst1 in rax
	movslq	-28(%rbp), %rcx # move p1 in rcx
	movl	(%rax,%rcx,4), %eax # move lst1[p1] into eax
	movq	-16(%rbp), %rcx # move lst2 in rcx
	movslq	-32(%rbp), %rdx # move p2 in rdx
  cmpl	(%rcx,%rdx,4), %eax # if lst2[p2] is greater than equal
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
  # Here lst1[p1] < lst2[p2]
	movq	-8(%rbp), %rax # save lst1 in rax
	movslq	-28(%rbp), %rcx # save p1 in rcx
	movl	(%rax,%rcx,4), %edx # save lst1[p1] edx
	movq	-24(%rbp), %rax # save res in rax
	movslq	-36(%rbp), %rcx # save i in rcx
	movl	%edx, (%rax,%rcx,4) # move lst1[p1] into res[i]
	movl	-28(%rbp), %eax # save p1 in eax
	addl	$1, %eax # add one to the value
	movl	%eax, -28(%rbp) # save p1++
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
  # Here lst2[p2] >= lst1[p1]
	movq	-16(%rbp), %rax  # lst2 in rax
	movslq	-32(%rbp), %rcx # p2 in rcx
	movl	(%rax,%rcx,4), %edx # save lst2[p2] in edx
	movq	-24(%rbp), %rax # res in rax
	movslq	-36(%rbp), %rcx # i in rcx
	movl	%edx, (%rax,%rcx,4) # lst2[p2] in res[i]
	movl	-32(%rbp), %eax # p2 in eax
	addl	$1, %eax # increase py 1
	movl	%eax, -32(%rbp) # p2 back to position on stack
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
# Update counter and continue
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_13:
# End of function merge
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	merge, .Lfunc_end0-merge
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp # Make space for all variables
	movl	$0, -4(%rbp) # add 0 to the top
	movq	.L__const.main.lst1(%rip), %rax # Load two ints into lst1
	movq	%rax, -32(%rbp)
	movq	.L__const.main.lst1+8(%rip), %rax # Load another two
	movq	%rax, -24(%rbp)
	movl	.L__const.main.lst1+16(%rip), %eax # Load last int and size
	movl	%eax, -16(%rbp)
	movq	.L__const.main.lst2(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const.main.lst2+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	.L__const.main.lst2+16(%rip), %eax
	movl	%eax, -48(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx # There is implicitly enough space for res
	callq	merge
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.lst1,@object     # @__const.main.lst1
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.main.lst1:
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	9                               # 0x9
	.size	.L__const.main.lst1, 20

	.type	.L__const.main.lst2,@object     # @__const.main.lst2
	.p2align	4, 0x0
.L__const.main.lst2:
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	6                               # 0x6
	.long	8                               # 0x8
	.long	10                              # 0xa
	.size	.L__const.main.lst2, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 203757776826cfd164c537048ec90f5ada50cae2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym merge
