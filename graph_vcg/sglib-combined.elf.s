
sglib-combined.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00000093          	li	ra,0
   4:	00000113          	li	sp,0
   8:	00000193          	li	gp,0
   c:	00000213          	li	tp,0
  10:	00000293          	li	t0,0
  14:	00000313          	li	t1,0
  18:	00000393          	li	t2,0
  1c:	00000413          	li	s0,0
  20:	00000493          	li	s1,0
  24:	00000513          	li	a0,0
  28:	00000593          	li	a1,0
  2c:	00000613          	li	a2,0
  30:	00000693          	li	a3,0
  34:	00000713          	li	a4,0
  38:	00000793          	li	a5,0
  3c:	00000813          	li	a6,0
  40:	00000893          	li	a7,0
  44:	00000913          	li	s2,0
  48:	00000993          	li	s3,0
  4c:	00000a13          	li	s4,0
  50:	00000a93          	li	s5,0
  54:	00000b13          	li	s6,0
  58:	00000b93          	li	s7,0
  5c:	00000c13          	li	s8,0
  60:	00000c93          	li	s9,0
  64:	00000d13          	li	s10,0
  68:	00000d93          	li	s11,0
  6c:	00000e13          	li	t3,0
  70:	00000e93          	li	t4,0
  74:	00000f13          	li	t5,0
  78:	00000f93          	li	t6,0

0000007c <init_stack>:
  7c:	00020137          	lui	sp,0x20
  80:	00010113          	mv	sp,sp
  84:	621020ef          	jal	ra,2ea4 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <seed+0x10fedae8>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <seed+0x10fedae8>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fedb68>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <seed+0xdad8>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000127b7          	lui	a5,0x12
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	50a7a023          	sw	a0,1280(a5) # 12500 <start_time>
      e4:	50e7a223          	sw	a4,1284(a5)
      e8:	01010113          	addi	sp,sp,16
      ec:	00008067          	ret

000000f0 <stop_trigger>:
      f0:	ff010113          	addi	sp,sp,-16
      f4:	01d00513          	li	a0,29
      f8:	00112623          	sw	ra,12(sp)
      fc:	00812423          	sw	s0,8(sp)
     100:	f9dff0ef          	jal	ra,9c <readFromCtrl>
     104:	00050413          	mv	s0,a0
     108:	01c00513          	li	a0,28
     10c:	f91ff0ef          	jal	ra,9c <readFromCtrl>
     110:	000127b7          	lui	a5,0x12
     114:	5007a583          	lw	a1,1280(a5) # 12500 <start_time>
     118:	5047a703          	lw	a4,1284(a5)
     11c:	40b505b3          	sub	a1,a0,a1
     120:	00b537b3          	sltu	a5,a0,a1
     124:	40e40433          	sub	s0,s0,a4
     128:	00400513          	li	a0,4
     12c:	40f40433          	sub	s0,s0,a5
     130:	f59ff0ef          	jal	ra,88 <writeToCtrl>
     134:	00040593          	mv	a1,s0
     138:	00500513          	li	a0,5
     13c:	f4dff0ef          	jal	ra,88 <writeToCtrl>
     140:	00c12083          	lw	ra,12(sp)
     144:	00812403          	lw	s0,8(sp)
     148:	01010113          	addi	sp,sp,16
     14c:	00008067          	ret

00000150 <sglib___rbtree_fix_left_deletion_discrepancy>:
     150:	00052683          	lw	a3,0(a0)
     154:	00050713          	mv	a4,a0
     158:	00c6a783          	lw	a5,12(a3)
     15c:	0a078063          	beqz	a5,1fc <sglib___rbtree_fix_left_deletion_discrepancy+0xac>
     160:	0047c803          	lbu	a6,4(a5)
     164:	00100513          	li	a0,1
     168:	00c7a583          	lw	a1,12(a5)
     16c:	0087a603          	lw	a2,8(a5)
     170:	02a80a63          	beq	a6,a0,1a4 <sglib___rbtree_fix_left_deletion_discrepancy+0x54>
     174:	00058663          	beqz	a1,180 <sglib___rbtree_fix_left_deletion_discrepancy+0x30>
     178:	0045c803          	lbu	a6,4(a1)
     17c:	08081663          	bnez	a6,208 <sglib___rbtree_fix_left_deletion_discrepancy+0xb8>
     180:	00060663          	beqz	a2,18c <sglib___rbtree_fix_left_deletion_discrepancy+0x3c>
     184:	00464503          	lbu	a0,4(a2)
     188:	04051263          	bnez	a0,1cc <sglib___rbtree_fix_left_deletion_discrepancy+0x7c>
     18c:	0046c503          	lbu	a0,4(a3)
     190:	00100713          	li	a4,1
     194:	00068223          	sb	zero,4(a3)
     198:	00153513          	seqz	a0,a0
     19c:	00e78223          	sb	a4,4(a5)
     1a0:	00008067          	ret
     1a4:	08060c63          	beqz	a2,23c <sglib___rbtree_fix_left_deletion_discrepancy+0xec>
     1a8:	00c62503          	lw	a0,12(a2)
     1ac:	00862883          	lw	a7,8(a2)
     1b0:	0a050263          	beqz	a0,254 <sglib___rbtree_fix_left_deletion_discrepancy+0x104>
     1b4:	00454303          	lbu	t1,4(a0)
     1b8:	08030e63          	beqz	t1,254 <sglib___rbtree_fix_left_deletion_discrepancy+0x104>
     1bc:	0f030e63          	beq	t1,a6,2b8 <sglib___rbtree_fix_left_deletion_discrepancy+0x168>
     1c0:	00000513          	li	a0,0
     1c4:	12089463          	bnez	a7,2ec <sglib___rbtree_fix_left_deletion_discrepancy+0x19c>
     1c8:	00008067          	ret
     1cc:	00c62803          	lw	a6,12(a2)
     1d0:	00862583          	lw	a1,8(a2)
     1d4:	00c72023          	sw	a2,0(a4)
     1d8:	0046c703          	lbu	a4,4(a3)
     1dc:	00000513          	li	a0,0
     1e0:	00e60223          	sb	a4,4(a2)
     1e4:	00068223          	sb	zero,4(a3)
     1e8:	00f62623          	sw	a5,12(a2)
     1ec:	00d62423          	sw	a3,8(a2)
     1f0:	0107a423          	sw	a6,8(a5)
     1f4:	00b6a623          	sw	a1,12(a3)
     1f8:	00008067          	ret
     1fc:	00068223          	sb	zero,4(a3)
     200:	00000513          	li	a0,0
     204:	00008067          	ret
     208:	fca812e3          	bne	a6,a0,1cc <sglib___rbtree_fix_left_deletion_discrepancy+0x7c>
     20c:	00060663          	beqz	a2,218 <sglib___rbtree_fix_left_deletion_discrepancy+0xc8>
     210:	00464503          	lbu	a0,4(a2)
     214:	fa051ce3          	bnez	a0,1cc <sglib___rbtree_fix_left_deletion_discrepancy+0x7c>
     218:	00f72023          	sw	a5,0(a4)
     21c:	0046c703          	lbu	a4,4(a3)
     220:	00000513          	li	a0,0
     224:	00e78223          	sb	a4,4(a5)
     228:	00068223          	sb	zero,4(a3)
     22c:	00d7a423          	sw	a3,8(a5)
     230:	00c6a623          	sw	a2,12(a3)
     234:	00058223          	sb	zero,4(a1)
     238:	00008067          	ret
     23c:	00f72023          	sw	a5,0(a4)
     240:	00078223          	sb	zero,4(a5)
     244:	00d7a423          	sw	a3,8(a5)
     248:	0006a623          	sw	zero,12(a3)
     24c:	00000513          	li	a0,0
     250:	00008067          	ret
     254:	04088263          	beqz	a7,298 <sglib___rbtree_fix_left_deletion_discrepancy+0x148>
     258:	0048c803          	lbu	a6,4(a7)
     25c:	00080313          	mv	t1,a6
     260:	02080c63          	beqz	a6,298 <sglib___rbtree_fix_left_deletion_discrepancy+0x148>
     264:	08051863          	bnez	a0,2f4 <sglib___rbtree_fix_left_deletion_discrepancy+0x1a4>
     268:	00100593          	li	a1,1
     26c:	00000513          	li	a0,0
     270:	f4b81ce3          	bne	a6,a1,1c8 <sglib___rbtree_fix_left_deletion_discrepancy+0x78>
     274:	00c8a803          	lw	a6,12(a7)
     278:	0088a583          	lw	a1,8(a7)
     27c:	01172023          	sw	a7,0(a4)
     280:	00088223          	sb	zero,4(a7)
     284:	00f8a623          	sw	a5,12(a7)
     288:	01062423          	sw	a6,8(a2)
     28c:	00d8a423          	sw	a3,8(a7)
     290:	00b6a623          	sw	a1,12(a3)
     294:	00008067          	ret
     298:	00f72023          	sw	a5,0(a4)
     29c:	00d7a423          	sw	a3,8(a5)
     2a0:	00078223          	sb	zero,4(a5)
     2a4:	00c6a623          	sw	a2,12(a3)
     2a8:	00100793          	li	a5,1
     2ac:	00f60223          	sb	a5,4(a2)
     2b0:	00000513          	li	a0,0
     2b4:	00008067          	ret
     2b8:	00088863          	beqz	a7,2c8 <sglib___rbtree_fix_left_deletion_discrepancy+0x178>
     2bc:	0048c303          	lbu	t1,4(a7)
     2c0:	00100813          	li	a6,1
     2c4:	05030063          	beq	t1,a6,304 <sglib___rbtree_fix_left_deletion_discrepancy+0x1b4>
     2c8:	00c72023          	sw	a2,0(a4)
     2cc:	00f62623          	sw	a5,12(a2)
     2d0:	00d62423          	sw	a3,8(a2)
     2d4:	00a7a423          	sw	a0,8(a5)
     2d8:	00b7a623          	sw	a1,12(a5)
     2dc:	0116a623          	sw	a7,12(a3)
     2e0:	00050223          	sb	zero,4(a0)
     2e4:	00000513          	li	a0,0
     2e8:	00008067          	ret
     2ec:	0048c803          	lbu	a6,4(a7)
     2f0:	f79ff06f          	j	268 <sglib___rbtree_fix_left_deletion_discrepancy+0x118>
     2f4:	00454e83          	lbu	t4,4(a0)
     2f8:	00100e13          	li	t3,1
     2fc:	f7ce96e3          	bne	t4,t3,268 <sglib___rbtree_fix_left_deletion_discrepancy+0x118>
     300:	fc1ff06f          	j	2c0 <sglib___rbtree_fix_left_deletion_discrepancy+0x170>
     304:	00c8a503          	lw	a0,12(a7)
     308:	0088a583          	lw	a1,8(a7)
     30c:	01172023          	sw	a7,0(a4)
     310:	00088223          	sb	zero,4(a7)
     314:	00f8a623          	sw	a5,12(a7)
     318:	00a62423          	sw	a0,8(a2)
     31c:	00d8a423          	sw	a3,8(a7)
     320:	00b6a623          	sw	a1,12(a3)
     324:	00000513          	li	a0,0
     328:	00008067          	ret

0000032c <sglib___rbtree_fix_right_deletion_discrepancy>:
     32c:	00052683          	lw	a3,0(a0)
     330:	00050713          	mv	a4,a0
     334:	0086a783          	lw	a5,8(a3)
     338:	0a078063          	beqz	a5,3d8 <sglib___rbtree_fix_right_deletion_discrepancy+0xac>
     33c:	0047c803          	lbu	a6,4(a5)
     340:	00100513          	li	a0,1
     344:	0087a583          	lw	a1,8(a5)
     348:	00c7a603          	lw	a2,12(a5)
     34c:	02a80a63          	beq	a6,a0,380 <sglib___rbtree_fix_right_deletion_discrepancy+0x54>
     350:	00058663          	beqz	a1,35c <sglib___rbtree_fix_right_deletion_discrepancy+0x30>
     354:	0045c803          	lbu	a6,4(a1)
     358:	08081663          	bnez	a6,3e4 <sglib___rbtree_fix_right_deletion_discrepancy+0xb8>
     35c:	00060663          	beqz	a2,368 <sglib___rbtree_fix_right_deletion_discrepancy+0x3c>
     360:	00464503          	lbu	a0,4(a2)
     364:	04051263          	bnez	a0,3a8 <sglib___rbtree_fix_right_deletion_discrepancy+0x7c>
     368:	0046c503          	lbu	a0,4(a3)
     36c:	00100713          	li	a4,1
     370:	00068223          	sb	zero,4(a3)
     374:	00153513          	seqz	a0,a0
     378:	00e78223          	sb	a4,4(a5)
     37c:	00008067          	ret
     380:	08060c63          	beqz	a2,418 <sglib___rbtree_fix_right_deletion_discrepancy+0xec>
     384:	00862503          	lw	a0,8(a2)
     388:	00c62883          	lw	a7,12(a2)
     38c:	0a050263          	beqz	a0,430 <sglib___rbtree_fix_right_deletion_discrepancy+0x104>
     390:	00454303          	lbu	t1,4(a0)
     394:	08030e63          	beqz	t1,430 <sglib___rbtree_fix_right_deletion_discrepancy+0x104>
     398:	0f030e63          	beq	t1,a6,494 <sglib___rbtree_fix_right_deletion_discrepancy+0x168>
     39c:	00000513          	li	a0,0
     3a0:	12089463          	bnez	a7,4c8 <sglib___rbtree_fix_right_deletion_discrepancy+0x19c>
     3a4:	00008067          	ret
     3a8:	00862803          	lw	a6,8(a2)
     3ac:	00c62583          	lw	a1,12(a2)
     3b0:	00c72023          	sw	a2,0(a4)
     3b4:	0046c703          	lbu	a4,4(a3)
     3b8:	00000513          	li	a0,0
     3bc:	00e60223          	sb	a4,4(a2)
     3c0:	00068223          	sb	zero,4(a3)
     3c4:	00f62423          	sw	a5,8(a2)
     3c8:	00d62623          	sw	a3,12(a2)
     3cc:	0107a623          	sw	a6,12(a5)
     3d0:	00b6a423          	sw	a1,8(a3)
     3d4:	00008067          	ret
     3d8:	00068223          	sb	zero,4(a3)
     3dc:	00000513          	li	a0,0
     3e0:	00008067          	ret
     3e4:	fca812e3          	bne	a6,a0,3a8 <sglib___rbtree_fix_right_deletion_discrepancy+0x7c>
     3e8:	00060663          	beqz	a2,3f4 <sglib___rbtree_fix_right_deletion_discrepancy+0xc8>
     3ec:	00464503          	lbu	a0,4(a2)
     3f0:	fa051ce3          	bnez	a0,3a8 <sglib___rbtree_fix_right_deletion_discrepancy+0x7c>
     3f4:	00f72023          	sw	a5,0(a4)
     3f8:	0046c703          	lbu	a4,4(a3)
     3fc:	00000513          	li	a0,0
     400:	00e78223          	sb	a4,4(a5)
     404:	00068223          	sb	zero,4(a3)
     408:	00d7a623          	sw	a3,12(a5)
     40c:	00c6a423          	sw	a2,8(a3)
     410:	00058223          	sb	zero,4(a1)
     414:	00008067          	ret
     418:	00f72023          	sw	a5,0(a4)
     41c:	00078223          	sb	zero,4(a5)
     420:	00d7a623          	sw	a3,12(a5)
     424:	0006a423          	sw	zero,8(a3)
     428:	00000513          	li	a0,0
     42c:	00008067          	ret
     430:	04088263          	beqz	a7,474 <sglib___rbtree_fix_right_deletion_discrepancy+0x148>
     434:	0048c803          	lbu	a6,4(a7)
     438:	00080313          	mv	t1,a6
     43c:	02080c63          	beqz	a6,474 <sglib___rbtree_fix_right_deletion_discrepancy+0x148>
     440:	08051863          	bnez	a0,4d0 <sglib___rbtree_fix_right_deletion_discrepancy+0x1a4>
     444:	00100593          	li	a1,1
     448:	00000513          	li	a0,0
     44c:	f4b81ce3          	bne	a6,a1,3a4 <sglib___rbtree_fix_right_deletion_discrepancy+0x78>
     450:	0088a803          	lw	a6,8(a7)
     454:	00c8a583          	lw	a1,12(a7)
     458:	01172023          	sw	a7,0(a4)
     45c:	00088223          	sb	zero,4(a7)
     460:	00f8a423          	sw	a5,8(a7)
     464:	01062623          	sw	a6,12(a2)
     468:	00d8a623          	sw	a3,12(a7)
     46c:	00b6a423          	sw	a1,8(a3)
     470:	00008067          	ret
     474:	00f72023          	sw	a5,0(a4)
     478:	00d7a623          	sw	a3,12(a5)
     47c:	00078223          	sb	zero,4(a5)
     480:	00c6a423          	sw	a2,8(a3)
     484:	00100793          	li	a5,1
     488:	00f60223          	sb	a5,4(a2)
     48c:	00000513          	li	a0,0
     490:	00008067          	ret
     494:	00088863          	beqz	a7,4a4 <sglib___rbtree_fix_right_deletion_discrepancy+0x178>
     498:	0048c303          	lbu	t1,4(a7)
     49c:	00100813          	li	a6,1
     4a0:	05030063          	beq	t1,a6,4e0 <sglib___rbtree_fix_right_deletion_discrepancy+0x1b4>
     4a4:	00c72023          	sw	a2,0(a4)
     4a8:	00f62423          	sw	a5,8(a2)
     4ac:	00d62623          	sw	a3,12(a2)
     4b0:	00a7a623          	sw	a0,12(a5)
     4b4:	00b7a423          	sw	a1,8(a5)
     4b8:	0116a423          	sw	a7,8(a3)
     4bc:	00050223          	sb	zero,4(a0)
     4c0:	00000513          	li	a0,0
     4c4:	00008067          	ret
     4c8:	0048c803          	lbu	a6,4(a7)
     4cc:	f79ff06f          	j	444 <sglib___rbtree_fix_right_deletion_discrepancy+0x118>
     4d0:	00454e83          	lbu	t4,4(a0)
     4d4:	00100e13          	li	t3,1
     4d8:	f7ce96e3          	bne	t4,t3,444 <sglib___rbtree_fix_right_deletion_discrepancy+0x118>
     4dc:	fc1ff06f          	j	49c <sglib___rbtree_fix_right_deletion_discrepancy+0x170>
     4e0:	0088a503          	lw	a0,8(a7)
     4e4:	00c8a583          	lw	a1,12(a7)
     4e8:	01172023          	sw	a7,0(a4)
     4ec:	00088223          	sb	zero,4(a7)
     4f0:	00f8a423          	sw	a5,8(a7)
     4f4:	00a62623          	sw	a0,12(a2)
     4f8:	00d8a623          	sw	a3,12(a7)
     4fc:	00b6a423          	sw	a1,8(a3)
     500:	00000513          	li	a0,0
     504:	00008067          	ret

00000508 <sglib___rbtree_delete_rightmost_leaf>:
     508:	ff010113          	addi	sp,sp,-16
     50c:	00812423          	sw	s0,8(sp)
     510:	00050413          	mv	s0,a0
     514:	00052503          	lw	a0,0(a0)
     518:	00112623          	sw	ra,12(sp)
     51c:	00c52703          	lw	a4,12(a0)
     520:	02070063          	beqz	a4,540 <sglib___rbtree_delete_rightmost_leaf+0x38>
     524:	00c50513          	addi	a0,a0,12
     528:	fe1ff0ef          	jal	ra,508 <sglib___rbtree_delete_rightmost_leaf>
     52c:	04051663          	bnez	a0,578 <sglib___rbtree_delete_rightmost_leaf+0x70>
     530:	00c12083          	lw	ra,12(sp)
     534:	00812403          	lw	s0,8(sp)
     538:	01010113          	addi	sp,sp,16
     53c:	00008067          	ret
     540:	00a5a023          	sw	a0,0(a1)
     544:	00852703          	lw	a4,8(a0)
     548:	04070463          	beqz	a4,590 <sglib___rbtree_delete_rightmost_leaf+0x88>
     54c:	00454783          	lbu	a5,4(a0)
     550:	00000513          	li	a0,0
     554:	00079663          	bnez	a5,560 <sglib___rbtree_delete_rightmost_leaf+0x58>
     558:	00474783          	lbu	a5,4(a4)
     55c:	0017b513          	seqz	a0,a5
     560:	00070223          	sb	zero,4(a4)
     564:	00c12083          	lw	ra,12(sp)
     568:	00e42023          	sw	a4,0(s0)
     56c:	00812403          	lw	s0,8(sp)
     570:	01010113          	addi	sp,sp,16
     574:	00008067          	ret
     578:	00040513          	mv	a0,s0
     57c:	db1ff0ef          	jal	ra,32c <sglib___rbtree_fix_right_deletion_discrepancy>
     580:	00c12083          	lw	ra,12(sp)
     584:	00812403          	lw	s0,8(sp)
     588:	01010113          	addi	sp,sp,16
     58c:	00008067          	ret
     590:	00042023          	sw	zero,0(s0)
     594:	00454503          	lbu	a0,4(a0)
     598:	00c12083          	lw	ra,12(sp)
     59c:	00812403          	lw	s0,8(sp)
     5a0:	00153513          	seqz	a0,a0
     5a4:	01010113          	addi	sp,sp,16
     5a8:	00008067          	ret

000005ac <sglib___rbtree_consistency_check_recursive>:
     5ac:	ff010113          	addi	sp,sp,-16
     5b0:	00912223          	sw	s1,4(sp)
     5b4:	01212023          	sw	s2,0(sp)
     5b8:	00112623          	sw	ra,12(sp)
     5bc:	00812423          	sw	s0,8(sp)
     5c0:	00058913          	mv	s2,a1
     5c4:	00060493          	mv	s1,a2
     5c8:	04050663          	beqz	a0,614 <sglib___rbtree_consistency_check_recursive+0x68>
     5cc:	00454703          	lbu	a4,4(a0)
     5d0:	00100793          	li	a5,1
     5d4:	00050413          	mv	s0,a0
     5d8:	00852503          	lw	a0,8(a0)
     5dc:	00f70663          	beq	a4,a5,5e8 <sglib___rbtree_consistency_check_recursive+0x3c>
     5e0:	00160493          	addi	s1,a2,1
     5e4:	00048613          	mv	a2,s1
     5e8:	fc5ff0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
     5ec:	00c42503          	lw	a0,12(s0)
     5f0:	00048613          	mv	a2,s1
     5f4:	00090593          	mv	a1,s2
     5f8:	fb5ff0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
     5fc:	00c12083          	lw	ra,12(sp)
     600:	00812403          	lw	s0,8(sp)
     604:	00412483          	lw	s1,4(sp)
     608:	00012903          	lw	s2,0(sp)
     60c:	01010113          	addi	sp,sp,16
     610:	00008067          	ret
     614:	0005a783          	lw	a5,0(a1)
     618:	fe07d2e3          	bgez	a5,5fc <sglib___rbtree_consistency_check_recursive+0x50>
     61c:	00c12083          	lw	ra,12(sp)
     620:	00812403          	lw	s0,8(sp)
     624:	00c92023          	sw	a2,0(s2)
     628:	00412483          	lw	s1,4(sp)
     62c:	00012903          	lw	s2,0(sp)
     630:	01010113          	addi	sp,sp,16
     634:	00008067          	ret

00000638 <sglib___rbtree_add_recursive.constprop.0>:
     638:	ff010113          	addi	sp,sp,-16
     63c:	00912223          	sw	s1,4(sp)
     640:	00052483          	lw	s1,0(a0)
     644:	00812423          	sw	s0,8(sp)
     648:	00112623          	sw	ra,12(sp)
     64c:	00050413          	mv	s0,a0
     650:	0c048263          	beqz	s1,714 <sglib___rbtree_add_recursive.constprop.0+0xdc>
     654:	0005a783          	lw	a5,0(a1)
     658:	0004a703          	lw	a4,0(s1)
     65c:	40e787b3          	sub	a5,a5,a4
     660:	0007c663          	bltz	a5,66c <sglib___rbtree_add_recursive.constprop.0+0x34>
     664:	02079663          	bnez	a5,690 <sglib___rbtree_add_recursive.constprop.0+0x58>
     668:	0295f463          	bgeu	a1,s1,690 <sglib___rbtree_add_recursive.constprop.0+0x58>
     66c:	00848513          	addi	a0,s1,8
     670:	fc9ff0ef          	jal	ra,638 <sglib___rbtree_add_recursive.constprop.0>
     674:	0044c783          	lbu	a5,4(s1)
     678:	0a078e63          	beqz	a5,734 <sglib___rbtree_add_recursive.constprop.0+0xfc>
     67c:	00c12083          	lw	ra,12(sp)
     680:	00812403          	lw	s0,8(sp)
     684:	00412483          	lw	s1,4(sp)
     688:	01010113          	addi	sp,sp,16
     68c:	00008067          	ret
     690:	00c48513          	addi	a0,s1,12
     694:	fa5ff0ef          	jal	ra,638 <sglib___rbtree_add_recursive.constprop.0>
     698:	0044c783          	lbu	a5,4(s1)
     69c:	fe0790e3          	bnez	a5,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     6a0:	00042783          	lw	a5,0(s0)
     6a4:	00c7a703          	lw	a4,12(a5)
     6a8:	0087a683          	lw	a3,8(a5)
     6ac:	00474603          	lbu	a2,4(a4)
     6b0:	00068863          	beqz	a3,6c0 <sglib___rbtree_add_recursive.constprop.0+0x88>
     6b4:	0046c583          	lbu	a1,4(a3)
     6b8:	00100513          	li	a0,1
     6bc:	16a58063          	beq	a1,a0,81c <sglib___rbtree_add_recursive.constprop.0+0x1e4>
     6c0:	00100693          	li	a3,1
     6c4:	fad61ce3          	bne	a2,a3,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     6c8:	00c72583          	lw	a1,12(a4)
     6cc:	00872683          	lw	a3,8(a4)
     6d0:	00058663          	beqz	a1,6dc <sglib___rbtree_add_recursive.constprop.0+0xa4>
     6d4:	0045c503          	lbu	a0,4(a1)
     6d8:	0ec50663          	beq	a0,a2,7c4 <sglib___rbtree_add_recursive.constprop.0+0x18c>
     6dc:	fa0680e3          	beqz	a3,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     6e0:	0046c603          	lbu	a2,4(a3)
     6e4:	00100593          	li	a1,1
     6e8:	f8b61ae3          	bne	a2,a1,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     6ec:	00c6a503          	lw	a0,12(a3)
     6f0:	0086a583          	lw	a1,8(a3)
     6f4:	00a72423          	sw	a0,8(a4)
     6f8:	00b7a623          	sw	a1,12(a5)
     6fc:	00e6a623          	sw	a4,12(a3)
     700:	00f6a423          	sw	a5,8(a3)
     704:	00068223          	sb	zero,4(a3)
     708:	00c78223          	sb	a2,4(a5)
     70c:	00d42023          	sw	a3,0(s0)
     710:	f6dff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     714:	00100793          	li	a5,1
     718:	00f58223          	sb	a5,4(a1)
     71c:	00c12083          	lw	ra,12(sp)
     720:	00812403          	lw	s0,8(sp)
     724:	00b52023          	sw	a1,0(a0)
     728:	00412483          	lw	s1,4(sp)
     72c:	01010113          	addi	sp,sp,16
     730:	00008067          	ret
     734:	00042783          	lw	a5,0(s0)
     738:	0087a703          	lw	a4,8(a5)
     73c:	00c7a683          	lw	a3,12(a5)
     740:	00474603          	lbu	a2,4(a4)
     744:	00068863          	beqz	a3,754 <sglib___rbtree_add_recursive.constprop.0+0x11c>
     748:	0046c583          	lbu	a1,4(a3)
     74c:	00100513          	li	a0,1
     750:	08a58863          	beq	a1,a0,7e0 <sglib___rbtree_add_recursive.constprop.0+0x1a8>
     754:	00100693          	li	a3,1
     758:	f2d612e3          	bne	a2,a3,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     75c:	00872583          	lw	a1,8(a4)
     760:	00c72683          	lw	a3,12(a4)
     764:	00058663          	beqz	a1,770 <sglib___rbtree_add_recursive.constprop.0+0x138>
     768:	0045c503          	lbu	a0,4(a1)
     76c:	02c50e63          	beq	a0,a2,7a8 <sglib___rbtree_add_recursive.constprop.0+0x170>
     770:	f00686e3          	beqz	a3,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     774:	0046c603          	lbu	a2,4(a3)
     778:	00100593          	li	a1,1
     77c:	f0b610e3          	bne	a2,a1,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     780:	0086a503          	lw	a0,8(a3)
     784:	00c6a583          	lw	a1,12(a3)
     788:	00a72623          	sw	a0,12(a4)
     78c:	00b7a423          	sw	a1,8(a5)
     790:	00e6a423          	sw	a4,8(a3)
     794:	00f6a623          	sw	a5,12(a3)
     798:	00068223          	sb	zero,4(a3)
     79c:	00c78223          	sb	a2,4(a5)
     7a0:	00d42023          	sw	a3,0(s0)
     7a4:	ed9ff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     7a8:	00d7a423          	sw	a3,8(a5)
     7ac:	00b72423          	sw	a1,8(a4)
     7b0:	00f72623          	sw	a5,12(a4)
     7b4:	00c78223          	sb	a2,4(a5)
     7b8:	00070223          	sb	zero,4(a4)
     7bc:	00e42023          	sw	a4,0(s0)
     7c0:	ebdff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     7c4:	00d7a623          	sw	a3,12(a5)
     7c8:	00b72623          	sw	a1,12(a4)
     7cc:	00f72423          	sw	a5,8(a4)
     7d0:	00c78223          	sb	a2,4(a5)
     7d4:	00070223          	sb	zero,4(a4)
     7d8:	00e42023          	sw	a4,0(s0)
     7dc:	ea1ff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     7e0:	e8b61ee3          	bne	a2,a1,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     7e4:	00872583          	lw	a1,8(a4)
     7e8:	00058663          	beqz	a1,7f4 <sglib___rbtree_add_recursive.constprop.0+0x1bc>
     7ec:	0045c583          	lbu	a1,4(a1)
     7f0:	00c58c63          	beq	a1,a2,808 <sglib___rbtree_add_recursive.constprop.0+0x1d0>
     7f4:	00c72603          	lw	a2,12(a4)
     7f8:	e80602e3          	beqz	a2,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     7fc:	00464583          	lbu	a1,4(a2)
     800:	00100613          	li	a2,1
     804:	e6c59ce3          	bne	a1,a2,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     808:	00070223          	sb	zero,4(a4)
     80c:	00068223          	sb	zero,4(a3)
     810:	00100713          	li	a4,1
     814:	00e78223          	sb	a4,4(a5)
     818:	e65ff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     81c:	e6b610e3          	bne	a2,a1,67c <sglib___rbtree_add_recursive.constprop.0+0x44>
     820:	00c72583          	lw	a1,12(a4)
     824:	00058663          	beqz	a1,830 <sglib___rbtree_add_recursive.constprop.0+0x1f8>
     828:	0045c583          	lbu	a1,4(a1)
     82c:	fcc58ee3          	beq	a1,a2,808 <sglib___rbtree_add_recursive.constprop.0+0x1d0>
     830:	00872603          	lw	a2,8(a4)
     834:	fc0614e3          	bnez	a2,7fc <sglib___rbtree_add_recursive.constprop.0+0x1c4>
     838:	e45ff06f          	j	67c <sglib___rbtree_add_recursive.constprop.0+0x44>

0000083c <sglib_dllist_add>:
     83c:	00052783          	lw	a5,0(a0)
     840:	02078463          	beqz	a5,868 <sglib_dllist_add+0x2c>
     844:	0087a703          	lw	a4,8(a5)
     848:	00f5a223          	sw	a5,4(a1)
     84c:	00e5a423          	sw	a4,8(a1)
     850:	00052783          	lw	a5,0(a0)
     854:	00b7a423          	sw	a1,8(a5)
     858:	0085a783          	lw	a5,8(a1)
     85c:	00078463          	beqz	a5,864 <sglib_dllist_add+0x28>
     860:	00b7a223          	sw	a1,4(a5)
     864:	00008067          	ret
     868:	00b52023          	sw	a1,0(a0)
     86c:	0005a423          	sw	zero,8(a1)
     870:	00052783          	lw	a5,0(a0)
     874:	0007a223          	sw	zero,4(a5)
     878:	00008067          	ret

0000087c <sglib_dllist_add_after>:
     87c:	00052783          	lw	a5,0(a0)
     880:	02078463          	beqz	a5,8a8 <sglib_dllist_add_after+0x2c>
     884:	0047a783          	lw	a5,4(a5)
     888:	00f5a223          	sw	a5,4(a1)
     88c:	00052783          	lw	a5,0(a0)
     890:	00f5a423          	sw	a5,8(a1)
     894:	00b7a223          	sw	a1,4(a5)
     898:	0045a783          	lw	a5,4(a1)
     89c:	00078463          	beqz	a5,8a4 <sglib_dllist_add_after+0x28>
     8a0:	00b7a423          	sw	a1,8(a5)
     8a4:	00008067          	ret
     8a8:	00b52023          	sw	a1,0(a0)
     8ac:	0005a423          	sw	zero,8(a1)
     8b0:	00052783          	lw	a5,0(a0)
     8b4:	0007a223          	sw	zero,4(a5)
     8b8:	00008067          	ret

000008bc <sglib_dllist_add_before>:
     8bc:	00052783          	lw	a5,0(a0)
     8c0:	02078463          	beqz	a5,8e8 <sglib_dllist_add_before+0x2c>
     8c4:	0087a703          	lw	a4,8(a5)
     8c8:	00f5a223          	sw	a5,4(a1)
     8cc:	00e5a423          	sw	a4,8(a1)
     8d0:	00052783          	lw	a5,0(a0)
     8d4:	00b7a423          	sw	a1,8(a5)
     8d8:	0085a783          	lw	a5,8(a1)
     8dc:	00078463          	beqz	a5,8e4 <sglib_dllist_add_before+0x28>
     8e0:	00b7a223          	sw	a1,4(a5)
     8e4:	00008067          	ret
     8e8:	00b52023          	sw	a1,0(a0)
     8ec:	0005a423          	sw	zero,8(a1)
     8f0:	00052783          	lw	a5,0(a0)
     8f4:	0007a223          	sw	zero,4(a5)
     8f8:	00008067          	ret

000008fc <sglib_dllist_add_if_not_member>:
     8fc:	00052803          	lw	a6,0(a0)
     900:	02080a63          	beqz	a6,934 <sglib_dllist_add_if_not_member+0x38>
     904:	0005a683          	lw	a3,0(a1)
     908:	00080793          	mv	a5,a6
     90c:	00c0006f          	j	918 <sglib_dllist_add_if_not_member+0x1c>
     910:	0087a783          	lw	a5,8(a5)
     914:	00078c63          	beqz	a5,92c <sglib_dllist_add_if_not_member+0x30>
     918:	0007a703          	lw	a4,0(a5)
     91c:	fed71ae3          	bne	a4,a3,910 <sglib_dllist_add_if_not_member+0x14>
     920:	00f62023          	sw	a5,0(a2)
     924:	0017b513          	seqz	a0,a5
     928:	00008067          	ret
     92c:	00482783          	lw	a5,4(a6)
     930:	04079263          	bnez	a5,974 <sglib_dllist_add_if_not_member+0x78>
     934:	00062023          	sw	zero,0(a2)
     938:	00052783          	lw	a5,0(a0)
     93c:	04078263          	beqz	a5,980 <sglib_dllist_add_if_not_member+0x84>
     940:	0087a703          	lw	a4,8(a5)
     944:	00f5a223          	sw	a5,4(a1)
     948:	00e5a423          	sw	a4,8(a1)
     94c:	00052783          	lw	a5,0(a0)
     950:	00b7a423          	sw	a1,8(a5)
     954:	0085a783          	lw	a5,8(a1)
     958:	00078463          	beqz	a5,960 <sglib_dllist_add_if_not_member+0x64>
     95c:	00b7a223          	sw	a1,4(a5)
     960:	00062783          	lw	a5,0(a2)
     964:	0017b513          	seqz	a0,a5
     968:	00008067          	ret
     96c:	0047a783          	lw	a5,4(a5)
     970:	fc0782e3          	beqz	a5,934 <sglib_dllist_add_if_not_member+0x38>
     974:	0007a703          	lw	a4,0(a5)
     978:	fee69ae3          	bne	a3,a4,96c <sglib_dllist_add_if_not_member+0x70>
     97c:	fa5ff06f          	j	920 <sglib_dllist_add_if_not_member+0x24>
     980:	00b52023          	sw	a1,0(a0)
     984:	0005a423          	sw	zero,8(a1)
     988:	00052783          	lw	a5,0(a0)
     98c:	0007a223          	sw	zero,4(a5)
     990:	00062783          	lw	a5,0(a2)
     994:	f91ff06f          	j	924 <sglib_dllist_add_if_not_member+0x28>

00000998 <sglib_dllist_add_after_if_not_member>:
     998:	00052803          	lw	a6,0(a0)
     99c:	02080a63          	beqz	a6,9d0 <sglib_dllist_add_after_if_not_member+0x38>
     9a0:	0005a683          	lw	a3,0(a1)
     9a4:	00080793          	mv	a5,a6
     9a8:	00c0006f          	j	9b4 <sglib_dllist_add_after_if_not_member+0x1c>
     9ac:	0087a783          	lw	a5,8(a5)
     9b0:	00078c63          	beqz	a5,9c8 <sglib_dllist_add_after_if_not_member+0x30>
     9b4:	0007a703          	lw	a4,0(a5)
     9b8:	fed71ae3          	bne	a4,a3,9ac <sglib_dllist_add_after_if_not_member+0x14>
     9bc:	00f62023          	sw	a5,0(a2)
     9c0:	0017b513          	seqz	a0,a5
     9c4:	00008067          	ret
     9c8:	00482783          	lw	a5,4(a6)
     9cc:	04079263          	bnez	a5,a10 <sglib_dllist_add_after_if_not_member+0x78>
     9d0:	00062023          	sw	zero,0(a2)
     9d4:	00052783          	lw	a5,0(a0)
     9d8:	04078263          	beqz	a5,a1c <sglib_dllist_add_after_if_not_member+0x84>
     9dc:	0047a783          	lw	a5,4(a5)
     9e0:	00f5a223          	sw	a5,4(a1)
     9e4:	00052783          	lw	a5,0(a0)
     9e8:	00f5a423          	sw	a5,8(a1)
     9ec:	00b7a223          	sw	a1,4(a5)
     9f0:	0045a783          	lw	a5,4(a1)
     9f4:	00078463          	beqz	a5,9fc <sglib_dllist_add_after_if_not_member+0x64>
     9f8:	00b7a423          	sw	a1,8(a5)
     9fc:	00062783          	lw	a5,0(a2)
     a00:	0017b513          	seqz	a0,a5
     a04:	00008067          	ret
     a08:	0047a783          	lw	a5,4(a5)
     a0c:	fc0782e3          	beqz	a5,9d0 <sglib_dllist_add_after_if_not_member+0x38>
     a10:	0007a703          	lw	a4,0(a5)
     a14:	fee69ae3          	bne	a3,a4,a08 <sglib_dllist_add_after_if_not_member+0x70>
     a18:	fa5ff06f          	j	9bc <sglib_dllist_add_after_if_not_member+0x24>
     a1c:	00b52023          	sw	a1,0(a0)
     a20:	0005a423          	sw	zero,8(a1)
     a24:	00052783          	lw	a5,0(a0)
     a28:	0007a223          	sw	zero,4(a5)
     a2c:	00062783          	lw	a5,0(a2)
     a30:	f91ff06f          	j	9c0 <sglib_dllist_add_after_if_not_member+0x28>

00000a34 <sglib_dllist_add_before_if_not_member>:
     a34:	ec9ff06f          	j	8fc <sglib_dllist_add_if_not_member>

00000a38 <sglib_dllist_concat>:
     a38:	00052783          	lw	a5,0(a0)
     a3c:	02078863          	beqz	a5,a6c <sglib_dllist_concat+0x34>
     a40:	02058463          	beqz	a1,a68 <sglib_dllist_concat+0x30>
     a44:	00078713          	mv	a4,a5
     a48:	0047a783          	lw	a5,4(a5)
     a4c:	fe079ce3          	bnez	a5,a44 <sglib_dllist_concat+0xc>
     a50:	0005a223          	sw	zero,4(a1)
     a54:	00e5a423          	sw	a4,8(a1)
     a58:	00b72223          	sw	a1,4(a4)
     a5c:	0045a783          	lw	a5,4(a1)
     a60:	00078463          	beqz	a5,a68 <sglib_dllist_concat+0x30>
     a64:	00b7a423          	sw	a1,8(a5)
     a68:	00008067          	ret
     a6c:	00b52023          	sw	a1,0(a0)
     a70:	00008067          	ret

00000a74 <sglib_dllist_delete>:
     a74:	00052683          	lw	a3,0(a0)
     a78:	0085a783          	lw	a5,8(a1)
     a7c:	0045a703          	lw	a4,4(a1)
     a80:	02b68063          	beq	a3,a1,aa0 <sglib_dllist_delete+0x2c>
     a84:	00070663          	beqz	a4,a90 <sglib_dllist_delete+0x1c>
     a88:	00f72423          	sw	a5,8(a4)
     a8c:	0085a783          	lw	a5,8(a1)
     a90:	00078463          	beqz	a5,a98 <sglib_dllist_delete+0x24>
     a94:	00e7a223          	sw	a4,4(a5)
     a98:	00d52023          	sw	a3,0(a0)
     a9c:	00008067          	ret
     aa0:	00078c63          	beqz	a5,ab8 <sglib_dllist_delete+0x44>
     aa4:	00078693          	mv	a3,a5
     aa8:	fe0706e3          	beqz	a4,a94 <sglib_dllist_delete+0x20>
     aac:	00f72423          	sw	a5,8(a4)
     ab0:	0085a783          	lw	a5,8(a1)
     ab4:	fddff06f          	j	a90 <sglib_dllist_delete+0x1c>
     ab8:	00070693          	mv	a3,a4
     abc:	fc0716e3          	bnez	a4,a88 <sglib_dllist_delete+0x14>
     ac0:	fd9ff06f          	j	a98 <sglib_dllist_delete+0x24>

00000ac4 <sglib_dllist_delete_if_member>:
     ac4:	00052803          	lw	a6,0(a0)
     ac8:	06080c63          	beqz	a6,b40 <sglib_dllist_delete_if_member+0x7c>
     acc:	0005a683          	lw	a3,0(a1)
     ad0:	00080793          	mv	a5,a6
     ad4:	00c0006f          	j	ae0 <sglib_dllist_delete_if_member+0x1c>
     ad8:	0087a783          	lw	a5,8(a5)
     adc:	04078e63          	beqz	a5,b38 <sglib_dllist_delete_if_member+0x74>
     ae0:	0007a703          	lw	a4,0(a5)
     ae4:	fed71ae3          	bne	a4,a3,ad8 <sglib_dllist_delete_if_member+0x14>
     ae8:	00f62023          	sw	a5,0(a2)
     aec:	00052583          	lw	a1,0(a0)
     af0:	02f58863          	beq	a1,a5,b20 <sglib_dllist_delete_if_member+0x5c>
     af4:	0047a683          	lw	a3,4(a5)
     af8:	00068663          	beqz	a3,b04 <sglib_dllist_delete_if_member+0x40>
     afc:	0087a703          	lw	a4,8(a5)
     b00:	00e6a423          	sw	a4,8(a3)
     b04:	0087a703          	lw	a4,8(a5)
     b08:	00070463          	beqz	a4,b10 <sglib_dllist_delete_if_member+0x4c>
     b0c:	00d72223          	sw	a3,4(a4)
     b10:	00b52023          	sw	a1,0(a0)
     b14:	00062503          	lw	a0,0(a2)
     b18:	00a03533          	snez	a0,a0
     b1c:	00008067          	ret
     b20:	0087a703          	lw	a4,8(a5)
     b24:	0047a683          	lw	a3,4(a5)
     b28:	04070263          	beqz	a4,b6c <sglib_dllist_delete_if_member+0xa8>
     b2c:	00070593          	mv	a1,a4
     b30:	fc0698e3          	bnez	a3,b00 <sglib_dllist_delete_if_member+0x3c>
     b34:	fd9ff06f          	j	b0c <sglib_dllist_delete_if_member+0x48>
     b38:	00482783          	lw	a5,4(a6)
     b3c:	00079c63          	bnez	a5,b54 <sglib_dllist_delete_if_member+0x90>
     b40:	00062023          	sw	zero,0(a2)
     b44:	00000513          	li	a0,0
     b48:	00008067          	ret
     b4c:	0047a783          	lw	a5,4(a5)
     b50:	fe0788e3          	beqz	a5,b40 <sglib_dllist_delete_if_member+0x7c>
     b54:	0007a703          	lw	a4,0(a5)
     b58:	fee69ae3          	bne	a3,a4,b4c <sglib_dllist_delete_if_member+0x88>
     b5c:	00f62023          	sw	a5,0(a2)
     b60:	00052583          	lw	a1,0(a0)
     b64:	f8f598e3          	bne	a1,a5,af4 <sglib_dllist_delete_if_member+0x30>
     b68:	fb9ff06f          	j	b20 <sglib_dllist_delete_if_member+0x5c>
     b6c:	00068593          	mv	a1,a3
     b70:	f80698e3          	bnez	a3,b00 <sglib_dllist_delete_if_member+0x3c>
     b74:	f9dff06f          	j	b10 <sglib_dllist_delete_if_member+0x4c>

00000b78 <sglib_dllist_is_member>:
     b78:	02050863          	beqz	a0,ba8 <sglib_dllist_is_member+0x30>
     b7c:	02b50a63          	beq	a0,a1,bb0 <sglib_dllist_is_member+0x38>
     b80:	00050793          	mv	a5,a0
     b84:	0080006f          	j	b8c <sglib_dllist_is_member+0x14>
     b88:	02f58463          	beq	a1,a5,bb0 <sglib_dllist_is_member+0x38>
     b8c:	0087a783          	lw	a5,8(a5)
     b90:	fe079ce3          	bnez	a5,b88 <sglib_dllist_is_member+0x10>
     b94:	00452783          	lw	a5,4(a0)
     b98:	00078863          	beqz	a5,ba8 <sglib_dllist_is_member+0x30>
     b9c:	00f58a63          	beq	a1,a5,bb0 <sglib_dllist_is_member+0x38>
     ba0:	0047a783          	lw	a5,4(a5)
     ba4:	fe079ce3          	bnez	a5,b9c <sglib_dllist_is_member+0x24>
     ba8:	00000513          	li	a0,0
     bac:	00008067          	ret
     bb0:	00100513          	li	a0,1
     bb4:	00008067          	ret

00000bb8 <sglib_dllist_find_member>:
     bb8:	00050693          	mv	a3,a0
     bbc:	04050063          	beqz	a0,bfc <sglib_dllist_find_member+0x44>
     bc0:	0005a703          	lw	a4,0(a1)
     bc4:	00c0006f          	j	bd0 <sglib_dllist_find_member+0x18>
     bc8:	00852503          	lw	a0,8(a0)
     bcc:	00050863          	beqz	a0,bdc <sglib_dllist_find_member+0x24>
     bd0:	00052783          	lw	a5,0(a0)
     bd4:	fee79ae3          	bne	a5,a4,bc8 <sglib_dllist_find_member+0x10>
     bd8:	00008067          	ret
     bdc:	0046a503          	lw	a0,4(a3)
     be0:	00051863          	bnez	a0,bf0 <sglib_dllist_find_member+0x38>
     be4:	0200006f          	j	c04 <sglib_dllist_find_member+0x4c>
     be8:	00452503          	lw	a0,4(a0)
     bec:	00050a63          	beqz	a0,c00 <sglib_dllist_find_member+0x48>
     bf0:	00052783          	lw	a5,0(a0)
     bf4:	fef71ae3          	bne	a4,a5,be8 <sglib_dllist_find_member+0x30>
     bf8:	00008067          	ret
     bfc:	00000513          	li	a0,0
     c00:	00008067          	ret
     c04:	00008067          	ret

00000c08 <sglib_dllist_get_first>:
     c08:	00050793          	mv	a5,a0
     c0c:	00050a63          	beqz	a0,c20 <sglib_dllist_get_first+0x18>
     c10:	00078513          	mv	a0,a5
     c14:	0087a783          	lw	a5,8(a5)
     c18:	fe079ce3          	bnez	a5,c10 <sglib_dllist_get_first+0x8>
     c1c:	00008067          	ret
     c20:	00000513          	li	a0,0
     c24:	00008067          	ret

00000c28 <sglib_dllist_get_last>:
     c28:	00050793          	mv	a5,a0
     c2c:	00050a63          	beqz	a0,c40 <sglib_dllist_get_last+0x18>
     c30:	00078513          	mv	a0,a5
     c34:	0047a783          	lw	a5,4(a5)
     c38:	fe079ce3          	bnez	a5,c30 <sglib_dllist_get_last+0x8>
     c3c:	00008067          	ret
     c40:	00000513          	li	a0,0
     c44:	00008067          	ret

00000c48 <sglib_dllist_sort>:
     c48:	00052e03          	lw	t3,0(a0)
     c4c:	160e0263          	beqz	t3,db0 <sglib_dllist_sort+0x168>
     c50:	ff010113          	addi	sp,sp,-16
     c54:	000e0613          	mv	a2,t3
     c58:	008e2e03          	lw	t3,8(t3)
     c5c:	fe0e1ce3          	bnez	t3,c54 <sglib_dllist_sort+0xc>
     c60:	00012623          	sw	zero,12(sp)
     c64:	00100813          	li	a6,1
     c68:	00000593          	li	a1,0
     c6c:	00c10693          	addi	a3,sp,12
     c70:	00100313          	li	t1,1
     c74:	00060713          	mv	a4,a2
     c78:	00100793          	li	a5,1
     c7c:	00681663          	bne	a6,t1,c88 <sglib_dllist_sort+0x40>
     c80:	0b80006f          	j	d38 <sglib_dllist_sort+0xf0>
     c84:	0e070463          	beqz	a4,d6c <sglib_dllist_sort+0x124>
     c88:	00178793          	addi	a5,a5,1
     c8c:	00472703          	lw	a4,4(a4)
     c90:	ff079ae3          	bne	a5,a6,c84 <sglib_dllist_sort+0x3c>
     c94:	0c070c63          	beqz	a4,d6c <sglib_dllist_sort+0x124>
     c98:	00472783          	lw	a5,4(a4)
     c9c:	00072223          	sw	zero,4(a4)
     ca0:	00100593          	li	a1,1
     ca4:	00078713          	mv	a4,a5
     ca8:	00079663          	bnez	a5,cb4 <sglib_dllist_sort+0x6c>
     cac:	0f40006f          	j	da0 <sglib_dllist_sort+0x158>
     cb0:	02070063          	beqz	a4,cd0 <sglib_dllist_sort+0x88>
     cb4:	00158593          	addi	a1,a1,1
     cb8:	00472703          	lw	a4,4(a4)
     cbc:	ff059ae3          	bne	a1,a6,cb0 <sglib_dllist_sort+0x68>
     cc0:	00070863          	beqz	a4,cd0 <sglib_dllist_sort+0x88>
     cc4:	00472583          	lw	a1,4(a4)
     cc8:	00072223          	sw	zero,4(a4)
     ccc:	00058713          	mv	a4,a1
     cd0:	02078063          	beqz	a5,cf0 <sglib_dllist_sort+0xa8>
     cd4:	00062883          	lw	a7,0(a2)
     cd8:	0007a583          	lw	a1,0(a5)
     cdc:	06b8c663          	blt	a7,a1,d48 <sglib_dllist_sort+0x100>
     ce0:	00f6a023          	sw	a5,0(a3)
     ce4:	00478693          	addi	a3,a5,4
     ce8:	0047a783          	lw	a5,4(a5)
     cec:	fe0794e3          	bnez	a5,cd4 <sglib_dllist_sort+0x8c>
     cf0:	00c6a023          	sw	a2,0(a3)
     cf4:	00060793          	mv	a5,a2
     cf8:	00070613          	mv	a2,a4
     cfc:	00078693          	mv	a3,a5
     d00:	0047a783          	lw	a5,4(a5)
     d04:	fe079ce3          	bnez	a5,cfc <sglib_dllist_sort+0xb4>
     d08:	00468693          	addi	a3,a3,4
     d0c:	00100593          	li	a1,1
     d10:	f60612e3          	bnez	a2,c74 <sglib_dllist_sort+0x2c>
     d14:	00181813          	slli	a6,a6,0x1
     d18:	00c12603          	lw	a2,12(sp)
     d1c:	00012623          	sw	zero,12(sp)
     d20:	06060a63          	beqz	a2,d94 <sglib_dllist_sort+0x14c>
     d24:	00000593          	li	a1,0
     d28:	00c10693          	addi	a3,sp,12
     d2c:	00060713          	mv	a4,a2
     d30:	00100793          	li	a5,1
     d34:	f4681ae3          	bne	a6,t1,c88 <sglib_dllist_sort+0x40>
     d38:	00462703          	lw	a4,4(a2)
     d3c:	00062223          	sw	zero,4(a2)
     d40:	00070793          	mv	a5,a4
     d44:	f7dff06f          	j	cc0 <sglib_dllist_sort+0x78>
     d48:	00c6a023          	sw	a2,0(a3)
     d4c:	00462583          	lw	a1,4(a2)
     d50:	00460693          	addi	a3,a2,4
     d54:	00058663          	beqz	a1,d60 <sglib_dllist_sort+0x118>
     d58:	00058613          	mv	a2,a1
     d5c:	f75ff06f          	j	cd0 <sglib_dllist_sort+0x88>
     d60:	00f62223          	sw	a5,4(a2)
     d64:	00070613          	mv	a2,a4
     d68:	f95ff06f          	j	cfc <sglib_dllist_sort+0xb4>
     d6c:	00c6a023          	sw	a2,0(a3)
     d70:	00181813          	slli	a6,a6,0x1
     d74:	fa0592e3          	bnez	a1,d18 <sglib_dllist_sort+0xd0>
     d78:	00c12603          	lw	a2,12(sp)
     d7c:	00060c63          	beqz	a2,d94 <sglib_dllist_sort+0x14c>
     d80:	00060793          	mv	a5,a2
     d84:	01c7a423          	sw	t3,8(a5)
     d88:	00078e13          	mv	t3,a5
     d8c:	0047a783          	lw	a5,4(a5)
     d90:	fe079ae3          	bnez	a5,d84 <sglib_dllist_sort+0x13c>
     d94:	00c52023          	sw	a2,0(a0)
     d98:	01010113          	addi	sp,sp,16
     d9c:	00008067          	ret
     da0:	00c6a023          	sw	a2,0(a3)
     da4:	00060793          	mv	a5,a2
     da8:	00000613          	li	a2,0
     dac:	f51ff06f          	j	cfc <sglib_dllist_sort+0xb4>
     db0:	00008067          	ret

00000db4 <sglib_dllist_len>:
     db4:	00050713          	mv	a4,a0
     db8:	02050c63          	beqz	a0,df0 <sglib_dllist_len+0x3c>
     dbc:	00050793          	mv	a5,a0
     dc0:	00000513          	li	a0,0
     dc4:	0087a783          	lw	a5,8(a5)
     dc8:	00150513          	addi	a0,a0,1
     dcc:	fe079ce3          	bnez	a5,dc4 <sglib_dllist_len+0x10>
     dd0:	00472783          	lw	a5,4(a4)
     dd4:	02078063          	beqz	a5,df4 <sglib_dllist_len+0x40>
     dd8:	00000713          	li	a4,0
     ddc:	0047a783          	lw	a5,4(a5)
     de0:	00170713          	addi	a4,a4,1
     de4:	fe079ce3          	bnez	a5,ddc <sglib_dllist_len+0x28>
     de8:	00e50533          	add	a0,a0,a4
     dec:	00008067          	ret
     df0:	00000513          	li	a0,0
     df4:	00008067          	ret

00000df8 <sglib_dllist_reverse>:
     df8:	00052683          	lw	a3,0(a0)
     dfc:	04068263          	beqz	a3,e40 <sglib_dllist_reverse+0x48>
     e00:	0046a783          	lw	a5,4(a3)
     e04:	00078613          	mv	a2,a5
     e08:	00c0006f          	j	e14 <sglib_dllist_reverse+0x1c>
     e0c:	00472603          	lw	a2,4(a4)
     e10:	00070693          	mv	a3,a4
     e14:	0086a703          	lw	a4,8(a3)
     e18:	00c6a423          	sw	a2,8(a3)
     e1c:	00e6a223          	sw	a4,4(a3)
     e20:	fe0716e3          	bnez	a4,e0c <sglib_dllist_reverse+0x14>
     e24:	00078e63          	beqz	a5,e40 <sglib_dllist_reverse+0x48>
     e28:	0087a683          	lw	a3,8(a5)
     e2c:	00078713          	mv	a4,a5
     e30:	0047a783          	lw	a5,4(a5)
     e34:	00d72223          	sw	a3,4(a4)
     e38:	00f72423          	sw	a5,8(a4)
     e3c:	fe0796e3          	bnez	a5,e28 <sglib_dllist_reverse+0x30>
     e40:	00008067          	ret

00000e44 <sglib_dllist_it_current>:
     e44:	00052503          	lw	a0,0(a0)
     e48:	00008067          	ret

00000e4c <sglib_dllist_it_next>:
     e4c:	fe010113          	addi	sp,sp,-32
     e50:	00912a23          	sw	s1,20(sp)
     e54:	00c52483          	lw	s1,12(a0)
     e58:	00812c23          	sw	s0,24(sp)
     e5c:	01212823          	sw	s2,16(sp)
     e60:	00112e23          	sw	ra,28(sp)
     e64:	01312623          	sw	s3,12(sp)
     e68:	00452403          	lw	s0,4(a0)
     e6c:	00052223          	sw	zero,4(a0)
     e70:	00050913          	mv	s2,a0
     e74:	04048a63          	beqz	s1,ec8 <sglib_dllist_it_next+0x7c>
     e78:	01052983          	lw	s3,16(a0)
     e7c:	00041863          	bnez	s0,e8c <sglib_dllist_it_next+0x40>
     e80:	09c0006f          	j	f1c <sglib_dllist_it_next+0xd0>
     e84:	00842403          	lw	s0,8(s0)
     e88:	04040e63          	beqz	s0,ee4 <sglib_dllist_it_next+0x98>
     e8c:	00040593          	mv	a1,s0
     e90:	00098513          	mv	a0,s3
     e94:	000480e7          	jalr	s1
     e98:	fe0516e3          	bnez	a0,e84 <sglib_dllist_it_next+0x38>
     e9c:	00842783          	lw	a5,8(s0)
     ea0:	00f92223          	sw	a5,4(s2)
     ea4:	00892023          	sw	s0,0(s2)
     ea8:	01c12083          	lw	ra,28(sp)
     eac:	00040513          	mv	a0,s0
     eb0:	01812403          	lw	s0,24(sp)
     eb4:	01412483          	lw	s1,20(sp)
     eb8:	01012903          	lw	s2,16(sp)
     ebc:	00c12983          	lw	s3,12(sp)
     ec0:	02010113          	addi	sp,sp,32
     ec4:	00008067          	ret
     ec8:	fc041ae3          	bnez	s0,e9c <sglib_dllist_it_next+0x50>
     ecc:	00852403          	lw	s0,8(a0)
     ed0:	00052423          	sw	zero,8(a0)
     ed4:	04040063          	beqz	s0,f14 <sglib_dllist_it_next+0xc8>
     ed8:	00442783          	lw	a5,4(s0)
     edc:	00f92423          	sw	a5,8(s2)
     ee0:	fc5ff06f          	j	ea4 <sglib_dllist_it_next+0x58>
     ee4:	00c92483          	lw	s1,12(s2)
     ee8:	00892403          	lw	s0,8(s2)
     eec:	00092423          	sw	zero,8(s2)
     ef0:	fe0482e3          	beqz	s1,ed4 <sglib_dllist_it_next+0x88>
     ef4:	01092983          	lw	s3,16(s2)
     ef8:	00040e63          	beqz	s0,f14 <sglib_dllist_it_next+0xc8>
     efc:	00040513          	mv	a0,s0
     f00:	00098593          	mv	a1,s3
     f04:	000480e7          	jalr	s1
     f08:	fc0508e3          	beqz	a0,ed8 <sglib_dllist_it_next+0x8c>
     f0c:	00442403          	lw	s0,4(s0)
     f10:	fe0416e3          	bnez	s0,efc <sglib_dllist_it_next+0xb0>
     f14:	00000413          	li	s0,0
     f18:	f8dff06f          	j	ea4 <sglib_dllist_it_next+0x58>
     f1c:	00852403          	lw	s0,8(a0)
     f20:	00052423          	sw	zero,8(a0)
     f24:	fd5ff06f          	j	ef8 <sglib_dllist_it_next+0xac>

00000f28 <sglib_dllist_it_init_on_equal>:
     f28:	ff010113          	addi	sp,sp,-16
     f2c:	00112623          	sw	ra,12(sp)
     f30:	00c52623          	sw	a2,12(a0)
     f34:	00d52823          	sw	a3,16(a0)
     f38:	00b52223          	sw	a1,4(a0)
     f3c:	00b52423          	sw	a1,8(a0)
     f40:	00058663          	beqz	a1,f4c <sglib_dllist_it_init_on_equal+0x24>
     f44:	0045a783          	lw	a5,4(a1)
     f48:	00f52423          	sw	a5,8(a0)
     f4c:	f01ff0ef          	jal	ra,e4c <sglib_dllist_it_next>
     f50:	00c12083          	lw	ra,12(sp)
     f54:	01010113          	addi	sp,sp,16
     f58:	00008067          	ret

00000f5c <sglib_dllist_it_init>:
     f5c:	ff010113          	addi	sp,sp,-16
     f60:	00112623          	sw	ra,12(sp)
     f64:	00052623          	sw	zero,12(a0)
     f68:	00052823          	sw	zero,16(a0)
     f6c:	00b52223          	sw	a1,4(a0)
     f70:	00b52423          	sw	a1,8(a0)
     f74:	00058663          	beqz	a1,f80 <sglib_dllist_it_init+0x24>
     f78:	0045a783          	lw	a5,4(a1)
     f7c:	00f52423          	sw	a5,8(a0)
     f80:	ecdff0ef          	jal	ra,e4c <sglib_dllist_it_next>
     f84:	00c12083          	lw	ra,12(sp)
     f88:	01010113          	addi	sp,sp,16
     f8c:	00008067          	ret

00000f90 <ilist_hash_function>:
     f90:	00052503          	lw	a0,0(a0)
     f94:	00008067          	ret

00000f98 <sglib_ilist_is_member>:
     f98:	00050863          	beqz	a0,fa8 <sglib_ilist_is_member+0x10>
     f9c:	00b50a63          	beq	a0,a1,fb0 <sglib_ilist_is_member+0x18>
     fa0:	00452503          	lw	a0,4(a0)
     fa4:	fe051ce3          	bnez	a0,f9c <sglib_ilist_is_member+0x4>
     fa8:	00000513          	li	a0,0
     fac:	00008067          	ret
     fb0:	00100513          	li	a0,1
     fb4:	00008067          	ret

00000fb8 <sglib_ilist_find_member>:
     fb8:	02050063          	beqz	a0,fd8 <sglib_ilist_find_member+0x20>
     fbc:	0005a703          	lw	a4,0(a1)
     fc0:	00c0006f          	j	fcc <sglib_ilist_find_member+0x14>
     fc4:	00452503          	lw	a0,4(a0)
     fc8:	00050a63          	beqz	a0,fdc <sglib_ilist_find_member+0x24>
     fcc:	00052783          	lw	a5,0(a0)
     fd0:	fee79ae3          	bne	a5,a4,fc4 <sglib_ilist_find_member+0xc>
     fd4:	00008067          	ret
     fd8:	00000513          	li	a0,0
     fdc:	00008067          	ret

00000fe0 <sglib_ilist_add_if_not_member>:
     fe0:	00052783          	lw	a5,0(a0)
     fe4:	02078463          	beqz	a5,100c <sglib_ilist_add_if_not_member+0x2c>
     fe8:	0005a683          	lw	a3,0(a1)
     fec:	00c0006f          	j	ff8 <sglib_ilist_add_if_not_member+0x18>
     ff0:	0047a783          	lw	a5,4(a5)
     ff4:	00078c63          	beqz	a5,100c <sglib_ilist_add_if_not_member+0x2c>
     ff8:	0007a703          	lw	a4,0(a5)
     ffc:	fed71ae3          	bne	a4,a3,ff0 <sglib_ilist_add_if_not_member+0x10>
    1000:	00f62023          	sw	a5,0(a2)
    1004:	0017b513          	seqz	a0,a5
    1008:	00008067          	ret
    100c:	00062023          	sw	zero,0(a2)
    1010:	00052783          	lw	a5,0(a0)
    1014:	00f5a223          	sw	a5,4(a1)
    1018:	00b52023          	sw	a1,0(a0)
    101c:	00062783          	lw	a5,0(a2)
    1020:	0017b513          	seqz	a0,a5
    1024:	00008067          	ret

00001028 <sglib_ilist_add>:
    1028:	00052783          	lw	a5,0(a0)
    102c:	00f5a223          	sw	a5,4(a1)
    1030:	00b52023          	sw	a1,0(a0)
    1034:	00008067          	ret

00001038 <sglib_ilist_concat>:
    1038:	00052783          	lw	a5,0(a0)
    103c:	00078c63          	beqz	a5,1054 <sglib_ilist_concat+0x1c>
    1040:	00078713          	mv	a4,a5
    1044:	0047a783          	lw	a5,4(a5)
    1048:	fe079ce3          	bnez	a5,1040 <sglib_ilist_concat+0x8>
    104c:	00b72223          	sw	a1,4(a4)
    1050:	00008067          	ret
    1054:	00b52023          	sw	a1,0(a0)
    1058:	00008067          	ret

0000105c <sglib_ilist_delete>:
    105c:	00052783          	lw	a5,0(a0)
    1060:	00079863          	bnez	a5,1070 <sglib_ilist_delete+0x14>
    1064:	0200006f          	j	1084 <sglib_ilist_delete+0x28>
    1068:	00470513          	addi	a0,a4,4
    106c:	00078c63          	beqz	a5,1084 <sglib_ilist_delete+0x28>
    1070:	00078713          	mv	a4,a5
    1074:	0047a783          	lw	a5,4(a5)
    1078:	fee598e3          	bne	a1,a4,1068 <sglib_ilist_delete+0xc>
    107c:	00f52023          	sw	a5,0(a0)
    1080:	00008067          	ret
    1084:	00402783          	lw	a5,4(zero) # 4 <_start+0x4>
    1088:	00100073          	ebreak

0000108c <sglib_ilist_delete_if_member>:
    108c:	00052783          	lw	a5,0(a0)
    1090:	02078c63          	beqz	a5,10c8 <sglib_ilist_delete_if_member+0x3c>
    1094:	0005a683          	lw	a3,0(a1)
    1098:	0100006f          	j	10a8 <sglib_ilist_delete_if_member+0x1c>
    109c:	00478513          	addi	a0,a5,4
    10a0:	0047a783          	lw	a5,4(a5)
    10a4:	02078263          	beqz	a5,10c8 <sglib_ilist_delete_if_member+0x3c>
    10a8:	0007a703          	lw	a4,0(a5)
    10ac:	fed718e3          	bne	a4,a3,109c <sglib_ilist_delete_if_member+0x10>
    10b0:	00f62023          	sw	a5,0(a2)
    10b4:	0047a783          	lw	a5,4(a5)
    10b8:	00f52023          	sw	a5,0(a0)
    10bc:	00062503          	lw	a0,0(a2)
    10c0:	00a03533          	snez	a0,a0
    10c4:	00008067          	ret
    10c8:	00062023          	sw	zero,0(a2)
    10cc:	00000513          	li	a0,0
    10d0:	00008067          	ret

000010d4 <sglib_ilist_sort>:
    10d4:	00052603          	lw	a2,0(a0)
    10d8:	00050313          	mv	t1,a0
    10dc:	ff010113          	addi	sp,sp,-16
    10e0:	00100513          	li	a0,1
    10e4:	00100893          	li	a7,1
    10e8:	00012623          	sw	zero,12(sp)
    10ec:	0e060663          	beqz	a2,11d8 <sglib_ilist_sort+0x104>
    10f0:	00000593          	li	a1,0
    10f4:	00c10693          	addi	a3,sp,12
    10f8:	00060713          	mv	a4,a2
    10fc:	00100793          	li	a5,1
    1100:	01151663          	bne	a0,a7,110c <sglib_ilist_sort+0x38>
    1104:	0e00006f          	j	11e4 <sglib_ilist_sort+0x110>
    1108:	0c070063          	beqz	a4,11c8 <sglib_ilist_sort+0xf4>
    110c:	00178793          	addi	a5,a5,1
    1110:	00472703          	lw	a4,4(a4)
    1114:	fea79ae3          	bne	a5,a0,1108 <sglib_ilist_sort+0x34>
    1118:	0a070863          	beqz	a4,11c8 <sglib_ilist_sort+0xf4>
    111c:	00472783          	lw	a5,4(a4)
    1120:	00072223          	sw	zero,4(a4)
    1124:	00100593          	li	a1,1
    1128:	00078713          	mv	a4,a5
    112c:	00079663          	bnez	a5,1138 <sglib_ilist_sort+0x64>
    1130:	0c40006f          	j	11f4 <sglib_ilist_sort+0x120>
    1134:	02070063          	beqz	a4,1154 <sglib_ilist_sort+0x80>
    1138:	00158593          	addi	a1,a1,1
    113c:	00472703          	lw	a4,4(a4)
    1140:	fea59ae3          	bne	a1,a0,1134 <sglib_ilist_sort+0x60>
    1144:	00070863          	beqz	a4,1154 <sglib_ilist_sort+0x80>
    1148:	00472583          	lw	a1,4(a4)
    114c:	00072223          	sw	zero,4(a4)
    1150:	00058713          	mv	a4,a1
    1154:	02078063          	beqz	a5,1174 <sglib_ilist_sort+0xa0>
    1158:	00062803          	lw	a6,0(a2)
    115c:	0007a583          	lw	a1,0(a5)
    1160:	04b84263          	blt	a6,a1,11a4 <sglib_ilist_sort+0xd0>
    1164:	00f6a023          	sw	a5,0(a3)
    1168:	00478693          	addi	a3,a5,4
    116c:	0047a783          	lw	a5,4(a5)
    1170:	fe0794e3          	bnez	a5,1158 <sglib_ilist_sort+0x84>
    1174:	00c6a023          	sw	a2,0(a3)
    1178:	00060793          	mv	a5,a2
    117c:	00070613          	mv	a2,a4
    1180:	00078693          	mv	a3,a5
    1184:	0047a783          	lw	a5,4(a5)
    1188:	fe079ce3          	bnez	a5,1180 <sglib_ilist_sort+0xac>
    118c:	00468693          	addi	a3,a3,4
    1190:	00100593          	li	a1,1
    1194:	f60612e3          	bnez	a2,10f8 <sglib_ilist_sort+0x24>
    1198:	00151513          	slli	a0,a0,0x1
    119c:	00c12603          	lw	a2,12(sp)
    11a0:	f49ff06f          	j	10e8 <sglib_ilist_sort+0x14>
    11a4:	00c6a023          	sw	a2,0(a3)
    11a8:	00462583          	lw	a1,4(a2)
    11ac:	00460693          	addi	a3,a2,4
    11b0:	00058663          	beqz	a1,11bc <sglib_ilist_sort+0xe8>
    11b4:	00058613          	mv	a2,a1
    11b8:	f9dff06f          	j	1154 <sglib_ilist_sort+0x80>
    11bc:	00f62223          	sw	a5,4(a2)
    11c0:	00070613          	mv	a2,a4
    11c4:	fbdff06f          	j	1180 <sglib_ilist_sort+0xac>
    11c8:	00c6a023          	sw	a2,0(a3)
    11cc:	00151513          	slli	a0,a0,0x1
    11d0:	fc0596e3          	bnez	a1,119c <sglib_ilist_sort+0xc8>
    11d4:	00c12603          	lw	a2,12(sp)
    11d8:	00c32023          	sw	a2,0(t1)
    11dc:	01010113          	addi	sp,sp,16
    11e0:	00008067          	ret
    11e4:	00462703          	lw	a4,4(a2)
    11e8:	00062223          	sw	zero,4(a2)
    11ec:	00070793          	mv	a5,a4
    11f0:	f55ff06f          	j	1144 <sglib_ilist_sort+0x70>
    11f4:	00c6a023          	sw	a2,0(a3)
    11f8:	00060793          	mv	a5,a2
    11fc:	00000613          	li	a2,0
    1200:	f81ff06f          	j	1180 <sglib_ilist_sort+0xac>

00001204 <sglib_ilist_len>:
    1204:	00050793          	mv	a5,a0
    1208:	00000513          	li	a0,0
    120c:	00078a63          	beqz	a5,1220 <sglib_ilist_len+0x1c>
    1210:	0047a783          	lw	a5,4(a5)
    1214:	00150513          	addi	a0,a0,1
    1218:	fe079ce3          	bnez	a5,1210 <sglib_ilist_len+0xc>
    121c:	00008067          	ret
    1220:	00008067          	ret

00001224 <sglib_ilist_reverse>:
    1224:	00052783          	lw	a5,0(a0)
    1228:	02078063          	beqz	a5,1248 <sglib_ilist_reverse+0x24>
    122c:	00000693          	li	a3,0
    1230:	0080006f          	j	1238 <sglib_ilist_reverse+0x14>
    1234:	00070793          	mv	a5,a4
    1238:	0047a703          	lw	a4,4(a5)
    123c:	00d7a223          	sw	a3,4(a5)
    1240:	00078693          	mv	a3,a5
    1244:	fe0718e3          	bnez	a4,1234 <sglib_ilist_reverse+0x10>
    1248:	00f52023          	sw	a5,0(a0)
    124c:	00008067          	ret

00001250 <sglib_ilist_it_init>:
    1250:	00050793          	mv	a5,a0
    1254:	0007a423          	sw	zero,8(a5)
    1258:	0007a623          	sw	zero,12(a5)
    125c:	0007a223          	sw	zero,4(a5)
    1260:	00b7a023          	sw	a1,0(a5)
    1264:	00058513          	mv	a0,a1
    1268:	00058663          	beqz	a1,1274 <sglib_ilist_it_init+0x24>
    126c:	0045a703          	lw	a4,4(a1)
    1270:	00e7a223          	sw	a4,4(a5)
    1274:	00008067          	ret

00001278 <sglib_ilist_it_current>:
    1278:	00052503          	lw	a0,0(a0)
    127c:	00008067          	ret

00001280 <sglib_ilist_it_next>:
    1280:	fe010113          	addi	sp,sp,-32
    1284:	01212823          	sw	s2,16(sp)
    1288:	00852903          	lw	s2,8(a0)
    128c:	00812c23          	sw	s0,24(sp)
    1290:	00912a23          	sw	s1,20(sp)
    1294:	00112e23          	sw	ra,28(sp)
    1298:	01312623          	sw	s3,12(sp)
    129c:	00452403          	lw	s0,4(a0)
    12a0:	00052223          	sw	zero,4(a0)
    12a4:	00050493          	mv	s1,a0
    12a8:	06090e63          	beqz	s2,1324 <sglib_ilist_it_next+0xa4>
    12ac:	00c52983          	lw	s3,12(a0)
    12b0:	00041863          	bnez	s0,12c0 <sglib_ilist_it_next+0x40>
    12b4:	0480006f          	j	12fc <sglib_ilist_it_next+0x7c>
    12b8:	00442403          	lw	s0,4(s0)
    12bc:	04040063          	beqz	s0,12fc <sglib_ilist_it_next+0x7c>
    12c0:	00040513          	mv	a0,s0
    12c4:	00098593          	mv	a1,s3
    12c8:	000900e7          	jalr	s2
    12cc:	fe0516e3          	bnez	a0,12b8 <sglib_ilist_it_next+0x38>
    12d0:	0084a023          	sw	s0,0(s1)
    12d4:	00442783          	lw	a5,4(s0)
    12d8:	00f4a223          	sw	a5,4(s1)
    12dc:	01c12083          	lw	ra,28(sp)
    12e0:	00040513          	mv	a0,s0
    12e4:	01812403          	lw	s0,24(sp)
    12e8:	01412483          	lw	s1,20(sp)
    12ec:	01012903          	lw	s2,16(sp)
    12f0:	00c12983          	lw	s3,12(sp)
    12f4:	02010113          	addi	sp,sp,32
    12f8:	00008067          	ret
    12fc:	00000413          	li	s0,0
    1300:	01c12083          	lw	ra,28(sp)
    1304:	00040513          	mv	a0,s0
    1308:	01812403          	lw	s0,24(sp)
    130c:	0004a023          	sw	zero,0(s1)
    1310:	01012903          	lw	s2,16(sp)
    1314:	01412483          	lw	s1,20(sp)
    1318:	00c12983          	lw	s3,12(sp)
    131c:	02010113          	addi	sp,sp,32
    1320:	00008067          	ret
    1324:	00852023          	sw	s0,0(a0)
    1328:	fa0416e3          	bnez	s0,12d4 <sglib_ilist_it_next+0x54>
    132c:	fb1ff06f          	j	12dc <sglib_ilist_it_next+0x5c>

00001330 <sglib_ilist_it_init_on_equal>:
    1330:	ff010113          	addi	sp,sp,-16
    1334:	00112623          	sw	ra,12(sp)
    1338:	00c52423          	sw	a2,8(a0)
    133c:	00d52623          	sw	a3,12(a0)
    1340:	00b52223          	sw	a1,4(a0)
    1344:	f3dff0ef          	jal	ra,1280 <sglib_ilist_it_next>
    1348:	00c12083          	lw	ra,12(sp)
    134c:	01010113          	addi	sp,sp,16
    1350:	00008067          	ret

00001354 <sglib_hashed_ilist_init>:
    1354:	ff010113          	addi	sp,sp,-16
    1358:	05000613          	li	a2,80
    135c:	00000593          	li	a1,0
    1360:	00112623          	sw	ra,12(sp)
    1364:	265010ef          	jal	ra,2dc8 <memset>
    1368:	00c12083          	lw	ra,12(sp)
    136c:	01010113          	addi	sp,sp,16
    1370:	00008067          	ret

00001374 <sglib_hashed_ilist_add>:
    1374:	ff010113          	addi	sp,sp,-16
    1378:	00812423          	sw	s0,8(sp)
    137c:	00050413          	mv	s0,a0
    1380:	0005a503          	lw	a0,0(a1)
    1384:	00912223          	sw	s1,4(sp)
    1388:	00058493          	mv	s1,a1
    138c:	01400593          	li	a1,20
    1390:	00112623          	sw	ra,12(sp)
    1394:	151010ef          	jal	ra,2ce4 <__umodsi3>
    1398:	00251513          	slli	a0,a0,0x2
    139c:	00a40533          	add	a0,s0,a0
    13a0:	00052783          	lw	a5,0(a0)
    13a4:	00c12083          	lw	ra,12(sp)
    13a8:	00812403          	lw	s0,8(sp)
    13ac:	00f4a223          	sw	a5,4(s1)
    13b0:	00952023          	sw	s1,0(a0)
    13b4:	00412483          	lw	s1,4(sp)
    13b8:	01010113          	addi	sp,sp,16
    13bc:	00008067          	ret

000013c0 <sglib_hashed_ilist_add_if_not_member>:
    13c0:	fe010113          	addi	sp,sp,-32
    13c4:	00812c23          	sw	s0,24(sp)
    13c8:	0005a403          	lw	s0,0(a1)
    13cc:	00912a23          	sw	s1,20(sp)
    13d0:	01212823          	sw	s2,16(sp)
    13d4:	00050493          	mv	s1,a0
    13d8:	00058913          	mv	s2,a1
    13dc:	00040513          	mv	a0,s0
    13e0:	01400593          	li	a1,20
    13e4:	01312623          	sw	s3,12(sp)
    13e8:	00112e23          	sw	ra,28(sp)
    13ec:	00060993          	mv	s3,a2
    13f0:	0f5010ef          	jal	ra,2ce4 <__umodsi3>
    13f4:	00251513          	slli	a0,a0,0x2
    13f8:	00a48533          	add	a0,s1,a0
    13fc:	00052783          	lw	a5,0(a0)
    1400:	00079863          	bnez	a5,1410 <sglib_hashed_ilist_add_if_not_member+0x50>
    1404:	0380006f          	j	143c <sglib_hashed_ilist_add_if_not_member+0x7c>
    1408:	0047a783          	lw	a5,4(a5)
    140c:	02078863          	beqz	a5,143c <sglib_hashed_ilist_add_if_not_member+0x7c>
    1410:	0007a703          	lw	a4,0(a5)
    1414:	fee41ae3          	bne	s0,a4,1408 <sglib_hashed_ilist_add_if_not_member+0x48>
    1418:	01c12083          	lw	ra,28(sp)
    141c:	01812403          	lw	s0,24(sp)
    1420:	00f9a023          	sw	a5,0(s3)
    1424:	01412483          	lw	s1,20(sp)
    1428:	01012903          	lw	s2,16(sp)
    142c:	00c12983          	lw	s3,12(sp)
    1430:	0017b513          	seqz	a0,a5
    1434:	02010113          	addi	sp,sp,32
    1438:	00008067          	ret
    143c:	0009a023          	sw	zero,0(s3)
    1440:	00052783          	lw	a5,0(a0)
    1444:	01c12083          	lw	ra,28(sp)
    1448:	01812403          	lw	s0,24(sp)
    144c:	00f92223          	sw	a5,4(s2)
    1450:	01252023          	sw	s2,0(a0)
    1454:	0009a783          	lw	a5,0(s3)
    1458:	01412483          	lw	s1,20(sp)
    145c:	01012903          	lw	s2,16(sp)
    1460:	00c12983          	lw	s3,12(sp)
    1464:	0017b513          	seqz	a0,a5
    1468:	02010113          	addi	sp,sp,32
    146c:	00008067          	ret

00001470 <sglib_hashed_ilist_delete>:
    1470:	ff010113          	addi	sp,sp,-16
    1474:	00812423          	sw	s0,8(sp)
    1478:	00050413          	mv	s0,a0
    147c:	0005a503          	lw	a0,0(a1)
    1480:	00912223          	sw	s1,4(sp)
    1484:	00058493          	mv	s1,a1
    1488:	01400593          	li	a1,20
    148c:	00112623          	sw	ra,12(sp)
    1490:	055010ef          	jal	ra,2ce4 <__umodsi3>
    1494:	00251513          	slli	a0,a0,0x2
    1498:	00a40533          	add	a0,s0,a0
    149c:	00052783          	lw	a5,0(a0)
    14a0:	00079863          	bnez	a5,14b0 <sglib_hashed_ilist_delete+0x40>
    14a4:	0300006f          	j	14d4 <sglib_hashed_ilist_delete+0x64>
    14a8:	00470513          	addi	a0,a4,4
    14ac:	02078463          	beqz	a5,14d4 <sglib_hashed_ilist_delete+0x64>
    14b0:	00078713          	mv	a4,a5
    14b4:	0047a783          	lw	a5,4(a5)
    14b8:	fee498e3          	bne	s1,a4,14a8 <sglib_hashed_ilist_delete+0x38>
    14bc:	00c12083          	lw	ra,12(sp)
    14c0:	00812403          	lw	s0,8(sp)
    14c4:	00f52023          	sw	a5,0(a0)
    14c8:	00412483          	lw	s1,4(sp)
    14cc:	01010113          	addi	sp,sp,16
    14d0:	00008067          	ret
    14d4:	00402783          	lw	a5,4(zero) # 4 <_start+0x4>
    14d8:	00100073          	ebreak

000014dc <sglib_hashed_ilist_delete_if_member>:
    14dc:	ff010113          	addi	sp,sp,-16
    14e0:	00912223          	sw	s1,4(sp)
    14e4:	0005a483          	lw	s1,0(a1)
    14e8:	00812423          	sw	s0,8(sp)
    14ec:	01400593          	li	a1,20
    14f0:	00050413          	mv	s0,a0
    14f4:	00048513          	mv	a0,s1
    14f8:	01212023          	sw	s2,0(sp)
    14fc:	00112623          	sw	ra,12(sp)
    1500:	00060913          	mv	s2,a2
    1504:	7e0010ef          	jal	ra,2ce4 <__umodsi3>
    1508:	00251513          	slli	a0,a0,0x2
    150c:	00a40533          	add	a0,s0,a0
    1510:	00052783          	lw	a5,0(a0)
    1514:	00079a63          	bnez	a5,1528 <sglib_hashed_ilist_delete_if_member+0x4c>
    1518:	0440006f          	j	155c <sglib_hashed_ilist_delete_if_member+0x80>
    151c:	00478513          	addi	a0,a5,4
    1520:	0047a783          	lw	a5,4(a5)
    1524:	02078c63          	beqz	a5,155c <sglib_hashed_ilist_delete_if_member+0x80>
    1528:	0007a703          	lw	a4,0(a5)
    152c:	fee498e3          	bne	s1,a4,151c <sglib_hashed_ilist_delete_if_member+0x40>
    1530:	00f92023          	sw	a5,0(s2)
    1534:	0047a783          	lw	a5,4(a5)
    1538:	00c12083          	lw	ra,12(sp)
    153c:	00812403          	lw	s0,8(sp)
    1540:	00f52023          	sw	a5,0(a0)
    1544:	00092503          	lw	a0,0(s2)
    1548:	00412483          	lw	s1,4(sp)
    154c:	00012903          	lw	s2,0(sp)
    1550:	00a03533          	snez	a0,a0
    1554:	01010113          	addi	sp,sp,16
    1558:	00008067          	ret
    155c:	00c12083          	lw	ra,12(sp)
    1560:	00812403          	lw	s0,8(sp)
    1564:	00092023          	sw	zero,0(s2)
    1568:	00412483          	lw	s1,4(sp)
    156c:	00012903          	lw	s2,0(sp)
    1570:	00000513          	li	a0,0
    1574:	01010113          	addi	sp,sp,16
    1578:	00008067          	ret

0000157c <sglib_hashed_ilist_is_member>:
    157c:	ff010113          	addi	sp,sp,-16
    1580:	00912223          	sw	s1,4(sp)
    1584:	00050493          	mv	s1,a0
    1588:	0005a503          	lw	a0,0(a1)
    158c:	00812423          	sw	s0,8(sp)
    1590:	00058413          	mv	s0,a1
    1594:	01400593          	li	a1,20
    1598:	00112623          	sw	ra,12(sp)
    159c:	748010ef          	jal	ra,2ce4 <__umodsi3>
    15a0:	00251513          	slli	a0,a0,0x2
    15a4:	00a484b3          	add	s1,s1,a0
    15a8:	0004a783          	lw	a5,0(s1)
    15ac:	00078863          	beqz	a5,15bc <sglib_hashed_ilist_is_member+0x40>
    15b0:	02878263          	beq	a5,s0,15d4 <sglib_hashed_ilist_is_member+0x58>
    15b4:	0047a783          	lw	a5,4(a5)
    15b8:	fe079ce3          	bnez	a5,15b0 <sglib_hashed_ilist_is_member+0x34>
    15bc:	00c12083          	lw	ra,12(sp)
    15c0:	00812403          	lw	s0,8(sp)
    15c4:	00412483          	lw	s1,4(sp)
    15c8:	00000513          	li	a0,0
    15cc:	01010113          	addi	sp,sp,16
    15d0:	00008067          	ret
    15d4:	00c12083          	lw	ra,12(sp)
    15d8:	00812403          	lw	s0,8(sp)
    15dc:	00412483          	lw	s1,4(sp)
    15e0:	00100513          	li	a0,1
    15e4:	01010113          	addi	sp,sp,16
    15e8:	00008067          	ret

000015ec <sglib_hashed_ilist_find_member>:
    15ec:	ff010113          	addi	sp,sp,-16
    15f0:	00812423          	sw	s0,8(sp)
    15f4:	0005a403          	lw	s0,0(a1)
    15f8:	00912223          	sw	s1,4(sp)
    15fc:	01400593          	li	a1,20
    1600:	00050493          	mv	s1,a0
    1604:	00040513          	mv	a0,s0
    1608:	00112623          	sw	ra,12(sp)
    160c:	6d8010ef          	jal	ra,2ce4 <__umodsi3>
    1610:	00251513          	slli	a0,a0,0x2
    1614:	00a484b3          	add	s1,s1,a0
    1618:	0004a503          	lw	a0,0(s1)
    161c:	00051863          	bnez	a0,162c <sglib_hashed_ilist_find_member+0x40>
    1620:	0140006f          	j	1634 <sglib_hashed_ilist_find_member+0x48>
    1624:	00452503          	lw	a0,4(a0)
    1628:	00050663          	beqz	a0,1634 <sglib_hashed_ilist_find_member+0x48>
    162c:	00052783          	lw	a5,0(a0)
    1630:	fe879ae3          	bne	a5,s0,1624 <sglib_hashed_ilist_find_member+0x38>
    1634:	00c12083          	lw	ra,12(sp)
    1638:	00812403          	lw	s0,8(sp)
    163c:	00412483          	lw	s1,4(sp)
    1640:	01010113          	addi	sp,sp,16
    1644:	00008067          	ret

00001648 <sglib_hashed_ilist_it_current>:
    1648:	00052503          	lw	a0,0(a0)
    164c:	00008067          	ret

00001650 <sglib_hashed_ilist_it_next>:
    1650:	ff010113          	addi	sp,sp,-16
    1654:	00812423          	sw	s0,8(sp)
    1658:	00912223          	sw	s1,4(sp)
    165c:	01212023          	sw	s2,0(sp)
    1660:	00112623          	sw	ra,12(sp)
    1664:	00050413          	mv	s0,a0
    1668:	c19ff0ef          	jal	ra,1280 <sglib_ilist_it_next>
    166c:	00050913          	mv	s2,a0
    1670:	01300493          	li	s1,19
    1674:	02050863          	beqz	a0,16a4 <sglib_hashed_ilist_it_next+0x54>
    1678:	0440006f          	j	16bc <sglib_hashed_ilist_it_next+0x6c>
    167c:	01042783          	lw	a5,16(s0)
    1680:	01c42683          	lw	a3,28(s0)
    1684:	01842603          	lw	a2,24(s0)
    1688:	00e787b3          	add	a5,a5,a4
    168c:	0007a783          	lw	a5,0(a5)
    1690:	00c42423          	sw	a2,8(s0)
    1694:	00d42623          	sw	a3,12(s0)
    1698:	00f42223          	sw	a5,4(s0)
    169c:	be5ff0ef          	jal	ra,1280 <sglib_ilist_it_next>
    16a0:	02051c63          	bnez	a0,16d8 <sglib_hashed_ilist_it_next+0x88>
    16a4:	01442783          	lw	a5,20(s0)
    16a8:	00040513          	mv	a0,s0
    16ac:	00178793          	addi	a5,a5,1
    16b0:	00f42a23          	sw	a5,20(s0)
    16b4:	00279713          	slli	a4,a5,0x2
    16b8:	fcf4d2e3          	bge	s1,a5,167c <sglib_hashed_ilist_it_next+0x2c>
    16bc:	00c12083          	lw	ra,12(sp)
    16c0:	00812403          	lw	s0,8(sp)
    16c4:	00412483          	lw	s1,4(sp)
    16c8:	00090513          	mv	a0,s2
    16cc:	00012903          	lw	s2,0(sp)
    16d0:	01010113          	addi	sp,sp,16
    16d4:	00008067          	ret
    16d8:	00c12083          	lw	ra,12(sp)
    16dc:	00812403          	lw	s0,8(sp)
    16e0:	00050913          	mv	s2,a0
    16e4:	00412483          	lw	s1,4(sp)
    16e8:	00090513          	mv	a0,s2
    16ec:	00012903          	lw	s2,0(sp)
    16f0:	01010113          	addi	sp,sp,16
    16f4:	00008067          	ret

000016f8 <sglib_hashed_ilist_it_init_on_equal>:
    16f8:	ff010113          	addi	sp,sp,-16
    16fc:	00812423          	sw	s0,8(sp)
    1700:	00112623          	sw	ra,12(sp)
    1704:	00d52e23          	sw	a3,28(a0)
    1708:	0005a783          	lw	a5,0(a1)
    170c:	00b52823          	sw	a1,16(a0)
    1710:	00052a23          	sw	zero,20(a0)
    1714:	00c52c23          	sw	a2,24(a0)
    1718:	00c52423          	sw	a2,8(a0)
    171c:	00d52623          	sw	a3,12(a0)
    1720:	00f52223          	sw	a5,4(a0)
    1724:	00050413          	mv	s0,a0
    1728:	b59ff0ef          	jal	ra,1280 <sglib_ilist_it_next>
    172c:	00050a63          	beqz	a0,1740 <sglib_hashed_ilist_it_init_on_equal+0x48>
    1730:	00c12083          	lw	ra,12(sp)
    1734:	00812403          	lw	s0,8(sp)
    1738:	01010113          	addi	sp,sp,16
    173c:	00008067          	ret
    1740:	00040513          	mv	a0,s0
    1744:	f0dff0ef          	jal	ra,1650 <sglib_hashed_ilist_it_next>
    1748:	00c12083          	lw	ra,12(sp)
    174c:	00812403          	lw	s0,8(sp)
    1750:	01010113          	addi	sp,sp,16
    1754:	00008067          	ret

00001758 <sglib_hashed_ilist_it_init>:
    1758:	ff010113          	addi	sp,sp,-16
    175c:	00812423          	sw	s0,8(sp)
    1760:	00112623          	sw	ra,12(sp)
    1764:	00052e23          	sw	zero,28(a0)
    1768:	0005a783          	lw	a5,0(a1)
    176c:	00b52823          	sw	a1,16(a0)
    1770:	00052a23          	sw	zero,20(a0)
    1774:	00052c23          	sw	zero,24(a0)
    1778:	00052423          	sw	zero,8(a0)
    177c:	00052623          	sw	zero,12(a0)
    1780:	00f52223          	sw	a5,4(a0)
    1784:	00050413          	mv	s0,a0
    1788:	af9ff0ef          	jal	ra,1280 <sglib_ilist_it_next>
    178c:	00050a63          	beqz	a0,17a0 <sglib_hashed_ilist_it_init+0x48>
    1790:	00c12083          	lw	ra,12(sp)
    1794:	00812403          	lw	s0,8(sp)
    1798:	01010113          	addi	sp,sp,16
    179c:	00008067          	ret
    17a0:	00040513          	mv	a0,s0
    17a4:	eadff0ef          	jal	ra,1650 <sglib_hashed_ilist_it_next>
    17a8:	00c12083          	lw	ra,12(sp)
    17ac:	00812403          	lw	s0,8(sp)
    17b0:	01010113          	addi	sp,sp,16
    17b4:	00008067          	ret

000017b8 <sglib_iq_init>:
    17b8:	18052c23          	sw	zero,408(a0)
    17bc:	18052a23          	sw	zero,404(a0)
    17c0:	00008067          	ret

000017c4 <sglib_iq_is_empty>:
    17c4:	19452783          	lw	a5,404(a0)
    17c8:	19852703          	lw	a4,408(a0)
    17cc:	40e78533          	sub	a0,a5,a4
    17d0:	00153513          	seqz	a0,a0
    17d4:	00008067          	ret

000017d8 <sglib_iq_is_full>:
    17d8:	ff010113          	addi	sp,sp,-16
    17dc:	00812423          	sw	s0,8(sp)
    17e0:	00050413          	mv	s0,a0
    17e4:	19852503          	lw	a0,408(a0)
    17e8:	06500593          	li	a1,101
    17ec:	00112623          	sw	ra,12(sp)
    17f0:	00150513          	addi	a0,a0,1
    17f4:	524010ef          	jal	ra,2d18 <__modsi3>
    17f8:	19442783          	lw	a5,404(s0)
    17fc:	00c12083          	lw	ra,12(sp)
    1800:	00812403          	lw	s0,8(sp)
    1804:	40f50533          	sub	a0,a0,a5
    1808:	00153513          	seqz	a0,a0
    180c:	01010113          	addi	sp,sp,16
    1810:	00008067          	ret

00001814 <sglib_iq_first_element>:
    1814:	19452783          	lw	a5,404(a0)
    1818:	00279793          	slli	a5,a5,0x2
    181c:	00f50533          	add	a0,a0,a5
    1820:	00052503          	lw	a0,0(a0)
    1824:	00008067          	ret

00001828 <sglib_iq_first_element_ptr>:
    1828:	19452783          	lw	a5,404(a0)
    182c:	00279793          	slli	a5,a5,0x2
    1830:	00f50533          	add	a0,a0,a5
    1834:	00008067          	ret

00001838 <sglib_iq_add_next>:
    1838:	ff010113          	addi	sp,sp,-16
    183c:	00812423          	sw	s0,8(sp)
    1840:	00050413          	mv	s0,a0
    1844:	19852503          	lw	a0,408(a0)
    1848:	06500593          	li	a1,101
    184c:	00112623          	sw	ra,12(sp)
    1850:	00150513          	addi	a0,a0,1
    1854:	4c4010ef          	jal	ra,2d18 <__modsi3>
    1858:	00c12083          	lw	ra,12(sp)
    185c:	18a42c23          	sw	a0,408(s0)
    1860:	00812403          	lw	s0,8(sp)
    1864:	01010113          	addi	sp,sp,16
    1868:	00008067          	ret

0000186c <sglib_iq_add>:
    186c:	ff010113          	addi	sp,sp,-16
    1870:	00812423          	sw	s0,8(sp)
    1874:	00050413          	mv	s0,a0
    1878:	19852503          	lw	a0,408(a0)
    187c:	00112623          	sw	ra,12(sp)
    1880:	00058713          	mv	a4,a1
    1884:	00251793          	slli	a5,a0,0x2
    1888:	00f407b3          	add	a5,s0,a5
    188c:	06500593          	li	a1,101
    1890:	00e7a023          	sw	a4,0(a5)
    1894:	00150513          	addi	a0,a0,1
    1898:	480010ef          	jal	ra,2d18 <__modsi3>
    189c:	00c12083          	lw	ra,12(sp)
    18a0:	18a42c23          	sw	a0,408(s0)
    18a4:	00812403          	lw	s0,8(sp)
    18a8:	01010113          	addi	sp,sp,16
    18ac:	00008067          	ret

000018b0 <sglib_iq_delete_first>:
    18b0:	ff010113          	addi	sp,sp,-16
    18b4:	00812423          	sw	s0,8(sp)
    18b8:	00050413          	mv	s0,a0
    18bc:	19452503          	lw	a0,404(a0)
    18c0:	06500593          	li	a1,101
    18c4:	00112623          	sw	ra,12(sp)
    18c8:	00150513          	addi	a0,a0,1
    18cc:	44c010ef          	jal	ra,2d18 <__modsi3>
    18d0:	00c12083          	lw	ra,12(sp)
    18d4:	18a42a23          	sw	a0,404(s0)
    18d8:	00812403          	lw	s0,8(sp)
    18dc:	01010113          	addi	sp,sp,16
    18e0:	00008067          	ret

000018e4 <sglib_iq_delete>:
    18e4:	ff010113          	addi	sp,sp,-16
    18e8:	00812423          	sw	s0,8(sp)
    18ec:	00050413          	mv	s0,a0
    18f0:	19452503          	lw	a0,404(a0)
    18f4:	06500593          	li	a1,101
    18f8:	00112623          	sw	ra,12(sp)
    18fc:	00150513          	addi	a0,a0,1
    1900:	418010ef          	jal	ra,2d18 <__modsi3>
    1904:	00c12083          	lw	ra,12(sp)
    1908:	18a42a23          	sw	a0,404(s0)
    190c:	00812403          	lw	s0,8(sp)
    1910:	01010113          	addi	sp,sp,16
    1914:	00008067          	ret

00001918 <sglib___rbtree_delete_recursive>:
    1918:	fe010113          	addi	sp,sp,-32
    191c:	00912a23          	sw	s1,20(sp)
    1920:	00052483          	lw	s1,0(a0)
    1924:	00112e23          	sw	ra,28(sp)
    1928:	00812c23          	sw	s0,24(sp)
    192c:	02048663          	beqz	s1,1958 <sglib___rbtree_delete_recursive+0x40>
    1930:	0005a783          	lw	a5,0(a1)
    1934:	0004a703          	lw	a4,0(s1)
    1938:	00050413          	mv	s0,a0
    193c:	40e78533          	sub	a0,a5,a4
    1940:	00054663          	bltz	a0,194c <sglib___rbtree_delete_recursive+0x34>
    1944:	02051863          	bnez	a0,1974 <sglib___rbtree_delete_recursive+0x5c>
    1948:	0295f463          	bgeu	a1,s1,1970 <sglib___rbtree_delete_recursive+0x58>
    194c:	00848513          	addi	a0,s1,8
    1950:	fc9ff0ef          	jal	ra,1918 <sglib___rbtree_delete_recursive>
    1954:	06051863          	bnez	a0,19c4 <sglib___rbtree_delete_recursive+0xac>
    1958:	00000513          	li	a0,0
    195c:	01c12083          	lw	ra,28(sp)
    1960:	01812403          	lw	s0,24(sp)
    1964:	01412483          	lw	s1,20(sp)
    1968:	02010113          	addi	sp,sp,32
    196c:	00008067          	ret
    1970:	00b4fe63          	bgeu	s1,a1,198c <sglib___rbtree_delete_recursive+0x74>
    1974:	00c48513          	addi	a0,s1,12
    1978:	fa1ff0ef          	jal	ra,1918 <sglib___rbtree_delete_recursive>
    197c:	fc050ee3          	beqz	a0,1958 <sglib___rbtree_delete_recursive+0x40>
    1980:	00040513          	mv	a0,s0
    1984:	9a9fe0ef          	jal	ra,32c <sglib___rbtree_fix_right_deletion_discrepancy>
    1988:	fd5ff06f          	j	195c <sglib___rbtree_delete_recursive+0x44>
    198c:	0084a783          	lw	a5,8(s1)
    1990:	04078863          	beqz	a5,19e0 <sglib___rbtree_delete_recursive+0xc8>
    1994:	00c10593          	addi	a1,sp,12
    1998:	00848513          	addi	a0,s1,8
    199c:	b6dfe0ef          	jal	ra,508 <sglib___rbtree_delete_rightmost_leaf>
    19a0:	00c4a703          	lw	a4,12(s1)
    19a4:	00c12783          	lw	a5,12(sp)
    19a8:	0084a683          	lw	a3,8(s1)
    19ac:	00e7a623          	sw	a4,12(a5)
    19b0:	00d7a423          	sw	a3,8(a5)
    19b4:	0044c703          	lbu	a4,4(s1)
    19b8:	00e78223          	sb	a4,4(a5)
    19bc:	00f42023          	sw	a5,0(s0)
    19c0:	f8050ce3          	beqz	a0,1958 <sglib___rbtree_delete_recursive+0x40>
    19c4:	00040513          	mv	a0,s0
    19c8:	f88fe0ef          	jal	ra,150 <sglib___rbtree_fix_left_deletion_discrepancy>
    19cc:	01c12083          	lw	ra,28(sp)
    19d0:	01812403          	lw	s0,24(sp)
    19d4:	01412483          	lw	s1,20(sp)
    19d8:	02010113          	addi	sp,sp,32
    19dc:	00008067          	ret
    19e0:	00c4a703          	lw	a4,12(s1)
    19e4:	02070063          	beqz	a4,1a04 <sglib___rbtree_delete_recursive+0xec>
    19e8:	0044c783          	lbu	a5,4(s1)
    19ec:	00079663          	bnez	a5,19f8 <sglib___rbtree_delete_recursive+0xe0>
    19f0:	00474783          	lbu	a5,4(a4)
    19f4:	0017b513          	seqz	a0,a5
    19f8:	00070223          	sb	zero,4(a4)
    19fc:	00e42023          	sw	a4,0(s0)
    1a00:	f5dff06f          	j	195c <sglib___rbtree_delete_recursive+0x44>
    1a04:	00042023          	sw	zero,0(s0)
    1a08:	0044c503          	lbu	a0,4(s1)
    1a0c:	00153513          	seqz	a0,a0
    1a10:	f4dff06f          	j	195c <sglib___rbtree_delete_recursive+0x44>

00001a14 <sglib_rbtree_add>:
    1a14:	ff010113          	addi	sp,sp,-16
    1a18:	0005a623          	sw	zero,12(a1)
    1a1c:	0005a423          	sw	zero,8(a1)
    1a20:	00812423          	sw	s0,8(sp)
    1a24:	00112623          	sw	ra,12(sp)
    1a28:	00050413          	mv	s0,a0
    1a2c:	c0dfe0ef          	jal	ra,638 <sglib___rbtree_add_recursive.constprop.0>
    1a30:	00042783          	lw	a5,0(s0)
    1a34:	00078223          	sb	zero,4(a5)
    1a38:	00c12083          	lw	ra,12(sp)
    1a3c:	00812403          	lw	s0,8(sp)
    1a40:	01010113          	addi	sp,sp,16
    1a44:	00008067          	ret

00001a48 <sglib_rbtree_delete>:
    1a48:	ff010113          	addi	sp,sp,-16
    1a4c:	00812423          	sw	s0,8(sp)
    1a50:	00112623          	sw	ra,12(sp)
    1a54:	00050413          	mv	s0,a0
    1a58:	ec1ff0ef          	jal	ra,1918 <sglib___rbtree_delete_recursive>
    1a5c:	00042783          	lw	a5,0(s0)
    1a60:	00078463          	beqz	a5,1a68 <sglib_rbtree_delete+0x20>
    1a64:	00078223          	sb	zero,4(a5)
    1a68:	00c12083          	lw	ra,12(sp)
    1a6c:	00812403          	lw	s0,8(sp)
    1a70:	01010113          	addi	sp,sp,16
    1a74:	00008067          	ret

00001a78 <sglib_rbtree_find_member>:
    1a78:	02050863          	beqz	a0,1aa8 <sglib_rbtree_find_member+0x30>
    1a7c:	0005a703          	lw	a4,0(a1)
    1a80:	00052783          	lw	a5,0(a0)
    1a84:	40f707b3          	sub	a5,a4,a5
    1a88:	0007ca63          	bltz	a5,1a9c <sglib_rbtree_find_member+0x24>
    1a8c:	02078063          	beqz	a5,1aac <sglib_rbtree_find_member+0x34>
    1a90:	00c52503          	lw	a0,12(a0)
    1a94:	fe0516e3          	bnez	a0,1a80 <sglib_rbtree_find_member+0x8>
    1a98:	00008067          	ret
    1a9c:	00852503          	lw	a0,8(a0)
    1aa0:	fe0510e3          	bnez	a0,1a80 <sglib_rbtree_find_member+0x8>
    1aa4:	ff5ff06f          	j	1a98 <sglib_rbtree_find_member+0x20>
    1aa8:	00000513          	li	a0,0
    1aac:	00008067          	ret

00001ab0 <sglib_rbtree_is_member>:
    1ab0:	04050063          	beqz	a0,1af0 <sglib_rbtree_is_member+0x40>
    1ab4:	0005a703          	lw	a4,0(a1)
    1ab8:	00052783          	lw	a5,0(a0)
    1abc:	40f707b3          	sub	a5,a4,a5
    1ac0:	0007ce63          	bltz	a5,1adc <sglib_rbtree_is_member+0x2c>
    1ac4:	00079663          	bnez	a5,1ad0 <sglib_rbtree_is_member+0x20>
    1ac8:	00a5ea63          	bltu	a1,a0,1adc <sglib_rbtree_is_member+0x2c>
    1acc:	00b57e63          	bgeu	a0,a1,1ae8 <sglib_rbtree_is_member+0x38>
    1ad0:	00c52503          	lw	a0,12(a0)
    1ad4:	fe0512e3          	bnez	a0,1ab8 <sglib_rbtree_is_member+0x8>
    1ad8:	00008067          	ret
    1adc:	00852503          	lw	a0,8(a0)
    1ae0:	fc051ce3          	bnez	a0,1ab8 <sglib_rbtree_is_member+0x8>
    1ae4:	ff5ff06f          	j	1ad8 <sglib_rbtree_is_member+0x28>
    1ae8:	00100513          	li	a0,1
    1aec:	00008067          	ret
    1af0:	00000513          	li	a0,0
    1af4:	00008067          	ret

00001af8 <sglib_rbtree_delete_if_member>:
    1af8:	00052703          	lw	a4,0(a0)
    1afc:	08070463          	beqz	a4,1b84 <sglib_rbtree_delete_if_member+0x8c>
    1b00:	0005a683          	lw	a3,0(a1)
    1b04:	ff010113          	addi	sp,sp,-16
    1b08:	00812423          	sw	s0,8(sp)
    1b0c:	00112623          	sw	ra,12(sp)
    1b10:	00050413          	mv	s0,a0
    1b14:	00072783          	lw	a5,0(a4)
    1b18:	40f687b3          	sub	a5,a3,a5
    1b1c:	0207c463          	bltz	a5,1b44 <sglib_rbtree_delete_if_member+0x4c>
    1b20:	02078863          	beqz	a5,1b50 <sglib_rbtree_delete_if_member+0x58>
    1b24:	00c72703          	lw	a4,12(a4)
    1b28:	fe0716e3          	bnez	a4,1b14 <sglib_rbtree_delete_if_member+0x1c>
    1b2c:	00062023          	sw	zero,0(a2)
    1b30:	00000513          	li	a0,0
    1b34:	00c12083          	lw	ra,12(sp)
    1b38:	00812403          	lw	s0,8(sp)
    1b3c:	01010113          	addi	sp,sp,16
    1b40:	00008067          	ret
    1b44:	00872703          	lw	a4,8(a4)
    1b48:	fc0716e3          	bnez	a4,1b14 <sglib_rbtree_delete_if_member+0x1c>
    1b4c:	fe1ff06f          	j	1b2c <sglib_rbtree_delete_if_member+0x34>
    1b50:	00e62023          	sw	a4,0(a2)
    1b54:	00070593          	mv	a1,a4
    1b58:	00040513          	mv	a0,s0
    1b5c:	dbdff0ef          	jal	ra,1918 <sglib___rbtree_delete_recursive>
    1b60:	00042783          	lw	a5,0(s0)
    1b64:	00100513          	li	a0,1
    1b68:	fc0786e3          	beqz	a5,1b34 <sglib_rbtree_delete_if_member+0x3c>
    1b6c:	00078223          	sb	zero,4(a5)
    1b70:	00c12083          	lw	ra,12(sp)
    1b74:	00812403          	lw	s0,8(sp)
    1b78:	00100513          	li	a0,1
    1b7c:	01010113          	addi	sp,sp,16
    1b80:	00008067          	ret
    1b84:	00062023          	sw	zero,0(a2)
    1b88:	00000513          	li	a0,0
    1b8c:	00008067          	ret

00001b90 <sglib_rbtree_add_if_not_member>:
    1b90:	00052783          	lw	a5,0(a0)
    1b94:	ff010113          	addi	sp,sp,-16
    1b98:	00812423          	sw	s0,8(sp)
    1b9c:	00112623          	sw	ra,12(sp)
    1ba0:	00050413          	mv	s0,a0
    1ba4:	02078063          	beqz	a5,1bc4 <sglib_rbtree_add_if_not_member+0x34>
    1ba8:	0005a703          	lw	a4,0(a1)
    1bac:	0007a503          	lw	a0,0(a5)
    1bb0:	40a70533          	sub	a0,a4,a0
    1bb4:	04054063          	bltz	a0,1bf4 <sglib_rbtree_add_if_not_member+0x64>
    1bb8:	04050463          	beqz	a0,1c00 <sglib_rbtree_add_if_not_member+0x70>
    1bbc:	00c7a783          	lw	a5,12(a5)
    1bc0:	fe0796e3          	bnez	a5,1bac <sglib_rbtree_add_if_not_member+0x1c>
    1bc4:	00062023          	sw	zero,0(a2)
    1bc8:	00040513          	mv	a0,s0
    1bcc:	0005a623          	sw	zero,12(a1)
    1bd0:	0005a423          	sw	zero,8(a1)
    1bd4:	a65fe0ef          	jal	ra,638 <sglib___rbtree_add_recursive.constprop.0>
    1bd8:	00042783          	lw	a5,0(s0)
    1bdc:	00100513          	li	a0,1
    1be0:	00078223          	sb	zero,4(a5)
    1be4:	00c12083          	lw	ra,12(sp)
    1be8:	00812403          	lw	s0,8(sp)
    1bec:	01010113          	addi	sp,sp,16
    1bf0:	00008067          	ret
    1bf4:	0087a783          	lw	a5,8(a5)
    1bf8:	fa079ae3          	bnez	a5,1bac <sglib_rbtree_add_if_not_member+0x1c>
    1bfc:	fc9ff06f          	j	1bc4 <sglib_rbtree_add_if_not_member+0x34>
    1c00:	00c12083          	lw	ra,12(sp)
    1c04:	00812403          	lw	s0,8(sp)
    1c08:	00f62023          	sw	a5,0(a2)
    1c0c:	01010113          	addi	sp,sp,16
    1c10:	00008067          	ret

00001c14 <sglib_rbtree_len>:
    1c14:	0c050c63          	beqz	a0,1cec <sglib_rbtree_len+0xd8>
    1c18:	d8010113          	addi	sp,sp,-640
    1c1c:	00010313          	mv	t1,sp
    1c20:	00100893          	li	a7,1
    1c24:	40000e37          	lui	t3,0x40000
    1c28:	00050793          	mv	a5,a0
    1c2c:	00000613          	li	a2,0
    1c30:	00000513          	li	a0,0
    1c34:	406888b3          	sub	a7,a7,t1
    1c38:	ffee0e13          	addi	t3,t3,-2 # 3ffffffe <seed+0x3ffedae6>
    1c3c:	08010713          	addi	a4,sp,128
    1c40:	00261593          	slli	a1,a2,0x2
    1c44:	00b705b3          	add	a1,a4,a1
    1c48:	00c30733          	add	a4,t1,a2
    1c4c:	00c7a683          	lw	a3,12(a5)
    1c50:	0087a783          	lw	a5,8(a5)
    1c54:	00070023          	sb	zero,0(a4)
    1c58:	00d5a023          	sw	a3,0(a1)
    1c5c:	00e88633          	add	a2,a7,a4
    1c60:	00458593          	addi	a1,a1,4
    1c64:	00170713          	addi	a4,a4,1
    1c68:	fe0792e3          	bnez	a5,1c4c <sglib_rbtree_len+0x38>
    1c6c:	01c605b3          	add	a1,a2,t3
    1c70:	08010793          	addi	a5,sp,128
    1c74:	00259593          	slli	a1,a1,0x2
    1c78:	00b785b3          	add	a1,a5,a1
    1c7c:	00c30733          	add	a4,t1,a2
    1c80:	00000793          	li	a5,0
    1c84:	01c0006f          	j	1ca0 <sglib_rbtree_len+0x8c>
    1c88:	fff70713          	addi	a4,a4,-1
    1c8c:	04069063          	bnez	a3,1ccc <sglib_rbtree_len+0xb8>
    1c90:	fff74783          	lbu	a5,-1(a4)
    1c94:	0005a683          	lw	a3,0(a1)
    1c98:	00080613          	mv	a2,a6
    1c9c:	ffc58593          	addi	a1,a1,-4
    1ca0:	00178813          	addi	a6,a5,1
    1ca4:	ff070fa3          	sb	a6,-1(a4)
    1ca8:	0017b793          	seqz	a5,a5
    1cac:	fff60813          	addi	a6,a2,-1
    1cb0:	00f50533          	add	a0,a0,a5
    1cb4:	fc081ae3          	bnez	a6,1c88 <sglib_rbtree_len+0x74>
    1cb8:	08012023          	sw	zero,128(sp)
    1cbc:	02068463          	beqz	a3,1ce4 <sglib_rbtree_len+0xd0>
    1cc0:	00100613          	li	a2,1
    1cc4:	00068793          	mv	a5,a3
    1cc8:	f75ff06f          	j	1c3c <sglib_rbtree_len+0x28>
    1ccc:	00281813          	slli	a6,a6,0x2
    1cd0:	28080793          	addi	a5,a6,640
    1cd4:	00278833          	add	a6,a5,sp
    1cd8:	e0082023          	sw	zero,-512(a6)
    1cdc:	00068793          	mv	a5,a3
    1ce0:	f5dff06f          	j	1c3c <sglib_rbtree_len+0x28>
    1ce4:	28010113          	addi	sp,sp,640
    1ce8:	00008067          	ret
    1cec:	00000513          	li	a0,0
    1cf0:	00008067          	ret

