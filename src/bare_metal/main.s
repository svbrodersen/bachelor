	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0"
	.file	"main.c"
	.file	1 "/home/simon/Programming/cs_econ/bachelor/src/bare_metal" "main.c"
	.file	2 "/home/simon/Programming/cs_econ/bachelor/src/bare_metal" "./include/../threads/context/bits.h"
	.file	3 "/opt/llvm/lib/clang/19/include" "__stddef_size_t.h"
	.file	4 "/home/simon/Programming/cs_econ/bachelor/src/bare_metal" "./include/threads.h"
	.file	5 "/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h"
	.file	6 "/opt/riscv/riscv64-unknown-elf/include/sys" "types.h"
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 # @memcpy
.Lfunc_begin0:
	.loc	1 15 0                          # main.c:15:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	li	a0, 0
.Ltmp0:
	.loc	1 16 15 prologue_end            # main.c:16:15
	sw	a0, -24(s0)
	.loc	1 16 8 is_stmt 0                # main.c:16:8
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp1:
	.loc	1 16 22                         # main.c:16:22
	lw	a0, -24(s0)
	.loc	1 16 26                         # main.c:16:26
	lw	a1, -20(s0)
.Ltmp2:
	.loc	1 16 3                          # main.c:16:3
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp3:
	.loc	1 17 34 is_stmt 1               # main.c:17:34
	lw	a0, -16(s0)
	.loc	1 17 39 is_stmt 0               # main.c:17:39
	lw	a2, -24(s0)
	.loc	1 17 25                         # main.c:17:25
	add	a0, a0, a2
	lbu	a0, 0(a0)
	.loc	1 17 14                         # main.c:17:14
	lw	a1, -12(s0)
	.loc	1 17 5                          # main.c:17:5
	add	a1, a1, a2
	.loc	1 17 23                         # main.c:17:23
	sb	a0, 0(a1)
	.loc	1 18 3 is_stmt 1                # main.c:18:3
	j	.LBB0_3
.Ltmp4:
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 16 30                         # main.c:16:30
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	.loc	1 16 3 is_stmt 0                # main.c:16:3
	j	.LBB0_1
.Ltmp5:
.LBB0_4:
	.loc	1 0 3                           # main.c:0:3
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	.loc	1 19 1 epilogue_begin is_stmt 1 # main.c:19:1
	addi	sp, sp, 32
	ret
.Ltmp6:
.Lfunc_end0:
	.size	memcpy, .Lfunc_end0-memcpy
	.cfi_endproc
                                        # -- End function
	.globl	pow_2                           # -- Begin function pow_2
	.p2align	1
	.type	pow_2,@function
pow_2:                                  # @pow_2
.Lfunc_begin1:
	.loc	1 21 0                          # main.c:21:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
.Ltmp7:
	.loc	1 21 35 prologue_end            # main.c:21:35
	lw	a1, -12(s0)
	li	a0, 1
	.loc	1 21 32 is_stmt 0               # main.c:21:32
	sll	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 21 20 epilogue_begin          # main.c:21:20
	addi	sp, sp, 16
	ret
.Ltmp8:
.Lfunc_end1:
	.size	pow_2, .Lfunc_end1-pow_2
	.cfi_endproc
                                        # -- End function
	.globl	get_curr_idx                    # -- Begin function get_curr_idx
	.p2align	1
	.type	get_curr_idx,@function
get_curr_idx:                           # @get_curr_idx
.Lfunc_begin2:
	.loc	1 23 0 is_stmt 1                # main.c:23:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Ltmp9:
	.loc	1 24 36 prologue_end            # main.c:24:36
	lw	a0, -16(s0)
	.loc	1 24 43 is_stmt 0               # main.c:24:43
	lui	a1, %hi(core_num_jobs)
	addi	a1, a1, %lo(core_num_jobs)
	slli	a2, a0, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	.loc	1 24 61                         # main.c:24:61
	slli	a1, a1, 2
	.loc	1 24 40                         # main.c:24:40
	add	a1, a1, a0
	li	a0, 6
	sub	a0, a0, a1
	.loc	1 24 4                          # main.c:24:4
	lw	a1, -12(s0)
	.loc	1 24 13                         # main.c:24:13
	sw	a0, 0(a1)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 25 1 epilogue_begin is_stmt 1 # main.c:25:1
	addi	sp, sp, 16
	ret
.Ltmp10:
.Lfunc_end2:
	.size	get_curr_idx, .Lfunc_end2-get_curr_idx
	.cfi_endproc
                                        # -- End function
	.globl	mark_done                       # -- Begin function mark_done
	.p2align	1
	.type	mark_done,@function
mark_done:                              # @mark_done
.Lfunc_begin3:
	.loc	1 27 0                          # main.c:27:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, s0, -16
.Ltmp11:
	.loc	1 29 3 prologue_end             # main.c:29:3
	call	get_hartid
	.loc	1 30 27                         # main.c:30:27
	lw	a1, -16(s0)
	addi	a0, s0, -12
	.loc	1 30 3 is_stmt 0                # main.c:30:3
	call	get_curr_idx
	.loc	1 31 17 is_stmt 1               # main.c:31:17
	lw	a1, -16(s0)
	.loc	1 31 3 is_stmt 0                # main.c:31:3
	lui	a0, %hi(core_num_jobs)
	addi	a0, a0, %lo(core_num_jobs)
	slli	a1, a1, 2
	add	a1, a1, a0
	.loc	1 31 20                         # main.c:31:20
	lw	a0, 0(a1)
	addi	a0, a0, 1
	sw	a0, 0(a1)
.Ltmp12:
	.loc	1 32 15 is_stmt 1               # main.c:32:15
	lw	a0, -12(s0)
	li	a1, 832
	.loc	1 32 7 is_stmt 0                # main.c:32:7
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	add	a0, a0, a1
	.loc	1 32 25                         # main.c:32:25
	lw	a0, 820(a0)
.Ltmp13:
	.loc	1 32 7                          # main.c:32:7
	bnez	a0, .LBB3_2
	j	.LBB3_1
.LBB3_1:
.Ltmp14:
	.loc	1 33 17 is_stmt 1               # main.c:33:17
	lui	a1, %hi(initialized)
	li	a0, 0
	sb	a0, %lo(initialized)(a1)
	.loc	1 34 3                          # main.c:34:3
	j	.LBB3_2
.Ltmp15:
.LBB3_2:
	.loc	1 38 22                         # main.c:38:22
	lw	a0, -12(s0)
	li	a2, 832
	.loc	1 38 14 is_stmt 0               # main.c:38:14
	mul	a1, a0, a2
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	add	a1, a1, a0
	.loc	1 38 32                         # main.c:38:32
	lw	a3, 820(a1)
	.loc	1 36 3 is_stmt 1                # main.c:36:3
	#APP
	li	t0, 1
	amoadd.w	t1, t0, (a1)

	#NO_APP
	sw	a1, 824(a3)
	.loc	1 40 11                         # main.c:40:11
	lw	a1, -12(s0)
	.loc	1 40 3 is_stmt 0                # main.c:40:3
	mul	a1, a1, a2
	add	a1, a1, a0
	li	a0, 1
	.loc	1 40 29                         # main.c:40:29
	sb	a0, 828(a1)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 41 1 epilogue_begin is_stmt 1 # main.c:41:1
	addi	sp, sp, 16
	ret
.Ltmp16:
.Lfunc_end3:
	.size	mark_done, .Lfunc_end3-mark_done
	.cfi_endproc
                                        # -- End function
	.globl	merge                           # -- Begin function merge
	.p2align	1
	.type	merge,@function
