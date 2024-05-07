	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0"
	.file	"ISR.c"
	.file	1 "/home/simon/Programming/cs_econ/bachelor/src/bare_metal" "interrupt/ISR.c"
	.globl	set_interrupt_timer             # -- Begin function set_interrupt_timer
	.p2align	1
	.type	set_interrupt_timer,@function
set_interrupt_timer:                    # @set_interrupt_timer
.Lfunc_begin0:
	.loc	1 5 0                           # interrupt/ISR.c:5:0
	.cfi_sections .debug_frame
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
.Ltmp0:
	.loc	1 6 3 prologue_end              # interrupt/ISR.c:6:3
	#APP
	rdtime	t0
	lui	t1, 244
	addi	t1, t1, 576
	add	t2, t0, t1
	lui	t0, 8196
	sw	t2, 0(t0)
	#NO_APP
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	.loc	1 14 1 epilogue_begin           # interrupt/ISR.c:14:1
	addi	sp, sp, 16
	ret
.Ltmp1:
.Lfunc_end0:
	.size	set_interrupt_timer, .Lfunc_end0-set_interrupt_timer
	.cfi_endproc
                                        # -- End function
	.globl	riscv_interrupt_handler         # -- Begin function riscv_interrupt_handler
	.p2align	1
	.type	riscv_interrupt_handler,@function
riscv_interrupt_handler:                # @riscv_interrupt_handler
.Lfunc_begin1:
	.loc	1 16 0                          # interrupt/ISR.c:16:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sw	ra, 76(sp)                      # 4-byte Folded Spill
	sw	t0, 72(sp)                      # 4-byte Folded Spill
	sw	t1, 68(sp)                      # 4-byte Folded Spill
	sw	t2, 64(sp)                      # 4-byte Folded Spill
	sw	s0, 60(sp)                      # 4-byte Folded Spill
	sw	a0, 56(sp)                      # 4-byte Folded Spill
	sw	a1, 52(sp)                      # 4-byte Folded Spill
	sw	a2, 48(sp)                      # 4-byte Folded Spill
	sw	a3, 44(sp)                      # 4-byte Folded Spill
	sw	a4, 40(sp)                      # 4-byte Folded Spill
	sw	a5, 36(sp)                      # 4-byte Folded Spill
	sw	a6, 32(sp)                      # 4-byte Folded Spill
	sw	a7, 28(sp)                      # 4-byte Folded Spill
	sw	t3, 24(sp)                      # 4-byte Folded Spill
	sw	t4, 20(sp)                      # 4-byte Folded Spill
	sw	t5, 16(sp)                      # 4-byte Folded Spill
	sw	t6, 12(sp)                      # 4-byte Folded Spill
	.cfi_offset ra, -4
	.cfi_offset t0, -8
	.cfi_offset t1, -12
	.cfi_offset t2, -16
	.cfi_offset s0, -20
	.cfi_offset a0, -24
	.cfi_offset a1, -28
	.cfi_offset a2, -32
	.cfi_offset a3, -36
	.cfi_offset a4, -40
	.cfi_offset a5, -44
	.cfi_offset a6, -48
	.cfi_offset a7, -52
	.cfi_offset t3, -56
	.cfi_offset t4, -60
	.cfi_offset t5, -64
	.cfi_offset t6, -68
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
.Ltmp2:
	.loc	1 17 3 prologue_end             # interrupt/ISR.c:17:3
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	.loc	1 18 3                          # interrupt/ISR.c:18:3
	call	set_interrupt_timer
	lw	ra, 76(sp)                      # 4-byte Folded Reload
	lw	t0, 72(sp)                      # 4-byte Folded Reload
	lw	t1, 68(sp)                      # 4-byte Folded Reload
	lw	t2, 64(sp)                      # 4-byte Folded Reload
	lw	s0, 60(sp)                      # 4-byte Folded Reload
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	lw	a1, 52(sp)                      # 4-byte Folded Reload
	lw	a2, 48(sp)                      # 4-byte Folded Reload
	lw	a3, 44(sp)                      # 4-byte Folded Reload
	lw	a4, 40(sp)                      # 4-byte Folded Reload
	lw	a5, 36(sp)                      # 4-byte Folded Reload
	lw	a6, 32(sp)                      # 4-byte Folded Reload
	lw	a7, 28(sp)                      # 4-byte Folded Reload
	lw	t3, 24(sp)                      # 4-byte Folded Reload
	lw	t4, 20(sp)                      # 4-byte Folded Reload
	lw	t5, 16(sp)                      # 4-byte Folded Reload
	lw	t6, 12(sp)                      # 4-byte Folded Reload
	.loc	1 19 1 epilogue_begin           # interrupt/ISR.c:19:1
	addi	sp, sp, 80
	mret
.Ltmp3:
.Lfunc_end1:
	.size	riscv_interrupt_handler, .Lfunc_end1-riscv_interrupt_handler
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello from interrupt handler\n"
	.size	.L.str, 30

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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	8                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.half	4                               # DWARF version number
	.word	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	4                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x65 DW_TAG_compile_unit
	.word	.Linfo_string0                  # DW_AT_producer
	.half	29                              # DW_AT_language
	.word	.Linfo_string1                  # DW_AT_name
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.word	.Linfo_string2                  # DW_AT_comp_dir
	.word	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x26:0xd DW_TAG_variable
	.word	51                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	5                               # DW_AT_location
	.byte	3
	.word	.L.str
	.byte	3                               # Abbrev [3] 0x33:0xc DW_TAG_array_type
	.word	63                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.word	70                              # DW_AT_type
	.byte	30                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3f:0x7 DW_TAG_base_type
	.word	.Linfo_string3                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x46:0x7 DW_TAG_base_type
	.word	.Linfo_string4                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x4d:0x11 DW_TAG_subprogram
	.word	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x5e:0x11 DW_TAG_subprogram
	.word	.Lfunc_begin1                   # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	88
	.word	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 203757776826cfd164c537048ec90f5ada50cae2)" # string offset=0
.Linfo_string1:
	.asciz	"interrupt/ISR.c"               # string offset=108
.Linfo_string2:
	.asciz	"/home/simon/Programming/cs_econ/bachelor/src/bare_metal" # string offset=124
.Linfo_string3:
	.asciz	"char"                          # string offset=180
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=185
.Linfo_string5:
	.asciz	"set_interrupt_timer"           # string offset=205
.Linfo_string6:
	.asciz	"riscv_interrupt_handler"       # string offset=225
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 203757776826cfd164c537048ec90f5ada50cae2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_interrupt_timer
	.addrsig_sym printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:
