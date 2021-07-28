
statemate.elf:     file format elf32-littleriscv


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
  84:	309010ef          	jal	ra,1b8c <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x10fefec4>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x10fefec4>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x10feff44>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0xfeb4>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000107b7          	lui	a5,0x10
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	08a7a023          	sw	a0,128(a5) # 10080 <start_time>
      e4:	08e7a223          	sw	a4,132(a5)
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
     110:	000107b7          	lui	a5,0x10
     114:	0807a583          	lw	a1,128(a5) # 10080 <start_time>
     118:	0847a703          	lw	a4,132(a5)
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

00000150 <generic_KINDERSICHERUNG_CTRL.part.0>:
     150:	00010737          	lui	a4,0x10
     154:	09474783          	lbu	a5,148(a4) # 10094 <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
     158:	00200613          	li	a2,2
     15c:	02c78263          	beq	a5,a2,180 <generic_KINDERSICHERUNG_CTRL.part.0+0x30>
     160:	00300693          	li	a3,3
     164:	0ad78063          	beq	a5,a3,204 <generic_KINDERSICHERUNG_CTRL.part.0+0xb4>
     168:	00100613          	li	a2,1
     16c:	04c78c63          	beq	a5,a2,1c4 <generic_KINDERSICHERUNG_CTRL.part.0+0x74>
     170:	000107b7          	lui	a5,0x10
     174:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     178:	08d70a23          	sb	a3,148(a4)
     17c:	00008067          	ret
     180:	000107b7          	lui	a5,0x10
     184:	0d27c783          	lbu	a5,210(a5) # 100d2 <FH_TUERMODUL__SFHA_MEC>
     188:	0e079a63          	bnez	a5,27c <generic_KINDERSICHERUNG_CTRL.part.0+0x12c>
     18c:	000107b7          	lui	a5,0x10
     190:	0d67c783          	lbu	a5,214(a5) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
     194:	1a079063          	bnez	a5,334 <generic_KINDERSICHERUNG_CTRL.part.0+0x1e4>
     198:	000107b7          	lui	a5,0x10
     19c:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     1a0:	000107b7          	lui	a5,0x10
     1a4:	0c078523          	sb	zero,202(a5) # 100ca <FH_TUERMODUL__SFHZ_copy>
     1a8:	000107b7          	lui	a5,0x10
     1ac:	0c0783a3          	sb	zero,199(a5) # 100c7 <FH_TUERMODUL__SFHA_copy>
     1b0:	00300793          	li	a5,3
     1b4:	08f70a23          	sb	a5,148(a4)
     1b8:	000107b7          	lui	a5,0x10
     1bc:	08078aa3          	sb	zero,149(a5) # 10095 <MEC_KINDERSICHERUNG_CTRL_next_state>
     1c0:	00008067          	ret
     1c4:	00010637          	lui	a2,0x10
     1c8:	0d464603          	lbu	a2,212(a2) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
     1cc:	08061c63          	bnez	a2,264 <generic_KINDERSICHERUNG_CTRL.part.0+0x114>
     1d0:	00010637          	lui	a2,0x10
     1d4:	0d864603          	lbu	a2,216(a2) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
     1d8:	10061063          	bnez	a2,2d8 <generic_KINDERSICHERUNG_CTRL.part.0+0x188>
     1dc:	000107b7          	lui	a5,0x10
     1e0:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     1e4:	000107b7          	lui	a5,0x10
     1e8:	0c078523          	sb	zero,202(a5) # 100ca <FH_TUERMODUL__SFHZ_copy>
     1ec:	000107b7          	lui	a5,0x10
     1f0:	0c0783a3          	sb	zero,199(a5) # 100c7 <FH_TUERMODUL__SFHA_copy>
     1f4:	000107b7          	lui	a5,0x10
     1f8:	08d70a23          	sb	a3,148(a4)
     1fc:	08078b23          	sb	zero,150(a5) # 10096 <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
     200:	00008067          	ret
     204:	000107b7          	lui	a5,0x10
     208:	0d07c783          	lbu	a5,208(a5) # 100d0 <FH_TUERMODUL__KL_50>
     20c:	00079e63          	bnez	a5,228 <generic_KINDERSICHERUNG_CTRL.part.0+0xd8>
     210:	000106b7          	lui	a3,0x10
     214:	0d66c683          	lbu	a3,214(a3) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
     218:	000105b7          	lui	a1,0x10
     21c:	0d25c583          	lbu	a1,210(a1) # 100d2 <FH_TUERMODUL__SFHA_MEC>
     220:	0e069663          	bnez	a3,30c <generic_KINDERSICHERUNG_CTRL.part.0+0x1bc>
     224:	18059263          	bnez	a1,3a8 <generic_KINDERSICHERUNG_CTRL.part.0+0x258>
     228:	000106b7          	lui	a3,0x10
     22c:	0d86c683          	lbu	a3,216(a3) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
     230:	00010637          	lui	a2,0x10
     234:	0d464603          	lbu	a2,212(a2) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
     238:	08068c63          	beqz	a3,2d0 <generic_KINDERSICHERUNG_CTRL.part.0+0x180>
     23c:	06060a63          	beqz	a2,2b0 <generic_KINDERSICHERUNG_CTRL.part.0+0x160>
     240:	000106b7          	lui	a3,0x10
     244:	00100793          	li	a5,1
     248:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     24c:	000106b7          	lui	a3,0x10
     250:	0cf683a3          	sb	a5,199(a3) # 100c7 <FH_TUERMODUL__SFHA_copy>
     254:	000106b7          	lui	a3,0x10
     258:	0cf68523          	sb	a5,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     25c:	08f70a23          	sb	a5,148(a4)
     260:	00008067          	ret
     264:	00010737          	lui	a4,0x10
     268:	09674683          	lbu	a3,150(a4) # 10096 <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
     26c:	14f68c63          	beq	a3,a5,3c4 <generic_KINDERSICHERUNG_CTRL.part.0+0x274>
     270:	000107b7          	lui	a5,0x10
     274:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     278:	00008067          	ret
     27c:	000107b7          	lui	a5,0x10
     280:	0957c703          	lbu	a4,149(a5) # 10095 <MEC_KINDERSICHERUNG_CTRL_next_state>
     284:	00100693          	li	a3,1
     288:	fed714e3          	bne	a4,a3,270 <generic_KINDERSICHERUNG_CTRL.part.0+0x120>
     28c:	000106b7          	lui	a3,0x10
     290:	0d16c683          	lbu	a3,209(a3) # 100d1 <FH_TUERMODUL__SFHA_MEC_old>
     294:	14069a63          	bnez	a3,3e8 <generic_KINDERSICHERUNG_CTRL.part.0+0x298>
     298:	000106b7          	lui	a3,0x10
     29c:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     2a0:	000106b7          	lui	a3,0x10
     2a4:	0ce683a3          	sb	a4,199(a3) # 100c7 <FH_TUERMODUL__SFHA_copy>
     2a8:	08e78aa3          	sb	a4,149(a5)
     2ac:	00008067          	ret
     2b0:	02079263          	bnez	a5,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     2b4:	000106b7          	lui	a3,0x10
     2b8:	00100793          	li	a5,1
     2bc:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     2c0:	000106b7          	lui	a3,0x10
     2c4:	0cf68523          	sb	a5,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     2c8:	08f70a23          	sb	a5,148(a4)
     2cc:	00008067          	ret
     2d0:	08061e63          	bnez	a2,36c <generic_KINDERSICHERUNG_CTRL.part.0+0x21c>
     2d4:	00008067          	ret
     2d8:	00010737          	lui	a4,0x10
     2dc:	09674683          	lbu	a3,150(a4) # 10096 <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
     2e0:	f8f698e3          	bne	a3,a5,270 <generic_KINDERSICHERUNG_CTRL.part.0+0x120>
     2e4:	000107b7          	lui	a5,0x10
     2e8:	0d77c783          	lbu	a5,215(a5) # 100d7 <FH_TUERMODUL__SFHZ_ZENTRAL_old>
     2ec:	18079063          	bnez	a5,46c <generic_KINDERSICHERUNG_CTRL.part.0+0x31c>
     2f0:	000106b7          	lui	a3,0x10
     2f4:	00100793          	li	a5,1
     2f8:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     2fc:	000106b7          	lui	a3,0x10
     300:	0cf68523          	sb	a5,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     304:	08f70b23          	sb	a5,150(a4)
     308:	00008067          	ret
     30c:	08058063          	beqz	a1,38c <generic_KINDERSICHERUNG_CTRL.part.0+0x23c>
     310:	000106b7          	lui	a3,0x10
     314:	00100793          	li	a5,1
     318:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     31c:	000106b7          	lui	a3,0x10
     320:	0cf68523          	sb	a5,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     324:	000106b7          	lui	a3,0x10
     328:	0cf683a3          	sb	a5,199(a3) # 100c7 <FH_TUERMODUL__SFHA_copy>
     32c:	08c70a23          	sb	a2,148(a4)
     330:	00008067          	ret
     334:	000107b7          	lui	a5,0x10
     338:	0957c703          	lbu	a4,149(a5) # 10095 <MEC_KINDERSICHERUNG_CTRL_next_state>
     33c:	00100693          	li	a3,1
     340:	f2d718e3          	bne	a4,a3,270 <generic_KINDERSICHERUNG_CTRL.part.0+0x120>
     344:	000106b7          	lui	a3,0x10
     348:	0d56c683          	lbu	a3,213(a3) # 100d5 <FH_TUERMODUL__SFHZ_MEC_old>
     34c:	0e069e63          	bnez	a3,448 <generic_KINDERSICHERUNG_CTRL.part.0+0x2f8>
     350:	000106b7          	lui	a3,0x10
     354:	00100713          	li	a4,1
     358:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     35c:	000106b7          	lui	a3,0x10
     360:	0ce68523          	sb	a4,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     364:	08e78aa3          	sb	a4,149(a5)
     368:	00008067          	ret
     36c:	f60794e3          	bnez	a5,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     370:	000106b7          	lui	a3,0x10
     374:	00100793          	li	a5,1
     378:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     37c:	000106b7          	lui	a3,0x10
     380:	0cf683a3          	sb	a5,199(a3) # 100c7 <FH_TUERMODUL__SFHA_copy>
     384:	08f70a23          	sb	a5,148(a4)
     388:	00008067          	ret
     38c:	000107b7          	lui	a5,0x10
     390:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     394:	00100693          	li	a3,1
     398:	000107b7          	lui	a5,0x10
     39c:	0cd78523          	sb	a3,202(a5) # 100ca <FH_TUERMODUL__SFHZ_copy>
     3a0:	08c70a23          	sb	a2,148(a4)
     3a4:	00008067          	ret
     3a8:	000107b7          	lui	a5,0x10
     3ac:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     3b0:	00100693          	li	a3,1
     3b4:	000107b7          	lui	a5,0x10
     3b8:	0cd783a3          	sb	a3,199(a5) # 100c7 <FH_TUERMODUL__SFHA_copy>
     3bc:	08c70a23          	sb	a2,148(a4)
     3c0:	00008067          	ret
     3c4:	000107b7          	lui	a5,0x10
     3c8:	0d37c783          	lbu	a5,211(a5) # 100d3 <FH_TUERMODUL__SFHA_ZENTRAL_old>
     3cc:	04079663          	bnez	a5,418 <generic_KINDERSICHERUNG_CTRL.part.0+0x2c8>
     3d0:	000107b7          	lui	a5,0x10
     3d4:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     3d8:	000107b7          	lui	a5,0x10
     3dc:	0cd783a3          	sb	a3,199(a5) # 100c7 <FH_TUERMODUL__SFHA_copy>
     3e0:	08d70b23          	sb	a3,150(a4)
     3e4:	00008067          	ret
     3e8:	000106b7          	lui	a3,0x10
     3ec:	0d66c683          	lbu	a3,214(a3) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
     3f0:	00010637          	lui	a2,0x10
     3f4:	0d564603          	lbu	a2,213(a2) # 100d5 <FH_TUERMODUL__SFHZ_MEC_old>
     3f8:	08069c63          	bnez	a3,490 <generic_KINDERSICHERUNG_CTRL.part.0+0x340>
     3fc:	ec060ce3          	beqz	a2,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     400:	000106b7          	lui	a3,0x10
     404:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     408:	000106b7          	lui	a3,0x10
     40c:	0c068523          	sb	zero,202(a3) # 100ca <FH_TUERMODUL__SFHZ_copy>
     410:	08e78aa3          	sb	a4,149(a5)
     414:	00008067          	ret
     418:	000107b7          	lui	a5,0x10
     41c:	0d87c783          	lbu	a5,216(a5) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
     420:	00010637          	lui	a2,0x10
     424:	0d764603          	lbu	a2,215(a2) # 100d7 <FH_TUERMODUL__SFHZ_ZENTRAL_old>
     428:	06079863          	bnez	a5,498 <generic_KINDERSICHERUNG_CTRL.part.0+0x348>
     42c:	ea0604e3          	beqz	a2,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     430:	000107b7          	lui	a5,0x10
     434:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     438:	000107b7          	lui	a5,0x10
     43c:	0c078523          	sb	zero,202(a5) # 100ca <FH_TUERMODUL__SFHZ_copy>
     440:	08d70b23          	sb	a3,150(a4)
     444:	00008067          	ret
     448:	000106b7          	lui	a3,0x10
     44c:	0d16c683          	lbu	a3,209(a3) # 100d1 <FH_TUERMODUL__SFHA_MEC_old>
     450:	e80682e3          	beqz	a3,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     454:	000106b7          	lui	a3,0x10
     458:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     45c:	000106b7          	lui	a3,0x10
     460:	0c0683a3          	sb	zero,199(a3) # 100c7 <FH_TUERMODUL__SFHA_copy>
     464:	08e78aa3          	sb	a4,149(a5)
     468:	00008067          	ret
     46c:	000107b7          	lui	a5,0x10
     470:	0d37c783          	lbu	a5,211(a5) # 100d3 <FH_TUERMODUL__SFHA_ZENTRAL_old>
     474:	e60780e3          	beqz	a5,2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     478:	000107b7          	lui	a5,0x10
     47c:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     480:	000107b7          	lui	a5,0x10
     484:	0c0783a3          	sb	zero,199(a5) # 100c7 <FH_TUERMODUL__SFHA_copy>
     488:	08d70b23          	sb	a3,150(a4)
     48c:	00008067          	ret
     490:	ec0600e3          	beqz	a2,350 <generic_KINDERSICHERUNG_CTRL.part.0+0x200>
     494:	e41ff06f          	j	2d4 <generic_KINDERSICHERUNG_CTRL.part.0+0x184>
     498:	e4060ce3          	beqz	a2,2f0 <generic_KINDERSICHERUNG_CTRL.part.0+0x1a0>
     49c:	00008067          	ret

000004a0 <generic_FH_TUERMODUL_CTRL.part.0>:
     4a0:	000107b7          	lui	a5,0x10
     4a4:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
     4a8:	00a7c703          	lbu	a4,10(a5)
     4ac:	00071863          	bnez	a4,4bc <generic_FH_TUERMODUL_CTRL.part.0+0x1c>
     4b0:	00010737          	lui	a4,0x10
     4b4:	00300693          	li	a3,3
     4b8:	08d70a23          	sb	a3,148(a4) # 10094 <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
     4bc:	0137c703          	lbu	a4,19(a5)
     4c0:	00071a63          	bnez	a4,4d4 <generic_FH_TUERMODUL_CTRL.part.0+0x34>
     4c4:	00010737          	lui	a4,0x10
     4c8:	00100693          	li	a3,1
     4cc:	00078023          	sb	zero,0(a5)
     4d0:	08d70423          	sb	a3,136(a4) # 10088 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
     4d4:	00010637          	lui	a2,0x10
     4d8:	09364683          	lbu	a3,147(a2) # 10093 <B_FH_TUERMODUL_CTRL_next_state>
     4dc:	00100713          	li	a4,1
     4e0:	00e785a3          	sb	a4,11(a5)
     4e4:	00e78a23          	sb	a4,20(a5)
     4e8:	00200593          	li	a1,2
     4ec:	14b68e63          	beq	a3,a1,648 <generic_FH_TUERMODUL_CTRL.part.0+0x1a8>
     4f0:	00300513          	li	a0,3
     4f4:	0ca68263          	beq	a3,a0,5b8 <generic_FH_TUERMODUL_CTRL.part.0+0x118>
     4f8:	08e68663          	beq	a3,a4,584 <generic_FH_TUERMODUL_CTRL.part.0+0xe4>
     4fc:	00010737          	lui	a4,0x10
     500:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     504:	08b609a3          	sb	a1,147(a2)
     508:	000106b7          	lui	a3,0x10
     50c:	0926c603          	lbu	a2,146(a3) # 10092 <A_FH_TUERMODUL_CTRL_next_state>
     510:	00100713          	li	a4,1
     514:	02e60a63          	beq	a2,a4,548 <generic_FH_TUERMODUL_CTRL.part.0+0xa8>
     518:	00010637          	lui	a2,0x10
     51c:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
     520:	08e68923          	sb	a4,146(a3)
     524:	00010637          	lui	a2,0x10
     528:	000106b7          	lui	a3,0x10
     52c:	12062223          	sw	zero,292(a2) # 10124 <FH_TUERMODUL_CTRL__N>
     530:	08e688a3          	sb	a4,145(a3) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
     534:	0047c683          	lbu	a3,4(a5)
     538:	0067c703          	lbu	a4,6(a5)
     53c:	00d782a3          	sb	a3,5(a5)
     540:	00e783a3          	sb	a4,7(a5)
     544:	00008067          	ret
     548:	00010737          	lui	a4,0x10
     54c:	09874703          	lbu	a4,152(a4) # 10098 <step>
     550:	28c70063          	beq	a4,a2,7d0 <generic_FH_TUERMODUL_CTRL.part.0+0x330>
     554:	00010737          	lui	a4,0x10
     558:	09174683          	lbu	a3,145(a4) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
     55c:	fcc68ce3          	beq	a3,a2,534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     560:	000106b7          	lui	a3,0x10
     564:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     568:	00100693          	li	a3,1
     56c:	08d708a3          	sb	a3,145(a4)
     570:	0047c683          	lbu	a3,4(a5)
     574:	0067c703          	lbu	a4,6(a5)
     578:	00d782a3          	sb	a3,5(a5)
     57c:	00e783a3          	sb	a4,7(a5)
     580:	00008067          	ret
     584:	00010737          	lui	a4,0x10
     588:	12472703          	lw	a4,292(a4) # 10124 <FH_TUERMODUL_CTRL__N>
     58c:	03b00693          	li	a3,59
     590:	f6d71ce3          	bne	a4,a3,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     594:	000106b7          	lui	a3,0x10
     598:	11c6a683          	lw	a3,284(a3) # 1011c <FH_TUERMODUL_CTRL__N_old>
     59c:	f6e686e3          	beq	a3,a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     5a0:	00010737          	lui	a4,0x10
     5a4:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     5a8:	00010737          	lui	a4,0x10
     5ac:	08a609a3          	sb	a0,147(a2)
     5b0:	08a70823          	sb	a0,144(a4) # 10090 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
     5b4:	f55ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     5b8:	000106b7          	lui	a3,0x10
     5bc:	1246a583          	lw	a1,292(a3) # 10124 <FH_TUERMODUL_CTRL__N>
     5c0:	03c00693          	li	a3,60
     5c4:	04b6d463          	bge	a3,a1,60c <generic_FH_TUERMODUL_CTRL.part.0+0x16c>
     5c8:	000105b7          	lui	a1,0x10
     5cc:	11c5a583          	lw	a1,284(a1) # 1011c <FH_TUERMODUL_CTRL__N_old>
     5d0:	02b6ce63          	blt	a3,a1,60c <generic_FH_TUERMODUL_CTRL.part.0+0x16c>
     5d4:	000106b7          	lui	a3,0x10
     5d8:	000105b7          	lui	a1,0x10
     5dc:	0db6c683          	lbu	a3,219(a3) # 100db <FH_TUERMODUL_CTRL__INREVERS1>
     5e0:	0dd5c583          	lbu	a1,221(a1) # 100dd <FH_TUERMODUL_CTRL__INREVERS2>
     5e4:	00b6e6b3          	or	a3,a3,a1
     5e8:	02069263          	bnez	a3,60c <generic_FH_TUERMODUL_CTRL.part.0+0x16c>
     5ec:	000106b7          	lui	a3,0x10
     5f0:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     5f4:	000106b7          	lui	a3,0x10
     5f8:	0c068223          	sb	zero,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     5fc:	000106b7          	lui	a3,0x10
     600:	0c0680a3          	sb	zero,193(a3) # 100c1 <FH_TUERMODUL__MFHA_copy>
     604:	08e609a3          	sb	a4,147(a2)
     608:	f01ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     60c:	00010737          	lui	a4,0x10
     610:	0cf74703          	lbu	a4,207(a4) # 100cf <FH_TUERMODUL__BLOCK>
     614:	0a071e63          	bnez	a4,6d0 <generic_FH_TUERMODUL_CTRL.part.0+0x230>
     618:	000106b7          	lui	a3,0x10
     61c:	0906c703          	lbu	a4,144(a3) # 10090 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
     620:	00200593          	li	a1,2
     624:	28b70663          	beq	a4,a1,8b0 <generic_FH_TUERMODUL_CTRL.part.0+0x410>
     628:	00300613          	li	a2,3
     62c:	2cc70463          	beq	a4,a2,8f4 <generic_FH_TUERMODUL_CTRL.part.0+0x454>
     630:	00100513          	li	a0,1
     634:	30a70a63          	beq	a4,a0,948 <generic_FH_TUERMODUL_CTRL.part.0+0x4a8>
     638:	00010737          	lui	a4,0x10
     63c:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     640:	08c68823          	sb	a2,144(a3)
     644:	ec5ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     648:	00010737          	lui	a4,0x10
     64c:	0cf74703          	lbu	a4,207(a4) # 100cf <FH_TUERMODUL__BLOCK>
     650:	04070863          	beqz	a4,6a0 <generic_FH_TUERMODUL_CTRL.part.0+0x200>
     654:	00010737          	lui	a4,0x10
     658:	0cd74703          	lbu	a4,205(a4) # 100cd <FH_TUERMODUL__BLOCK_old>
     65c:	04071263          	bnez	a4,6a0 <generic_FH_TUERMODUL_CTRL.part.0+0x200>
     660:	00010737          	lui	a4,0x10
     664:	0c574703          	lbu	a4,197(a4) # 100c5 <FH_TUERMODUL__MFHZ>
     668:	02070c63          	beqz	a4,6a0 <generic_FH_TUERMODUL_CTRL.part.0+0x200>
     66c:	00010737          	lui	a4,0x10
     670:	09c72583          	lw	a1,156(a4) # 1009c <time>
     674:	000106b7          	lui	a3,0x10
     678:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     67c:	000106b7          	lui	a3,0x10
     680:	0c068223          	sb	zero,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     684:	000106b7          	lui	a3,0x10
     688:	00300713          	li	a4,3
     68c:	12b6a423          	sw	a1,296(a3) # 10128 <sc_FH_TUERMODUL_CTRL_2329_1>
     690:	000106b7          	lui	a3,0x10
     694:	08e609a3          	sb	a4,147(a2)
     698:	08e68823          	sb	a4,144(a3) # 10090 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
     69c:	e6dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     6a0:	000106b7          	lui	a3,0x10
     6a4:	0976c703          	lbu	a4,151(a3) # 10097 <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
     6a8:	00200593          	li	a1,2
     6ac:	0cb70663          	beq	a4,a1,778 <generic_FH_TUERMODUL_CTRL.part.0+0x2d8>
     6b0:	00300613          	li	a2,3
     6b4:	08c70863          	beq	a4,a2,744 <generic_FH_TUERMODUL_CTRL.part.0+0x2a4>
     6b8:	00100593          	li	a1,1
     6bc:	06b70263          	beq	a4,a1,720 <generic_FH_TUERMODUL_CTRL.part.0+0x280>
     6c0:	00010737          	lui	a4,0x10
     6c4:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     6c8:	08c68ba3          	sb	a2,151(a3)
     6cc:	e3dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     6d0:	00010737          	lui	a4,0x10
     6d4:	0cd74703          	lbu	a4,205(a4) # 100cd <FH_TUERMODUL__BLOCK_old>
     6d8:	f40710e3          	bnez	a4,618 <generic_FH_TUERMODUL_CTRL.part.0+0x178>
     6dc:	00010737          	lui	a4,0x10
     6e0:	0c274703          	lbu	a4,194(a4) # 100c2 <FH_TUERMODUL__MFHA>
     6e4:	0a070e63          	beqz	a4,7a0 <generic_FH_TUERMODUL_CTRL.part.0+0x300>
     6e8:	00010737          	lui	a4,0x10
     6ec:	09c72683          	lw	a3,156(a4) # 1009c <time>
     6f0:	00010737          	lui	a4,0x10
     6f4:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     6f8:	00010737          	lui	a4,0x10
     6fc:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     700:	00010737          	lui	a4,0x10
     704:	12d72823          	sw	a3,304(a4) # 10130 <sc_FH_TUERMODUL_CTRL_2375_2>
     708:	00200713          	li	a4,2
     70c:	08e609a3          	sb	a4,147(a2)
     710:	00300693          	li	a3,3
     714:	00010737          	lui	a4,0x10
     718:	08d70ba3          	sb	a3,151(a4) # 10097 <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
     71c:	dedff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     720:	00010737          	lui	a4,0x10
     724:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     728:	de0710e3          	bnez	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     72c:	00010737          	lui	a4,0x10
     730:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     734:	00010737          	lui	a4,0x10
     738:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     73c:	08c68ba3          	sb	a2,151(a3)
     740:	dc9ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     744:	00010737          	lui	a4,0x10
     748:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     74c:	10071463          	bnez	a4,854 <generic_FH_TUERMODUL_CTRL.part.0+0x3b4>
     750:	00010737          	lui	a4,0x10
     754:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     758:	da0708e3          	beqz	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     75c:	00010637          	lui	a2,0x10
     760:	00100713          	li	a4,1
     764:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
     768:	00010637          	lui	a2,0x10
     76c:	0ce60223          	sb	a4,196(a2) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     770:	08e68ba3          	sb	a4,151(a3)
     774:	d95ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     778:	00010737          	lui	a4,0x10
     77c:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     780:	d80714e3          	bnez	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     784:	00010737          	lui	a4,0x10
     788:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     78c:	00010737          	lui	a4,0x10
     790:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     794:	00300713          	li	a4,3
     798:	08e68ba3          	sb	a4,151(a3)
     79c:	d6dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     7a0:	00010737          	lui	a4,0x10
     7a4:	0c574703          	lbu	a4,197(a4) # 100c5 <FH_TUERMODUL__MFHZ>
     7a8:	e60708e3          	beqz	a4,618 <generic_FH_TUERMODUL_CTRL.part.0+0x178>
     7ac:	00010737          	lui	a4,0x10
     7b0:	09c72683          	lw	a3,156(a4) # 1009c <time>
     7b4:	00010737          	lui	a4,0x10
     7b8:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     7bc:	00010737          	lui	a4,0x10
     7c0:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     7c4:	00010737          	lui	a4,0x10
     7c8:	12d72623          	sw	a3,300(a4) # 1012c <sc_FH_TUERMODUL_CTRL_2352_1>
     7cc:	f3dff06f          	j	708 <generic_FH_TUERMODUL_CTRL.part.0+0x268>
     7d0:	00010637          	lui	a2,0x10
     7d4:	13862603          	lw	a2,312(a2) # 10138 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
     7d8:	00060a63          	beqz	a2,7ec <generic_FH_TUERMODUL_CTRL.part.0+0x34c>
     7dc:	000105b7          	lui	a1,0x10
     7e0:	09c5a583          	lw	a1,156(a1) # 1009c <time>
     7e4:	40c58633          	sub	a2,a1,a2
     7e8:	08e60463          	beq	a2,a4,870 <generic_FH_TUERMODUL_CTRL.part.0+0x3d0>
     7ec:	00010737          	lui	a4,0x10
     7f0:	09174683          	lbu	a3,145(a4) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
     7f4:	00100613          	li	a2,1
     7f8:	d6c694e3          	bne	a3,a2,560 <generic_FH_TUERMODUL_CTRL.part.0+0xc0>
     7fc:	00010637          	lui	a2,0x10
     800:	13462603          	lw	a2,308(a2) # 10134 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
     804:	d20608e3          	beqz	a2,534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     808:	000105b7          	lui	a1,0x10
     80c:	09c5a583          	lw	a1,156(a1) # 1009c <time>
     810:	ffd58593          	addi	a1,a1,-3
     814:	d2c590e3          	bne	a1,a2,534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     818:	00010637          	lui	a2,0x10
     81c:	000105b7          	lui	a1,0x10
     820:	0c564603          	lbu	a2,197(a2) # 100c5 <FH_TUERMODUL__MFHZ>
     824:	0c25c583          	lbu	a1,194(a1) # 100c2 <FH_TUERMODUL__MFHA>
     828:	00b66633          	or	a2,a2,a1
     82c:	d00614e3          	bnez	a2,534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     830:	000105b7          	lui	a1,0x10
     834:	1245a603          	lw	a2,292(a1) # 10124 <FH_TUERMODUL_CTRL__N>
     838:	cec05ee3          	blez	a2,534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     83c:	fff60613          	addi	a2,a2,-1
     840:	00010537          	lui	a0,0x10
     844:	08050ca3          	sb	zero,153(a0) # 10099 <stable>
     848:	12c5a223          	sw	a2,292(a1)
     84c:	08d708a3          	sb	a3,145(a4)
     850:	ce5ff06f          	j	534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     854:	00010737          	lui	a4,0x10
     858:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     85c:	00100613          	li	a2,1
     860:	00010737          	lui	a4,0x10
     864:	0cc700a3          	sb	a2,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     868:	08b68ba3          	sb	a1,151(a3)
     86c:	c9dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     870:	00010737          	lui	a4,0x10
     874:	000105b7          	lui	a1,0x10
     878:	0c574703          	lbu	a4,197(a4) # 100c5 <FH_TUERMODUL__MFHZ>
     87c:	0c25c583          	lbu	a1,194(a1) # 100c2 <FH_TUERMODUL__MFHA>
     880:	00b76733          	or	a4,a4,a1
     884:	f60704e3          	beqz	a4,7ec <generic_FH_TUERMODUL_CTRL.part.0+0x34c>
     888:	000105b7          	lui	a1,0x10
     88c:	1245a703          	lw	a4,292(a1) # 10124 <FH_TUERMODUL_CTRL__N>
     890:	00010537          	lui	a0,0x10
     894:	08050ca3          	sb	zero,153(a0) # 10099 <stable>
     898:	00170713          	addi	a4,a4,1
     89c:	12e5a223          	sw	a4,292(a1)
     8a0:	00010737          	lui	a4,0x10
     8a4:	08c68923          	sb	a2,146(a3)
     8a8:	08c708a3          	sb	a2,145(a4) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
     8ac:	c89ff06f          	j	534 <generic_FH_TUERMODUL_CTRL.part.0+0x94>
     8b0:	00010637          	lui	a2,0x10
     8b4:	11062603          	lw	a2,272(a2) # 10110 <FH_TUERMODUL__POSITION>
     8b8:	10c05463          	blez	a2,9c0 <generic_FH_TUERMODUL_CTRL.part.0+0x520>
     8bc:	00010537          	lui	a0,0x10
     8c0:	08c54603          	lbu	a2,140(a0) # 1008c <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     8c4:	00100593          	li	a1,1
     8c8:	12b60a63          	beq	a2,a1,9fc <generic_FH_TUERMODUL_CTRL.part.0+0x55c>
     8cc:	18e60663          	beq	a2,a4,a58 <generic_FH_TUERMODUL_CTRL.part.0+0x5b8>
     8d0:	000106b7          	lui	a3,0x10
     8d4:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     8d8:	000106b7          	lui	a3,0x10
     8dc:	08e50623          	sb	a4,140(a0)
     8e0:	08e68723          	sb	a4,142(a3) # 1008e <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     8e4:	00010737          	lui	a4,0x10
     8e8:	00b788a3          	sb	a1,17(a5)
     8ec:	0cb70223          	sb	a1,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     8f0:	c19ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     8f4:	00010737          	lui	a4,0x10
     8f8:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     8fc:	06070a63          	beqz	a4,970 <generic_FH_TUERMODUL_CTRL.part.0+0x4d0>
     900:	00010737          	lui	a4,0x10
     904:	0c974703          	lbu	a4,201(a4) # 100c9 <FH_TUERMODUL__SFHZ_old>
     908:	06071463          	bnez	a4,970 <generic_FH_TUERMODUL_CTRL.part.0+0x4d0>
     90c:	00010737          	lui	a4,0x10
     910:	11072703          	lw	a4,272(a4) # 10110 <FH_TUERMODUL__POSITION>
     914:	04e05e63          	blez	a4,970 <generic_FH_TUERMODUL_CTRL.part.0+0x4d0>
     918:	08b68823          	sb	a1,144(a3)
     91c:	000106b7          	lui	a3,0x10
     920:	08b68623          	sb	a1,140(a3) # 1008c <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     924:	000106b7          	lui	a3,0x10
     928:	00100713          	li	a4,1
     92c:	00010637          	lui	a2,0x10
     930:	08b68723          	sb	a1,142(a3) # 1008e <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     934:	000106b7          	lui	a3,0x10
     938:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
     93c:	00e788a3          	sb	a4,17(a5)
     940:	0ce68223          	sb	a4,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     944:	bc5ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     948:	00010537          	lui	a0,0x10
     94c:	11052803          	lw	a6,272(a0) # 10110 <FH_TUERMODUL__POSITION>
     950:	19400513          	li	a0,404
     954:	09055463          	bge	a0,a6,9dc <generic_FH_TUERMODUL_CTRL.part.0+0x53c>
     958:	00010737          	lui	a4,0x10
     95c:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     960:	00010737          	lui	a4,0x10
     964:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     968:	08c68823          	sb	a2,144(a3)
     96c:	b9dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     970:	00010737          	lui	a4,0x10
     974:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     978:	b80708e3          	beqz	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     97c:	00010737          	lui	a4,0x10
     980:	0c674703          	lbu	a4,198(a4) # 100c6 <FH_TUERMODUL__SFHA_old>
     984:	b80712e3          	bnez	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     988:	00010737          	lui	a4,0x10
     98c:	11072603          	lw	a2,272(a4) # 10110 <FH_TUERMODUL__POSITION>
     990:	19400713          	li	a4,404
     994:	b6c74ae3          	blt	a4,a2,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     998:	00010637          	lui	a2,0x10
     99c:	00100713          	li	a4,1
     9a0:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
     9a4:	00010637          	lui	a2,0x10
     9a8:	08e68823          	sb	a4,144(a3)
     9ac:	0ce600a3          	sb	a4,193(a2) # 100c1 <FH_TUERMODUL__MFHA_copy>
     9b0:	00200693          	li	a3,2
     9b4:	00010737          	lui	a4,0x10
     9b8:	08d706a3          	sb	a3,141(a4) # 1008d <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
     9bc:	b4dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     9c0:	00010737          	lui	a4,0x10
     9c4:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     9c8:	00010737          	lui	a4,0x10
     9cc:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     9d0:	00300713          	li	a4,3
     9d4:	08e68823          	sb	a4,144(a3)
     9d8:	b31ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     9dc:	00010537          	lui	a0,0x10
     9e0:	08d54603          	lbu	a2,141(a0) # 1008d <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
     9e4:	0ee60463          	beq	a2,a4,acc <generic_FH_TUERMODUL_CTRL.part.0+0x62c>
     9e8:	0ab60e63          	beq	a2,a1,aa4 <generic_FH_TUERMODUL_CTRL.part.0+0x604>
     9ec:	00010737          	lui	a4,0x10
     9f0:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     9f4:	08b506a3          	sb	a1,141(a0)
     9f8:	b11ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     9fc:	00010737          	lui	a4,0x10
     a00:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     a04:	00070863          	beqz	a4,a14 <generic_FH_TUERMODUL_CTRL.part.0+0x574>
     a08:	00010737          	lui	a4,0x10
     a0c:	0c674703          	lbu	a4,198(a4) # 100c6 <FH_TUERMODUL__SFHA_old>
     a10:	fa0708e3          	beqz	a4,9c0 <generic_FH_TUERMODUL_CTRL.part.0+0x520>
     a14:	00010737          	lui	a4,0x10
     a18:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     a1c:	00070863          	beqz	a4,a2c <generic_FH_TUERMODUL_CTRL.part.0+0x58c>
     a20:	00010737          	lui	a4,0x10
     a24:	0c974703          	lbu	a4,201(a4) # 100c9 <FH_TUERMODUL__SFHZ_old>
     a28:	f8070ce3          	beqz	a4,9c0 <generic_FH_TUERMODUL_CTRL.part.0+0x520>
     a2c:	00010637          	lui	a2,0x10
     a30:	08f64703          	lbu	a4,143(a2) # 1008f <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     a34:	00100693          	li	a3,1
     a38:	1cd70863          	beq	a4,a3,c08 <generic_FH_TUERMODUL_CTRL.part.0+0x768>
     a3c:	00200593          	li	a1,2
     a40:	18b70063          	beq	a4,a1,bc0 <generic_FH_TUERMODUL_CTRL.part.0+0x720>
     a44:	00010737          	lui	a4,0x10
     a48:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     a4c:	08b607a3          	sb	a1,143(a2)
     a50:	00d788a3          	sb	a3,17(a5)
     a54:	ab5ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     a58:	00010737          	lui	a4,0x10
     a5c:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     a60:	00071863          	bnez	a4,a70 <generic_FH_TUERMODUL_CTRL.part.0+0x5d0>
     a64:	00010737          	lui	a4,0x10
     a68:	0c974703          	lbu	a4,201(a4) # 100c9 <FH_TUERMODUL__SFHZ_old>
     a6c:	f4071ae3          	bnez	a4,9c0 <generic_FH_TUERMODUL_CTRL.part.0+0x520>
     a70:	00010637          	lui	a2,0x10
     a74:	08e64683          	lbu	a3,142(a2) # 1008e <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     a78:	00100713          	li	a4,1
     a7c:	10e68463          	beq	a3,a4,b84 <generic_FH_TUERMODUL_CTRL.part.0+0x6e4>
     a80:	00200593          	li	a1,2
     a84:	0ab68c63          	beq	a3,a1,b3c <generic_FH_TUERMODUL_CTRL.part.0+0x69c>
     a88:	000106b7          	lui	a3,0x10
     a8c:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     a90:	000106b7          	lui	a3,0x10
     a94:	08b60723          	sb	a1,142(a2)
     a98:	00e788a3          	sb	a4,17(a5)
     a9c:	0ce68223          	sb	a4,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     aa0:	a69ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     aa4:	00010637          	lui	a2,0x10
     aa8:	0cb64603          	lbu	a2,203(a2) # 100cb <FH_TUERMODUL__SFHZ>
     aac:	04060c63          	beqz	a2,b04 <generic_FH_TUERMODUL_CTRL.part.0+0x664>
     ab0:	00010637          	lui	a2,0x10
     ab4:	0c964603          	lbu	a2,201(a2) # 100c9 <FH_TUERMODUL__SFHZ_old>
     ab8:	04061663          	bnez	a2,b04 <generic_FH_TUERMODUL_CTRL.part.0+0x664>
     abc:	000106b7          	lui	a3,0x10
     ac0:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     ac4:	08e506a3          	sb	a4,141(a0)
     ac8:	a41ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     acc:	00010737          	lui	a4,0x10
     ad0:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     ad4:	04070663          	beqz	a4,b20 <generic_FH_TUERMODUL_CTRL.part.0+0x680>
     ad8:	00010737          	lui	a4,0x10
     adc:	0c974703          	lbu	a4,201(a4) # 100c9 <FH_TUERMODUL__SFHZ_old>
     ae0:	04071063          	bnez	a4,b20 <generic_FH_TUERMODUL_CTRL.part.0+0x680>
     ae4:	00010737          	lui	a4,0x10
     ae8:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     aec:	00010737          	lui	a4,0x10
     af0:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     af4:	00300713          	li	a4,3
     af8:	08e68823          	sb	a4,144(a3)
     afc:	080506a3          	sb	zero,141(a0)
     b00:	a09ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b04:	00010737          	lui	a4,0x10
     b08:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     b0c:	9e071ee3          	bnez	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b10:	00010737          	lui	a4,0x10
     b14:	0c674703          	lbu	a4,198(a4) # 100c6 <FH_TUERMODUL__SFHA_old>
     b18:	fc0716e3          	bnez	a4,ae4 <generic_FH_TUERMODUL_CTRL.part.0+0x644>
     b1c:	9edff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b20:	00010737          	lui	a4,0x10
     b24:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     b28:	9e0700e3          	beqz	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b2c:	00010737          	lui	a4,0x10
     b30:	0c674703          	lbu	a4,198(a4) # 100c6 <FH_TUERMODUL__SFHA_old>
     b34:	9c071ae3          	bnez	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b38:	fadff06f          	j	ae4 <generic_FH_TUERMODUL_CTRL.part.0+0x644>
     b3c:	0187c683          	lbu	a3,24(a5)
     b40:	10068263          	beqz	a3,c44 <generic_FH_TUERMODUL_CTRL.part.0+0x7a4>
     b44:	000106b7          	lui	a3,0x10
     b48:	09c6a583          	lw	a1,156(a3) # 1009c <time>
     b4c:	000106b7          	lui	a3,0x10
     b50:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     b54:	000106b7          	lui	a3,0x10
     b58:	0c068223          	sb	zero,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     b5c:	000106b7          	lui	a3,0x10
     b60:	0ce68d23          	sb	a4,218(a3) # 100da <FH_TUERMODUL_CTRL__INREVERS1_copy>
     b64:	000106b7          	lui	a3,0x10
     b68:	10b6aa23          	sw	a1,276(a3) # 10114 <sc_FH_TUERMODUL_CTRL_1739_10>
     b6c:	000106b7          	lui	a3,0x10
     b70:	00e78ba3          	sb	a4,23(a5)
     b74:	08e60723          	sb	a4,142(a2)
     b78:	000788a3          	sb	zero,17(a5)
     b7c:	0ce680a3          	sb	a4,193(a3) # 100c1 <FH_TUERMODUL__MFHA_copy>
     b80:	989ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b84:	0167c703          	lbu	a4,22(a5)
     b88:	00078ba3          	sb	zero,23(a5)
     b8c:	96070ee3          	beqz	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     b90:	00010737          	lui	a4,0x10
     b94:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     b98:	00010737          	lui	a4,0x10
     b9c:	0c070d23          	sb	zero,218(a4) # 100da <FH_TUERMODUL_CTRL__INREVERS1_copy>
     ba0:	00200713          	li	a4,2
     ba4:	08e60723          	sb	a4,142(a2)
     ba8:	00010737          	lui	a4,0x10
     bac:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     bb0:	00010737          	lui	a4,0x10
     bb4:	00d788a3          	sb	a3,17(a5)
     bb8:	0cd70223          	sb	a3,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     bbc:	94dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     bc0:	0187c703          	lbu	a4,24(a5)
     bc4:	940702e3          	beqz	a4,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     bc8:	00010737          	lui	a4,0x10
     bcc:	09c72583          	lw	a1,156(a4) # 1009c <time>
     bd0:	00010737          	lui	a4,0x10
     bd4:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     bd8:	00010737          	lui	a4,0x10
     bdc:	0cd70e23          	sb	a3,220(a4) # 100dc <FH_TUERMODUL_CTRL__INREVERS2_copy>
     be0:	00010737          	lui	a4,0x10
     be4:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     be8:	00010737          	lui	a4,0x10
     bec:	10b72c23          	sw	a1,280(a4) # 10118 <sc_FH_TUERMODUL_CTRL_1781_10>
     bf0:	00010737          	lui	a4,0x10
     bf4:	00d78ba3          	sb	a3,23(a5)
     bf8:	08d607a3          	sb	a3,143(a2)
     bfc:	000788a3          	sb	zero,17(a5)
     c00:	0cd700a3          	sb	a3,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     c04:	905ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     c08:	0167c683          	lbu	a3,22(a5)
     c0c:	00078ba3          	sb	zero,23(a5)
     c10:	8e068ce3          	beqz	a3,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     c14:	000106b7          	lui	a3,0x10
     c18:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     c1c:	000106b7          	lui	a3,0x10
     c20:	0ce68223          	sb	a4,196(a3) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     c24:	000106b7          	lui	a3,0x10
     c28:	0c068e23          	sb	zero,220(a3) # 100dc <FH_TUERMODUL_CTRL__INREVERS2_copy>
     c2c:	00200693          	li	a3,2
     c30:	08d607a3          	sb	a3,143(a2)
     c34:	000106b7          	lui	a3,0x10
     c38:	0c0680a3          	sb	zero,193(a3) # 100c1 <FH_TUERMODUL__MFHA_copy>
     c3c:	00e788a3          	sb	a4,17(a5)
     c40:	8c9ff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     c44:	000106b7          	lui	a3,0x10
     c48:	0c86c683          	lbu	a3,200(a3) # 100c8 <FH_TUERMODUL__SFHA>
     c4c:	8a068ee3          	beqz	a3,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     c50:	000106b7          	lui	a3,0x10
     c54:	0c66c683          	lbu	a3,198(a3) # 100c6 <FH_TUERMODUL__SFHA_old>
     c58:	8a0698e3          	bnez	a3,508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>
     c5c:	000106b7          	lui	a3,0x10
     c60:	08068ca3          	sb	zero,153(a3) # 10099 <stable>
     c64:	08e50623          	sb	a4,140(a0)
     c68:	08060723          	sb	zero,142(a2)
     c6c:	89dff06f          	j	508 <generic_FH_TUERMODUL_CTRL.part.0+0x68>

00000c70 <interface>:
     c70:	000107b7          	lui	a5,0x10
     c74:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
     c78:	0047c703          	lbu	a4,4(a5)
     c7c:	0e070a63          	beqz	a4,d70 <interface+0x100>
     c80:	00010737          	lui	a4,0x10
     c84:	09c72703          	lw	a4,156(a4) # 1009c <time>
     c88:	000106b7          	lui	a3,0x10
     c8c:	12e6aa23          	sw	a4,308(a3) # 10134 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
     c90:	000106b7          	lui	a3,0x10
     c94:	12e6ac23          	sw	a4,312(a3) # 10138 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
     c98:	000106b7          	lui	a3,0x10
     c9c:	1306a703          	lw	a4,304(a3) # 10130 <sc_FH_TUERMODUL_CTRL_2375_2>
     ca0:	00070e63          	beqz	a4,cbc <interface+0x4c>
     ca4:	00010637          	lui	a2,0x10
     ca8:	09c62603          	lw	a2,156(a2) # 1009c <time>
     cac:	00c70863          	beq	a4,a2,cbc <interface+0x4c>
     cb0:	00010737          	lui	a4,0x10
     cb4:	0c0700a3          	sb	zero,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
     cb8:	1206a823          	sw	zero,304(a3)
     cbc:	000106b7          	lui	a3,0x10
     cc0:	12c6a703          	lw	a4,300(a3) # 1012c <sc_FH_TUERMODUL_CTRL_2352_1>
     cc4:	00070e63          	beqz	a4,ce0 <interface+0x70>
     cc8:	00010637          	lui	a2,0x10
     ccc:	09c62603          	lw	a2,156(a2) # 1009c <time>
     cd0:	00c70863          	beq	a4,a2,ce0 <interface+0x70>
     cd4:	00010737          	lui	a4,0x10
     cd8:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     cdc:	1206a623          	sw	zero,300(a3)
     ce0:	000106b7          	lui	a3,0x10
     ce4:	1286a703          	lw	a4,296(a3) # 10128 <sc_FH_TUERMODUL_CTRL_2329_1>
     ce8:	00070e63          	beqz	a4,d04 <interface+0x94>
     cec:	00010637          	lui	a2,0x10
     cf0:	09c62603          	lw	a2,156(a2) # 1009c <time>
     cf4:	00c70863          	beq	a4,a2,d04 <interface+0x94>
     cf8:	00010737          	lui	a4,0x10
     cfc:	0c070223          	sb	zero,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
     d00:	1206a423          	sw	zero,296(a3)
     d04:	000106b7          	lui	a3,0x10
     d08:	1186a703          	lw	a4,280(a3) # 10118 <sc_FH_TUERMODUL_CTRL_1781_10>
     d0c:	00070a63          	beqz	a4,d20 <interface+0xb0>
     d10:	00010637          	lui	a2,0x10
     d14:	09c62603          	lw	a2,156(a2) # 1009c <time>
     d18:	00c70463          	beq	a4,a2,d20 <interface+0xb0>
     d1c:	1006ac23          	sw	zero,280(a3)
     d20:	000106b7          	lui	a3,0x10
     d24:	1146a703          	lw	a4,276(a3) # 10114 <sc_FH_TUERMODUL_CTRL_1739_10>
     d28:	00070a63          	beqz	a4,d3c <interface+0xcc>
     d2c:	00010637          	lui	a2,0x10
     d30:	09c62603          	lw	a2,156(a2) # 1009c <time>
     d34:	00c70463          	beq	a4,a2,d3c <interface+0xcc>
     d38:	1006aa23          	sw	zero,276(a3)
     d3c:	0007c783          	lbu	a5,0(a5)
     d40:	00079c63          	bnez	a5,d58 <interface+0xe8>
     d44:	000107b7          	lui	a5,0x10
     d48:	0e87a703          	lw	a4,232(a5) # 100e8 <BLOCK_ERKENNUNG_CTRL__N>
     d4c:	000107b7          	lui	a5,0x10
     d50:	0e07a783          	lw	a5,224(a5) # 100e0 <BLOCK_ERKENNUNG_CTRL__N_old>
     d54:	00f70c63          	beq	a4,a5,d6c <interface+0xfc>
     d58:	000107b7          	lui	a5,0x10
     d5c:	09c7a703          	lw	a4,156(a5) # 1009c <time>
     d60:	000107b7          	lui	a5,0x10
     d64:	12e7ae23          	sw	a4,316(a5) # 1013c <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
     d68:	00008067          	ret
     d6c:	00008067          	ret
     d70:	0067c703          	lbu	a4,6(a5)
     d74:	f20702e3          	beqz	a4,c98 <interface+0x28>
     d78:	00010737          	lui	a4,0x10
     d7c:	09c72703          	lw	a4,156(a4) # 1009c <time>
     d80:	f11ff06f          	j	c90 <interface+0x20>

00000d84 <init>:
     d84:	000107b7          	lui	a5,0x10
     d88:	1207ae23          	sw	zero,316(a5) # 1013c <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
     d8c:	000107b7          	lui	a5,0x10
     d90:	1207ac23          	sw	zero,312(a5) # 10138 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
     d94:	000107b7          	lui	a5,0x10
     d98:	1207aa23          	sw	zero,308(a5) # 10134 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
     d9c:	000107b7          	lui	a5,0x10
     da0:	08078ba3          	sb	zero,151(a5) # 10097 <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
     da4:	000107b7          	lui	a5,0x10
     da8:	08078b23          	sb	zero,150(a5) # 10096 <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
     dac:	000107b7          	lui	a5,0x10
     db0:	08078aa3          	sb	zero,149(a5) # 10095 <MEC_KINDERSICHERUNG_CTRL_next_state>
     db4:	000107b7          	lui	a5,0x10
     db8:	08078a23          	sb	zero,148(a5) # 10094 <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
     dbc:	000107b7          	lui	a5,0x10
     dc0:	080789a3          	sb	zero,147(a5) # 10093 <B_FH_TUERMODUL_CTRL_next_state>
     dc4:	000107b7          	lui	a5,0x10
     dc8:	08078923          	sb	zero,146(a5) # 10092 <A_FH_TUERMODUL_CTRL_next_state>
     dcc:	000107b7          	lui	a5,0x10
     dd0:	080788a3          	sb	zero,145(a5) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
     dd4:	000107b7          	lui	a5,0x10
     dd8:	08078823          	sb	zero,144(a5) # 10090 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
     ddc:	000107b7          	lui	a5,0x10
     de0:	080787a3          	sb	zero,143(a5) # 1008f <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     de4:	000107b7          	lui	a5,0x10
     de8:	08078723          	sb	zero,142(a5) # 1008e <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     dec:	000107b7          	lui	a5,0x10
     df0:	080786a3          	sb	zero,141(a5) # 1008d <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
     df4:	000107b7          	lui	a5,0x10
     df8:	08078623          	sb	zero,140(a5) # 1008c <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
     dfc:	000107b7          	lui	a5,0x10
     e00:	080785a3          	sb	zero,139(a5) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
     e04:	000107b7          	lui	a5,0x10
     e08:	08078523          	sb	zero,138(a5) # 1008a <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
     e0c:	000107b7          	lui	a5,0x10
     e10:	080784a3          	sb	zero,137(a5) # 10089 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
     e14:	000107b7          	lui	a5,0x10
     e18:	08078423          	sb	zero,136(a5) # 10088 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
     e1c:	00008067          	ret

00000e20 <generic_KINDERSICHERUNG_CTRL>:
     e20:	000107b7          	lui	a5,0x10
     e24:	04a7c783          	lbu	a5,74(a5) # 1004a <Bitlist+0xa>
     e28:	00078e63          	beqz	a5,e44 <generic_KINDERSICHERUNG_CTRL+0x24>
     e2c:	ff010113          	addi	sp,sp,-16
     e30:	00112623          	sw	ra,12(sp)
     e34:	b1cff0ef          	jal	ra,150 <generic_KINDERSICHERUNG_CTRL.part.0>
     e38:	00c12083          	lw	ra,12(sp)
     e3c:	01010113          	addi	sp,sp,16
     e40:	00008067          	ret
     e44:	00008067          	ret

00000e48 <generic_FH_TUERMODUL_CTRL>:
     e48:	000107b7          	lui	a5,0x10
     e4c:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
     e50:	00d7c703          	lbu	a4,13(a5)
     e54:	02071063          	bnez	a4,e74 <generic_FH_TUERMODUL_CTRL+0x2c>
     e58:	00f7c703          	lbu	a4,15(a5)
     e5c:	02070863          	beqz	a4,e8c <generic_FH_TUERMODUL_CTRL+0x44>
     e60:	00e7c703          	lbu	a4,14(a5)
     e64:	02071463          	bnez	a4,e8c <generic_FH_TUERMODUL_CTRL+0x44>
     e68:	00078223          	sb	zero,4(a5)
     e6c:	00078323          	sb	zero,6(a5)
     e70:	00008067          	ret
     e74:	ff010113          	addi	sp,sp,-16
     e78:	00112623          	sw	ra,12(sp)
     e7c:	e24ff0ef          	jal	ra,4a0 <generic_FH_TUERMODUL_CTRL.part.0>
     e80:	00c12083          	lw	ra,12(sp)
     e84:	01010113          	addi	sp,sp,16
     e88:	00008067          	ret
     e8c:	00008067          	ret

00000e90 <generic_EINKLEMMSCHUTZ_CTRL>:
     e90:	000107b7          	lui	a5,0x10
     e94:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
     e98:	0107c703          	lbu	a4,16(a5)
     e9c:	04070263          	beqz	a4,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     ea0:	000106b7          	lui	a3,0x10
     ea4:	08a6c703          	lbu	a4,138(a3) # 1008a <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
     ea8:	00100613          	li	a2,1
     eac:	02c70c63          	beq	a4,a2,ee4 <generic_EINKLEMMSCHUTZ_CTRL+0x54>
     eb0:	00200593          	li	a1,2
     eb4:	02b71063          	bne	a4,a1,ed4 <generic_EINKLEMMSCHUTZ_CTRL+0x44>
     eb8:	00010737          	lui	a4,0x10
     ebc:	0bf74703          	lbu	a4,191(a4) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
     ec0:	00078c23          	sb	zero,24(a5)
     ec4:	00071e63          	bnez	a4,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     ec8:	000107b7          	lui	a5,0x10
     ecc:	0be7c783          	lbu	a5,190(a5) # 100be <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
     ed0:	00078863          	beqz	a5,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     ed4:	000107b7          	lui	a5,0x10
     ed8:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     edc:	08c68523          	sb	a2,138(a3)
     ee0:	00008067          	ret
     ee4:	00010737          	lui	a4,0x10
     ee8:	0bf74703          	lbu	a4,191(a4) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
     eec:	fe070ae3          	beqz	a4,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     ef0:	00010737          	lui	a4,0x10
     ef4:	0be74703          	lbu	a4,190(a4) # 100be <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
     ef8:	fe0714e3          	bnez	a4,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     efc:	00010737          	lui	a4,0x10
     f00:	0cb74703          	lbu	a4,203(a4) # 100cb <FH_TUERMODUL__SFHZ>
     f04:	00070863          	beqz	a4,f14 <generic_EINKLEMMSCHUTZ_CTRL+0x84>
     f08:	00010737          	lui	a4,0x10
     f0c:	0c874703          	lbu	a4,200(a4) # 100c8 <FH_TUERMODUL__SFHA>
     f10:	fc0718e3          	bnez	a4,ee0 <generic_EINKLEMMSCHUTZ_CTRL+0x50>
     f14:	00010737          	lui	a4,0x10
     f18:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     f1c:	00100713          	li	a4,1
     f20:	00e78c23          	sb	a4,24(a5)
     f24:	00200793          	li	a5,2
     f28:	08f68523          	sb	a5,138(a3)
     f2c:	00008067          	ret

00000f30 <generic_BLOCK_ERKENNUNG_CTRL>:
     f30:	000107b7          	lui	a5,0x10
     f34:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
     f38:	0137c703          	lbu	a4,19(a5)
     f3c:	02071063          	bnez	a4,f5c <generic_BLOCK_ERKENNUNG_CTRL+0x2c>
     f40:	0157c703          	lbu	a4,21(a5)
     f44:	00070a63          	beqz	a4,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
     f48:	0147c703          	lbu	a4,20(a5)
     f4c:	00071663          	bnez	a4,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
     f50:	00078023          	sb	zero,0(a5)
     f54:	00008067          	ret
     f58:	00008067          	ret
     f5c:	000106b7          	lui	a3,0x10
     f60:	0886c703          	lbu	a4,136(a3) # 10088 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
     f64:	00100613          	li	a2,1
     f68:	08c70863          	beq	a4,a2,ff8 <generic_BLOCK_ERKENNUNG_CTRL+0xc8>
     f6c:	00200593          	li	a1,2
     f70:	06b71c63          	bne	a4,a1,fe8 <generic_BLOCK_ERKENNUNG_CTRL+0xb8>
     f74:	00010737          	lui	a4,0x10
     f78:	0c274703          	lbu	a4,194(a4) # 100c2 <FH_TUERMODUL__MFHA>
     f7c:	00071863          	bnez	a4,f8c <generic_BLOCK_ERKENNUNG_CTRL+0x5c>
     f80:	00010737          	lui	a4,0x10
     f84:	0c074703          	lbu	a4,192(a4) # 100c0 <FH_TUERMODUL__MFHA_old>
     f88:	0c071263          	bnez	a4,104c <generic_BLOCK_ERKENNUNG_CTRL+0x11c>
     f8c:	00010737          	lui	a4,0x10
     f90:	0c574703          	lbu	a4,197(a4) # 100c5 <FH_TUERMODUL__MFHZ>
     f94:	00071863          	bnez	a4,fa4 <generic_BLOCK_ERKENNUNG_CTRL+0x74>
     f98:	00010737          	lui	a4,0x10
     f9c:	0c374703          	lbu	a4,195(a4) # 100c3 <FH_TUERMODUL__MFHZ_old>
     fa0:	0a071663          	bnez	a4,104c <generic_BLOCK_ERKENNUNG_CTRL+0x11c>
     fa4:	000106b7          	lui	a3,0x10
     fa8:	0896c703          	lbu	a4,137(a3) # 10089 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
     fac:	00200613          	li	a2,2
     fb0:	0ec70663          	beq	a4,a2,109c <generic_BLOCK_ERKENNUNG_CTRL+0x16c>
     fb4:	00300513          	li	a0,3
     fb8:	0aa70a63          	beq	a4,a0,106c <generic_BLOCK_ERKENNUNG_CTRL+0x13c>
     fbc:	00100593          	li	a1,1
     fc0:	0ab70463          	beq	a4,a1,1068 <generic_BLOCK_ERKENNUNG_CTRL+0x138>
     fc4:	00010737          	lui	a4,0x10
     fc8:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
     fcc:	00010737          	lui	a4,0x10
     fd0:	0e072423          	sw	zero,232(a4) # 100e8 <BLOCK_ERKENNUNG_CTRL__N>
     fd4:	00010737          	lui	a4,0x10
     fd8:	0ec72823          	sw	a2,240(a4) # 100f0 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
     fdc:	08a684a3          	sb	a0,137(a3)
     fe0:	00b78023          	sb	a1,0(a5)
     fe4:	00008067          	ret
     fe8:	000107b7          	lui	a5,0x10
     fec:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
     ff0:	08c68423          	sb	a2,136(a3)
     ff4:	00008067          	ret
     ff8:	00010637          	lui	a2,0x10
     ffc:	000105b7          	lui	a1,0x10
    1000:	10c62603          	lw	a2,268(a2) # 1010c <FH_TUERMODUL__I_EIN>
    1004:	1085a583          	lw	a1,264(a1) # 10108 <FH_TUERMODUL__I_EIN_old>
    1008:	f4b608e3          	beq	a2,a1,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
    100c:	f4c056e3          	blez	a2,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
    1010:	00200613          	li	a2,2
    1014:	08c68423          	sb	a2,136(a3)
    1018:	000106b7          	lui	a3,0x10
    101c:	000105b7          	lui	a1,0x10
    1020:	0e06a423          	sw	zero,232(a3) # 100e8 <BLOCK_ERKENNUNG_CTRL__N>
    1024:	000106b7          	lui	a3,0x10
    1028:	0ec6a823          	sw	a2,240(a3) # 100f0 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
    102c:	08058ca3          	sb	zero,153(a1) # 10099 <stable>
    1030:	000106b7          	lui	a3,0x10
    1034:	000105b7          	lui	a1,0x10
    1038:	00300613          	li	a2,3
    103c:	0c058723          	sb	zero,206(a1) # 100ce <FH_TUERMODUL__BLOCK_copy>
    1040:	08c684a3          	sb	a2,137(a3) # 10089 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
    1044:	00e78023          	sb	a4,0(a5)
    1048:	00008067          	ret
    104c:	000107b7          	lui	a5,0x10
    1050:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
    1054:	00100793          	li	a5,1
    1058:	08f68423          	sb	a5,136(a3)
    105c:	000107b7          	lui	a5,0x10
    1060:	080784a3          	sb	zero,137(a5) # 10089 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
    1064:	00008067          	ret
    1068:	00008067          	ret
    106c:	00010737          	lui	a4,0x10
    1070:	0e872703          	lw	a4,232(a4) # 100e8 <BLOCK_ERKENNUNG_CTRL__N>
    1074:	00078023          	sb	zero,0(a5)
    1078:	00b00793          	li	a5,11
    107c:	ecf71ee3          	bne	a4,a5,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
    1080:	000107b7          	lui	a5,0x10
    1084:	0e07a783          	lw	a5,224(a5) # 100e0 <BLOCK_ERKENNUNG_CTRL__N_old>
    1088:	ece788e3          	beq	a5,a4,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
    108c:	000107b7          	lui	a5,0x10
    1090:	08078ca3          	sb	zero,153(a5) # 10099 <stable>
    1094:	08c684a3          	sb	a2,137(a3)
    1098:	00008067          	ret
    109c:	000107b7          	lui	a5,0x10
    10a0:	0f07a783          	lw	a5,240(a5) # 100f0 <BLOCK_ERKENNUNG_CTRL__I_EIN_MAX>
    10a4:	00010737          	lui	a4,0x10
    10a8:	10c72703          	lw	a4,268(a4) # 1010c <FH_TUERMODUL__I_EIN>
    10ac:	fff78793          	addi	a5,a5,-1
    10b0:	eaf744e3          	blt	a4,a5,f58 <generic_BLOCK_ERKENNUNG_CTRL+0x28>
    10b4:	00010737          	lui	a4,0x10
    10b8:	00100793          	li	a5,1
    10bc:	08070ca3          	sb	zero,153(a4) # 10099 <stable>
    10c0:	00010737          	lui	a4,0x10
    10c4:	0cf70723          	sb	a5,206(a4) # 100ce <FH_TUERMODUL__BLOCK_copy>
    10c8:	08f684a3          	sb	a5,137(a3)
    10cc:	00008067          	ret

000010d0 <FH_DU>:
    10d0:	000107b7          	lui	a5,0x10
    10d4:	fa010113          	addi	sp,sp,-96
    10d8:	0b27c703          	lbu	a4,178(a5) # 100b2 <FH_DU__S_FH_TMBFZUCAN>
    10dc:	000107b7          	lui	a5,0x10
    10e0:	0b07ce83          	lbu	t4,176(a5) # 100b0 <FH_DU__S_FH_TMBFZUCAN_old>
    10e4:	04812c23          	sw	s0,88(sp)
    10e8:	000107b7          	lui	a5,0x10
    10ec:	00010437          	lui	s0,0x10
    10f0:	04040413          	addi	s0,s0,64 # 10040 <Bitlist>
    10f4:	000106b7          	lui	a3,0x10
    10f8:	0ad7c583          	lbu	a1,173(a5) # 100ad <FH_DU__S_FH_TMBFAUFDISC>
    10fc:	000107b7          	lui	a5,0x10
    1100:	01044883          	lbu	a7,16(s0)
    1104:	01344803          	lbu	a6,19(s0)
    1108:	00d44503          	lbu	a0,13(s0)
    110c:	0ac7c383          	lbu	t2,172(a5) # 100ac <FH_DU__S_FH_TMBFAUFDISC_old>
    1110:	0b36cf83          	lbu	t6,179(a3) # 100b3 <FH_DU__S_FH_TMBFAUFCAN_old>
    1114:	000107b7          	lui	a5,0x10
    1118:	000106b7          	lui	a3,0x10
    111c:	00010637          	lui	a2,0x10
    1120:	00a44303          	lbu	t1,10(s0)
    1124:	0b57c783          	lbu	a5,181(a5) # 100b5 <FH_DU__S_FH_TMBFAUFCAN>
    1128:	0af6c683          	lbu	a3,175(a3) # 100af <FH_DU__S_FH_TMBFZUDISC>
    112c:	00100e13          	li	t3,1
    1130:	0ae64f03          	lbu	t5,174(a2) # 100ae <FH_DU__S_FH_TMBFZUDISC_old>
    1134:	00010637          	lui	a2,0x10
    1138:	04912a23          	sw	s1,84(sp)
    113c:	05212823          	sw	s2,80(sp)
    1140:	05312623          	sw	s3,76(sp)
    1144:	05412423          	sw	s4,72(sp)
    1148:	05512223          	sw	s5,68(sp)
    114c:	03712e23          	sw	s7,60(sp)
    1150:	03812c23          	sw	s8,56(sp)
    1154:	03912a23          	sw	s9,52(sp)
    1158:	03a12823          	sw	s10,48(sp)
    115c:	03b12623          	sw	s11,44(sp)
    1160:	09c62e23          	sw	t3,156(a2) # 1009c <time>
    1164:	04112e23          	sw	ra,92(sp)
    1168:	05612023          	sw	s6,64(sp)
    116c:	00000e13          	li	t3,0
    1170:	00010cb7          	lui	s9,0x10
    1174:	00010c37          	lui	s8,0x10
    1178:	00010ab7          	lui	s5,0x10
    117c:	00010937          	lui	s2,0x10
    1180:	00010a37          	lui	s4,0x10
    1184:	000109b7          	lui	s3,0x10
    1188:	00010bb7          	lui	s7,0x10
    118c:	00010db7          	lui	s11,0x10
    1190:	00010d37          	lui	s10,0x10
    1194:	00100493          	li	s1,1
    1198:	00050293          	mv	t0,a0
    119c:	01112623          	sw	a7,12(sp)
    11a0:	01012a23          	sw	a6,20(sp)
    11a4:	00010637          	lui	a2,0x10
    11a8:	00010537          	lui	a0,0x10
    11ac:	08b64603          	lbu	a2,139(a2) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    11b0:	001e0e13          	addi	t3,t3,1
    11b4:	08950ca3          	sb	s1,153(a0) # 10099 <stable>
    11b8:	00010537          	lui	a0,0x10
    11bc:	09c50c23          	sb	t3,152(a0) # 10098 <step>
    11c0:	00200513          	li	a0,2
    11c4:	60a60263          	beq	a2,a0,17c8 <FH_DU+0x6f8>
    11c8:	00300813          	li	a6,3
    11cc:	5d060463          	beq	a2,a6,1794 <FH_DU+0x6c4>
    11d0:	62960663          	beq	a2,s1,17fc <FH_DU+0x72c>
    11d4:	00010637          	lui	a2,0x10
    11d8:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
    11dc:	00010637          	lui	a2,0x10
    11e0:	10062223          	sw	zero,260(a2) # 10104 <FH_DU__MFH>
    11e4:	00010637          	lui	a2,0x10
    11e8:	08a605a3          	sb	a0,139(a2) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    11ec:	00031863          	bnez	t1,11fc <FH_DU+0x12c>
    11f0:	00300613          	li	a2,3
    11f4:	00010537          	lui	a0,0x10
    11f8:	08c50a23          	sb	a2,148(a0) # 10094 <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
    11fc:	00c12603          	lw	a2,12(sp)
    1200:	00061663          	bnez	a2,120c <FH_DU+0x13c>
    1204:	00010637          	lui	a2,0x10
    1208:	08960523          	sb	s1,138(a2) # 1008a <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
    120c:	01412603          	lw	a2,20(sp)
    1210:	00061863          	bnez	a2,1220 <FH_DU+0x150>
    1214:	00010637          	lui	a2,0x10
    1218:	00040023          	sb	zero,0(s0)
    121c:	08960423          	sb	s1,136(a2) # 10088 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
    1220:	02029a63          	bnez	t0,1254 <FH_DU+0x184>
    1224:	00200613          	li	a2,2
    1228:	00010537          	lui	a0,0x10
    122c:	08c509a3          	sb	a2,147(a0) # 10093 <B_FH_TUERMODUL_CTRL_next_state>
    1230:	00010637          	lui	a2,0x10
    1234:	12062223          	sw	zero,292(a2) # 10124 <FH_TUERMODUL_CTRL__N>
    1238:	00010637          	lui	a2,0x10
    123c:	08960923          	sb	s1,146(a2) # 10092 <A_FH_TUERMODUL_CTRL_next_state>
    1240:	10000613          	li	a2,256
    1244:	00c41223          	sh	a2,4(s0)
    1248:	00010637          	lui	a2,0x10
    124c:	00040323          	sb	zero,6(s0)
    1250:	089608a3          	sb	s1,145(a2) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
    1254:	009405a3          	sb	s1,11(s0)
    1258:	009408a3          	sb	s1,17(s0)
    125c:	00940a23          	sb	s1,20(s0)
    1260:	00940723          	sb	s1,14(s0)
    1264:	47d70263          	beq	a4,t4,16c8 <FH_DU+0x5f8>
    1268:	00010637          	lui	a2,0x10
    126c:	0a964603          	lbu	a2,169(a2) # 100a9 <FH_DU__DOOR_ID>
    1270:	50061063          	bnez	a2,1770 <FH_DU+0x6a0>
    1274:	0aea8d23          	sb	a4,186(s5) # 100ba <FH_DU__S_FH_FTZU>
    1278:	47e68663          	beq	a3,t5,16e4 <FH_DU+0x614>
    127c:	61f78663          	beq	a5,t6,1888 <FH_DU+0x7b8>
    1280:	0af90ca3          	sb	a5,185(s2) # 100b9 <FH_DU__S_FH_FTAUF>
    1284:	01244803          	lbu	a6,18(s0)
    1288:	01544503          	lbu	a0,21(s0)
    128c:	00c44583          	lbu	a1,12(s0)
    1290:	00f44f83          	lbu	t6,15(s0)
    1294:	0aaa4603          	lbu	a2,170(s4) # 100aa <FH_DU__S_FH_AUFDISC>
    1298:	0ab9c683          	lbu	a3,171(s3) # 100ab <FH_DU__S_FH_ZUDISC>
    129c:	00010337          	lui	t1,0x10
    12a0:	01040823          	sb	a6,16(s0)
    12a4:	00a409a3          	sb	a0,19(s0)
    12a8:	00010837          	lui	a6,0x10
    12ac:	00010537          	lui	a0,0x10
    12b0:	000108b7          	lui	a7,0x10
    12b4:	00b40523          	sb	a1,10(s0)
    12b8:	01f406a3          	sb	t6,13(s0)
    12bc:	0cc50923          	sb	a2,210(a0) # 100d2 <FH_TUERMODUL__SFHA_MEC>
    12c0:	0cf80a23          	sb	a5,212(a6) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
    12c4:	0cd88b23          	sb	a3,214(a7) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
    12c8:	0ce30c23          	sb	a4,216(t1) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
    12cc:	00030b13          	mv	s6,t1
    12d0:	02058463          	beqz	a1,12f8 <FH_DU+0x228>
    12d4:	e7dfe0ef          	jal	ra,150 <generic_KINDERSICHERUNG_CTRL.part.0>
    12d8:	00010537          	lui	a0,0x10
    12dc:	00010837          	lui	a6,0x10
    12e0:	000108b7          	lui	a7,0x10
    12e4:	0d254603          	lbu	a2,210(a0) # 100d2 <FH_TUERMODUL__SFHA_MEC>
    12e8:	0d484783          	lbu	a5,212(a6) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
    12ec:	0d68c683          	lbu	a3,214(a7) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
    12f0:	0d8b4703          	lbu	a4,216(s6)
    12f4:	00d44f83          	lbu	t6,13(s0)
    12f8:	000105b7          	lui	a1,0x10
    12fc:	0c25cf03          	lbu	t5,194(a1) # 100c2 <FH_TUERMODUL__MFHA>
    1300:	000105b7          	lui	a1,0x10
    1304:	0c55ce83          	lbu	t4,197(a1) # 100c5 <FH_TUERMODUL__MFHZ>
    1308:	000105b7          	lui	a1,0x10
    130c:	0bf5c303          	lbu	t1,191(a1) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
    1310:	000105b7          	lui	a1,0x10
    1314:	1105a883          	lw	a7,272(a1) # 10110 <FH_TUERMODUL__POSITION>
    1318:	10cbae03          	lw	t3,268(s7) # 1010c <FH_TUERMODUL__I_EIN>
    131c:	000105b7          	lui	a1,0x10
    1320:	0cc5c803          	lbu	a6,204(a1) # 100cc <FH_TUERMODUL__FT>
    1324:	000105b7          	lui	a1,0x10
    1328:	0d05c503          	lbu	a0,208(a1) # 100d0 <FH_TUERMODUL__KL_50>
    132c:	000102b7          	lui	t0,0x10
    1330:	000105b7          	lui	a1,0x10
    1334:	0cf5c583          	lbu	a1,207(a1) # 100cf <FH_TUERMODUL__BLOCK>
    1338:	0fc2ac23          	sw	t3,248(t0) # 100f8 <FH_DU__I_EIN>
    133c:	000102b7          	lui	t0,0x10
    1340:	0a628ba3          	sb	t1,183(t0) # 100b7 <FH_DU__EKS_LEISTE_AKTIV>
    1344:	000102b7          	lui	t0,0x10
    1348:	0b028c23          	sb	a6,184(t0) # 100b8 <FH_DU__FT>
    134c:	000102b7          	lui	t0,0x10
    1350:	0bec0123          	sb	t5,162(s8) # 100a2 <FH_DU__MFHA>
    1354:	0bdc82a3          	sb	t4,165(s9) # 100a5 <FH_DU__MFHZ>
    1358:	0f1dae23          	sw	a7,252(s11) # 100fc <FH_DU__POSITION>
    135c:	0aca0523          	sb	a2,170(s4)
    1360:	0af90ca3          	sb	a5,185(s2)
    1364:	0ad985a3          	sb	a3,171(s3)
    1368:	0aea8d23          	sb	a4,186(s5)
    136c:	0aad0da3          	sb	a0,187(s10) # 100bb <FH_DU__KL_50>
    1370:	0ab28423          	sb	a1,168(t0) # 100a8 <FH_DU__BLOCK>
    1374:	380f9c63          	bnez	t6,170c <FH_DU+0x63c>
    1378:	00f44f83          	lbu	t6,15(s0)
    137c:	000f8a63          	beqz	t6,1390 <FH_DU+0x2c0>
    1380:	00e44f83          	lbu	t6,14(s0)
    1384:	000f9663          	bnez	t6,1390 <FH_DU+0x2c0>
    1388:	00040223          	sb	zero,4(s0)
    138c:	00040323          	sb	zero,6(s0)
    1390:	0af90ca3          	sb	a5,185(s2)
    1394:	0aea8d23          	sb	a4,186(s5)
    1398:	000107b7          	lui	a5,0x10
    139c:	00010737          	lui	a4,0x10
    13a0:	0f1dae23          	sw	a7,252(s11)
    13a4:	0ad985a3          	sb	a3,171(s3)
    13a8:	000108b7          	lui	a7,0x10
    13ac:	000106b7          	lui	a3,0x10
    13b0:	0fc7ac23          	sw	t3,248(a5) # 100f8 <FH_DU__I_EIN>
    13b4:	0a670ba3          	sb	t1,183(a4) # 100b7 <FH_DU__EKS_LEISTE_AKTIV>
    13b8:	0b088c23          	sb	a6,184(a7) # 100b8 <FH_DU__FT>
    13bc:	0ab68423          	sb	a1,168(a3) # 100a8 <FH_DU__BLOCK>
    13c0:	0bec0123          	sb	t5,162(s8)
    13c4:	0bdc82a3          	sb	t4,165(s9)
    13c8:	0aca0523          	sb	a2,170(s4)
    13cc:	0aad0da3          	sb	a0,187(s10)
    13d0:	ac1ff0ef          	jal	ra,e90 <generic_EINKLEMMSCHUTZ_CTRL>
    13d4:	000105b7          	lui	a1,0x10
    13d8:	0c55ce83          	lbu	t4,197(a1) # 100c5 <FH_TUERMODUL__MFHZ>
    13dc:	00010737          	lui	a4,0x10
    13e0:	000100b7          	lui	ra,0x10
    13e4:	11072883          	lw	a7,272(a4) # 10110 <FH_TUERMODUL__POSITION>
    13e8:	0d80c683          	lbu	a3,216(ra) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
    13ec:	10cbae03          	lw	t3,268(s7)
    13f0:	00010fb7          	lui	t6,0x10
    13f4:	000102b7          	lui	t0,0x10
    13f8:	000103b7          	lui	t2,0x10
    13fc:	000107b7          	lui	a5,0x10
    1400:	00010637          	lui	a2,0x10
    1404:	00010537          	lui	a0,0x10
    1408:	000100b7          	lui	ra,0x10
    140c:	00010837          	lui	a6,0x10
    1410:	0c264f03          	lbu	t5,194(a2) # 100c2 <FH_TUERMODUL__MFHA>
    1414:	0bf54303          	lbu	t1,191(a0) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
    1418:	0d42c583          	lbu	a1,212(t0) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
    141c:	0d2fc503          	lbu	a0,210(t6) # 100d2 <FH_TUERMODUL__SFHA_MEC>
    1420:	0d63c603          	lbu	a2,214(t2) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
    1424:	0d07c703          	lbu	a4,208(a5) # 100d0 <FH_TUERMODUL__KL_50>
    1428:	0cc84803          	lbu	a6,204(a6) # 100cc <FH_TUERMODUL__FT>
    142c:	00078b13          	mv	s6,a5
    1430:	0cf0c783          	lbu	a5,207(ra) # 100cf <FH_TUERMODUL__BLOCK>
    1434:	0bdc82a3          	sb	t4,165(s9)
    1438:	00010eb7          	lui	t4,0x10
    143c:	0fceac23          	sw	t3,248(t4) # 100f8 <FH_DU__I_EIN>
    1440:	0f1dae23          	sw	a7,252(s11)
    1444:	00010e37          	lui	t3,0x10
    1448:	000108b7          	lui	a7,0x10
    144c:	0ada8d23          	sb	a3,186(s5)
    1450:	000106b7          	lui	a3,0x10
    1454:	0a6e0ba3          	sb	t1,183(t3) # 100b7 <FH_DU__EKS_LEISTE_AKTIV>
    1458:	0b088c23          	sb	a6,184(a7) # 100b8 <FH_DU__FT>
    145c:	0af68423          	sb	a5,168(a3) # 100a8 <FH_DU__BLOCK>
    1460:	0bec0123          	sb	t5,162(s8)
    1464:	0aaa0523          	sb	a0,170(s4)
    1468:	0ab90ca3          	sb	a1,185(s2)
    146c:	0ac985a3          	sb	a2,171(s3)
    1470:	0aed0da3          	sb	a4,187(s10)
    1474:	abdff0ef          	jal	ra,f30 <generic_BLOCK_ERKENNUNG_CTRL>
    1478:	00010537          	lui	a0,0x10
    147c:	00010fb7          	lui	t6,0x10
    1480:	000102b7          	lui	t0,0x10
    1484:	000103b7          	lui	t2,0x10
    1488:	00010737          	lui	a4,0x10
    148c:	0bf54603          	lbu	a2,191(a0) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
    1490:	0d2fcf03          	lbu	t5,210(t6) # 100d2 <FH_TUERMODUL__SFHA_MEC>
    1494:	11072803          	lw	a6,272(a4) # 10110 <FH_TUERMODUL__POSITION>
    1498:	0d42cf83          	lbu	t6,212(t0) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
    149c:	01044703          	lbu	a4,16(s0)
    14a0:	0d63c283          	lbu	t0,214(t2) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
    14a4:	00010537          	lui	a0,0x10
    14a8:	0cc54503          	lbu	a0,204(a0) # 100cc <FH_TUERMODUL__FT>
    14ac:	00512823          	sw	t0,16(sp)
    14b0:	00e12623          	sw	a4,12(sp)
    14b4:	00010337          	lui	t1,0x10
    14b8:	01344703          	lbu	a4,19(s0)
    14bc:	000108b7          	lui	a7,0x10
    14c0:	10cba783          	lw	a5,268(s7)
    14c4:	0d834383          	lbu	t2,216(t1) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
    14c8:	0d0b4583          	lbu	a1,208(s6)
    14cc:	0aa88c23          	sb	a0,184(a7) # 100b8 <FH_DU__FT>
    14d0:	00a44303          	lbu	t1,10(s0)
    14d4:	01012503          	lw	a0,16(sp)
    14d8:	00d44283          	lbu	t0,13(s0)
    14dc:	0f0dae23          	sw	a6,252(s11)
    14e0:	000106b7          	lui	a3,0x10
    14e4:	00c12803          	lw	a6,12(sp)
    14e8:	1246a683          	lw	a3,292(a3) # 10124 <FH_TUERMODUL_CTRL__N>
    14ec:	00010eb7          	lui	t4,0x10
    14f0:	00070b13          	mv	s6,a4
    14f4:	00e12a23          	sw	a4,20(sp)
    14f8:	00010e37          	lui	t3,0x10
    14fc:	100ea703          	lw	a4,256(t4) # 10100 <FH_DU__MFH_copy>
    1500:	00010eb7          	lui	t4,0x10
    1504:	0efeac23          	sw	a5,248(t4) # 100f8 <FH_DU__I_EIN>
    1508:	0ace0ba3          	sb	a2,183(t3) # 100b7 <FH_DU__EKS_LEISTE_AKTIV>
    150c:	0bea0523          	sb	t5,170(s4)
    1510:	0aa985a3          	sb	a0,171(s3)
    1514:	0a7a8d23          	sb	t2,186(s5)
    1518:	0abd0da3          	sb	a1,187(s10)
    151c:	010408a3          	sb	a6,17(s0)
    1520:	0bf90ca3          	sb	t6,185(s2)
    1524:	00010837          	lui	a6,0x10
    1528:	006405a3          	sb	t1,11(s0)
    152c:	00540723          	sb	t0,14(s0)
    1530:	01640a23          	sb	s6,20(s0)
    1534:	10d82e23          	sw	a3,284(a6) # 1011c <FH_TUERMODUL_CTRL__N_old>
    1538:	00010837          	lui	a6,0x10
    153c:	10f82423          	sw	a5,264(a6) # 10108 <FH_TUERMODUL__I_EIN_old>
    1540:	00010837          	lui	a6,0x10
    1544:	10e82223          	sw	a4,260(a6) # 10104 <FH_DU__MFH>
    1548:	00010737          	lui	a4,0x10
    154c:	0ef72a23          	sw	a5,244(a4) # 100f4 <FH_DU__I_EIN_old>
    1550:	000107b7          	lui	a5,0x10
    1554:	0e87a783          	lw	a5,232(a5) # 100e8 <BLOCK_ERKENNUNG_CTRL__N>
    1558:	00010837          	lui	a6,0x10
    155c:	00010737          	lui	a4,0x10
    1560:	00078b13          	mv	s6,a5
    1564:	0f682023          	sw	s6,224(a6) # 100e0 <BLOCK_ERKENNUNG_CTRL__N_old>
    1568:	00010837          	lui	a6,0x10
    156c:	0ce74e83          	lbu	t4,206(a4) # 100ce <FH_TUERMODUL__BLOCK_copy>
    1570:	0c780ba3          	sb	t2,215(a6) # 100d7 <FH_TUERMODUL__SFHZ_ZENTRAL_old>
    1574:	00010737          	lui	a4,0x10
    1578:	01012383          	lw	t2,16(sp)
    157c:	0ca74e03          	lbu	t3,202(a4) # 100ca <FH_TUERMODUL__SFHZ_copy>
    1580:	00010737          	lui	a4,0x10
    1584:	0c774783          	lbu	a5,199(a4) # 100c7 <FH_TUERMODUL__SFHA_copy>
    1588:	00010837          	lui	a6,0x10
    158c:	0c780aa3          	sb	t2,213(a6) # 100d5 <FH_TUERMODUL__SFHZ_MEC_old>
    1590:	00010837          	lui	a6,0x10
    1594:	0df809a3          	sb	t6,211(a6) # 100d3 <FH_TUERMODUL__SFHA_ZENTRAL_old>
    1598:	00010837          	lui	a6,0x10
    159c:	00f12c23          	sw	a5,24(sp)
    15a0:	0de808a3          	sb	t5,209(a6) # 100d1 <FH_TUERMODUL__SFHA_MEC_old>
    15a4:	00010737          	lui	a4,0x10
    15a8:	00010837          	lui	a6,0x10
    15ac:	00010f37          	lui	t5,0x10
    15b0:	0c474883          	lbu	a7,196(a4) # 100c4 <FH_TUERMODUL__MFHZ_copy>
    15b4:	0dd806a3          	sb	t4,205(a6) # 100cd <FH_TUERMODUL__BLOCK_old>
    15b8:	00010737          	lui	a4,0x10
    15bc:	0ddf07a3          	sb	t4,207(t5) # 100cf <FH_TUERMODUL__BLOCK>
    15c0:	00010837          	lui	a6,0x10
    15c4:	01812e83          	lw	t4,24(sp)
    15c8:	0c174783          	lbu	a5,193(a4) # 100c1 <FH_TUERMODUL__MFHA_copy>
    15cc:	0dc805a3          	sb	t3,203(a6) # 100cb <FH_TUERMODUL__SFHZ>
    15d0:	00010837          	lui	a6,0x10
    15d4:	0dc804a3          	sb	t3,201(a6) # 100c9 <FH_TUERMODUL__SFHZ_old>
    15d8:	00010837          	lui	a6,0x10
    15dc:	00010737          	lui	a4,0x10
    15e0:	000105b7          	lui	a1,0x10
    15e4:	0dd80423          	sb	t4,200(a6) # 100c8 <FH_TUERMODUL__SFHA>
    15e8:	00010837          	lui	a6,0x10
    15ec:	0af5c683          	lbu	a3,175(a1) # 100af <FH_DU__S_FH_TMBFZUDISC>
    15f0:	00f12e23          	sw	a5,28(sp)
    15f4:	0dd80323          	sb	t4,198(a6) # 100c6 <FH_TUERMODUL__SFHA_old>
    15f8:	0b574783          	lbu	a5,181(a4) # 100b5 <FH_DU__S_FH_TMBFAUFCAN>
    15fc:	00010e37          	lui	t3,0x10
    1600:	00010837          	lui	a6,0x10
    1604:	00010737          	lui	a4,0x10
    1608:	000105b7          	lui	a1,0x10
    160c:	00010537          	lui	a0,0x10
    1610:	0a754503          	lbu	a0,167(a0) # 100a7 <FH_DU__BLOCK_copy>
    1614:	0d1801a3          	sb	a7,195(a6) # 100c3 <FH_TUERMODUL__MFHZ_old>
    1618:	0b274703          	lbu	a4,178(a4) # 100b2 <FH_DU__S_FH_TMBFZUCAN>
    161c:	0ad5c583          	lbu	a1,173(a1) # 100ad <FH_DU__S_FH_TMBFAUFDISC>
    1620:	0d1e02a3          	sb	a7,197(t3) # 100c5 <FH_TUERMODUL__MFHZ>
    1624:	01c12e03          	lw	t3,28(sp)
    1628:	00010837          	lui	a6,0x10
    162c:	000108b7          	lui	a7,0x10
    1630:	0dc80023          	sb	t3,192(a6) # 100c0 <FH_TUERMODUL__MFHA_old>
    1634:	00010837          	lui	a6,0x10
    1638:	0ac80f23          	sb	a2,190(a6) # 100be <FH_TUERMODUL__EKS_LEISTE_AKTIV_old>
    163c:	00010837          	lui	a6,0x10
    1640:	0ac80b23          	sb	a2,182(a6) # 100b6 <FH_DU__EKS_LEISTE_AKTIV_old>
    1644:	00010837          	lui	a6,0x10
    1648:	0af809a3          	sb	a5,179(a6) # 100b3 <FH_DU__S_FH_TMBFAUFCAN_old>
    164c:	00010837          	lui	a6,0x10
    1650:	00010637          	lui	a2,0x10
    1654:	0ae80823          	sb	a4,176(a6) # 100b0 <FH_DU__S_FH_TMBFZUCAN_old>
    1658:	00010837          	lui	a6,0x10
    165c:	0aa60423          	sb	a0,168(a2) # 100a8 <FH_DU__BLOCK>
    1660:	0ad80723          	sb	a3,174(a6) # 100ae <FH_DU__S_FH_TMBFZUDISC_old>
    1664:	00010637          	lui	a2,0x10
    1668:	00010837          	lui	a6,0x10
    166c:	0ab80623          	sb	a1,172(a6) # 100ac <FH_DU__S_FH_TMBFAUFDISC_old>
    1670:	0a464803          	lbu	a6,164(a2) # 100a4 <FH_DU__MFHZ_copy>
    1674:	00010637          	lui	a2,0x10
    1678:	0a164603          	lbu	a2,161(a2) # 100a1 <FH_DU__MFHA_copy>
    167c:	0dc88123          	sb	t3,194(a7) # 100c2 <FH_TUERMODUL__MFHA>
    1680:	000108b7          	lui	a7,0x10
    1684:	00010e37          	lui	t3,0x10
    1688:	0aae0323          	sb	a0,166(t3) # 100a6 <FH_DU__BLOCK_old>
    168c:	0998c883          	lbu	a7,153(a7) # 10099 <stable>
    1690:	00010537          	lui	a0,0x10
    1694:	0b0501a3          	sb	a6,163(a0) # 100a3 <FH_DU__MFHZ_old>
    1698:	00010537          	lui	a0,0x10
    169c:	0b0c82a3          	sb	a6,165(s9)
    16a0:	0acc0123          	sb	a2,162(s8)
    16a4:	0ac50023          	sb	a2,160(a0) # 100a0 <FH_DU__MFHA_old>
    16a8:	1a089263          	bnez	a7,184c <FH_DU+0x77c>
    16ac:	00010637          	lui	a2,0x10
    16b0:	09864e03          	lbu	t3,152(a2) # 10098 <step>
    16b4:	00068f13          	mv	t5,a3
    16b8:	00078f93          	mv	t6,a5
    16bc:	00058393          	mv	t2,a1
    16c0:	00070e93          	mv	t4,a4
    16c4:	ae1ff06f          	j	11a4 <FH_DU+0xd4>
    16c8:	0baac703          	lbu	a4,186(s5)
    16cc:	01e68c63          	beq	a3,t5,16e4 <FH_DU+0x614>
    16d0:	00010637          	lui	a2,0x10
    16d4:	0a964603          	lbu	a2,169(a2) # 100a9 <FH_DU__DOOR_ID>
    16d8:	ba0602e3          	beqz	a2,127c <FH_DU+0x1ac>
    16dc:	00010637          	lui	a2,0x10
    16e0:	0ad60923          	sb	a3,178(a2) # 100b2 <FH_DU__S_FH_TMBFZUCAN>
    16e4:	09f78c63          	beq	a5,t6,177c <FH_DU+0x6ac>
    16e8:	000106b7          	lui	a3,0x10
    16ec:	0a96c683          	lbu	a3,169(a3) # 100a9 <FH_DU__DOOR_ID>
    16f0:	b80688e3          	beqz	a3,1280 <FH_DU+0x1b0>
    16f4:	0b994783          	lbu	a5,185(s2)
    16f8:	b87586e3          	beq	a1,t2,1284 <FH_DU+0x1b4>
    16fc:	000106b7          	lui	a3,0x10
    1700:	0b994783          	lbu	a5,185(s2)
    1704:	0ab68aa3          	sb	a1,181(a3) # 100b5 <FH_DU__S_FH_TMBFAUFCAN>
    1708:	b7dff06f          	j	1284 <FH_DU+0x1b4>
    170c:	d95fe0ef          	jal	ra,4a0 <generic_FH_TUERMODUL_CTRL.part.0>
    1710:	000107b7          	lui	a5,0x10
    1714:	0c27cf03          	lbu	t5,194(a5) # 100c2 <FH_TUERMODUL__MFHA>
    1718:	000107b7          	lui	a5,0x10
    171c:	0c57ce83          	lbu	t4,197(a5) # 100c5 <FH_TUERMODUL__MFHZ>
    1720:	000107b7          	lui	a5,0x10
    1724:	0bf7c303          	lbu	t1,191(a5) # 100bf <FH_TUERMODUL__EKS_LEISTE_AKTIV>
    1728:	000107b7          	lui	a5,0x10
    172c:	1107a883          	lw	a7,272(a5) # 10110 <FH_TUERMODUL__POSITION>
    1730:	000107b7          	lui	a5,0x10
    1734:	00010737          	lui	a4,0x10
    1738:	000105b7          	lui	a1,0x10
    173c:	0cc7c803          	lbu	a6,204(a5) # 100cc <FH_TUERMODUL__FT>
    1740:	000107b7          	lui	a5,0x10
    1744:	0d27c603          	lbu	a2,210(a5) # 100d2 <FH_TUERMODUL__SFHA_MEC>
    1748:	0d674683          	lbu	a3,214(a4) # 100d6 <FH_TUERMODUL__SFHZ_MEC>
    174c:	0d05c503          	lbu	a0,208(a1) # 100d0 <FH_TUERMODUL__KL_50>
    1750:	000107b7          	lui	a5,0x10
    1754:	00010737          	lui	a4,0x10
    1758:	000105b7          	lui	a1,0x10
    175c:	10cbae03          	lw	t3,268(s7)
    1760:	0d47c783          	lbu	a5,212(a5) # 100d4 <FH_TUERMODUL__SFHA_ZENTRAL>
    1764:	0d874703          	lbu	a4,216(a4) # 100d8 <FH_TUERMODUL__SFHZ_ZENTRAL>
    1768:	0cf5c583          	lbu	a1,207(a1) # 100cf <FH_TUERMODUL__BLOCK>
    176c:	c25ff06f          	j	1390 <FH_DU+0x2c0>
    1770:	0baac703          	lbu	a4,186(s5)
    1774:	f7e694e3          	bne	a3,t5,16dc <FH_DU+0x60c>
    1778:	f7f79ee3          	bne	a5,t6,16f4 <FH_DU+0x624>
    177c:	0b994783          	lbu	a5,185(s2)
    1780:	b07582e3          	beq	a1,t2,1284 <FH_DU+0x1b4>
    1784:	000106b7          	lui	a3,0x10
    1788:	0a96c683          	lbu	a3,169(a3) # 100a9 <FH_DU__DOOR_ID>
    178c:	f60698e3          	bnez	a3,16fc <FH_DU+0x62c>
    1790:	af5ff06f          	j	1284 <FH_DU+0x1b4>
    1794:	0a2c4603          	lbu	a2,162(s8)
    1798:	a4061ae3          	bnez	a2,11ec <FH_DU+0x11c>
    179c:	00010637          	lui	a2,0x10
    17a0:	0a064603          	lbu	a2,160(a2) # 100a0 <FH_DU__MFHA_old>
    17a4:	a40604e3          	beqz	a2,11ec <FH_DU+0x11c>
    17a8:	00010637          	lui	a2,0x10
    17ac:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
    17b0:	00010637          	lui	a2,0x10
    17b4:	10062223          	sw	zero,260(a2) # 10104 <FH_DU__MFH>
    17b8:	00010537          	lui	a0,0x10
    17bc:	00200613          	li	a2,2
    17c0:	08c505a3          	sb	a2,139(a0) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    17c4:	a29ff06f          	j	11ec <FH_DU+0x11c>
    17c8:	0a5cc603          	lbu	a2,165(s9)
    17cc:	04060463          	beqz	a2,1814 <FH_DU+0x744>
    17d0:	00010637          	lui	a2,0x10
    17d4:	0a364603          	lbu	a2,163(a2) # 100a3 <FH_DU__MFHZ_old>
    17d8:	02061e63          	bnez	a2,1814 <FH_DU+0x744>
    17dc:	00010637          	lui	a2,0x10
    17e0:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
    17e4:	00010537          	lui	a0,0x10
    17e8:	f9c00613          	li	a2,-100
    17ec:	10c52223          	sw	a2,260(a0) # 10104 <FH_DU__MFH>
    17f0:	00010637          	lui	a2,0x10
    17f4:	089605a3          	sb	s1,139(a2) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    17f8:	9f5ff06f          	j	11ec <FH_DU+0x11c>
    17fc:	0a5cc603          	lbu	a2,165(s9)
    1800:	9e0616e3          	bnez	a2,11ec <FH_DU+0x11c>
    1804:	00010637          	lui	a2,0x10
    1808:	0a364603          	lbu	a2,163(a2) # 100a3 <FH_DU__MFHZ_old>
    180c:	9e0600e3          	beqz	a2,11ec <FH_DU+0x11c>
    1810:	f99ff06f          	j	17a8 <FH_DU+0x6d8>
    1814:	0a2c4603          	lbu	a2,162(s8)
    1818:	9c060ae3          	beqz	a2,11ec <FH_DU+0x11c>
    181c:	00010637          	lui	a2,0x10
    1820:	0a064603          	lbu	a2,160(a2) # 100a0 <FH_DU__MFHA_old>
    1824:	9c0614e3          	bnez	a2,11ec <FH_DU+0x11c>
    1828:	00010637          	lui	a2,0x10
    182c:	00010537          	lui	a0,0x10
    1830:	08060ca3          	sb	zero,153(a2) # 10099 <stable>
    1834:	06400613          	li	a2,100
    1838:	10c52223          	sw	a2,260(a0) # 10104 <FH_DU__MFH>
    183c:	00300613          	li	a2,3
    1840:	00010537          	lui	a0,0x10
    1844:	08c505a3          	sb	a2,139(a0) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    1848:	9a5ff06f          	j	11ec <FH_DU+0x11c>
    184c:	05c12083          	lw	ra,92(sp)
    1850:	05812403          	lw	s0,88(sp)
    1854:	05412483          	lw	s1,84(sp)
    1858:	05012903          	lw	s2,80(sp)
    185c:	04c12983          	lw	s3,76(sp)
    1860:	04812a03          	lw	s4,72(sp)
    1864:	04412a83          	lw	s5,68(sp)
    1868:	04012b03          	lw	s6,64(sp)
    186c:	03c12b83          	lw	s7,60(sp)
    1870:	03812c03          	lw	s8,56(sp)
    1874:	03412c83          	lw	s9,52(sp)
    1878:	03012d03          	lw	s10,48(sp)
    187c:	02c12d83          	lw	s11,44(sp)
    1880:	06010113          	addi	sp,sp,96
    1884:	00008067          	ret
    1888:	0b994783          	lbu	a5,185(s2)
    188c:	9f9ff06f          	j	1284 <FH_DU+0x1b4>

00001890 <benchmark_body>:
    1890:	06a05263          	blez	a0,18f4 <benchmark_body+0x64>
    1894:	ff010113          	addi	sp,sp,-16
    1898:	00812423          	sw	s0,8(sp)
    189c:	00912223          	sw	s1,4(sp)
    18a0:	01212023          	sw	s2,0(sp)
    18a4:	00112623          	sw	ra,12(sp)
    18a8:	00050493          	mv	s1,a0
    18ac:	00000413          	li	s0,0
    18b0:	00010937          	lui	s2,0x10
    18b4:	04000613          	li	a2,64
    18b8:	00000593          	li	a1,0
    18bc:	04090513          	addi	a0,s2,64 # 10040 <Bitlist>
    18c0:	1f0000ef          	jal	ra,1ab0 <memset>
    18c4:	00140413          	addi	s0,s0,1
    18c8:	cbcff0ef          	jal	ra,d84 <init>
    18cc:	ba4ff0ef          	jal	ra,c70 <interface>
    18d0:	801ff0ef          	jal	ra,10d0 <FH_DU>
    18d4:	fe8490e3          	bne	s1,s0,18b4 <benchmark_body+0x24>
    18d8:	00c12083          	lw	ra,12(sp)
    18dc:	00812403          	lw	s0,8(sp)
    18e0:	00412483          	lw	s1,4(sp)
    18e4:	00012903          	lw	s2,0(sp)
    18e8:	00000513          	li	a0,0
    18ec:	01010113          	addi	sp,sp,16
    18f0:	00008067          	ret
    18f4:	00000513          	li	a0,0
    18f8:	00008067          	ret