00001cf4 <sglib__rbtree_it_compute_current_elem>:
    1cf4:	fd010113          	addi	sp,sp,-48
    1cf8:	28451783          	lh	a5,644(a0)
    1cfc:	03212023          	sw	s2,32(sp)
    1d00:	01412c23          	sw	s4,24(sp)
    1d04:	02112623          	sw	ra,44(sp)
    1d08:	02812423          	sw	s0,40(sp)
    1d0c:	02912223          	sw	s1,36(sp)
    1d10:	01312e23          	sw	s3,28(sp)
    1d14:	01512a23          	sw	s5,20(sp)
    1d18:	01612823          	sw	s6,16(sp)
    1d1c:	01712623          	sw	s7,12(sp)
    1d20:	00052023          	sw	zero,0(a0)
    1d24:	28852903          	lw	s2,648(a0)
    1d28:	28c52a03          	lw	s4,652(a0)
    1d2c:	04f05a63          	blez	a5,1d80 <sglib__rbtree_it_compute_current_elem+0x8c>
    1d30:	00050493          	mv	s1,a0
    1d34:	fff78713          	addi	a4,a5,-1
    1d38:	00100a93          	li	s5,1
    1d3c:	00e489b3          	add	s3,s1,a4
    1d40:	0049c683          	lbu	a3,4(s3)
    1d44:	00078b13          	mv	s6,a5
    1d48:	06daf263          	bgeu	s5,a3,1dac <sglib__rbtree_it_compute_current_elem+0xb8>
    1d4c:	01071793          	slli	a5,a4,0x10
    1d50:	4107d793          	srai	a5,a5,0x10
    1d54:	28f49223          	sh	a5,644(s1)
    1d58:	02f05463          	blez	a5,1d80 <sglib__rbtree_it_compute_current_elem+0x8c>
    1d5c:	fff78713          	addi	a4,a5,-1
    1d60:	01071693          	slli	a3,a4,0x10
    1d64:	4106d693          	srai	a3,a3,0x10
    1d68:	00d48633          	add	a2,s1,a3
    1d6c:	28649583          	lh	a1,646(s1)
    1d70:	00464603          	lbu	a2,4(a2)
    1d74:	0cc58663          	beq	a1,a2,1e40 <sglib__rbtree_it_compute_current_elem+0x14c>
    1d78:	0004a683          	lw	a3,0(s1)
    1d7c:	fc0680e3          	beqz	a3,1d3c <sglib__rbtree_it_compute_current_elem+0x48>
    1d80:	02c12083          	lw	ra,44(sp)
    1d84:	02812403          	lw	s0,40(sp)
    1d88:	02412483          	lw	s1,36(sp)
    1d8c:	02012903          	lw	s2,32(sp)
    1d90:	01c12983          	lw	s3,28(sp)
    1d94:	01812a03          	lw	s4,24(sp)
    1d98:	01412a83          	lw	s5,20(sp)
    1d9c:	01012b03          	lw	s6,16(sp)
    1da0:	00c12b83          	lw	s7,12(sp)
    1da4:	03010113          	addi	sp,sp,48
    1da8:	00008067          	ret
    1dac:	00279b93          	slli	s7,a5,0x2
    1db0:	01748bb3          	add	s7,s1,s7
    1db4:	080ba783          	lw	a5,128(s7)
    1db8:	08069063          	bnez	a3,1e38 <sglib__rbtree_it_compute_current_elem+0x144>
    1dbc:	0087a403          	lw	s0,8(a5)
    1dc0:	04090463          	beqz	s2,1e08 <sglib__rbtree_it_compute_current_elem+0x114>
    1dc4:	080a0c63          	beqz	s4,1e5c <sglib__rbtree_it_compute_current_elem+0x168>
    1dc8:	02040263          	beqz	s0,1dec <sglib__rbtree_it_compute_current_elem+0xf8>
    1dcc:	00040593          	mv	a1,s0
    1dd0:	00090513          	mv	a0,s2
    1dd4:	000a00e7          	jalr	s4
    1dd8:	02054263          	bltz	a0,1dfc <sglib__rbtree_it_compute_current_elem+0x108>
    1ddc:	02050a63          	beqz	a0,1e10 <sglib__rbtree_it_compute_current_elem+0x11c>
    1de0:	00c42403          	lw	s0,12(s0)
    1de4:	fe0414e3          	bnez	s0,1dcc <sglib__rbtree_it_compute_current_elem+0xd8>
    1de8:	0049c683          	lbu	a3,4(s3)
    1dec:	28449783          	lh	a5,644(s1)
    1df0:	00168693          	addi	a3,a3,1
    1df4:	00d98223          	sb	a3,4(s3)
    1df8:	f61ff06f          	j	1d58 <sglib__rbtree_it_compute_current_elem+0x64>
    1dfc:	00842403          	lw	s0,8(s0)
    1e00:	fc0416e3          	bnez	s0,1dcc <sglib__rbtree_it_compute_current_elem+0xd8>
    1e04:	fe5ff06f          	j	1de8 <sglib__rbtree_it_compute_current_elem+0xf4>
    1e08:	28449783          	lh	a5,644(s1)
    1e0c:	fe0402e3          	beqz	s0,1df0 <sglib__rbtree_it_compute_current_elem+0xfc>
    1e10:	088ba223          	sw	s0,132(s7)
    1e14:	01648b33          	add	s6,s1,s6
    1e18:	000b0223          	sb	zero,4(s6)
    1e1c:	2844d783          	lhu	a5,644(s1)
    1e20:	00178793          	addi	a5,a5,1
    1e24:	01079793          	slli	a5,a5,0x10
    1e28:	4107d793          	srai	a5,a5,0x10
    1e2c:	28f49223          	sh	a5,644(s1)
    1e30:	0049c683          	lbu	a3,4(s3)
    1e34:	fbdff06f          	j	1df0 <sglib__rbtree_it_compute_current_elem+0xfc>
    1e38:	00c7a403          	lw	s0,12(a5)
    1e3c:	f85ff06f          	j	1dc0 <sglib__rbtree_it_compute_current_elem+0xcc>
    1e40:	02068693          	addi	a3,a3,32
    1e44:	00269693          	slli	a3,a3,0x2
    1e48:	00d486b3          	add	a3,s1,a3
    1e4c:	0046a683          	lw	a3,4(a3)
    1e50:	00d4a023          	sw	a3,0(s1)
    1e54:	ee0684e3          	beqz	a3,1d3c <sglib__rbtree_it_compute_current_elem+0x48>
    1e58:	f29ff06f          	j	1d80 <sglib__rbtree_it_compute_current_elem+0x8c>
    1e5c:	28449783          	lh	a5,644(s1)
    1e60:	f80408e3          	beqz	s0,1df0 <sglib__rbtree_it_compute_current_elem+0xfc>
    1e64:	00092603          	lw	a2,0(s2)
    1e68:	00042703          	lw	a4,0(s0)
    1e6c:	40e60733          	sub	a4,a2,a4
    1e70:	00074e63          	bltz	a4,1e8c <sglib__rbtree_it_compute_current_elem+0x198>
    1e74:	f8070ee3          	beqz	a4,1e10 <sglib__rbtree_it_compute_current_elem+0x11c>
    1e78:	00c42403          	lw	s0,12(s0)
    1e7c:	f6040ae3          	beqz	s0,1df0 <sglib__rbtree_it_compute_current_elem+0xfc>
    1e80:	00042703          	lw	a4,0(s0)
    1e84:	40e60733          	sub	a4,a2,a4
    1e88:	fe0756e3          	bgez	a4,1e74 <sglib__rbtree_it_compute_current_elem+0x180>
    1e8c:	00842403          	lw	s0,8(s0)
    1e90:	fe0418e3          	bnez	s0,1e80 <sglib__rbtree_it_compute_current_elem+0x18c>
    1e94:	f5dff06f          	j	1df0 <sglib__rbtree_it_compute_current_elem+0xfc>

00001e98 <benchmark_body>:
    1e98:	b6010113          	addi	sp,sp,-1184
    1e9c:	48112e23          	sw	ra,1180(sp)
    1ea0:	48812c23          	sw	s0,1176(sp)
    1ea4:	48912a23          	sw	s1,1172(sp)
    1ea8:	49212823          	sw	s2,1168(sp)
    1eac:	49312623          	sw	s3,1164(sp)
    1eb0:	49412423          	sw	s4,1160(sp)
    1eb4:	49512223          	sw	s5,1156(sp)
    1eb8:	49612023          	sw	s6,1152(sp)
    1ebc:	47712e23          	sw	s7,1148(sp)
    1ec0:	47812c23          	sw	s8,1144(sp)
    1ec4:	47912a23          	sw	s9,1140(sp)
    1ec8:	47a12823          	sw	s10,1136(sp)
    1ecc:	47b12623          	sw	s11,1132(sp)
    1ed0:	00a12623          	sw	a0,12(sp)
    1ed4:	68a05e63          	blez	a0,2570 <benchmark_body+0x6d8>
    1ed8:	00010b37          	lui	s6,0x10
    1edc:	000b0793          	mv	a5,s6
    1ee0:	00010db7          	lui	s11,0x10
    1ee4:	00010437          	lui	s0,0x10
    1ee8:	00010a37          	lui	s4,0x10
    1eec:	00010ab7          	lui	s5,0x10
    1ef0:	40000937          	lui	s2,0x40000
    1ef4:	00000c13          	li	s8,0
    1ef8:	00f12423          	sw	a5,8(sp)
    1efc:	320d8d93          	addi	s11,s11,800 # 10320 <array2>
    1f00:	19040413          	addi	s0,s0,400 # 10190 <array_exp.0>
    1f04:	000129b7          	lui	s3,0x12
    1f08:	4b0a0a13          	addi	s4,s4,1200 # 104b0 <htab>
    1f0c:	004a8a93          	addi	s5,s5,4 # 10004 <array+0x4>
    1f10:	fff90913          	addi	s2,s2,-1 # 3fffffff <seed+0x3ffedae7>
    1f14:	00100493          	li	s1,1
    1f18:	00812783          	lw	a5,8(sp)
    1f1c:	000d8713          	mv	a4,s11
    1f20:	0007a503          	lw	a0,0(a5)
    1f24:	0047a583          	lw	a1,4(a5)
    1f28:	0087a603          	lw	a2,8(a5)
    1f2c:	00c7a683          	lw	a3,12(a5)
    1f30:	00a72023          	sw	a0,0(a4)
    1f34:	00b72223          	sw	a1,4(a4)
    1f38:	00c72423          	sw	a2,8(a4)
    1f3c:	00d72623          	sw	a3,12(a4)
    1f40:	01078793          	addi	a5,a5,16
    1f44:	01070713          	addi	a4,a4,16
    1f48:	fc879ce3          	bne	a5,s0,1f20 <benchmark_body+0x88>
    1f4c:	06400793          	li	a5,100
    1f50:	06400313          	li	t1,100
    1f54:	00000893          	li	a7,0
    1f58:	1cf12823          	sw	a5,464(sp)
    1f5c:	02012e23          	sw	zero,60(sp)
    1f60:	00000e13          	li	t3,0
    1f64:	00200e93          	li	t4,2
    1f68:	411307b3          	sub	a5,t1,a7
    1f6c:	08fede63          	bge	t4,a5,2008 <benchmark_body+0x170>
    1f70:	00188793          	addi	a5,a7,1
    1f74:	fff30693          	addi	a3,t1,-1
    1f78:	16d7d463          	bge	a5,a3,20e0 <benchmark_body+0x248>
    1f7c:	00269813          	slli	a6,a3,0x2
    1f80:	010d8733          	add	a4,s11,a6
    1f84:	00289f13          	slli	t5,a7,0x2
    1f88:	00072503          	lw	a0,0(a4)
    1f8c:	01ed8fb3          	add	t6,s11,t5
    1f90:	00279713          	slli	a4,a5,0x2
    1f94:	000fa583          	lw	a1,0(t6)
    1f98:	00ed8733          	add	a4,s11,a4
    1f9c:	00072603          	lw	a2,0(a4)
    1fa0:	00470713          	addi	a4,a4,4
    1fa4:	08c5c863          	blt	a1,a2,2034 <benchmark_body+0x19c>
    1fa8:	00178793          	addi	a5,a5,1
    1fac:	fef6d8e3          	bge	a3,a5,1f9c <benchmark_body+0x104>
    1fb0:	010d8833          	add	a6,s11,a6
    1fb4:	00b82023          	sw	a1,0(a6)
    1fb8:	01ed87b3          	add	a5,s11,t5
    1fbc:	00a7a023          	sw	a0,0(a5)
    1fc0:	00068713          	mv	a4,a3
    1fc4:	411687b3          	sub	a5,a3,a7
    1fc8:	10f4de63          	bge	s1,a5,20e4 <benchmark_body+0x24c>
    1fcc:	40e30633          	sub	a2,t1,a4
    1fd0:	12c4d063          	bge	s1,a2,20f0 <benchmark_body+0x258>
    1fd4:	fff60613          	addi	a2,a2,-1
    1fd8:	001e0593          	addi	a1,t3,1
    1fdc:	00170713          	addi	a4,a4,1
    1fe0:	10c7dc63          	bge	a5,a2,20f8 <benchmark_body+0x260>
    1fe4:	002e1613          	slli	a2,t3,0x2
    1fe8:	45060613          	addi	a2,a2,1104
    1fec:	01010513          	addi	a0,sp,16
    1ff0:	00a60633          	add	a2,a2,a0
    1ff4:	d6662823          	sw	t1,-656(a2)
    1ff8:	bce62e23          	sw	a4,-1060(a2)
    1ffc:	00068313          	mv	t1,a3
    2000:	00058e13          	mv	t3,a1
    2004:	f6fec6e3          	blt	t4,a5,1f70 <benchmark_body+0xd8>
    2008:	11d78c63          	beq	a5,t4,2120 <benchmark_body+0x288>
    200c:	140e0063          	beqz	t3,214c <benchmark_body+0x2b4>
    2010:	fffe0e13          	addi	t3,t3,-1
    2014:	002e1793          	slli	a5,t3,0x2
    2018:	45078793          	addi	a5,a5,1104
    201c:	01010713          	addi	a4,sp,16
    2020:	00e787b3          	add	a5,a5,a4
    2024:	bdc7a883          	lw	a7,-1060(a5)
    2028:	d707a303          	lw	t1,-656(a5)
    202c:	411307b3          	sub	a5,t1,a7
    2030:	f3dff06f          	j	1f6c <benchmark_body+0xd4>
    2034:	f6f6cee3          	blt	a3,a5,1fb0 <benchmark_body+0x118>
    2038:	01268733          	add	a4,a3,s2
    203c:	00271713          	slli	a4,a4,0x2
    2040:	00ed8733          	add	a4,s11,a4
    2044:	ffc70713          	addi	a4,a4,-4
    2048:	02b54663          	blt	a0,a1,2074 <benchmark_body+0x1dc>
    204c:	fff68693          	addi	a3,a3,-1
    2050:	00472503          	lw	a0,4(a4)
    2054:	fef6d8e3          	bge	a3,a5,2044 <benchmark_body+0x1ac>
    2058:	00269813          	slli	a6,a3,0x2
    205c:	010d8833          	add	a6,s11,a6
    2060:	00b82023          	sw	a1,0(a6)
    2064:	01ed87b3          	add	a5,s11,t5
    2068:	00a7a023          	sw	a0,0(a5)
    206c:	00068713          	mv	a4,a3
    2070:	f55ff06f          	j	1fc4 <benchmark_body+0x12c>
    2074:	00d7ca63          	blt	a5,a3,2088 <benchmark_body+0x1f0>
    2078:	00068713          	mv	a4,a3
    207c:	00078693          	mv	a3,a5
    2080:	411687b3          	sub	a5,a3,a7
    2084:	f45ff06f          	j	1fc8 <benchmark_body+0x130>
    2088:	00279713          	slli	a4,a5,0x2
    208c:	00ed85b3          	add	a1,s11,a4
    2090:	00269813          	slli	a6,a3,0x2
    2094:	00a5a023          	sw	a0,0(a1)
    2098:	010d85b3          	add	a1,s11,a6
    209c:	00c5a023          	sw	a2,0(a1)
    20a0:	00278513          	addi	a0,a5,2
    20a4:	00178593          	addi	a1,a5,1
    20a8:	00d54c63          	blt	a0,a3,20c0 <benchmark_body+0x228>
    20ac:	00d5d663          	bge	a1,a3,20b8 <benchmark_body+0x220>
    20b0:	00058793          	mv	a5,a1
    20b4:	00259713          	slli	a4,a1,0x2
    20b8:	00060513          	mv	a0,a2
    20bc:	ed9ff06f          	j	1f94 <benchmark_body+0xfc>
    20c0:	fff68693          	addi	a3,a3,-1
    20c4:	4ed5de63          	bge	a1,a3,25c0 <benchmark_body+0x728>
    20c8:	00269813          	slli	a6,a3,0x2
    20cc:	010d87b3          	add	a5,s11,a6
    20d0:	0007a503          	lw	a0,0(a5)
    20d4:	00259713          	slli	a4,a1,0x2
    20d8:	00058793          	mv	a5,a1
    20dc:	eb9ff06f          	j	1f94 <benchmark_body+0xfc>
    20e0:	00068713          	mv	a4,a3
    20e4:	00170893          	addi	a7,a4,1
    20e8:	411307b3          	sub	a5,t1,a7
    20ec:	e81ff06f          	j	1f6c <benchmark_body+0xd4>
    20f0:	00068313          	mv	t1,a3
    20f4:	e79ff06f          	j	1f6c <benchmark_body+0xd4>
    20f8:	002e1793          	slli	a5,t3,0x2
    20fc:	45078793          	addi	a5,a5,1104
    2100:	01010613          	addi	a2,sp,16
    2104:	00c787b3          	add	a5,a5,a2
    2108:	bd17ae23          	sw	a7,-1060(a5)
    210c:	d6d7a823          	sw	a3,-656(a5)
    2110:	00070893          	mv	a7,a4
    2114:	40e307b3          	sub	a5,t1,a4
    2118:	00058e13          	mv	t3,a1
    211c:	e51ff06f          	j	1f6c <benchmark_body+0xd4>
    2120:	fff30793          	addi	a5,t1,-1
    2124:	00289713          	slli	a4,a7,0x2
    2128:	00279793          	slli	a5,a5,0x2
    212c:	00ed8733          	add	a4,s11,a4
    2130:	00fd87b3          	add	a5,s11,a5
    2134:	00072683          	lw	a3,0(a4)
    2138:	0007a603          	lw	a2,0(a5)
    213c:	ecd658e3          	bge	a2,a3,200c <benchmark_body+0x174>
    2140:	00c72023          	sw	a2,0(a4)
    2144:	00d7a023          	sw	a3,0(a5)
    2148:	ec0e14e3          	bnez	t3,2010 <benchmark_body+0x178>
    214c:	000107b7          	lui	a5,0x10
    2150:	000025b7          	lui	a1,0x2
    2154:	50078513          	addi	a0,a5,1280 # 10500 <heap>
    2158:	1b5000ef          	jal	ra,2b0c <init_heap_beebs>
    215c:	00812d03          	lw	s10,8(sp)
    2160:	5009a423          	sw	zero,1288(s3) # 12508 <the_list>
    2164:	0280006f          	j	218c <benchmark_body+0x2f4>
    2168:	0087a703          	lw	a4,8(a5)
    216c:	00f52223          	sw	a5,4(a0)
    2170:	00e52423          	sw	a4,8(a0)
    2174:	00a7a423          	sw	a0,8(a5)
    2178:	00852783          	lw	a5,8(a0)
    217c:	00078463          	beqz	a5,2184 <benchmark_body+0x2ec>
    2180:	00a7a223          	sw	a0,4(a5)
    2184:	004d0d13          	addi	s10,s10,4
    2188:	028d0863          	beq	s10,s0,21b8 <benchmark_body+0x320>
    218c:	00c00513          	li	a0,12
    2190:	1bd000ef          	jal	ra,2b4c <malloc_beebs>
    2194:	000d2703          	lw	a4,0(s10)
    2198:	5089a783          	lw	a5,1288(s3)
    219c:	00e52023          	sw	a4,0(a0)
    21a0:	fc0794e3          	bnez	a5,2168 <benchmark_body+0x2d0>
    21a4:	50a9a423          	sw	a0,1288(s3)
    21a8:	00052423          	sw	zero,8(a0)
    21ac:	00052223          	sw	zero,4(a0)
    21b0:	004d0d13          	addi	s10,s10,4
    21b4:	fc8d1ce3          	bne	s10,s0,218c <benchmark_body+0x2f4>
    21b8:	50898513          	addi	a0,s3,1288
    21bc:	a8dfe0ef          	jal	ra,c48 <sglib_dllist_sort>
    21c0:	5089a783          	lw	a5,1288(s3)
    21c4:	00012a23          	sw	zero,20(sp)
    21c8:	02078263          	beqz	a5,21ec <benchmark_body+0x354>
    21cc:	00078713          	mv	a4,a5
    21d0:	0087a783          	lw	a5,8(a5)
    21d4:	fe079ce3          	bnez	a5,21cc <benchmark_body+0x334>
    21d8:	01412783          	lw	a5,20(sp)
    21dc:	00472703          	lw	a4,4(a4)
    21e0:	00178793          	addi	a5,a5,1
    21e4:	00f12a23          	sw	a5,20(sp)
    21e8:	fe0718e3          	bnez	a4,21d8 <benchmark_body+0x340>
    21ec:	05000613          	li	a2,80
    21f0:	00000593          	li	a1,0
    21f4:	000a0513          	mv	a0,s4
    21f8:	3d1000ef          	jal	ra,2dc8 <memset>
    21fc:	00e00b93          	li	s7,14
    2200:	01400593          	li	a1,20
    2204:	000b8513          	mv	a0,s7
    2208:	2dd000ef          	jal	ra,2ce4 <__umodsi3>
    220c:	00251613          	slli	a2,a0,0x2
    2210:	00ca0b33          	add	s6,s4,a2
    2214:	000b2783          	lw	a5,0(s6) # 10000 <array>
    2218:	000a8d13          	mv	s10,s5
    221c:	000a8c93          	mv	s9,s5
    2220:	00079863          	bnez	a5,2230 <benchmark_body+0x398>
    2224:	03c0006f          	j	2260 <benchmark_body+0x3c8>
    2228:	0047a783          	lw	a5,4(a5)
    222c:	02078a63          	beqz	a5,2260 <benchmark_body+0x3c8>
    2230:	0007a703          	lw	a4,0(a5)
    2234:	feeb9ae3          	bne	s7,a4,2228 <benchmark_body+0x390>
    2238:	048c8263          	beq	s9,s0,227c <benchmark_body+0x3e4>
    223c:	000cab83          	lw	s7,0(s9)
    2240:	01400593          	li	a1,20
    2244:	004c8c93          	addi	s9,s9,4
    2248:	000b8513          	mv	a0,s7
    224c:	299000ef          	jal	ra,2ce4 <__umodsi3>
    2250:	00251613          	slli	a2,a0,0x2
    2254:	00ca0b33          	add	s6,s4,a2
    2258:	000b2783          	lw	a5,0(s6)
    225c:	fc079ae3          	bnez	a5,2230 <benchmark_body+0x398>
    2260:	00800513          	li	a0,8
    2264:	0e9000ef          	jal	ra,2b4c <malloc_beebs>
    2268:	000b2783          	lw	a5,0(s6)
    226c:	01752023          	sw	s7,0(a0)
    2270:	00f52223          	sw	a5,4(a0)
    2274:	00ab2023          	sw	a0,0(s6)
    2278:	fc8c92e3          	bne	s9,s0,223c <benchmark_body+0x3a4>
    227c:	190da783          	lw	a5,400(s11)
    2280:	01c10513          	addi	a0,sp,28
    2284:	03412623          	sw	s4,44(sp)
    2288:	02012823          	sw	zero,48(sp)
    228c:	02012a23          	sw	zero,52(sp)
    2290:	02012c23          	sw	zero,56(sp)
    2294:	02012223          	sw	zero,36(sp)
    2298:	02012423          	sw	zero,40(sp)
    229c:	02f12023          	sw	a5,32(sp)
    22a0:	fe1fe0ef          	jal	ra,1280 <sglib_ilist_it_next>
    22a4:	30050663          	beqz	a0,25b0 <benchmark_body+0x718>
    22a8:	01412783          	lw	a5,20(sp)
    22ac:	01c10513          	addi	a0,sp,28
    22b0:	00178793          	addi	a5,a5,1
    22b4:	00f12a23          	sw	a5,20(sp)
    22b8:	b98ff0ef          	jal	ra,1650 <sglib_hashed_ilist_it_next>
    22bc:	fe0516e3          	bnez	a0,22a8 <benchmark_body+0x410>
    22c0:	000a8b93          	mv	s7,s5
    22c4:	00000c93          	li	s9,0
    22c8:	00e00613          	li	a2,14
    22cc:	00c0006f          	j	22d8 <benchmark_body+0x440>
    22d0:	000ba603          	lw	a2,0(s7)
    22d4:	004b8b93          	addi	s7,s7,4
    22d8:	002c9713          	slli	a4,s9,0x2
    22dc:	45070793          	addi	a5,a4,1104
    22e0:	01010713          	addi	a4,sp,16
    22e4:	00e78733          	add	a4,a5,a4
    22e8:	001c8513          	addi	a0,s9,1
    22ec:	06500593          	li	a1,101
    22f0:	bcc72e23          	sw	a2,-1060(a4)
    22f4:	225000ef          	jal	ra,2d18 <__modsi3>
    22f8:	00050c93          	mv	s9,a0
    22fc:	fc8b9ae3          	bne	s7,s0,22d0 <benchmark_body+0x438>
    2300:	00000513          	li	a0,0
    2304:	020c8a63          	beqz	s9,2338 <benchmark_body+0x4a0>
    2308:	00251693          	slli	a3,a0,0x2
    230c:	01010713          	addi	a4,sp,16
    2310:	45068793          	addi	a5,a3,1104
    2314:	00e786b3          	add	a3,a5,a4
    2318:	bdc6a683          	lw	a3,-1060(a3)
    231c:	01412703          	lw	a4,20(sp)
    2320:	00150513          	addi	a0,a0,1
    2324:	06500593          	li	a1,101
    2328:	00d70733          	add	a4,a4,a3
    232c:	00e12a23          	sw	a4,20(sp)
    2330:	1e9000ef          	jal	ra,2d18 <__modsi3>
    2334:	fcac9ae3          	bne	s9,a0,2308 <benchmark_body+0x470>
    2338:	03c10813          	addi	a6,sp,60
    233c:	000a8893          	mv	a7,s5
    2340:	00000793          	li	a5,0
    2344:	00e00613          	li	a2,14
    2348:	06400313          	li	t1,100
    234c:	00c82023          	sw	a2,0(a6)
    2350:	00178513          	addi	a0,a5,1
    2354:	00951e63          	bne	a0,s1,2370 <benchmark_body+0x4d8>
    2358:	0480006f          	j	23a0 <benchmark_body+0x508>
    235c:	bcc72e23          	sw	a2,-1060(a4)
    2360:	bcb7ae23          	sw	a1,-1060(a5)
    2364:	02068c63          	beqz	a3,239c <benchmark_body+0x504>
    2368:	bdc72603          	lw	a2,-1060(a4)
    236c:	00068793          	mv	a5,a3
    2370:	4017d693          	srai	a3,a5,0x1
    2374:	00269713          	slli	a4,a3,0x2
    2378:	01010593          	addi	a1,sp,16
    237c:	45070713          	addi	a4,a4,1104
    2380:	00b70733          	add	a4,a4,a1
    2384:	bdc72583          	lw	a1,-1060(a4)
    2388:	00279793          	slli	a5,a5,0x2
    238c:	45078793          	addi	a5,a5,1104
    2390:	01010e13          	addi	t3,sp,16
    2394:	01c787b3          	add	a5,a5,t3
    2398:	fcc5c2e3          	blt	a1,a2,235c <benchmark_body+0x4c4>
    239c:	00650c63          	beq	a0,t1,23b4 <benchmark_body+0x51c>
    23a0:	0008a603          	lw	a2,0(a7)
    23a4:	00480813          	addi	a6,a6,4
    23a8:	00488893          	addi	a7,a7,4
    23ac:	00050793          	mv	a5,a0
    23b0:	f9dff06f          	j	234c <benchmark_body+0x4b4>
    23b4:	03c12803          	lw	a6,60(sp)
    23b8:	1c810893          	addi	a7,sp,456
    23bc:	01412783          	lw	a5,20(sp)
    23c0:	fff50513          	addi	a0,a0,-1
    23c4:	010787b3          	add	a5,a5,a6
    23c8:	0008a803          	lw	a6,0(a7)
    23cc:	00f12a23          	sw	a5,20(sp)
    23d0:	03012e23          	sw	a6,60(sp)
    23d4:	06a4cc63          	blt	s1,a0,244c <benchmark_body+0x5b4>
    23d8:	10051863          	bnez	a0,24e8 <benchmark_body+0x650>
    23dc:	00012c23          	sw	zero,24(sp)
    23e0:	00000613          	li	a2,0
    23e4:	00e00c93          	li	s9,14
    23e8:	02060063          	beqz	a2,2408 <benchmark_body+0x570>
    23ec:	00060713          	mv	a4,a2
    23f0:	00072783          	lw	a5,0(a4)
    23f4:	40fc87b3          	sub	a5,s9,a5
    23f8:	0407c463          	bltz	a5,2440 <benchmark_body+0x5a8>
    23fc:	02078a63          	beqz	a5,2430 <benchmark_body+0x598>
    2400:	00c72703          	lw	a4,12(a4)
    2404:	fe0716e3          	bnez	a4,23f0 <benchmark_body+0x558>
    2408:	01000513          	li	a0,16
    240c:	740000ef          	jal	ra,2b4c <malloc_beebs>
    2410:	00050593          	mv	a1,a0
    2414:	01952023          	sw	s9,0(a0)
    2418:	00052623          	sw	zero,12(a0)
    241c:	00052423          	sw	zero,8(a0)
    2420:	01810513          	addi	a0,sp,24
    2424:	a14fe0ef          	jal	ra,638 <sglib___rbtree_add_recursive.constprop.0>
    2428:	01812603          	lw	a2,24(sp)
    242c:	00060223          	sb	zero,4(a2)
    2430:	0fa40463          	beq	s0,s10,2518 <benchmark_body+0x680>
    2434:	000d2c83          	lw	s9,0(s10)
    2438:	004d0d13          	addi	s10,s10,4
    243c:	fadff06f          	j	23e8 <benchmark_body+0x550>
    2440:	00872703          	lw	a4,8(a4)
    2444:	fa0716e3          	bnez	a4,23f0 <benchmark_body+0x558>
    2448:	fc1ff06f          	j	2408 <benchmark_body+0x570>
    244c:	00000593          	li	a1,0
    2450:	00200793          	li	a5,2
    2454:	00100313          	li	t1,1
    2458:	00231713          	slli	a4,t1,0x2
    245c:	01010e13          	addi	t3,sp,16
    2460:	45070713          	addi	a4,a4,1104
    2464:	01c70733          	add	a4,a4,t3
    2468:	00259613          	slli	a2,a1,0x2
    246c:	bdc72703          	lw	a4,-1060(a4)
    2470:	45060613          	addi	a2,a2,1104
    2474:	00279693          	slli	a3,a5,0x2
    2478:	45068693          	addi	a3,a3,1104
    247c:	01c60e33          	add	t3,a2,t3
    2480:	01010613          	addi	a2,sp,16
    2484:	00c68633          	add	a2,a3,a2
    2488:	00078693          	mv	a3,a5
    248c:	06e84263          	blt	a6,a4,24f0 <benchmark_body+0x658>
    2490:	04a7da63          	bge	a5,a0,24e4 <benchmark_body+0x64c>
    2494:	bdce2703          	lw	a4,-1060(t3)
    2498:	bdc62783          	lw	a5,-1060(a2)
    249c:	04f75463          	bge	a4,a5,24e4 <benchmark_body+0x64c>
    24a0:	00269713          	slli	a4,a3,0x2
    24a4:	45070793          	addi	a5,a4,1104
    24a8:	00259613          	slli	a2,a1,0x2
    24ac:	01010713          	addi	a4,sp,16
    24b0:	00e78733          	add	a4,a5,a4
    24b4:	45060793          	addi	a5,a2,1104
    24b8:	01010613          	addi	a2,sp,16
    24bc:	00c78633          	add	a2,a5,a2
    24c0:	00169793          	slli	a5,a3,0x1
    24c4:	00178313          	addi	t1,a5,1
    24c8:	00d58e63          	beq	a1,a3,24e4 <benchmark_body+0x64c>
    24cc:	bdc72e03          	lw	t3,-1060(a4)
    24d0:	00278793          	addi	a5,a5,2
    24d4:	00068593          	mv	a1,a3
    24d8:	bdc62e23          	sw	t3,-1060(a2)
    24dc:	bd072e23          	sw	a6,-1060(a4)
    24e0:	f6a34ce3          	blt	t1,a0,2458 <benchmark_body+0x5c0>
    24e4:	03c12803          	lw	a6,60(sp)
    24e8:	ffc88893          	addi	a7,a7,-4
    24ec:	ed1ff06f          	j	23bc <benchmark_body+0x524>
    24f0:	00030693          	mv	a3,t1
    24f4:	faa7d6e3          	bge	a5,a0,24a0 <benchmark_body+0x608>
    24f8:	00279613          	slli	a2,a5,0x2
    24fc:	45060613          	addi	a2,a2,1104
    2500:	01010313          	addi	t1,sp,16
    2504:	00660633          	add	a2,a2,t1
    2508:	bdc62603          	lw	a2,-1060(a2)
    250c:	f8c75ae3          	bge	a4,a2,24a0 <benchmark_body+0x608>
    2510:	00078693          	mv	a3,a5
    2514:	f8dff06f          	j	24a0 <benchmark_body+0x608>
    2518:	000107b7          	lui	a5,0x10
    251c:	00178793          	addi	a5,a5,1 # 10001 <array+0x1>
    2520:	1d010513          	addi	a0,sp,464
    2524:	44f12a23          	sw	a5,1108(sp)
    2528:	44012c23          	sw	zero,1112(sp)
    252c:	44012e23          	sw	zero,1116(sp)
    2530:	1c010a23          	sb	zero,468(sp)
    2534:	24c12a23          	sw	a2,596(sp)
    2538:	fbcff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    253c:	1d012783          	lw	a5,464(sp)
    2540:	02078263          	beqz	a5,2564 <benchmark_body+0x6cc>
    2544:	01412703          	lw	a4,20(sp)
    2548:	0007a783          	lw	a5,0(a5)
    254c:	1d010513          	addi	a0,sp,464
    2550:	00f707b3          	add	a5,a4,a5
    2554:	00f12a23          	sw	a5,20(sp)
    2558:	f9cff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    255c:	1d012783          	lw	a5,464(sp)
    2560:	fe0792e3          	bnez	a5,2544 <benchmark_body+0x6ac>
    2564:	00c12783          	lw	a5,12(sp)
    2568:	001c0c13          	addi	s8,s8,1
    256c:	9b8796e3          	bne	a5,s8,1f18 <benchmark_body+0x80>
    2570:	49c12083          	lw	ra,1180(sp)
    2574:	49812403          	lw	s0,1176(sp)
    2578:	01412503          	lw	a0,20(sp)
    257c:	49412483          	lw	s1,1172(sp)
    2580:	49012903          	lw	s2,1168(sp)
    2584:	48c12983          	lw	s3,1164(sp)
    2588:	48812a03          	lw	s4,1160(sp)
    258c:	48412a83          	lw	s5,1156(sp)
    2590:	48012b03          	lw	s6,1152(sp)
    2594:	47c12b83          	lw	s7,1148(sp)
    2598:	47812c03          	lw	s8,1144(sp)
    259c:	47412c83          	lw	s9,1140(sp)
    25a0:	47012d03          	lw	s10,1136(sp)
    25a4:	46c12d83          	lw	s11,1132(sp)
    25a8:	4a010113          	addi	sp,sp,1184
    25ac:	00008067          	ret
    25b0:	01c10513          	addi	a0,sp,28
    25b4:	89cff0ef          	jal	ra,1650 <sglib_hashed_ilist_it_next>
    25b8:	d00504e3          	beqz	a0,22c0 <benchmark_body+0x428>
    25bc:	cedff06f          	j	22a8 <benchmark_body+0x410>
    25c0:	00068713          	mv	a4,a3
    25c4:	411587b3          	sub	a5,a1,a7
    25c8:	00058693          	mv	a3,a1
    25cc:	9fdff06f          	j	1fc8 <benchmark_body+0x130>