merge:                                  # @merge
.Lfunc_begin4:
	.loc	1 43 0                          # main.c:43:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sw	ra, 76(sp)                      # 4-byte Folded Spill
	sw	s0, 72(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	sw	a3, -24(s0)
.Ltmp17:
	.loc	1 46 21 prologue_end            # main.c:46:21
	lw	a0, -20(s0)
	.loc	1 46 25 is_stmt 0               # main.c:46:25
	lw	a1, -16(s0)
	.loc	1 46 23                         # main.c:46:23
	sub	a0, a0, a1
	.loc	1 46 27                         # main.c:46:27
	addi	a0, a0, 1
	.loc	1 46 7                          # main.c:46:7
	sw	a0, -48(s0)
	.loc	1 47 22 is_stmt 1               # main.c:47:22
	lw	a0, -24(s0)
	.loc	1 47 26 is_stmt 0               # main.c:47:26
	lw	a1, -20(s0)
	.loc	1 47 24                         # main.c:47:24
	sub	a0, a0, a1
	.loc	1 47 7                          # main.c:47:7
	sw	a0, -52(s0)
	.loc	1 50 12 is_stmt 1               # main.c:50:12
	lw	a0, -48(s0)
	.loc	1 50 3 is_stmt 0                # main.c:50:3
	mv	a1, sp
	sw	a1, -56(s0)
	slli	a1, a0, 2
	addi	a1, a1, 15
	andi	a2, a1, -16
	mv	a1, sp
	sub	a1, a1, a2
	sw	a1, -72(s0)                     # 4-byte Folded Spill
.Ltmp18:
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [$x11+0]
	mv	sp, a1
	sw	a0, -60(s0)
	.loc	1 50 32                         # main.c:50:32
	lw	a0, -52(s0)
	.loc	1 50 3                          # main.c:50:3
	slli	a1, a0, 2
.Ltmp19:
	addi	a1, a1, 15
	andi	a2, a1, -16
	mv	a1, sp
	sub	a1, a1, a2
	sw	a1, -68(s0)                     # 4-byte Folded Spill
.Ltmp20:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:right <- [$x11+0]
	mv	sp, a1
	sw	a0, -64(s0)
	li	a0, 0
.Ltmp21:
	.loc	1 51 10 is_stmt 1               # main.c:51:10
	sw	a0, -36(s0)
.Ltmp22:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 51 8 is_stmt 0                # main.c:51:8
	j	.LBB4_1
.Ltmp23:
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 51 15                         # main.c:51:15
	lw	a0, -36(s0)
	.loc	1 51 19                         # main.c:51:19
	lw	a1, -48(s0)
.Ltmp24:
	.loc	1 51 3                          # main.c:51:3
	bge	a0, a1, .LBB4_4
	j	.LBB4_2
.Ltmp25:
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	lw	a1, -72(s0)                     # 4-byte Folded Reload
.Ltmp26:
	.loc	1 52 15 is_stmt 1               # main.c:52:15
	lw	a0, -12(s0)
	.loc	1 52 19 is_stmt 0               # main.c:52:19
	lw	a3, -16(s0)
	.loc	1 52 23                         # main.c:52:23
	lw	a2, -36(s0)
	.loc	1 52 21                         # main.c:52:21
	add	a3, a3, a2
	.loc	1 52 15                         # main.c:52:15
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	.loc	1 52 5                          # main.c:52:5
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 52 13                         # main.c:52:13
	sw	a0, 0(a1)
	.loc	1 52 5                          # main.c:52:5
	j	.LBB4_3
.Ltmp27:
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 51 33 is_stmt 1               # main.c:51:33
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	.loc	1 51 3 is_stmt 0                # main.c:51:3
	j	.LBB4_1
.Ltmp28:
.LBB4_4:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	li	a0, 0
.Ltmp29:
	.loc	1 53 10 is_stmt 1               # main.c:53:10
	sw	a0, -40(s0)
	.loc	1 53 8 is_stmt 0                # main.c:53:8
	j	.LBB4_5
.Ltmp30:
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 53 15                         # main.c:53:15
	lw	a0, -40(s0)
	.loc	1 53 19                         # main.c:53:19
	lw	a1, -52(s0)
.Ltmp31:
	.loc	1 53 3                          # main.c:53:3
	bge	a0, a1, .LBB4_8
	j	.LBB4_6
.Ltmp32:
.LBB4_6:                                #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	lw	a1, -68(s0)                     # 4-byte Folded Reload
.Ltmp33:
	.loc	1 54 16 is_stmt 1               # main.c:54:16
	lw	a3, -12(s0)
	.loc	1 54 20 is_stmt 0               # main.c:54:20
	lw	a0, -20(s0)
	.loc	1 54 28                         # main.c:54:28
	lw	a2, -40(s0)
	.loc	1 54 22                         # main.c:54:22
	add	a0, a0, a2
	.loc	1 54 26                         # main.c:54:26
	slli	a0, a0, 2
	.loc	1 54 16                         # main.c:54:16
	add	a0, a0, a3
	lw	a0, 4(a0)
	.loc	1 54 5                          # main.c:54:5
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 54 14                         # main.c:54:14
	sw	a0, 0(a1)
	.loc	1 54 5                          # main.c:54:5
	j	.LBB4_7
.Ltmp34:
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 53 34 is_stmt 1               # main.c:53:34
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	.loc	1 53 3 is_stmt 0                # main.c:53:3
	j	.LBB4_5
.Ltmp35:
.LBB4_8:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	li	a0, 0
	.loc	1 56 5 is_stmt 1                # main.c:56:5
	sw	a0, -36(s0)
	.loc	1 57 5                          # main.c:57:5
	sw	a0, -40(s0)
	.loc	1 58 7                          # main.c:58:7
	lw	a0, -16(s0)
	.loc	1 58 5 is_stmt 0                # main.c:58:5
	sw	a0, -44(s0)
	.loc	1 59 3 is_stmt 1                # main.c:59:3
	j	.LBB4_9
.Ltmp36:
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 59 11 is_stmt 0               # main.c:59:11
	lw	a0, -36(s0)
	.loc	1 59 15                         # main.c:59:15
	lw	a1, -48(s0)
	li	a2, 0
	sw	a2, -76(s0)                     # 4-byte Folded Spill
	.loc	1 59 28                         # main.c:59:28
	bge	a0, a1, .LBB4_11
	j	.LBB4_10
.Ltmp37:
.LBB4_10:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 59 32                         # main.c:59:32
	lw	a0, -40(s0)
	.loc	1 59 36                         # main.c:59:36
	lw	a1, -52(s0)
	.loc	1 59 34                         # main.c:59:34
	slt	a0, a0, a1
	sw	a0, -76(s0)                     # 4-byte Folded Spill
	j	.LBB4_11
.Ltmp38:
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 34                          # main.c:0:34
	lw	a0, -76(s0)                     # 4-byte Folded Reload
	.loc	1 59 3                          # main.c:59:3
	andi	a0, a0, 1
	beqz	a0, .LBB4_16
	j	.LBB4_12
.Ltmp39:
.LBB4_12:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	lw	a0, -68(s0)                     # 4-byte Folded Reload
	lw	a1, -72(s0)                     # 4-byte Folded Reload
.Ltmp40:
	.loc	1 60 18 is_stmt 1               # main.c:60:18
	lw	a2, -36(s0)
	.loc	1 60 13 is_stmt 0               # main.c:60:13
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	.loc	1 60 11                         # main.c:60:11
	sw	a1, -28(s0)
	.loc	1 61 19 is_stmt 1               # main.c:61:19
	lw	a1, -40(s0)
	.loc	1 61 13 is_stmt 0               # main.c:61:13
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	.loc	1 61 11                         # main.c:61:11
	sw	a0, -32(s0)
.Ltmp41:
	.loc	1 62 9 is_stmt 1                # main.c:62:9
	lw	a0, -28(s0)
	.loc	1 62 17 is_stmt 0               # main.c:62:17
	lw	a1, -32(s0)
.Ltmp42:
	.loc	1 62 9                          # main.c:62:9
	bge	a0, a1, .LBB4_14
	j	.LBB4_13
.Ltmp43:
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 63 16 is_stmt 1               # main.c:63:16
	lw	a0, -28(s0)
	.loc	1 63 7 is_stmt 0                # main.c:63:7
	lw	a1, -12(s0)
	.loc	1 63 11                         # main.c:63:11
	lw	a2, -44(s0)
	.loc	1 63 7                          # main.c:63:7
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 63 14                         # main.c:63:14
	sw	a0, 0(a1)
	.loc	1 64 8 is_stmt 1                # main.c:64:8
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	.loc	1 65 5                          # main.c:65:5
	j	.LBB4_15
.Ltmp44:
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 66 16                         # main.c:66:16
	lw	a0, -32(s0)
	.loc	1 66 7 is_stmt 0                # main.c:66:7
	lw	a1, -12(s0)
	.loc	1 66 11                         # main.c:66:11
	lw	a2, -44(s0)
	.loc	1 66 7                          # main.c:66:7
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 66 14                         # main.c:66:14
	sw	a0, 0(a1)
	.loc	1 67 8 is_stmt 1                # main.c:67:8
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB4_15
.Ltmp45:
.LBB4_15:                               #   in Loop: Header=BB4_9 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 69 6                          # main.c:69:6
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
.Ltmp46:
	.loc	1 59 3                          # main.c:59:3
	j	.LBB4_9
.Ltmp47:
.LBB4_16:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 72 3                          # main.c:72:3
	j	.LBB4_17
.Ltmp48:
.LBB4_17:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 72 10 is_stmt 0               # main.c:72:10
	lw	a0, -36(s0)
	.loc	1 72 14                         # main.c:72:14
	lw	a1, -48(s0)
	.loc	1 72 3                          # main.c:72:3
	bge	a0, a1, .LBB4_19
	j	.LBB4_18
.Ltmp49:
.LBB4_18:                               #   in Loop: Header=BB4_17 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	lw	a0, -72(s0)                     # 4-byte Folded Reload
.Ltmp50:
	.loc	1 73 19 is_stmt 1               # main.c:73:19
	lw	a1, -36(s0)
	.loc	1 73 14 is_stmt 0               # main.c:73:14
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	.loc	1 73 5                          # main.c:73:5
	lw	a1, -12(s0)
	.loc	1 73 9                          # main.c:73:9
	lw	a2, -44(s0)
	.loc	1 73 5                          # main.c:73:5
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 73 12                         # main.c:73:12
	sw	a0, 0(a1)
	.loc	1 74 6 is_stmt 1                # main.c:74:6
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	.loc	1 75 6                          # main.c:75:6
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
.Ltmp51:
	.loc	1 72 3                          # main.c:72:3
	j	.LBB4_17
.Ltmp52:
.LBB4_19:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 78 3                          # main.c:78:3
	j	.LBB4_20
.Ltmp53:
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 78 10 is_stmt 0               # main.c:78:10
	lw	a0, -40(s0)
	.loc	1 78 14                         # main.c:78:14
	lw	a1, -52(s0)
	.loc	1 78 3                          # main.c:78:3
	bge	a0, a1, .LBB4_22
	j	.LBB4_21
.Ltmp54:
.LBB4_21:                               #   in Loop: Header=BB4_20 Depth=1
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 0 3                           # main.c:0:3
	lw	a0, -68(s0)                     # 4-byte Folded Reload
.Ltmp55:
	.loc	1 79 20 is_stmt 1               # main.c:79:20
	lw	a1, -40(s0)
	.loc	1 79 14 is_stmt 0               # main.c:79:14
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	.loc	1 79 5                          # main.c:79:5
	lw	a1, -12(s0)
	.loc	1 79 9                          # main.c:79:9
	lw	a2, -44(s0)
	.loc	1 79 5                          # main.c:79:5
	slli	a2, a2, 2
	add	a1, a1, a2
	.loc	1 79 12                         # main.c:79:12
	sw	a0, 0(a1)
	.loc	1 80 6 is_stmt 1                # main.c:80:6
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	.loc	1 81 6                          # main.c:81:6
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
.Ltmp56:
	.loc	1 78 3                          # main.c:78:3
	j	.LBB4_20
.Ltmp57:
.LBB4_22:
	#DEBUG_VALUE: merge:right <- [DW_OP_constu 68, DW_OP_minus, DW_OP_deref] [$x8+0]
	#DEBUG_VALUE: merge:left <- [DW_OP_constu 72, DW_OP_minus, DW_OP_deref] [$x8+0]
	.loc	1 83 3                          # main.c:83:3
	call	mark_done
	.loc	1 84 1                          # main.c:84:1
	lw	a0, -56(s0)
	mv	sp, a0
	.loc	1 84 1 epilogue_begin is_stmt 0 # main.c:84:1
	addi	sp, s0, -80
	lw	ra, 76(sp)                      # 4-byte Folded Reload
	lw	s0, 72(sp)                      # 4-byte Folded Reload
.Ltmp58:
	addi	sp, sp, 80
	ret
.Ltmp59:
.Lfunc_end4:
	.size	merge, .Lfunc_end4-merge
	.cfi_endproc
                                        # -- End function
	.globl	min                             # -- Begin function min
	.p2align	1
	.type	min,@function
min:                                    # @min
.Lfunc_begin5:
	.loc	1 86 0 is_stmt 1                # main.c:86:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Ltmp60:
	.loc	1 86 33 prologue_end            # main.c:86:33
	lw	a0, -12(s0)
	.loc	1 86 37 is_stmt 0               # main.c:86:37
	lw	a1, -16(s0)
	.loc	1 86 32                         # main.c:86:32
	bge	a0, a1, .LBB5_2
	j	.LBB5_1
.LBB5_1:
	.loc	1 86 42                         # main.c:86:42
	lw	a0, -12(s0)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	.loc	1 86 32                         # main.c:86:32
	j	.LBB5_3
.LBB5_2:
	.loc	1 86 46                         # main.c:86:46
	lw	a0, -16(s0)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	.loc	1 86 32                         # main.c:86:32
	j	.LBB5_3
.LBB5_3:
	.loc	1 0 32                          # main.c:0:32
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	.loc	1 86 25 epilogue_begin          # main.c:86:25
	addi	sp, sp, 32
	ret
.Ltmp61:
.Lfunc_end5:
	.size	min, .Lfunc_end5-min
	.cfi_endproc
                                        # -- End function
	.globl	mergeSort                       # -- Begin function mergeSort
	.p2align	1
	.type	mergeSort,@function
mergeSort:                              # @mergeSort
.Lfunc_begin6:
	.loc	1 89 0 is_stmt 1                # main.c:89:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Ltmp62:
	.loc	1 95 11 prologue_end            # main.c:95:11
	lw	a0, -20(s0)
	.loc	1 95 15 is_stmt 0               # main.c:95:15
	lw	a1, -16(s0)
	.loc	1 95 13                         # main.c:95:13
	sub	a0, a0, a1
	.loc	1 95 7                          # main.c:95:7
	sw	a0, -32(s0)
	li	a0, 1
.Ltmp63:
	.loc	1 99 18 is_stmt 1               # main.c:99:18
	sw	a0, -24(s0)
	.loc	1 99 8 is_stmt 0                # main.c:99:8
	j	.LBB6_1
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
.Ltmp64:
	.loc	1 99 23                         # main.c:99:23
	lw	a1, -24(s0)
	.loc	1 99 36                         # main.c:99:36
	lw	a0, -32(s0)
	.loc	1 99 38                         # main.c:99:38
	addi	a0, a0, -1
.Ltmp65:
	.loc	1 99 3                          # main.c:99:3
	blt	a0, a1, .LBB6_8
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp66:
	.loc	1 101 23 is_stmt 1              # main.c:101:23
	lw	a0, -16(s0)
	.loc	1 101 21 is_stmt 0              # main.c:101:21
	sw	a0, -28(s0)
	.loc	1 101 10                        # main.c:101:10
	j	.LBB6_3
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp67:
	.loc	1 101 26                        # main.c:101:26
	lw	a0, -28(s0)
	.loc	1 101 39                        # main.c:101:39
	lw	a1, -20(s0)
	.loc	1 101 41                        # main.c:101:41
	addi	a1, a1, -1
.Ltmp68:
	.loc	1 101 5                         # main.c:101:5
	bge	a0, a1, .LBB6_6
	j	.LBB6_4
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=2
.Ltmp69:
	.loc	1 104 21 is_stmt 1              # main.c:104:21
	lw	a0, -28(s0)
	.loc	1 104 34 is_stmt 0              # main.c:104:34
	lw	a1, -24(s0)
	.loc	1 104 32                        # main.c:104:32
	add	a0, a0, a1
	.loc	1 104 44                        # main.c:104:44
	addi	a0, a0, -1
	.loc	1 104 49                        # main.c:104:49
	lw	a1, -20(s0)
	.loc	1 104 51                        # main.c:104:51
	addi	a1, a1, -1
	.loc	1 104 17                        # main.c:104:17
	call	min
	.loc	1 104 11                        # main.c:104:11
	sw	a0, -36(s0)
	.loc	1 105 27 is_stmt 1              # main.c:105:27
	lw	a0, -28(s0)
	.loc	1 105 44 is_stmt 0              # main.c:105:44
	lw	a1, -24(s0)
	.loc	1 105 42                        # main.c:105:42
	slli	a1, a1, 1
	.loc	1 105 38                        # main.c:105:38
	add	a0, a0, a1
	.loc	1 105 54                        # main.c:105:54
	addi	a0, a0, -1
	.loc	1 105 59                        # main.c:105:59
	lw	a1, -20(s0)
	.loc	1 105 61                        # main.c:105:61
	addi	a1, a1, -1
	.loc	1 105 23                        # main.c:105:23
	call	min
	.loc	1 105 11                        # main.c:105:11
	sw	a0, -40(s0)
	.loc	1 108 13 is_stmt 1              # main.c:108:13
	lw	a0, -12(s0)
	.loc	1 108 18 is_stmt 0              # main.c:108:18
	lw	a1, -28(s0)
	.loc	1 108 30                        # main.c:108:30
	lw	a2, -36(s0)
	.loc	1 108 35                        # main.c:108:35
	lw	a3, -40(s0)
	.loc	1 108 7                         # main.c:108:7
	call	merge
	.loc	1 109 5 is_stmt 1               # main.c:109:5
	j	.LBB6_5
.Ltmp70:
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=2
	.loc	1 101 64                        # main.c:101:64
	lw	a0, -24(s0)
	.loc	1 101 62 is_stmt 0              # main.c:101:62
	slli	a1, a0, 1
	.loc	1 101 57                        # main.c:101:57
	lw	a0, -28(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	.loc	1 101 5                         # main.c:101:5
	j	.LBB6_3
.Ltmp71:
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 110 3 is_stmt 1               # main.c:110:3
	j	.LBB6_7
.Ltmp72:
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 99 59                         # main.c:99:59
	lw	a0, -24(s0)
	.loc	1 99 57 is_stmt 0               # main.c:99:57
	slli	a0, a0, 1
	.loc	1 99 53                         # main.c:99:53
	sw	a0, -24(s0)
	.loc	1 99 3                          # main.c:99:3
	j	.LBB6_1
.Ltmp73:
.LBB6_8:
	.loc	1 111 3 is_stmt 1               # main.c:111:3
	call	mark_done
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	.loc	1 112 1 epilogue_begin          # main.c:112:1
	addi	sp, sp, 48
	ret
.Ltmp74:
.Lfunc_end6:
	.size	mergeSort, .Lfunc_end6-mergeSort
	.cfi_endproc
                                        # -- End function
	.globl	setBitNumber                    # -- Begin function setBitNumber
	.p2align	1
	.type	setBitNumber,@function
setBitNumber:                           # @setBitNumber
.Lfunc_begin7:
	.loc	1 114 0                         # main.c:114:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
.Ltmp75:
	.loc	1 118 25 prologue_end           # main.c:118:25
	lw	a0, -12(s0)
	.loc	1 118 11 is_stmt 0              # main.c:118:11
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	srli	a1, a0, 8
	or	a0, a0, a1
	srli	a1, a0, 16
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addi	a2, a2, 1365
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addi	a2, a0, 819
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addi	a1, a1, -241
	and	a0, a0, a1
	lui	a1, 4112
	addi	a1, a1, 257
	mul	a0, a0, a1
	srli	a0, a0, 24
	.loc	1 118 7                         # main.c:118:7
	sw	a0, -16(s0)
	.loc	1 120 16 is_stmt 1              # main.c:120:16
	lw	a1, -16(s0)
	li	a0, 31
	.loc	1 120 14 is_stmt 0              # main.c:120:14
	sub	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 120 3 epilogue_begin          # main.c:120:3
	addi	sp, sp, 16
	ret
.Ltmp76:
.Lfunc_end7:
	.size	setBitNumber, .Lfunc_end7-setBitNumber
	.cfi_endproc
                                        # -- End function
	.globl	parallel_merge_sort             # -- Begin function parallel_merge_sort
	.p2align	1
	.type	parallel_merge_sort,@function
parallel_merge_sort:                    # @parallel_merge_sort
.Lfunc_begin8:
	.loc	1 123 0 is_stmt 1               # main.c:123:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sw	ra, 76(sp)                      # 4-byte Folded Spill
	sw	s0, 72(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 4
.Ltmp77:
	.loc	1 125 15 prologue_end           # main.c:125:15
	call	setBitNumber
	.loc	1 125 43 is_stmt 0              # main.c:125:43
	addi	a0, a0, 1
	.loc	1 125 7                         # main.c:125:7
	sw	a0, -20(s0)
	li	a0, 0
	.loc	1 129 7 is_stmt 1               # main.c:129:7
	sw	a0, -52(s0)
.Ltmp78:
	.loc	1 130 10                        # main.c:130:10
	sw	a0, -32(s0)
	.loc	1 130 8 is_stmt 0               # main.c:130:8
	j	.LBB8_1
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
.Ltmp79:
	.loc	1 130 15                        # main.c:130:15
	lw	a0, -32(s0)
	.loc	1 130 19                        # main.c:130:19
	lw	a1, -20(s0)
.Ltmp80:
	.loc	1 130 3                         # main.c:130:3
	bge	a0, a1, .LBB8_13
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
.Ltmp81:
	.loc	1 131 15 is_stmt 1              # main.c:131:15
	lw	a0, -32(s0)
	.loc	1 131 9 is_stmt 0               # main.c:131:9
	call	pow_2
	.loc	1 131 7                         # main.c:131:7
	sw	a0, -24(s0)
.Ltmp82:
	.loc	1 133 9 is_stmt 1               # main.c:133:9
	lw	a0, -24(s0)
	li	a1, 1
.Ltmp83:
	.loc	1 133 9 is_stmt 0               # main.c:133:9
	bne	a0, a1, .LBB8_4
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
.Ltmp84:
	.loc	1 134 30 is_stmt 1              # main.c:134:30
	lw	a0, -52(s0)
	li	a1, 832
	sw	a1, -64(s0)                     # 4-byte Folded Spill
	.loc	1 134 22 is_stmt 0              # main.c:134:22
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	sw	a0, -60(s0)                     # 4-byte Folded Spill
	add	a0, a0, a1
	.loc	1 134 7                         # main.c:134:7
	call	thread_create
	lw	a2, -64(s0)                     # 4-byte Folded Reload
                                        # kill: def $x11 killed $x10
	lw	a0, -60(s0)                     # 4-byte Folded Reload
	.loc	1 135 40 is_stmt 1              # main.c:135:40
	lw	a1, -52(s0)
	.loc	1 135 32 is_stmt 0              # main.c:135:32
	mul	a1, a1, a2
	add	a0, a0, a1
	.loc	1 136 31 is_stmt 1              # main.c:136:31
	lw	a3, -12(s0)
	.loc	1 136 46 is_stmt 0              # main.c:136:46
	lw	a6, -16(s0)
	.loc	1 136 53                        # main.c:136:53
	srli	a5, a6, 1
	.loc	1 135 7 is_stmt 1               # main.c:135:7
	lui	a1, %hi(merge)
	addi	a1, a1, %lo(merge)
	li	a2, 4
	li	a4, 0
	sw	a4, -56(s0)                     # 4-byte Folded Spill
	call	libucontext_makecontext
	lw	a1, -60(s0)                     # 4-byte Folded Reload
	lw	a0, -56(s0)                     # 4-byte Folded Reload
	.loc	1 138 25                        # main.c:138:25
	sw	a0, 820(a1)
	.loc	1 139 24                        # main.c:139:24
	sw	a0, 824(a1)
	.loc	1 140 10                        # main.c:140:10
	lw	a0, -52(s0)
	addi	a0, a0, 1
	sw	a0, -52(s0)
	.loc	1 141 7                         # main.c:141:7
	j	.LBB8_12
.Ltmp85:
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	.loc	1 145 12                        # main.c:145:12
	lw	a0, -16(s0)
	.loc	1 145 21 is_stmt 0              # main.c:145:21
	lw	a1, -24(s0)
	.loc	1 145 19                        # main.c:145:19
	divu	a0, a0, a1
	.loc	1 145 10                        # main.c:145:10
	sw	a0, -48(s0)
	li	a0, 0
.Ltmp86:
	.loc	1 146 12 is_stmt 1              # main.c:146:12
	sw	a0, -28(s0)
	.loc	1 146 10 is_stmt 0              # main.c:146:10
	j	.LBB8_5
.LBB8_5:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp87:
	.loc	1 146 17                        # main.c:146:17
	lw	a0, -28(s0)
	.loc	1 146 21                        # main.c:146:21
	lw	a1, -24(s0)
.Ltmp88:
	.loc	1 146 5                         # main.c:146:5
	bge	a0, a1, .LBB8_11
	j	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_5 Depth=2
.Ltmp89:
	.loc	1 147 11 is_stmt 1              # main.c:147:11
	lw	a0, -48(s0)
	.loc	1 147 18 is_stmt 0              # main.c:147:18
	lw	a1, -28(s0)
	.loc	1 147 16                        # main.c:147:16
	mul	a0, a0, a1
	.loc	1 147 9                         # main.c:147:9
	sw	a0, -36(s0)
	.loc	1 148 11 is_stmt 1              # main.c:148:11
	lw	a0, -48(s0)
	.loc	1 148 19 is_stmt 0              # main.c:148:19
	lw	a1, -28(s0)
	.loc	1 148 21                        # main.c:148:21
	addi	a1, a1, 1
	.loc	1 148 16                        # main.c:148:16
	mul	a0, a0, a1
	.loc	1 148 9                         # main.c:148:9
	sw	a0, -44(s0)
	.loc	1 149 30 is_stmt 1              # main.c:149:30
	lw	a0, -52(s0)
	li	a1, 832
	.loc	1 149 22 is_stmt 0              # main.c:149:22
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	add	a0, a0, a1
	.loc	1 149 7                         # main.c:149:7
	call	thread_create
.Ltmp90:
	.loc	1 150 11 is_stmt 1              # main.c:150:11
	lw	a0, -32(s0)
	.loc	1 150 16 is_stmt 0              # main.c:150:16
	lw	a1, -20(s0)
	.loc	1 150 22                        # main.c:150:22
	addi	a1, a1, -1
.Ltmp91:
	.loc	1 150 11                        # main.c:150:11
	bne	a0, a1, .LBB8_8
	j	.LBB8_7
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=2
.Ltmp92:
	.loc	1 151 42 is_stmt 1              # main.c:151:42
	lw	a0, -52(s0)
	li	a1, 832
	sw	a1, -72(s0)                     # 4-byte Folded Spill
	.loc	1 151 34 is_stmt 0              # main.c:151:34
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	sw	a0, -68(s0)                     # 4-byte Folded Spill
	add	a0, a0, a1
	.loc	1 152 33 is_stmt 1              # main.c:152:33
	lw	a3, -12(s0)
	.loc	1 152 45 is_stmt 0              # main.c:152:45
	lw	a4, -36(s0)
	.loc	1 152 48                        # main.c:152:48
	lw	a5, -44(s0)
	.loc	1 151 9 is_stmt 1               # main.c:151:9
	lui	a1, %hi(mergeSort)
	addi	a1, a1, %lo(mergeSort)
	li	a2, 3
	call	libucontext_makecontext
	lw	a2, -72(s0)                     # 4-byte Folded Reload
	lw	a0, -68(s0)                     # 4-byte Folded Reload
	.loc	1 155 17                        # main.c:155:17
	lw	a1, -52(s0)
	.loc	1 155 9 is_stmt 0               # main.c:155:9
	mul	a1, a1, a2
	add	a1, a1, a0
	li	a0, 2
	.loc	1 155 28                        # main.c:155:28
	sw	a0, 824(a1)
	.loc	1 156 7 is_stmt 1               # main.c:156:7
	j	.LBB8_9
.Ltmp93:
.LBB8_8:                                #   in Loop: Header=BB8_5 Depth=2
	.loc	1 157 42                        # main.c:157:42
	lw	a0, -52(s0)
	li	a1, 832
	sw	a1, -80(s0)                     # 4-byte Folded Spill
	.loc	1 157 34 is_stmt 0              # main.c:157:34
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	sw	a0, -76(s0)                     # 4-byte Folded Spill
	add	a0, a0, a1
	.loc	1 158 33 is_stmt 1              # main.c:158:33
	lw	a3, -12(s0)
	.loc	1 158 45 is_stmt 0              # main.c:158:45
	lw	a4, -36(s0)
	.loc	1 158 53                        # main.c:158:53
	lw	a6, -44(s0)
	.loc	1 158 51                        # main.c:158:51
	add	a1, a4, a6
	.loc	1 158 56                        # main.c:158:56
	srli	a2, a1, 31
	add	a1, a1, a2
	srai	a5, a1, 1
	.loc	1 157 9 is_stmt 1               # main.c:157:9
	lui	a1, %hi(merge)
	addi	a1, a1, %lo(merge)
	li	a2, 4
	call	libucontext_makecontext
	lw	a2, -80(s0)                     # 4-byte Folded Reload
	lw	a0, -76(s0)                     # 4-byte Folded Reload
	.loc	1 159 17                        # main.c:159:17
	lw	a1, -52(s0)
	.loc	1 159 9 is_stmt 0               # main.c:159:9
	mul	a1, a1, a2
	add	a1, a1, a0
	li	a0, 0
	.loc	1 159 28                        # main.c:159:28
	sw	a0, 824(a1)
	j	.LBB8_9
.Ltmp94:
.LBB8_9:                                #   in Loop: Header=BB8_5 Depth=2
	.loc	1 162 38 is_stmt 1              # main.c:162:38
	lw	a0, -32(s0)
	.loc	1 162 42 is_stmt 0              # main.c:162:42
	lw	a1, -28(s0)
	.loc	1 162 44                        # main.c:162:44
	srli	a2, a1, 31
	add	a1, a1, a2
	srai	a1, a1, 1
	.loc	1 162 40                        # main.c:162:40
	add	a0, a0, a1
	li	a3, 832
	.loc	1 162 48                        # main.c:162:48
	mul	a0, a0, a3
	.loc	1 162 30                        # main.c:162:30
	lui	a1, %hi(threads)
	addi	a1, a1, %lo(threads)
	add	a0, a0, a1
	addi	a0, a0, -832
	.loc	1 162 15                        # main.c:162:15
	lw	a2, -52(s0)
	.loc	1 162 7                         # main.c:162:7
	mul	a2, a2, a3
	add	a1, a1, a2
	.loc	1 162 27                        # main.c:162:27
	sw	a0, 820(a1)
	.loc	1 163 10 is_stmt 1              # main.c:163:10
	lw	a0, -52(s0)
	addi	a0, a0, 1
	sw	a0, -52(s0)
	.loc	1 164 5                         # main.c:164:5
	j	.LBB8_10
.Ltmp95:
.LBB8_10:                               #   in Loop: Header=BB8_5 Depth=2
	.loc	1 146 25                        # main.c:146:25
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	.loc	1 146 5 is_stmt 0               # main.c:146:5
	j	.LBB8_5
.Ltmp96:
.LBB8_11:                               #   in Loop: Header=BB8_1 Depth=1
	.loc	1 165 3 is_stmt 1               # main.c:165:3
	j	.LBB8_12
.Ltmp97:
.LBB8_12:                               #   in Loop: Header=BB8_1 Depth=1
	.loc	1 130 27                        # main.c:130:27
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	.loc	1 130 3 is_stmt 0               # main.c:130:3
	j	.LBB8_1
.Ltmp98:
.LBB8_13:
	.loc	1 166 3 is_stmt 1               # main.c:166:3
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	ra, 76(sp)                      # 4-byte Folded Reload
	lw	s0, 72(sp)                      # 4-byte Folded Reload
	.loc	1 167 1 epilogue_begin          # main.c:167:1
	addi	sp, sp, 80
	ret
.Ltmp99:
.Lfunc_end8:
	.size	parallel_merge_sort, .Lfunc_end8-parallel_merge_sort
	.cfi_endproc
                                        # -- End function
	.globl	secondary_main                  # -- Begin function secondary_main
	.p2align	1
	.type	secondary_main,@function
secondary_main:                         # @secondary_main
.Lfunc_begin9:
	.loc	1 172 0                         # main.c:172:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, s0, -12
.Ltmp100:
	.loc	1 175 3 prologue_end            # main.c:175:3
	call	get_hartid
	.loc	1 176 27                        # main.c:176:27
	lw	a1, -12(s0)
	addi	a0, s0, -16
	.loc	1 176 3 is_stmt 0               # main.c:176:3
	call	get_curr_idx
.Ltmp101:
	.loc	1 177 7 is_stmt 1               # main.c:177:7
	lw	a0, -16(s0)
.Ltmp102:
	.loc	1 177 7 is_stmt 0               # main.c:177:7
	bgez	a0, .LBB9_7
	j	.LBB9_1
.LBB9_1:
.Ltmp103:
	.loc	1 179 5 is_stmt 1               # main.c:179:5
	j	.LBB9_2
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 179 24 is_stmt 0              # main.c:179:24
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	lbu	a0, 828(a0)
	andi	a0, a0, 1
	.loc	1 179 5                         # main.c:179:5
	bnez	a0, .LBB9_4
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_2 Depth=1
	j	.LBB9_2
.LBB9_4:
.Ltmp104:
	.loc	1 181 9 is_stmt 1               # main.c:181:9
	lw	a0, -12(s0)
.Ltmp105:
	.loc	1 181 9 is_stmt 0               # main.c:181:9
	bnez	a0, .LBB9_6
	j	.LBB9_5
.LBB9_5:
.Ltmp106:
	.loc	1 183 7 is_stmt 1               # main.c:183:7
	call	main
	.loc	1 184 5                         # main.c:184:5
	j	.LBB9_6
.Ltmp107:
.LBB9_6:
	.loc	1 185 5                         # main.c:185:5
	call	secondary_main
	.loc	1 186 3                         # main.c:186:3
	j	.LBB9_7
.Ltmp108:
.LBB9_7:
	.loc	1 187 3                         # main.c:187:3
	j	.LBB9_8
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	.loc	1 187 11 is_stmt 0              # main.c:187:11
	lui	a0, %hi(initialized)
	lbu	a0, %lo(initialized)(a0)
	andi	a0, a0, 1
	.loc	1 187 3                         # main.c:187:3
	bnez	a0, .LBB9_10
	j	.LBB9_9
.LBB9_9:                                #   in Loop: Header=BB9_8 Depth=1
	j	.LBB9_8
.LBB9_10:
	.loc	1 190 3 is_stmt 1               # main.c:190:3
	j	.LBB9_11
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	.loc	1 190 18 is_stmt 0              # main.c:190:18
	lw	a0, -16(s0)
	li	a1, 832
	.loc	1 190 10                        # main.c:190:10
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	add	a0, a0, a1
	.loc	1 190 28                        # main.c:190:28
	lw	a1, 824(a0)
	li	a0, 1
	.loc	1 190 3                         # main.c:190:3
	blt	a0, a1, .LBB9_13
	j	.LBB9_12
.LBB9_12:                               #   in Loop: Header=BB9_11 Depth=1
	j	.LBB9_11
.LBB9_13:
	.loc	1 194 35 is_stmt 1              # main.c:194:35
	lw	a0, -16(s0)
	li	a1, 832
	.loc	1 194 27 is_stmt 0              # main.c:194:27
	mul	a1, a0, a1
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	add	a0, a0, a1
	.loc	1 194 3                         # main.c:194:3
	call	libucontext_setcontext
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 195 1 epilogue_begin is_stmt 1 # main.c:195:1
	addi	sp, sp, 16
	ret
.Ltmp109:
.Lfunc_end9:
	.size	secondary_main, .Lfunc_end9-secondary_main
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin10:
	.loc	1 197 0                         # main.c:197:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
.Ltmp110:
	.loc	1 198 3 prologue_end            # main.c:198:3
	call	init_palloc
	.loc	1 199 3                         # main.c:199:3
	lui	a0, %hi(secondary_main_context)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	addi	a0, a0, %lo(secondary_main_context)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	call	libucontext_getcontext
                                        # kill: def $x11 killed $x10
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	li	a1, 1024
	.loc	1 200 43                        # main.c:200:43
	sw	a1, 16(a0)
	.loc	1 202 46                        # main.c:202:46
	lw	a0, 16(a0)
	.loc	1 202 7 is_stmt 0               # main.c:202:7
	call	palloc
	lw	a2, -24(s0)                     # 4-byte Folded Reload
	mv	a1, a0
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	.loc	1 201 41 is_stmt 1              # main.c:201:41
	sw	a1, %lo(secondary_main_context+8)(a2)
	.loc	1 203 3                         # main.c:203:3
	lui	a1, %hi(secondary_main)
	addi	a1, a1, %lo(secondary_main)
	li	a2, 0
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	call	libucontext_makecontext
	lw	a0, -16(s0)                     # 4-byte Folded Reload
.Ltmp111:
	.loc	1 204 12                        # main.c:204:12
	sw	a0, -12(s0)
	.loc	1 204 8 is_stmt 0               # main.c:204:8
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
.Ltmp112:
	.loc	1 204 19                        # main.c:204:19
	lw	a1, -12(s0)
	li	a0, 3
.Ltmp113:
	.loc	1 204 3                         # main.c:204:3
	blt	a0, a1, .LBB10_4
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
.Ltmp114:
	.loc	1 205 19 is_stmt 1              # main.c:205:19
	lw	a0, -12(s0)
	.loc	1 205 5 is_stmt 0               # main.c:205:5
	slli	a1, a0, 2
	lui	a0, %hi(core_num_jobs)
	addi	a0, a0, %lo(core_num_jobs)
	add	a1, a1, a0
	li	a0, 0
	.loc	1 205 22                        # main.c:205:22
	sw	a0, 0(a1)
	.loc	1 206 3 is_stmt 1               # main.c:206:3
	j	.LBB10_3
.Ltmp115:
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	.loc	1 204 39                        # main.c:204:39
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	.loc	1 204 3 is_stmt 0               # main.c:204:3
	j	.LBB10_1
.Ltmp116:
.LBB10_4:
	.loc	1 207 3 is_stmt 1               # main.c:207:3
	lui	a0, %hi(alist)
	addi	a0, a0, %lo(alist)
	li	a1, 16
	call	parallel_merge_sort
	.loc	1 208 15                        # main.c:208:15
	lui	a1, %hi(initialized)
	li	a0, 1
	sb	a0, %lo(initialized)(a1)
	.loc	1 209 3                         # main.c:209:3
	lui	a0, %hi(threads)
	addi	a0, a0, %lo(threads)
	lui	a1, 1
	addi	a1, a1, 896
	add	a0, a0, a1
	call	libucontext_setcontext
	li	a0, 0
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	.loc	1 210 3 epilogue_begin          # main.c:210:3
	addi	sp, sp, 32
	ret
.Ltmp117:
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc
                                        # -- End function
	.type	alist,@object                   # @alist
	.data
	.globl	alist
	.p2align	2, 0x0
alist:
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	alist, 64

	.type	initialized,@object             # @initialized
	.section	.sbss,"aw",@nobits
	.globl	initialized
initialized:
	.byte	0                               # 0x0
	.size	initialized, 1

	.type	core_num_jobs,@object           # @core_num_jobs
	.bss
	.globl	core_num_jobs
	.p2align	2, 0x0
core_num_jobs:
	.zero	16
	.size	core_num_jobs, 16

	.type	threads,@object                 # @threads
	.globl	threads
	.p2align	4, 0x0
threads:
	.zero	5824
	.size	threads, 5824

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Done with parallel setup\n"
	.size	.L.str, 26

	.type	secondary_main_context,@object  # @secondary_main_context
	.bss
	.globl	secondary_main_context
	.p2align	4, 0x0
secondary_main_context:
	.zero	816
	.size	secondary_main_context, 816

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.word	.Ltmp18-.Lfunc_begin0
	.word	.Ltmp19-.Lfunc_begin0
	.half	2                               # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.word	.Ltmp22-.Lfunc_begin0
	.word	.Ltmp58-.Lfunc_begin0
	.half	4                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	184                             # -72
	.byte	127                             # 
	.byte	6                               # DW_OP_deref
	.word	0
	.word	0
.Ldebug_loc1:
	.word	.Ltmp20-.Lfunc_begin0
	.word	.Ltmp22-.Lfunc_begin0
	.half	2                               # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.word	.Ltmp22-.Lfunc_begin0
	.word	.Ltmp58-.Lfunc_begin0
	.half	4                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	188                             # -68
	.byte	127                             # 
	.byte	6                               # DW_OP_deref
	.word	0
	.word	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	52                              # DW_AT_artificial
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	23                              # DW_FORM_sec_offset
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.half	4                               # DWARF version number
	.word	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x70d DW_TAG_compile_unit
	.word	.Linfo_string0                  # DW_AT_producer
	.half	29                              # DW_AT_language
	.word	.Linfo_string1                  # DW_AT_name
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.word	.Linfo_string2                  # DW_AT_comp_dir
	.word	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end10-.Lfunc_begin0      # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x26:0x11 DW_TAG_variable
	.word	.Linfo_string3                  # DW_AT_name
	.word	55                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	alist
	.byte	3                               # Abbrev [3] 0x37:0xc DW_TAG_array_type
	.word	67                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3c:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x43:0x5 DW_TAG_volatile_type
	.word	72                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x48:0x7 DW_TAG_base_type
	.word	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x4f:0x7 DW_TAG_base_type
	.word	.Linfo_string5                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x56:0x11 DW_TAG_variable
	.word	.Linfo_string6                  # DW_AT_name
	.word	103                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	initialized
	.byte	5                               # Abbrev [5] 0x67:0x5 DW_TAG_volatile_type
	.word	108                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x6c:0x7 DW_TAG_base_type
	.word	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x73:0xd DW_TAG_variable
	.word	128                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	.L.str
	.byte	3                               # Abbrev [3] 0x80:0xc DW_TAG_array_type
	.word	140                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x85:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	26                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8c:0x7 DW_TAG_base_type
	.word	.Linfo_string8                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x93:0x11 DW_TAG_variable
	.word	.Linfo_string9                  # DW_AT_name
	.word	164                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	threads
	.byte	3                               # Abbrev [3] 0xa4:0xc DW_TAG_array_type
	.word	176                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa9:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb0:0xb DW_TAG_typedef
	.word	187                             # DW_AT_type
	.word	.Linfo_string49                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xbb:0x4a DW_TAG_structure_type
	.word	.Linfo_string48                 # DW_AT_name
	.half	832                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc4:0xc DW_TAG_member
	.word	.Linfo_string10                 # DW_AT_name
	.word	261                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xd0:0xd DW_TAG_member
	.word	.Linfo_string41                 # DW_AT_name
	.word	730                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.half	816                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xdd:0xd DW_TAG_member
	.word	.Linfo_string45                 # DW_AT_name
	.word	763                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.half	820                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xea:0xd DW_TAG_member
	.word	.Linfo_string46                 # DW_AT_name
	.word	72                              # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.half	824                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xf7:0xd DW_TAG_member
	.word	.Linfo_string47                 # DW_AT_name
	.word	108                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.half	828                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x105:0xb DW_TAG_typedef
	.word	272                             # DW_AT_type
	.word	.Linfo_string40                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x110:0x46 DW_TAG_structure_type
	.word	.Linfo_string39                 # DW_AT_name
	.half	816                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x119:0xc DW_TAG_member
	.word	.Linfo_string11                 # DW_AT_name
	.word	342                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x125:0xc DW_TAG_member
	.word	.Linfo_string13                 # DW_AT_name
	.word	349                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x131:0xc DW_TAG_member
	.word	.Linfo_string14                 # DW_AT_name
	.word	354                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13d:0xc DW_TAG_member
	.word	.Linfo_string21                 # DW_AT_name
	.word	425                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x149:0xc DW_TAG_member
	.word	.Linfo_string23                 # DW_AT_name
	.word	444                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x156:0x7 DW_TAG_base_type
	.word	.Linfo_string12                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x15d:0x5 DW_TAG_pointer_type
	.word	272                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x162:0xb DW_TAG_typedef
	.word	365                             # DW_AT_type
	.word	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x16d:0x29 DW_TAG_structure_type
	.byte	12                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x171:0xc DW_TAG_member
	.word	.Linfo_string15                 # DW_AT_name
	.word	406                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x17d:0xc DW_TAG_member
	.word	.Linfo_string16                 # DW_AT_name
	.word	72                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x189:0xc DW_TAG_member
	.word	.Linfo_string17                 # DW_AT_name
	.word	407                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x196:0x1 DW_TAG_pointer_type
	.byte	9                               # Abbrev [9] 0x197:0xb DW_TAG_typedef
	.word	418                             # DW_AT_type
	.word	.Linfo_string19                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1a2:0x7 DW_TAG_base_type
	.word	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1a9:0xc DW_TAG_array_type
	.word	437                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1ae:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1b5:0x7 DW_TAG_base_type
	.word	.Linfo_string22                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1bc:0xb DW_TAG_typedef
	.word	455                             # DW_AT_type
	.word	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1c7:0x22 DW_TAG_structure_type
	.word	.Linfo_string37                 # DW_AT_name
	.half	656                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1d0:0xc DW_TAG_member
	.word	.Linfo_string24                 # DW_AT_name
	.word	489                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1dc:0xc DW_TAG_member
	.word	.Linfo_string26                 # DW_AT_name
	.word	512                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1e9:0xb DW_TAG_typedef
	.word	500                             # DW_AT_type
	.word	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1f4:0xc DW_TAG_array_type
	.word	342                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1f9:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x200:0x2e DW_TAG_union_type
	.word	.Linfo_string36                 # DW_AT_name
	.half	528                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x209:0xc DW_TAG_member
	.word	.Linfo_string27                 # DW_AT_name
	.word	558                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x215:0xc DW_TAG_member
	.word	.Linfo_string30                 # DW_AT_name
	.word	603                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x221:0xc DW_TAG_member
	.word	.Linfo_string33                 # DW_AT_name
	.word	657                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x22e:0x21 DW_TAG_structure_type
	.word	.Linfo_string29                 # DW_AT_name
	.byte	132                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x236:0xc DW_TAG_member
	.word	.Linfo_string27                 # DW_AT_name
	.word	591                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x242:0xc DW_TAG_member
	.word	.Linfo_string28                 # DW_AT_name
	.word	418                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x24f:0xc DW_TAG_array_type
	.word	418                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x254:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x25b:0x23 DW_TAG_structure_type
	.word	.Linfo_string32                 # DW_AT_name
	.half	264                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x264:0xc DW_TAG_member
	.word	.Linfo_string27                 # DW_AT_name
	.word	638                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x270:0xd DW_TAG_member
	.word	.Linfo_string28                 # DW_AT_name
	.word	418                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.half	256                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x27e:0xc DW_TAG_array_type
	.word	650                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x283:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x28a:0x7 DW_TAG_base_type
	.word	.Linfo_string31                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x291:0x31 DW_TAG_structure_type
	.word	.Linfo_string35                 # DW_AT_name
	.half	528                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x29a:0xd DW_TAG_member
	.word	.Linfo_string27                 # DW_AT_name
	.word	706                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	16                              # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2a7:0xd DW_TAG_member
	.word	.Linfo_string28                 # DW_AT_name
	.word	418                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.half	512                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b4:0xd DW_TAG_member
	.word	.Linfo_string34                 # DW_AT_name
	.word	718                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.half	516                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x2c2:0xc DW_TAG_array_type
	.word	650                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2c7:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x2ce:0xc DW_TAG_array_type
	.word	418                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2d3:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2da:0xb DW_TAG_typedef
	.word	741                             # DW_AT_type
	.word	.Linfo_string44                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2e5:0xb DW_TAG_typedef
	.word	752                             # DW_AT_type
	.word	.Linfo_string43                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2f0:0xb DW_TAG_typedef
	.word	418                             # DW_AT_type
	.word	.Linfo_string42                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2fb:0x5 DW_TAG_pointer_type
	.word	768                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x300:0x5 DW_TAG_volatile_type
	.word	187                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x305:0x11 DW_TAG_variable
	.word	.Linfo_string50                 # DW_AT_name
	.word	790                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	core_num_jobs
	.byte	3                               # Abbrev [3] 0x316:0xc DW_TAG_array_type
	.word	67                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x31b:0x6 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x322:0x11 DW_TAG_variable
	.word	.Linfo_string51                 # DW_AT_name
	.word	261                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	secondary_main_context
	.byte	13                              # Abbrev [13] 0x333:0x5 DW_TAG_pointer_type
	.word	140                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x338:0x5 DW_TAG_pointer_type
	.word	829                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x33d:0x3 DW_TAG_subroutine_type
	.byte	20                              # Abbrev [20] 0x33e:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x340:0x54 DW_TAG_subprogram
	.word	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x351:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.word	406                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x35f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.word	1774                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x36d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.word	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.word	407                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x37b:0x18 DW_TAG_lexical_block
	.word	.Ltmp0                          # DW_AT_low_pc
	.word	.Ltmp5-.Ltmp0                   # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x384:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.word	407                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x394:0x24 DW_TAG_subprogram
	.word	.Lfunc_begin1                   # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	72                              # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x3a9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x3b8:0x2e DW_TAG_subprogram
	.word	.Lfunc_begin2                   # DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x3c9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.word	1780                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3d7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x3e6:0x2e DW_TAG_subprogram
	.word	.Lfunc_begin3                   # DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x3f7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x405:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x414:0xe2 DW_TAG_subprogram
	.word	.Lfunc_begin4                   # DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x425:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	1780                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x433:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x441:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.word	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x44f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x45d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.word	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x46b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x479:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.word	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x487:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.word	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x495:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	84
	.word	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4a3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.word	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4b1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	76
	.word	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4bf:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	68
	.word	.Linfo_string80                 # DW_AT_name
	.word	418                             # DW_AT_type
                                        # DW_AT_artificial
	.byte	27                              # Abbrev [27] 0x4cb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.word	.Linfo_string81                 # DW_AT_name
	.word	418                             # DW_AT_type
                                        # DW_AT_artificial
	.byte	28                              # Abbrev [28] 0x4d7:0xf DW_TAG_variable
	.word	.Ldebug_loc0                    # DW_AT_location
	.word	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.word	1785                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x4e6:0xf DW_TAG_variable
	.word	.Ldebug_loc1                    # DW_AT_location
	.word	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.word	1800                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4f6:0x32 DW_TAG_subprogram
	.word	.Lfunc_begin5                   # DW_AT_low_pc
	.word	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	72                              # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x50b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x519:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x528:0x8c DW_TAG_subprogram
	.word	.Lfunc_begin6                   # DW_AT_low_pc
	.word	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x539:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.word	1780                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x547:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x555:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.word	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x563:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x571:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.word	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x57f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0x58d:0x26 DW_TAG_lexical_block
	.word	.Ltmp69                         # DW_AT_low_pc
	.word	.Ltmp70-.Ltmp69                 # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x596:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.word	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x5a4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.word	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x5b4:0x32 DW_TAG_subprogram
	.word	.Lfunc_begin7                   # DW_AT_low_pc
	.word	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	72                              # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x5c9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x5d7:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x5e6:0xac DW_TAG_subprogram
	.word	.Lfunc_begin8                   # DW_AT_low_pc
	.word	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x5f7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string90                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.word	1780                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x605:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.word	407                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x613:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.word	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x621:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x62f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.word	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x63d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x64b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.word	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x659:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.word	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x667:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	84
	.word	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x675:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.word	.Linfo_string93                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x683:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	76
	.word	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x692:0x2e DW_TAG_subprogram
	.word	.Lfunc_begin9                   # DW_AT_low_pc
	.word	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x6a3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x6b1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.word	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6c0:0x2e DW_TAG_subprogram
	.word	.Lfunc_begin10                  # DW_AT_low_pc
	.word	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x6d5:0x18 DW_TAG_lexical_block
	.word	.Ltmp111                        # DW_AT_low_pc
	.word	.Ltmp116-.Ltmp111               # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x6de:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.word	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.word	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6ee:0x5 DW_TAG_pointer_type
	.word	1779                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6f3:0x1 DW_TAG_const_type
	.byte	13                              # Abbrev [13] 0x6f4:0x5 DW_TAG_pointer_type
	.word	72                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x6f9:0xf DW_TAG_array_type
	.word	72                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x6fe:0x9 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.word	1215                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x708:0xf DW_TAG_array_type
	.word	72                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x70d:0x9 DW_TAG_subrange_type
	.word	79                              # DW_AT_type
	.word	1227                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git c6565f22bedc5074dd2b47f62ea6569ca9906c94)" # string offset=0
.Linfo_string1:
	.asciz	"main.c"                        # string offset=108
.Linfo_string2:
	.asciz	"/home/simon/Programming/cs_econ/bachelor/src/bare_metal" # string offset=115
.Linfo_string3:
	.asciz	"alist"                         # string offset=171
.Linfo_string4:
	.asciz	"int"                           # string offset=177
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=181
.Linfo_string6:
	.asciz	"initialized"                   # string offset=201
.Linfo_string7:
	.asciz	"_Bool"                         # string offset=213
.Linfo_string8:
	.asciz	"char"                          # string offset=219
.Linfo_string9:
	.asciz	"threads"                       # string offset=224
.Linfo_string10:
	.asciz	"context"                       # string offset=232
.Linfo_string11:
	.asciz	"uc_flags"                      # string offset=240
.Linfo_string12:
	.asciz	"unsigned long"                 # string offset=249
.Linfo_string13:
	.asciz	"uc_link"                       # string offset=263
.Linfo_string14:
	.asciz	"uc_stack"                      # string offset=271
.Linfo_string15:
	.asciz	"ss_sp"                         # string offset=280
.Linfo_string16:
	.asciz	"ss_flags"                      # string offset=286
.Linfo_string17:
	.asciz	"ss_size"                       # string offset=295
.Linfo_string18:
	.asciz	"unsigned int"                  # string offset=303
.Linfo_string19:
	.asciz	"size_t"                        # string offset=316
.Linfo_string20:
	.asciz	"libucontext_stack_t"           # string offset=323
.Linfo_string21:
	.asciz	"__pad"                         # string offset=343
.Linfo_string22:
	.asciz	"unsigned char"                 # string offset=349
.Linfo_string23:
	.asciz	"uc_mcontext"                   # string offset=363
.Linfo_string24:
	.asciz	"__gregs"                       # string offset=375
.Linfo_string25:
	.asciz	"libucontext__riscv_mc_gp_state" # string offset=383
.Linfo_string26:
	.asciz	"__fpregs"                      # string offset=414
.Linfo_string27:
	.asciz	"__f"                           # string offset=423
.Linfo_string28:
	.asciz	"__fcsr"                        # string offset=427
.Linfo_string29:
	.asciz	"libucontext__riscv_mc_f_ext_state" # string offset=434
.Linfo_string30:
	.asciz	"__d"                           # string offset=468
.Linfo_string31:
	.asciz	"unsigned long long"            # string offset=472
.Linfo_string32:
	.asciz	"libucontext__riscv_mc_d_ext_state" # string offset=491
.Linfo_string33:
	.asciz	"__q"                           # string offset=525
.Linfo_string34:
	.asciz	"__reserved"                    # string offset=529
.Linfo_string35:
	.asciz	"libucontext__riscv_mc_q_ext_state" # string offset=540
.Linfo_string36:
	.asciz	"libucontext__riscv_mc_fp_state" # string offset=574
.Linfo_string37:
	.asciz	"libucontext_mcontext"          # string offset=605
.Linfo_string38:
	.asciz	"libucontext_mcontext_t"        # string offset=626
.Linfo_string39:
	.asciz	"libucontext_ucontext"          # string offset=649
.Linfo_string40:
	.asciz	"libucontext_ucontext_t"        # string offset=670
.Linfo_string41:
	.asciz	"thread_id"                     # string offset=693
.Linfo_string42:
	.asciz	"__uint32_t"                    # string offset=703
.Linfo_string43:
	.asciz	"u_int32_t"                     # string offset=714
.Linfo_string44:
	.asciz	"Tid"                           # string offset=724
.Linfo_string45:
	.asciz	"parent"                        # string offset=728
.Linfo_string46:
	.asciz	"value"                         # string offset=735
.Linfo_string47:
	.asciz	"is_done"                       # string offset=741
.Linfo_string48:
	.asciz	"thread"                        # string offset=749
.Linfo_string49:
	.asciz	"thread_t"                      # string offset=756
.Linfo_string50:
	.asciz	"core_num_jobs"                 # string offset=765
.Linfo_string51:
	.asciz	"secondary_main_context"        # string offset=779
.Linfo_string52:
	.asciz	"memcpy"                        # string offset=802
.Linfo_string53:
	.asciz	"pow_2"                         # string offset=809
.Linfo_string54:
	.asciz	"get_curr_idx"                  # string offset=815
.Linfo_string55:
	.asciz	"mark_done"                     # string offset=828
.Linfo_string56:
	.asciz	"merge"                         # string offset=838
.Linfo_string57:
	.asciz	"min"                           # string offset=844
.Linfo_string58:
	.asciz	"mergeSort"                     # string offset=848
.Linfo_string59:
	.asciz	"setBitNumber"                  # string offset=858
.Linfo_string60:
	.asciz	"parallel_merge_sort"           # string offset=871
.Linfo_string61:
	.asciz	"secondary_main"                # string offset=891
.Linfo_string62:
	.asciz	"main"                          # string offset=906
.Linfo_string63:
	.asciz	"dest"                          # string offset=911
.Linfo_string64:
	.asciz	"src"                           # string offset=916
.Linfo_string65:
	.asciz	"n"                             # string offset=920
.Linfo_string66:
	.asciz	"i"                             # string offset=922
.Linfo_string67:
	.asciz	"x"                             # string offset=924
.Linfo_string68:
	.asciz	"curr_idx"                      # string offset=926
.Linfo_string69:
	.asciz	"id"                            # string offset=935
.Linfo_string70:
	.asciz	"res"                           # string offset=938
.Linfo_string71:
	.asciz	"l"                             # string offset=942
.Linfo_string72:
	.asciz	"m"                             # string offset=944
.Linfo_string73:
	.asciz	"r"                             # string offset=946
.Linfo_string74:
	.asciz	"lelem"                         # string offset=948
.Linfo_string75:
	.asciz	"relem"                         # string offset=954
.Linfo_string76:
	.asciz	"j"                             # string offset=960
.Linfo_string77:
	.asciz	"k"                             # string offset=962
.Linfo_string78:
	.asciz	"length_left"                   # string offset=964
.Linfo_string79:
	.asciz	"length_right"                  # string offset=976
.Linfo_string80:
	.asciz	"__vla_expr0"                   # string offset=989
.Linfo_string81:
	.asciz	"__vla_expr1"                   # string offset=1001
.Linfo_string82:
	.asciz	"left"                          # string offset=1013
.Linfo_string83:
	.asciz	"right"                         # string offset=1018
.Linfo_string84:
	.asciz	"y"                             # string offset=1024
.Linfo_string85:
	.asciz	"arr"                           # string offset=1026
.Linfo_string86:
	.asciz	"curr_size"                     # string offset=1030
.Linfo_string87:
	.asciz	"left_start"                    # string offset=1040
.Linfo_string88:
	.asciz	"mid"                           # string offset=1051
.Linfo_string89:
	.asciz	"right_end"                     # string offset=1055
.Linfo_string90:
	.asciz	"input_list"                    # string offset=1065
.Linfo_string91:
	.asciz	"length"                        # string offset=1076
.Linfo_string92:
	.asciz	"depth"                         # string offset=1083
.Linfo_string93:
	.asciz	"temp"                          # string offset=1089
.Linfo_string94:
	.asciz	"idx"                           # string offset=1094
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git c6565f22bedc5074dd2b47f62ea6569ca9906c94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow_2
	.addrsig_sym get_curr_idx
	.addrsig_sym mark_done
	.addrsig_sym get_hartid
	.addrsig_sym merge
	.addrsig_sym min
	.addrsig_sym mergeSort
	.addrsig_sym setBitNumber
	.addrsig_sym parallel_merge_sort
	.addrsig_sym thread_create
	.addrsig_sym libucontext_makecontext
	.addrsig_sym printf
	.addrsig_sym secondary_main
	.addrsig_sym libucontext_setcontext
	.addrsig_sym main
	.addrsig_sym init_palloc
	.addrsig_sym libucontext_getcontext
	.addrsig_sym palloc
	.addrsig_sym alist
	.addrsig_sym initialized
	.addrsig_sym core_num_jobs
	.addrsig_sym threads
	.addrsig_sym secondary_main_context
	.section	.debug_line,"",@progbits
.Lline_table_start0:
