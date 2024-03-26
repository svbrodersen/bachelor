	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0_a2p1_c2p0"
	.file	"main.c"
	.globl	merge                           # -- Begin function merge
	.p2align	1
	.type	merge,@function
merge:                                  # @merge
# %bb.0:
	addi	sp, sp, -32 # Make room for return address and frame pointer
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0) # lst1
	sw	a1, -16(s0) # lst2
	sw	a2, -20(s0) # res
	li	a0, 0 # Set return value to 0
	sw	a0, -24(s0) # p1
	sw	a0, -28(s0) # p2
	sw	a0, -32(s0) # i
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -32(s0) # get i
	li	a0, 9 # load 9 into a0 immediate
	blt	a0, a1, .LBB0_13 # go to LBB0_13 if a0 < a1 => i > 9
	j	.LBB0_2 # i < 10
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0) # Load p1
	li	a1, 5
	blt	a0, a1, .LBB0_4 # if a0 < a1 goto LBB0_4 => p1 < 5
	j	.LBB0_3 # p1 >= 5
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -16(s0) # Load lst2
	lw	a1, -28(s0) # Load p2
	slli	a1, a1, 2 # p2 << 2 => p2*4
	add	a0, a0, a1 # lst2[p2] address
	lw	a0, 0(a0) # Load lst2[p2]
	lw	a1, -20(s0) # res
	lw	a2, -32(s0) # i
	slli	a2, a2, 2 # i<<2 => i*4
	add	a1, a1, a2 # res[i] address
	sw	a0, 0(a1) # Save lst2[p2] in res[i]
	lw	a0, -28(s0) # load p2
	addi	a0, a0, 1 # add 1
	sw	a0, -28(s0) # save it back
	j	.LBB0_11 # goto LBB0_11
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0) # Load p2
	li	a1, 5
	blt	a0, a1, .LBB0_6 # p2 < 5 goto LBB0_6
	j	.LBB0_5 # p2 >= 5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
  # Same as LBB0_3 for p1 and lst1
	lw	a0, -12(s0)
	lw	a1, -24(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -12(s0) # lst1
	lw	a1, -24(s0) # p1
	slli	a1, a1, 2 # p1 << 2 => p1*4
	add	a0, a0, a1 # address of lst1[p1]
	lw	a0, 0(a0) # load lst1[p1]
	lw	a1, -16(s0) # lst2
	lw	a2, -28(s0) # p2
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1) #load lst2[p2]
	bge	a0, a1, .LBB0_8 # if lst1[p1] >= lst2[p2] goto LBB0_8
	j	.LBB0_7 # lst1[p1] < lst2[p2]
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
  # res[i] = lst1[p1]
	lw	a0, -12(s0)
	lw	a1, -24(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
  # p1++
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
  # res[i] = lst2[p2]
	lw	a0, -16(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -20(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
  # p2++
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
  # i++
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_13:
  # Reload return address and frame pointer probably not needed
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
  # set stack pointer to after merge call
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	merge, .Lfunc_end0-merge
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -96 # make room for variables
	sw	ra, 92(sp)                      # 4-byte Folded Spill
	sw	s0, 88(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 96
	li	a0, 0 # reset a0
	sw	a0, -96(s0)                    # 4-byte Folded Spill - reset s0
	sw	a0, -12(s0)
	li	a0, 9
	sw	a0, -16(s0)
	li	a0, 7
	sw	a0, -20(s0)
	li	a0, 5
	sw	a0, -24(s0)
	li	a0, 4
	sw	a0, -28(s0)
	li	a0, 1
	sw	a0, -32(s0)
	li	a0, 10
	sw	a0, -36(s0)
	li	a0, 8
	sw	a0, -40(s0)
	li	a0, 6
	sw	a0, -44(s0)
	li	a0, 3
	sw	a0, -48(s0)
	li	a0, 2
	sw	a0, -52(s0)
	addi	a0, s0, -32 # Set function argument 0 to -32(lst1)
	addi	a1, s0, -52 # Set function argument 1 to -52(lst2)
	addi	a2, s0, -92 # Set function argument 2 to -92(res)
	call	merge # Call merge function
	lw	a0, -96(s0)                     # 4-byte Folded Reload
	lw	ra, 92(sp)                      # 4-byte Folded Reload
	lw	s0, 88(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 96 # Set stackpointer to the start of before the function
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.lst1,@object     # @__const.main.lst1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.main.lst1:
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	9                               # 0x9
	.size	.L__const.main.lst1, 20

	.type	.L__const.main.lst2,@object     # @__const.main.lst2
	.p2align	2, 0x0
.L__const.main.lst2:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	10                              # 0xa
	.size	.L__const.main.lst2, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 203757776826cfd164c537048ec90f5ada50cae2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym merge