000025d0 <sglib__rbtree_it_init>:
    25d0:	fe010113          	addi	sp,sp,-32
    25d4:	00812c23          	sw	s0,24(sp)
    25d8:	01312623          	sw	s3,12(sp)
    25dc:	01412423          	sw	s4,8(sp)
    25e0:	00112e23          	sw	ra,28(sp)
    25e4:	00912a23          	sw	s1,20(sp)
    25e8:	01212823          	sw	s2,16(sp)
    25ec:	28c51323          	sh	a2,646(a0)
    25f0:	28e52423          	sw	a4,648(a0)
    25f4:	28d52623          	sw	a3,652(a0)
    25f8:	00050993          	mv	s3,a0
    25fc:	00060a13          	mv	s4,a2
    2600:	00058413          	mv	s0,a1
    2604:	06070263          	beqz	a4,2668 <sglib__rbtree_it_init+0x98>
    2608:	00068913          	mv	s2,a3
    260c:	00070493          	mv	s1,a4
    2610:	0c068263          	beqz	a3,26d4 <sglib__rbtree_it_init+0x104>
    2614:	02040063          	beqz	s0,2634 <sglib__rbtree_it_init+0x64>
    2618:	00040593          	mv	a1,s0
    261c:	00048513          	mv	a0,s1
    2620:	000900e7          	jalr	s2
    2624:	02054e63          	bltz	a0,2660 <sglib__rbtree_it_init+0x90>
    2628:	04050263          	beqz	a0,266c <sglib__rbtree_it_init+0x9c>
    262c:	00c42403          	lw	s0,12(s0)
    2630:	fe0414e3          	bnez	s0,2618 <sglib__rbtree_it_init+0x48>
    2634:	01c12083          	lw	ra,28(sp)
    2638:	01812403          	lw	s0,24(sp)
    263c:	28099223          	sh	zero,644(s3)
    2640:	0009a023          	sw	zero,0(s3)
    2644:	01412483          	lw	s1,20(sp)
    2648:	01012903          	lw	s2,16(sp)
    264c:	00c12983          	lw	s3,12(sp)
    2650:	00812a03          	lw	s4,8(sp)
    2654:	00000513          	li	a0,0
    2658:	02010113          	addi	sp,sp,32
    265c:	00008067          	ret
    2660:	00842403          	lw	s0,8(s0)
    2664:	fb1ff06f          	j	2614 <sglib__rbtree_it_init+0x44>
    2668:	fc0586e3          	beqz	a1,2634 <sglib__rbtree_it_init+0x64>
    266c:	00100793          	li	a5,1
    2670:	28f99223          	sh	a5,644(s3)
    2674:	00098223          	sb	zero,4(s3)
    2678:	0889a223          	sw	s0,132(s3)
    267c:	020a1663          	bnez	s4,26a8 <sglib__rbtree_it_init+0xd8>
    2680:	0089a023          	sw	s0,0(s3)
    2684:	01c12083          	lw	ra,28(sp)
    2688:	00040513          	mv	a0,s0
    268c:	01812403          	lw	s0,24(sp)
    2690:	01412483          	lw	s1,20(sp)
    2694:	01012903          	lw	s2,16(sp)
    2698:	00c12983          	lw	s3,12(sp)
    269c:	00812a03          	lw	s4,8(sp)
    26a0:	02010113          	addi	sp,sp,32
    26a4:	00008067          	ret
    26a8:	00098513          	mv	a0,s3
    26ac:	e48ff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    26b0:	01c12083          	lw	ra,28(sp)
    26b4:	01812403          	lw	s0,24(sp)
    26b8:	0009a503          	lw	a0,0(s3)
    26bc:	01412483          	lw	s1,20(sp)
    26c0:	01012903          	lw	s2,16(sp)
    26c4:	00c12983          	lw	s3,12(sp)
    26c8:	00812a03          	lw	s4,8(sp)
    26cc:	02010113          	addi	sp,sp,32
    26d0:	00008067          	ret
    26d4:	f60580e3          	beqz	a1,2634 <sglib__rbtree_it_init+0x64>
    26d8:	00072703          	lw	a4,0(a4)
    26dc:	00042783          	lw	a5,0(s0)
    26e0:	40f707b3          	sub	a5,a4,a5
    26e4:	0007ce63          	bltz	a5,2700 <sglib__rbtree_it_init+0x130>
    26e8:	f80782e3          	beqz	a5,266c <sglib__rbtree_it_init+0x9c>
    26ec:	00c42403          	lw	s0,12(s0)
    26f0:	f40402e3          	beqz	s0,2634 <sglib__rbtree_it_init+0x64>
    26f4:	00042783          	lw	a5,0(s0)
    26f8:	40f707b3          	sub	a5,a4,a5
    26fc:	fe07d6e3          	bgez	a5,26e8 <sglib__rbtree_it_init+0x118>
    2700:	00842403          	lw	s0,8(s0)
    2704:	fe0418e3          	bnez	s0,26f4 <sglib__rbtree_it_init+0x124>
    2708:	f2dff06f          	j	2634 <sglib__rbtree_it_init+0x64>

0000270c <sglib_rbtree_it_init>:
    270c:	ff010113          	addi	sp,sp,-16
    2710:	00812423          	sw	s0,8(sp)
    2714:	00112623          	sw	ra,12(sp)
    2718:	00200793          	li	a5,2
    271c:	28f51323          	sh	a5,646(a0)
    2720:	28052423          	sw	zero,648(a0)
    2724:	28052623          	sw	zero,652(a0)
    2728:	00050413          	mv	s0,a0
    272c:	02058663          	beqz	a1,2758 <sglib_rbtree_it_init+0x4c>
    2730:	00100793          	li	a5,1
    2734:	28f51223          	sh	a5,644(a0)
    2738:	00050223          	sb	zero,4(a0)
    273c:	08b52223          	sw	a1,132(a0)
    2740:	db4ff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    2744:	00042503          	lw	a0,0(s0)
    2748:	00c12083          	lw	ra,12(sp)
    274c:	00812403          	lw	s0,8(sp)
    2750:	01010113          	addi	sp,sp,16
    2754:	00008067          	ret
    2758:	00c12083          	lw	ra,12(sp)
    275c:	00812403          	lw	s0,8(sp)
    2760:	28051223          	sh	zero,644(a0)
    2764:	00052023          	sw	zero,0(a0)
    2768:	00000513          	li	a0,0
    276c:	01010113          	addi	sp,sp,16
    2770:	00008067          	ret

00002774 <sglib_rbtree_it_init_preorder>:
    2774:	00050793          	mv	a5,a0
    2778:	28079323          	sh	zero,646(a5)
    277c:	2807a423          	sw	zero,648(a5)
    2780:	2807a623          	sw	zero,652(a5)
    2784:	00058513          	mv	a0,a1
    2788:	00058e63          	beqz	a1,27a4 <sglib_rbtree_it_init_preorder+0x30>
    278c:	00100713          	li	a4,1
    2790:	28e79223          	sh	a4,644(a5)
    2794:	00078223          	sb	zero,4(a5)
    2798:	08b7a223          	sw	a1,132(a5)
    279c:	00a7a023          	sw	a0,0(a5)
    27a0:	00008067          	ret
    27a4:	28079223          	sh	zero,644(a5)
    27a8:	00a7a023          	sw	a0,0(a5)
    27ac:	00008067          	ret

000027b0 <sglib_rbtree_it_init_inorder>:
    27b0:	ff010113          	addi	sp,sp,-16
    27b4:	00812423          	sw	s0,8(sp)
    27b8:	00112623          	sw	ra,12(sp)
    27bc:	00100793          	li	a5,1
    27c0:	28f51323          	sh	a5,646(a0)
    27c4:	28052423          	sw	zero,648(a0)
    27c8:	28052623          	sw	zero,652(a0)
    27cc:	00050413          	mv	s0,a0
    27d0:	02058463          	beqz	a1,27f8 <sglib_rbtree_it_init_inorder+0x48>
    27d4:	28f51223          	sh	a5,644(a0)
    27d8:	00050223          	sb	zero,4(a0)
    27dc:	08b52223          	sw	a1,132(a0)
    27e0:	d14ff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    27e4:	00042503          	lw	a0,0(s0)
    27e8:	00c12083          	lw	ra,12(sp)
    27ec:	00812403          	lw	s0,8(sp)
    27f0:	01010113          	addi	sp,sp,16
    27f4:	00008067          	ret
    27f8:	00c12083          	lw	ra,12(sp)
    27fc:	00812403          	lw	s0,8(sp)
    2800:	28051223          	sh	zero,644(a0)
    2804:	00052023          	sw	zero,0(a0)
    2808:	00000513          	li	a0,0
    280c:	01010113          	addi	sp,sp,16
    2810:	00008067          	ret

00002814 <sglib_rbtree_it_init_postorder>:
    2814:	ff010113          	addi	sp,sp,-16
    2818:	00812423          	sw	s0,8(sp)
    281c:	00112623          	sw	ra,12(sp)
    2820:	00200793          	li	a5,2
    2824:	28f51323          	sh	a5,646(a0)
    2828:	28052423          	sw	zero,648(a0)
    282c:	28052623          	sw	zero,652(a0)
    2830:	00050413          	mv	s0,a0
    2834:	02058663          	beqz	a1,2860 <sglib_rbtree_it_init_postorder+0x4c>
    2838:	00100793          	li	a5,1
    283c:	28f51223          	sh	a5,644(a0)
    2840:	00050223          	sb	zero,4(a0)
    2844:	08b52223          	sw	a1,132(a0)
    2848:	cacff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    284c:	00042503          	lw	a0,0(s0)
    2850:	00c12083          	lw	ra,12(sp)
    2854:	00812403          	lw	s0,8(sp)
    2858:	01010113          	addi	sp,sp,16
    285c:	00008067          	ret
    2860:	00c12083          	lw	ra,12(sp)
    2864:	00812403          	lw	s0,8(sp)
    2868:	28051223          	sh	zero,644(a0)
    286c:	00052023          	sw	zero,0(a0)
    2870:	00000513          	li	a0,0
    2874:	01010113          	addi	sp,sp,16
    2878:	00008067          	ret

0000287c <sglib_rbtree_it_init_on_equal>:
    287c:	ff010113          	addi	sp,sp,-16
    2880:	00068713          	mv	a4,a3
    2884:	00060693          	mv	a3,a2
    2888:	00100613          	li	a2,1
    288c:	00112623          	sw	ra,12(sp)
    2890:	d41ff0ef          	jal	ra,25d0 <sglib__rbtree_it_init>
    2894:	00c12083          	lw	ra,12(sp)
    2898:	01010113          	addi	sp,sp,16
    289c:	00008067          	ret

000028a0 <sglib_rbtree_it_current>:
    28a0:	00052503          	lw	a0,0(a0)
    28a4:	00008067          	ret

000028a8 <sglib_rbtree_it_next>:
    28a8:	ff010113          	addi	sp,sp,-16
    28ac:	00812423          	sw	s0,8(sp)
    28b0:	00112623          	sw	ra,12(sp)
    28b4:	00050413          	mv	s0,a0
    28b8:	c3cff0ef          	jal	ra,1cf4 <sglib__rbtree_it_compute_current_elem>
    28bc:	00042503          	lw	a0,0(s0)
    28c0:	00c12083          	lw	ra,12(sp)
    28c4:	00812403          	lw	s0,8(sp)
    28c8:	01010113          	addi	sp,sp,16
    28cc:	00008067          	ret

000028d0 <sglib___rbtree_consistency_check>:
    28d0:	fe010113          	addi	sp,sp,-32
    28d4:	fff00793          	li	a5,-1
    28d8:	00112e23          	sw	ra,28(sp)
    28dc:	00812c23          	sw	s0,24(sp)
    28e0:	00f12623          	sw	a5,12(sp)
    28e4:	02050a63          	beqz	a0,2918 <sglib___rbtree_consistency_check+0x48>
    28e8:	00454703          	lbu	a4,4(a0)
    28ec:	00100793          	li	a5,1
    28f0:	00050413          	mv	s0,a0
    28f4:	00852503          	lw	a0,8(a0)
    28f8:	02f70863          	beq	a4,a5,2928 <sglib___rbtree_consistency_check+0x58>
    28fc:	00100613          	li	a2,1
    2900:	00c10593          	addi	a1,sp,12
    2904:	ca9fd0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
    2908:	00c42503          	lw	a0,12(s0)
    290c:	00100613          	li	a2,1
    2910:	00c10593          	addi	a1,sp,12
    2914:	c99fd0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
    2918:	01c12083          	lw	ra,28(sp)
    291c:	01812403          	lw	s0,24(sp)
    2920:	02010113          	addi	sp,sp,32
    2924:	00008067          	ret
    2928:	00c10593          	addi	a1,sp,12
    292c:	00000613          	li	a2,0
    2930:	c7dfd0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
    2934:	00c42503          	lw	a0,12(s0)
    2938:	00c10593          	addi	a1,sp,12
    293c:	00000613          	li	a2,0
    2940:	c6dfd0ef          	jal	ra,5ac <sglib___rbtree_consistency_check_recursive>
    2944:	01c12083          	lw	ra,28(sp)
    2948:	01812403          	lw	s0,24(sp)
    294c:	02010113          	addi	sp,sp,32
    2950:	00008067          	ret

