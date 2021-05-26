	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"test.c"
	.globl	foo                             # -- Begin function foo
	.p2align	1
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	mv	a0, zero
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	1
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	baz                             # -- Begin function baz
	.p2align	1
	.type	baz,@function
baz:                                    # @baz
# %bb.0:                                # %entry
	addi	a2, a0, 100
	addi	a1, a0, 999
	blt	a2, a1, .LBB2_2
# %bb.1:                                # %entry
	mv	a1, a2
.LBB2_2:                                # %entry
	sub	a0, a1, a0
	addi	a0, a0, -99
	ret
.Lfunc_end2:
	.size	baz, .Lfunc_end2-baz
                                        # -- End function
	.globl	direct_version                  # -- Begin function direct_version
	.p2align	1
	.type	direct_version,@function
direct_version:                         # @direct_version
# %bb.0:                                # %entry
	addi	a1, zero, 100
	j	.LBB3_2
.LBB3_1:                                # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	addi	a1, a1, -1
	addi	a0, a0, -99
	beqz	a1, .LBB3_4
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi	a2, a0, 100
	addi	a0, a0, 999
	blt	a2, a0, .LBB3_1
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	mv	a0, a2
	j	.LBB3_1
.LBB3_4:                                # %for.end
	ret
.Lfunc_end3:
	.size	direct_version, .Lfunc_end3-direct_version
                                        # -- End function
	.globl	indirect_version                # -- Begin function indirect_version
	.p2align	1
	.type	indirect_version,@function
indirect_version:                       # @indirect_version
# %bb.0:                                # %entry
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	sw	s1, 20(sp)                      # 4-byte Folded Spill
	sw	s2, 16(sp)                      # 4-byte Folded Spill
	sw	s3, 12(sp)                      # 4-byte Folded Spill
	sw	s4, 8(sp)                       # 4-byte Folded Spill
	sw	s5, 4(sp)                       # 4-byte Folded Spill
	mv	s1, a3
	mv	s2, a2
	mv	s3, a1
	mv	s4, a0
	addi	s0, zero, 100
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	jalr	s4
	mv	s5, a0
	mv	a0, s1
	jalr	s3
	add	s5, s5, a0
	mv	a0, s1
	jalr	s2
	addi	s0, s0, -1
	add	s1, s5, a0
	bnez	s0, .LBB4_1
# %bb.2:                                # %for.end
	mv	a0, s1
	lw	s5, 4(sp)                       # 4-byte Folded Reload
	lw	s4, 8(sp)                       # 4-byte Folded Reload
	lw	s3, 12(sp)                      # 4-byte Folded Reload
	lw	s2, 16(sp)                      # 4-byte Folded Reload
	lw	s1, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	indirect_version, .Lfunc_end4-indirect_version
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	a2, zero, 2
	bne	a0, a2, .LBB5_3
# %bb.1:                                # %land.lhs.true
	lw	a1, 4(a1)
	lbu	a1, 0(a1)
	addi	a2, zero, 100
	bne	a1, a2, .LBB5_3
# %bb.2:
	lui	a0, 22
	addi	a0, a0, -107
	ret
.LBB5_3:                                # %for.body.i10.preheader
	addi	a1, zero, 100
	j	.LBB5_5
.LBB5_4:                                # %for.body.i10
                                        #   in Loop: Header=BB5_5 Depth=1
	addi	a1, a1, -1
	addi	a0, a0, -99
	beqz	a1, .LBB5_7
.LBB5_5:                                # %for.body.i10
                                        # =>This Inner Loop Header: Depth=1
	addi	a2, a0, 100
	addi	a0, a0, 999
	blt	a2, a0, .LBB5_4
# %bb.6:                                # %for.body.i10
                                        #   in Loop: Header=BB5_5 Depth=1
	mv	a0, a2
	j	.LBB5_4
.LBB5_7:                                # %return
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.ident	"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)"
	.section	".note.GNU-stack","",@progbits