000018fc <warm_caches>:
    18fc:	ff010113          	addi	sp,sp,-16
    1900:	00112623          	sw	ra,12(sp)
    1904:	f8dff0ef          	jal	ra,1890 <benchmark_body>
    1908:	00c12083          	lw	ra,12(sp)
    190c:	01010113          	addi	sp,sp,16
    1910:	00008067          	ret

00001914 <benchmark>:
    1914:	0005c537          	lui	a0,0x5c
    1918:	ff010113          	addi	sp,sp,-16
    191c:	62050513          	addi	a0,a0,1568 # 5c620 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x4c4e4>
    1920:	00112623          	sw	ra,12(sp)
    1924:	f6dff0ef          	jal	ra,1890 <benchmark_body>
    1928:	00c12083          	lw	ra,12(sp)
    192c:	01010113          	addi	sp,sp,16
    1930:	00008067          	ret

00001934 <initialise_benchmark>:
    1934:	00008067          	ret

00001938 <verify_benchmark>:
    1938:	000107b7          	lui	a5,0x10
    193c:	fc010113          	addi	sp,sp,-64
    1940:	00078793          	mv	a5,a5
    1944:	00010713          	mv	a4,sp
    1948:	04078813          	addi	a6,a5,64 # 10040 <Bitlist>
    194c:	0007a503          	lw	a0,0(a5)
    1950:	0047a583          	lw	a1,4(a5)
    1954:	0087a603          	lw	a2,8(a5)
    1958:	00c7a683          	lw	a3,12(a5)
    195c:	00a72023          	sw	a0,0(a4)
    1960:	00b72223          	sw	a1,4(a4)
    1964:	00c72423          	sw	a2,8(a4)
    1968:	00d72623          	sw	a3,12(a4)
    196c:	01078793          	addi	a5,a5,16
    1970:	01070713          	addi	a4,a4,16
    1974:	fd079ce3          	bne	a5,a6,194c <verify_benchmark+0x14>
    1978:	000107b7          	lui	a5,0x10
    197c:	04078793          	addi	a5,a5,64 # 10040 <Bitlist>
    1980:	00110713          	addi	a4,sp,1
    1984:	04078593          	addi	a1,a5,64
    1988:	00000693          	li	a3,0
    198c:	0100006f          	j	199c <verify_benchmark+0x64>
    1990:	02b78263          	beq	a5,a1,19b4 <verify_benchmark+0x7c>
    1994:	00074683          	lbu	a3,0(a4)
    1998:	00170713          	addi	a4,a4,1
    199c:	0007c603          	lbu	a2,0(a5)
    19a0:	00178793          	addi	a5,a5,1
    19a4:	fed606e3          	beq	a2,a3,1990 <verify_benchmark+0x58>
    19a8:	00000513          	li	a0,0
    19ac:	04010113          	addi	sp,sp,64
    19b0:	00008067          	ret
    19b4:	00010737          	lui	a4,0x10
    19b8:	000107b7          	lui	a5,0x10
    19bc:	13872683          	lw	a3,312(a4) # 10138 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL>
    19c0:	13c7a783          	lw	a5,316(a5) # 1013c <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy>
    19c4:	00010737          	lui	a4,0x10
    19c8:	13472703          	lw	a4,308(a4) # 10134 <tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL>
    19cc:	00d7e7b3          	or	a5,a5,a3
    19d0:	00000513          	li	a0,0
    19d4:	00e7e7b3          	or	a5,a5,a4
    19d8:	fc079ae3          	bnez	a5,19ac <verify_benchmark+0x74>
    19dc:	000107b7          	lui	a5,0x10
    19e0:	0947c703          	lbu	a4,148(a5) # 10094 <KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state>
    19e4:	00300793          	li	a5,3
    19e8:	fcf712e3          	bne	a4,a5,19ac <verify_benchmark+0x74>
    19ec:	000107b7          	lui	a5,0x10
    19f0:	0937c703          	lbu	a4,147(a5) # 10093 <B_FH_TUERMODUL_CTRL_next_state>
    19f4:	00200793          	li	a5,2
    19f8:	faf71ae3          	bne	a4,a5,19ac <verify_benchmark+0x74>
    19fc:	000107b7          	lui	a5,0x10
    1a00:	0927c683          	lbu	a3,146(a5) # 10092 <A_FH_TUERMODUL_CTRL_next_state>
    1a04:	00100793          	li	a5,1
    1a08:	faf692e3          	bne	a3,a5,19ac <verify_benchmark+0x74>
    1a0c:	000107b7          	lui	a5,0x10
    1a10:	0917c783          	lbu	a5,145(a5) # 10091 <WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state>
    1a14:	f8d79ce3          	bne	a5,a3,19ac <verify_benchmark+0x74>
    1a18:	000106b7          	lui	a3,0x10
    1a1c:	08b6c683          	lbu	a3,139(a3) # 1008b <FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state>
    1a20:	f8e696e3          	bne	a3,a4,19ac <verify_benchmark+0x74>
    1a24:	00010737          	lui	a4,0x10
    1a28:	08a74703          	lbu	a4,138(a4) # 1008a <EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state>
    1a2c:	f8f710e3          	bne	a4,a5,19ac <verify_benchmark+0x74>
    1a30:	00010737          	lui	a4,0x10
    1a34:	000107b7          	lui	a5,0x10
    1a38:	09674583          	lbu	a1,150(a4) # 10096 <ZENTRAL_KINDERSICHERUNG_CTRL_next_state>
    1a3c:	0977c783          	lbu	a5,151(a5) # 10097 <NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state>
    1a40:	00010737          	lui	a4,0x10
    1a44:	09574603          	lbu	a2,149(a4) # 10095 <MEC_KINDERSICHERUNG_CTRL_next_state>
    1a48:	00010737          	lui	a4,0x10
    1a4c:	09074683          	lbu	a3,144(a4) # 10090 <INITIALISIERT_FH_TUERMODUL_CTRL_next_state>
    1a50:	00010737          	lui	a4,0x10
    1a54:	08f74703          	lbu	a4,143(a4) # 1008f <TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
    1a58:	00b7e7b3          	or	a5,a5,a1
    1a5c:	000105b7          	lui	a1,0x10
    1a60:	00c7e7b3          	or	a5,a5,a2
    1a64:	08e5c583          	lbu	a1,142(a1) # 1008e <MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
    1a68:	00010637          	lui	a2,0x10
    1a6c:	00d7e7b3          	or	a5,a5,a3
    1a70:	08d64603          	lbu	a2,141(a2) # 1008d <OEFFNEN_FH_TUERMODUL_CTRL_next_state>
    1a74:	000106b7          	lui	a3,0x10
    1a78:	00e7e7b3          	or	a5,a5,a4
    1a7c:	08c6c683          	lbu	a3,140(a3) # 1008c <SCHLIESSEN_FH_TUERMODUL_CTRL_next_state>
    1a80:	00010737          	lui	a4,0x10
    1a84:	08974703          	lbu	a4,137(a4) # 10089 <BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state>
    1a88:	00b7e7b3          	or	a5,a5,a1
    1a8c:	00c7e7b3          	or	a5,a5,a2
    1a90:	00d7e7b3          	or	a5,a5,a3
    1a94:	00e7e7b3          	or	a5,a5,a4
    1a98:	f00798e3          	bnez	a5,19a8 <verify_benchmark+0x70>
    1a9c:	000107b7          	lui	a5,0x10
    1aa0:	0887c503          	lbu	a0,136(a5) # 10088 <BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state>
    1aa4:	fff50513          	addi	a0,a0,-1
    1aa8:	00153513          	seqz	a0,a0
    1aac:	f01ff06f          	j	19ac <verify_benchmark+0x74>

00001ab0 <memset>:
    1ab0:	00f00313          	li	t1,15
    1ab4:	00050713          	mv	a4,a0
    1ab8:	02c37e63          	bgeu	t1,a2,1af4 <memset+0x44>
    1abc:	00f77793          	andi	a5,a4,15
    1ac0:	0a079063          	bnez	a5,1b60 <memset+0xb0>
    1ac4:	08059263          	bnez	a1,1b48 <memset+0x98>
    1ac8:	ff067693          	andi	a3,a2,-16
    1acc:	00f67613          	andi	a2,a2,15
    1ad0:	00e686b3          	add	a3,a3,a4
    1ad4:	00b72023          	sw	a1,0(a4)
    1ad8:	00b72223          	sw	a1,4(a4)
    1adc:	00b72423          	sw	a1,8(a4)
    1ae0:	00b72623          	sw	a1,12(a4)
    1ae4:	01070713          	addi	a4,a4,16
    1ae8:	fed766e3          	bltu	a4,a3,1ad4 <memset+0x24>
    1aec:	00061463          	bnez	a2,1af4 <memset+0x44>
    1af0:	00008067          	ret
    1af4:	40c306b3          	sub	a3,t1,a2
    1af8:	00269693          	slli	a3,a3,0x2
    1afc:	00000297          	auipc	t0,0x0
    1b00:	005686b3          	add	a3,a3,t0
    1b04:	00c68067          	jr	12(a3)
    1b08:	00b70723          	sb	a1,14(a4)
    1b0c:	00b706a3          	sb	a1,13(a4)
    1b10:	00b70623          	sb	a1,12(a4)
    1b14:	00b705a3          	sb	a1,11(a4)
    1b18:	00b70523          	sb	a1,10(a4)
    1b1c:	00b704a3          	sb	a1,9(a4)
    1b20:	00b70423          	sb	a1,8(a4)
    1b24:	00b703a3          	sb	a1,7(a4)
    1b28:	00b70323          	sb	a1,6(a4)
    1b2c:	00b702a3          	sb	a1,5(a4)
    1b30:	00b70223          	sb	a1,4(a4)
    1b34:	00b701a3          	sb	a1,3(a4)
    1b38:	00b70123          	sb	a1,2(a4)
    1b3c:	00b700a3          	sb	a1,1(a4)
    1b40:	00b70023          	sb	a1,0(a4)
    1b44:	00008067          	ret
    1b48:	0ff5f593          	zext.b	a1,a1
    1b4c:	00859693          	slli	a3,a1,0x8
    1b50:	00d5e5b3          	or	a1,a1,a3
    1b54:	01059693          	slli	a3,a1,0x10
    1b58:	00d5e5b3          	or	a1,a1,a3
    1b5c:	f6dff06f          	j	1ac8 <memset+0x18>
    1b60:	00279693          	slli	a3,a5,0x2
    1b64:	00000297          	auipc	t0,0x0
    1b68:	005686b3          	add	a3,a3,t0
    1b6c:	00008293          	mv	t0,ra
    1b70:	fa0680e7          	jalr	-96(a3)
    1b74:	00028093          	mv	ra,t0
    1b78:	ff078793          	addi	a5,a5,-16
    1b7c:	40f70733          	sub	a4,a4,a5
    1b80:	00f60633          	add	a2,a2,a5
    1b84:	f6c378e3          	bgeu	t1,a2,1af4 <memset+0x44>
    1b88:	f3dff06f          	j	1ac4 <memset+0x14>

Disassembly of section .text.startup:

00001b8c <main>:
    1b8c:	fe010113          	addi	sp,sp,-32
    1b90:	00112e23          	sw	ra,28(sp)
    1b94:	d2cfe0ef          	jal	ra,c0 <initialise_board>
    1b98:	d9dff0ef          	jal	ra,1934 <initialise_benchmark>
    1b9c:	00100513          	li	a0,1
    1ba0:	d5dff0ef          	jal	ra,18fc <warm_caches>
    1ba4:	d20fe0ef          	jal	ra,c4 <start_trigger>
    1ba8:	d6dff0ef          	jal	ra,1914 <benchmark>
    1bac:	00a12623          	sw	a0,12(sp)
    1bb0:	d40fe0ef          	jal	ra,f0 <stop_trigger>
    1bb4:	00c12503          	lw	a0,12(sp)
    1bb8:	d81ff0ef          	jal	ra,1938 <verify_benchmark>
    1bbc:	00051a63          	bnez	a0,1bd0 <main+0x44>
    1bc0:	110007b7          	lui	a5,0x11000
    1bc4:	fff00713          	li	a4,-1
    1bc8:	00e7a823          	sw	a4,16(a5) # 11000010 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x10fefed4>
    1bcc:	00e7aa23          	sw	a4,20(a5)
    1bd0:	110007b7          	lui	a5,0x11000
    1bd4:	00100713          	li	a4,1
    1bd8:	08e7a023          	sw	a4,128(a5) # 11000080 <tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy+0x10feff44>
    1bdc:	0000006f          	j	1bdc <main+0x50>