00002954 <verify_benchmark>:
    2954:	000127b7          	lui	a5,0x12
    2958:	5087a703          	lw	a4,1288(a5) # 12508 <the_list>
    295c:	fe010113          	addi	sp,sp,-32
    2960:	01212823          	sw	s2,16(sp)
    2964:	00112e23          	sw	ra,28(sp)
    2968:	00812c23          	sw	s0,24(sp)
    296c:	00912a23          	sw	s1,20(sp)
    2970:	01312623          	sw	s3,12(sp)
    2974:	01412423          	sw	s4,8(sp)
    2978:	01512223          	sw	s5,4(sp)
    297c:	00050913          	mv	s2,a0
    2980:	04070a63          	beqz	a4,29d4 <verify_benchmark+0x80>
    2984:	00070793          	mv	a5,a4
    2988:	00872703          	lw	a4,8(a4)
    298c:	fe071ce3          	bnez	a4,2984 <verify_benchmark+0x30>
    2990:	0007a683          	lw	a3,0(a5)
    2994:	00e69c63          	bne	a3,a4,29ac <verify_benchmark+0x58>
    2998:	0047a783          	lw	a5,4(a5)
    299c:	00170713          	addi	a4,a4,1
    29a0:	02078a63          	beqz	a5,29d4 <verify_benchmark+0x80>
    29a4:	0007a683          	lw	a3,0(a5)
    29a8:	fee688e3          	beq	a3,a4,2998 <verify_benchmark+0x44>
    29ac:	00000513          	li	a0,0
    29b0:	01c12083          	lw	ra,28(sp)
    29b4:	01812403          	lw	s0,24(sp)
    29b8:	01412483          	lw	s1,20(sp)
    29bc:	01012903          	lw	s2,16(sp)
    29c0:	00c12983          	lw	s3,12(sp)
    29c4:	00812a03          	lw	s4,8(sp)
    29c8:	00412a83          	lw	s5,4(sp)
    29cc:	02010113          	addi	sp,sp,32
    29d0:	00008067          	ret
    29d4:	000109b7          	lui	s3,0x10
    29d8:	00098993          	mv	s3,s3
    29dc:	00010ab7          	lui	s5,0x10
    29e0:	00498493          	addi	s1,s3,4 # 10004 <array+0x4>
    29e4:	00e00413          	li	s0,14
    29e8:	19098993          	addi	s3,s3,400
    29ec:	320a8a13          	addi	s4,s5,800 # 10320 <array2>
    29f0:	01400593          	li	a1,20
    29f4:	00040513          	mv	a0,s0
    29f8:	2ec000ef          	jal	ra,2ce4 <__umodsi3>
    29fc:	00251793          	slli	a5,a0,0x2
    2a00:	00fa07b3          	add	a5,s4,a5
    2a04:	1907a783          	lw	a5,400(a5)
    2a08:	00079863          	bnez	a5,2a18 <verify_benchmark+0xc4>
    2a0c:	fa1ff06f          	j	29ac <verify_benchmark+0x58>
    2a10:	0047a783          	lw	a5,4(a5)
    2a14:	f8078ce3          	beqz	a5,29ac <verify_benchmark+0x58>
    2a18:	0007a703          	lw	a4,0(a5)
    2a1c:	fee41ae3          	bne	s0,a4,2a10 <verify_benchmark+0xbc>
    2a20:	00998863          	beq	s3,s1,2a30 <verify_benchmark+0xdc>
    2a24:	0004a403          	lw	s0,0(s1)
    2a28:	00448493          	addi	s1,s1,4
    2a2c:	fc5ff06f          	j	29f0 <verify_benchmark+0x9c>
    2a30:	000047b7          	lui	a5,0x4
    2a34:	aca78793          	addi	a5,a5,-1334 # 3aca <main+0xc26>
    2a38:	f6f91ae3          	bne	s2,a5,29ac <verify_benchmark+0x58>
    2a3c:	00010537          	lui	a0,0x10
    2a40:	50050513          	addi	a0,a0,1280 # 10500 <heap>
    2a44:	0e8000ef          	jal	ra,2b2c <check_heap_beebs>
    2a48:	f60502e3          	beqz	a0,29ac <verify_benchmark+0x58>
    2a4c:	19000613          	li	a2,400
    2a50:	00098593          	mv	a1,s3
    2a54:	320a8513          	addi	a0,s5,800
    2a58:	2f0000ef          	jal	ra,2d48 <memcmp>
    2a5c:	00153513          	seqz	a0,a0
    2a60:	f51ff06f          	j	29b0 <verify_benchmark+0x5c>

00002a64 <initialise_benchmark>:
    2a64:	00008067          	ret

00002a68 <warm_caches>:
    2a68:	ff010113          	addi	sp,sp,-16
    2a6c:	00112623          	sw	ra,12(sp)
    2a70:	c28ff0ef          	jal	ra,1e98 <benchmark_body>
    2a74:	00c12083          	lw	ra,12(sp)
    2a78:	01010113          	addi	sp,sp,16
    2a7c:	00008067          	ret

00002a80 <benchmark>:
    2a80:	00001537          	lui	a0,0x1
    2a84:	ff010113          	addi	sp,sp,-16
    2a88:	ce450513          	addi	a0,a0,-796 # ce4 <sglib_dllist_sort+0x9c>
    2a8c:	00112623          	sw	ra,12(sp)
    2a90:	c08ff0ef          	jal	ra,1e98 <benchmark_body>
    2a94:	00c12083          	lw	ra,12(sp)
    2a98:	01010113          	addi	sp,sp,16
    2a9c:	00008067          	ret

00002aa0 <rand_beebs>:
    2aa0:	000126b7          	lui	a3,0x12
    2aa4:	5186a703          	lw	a4,1304(a3) # 12518 <seed>
    2aa8:	00871793          	slli	a5,a4,0x8
    2aac:	40e787b3          	sub	a5,a5,a4
    2ab0:	00379793          	slli	a5,a5,0x3
    2ab4:	00e787b3          	add	a5,a5,a4
    2ab8:	00779793          	slli	a5,a5,0x7
    2abc:	00e787b3          	add	a5,a5,a4
    2ac0:	00379793          	slli	a5,a5,0x3
    2ac4:	40e787b3          	sub	a5,a5,a4
    2ac8:	00579613          	slli	a2,a5,0x5
    2acc:	00c78533          	add	a0,a5,a2
    2ad0:	00251513          	slli	a0,a0,0x2
    2ad4:	40e50533          	sub	a0,a0,a4
    2ad8:	00251513          	slli	a0,a0,0x2
    2adc:	000037b7          	lui	a5,0x3
    2ae0:	00e50533          	add	a0,a0,a4
    2ae4:	03978793          	addi	a5,a5,57 # 3039 <main+0x195>
    2ae8:	00f50533          	add	a0,a0,a5
    2aec:	00151513          	slli	a0,a0,0x1
    2af0:	00155513          	srli	a0,a0,0x1
    2af4:	50a6ac23          	sw	a0,1304(a3)
    2af8:	01055513          	srli	a0,a0,0x10
    2afc:	00008067          	ret

00002b00 <srand_beebs>:
    2b00:	000127b7          	lui	a5,0x12
    2b04:	50a7ac23          	sw	a0,1304(a5) # 12518 <seed>
    2b08:	00008067          	ret

00002b0c <init_heap_beebs>:
    2b0c:	000127b7          	lui	a5,0x12
    2b10:	00b505b3          	add	a1,a0,a1
    2b14:	50a7aa23          	sw	a0,1300(a5) # 12514 <heap_ptr>
    2b18:	000127b7          	lui	a5,0x12
    2b1c:	50b7a823          	sw	a1,1296(a5) # 12510 <heap_end>
    2b20:	000127b7          	lui	a5,0x12
    2b24:	5007a623          	sw	zero,1292(a5) # 1250c <heap_requested>
    2b28:	00008067          	ret

00002b2c <check_heap_beebs>:
    2b2c:	000127b7          	lui	a5,0x12
    2b30:	50c7a703          	lw	a4,1292(a5) # 1250c <heap_requested>
    2b34:	000127b7          	lui	a5,0x12
    2b38:	5107a783          	lw	a5,1296(a5) # 12510 <heap_end>
    2b3c:	00e50533          	add	a0,a0,a4
    2b40:	00a7b533          	sltu	a0,a5,a0
    2b44:	00154513          	xori	a0,a0,1
    2b48:	00008067          	ret

00002b4c <malloc_beebs>:
    2b4c:	000126b7          	lui	a3,0x12
    2b50:	50c6a783          	lw	a5,1292(a3) # 1250c <heap_requested>
    2b54:	00012637          	lui	a2,0x12
    2b58:	51462703          	lw	a4,1300(a2) # 12514 <heap_ptr>
    2b5c:	000125b7          	lui	a1,0x12
    2b60:	5105a583          	lw	a1,1296(a1) # 12510 <heap_end>
    2b64:	00a787b3          	add	a5,a5,a0
    2b68:	50f6a623          	sw	a5,1292(a3)
    2b6c:	00a707b3          	add	a5,a4,a0
    2b70:	00f5ea63          	bltu	a1,a5,2b84 <malloc_beebs+0x38>
    2b74:	00050863          	beqz	a0,2b84 <malloc_beebs+0x38>
    2b78:	50f62a23          	sw	a5,1300(a2)
    2b7c:	00070513          	mv	a0,a4
    2b80:	00008067          	ret
    2b84:	00000713          	li	a4,0
    2b88:	00070513          	mv	a0,a4
    2b8c:	00008067          	ret

00002b90 <calloc_beebs>:
    2b90:	ff010113          	addi	sp,sp,-16
    2b94:	00112623          	sw	ra,12(sp)
    2b98:	0d8000ef          	jal	ra,2c70 <__mulsi3>
    2b9c:	000126b7          	lui	a3,0x12
    2ba0:	50c6a703          	lw	a4,1292(a3) # 1250c <heap_requested>
    2ba4:	000125b7          	lui	a1,0x12
    2ba8:	00050613          	mv	a2,a0
    2bac:	5145a783          	lw	a5,1300(a1) # 12514 <heap_ptr>
    2bb0:	00012537          	lui	a0,0x12
    2bb4:	51052503          	lw	a0,1296(a0) # 12510 <heap_end>
    2bb8:	00c70733          	add	a4,a4,a2
    2bbc:	50e6a623          	sw	a4,1292(a3)
    2bc0:	00c78733          	add	a4,a5,a2
    2bc4:	02e56863          	bltu	a0,a4,2bf4 <calloc_beebs+0x64>
    2bc8:	02060663          	beqz	a2,2bf4 <calloc_beebs+0x64>
    2bcc:	50e5aa23          	sw	a4,1300(a1)
    2bd0:	00078a63          	beqz	a5,2be4 <calloc_beebs+0x54>
    2bd4:	00078513          	mv	a0,a5
    2bd8:	00000593          	li	a1,0
    2bdc:	1ec000ef          	jal	ra,2dc8 <memset>
    2be0:	00050793          	mv	a5,a0
    2be4:	00c12083          	lw	ra,12(sp)
    2be8:	00078513          	mv	a0,a5
    2bec:	01010113          	addi	sp,sp,16
    2bf0:	00008067          	ret
    2bf4:	00c12083          	lw	ra,12(sp)
    2bf8:	00000793          	li	a5,0
    2bfc:	00078513          	mv	a0,a5
    2c00:	01010113          	addi	sp,sp,16
    2c04:	00008067          	ret

00002c08 <realloc_beebs>:
    2c08:	00012737          	lui	a4,0x12
    2c0c:	50c72783          	lw	a5,1292(a4) # 1250c <heap_requested>
    2c10:	00012637          	lui	a2,0x12
    2c14:	51462683          	lw	a3,1300(a2) # 12514 <heap_ptr>
    2c18:	00012837          	lui	a6,0x12
    2c1c:	51082803          	lw	a6,1296(a6) # 12510 <heap_end>
    2c20:	00b787b3          	add	a5,a5,a1
    2c24:	50f72623          	sw	a5,1292(a4)
    2c28:	00b687b3          	add	a5,a3,a1
    2c2c:	02f86a63          	bltu	a6,a5,2c60 <realloc_beebs+0x58>
    2c30:	02058863          	beqz	a1,2c60 <realloc_beebs+0x58>
    2c34:	50f62a23          	sw	a5,1300(a2)
    2c38:	02050063          	beqz	a0,2c58 <realloc_beebs+0x50>
    2c3c:	00068793          	mv	a5,a3
    2c40:	00b505b3          	add	a1,a0,a1
    2c44:	00054703          	lbu	a4,0(a0)
    2c48:	00150513          	addi	a0,a0,1
    2c4c:	00178793          	addi	a5,a5,1
    2c50:	fee78fa3          	sb	a4,-1(a5)
    2c54:	feb518e3          	bne	a0,a1,2c44 <realloc_beebs+0x3c>
    2c58:	00068513          	mv	a0,a3
    2c5c:	00008067          	ret
    2c60:	00000693          	li	a3,0
    2c64:	00068513          	mv	a0,a3
    2c68:	00008067          	ret

00002c6c <free_beebs>:
    2c6c:	00008067          	ret

00002c70 <__mulsi3>:
    2c70:	00050613          	mv	a2,a0
    2c74:	00000513          	li	a0,0
    2c78:	0015f693          	andi	a3,a1,1
    2c7c:	00068463          	beqz	a3,2c84 <__mulsi3+0x14>
    2c80:	00c50533          	add	a0,a0,a2
    2c84:	0015d593          	srli	a1,a1,0x1
    2c88:	00161613          	slli	a2,a2,0x1
    2c8c:	fe0596e3          	bnez	a1,2c78 <__mulsi3+0x8>
    2c90:	00008067          	ret

00002c94 <__divsi3>:
    2c94:	06054063          	bltz	a0,2cf4 <__umodsi3+0x10>
    2c98:	0605c663          	bltz	a1,2d04 <__umodsi3+0x20>

00002c9c <__udivsi3>:
    2c9c:	00058613          	mv	a2,a1
    2ca0:	00050593          	mv	a1,a0
    2ca4:	fff00513          	li	a0,-1
    2ca8:	02060c63          	beqz	a2,2ce0 <__udivsi3+0x44>
    2cac:	00100693          	li	a3,1
    2cb0:	00b67a63          	bgeu	a2,a1,2cc4 <__udivsi3+0x28>
    2cb4:	00c05863          	blez	a2,2cc4 <__udivsi3+0x28>
    2cb8:	00161613          	slli	a2,a2,0x1
    2cbc:	00169693          	slli	a3,a3,0x1
    2cc0:	feb66ae3          	bltu	a2,a1,2cb4 <__udivsi3+0x18>
    2cc4:	00000513          	li	a0,0
    2cc8:	00c5e663          	bltu	a1,a2,2cd4 <__udivsi3+0x38>
    2ccc:	40c585b3          	sub	a1,a1,a2
    2cd0:	00d56533          	or	a0,a0,a3
    2cd4:	0016d693          	srli	a3,a3,0x1
    2cd8:	00165613          	srli	a2,a2,0x1
    2cdc:	fe0696e3          	bnez	a3,2cc8 <__udivsi3+0x2c>
    2ce0:	00008067          	ret

00002ce4 <__umodsi3>:
    2ce4:	00008293          	mv	t0,ra
    2ce8:	fb5ff0ef          	jal	ra,2c9c <__udivsi3>
    2cec:	00058513          	mv	a0,a1
    2cf0:	00028067          	jr	t0
    2cf4:	40a00533          	neg	a0,a0
    2cf8:	00b04863          	bgtz	a1,2d08 <__umodsi3+0x24>
    2cfc:	40b005b3          	neg	a1,a1
    2d00:	f9dff06f          	j	2c9c <__udivsi3>
    2d04:	40b005b3          	neg	a1,a1
    2d08:	00008293          	mv	t0,ra
    2d0c:	f91ff0ef          	jal	ra,2c9c <__udivsi3>
    2d10:	40a00533          	neg	a0,a0
    2d14:	00028067          	jr	t0

00002d18 <__modsi3>:
    2d18:	00008293          	mv	t0,ra
    2d1c:	0005ca63          	bltz	a1,2d30 <__modsi3+0x18>
    2d20:	00054c63          	bltz	a0,2d38 <__modsi3+0x20>
    2d24:	f79ff0ef          	jal	ra,2c9c <__udivsi3>
    2d28:	00058513          	mv	a0,a1
    2d2c:	00028067          	jr	t0
    2d30:	40b005b3          	neg	a1,a1
    2d34:	fe0558e3          	bgez	a0,2d24 <__modsi3+0xc>
    2d38:	40a00533          	neg	a0,a0
    2d3c:	f61ff0ef          	jal	ra,2c9c <__udivsi3>
    2d40:	40b00533          	neg	a0,a1
    2d44:	00028067          	jr	t0

00002d48 <memcmp>:
    2d48:	00300793          	li	a5,3
    2d4c:	04c7f063          	bgeu	a5,a2,2d8c <memcmp+0x44>
    2d50:	00b567b3          	or	a5,a0,a1
    2d54:	0037f793          	andi	a5,a5,3
    2d58:	00300693          	li	a3,3
    2d5c:	00078a63          	beqz	a5,2d70 <memcmp+0x28>
    2d60:	fff60713          	addi	a4,a2,-1
    2d64:	0300006f          	j	2d94 <memcmp+0x4c>
    2d68:	00000513          	li	a0,0
    2d6c:	00008067          	ret
    2d70:	00052703          	lw	a4,0(a0)
    2d74:	0005a783          	lw	a5,0(a1)
    2d78:	00f71a63          	bne	a4,a5,2d8c <memcmp+0x44>
    2d7c:	00450513          	addi	a0,a0,4
    2d80:	00458593          	addi	a1,a1,4
    2d84:	ffc60613          	addi	a2,a2,-4
    2d88:	fec6e4e3          	bltu	a3,a2,2d70 <memcmp+0x28>
    2d8c:	fff60713          	addi	a4,a2,-1
    2d90:	fc060ce3          	beqz	a2,2d68 <memcmp+0x20>
    2d94:	00050793          	mv	a5,a0
    2d98:	00170713          	addi	a4,a4,1
    2d9c:	00e50533          	add	a0,a0,a4
    2da0:	0007c703          	lbu	a4,0(a5)
    2da4:	0005c683          	lbu	a3,0(a1)
    2da8:	00d71c63          	bne	a4,a3,2dc0 <memcmp+0x78>
    2dac:	00178793          	addi	a5,a5,1
    2db0:	00158593          	addi	a1,a1,1
    2db4:	fea796e3          	bne	a5,a0,2da0 <memcmp+0x58>
    2db8:	00000513          	li	a0,0
    2dbc:	00008067          	ret
    2dc0:	40d70533          	sub	a0,a4,a3
    2dc4:	00008067          	ret

00002dc8 <memset>:
    2dc8:	00f00313          	li	t1,15
    2dcc:	00050713          	mv	a4,a0
    2dd0:	02c37e63          	bgeu	t1,a2,2e0c <memset+0x44>
    2dd4:	00f77793          	andi	a5,a4,15
    2dd8:	0a079063          	bnez	a5,2e78 <memset+0xb0>
    2ddc:	08059263          	bnez	a1,2e60 <memset+0x98>
    2de0:	ff067693          	andi	a3,a2,-16
    2de4:	00f67613          	andi	a2,a2,15
    2de8:	00e686b3          	add	a3,a3,a4
    2dec:	00b72023          	sw	a1,0(a4)
    2df0:	00b72223          	sw	a1,4(a4)
    2df4:	00b72423          	sw	a1,8(a4)
    2df8:	00b72623          	sw	a1,12(a4)
    2dfc:	01070713          	addi	a4,a4,16
    2e00:	fed766e3          	bltu	a4,a3,2dec <memset+0x24>
    2e04:	00061463          	bnez	a2,2e0c <memset+0x44>
    2e08:	00008067          	ret
    2e0c:	40c306b3          	sub	a3,t1,a2
    2e10:	00269693          	slli	a3,a3,0x2
    2e14:	00000297          	auipc	t0,0x0
    2e18:	005686b3          	add	a3,a3,t0
    2e1c:	00c68067          	jr	12(a3)
    2e20:	00b70723          	sb	a1,14(a4)
    2e24:	00b706a3          	sb	a1,13(a4)
    2e28:	00b70623          	sb	a1,12(a4)
    2e2c:	00b705a3          	sb	a1,11(a4)
    2e30:	00b70523          	sb	a1,10(a4)
    2e34:	00b704a3          	sb	a1,9(a4)
    2e38:	00b70423          	sb	a1,8(a4)
    2e3c:	00b703a3          	sb	a1,7(a4)
    2e40:	00b70323          	sb	a1,6(a4)
    2e44:	00b702a3          	sb	a1,5(a4)
    2e48:	00b70223          	sb	a1,4(a4)
    2e4c:	00b701a3          	sb	a1,3(a4)
    2e50:	00b70123          	sb	a1,2(a4)
    2e54:	00b700a3          	sb	a1,1(a4)
    2e58:	00b70023          	sb	a1,0(a4)
    2e5c:	00008067          	ret
    2e60:	0ff5f593          	zext.b	a1,a1
    2e64:	00859693          	slli	a3,a1,0x8
    2e68:	00d5e5b3          	or	a1,a1,a3
    2e6c:	01059693          	slli	a3,a1,0x10
    2e70:	00d5e5b3          	or	a1,a1,a3
    2e74:	f6dff06f          	j	2de0 <memset+0x18>
    2e78:	00279693          	slli	a3,a5,0x2
    2e7c:	00000297          	auipc	t0,0x0
    2e80:	005686b3          	add	a3,a3,t0
    2e84:	00008293          	mv	t0,ra
    2e88:	fa0680e7          	jalr	-96(a3)
    2e8c:	00028093          	mv	ra,t0
    2e90:	ff078793          	addi	a5,a5,-16
    2e94:	40f70733          	sub	a4,a4,a5
    2e98:	00f60633          	add	a2,a2,a5
    2e9c:	f6c378e3          	bgeu	t1,a2,2e0c <memset+0x44>
    2ea0:	f3dff06f          	j	2ddc <memset+0x14>

Disassembly of section .text.startup:

00002ea4 <main>:
    2ea4:	fe010113          	addi	sp,sp,-32
    2ea8:	00112e23          	sw	ra,28(sp)
    2eac:	a14fd0ef          	jal	ra,c0 <initialise_board>
    2eb0:	bb5ff0ef          	jal	ra,2a64 <initialise_benchmark>
    2eb4:	00100513          	li	a0,1
    2eb8:	bb1ff0ef          	jal	ra,2a68 <warm_caches>
    2ebc:	a08fd0ef          	jal	ra,c4 <start_trigger>
    2ec0:	bc1ff0ef          	jal	ra,2a80 <benchmark>
    2ec4:	00a12623          	sw	a0,12(sp)
    2ec8:	a28fd0ef          	jal	ra,f0 <stop_trigger>
    2ecc:	00c12503          	lw	a0,12(sp)
    2ed0:	a85ff0ef          	jal	ra,2954 <verify_benchmark>
    2ed4:	00051a63          	bnez	a0,2ee8 <main+0x44>
    2ed8:	110007b7          	lui	a5,0x11000
    2edc:	fff00713          	li	a4,-1
    2ee0:	00e7a823          	sw	a4,16(a5) # 11000010 <seed+0x10fedaf8>
    2ee4:	00e7aa23          	sw	a4,20(a5)
    2ee8:	110007b7          	lui	a5,0x11000
    2eec:	00100713          	li	a4,1
    2ef0:	08e7a023          	sw	a4,128(a5) # 11000080 <seed+0x10fedb68>
    2ef4:	0000006f          	j	2ef4 <main+0x50>
