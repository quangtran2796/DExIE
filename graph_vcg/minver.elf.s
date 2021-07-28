
minver.elf:     file format elf32-littleriscv


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
  84:	6ec020ef          	jal	ra,2770 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
      88:	00251513          	slli	a0,a0,0x2
      8c:	110007b7          	lui	a5,0x11000
      90:	00a787b3          	add	a5,a5,a0
      94:	00b7a023          	sw	a1,0(a5) # 11000000 <det+0x10fefd98>
      98:	00008067          	ret

0000009c <readFromCtrl>:
      9c:	00251513          	slli	a0,a0,0x2
      a0:	110007b7          	lui	a5,0x11000
      a4:	00a787b3          	add	a5,a5,a0
      a8:	0007a503          	lw	a0,0(a5) # 11000000 <det+0x10fefd98>
      ac:	00008067          	ret

000000b0 <setIntr>:
      b0:	110007b7          	lui	a5,0x11000
      b4:	00100713          	li	a4,1
      b8:	08e7a023          	sw	a4,128(a5) # 11000080 <det+0x10fefe18>
      bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
      c0:	00008067          	ret

000000c4 <start_trigger>:
      c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <det+0xfd88>
      c8:	01c00513          	li	a0,28
      cc:	00112623          	sw	ra,12(sp)
      d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
      d4:	00c12083          	lw	ra,12(sp)
      d8:	000107b7          	lui	a5,0x10
      dc:	41f55713          	srai	a4,a0,0x1f
      e0:	26a7a023          	sw	a0,608(a5) # 10260 <start_time>
      e4:	26e7a223          	sw	a4,612(a5)
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
     114:	2607a583          	lw	a1,608(a5) # 10260 <start_time>
     118:	2647a703          	lw	a4,612(a5)
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

00000150 <minver.part.0>:
     150:	81010113          	addi	sp,sp,-2032
     154:	7e112623          	sw	ra,2028(sp)
     158:	7e812423          	sw	s0,2024(sp)
     15c:	7e912223          	sw	s1,2020(sp)
     160:	7f212023          	sw	s2,2016(sp)
     164:	7d312e23          	sw	s3,2012(sp)
     168:	7d412c23          	sw	s4,2008(sp)
     16c:	7d512a23          	sw	s5,2004(sp)
     170:	7d612823          	sw	s6,2000(sp)
     174:	7d712623          	sw	s7,1996(sp)
     178:	7d812423          	sw	s8,1992(sp)
     17c:	7d912223          	sw	s9,1988(sp)
     180:	7da12023          	sw	s10,1984(sp)
     184:	7bb12e23          	sw	s11,1980(sp)
     188:	fb010113          	addi	sp,sp,-80
     18c:	02b12623          	sw	a1,44(sp)
     190:	3aa05863          	blez	a0,540 <minver.part.0+0x3f0>
     194:	03010713          	addi	a4,sp,48
     198:	00050a13          	mv	s4,a0
     19c:	02e12223          	sw	a4,36(sp)
     1a0:	00000793          	li	a5,0
     1a4:	00f72023          	sw	a5,0(a4)
     1a8:	00178793          	addi	a5,a5,1
     1ac:	00470713          	addi	a4,a4,4
     1b0:	ff479ae3          	bne	a5,s4,1a4 <minver.part.0+0x54>
     1b4:	000107b7          	lui	a5,0x10
     1b8:	1cc7a783          	lw	a5,460(a5) # 101cc <__clz_tab+0x100>
     1bc:	00000b93          	li	s7,0
     1c0:	00000413          	li	s0,0
     1c4:	02f12423          	sw	a5,40(sp)
     1c8:	000107b7          	lui	a5,0x10
     1cc:	1f078713          	addi	a4,a5,496 # 101f0 <a>
     1d0:	00e12a23          	sw	a4,20(sp)
     1d4:	02412703          	lw	a4,36(sp)
     1d8:	1f078b13          	addi	s6,a5,496
     1dc:	00000a93          	li	s5,0
     1e0:	02e12023          	sw	a4,32(sp)
     1e4:	1f078713          	addi	a4,a5,496
     1e8:	1f078793          	addi	a5,a5,496
     1ec:	00e12623          	sw	a4,12(sp)
     1f0:	00f12c23          	sw	a5,24(sp)
     1f4:	00000913          	li	s2,0
     1f8:	05495863          	bge	s2,s4,248 <minver.part.0+0xf8>
     1fc:	01412983          	lw	s3,20(sp)
     200:	00090493          	mv	s1,s2
     204:	00000d93          	li	s11,0
     208:	0009a403          	lw	s0,0(s3)
     20c:	00000593          	li	a1,0
     210:	00c98993          	addi	s3,s3,12
     214:	00040513          	mv	a0,s0
     218:	205010ef          	jal	ra,1c1c <__gesf2>
     21c:	000d8593          	mv	a1,s11
     220:	00055663          	bgez	a0,22c <minver.part.0+0xdc>
     224:	800007b7          	lui	a5,0x80000
     228:	0087c433          	xor	s0,a5,s0
     22c:	00040513          	mv	a0,s0
     230:	1ed010ef          	jal	ra,1c1c <__gesf2>
     234:	00a05663          	blez	a0,240 <minver.part.0+0xf0>
     238:	00048a93          	mv	s5,s1
     23c:	00040d93          	mv	s11,s0
     240:	00148493          	addi	s1,s1,1
     244:	fc9a12e3          	bne	s4,s1,208 <minver.part.0+0xb8>
     248:	001a9493          	slli	s1,s5,0x1
     24c:	015487b3          	add	a5,s1,s5
     250:	012787b3          	add	a5,a5,s2
     254:	00279793          	slli	a5,a5,0x2
     258:	00fb07b3          	add	a5,s6,a5
     25c:	0007a983          	lw	s3,0(a5) # 80000000 <det+0x7ffefd98>
     260:	00000593          	li	a1,0
     264:	00098513          	mv	a0,s3
     268:	1b5010ef          	jal	ra,1c1c <__gesf2>
     26c:	00098593          	mv	a1,s3
     270:	00055663          	bgez	a0,27c <minver.part.0+0x12c>
     274:	800007b7          	lui	a5,0x80000
     278:	0137c5b3          	xor	a1,a5,s3
     27c:	02c12503          	lw	a0,44(sp)
     280:	19d010ef          	jal	ra,1c1c <__gesf2>
     284:	1c055c63          	bgez	a0,45c <minver.part.0+0x30c>
     288:	17591663          	bne	s2,s5,3f4 <minver.part.0+0x2a4>
     28c:	02812503          	lw	a0,40(sp)
     290:	00098593          	mv	a1,s3
     294:	2f9010ef          	jal	ra,1d8c <__mulsf3>
     298:	02a12423          	sw	a0,40(sp)
     29c:	00c12d83          	lw	s11,12(sp)
     2a0:	00000793          	li	a5,0
     2a4:	000da503          	lw	a0,0(s11)
     2a8:	00098593          	mv	a1,s3
     2ac:	00078493          	mv	s1,a5
     2b0:	578010ef          	jal	ra,1828 <__divsf3>
     2b4:	00ada023          	sw	a0,0(s11)
     2b8:	00148793          	addi	a5,s1,1
     2bc:	004d8d93          	addi	s11,s11,4
     2c0:	fefa12e3          	bne	s4,a5,2a4 <minver.part.0+0x154>
     2c4:	002b9793          	slli	a5,s7,0x2
     2c8:	01812c83          	lw	s9,24(sp)
     2cc:	40fb87b3          	sub	a5,s7,a5
     2d0:	00f12e23          	sw	a5,28(sp)
     2d4:	00000d93          	li	s11,0
     2d8:	00000d13          	li	s10,0
     2dc:	03a90063          	beq	s2,s10,2fc <minver.part.0+0x1ac>
     2e0:	000ca403          	lw	s0,0(s9)
     2e4:	00000593          	li	a1,0
     2e8:	017c8c33          	add	s8,s9,s7
     2ec:	00040513          	mv	a0,s0
     2f0:	0c5010ef          	jal	ra,1bb4 <__eqsf2>
     2f4:	00000613          	li	a2,0
     2f8:	00051e63          	bnez	a0,314 <minver.part.0+0x1c4>
     2fc:	001d0693          	addi	a3,s10,1
     300:	00cc8c93          	addi	s9,s9,12
     304:	ff4d8d93          	addi	s11,s11,-12
     308:	09a48a63          	beq	s1,s10,39c <minver.part.0+0x24c>
     30c:	00068d13          	mv	s10,a3
     310:	fcdff06f          	j	2dc <minver.part.0+0x18c>
     314:	01c12783          	lw	a5,28(sp)
     318:	018d85b3          	add	a1,s11,s8
     31c:	00040513          	mv	a0,s0
     320:	00f585b3          	add	a1,a1,a5
     324:	02c90263          	beq	s2,a2,348 <minver.part.0+0x1f8>
     328:	0005a583          	lw	a1,0(a1)
     32c:	00c12823          	sw	a2,16(sp)
     330:	25d010ef          	jal	ra,1d8c <__mulsf3>
     334:	00050593          	mv	a1,a0
     338:	000c2503          	lw	a0,0(s8)
     33c:	5c9010ef          	jal	ra,2104 <__subsf3>
     340:	01012603          	lw	a2,16(sp)
     344:	00ac2023          	sw	a0,0(s8)
     348:	00160593          	addi	a1,a2,1
     34c:	004c0c13          	addi	s8,s8,4
     350:	02c48463          	beq	s1,a2,378 <minver.part.0+0x228>
     354:	01c12783          	lw	a5,28(sp)
     358:	00058613          	mv	a2,a1
     35c:	018d85b3          	add	a1,s11,s8
     360:	00f585b3          	add	a1,a1,a5
     364:	00040513          	mv	a0,s0
     368:	fcc910e3          	bne	s2,a2,328 <minver.part.0+0x1d8>
     36c:	00160593          	addi	a1,a2,1
     370:	004c0c13          	addi	s8,s8,4
     374:	fec490e3          	bne	s1,a2,354 <minver.part.0+0x204>
     378:	800007b7          	lui	a5,0x80000
     37c:	00098593          	mv	a1,s3
     380:	0087c533          	xor	a0,a5,s0
     384:	4a4010ef          	jal	ra,1828 <__divsf3>
     388:	00aca023          	sw	a0,0(s9)
     38c:	001d0693          	addi	a3,s10,1
     390:	00cc8c93          	addi	s9,s9,12
     394:	ff4d8d93          	addi	s11,s11,-12
     398:	f7a49ae3          	bne	s1,s10,30c <minver.part.0+0x1bc>
     39c:	000107b7          	lui	a5,0x10
     3a0:	1cc7a503          	lw	a0,460(a5) # 101cc <__clz_tab+0x100>
     3a4:	00098593          	mv	a1,s3
     3a8:	ffcb8b93          	addi	s7,s7,-4
     3ac:	47c010ef          	jal	ra,1828 <__divsf3>
     3b0:	01412703          	lw	a4,20(sp)
     3b4:	00190793          	addi	a5,s2,1
     3b8:	00a72023          	sw	a0,0(a4)
     3bc:	01070713          	addi	a4,a4,16
     3c0:	00e12a23          	sw	a4,20(sp)
     3c4:	01812703          	lw	a4,24(sp)
     3c8:	00470713          	addi	a4,a4,4
     3cc:	00e12c23          	sw	a4,24(sp)
     3d0:	00c12703          	lw	a4,12(sp)
     3d4:	00c70713          	addi	a4,a4,12
     3d8:	00e12623          	sw	a4,12(sp)
     3dc:	02012703          	lw	a4,32(sp)
     3e0:	00470713          	addi	a4,a4,4
     3e4:	02e12023          	sw	a4,32(sp)
     3e8:	0d248263          	beq	s1,s2,4ac <minver.part.0+0x35c>
     3ec:	00078913          	mv	s2,a5
     3f0:	e09ff06f          	j	1f8 <minver.part.0+0xa8>
     3f4:	002a9793          	slli	a5,s5,0x2
     3f8:	02012603          	lw	a2,32(sp)
     3fc:	03010713          	addi	a4,sp,48
     400:	7d078793          	addi	a5,a5,2000
     404:	00e787b3          	add	a5,a5,a4
     408:	8307a683          	lw	a3,-2000(a5)
     40c:	00062703          	lw	a4,0(a2)
     410:	015484b3          	add	s1,s1,s5
     414:	00d62023          	sw	a3,0(a2)
     418:	82e7a823          	sw	a4,-2000(a5)
     41c:	800006b7          	lui	a3,0x80000
     420:	00c12783          	lw	a5,12(sp)
     424:	00249493          	slli	s1,s1,0x2
     428:	0086c6b3          	xor	a3,a3,s0
     42c:	02d12423          	sw	a3,40(sp)
     430:	009b04b3          	add	s1,s6,s1
     434:	00000713          	li	a4,0
     438:	0004a683          	lw	a3,0(s1)
     43c:	0007a403          	lw	s0,0(a5)
     440:	00170713          	addi	a4,a4,1
     444:	00d7a023          	sw	a3,0(a5)
     448:	0084a023          	sw	s0,0(s1)
     44c:	00478793          	addi	a5,a5,4
     450:	00448493          	addi	s1,s1,4
     454:	feea12e3          	bne	s4,a4,438 <minver.part.0+0x2e8>
     458:	e45ff06f          	j	29c <minver.part.0+0x14c>
     45c:	00100513          	li	a0,1
     460:	02812703          	lw	a4,40(sp)
     464:	000107b7          	lui	a5,0x10
     468:	26e7a423          	sw	a4,616(a5) # 10268 <det>
     46c:	05010113          	addi	sp,sp,80
     470:	7ec12083          	lw	ra,2028(sp)
     474:	7e812403          	lw	s0,2024(sp)
     478:	7e412483          	lw	s1,2020(sp)
     47c:	7e012903          	lw	s2,2016(sp)
     480:	7dc12983          	lw	s3,2012(sp)
     484:	7d812a03          	lw	s4,2008(sp)
     488:	7d412a83          	lw	s5,2004(sp)
     48c:	7d012b03          	lw	s6,2000(sp)
     490:	7cc12b83          	lw	s7,1996(sp)
     494:	7c812c03          	lw	s8,1992(sp)
     498:	7c412c83          	lw	s9,1988(sp)
     49c:	7c012d03          	lw	s10,1984(sp)
     4a0:	7bc12d83          	lw	s11,1980(sp)
     4a4:	7f010113          	addi	sp,sp,2032
     4a8:	00008067          	ret
     4ac:	00000813          	li	a6,0
     4b0:	02412783          	lw	a5,36(sp)
     4b4:	0007a503          	lw	a0,0(a5)
     4b8:	07050663          	beq	a0,a6,524 <minver.part.0+0x3d4>
     4bc:	00251593          	slli	a1,a0,0x2
     4c0:	7d058793          	addi	a5,a1,2000
     4c4:	03010693          	addi	a3,sp,48
     4c8:	00050713          	mv	a4,a0
     4cc:	00d785b3          	add	a1,a5,a3
     4d0:	00451613          	slli	a2,a0,0x4
     4d4:	00151793          	slli	a5,a0,0x1
     4d8:	00e787b3          	add	a5,a5,a4
     4dc:	8305a503          	lw	a0,-2000(a1)
     4e0:	00cb0633          	add	a2,s6,a2
     4e4:	82e5a823          	sw	a4,-2000(a1)
     4e8:	02412703          	lw	a4,36(sp)
     4ec:	010787b3          	add	a5,a5,a6
     4f0:	00062683          	lw	a3,0(a2)
     4f4:	00279793          	slli	a5,a5,0x2
     4f8:	00a72023          	sw	a0,0(a4)
     4fc:	00fb07b3          	add	a5,s6,a5
     500:	00000713          	li	a4,0
     504:	00068593          	mv	a1,a3
     508:	0007a683          	lw	a3,0(a5)
     50c:	00b7a023          	sw	a1,0(a5)
     510:	00070593          	mv	a1,a4
     514:	00d62023          	sw	a3,0(a2)
     518:	00170713          	addi	a4,a4,1
     51c:	feb494e3          	bne	s1,a1,504 <minver.part.0+0x3b4>
     520:	f9051ee3          	bne	a0,a6,4bc <minver.part.0+0x36c>
     524:	02412703          	lw	a4,36(sp)
     528:	00180793          	addi	a5,a6,1
     52c:	00470713          	addi	a4,a4,4
     530:	02e12223          	sw	a4,36(sp)
     534:	01048c63          	beq	s1,a6,54c <minver.part.0+0x3fc>
     538:	00078813          	mv	a6,a5
     53c:	f75ff06f          	j	4b0 <minver.part.0+0x360>
     540:	000107b7          	lui	a5,0x10
     544:	1cc7a783          	lw	a5,460(a5) # 101cc <__clz_tab+0x100>
     548:	02f12423          	sw	a5,40(sp)
     54c:	00000513          	li	a0,0
     550:	f11ff06f          	j	460 <minver.part.0+0x310>

00000554 <benchmark_body>:
     554:	f8010113          	addi	sp,sp,-128
     558:	06112e23          	sw	ra,124(sp)
     55c:	06812c23          	sw	s0,120(sp)
     560:	06912a23          	sw	s1,116(sp)
     564:	07212823          	sw	s2,112(sp)
     568:	07312623          	sw	s3,108(sp)
     56c:	07412423          	sw	s4,104(sp)
     570:	07512223          	sw	s5,100(sp)
     574:	07612023          	sw	s6,96(sp)
     578:	05712e23          	sw	s7,92(sp)
     57c:	05812c23          	sw	s8,88(sp)
     580:	05912a23          	sw	s9,84(sp)
     584:	05a12823          	sw	s10,80(sp)
     588:	05b12623          	sw	s11,76(sp)
     58c:	00a12623          	sw	a0,12(sp)
     590:	20a05263          	blez	a0,794 <benchmark_body+0x240>
     594:	000107b7          	lui	a5,0x10
     598:	00078793          	mv	a5,a5
     59c:	0007a703          	lw	a4,0(a5) # 10000 <a_ref>
     5a0:	02f12c23          	sw	a5,56(sp)
     5a4:	00010bb7          	lui	s7,0x10
     5a8:	00e12823          	sw	a4,16(sp)
     5ac:	0047a703          	lw	a4,4(a5)
     5b0:	00010b37          	lui	s6,0x10
     5b4:	00012423          	sw	zero,8(sp)
     5b8:	00e12a23          	sw	a4,20(sp)
     5bc:	0087a703          	lw	a4,8(a5)
     5c0:	214b8b93          	addi	s7,s7,532 # 10214 <d>
     5c4:	024b0b13          	addi	s6,s6,36 # 10024 <b>
     5c8:	00e12c23          	sw	a4,24(sp)
     5cc:	00c7a703          	lw	a4,12(a5)
     5d0:	00e12e23          	sw	a4,28(sp)
     5d4:	0107a703          	lw	a4,16(a5)
     5d8:	02e12023          	sw	a4,32(sp)
     5dc:	0147a703          	lw	a4,20(a5)
     5e0:	02e12223          	sw	a4,36(sp)
     5e4:	0187a703          	lw	a4,24(a5)
     5e8:	02e12423          	sw	a4,40(sp)
     5ec:	01c7a703          	lw	a4,28(a5)
     5f0:	0207a783          	lw	a5,32(a5)
     5f4:	02e12623          	sw	a4,44(sp)
     5f8:	02f12823          	sw	a5,48(sp)
     5fc:	000107b7          	lui	a5,0x10
     600:	1d47a783          	lw	a5,468(a5) # 101d4 <__clz_tab+0x108>
     604:	00010737          	lui	a4,0x10
     608:	02f12a23          	sw	a5,52(sp)
     60c:	000107b7          	lui	a5,0x10
     610:	1d07a783          	lw	a5,464(a5) # 101d0 <__clz_tab+0x104>
     614:	00f12223          	sw	a5,4(sp)
     618:	000107b7          	lui	a5,0x10
     61c:	1f078d93          	addi	s11,a5,496 # 101f0 <a>
     620:	23870793          	addi	a5,a4,568 # 10238 <c>
     624:	02f12e23          	sw	a5,60(sp)
     628:	000d8c93          	mv	s9,s11
     62c:	02012a03          	lw	s4,32(sp)
     630:	02412a83          	lw	s5,36(sp)
     634:	02c12d03          	lw	s10,44(sp)
     638:	01012403          	lw	s0,16(sp)
     63c:	01412483          	lw	s1,20(sp)
     640:	01812903          	lw	s2,24(sp)
     644:	01c12983          	lw	s3,28(sp)
     648:	02812c03          	lw	s8,40(sp)
     64c:	03012d83          	lw	s11,48(sp)
     650:	03412583          	lw	a1,52(sp)
     654:	014ca823          	sw	s4,16(s9)
     658:	015caa23          	sw	s5,20(s9)
     65c:	01acae23          	sw	s10,28(s9)
     660:	008ca023          	sw	s0,0(s9)
     664:	009ca223          	sw	s1,4(s9)
     668:	012ca423          	sw	s2,8(s9)
     66c:	013ca623          	sw	s3,12(s9)
     670:	018cac23          	sw	s8,24(s9)
     674:	03bca023          	sw	s11,32(s9)
     678:	00300513          	li	a0,3
     67c:	ad5ff0ef          	jal	ra,150 <minver.part.0>
     680:	020ca783          	lw	a5,32(s9)
     684:	000cae03          	lw	t3,0(s9)
     688:	004ca303          	lw	t1,4(s9)
     68c:	008ca883          	lw	a7,8(s9)
     690:	00cca803          	lw	a6,12(s9)
     694:	010ca503          	lw	a0,16(s9)
     698:	014ca583          	lw	a1,20(s9)
     69c:	018ca603          	lw	a2,24(s9)
     6a0:	01cca683          	lw	a3,28(s9)
     6a4:	04fca223          	sw	a5,68(s9)
     6a8:	000107b7          	lui	a5,0x10
     6ac:	014ca823          	sw	s4,16(s9)
     6b0:	015caa23          	sw	s5,20(s9)
     6b4:	01acae23          	sw	s10,28(s9)
     6b8:	03cca223          	sw	t3,36(s9)
     6bc:	026ca423          	sw	t1,40(s9)
     6c0:	031ca623          	sw	a7,44(s9)
     6c4:	030ca823          	sw	a6,48(s9)
     6c8:	02acaa23          	sw	a0,52(s9)
     6cc:	02bcac23          	sw	a1,56(s9)
     6d0:	02ccae23          	sw	a2,60(s9)
     6d4:	04dca023          	sw	a3,64(s9)
     6d8:	008ca023          	sw	s0,0(s9)
     6dc:	009ca223          	sw	s1,4(s9)
     6e0:	012ca423          	sw	s2,8(s9)
     6e4:	013ca623          	sw	s3,12(s9)
     6e8:	018cac23          	sw	s8,24(s9)
     6ec:	03bca023          	sw	s11,32(s9)
     6f0:	1f078d13          	addi	s10,a5,496 # 101f0 <a>
     6f4:	1f078c93          	addi	s9,a5,496
     6f8:	03812783          	lw	a5,56(sp)
     6fc:	03c12a83          	lw	s5,60(sp)
     700:	03078a13          	addi	s4,a5,48
     704:	000d2c03          	lw	s8,0(s10)
     708:	004d2983          	lw	s3,4(s10)
     70c:	008d2903          	lw	s2,8(s10)
     710:	00412583          	lw	a1,4(sp)
     714:	000b0413          	mv	s0,s6
     718:	000a8d93          	mv	s11,s5
     71c:	000c0513          	mv	a0,s8
     720:	66c010ef          	jal	ra,1d8c <__mulsf3>
     724:	00000593          	li	a1,0
     728:	4ad000ef          	jal	ra,13d4 <__addsf3>
     72c:	00c42583          	lw	a1,12(s0)
     730:	00050493          	mv	s1,a0
     734:	00098513          	mv	a0,s3
     738:	654010ef          	jal	ra,1d8c <__mulsf3>
     73c:	00048593          	mv	a1,s1
     740:	495000ef          	jal	ra,13d4 <__addsf3>
     744:	01842583          	lw	a1,24(s0)
     748:	00050493          	mv	s1,a0
     74c:	00090513          	mv	a0,s2
     750:	63c010ef          	jal	ra,1d8c <__mulsf3>
     754:	00048593          	mv	a1,s1
     758:	47d000ef          	jal	ra,13d4 <__addsf3>
     75c:	00ada023          	sw	a0,0(s11)
     760:	00440413          	addi	s0,s0,4
     764:	004d8d93          	addi	s11,s11,4
     768:	008a0663          	beq	s4,s0,774 <benchmark_body+0x220>
     76c:	00042583          	lw	a1,0(s0)
     770:	fadff06f          	j	71c <benchmark_body+0x1c8>
     774:	00cd0d13          	addi	s10,s10,12
     778:	00ca8a93          	addi	s5,s5,12
     77c:	f97d14e3          	bne	s10,s7,704 <benchmark_body+0x1b0>
     780:	00812783          	lw	a5,8(sp)
     784:	00c12703          	lw	a4,12(sp)
     788:	00178793          	addi	a5,a5,1
     78c:	00f12423          	sw	a5,8(sp)
     790:	e8f71ee3          	bne	a4,a5,62c <benchmark_body+0xd8>
     794:	07c12083          	lw	ra,124(sp)
     798:	07812403          	lw	s0,120(sp)
     79c:	07412483          	lw	s1,116(sp)
     7a0:	07012903          	lw	s2,112(sp)
     7a4:	06c12983          	lw	s3,108(sp)
     7a8:	06812a03          	lw	s4,104(sp)
     7ac:	06412a83          	lw	s5,100(sp)
     7b0:	06012b03          	lw	s6,96(sp)
     7b4:	05c12b83          	lw	s7,92(sp)
     7b8:	05812c03          	lw	s8,88(sp)
     7bc:	05412c83          	lw	s9,84(sp)
     7c0:	05012d03          	lw	s10,80(sp)
     7c4:	04c12d83          	lw	s11,76(sp)
     7c8:	00000513          	li	a0,0
     7cc:	08010113          	addi	sp,sp,128
     7d0:	00008067          	ret

000007d4 <mmul>:
     7d4:	14a05063          	blez	a0,914 <mmul+0x140>
     7d8:	fb010113          	addi	sp,sp,-80
     7dc:	05212023          	sw	s2,64(sp)
     7e0:	04112623          	sw	ra,76(sp)
     7e4:	04812423          	sw	s0,72(sp)
     7e8:	04912223          	sw	s1,68(sp)
     7ec:	03312e23          	sw	s3,60(sp)
     7f0:	03412c23          	sw	s4,56(sp)
     7f4:	03512a23          	sw	s5,52(sp)
     7f8:	03612823          	sw	s6,48(sp)
     7fc:	03712623          	sw	s7,44(sp)
     800:	03812423          	sw	s8,40(sp)
     804:	03912223          	sw	s9,36(sp)
     808:	03a12023          	sw	s10,32(sp)
     80c:	01b12e23          	sw	s11,28(sp)
     810:	00060913          	mv	s2,a2
     814:	0ec05c63          	blez	a2,90c <mmul+0x138>
     818:	0ed05a63          	blez	a3,90c <mmul+0x138>
     81c:	00050b13          	mv	s6,a0
     820:	3e700513          	li	a0,999
     824:	08b61a63          	bne	a2,a1,8b8 <mmul+0xe4>
     828:	000107b7          	lui	a5,0x10
     82c:	1d07a783          	lw	a5,464(a5) # 101d0 <__clz_tab+0x104>
     830:	00010ab7          	lui	s5,0x10
     834:	00010cb7          	lui	s9,0x10
     838:	024c8713          	addi	a4,s9,36 # 10024 <b>
     83c:	1f0a8a93          	addi	s5,s5,496 # 101f0 <a>
     840:	00269693          	slli	a3,a3,0x2
     844:	00e12423          	sw	a4,8(sp)
     848:	00f12623          	sw	a5,12(sp)
     84c:	048a8c13          	addi	s8,s5,72
     850:	00e68a33          	add	s4,a3,a4
     854:	00000b93          	li	s7,0
     858:	00812483          	lw	s1,8(sp)
     85c:	00c12503          	lw	a0,12(sp)
     860:	000c0993          	mv	s3,s8
     864:	00048c93          	mv	s9,s1
     868:	000a8d13          	mv	s10,s5
     86c:	00000413          	li	s0,0
     870:	00000d93          	li	s11,0
     874:	000d2583          	lw	a1,0(s10)
     878:	001d8d93          	addi	s11,s11,1
     87c:	00cc8c93          	addi	s9,s9,12
     880:	50c010ef          	jal	ra,1d8c <__mulsf3>
     884:	00050593          	mv	a1,a0
     888:	00040513          	mv	a0,s0
     88c:	349000ef          	jal	ra,13d4 <__addsf3>
     890:	00050413          	mv	s0,a0
     894:	004d0d13          	addi	s10,s10,4
     898:	05b90e63          	beq	s2,s11,8f4 <mmul+0x120>
     89c:	000ca503          	lw	a0,0(s9)
     8a0:	fd5ff06f          	j	874 <mmul+0xa0>
     8a4:	001b8b93          	addi	s7,s7,1
     8a8:	00ca8a93          	addi	s5,s5,12
     8ac:	00cc0c13          	addi	s8,s8,12
     8b0:	fb7b14e3          	bne	s6,s7,858 <mmul+0x84>
     8b4:	00000513          	li	a0,0
     8b8:	04c12083          	lw	ra,76(sp)
     8bc:	04812403          	lw	s0,72(sp)
     8c0:	04412483          	lw	s1,68(sp)
     8c4:	04012903          	lw	s2,64(sp)
     8c8:	03c12983          	lw	s3,60(sp)
     8cc:	03812a03          	lw	s4,56(sp)
     8d0:	03412a83          	lw	s5,52(sp)
     8d4:	03012b03          	lw	s6,48(sp)
     8d8:	02c12b83          	lw	s7,44(sp)
     8dc:	02812c03          	lw	s8,40(sp)
     8e0:	02412c83          	lw	s9,36(sp)
     8e4:	02012d03          	lw	s10,32(sp)
     8e8:	01c12d83          	lw	s11,28(sp)
     8ec:	05010113          	addi	sp,sp,80
     8f0:	00008067          	ret
     8f4:	00a9a023          	sw	a0,0(s3)
     8f8:	00448493          	addi	s1,s1,4
     8fc:	00498993          	addi	s3,s3,4
     900:	fb4482e3          	beq	s1,s4,8a4 <mmul+0xd0>
     904:	0004a503          	lw	a0,0(s1)
     908:	f5dff06f          	j	864 <mmul+0x90>
     90c:	3e700513          	li	a0,999
     910:	fa9ff06f          	j	8b8 <mmul+0xe4>
     914:	3e700513          	li	a0,999
     918:	00008067          	ret

0000091c <minver>:
     91c:	ffe50713          	addi	a4,a0,-2
     920:	1f200793          	li	a5,498
     924:	04e7e663          	bltu	a5,a4,970 <minver+0x54>
     928:	ff010113          	addi	sp,sp,-16
     92c:	00812423          	sw	s0,8(sp)
     930:	00000593          	li	a1,0
     934:	00050413          	mv	s0,a0
     938:	00060513          	mv	a0,a2
     93c:	00912223          	sw	s1,4(sp)
     940:	00112623          	sw	ra,12(sp)
     944:	00060493          	mv	s1,a2
     948:	38c010ef          	jal	ra,1cd4 <__lesf2>
     94c:	02a05663          	blez	a0,978 <minver+0x5c>
     950:	00048593          	mv	a1,s1
     954:	00040513          	mv	a0,s0
     958:	ff8ff0ef          	jal	ra,150 <minver.part.0>
     95c:	00c12083          	lw	ra,12(sp)
     960:	00812403          	lw	s0,8(sp)
     964:	00412483          	lw	s1,4(sp)
     968:	01010113          	addi	sp,sp,16
     96c:	00008067          	ret
     970:	3e700513          	li	a0,999
     974:	00008067          	ret
     978:	00c12083          	lw	ra,12(sp)
     97c:	00812403          	lw	s0,8(sp)
     980:	00412483          	lw	s1,4(sp)
     984:	3e700513          	li	a0,999
     988:	01010113          	addi	sp,sp,16
     98c:	00008067          	ret

00000990 <verify_benchmark>:
     990:	000107b7          	lui	a5,0x10
     994:	fd010113          	addi	sp,sp,-48
     998:	1d87a583          	lw	a1,472(a5) # 101d8 <__clz_tab+0x10c>
     99c:	000107b7          	lui	a5,0x10
     9a0:	01312e23          	sw	s3,28(sp)
     9a4:	01412c23          	sw	s4,24(sp)
     9a8:	000109b7          	lui	s3,0x10
     9ac:	1d47aa03          	lw	s4,468(a5) # 101d4 <__clz_tab+0x108>
     9b0:	00098993          	mv	s3,s3
     9b4:	03212023          	sw	s2,32(sp)
     9b8:	01512a23          	sw	s5,20(sp)
     9bc:	01612823          	sw	s6,16(sp)
     9c0:	80000937          	lui	s2,0x80000
     9c4:	00010b37          	lui	s6,0x10
     9c8:	00010ab7          	lui	s5,0x10
     9cc:	02912223          	sw	s1,36(sp)
     9d0:	01712623          	sw	s7,12(sp)
     9d4:	01812423          	sw	s8,8(sp)
     9d8:	06c98b93          	addi	s7,s3,108 # 1006c <d_exp.0>
     9dc:	02112623          	sw	ra,44(sp)
     9e0:	02812423          	sw	s0,40(sp)
     9e4:	00800493          	li	s1,8
     9e8:	238b0b13          	addi	s6,s6,568 # 10238 <c>
     9ec:	fff94913          	not	s2,s2
     9f0:	214a8a93          	addi	s5,s5,532 # 10214 <d>
     9f4:	04898993          	addi	s3,s3,72
     9f8:	02c00c13          	li	s8,44
     9fc:	ff848413          	addi	s0,s1,-8
     a00:	008b07b3          	add	a5,s6,s0
     a04:	0007a503          	lw	a0,0(a5)
     a08:	6fc010ef          	jal	ra,2104 <__subsf3>
     a0c:	000a0593          	mv	a1,s4
     a10:	00a97533          	and	a0,s2,a0
     a14:	208010ef          	jal	ra,1c1c <__gesf2>
     a18:	008a87b3          	add	a5,s5,s0
     a1c:	008b8733          	add	a4,s7,s0
     a20:	0aa04863          	bgtz	a0,ad0 <verify_benchmark+0x140>
     a24:	00072583          	lw	a1,0(a4)
     a28:	0007a503          	lw	a0,0(a5)
     a2c:	6d8010ef          	jal	ra,2104 <__subsf3>
     a30:	000a0593          	mv	a1,s4
     a34:	00a97533          	and	a0,s2,a0
     a38:	1e4010ef          	jal	ra,1c1c <__gesf2>
     a3c:	008987b3          	add	a5,s3,s0
     a40:	08a04863          	bgtz	a0,ad0 <verify_benchmark+0x140>
     a44:	00940863          	beq	s0,s1,a54 <verify_benchmark+0xc4>
     a48:	0047a583          	lw	a1,4(a5)
     a4c:	00440413          	addi	s0,s0,4
     a50:	fb1ff06f          	j	a00 <verify_benchmark+0x70>
     a54:	00c48493          	addi	s1,s1,12
     a58:	01848863          	beq	s1,s8,a68 <verify_benchmark+0xd8>
     a5c:	009987b3          	add	a5,s3,s1
     a60:	ff87a583          	lw	a1,-8(a5)
     a64:	f99ff06f          	j	9fc <verify_benchmark+0x6c>
     a68:	000107b7          	lui	a5,0x10
     a6c:	2687a503          	lw	a0,616(a5) # 10268 <det>
     a70:	301010ef          	jal	ra,2570 <__extendsfdf2>
     a74:	000107b7          	lui	a5,0x10
     a78:	1e07a603          	lw	a2,480(a5) # 101e0 <__clz_tab+0x114>
     a7c:	1e47a683          	lw	a3,484(a5)
     a80:	094000ef          	jal	ra,b14 <__adddf3>
     a84:	000106b7          	lui	a3,0x10
     a88:	1e86a603          	lw	a2,488(a3) # 101e8 <__clz_tab+0x11c>
     a8c:	1ec6a683          	lw	a3,492(a3)
     a90:	0125f7b3          	and	a5,a1,s2
     a94:	00078593          	mv	a1,a5
     a98:	059000ef          	jal	ra,12f0 <__ledf2>
     a9c:	00152513          	slti	a0,a0,1
     aa0:	02c12083          	lw	ra,44(sp)
     aa4:	02812403          	lw	s0,40(sp)
     aa8:	02412483          	lw	s1,36(sp)
     aac:	02012903          	lw	s2,32(sp)
     ab0:	01c12983          	lw	s3,28(sp)
     ab4:	01812a03          	lw	s4,24(sp)
     ab8:	01412a83          	lw	s5,20(sp)
     abc:	01012b03          	lw	s6,16(sp)
     ac0:	00c12b83          	lw	s7,12(sp)
     ac4:	00812c03          	lw	s8,8(sp)
     ac8:	03010113          	addi	sp,sp,48
     acc:	00008067          	ret
     ad0:	00000513          	li	a0,0
     ad4:	fcdff06f          	j	aa0 <verify_benchmark+0x110>

00000ad8 <initialise_benchmark>:
     ad8:	00008067          	ret

00000adc <warm_caches>:
     adc:	ff010113          	addi	sp,sp,-16
     ae0:	00112623          	sw	ra,12(sp)
     ae4:	a71ff0ef          	jal	ra,554 <benchmark_body>
     ae8:	00c12083          	lw	ra,12(sp)
     aec:	01010113          	addi	sp,sp,16
     af0:	00008067          	ret

00000af4 <benchmark>:
     af4:	00008537          	lui	a0,0x8
     af8:	ff010113          	addi	sp,sp,-16
     afc:	08450513          	addi	a0,a0,132 # 8084 <main+0x5914>
     b00:	00112623          	sw	ra,12(sp)
     b04:	a51ff0ef          	jal	ra,554 <benchmark_body>
     b08:	00c12083          	lw	ra,12(sp)
     b0c:	01010113          	addi	sp,sp,16
     b10:	00008067          	ret

00000b14 <__adddf3>:
     b14:	00100837          	lui	a6,0x100
     b18:	fff80813          	addi	a6,a6,-1 # fffff <det+0xefd97>
     b1c:	fe010113          	addi	sp,sp,-32
     b20:	00b878b3          	and	a7,a6,a1
     b24:	0145d713          	srli	a4,a1,0x14
     b28:	01d55793          	srli	a5,a0,0x1d
     b2c:	00d87833          	and	a6,a6,a3
     b30:	00812c23          	sw	s0,24(sp)
     b34:	7ff77413          	andi	s0,a4,2047
     b38:	00389713          	slli	a4,a7,0x3
     b3c:	0146d893          	srli	a7,a3,0x14
     b40:	00381813          	slli	a6,a6,0x3
     b44:	00912a23          	sw	s1,20(sp)
     b48:	00e7e7b3          	or	a5,a5,a4
     b4c:	7ff8f893          	andi	a7,a7,2047
     b50:	01d65713          	srli	a4,a2,0x1d
     b54:	00112e23          	sw	ra,28(sp)
     b58:	01212823          	sw	s2,16(sp)
     b5c:	01312623          	sw	s3,12(sp)
     b60:	01f5d493          	srli	s1,a1,0x1f
     b64:	01f6d693          	srli	a3,a3,0x1f
     b68:	01076733          	or	a4,a4,a6
     b6c:	00351513          	slli	a0,a0,0x3
     b70:	00361613          	slli	a2,a2,0x3
     b74:	41140833          	sub	a6,s0,a7
     b78:	2cd49863          	bne	s1,a3,e48 <__adddf3+0x334>
     b7c:	13005063          	blez	a6,c9c <__adddf3+0x188>
     b80:	04089063          	bnez	a7,bc0 <__adddf3+0xac>
     b84:	00c766b3          	or	a3,a4,a2
     b88:	70068e63          	beqz	a3,12a4 <__adddf3+0x790>
     b8c:	fff80593          	addi	a1,a6,-1
     b90:	02059063          	bnez	a1,bb0 <__adddf3+0x9c>
     b94:	00c50633          	add	a2,a0,a2
     b98:	00e78733          	add	a4,a5,a4
     b9c:	00a637b3          	sltu	a5,a2,a0
     ba0:	00f707b3          	add	a5,a4,a5
     ba4:	00060513          	mv	a0,a2
     ba8:	00100413          	li	s0,1
     bac:	0700006f          	j	c1c <__adddf3+0x108>
     bb0:	7ff00693          	li	a3,2047
     bb4:	02d81063          	bne	a6,a3,bd4 <__adddf3+0xc0>
     bb8:	7ff00413          	li	s0,2047
     bbc:	2140006f          	j	dd0 <__adddf3+0x2bc>
     bc0:	7ff00693          	li	a3,2047
     bc4:	20d40663          	beq	s0,a3,dd0 <__adddf3+0x2bc>
     bc8:	008006b7          	lui	a3,0x800
     bcc:	00d76733          	or	a4,a4,a3
     bd0:	00080593          	mv	a1,a6
     bd4:	03800693          	li	a3,56
     bd8:	0ab6cc63          	blt	a3,a1,c90 <__adddf3+0x17c>
     bdc:	01f00693          	li	a3,31
     be0:	06b6ce63          	blt	a3,a1,c5c <__adddf3+0x148>
     be4:	02000813          	li	a6,32
     be8:	40b80833          	sub	a6,a6,a1
     bec:	010716b3          	sll	a3,a4,a6
     bf0:	00b658b3          	srl	a7,a2,a1
     bf4:	01061833          	sll	a6,a2,a6
     bf8:	0116e6b3          	or	a3,a3,a7
     bfc:	01003833          	snez	a6,a6
     c00:	0106e6b3          	or	a3,a3,a6
     c04:	00b755b3          	srl	a1,a4,a1
     c08:	00a686b3          	add	a3,a3,a0
     c0c:	00f585b3          	add	a1,a1,a5
     c10:	00a6b7b3          	sltu	a5,a3,a0
     c14:	00f587b3          	add	a5,a1,a5
     c18:	00068513          	mv	a0,a3
     c1c:	00800737          	lui	a4,0x800
     c20:	00e7f733          	and	a4,a5,a4
     c24:	1a070663          	beqz	a4,dd0 <__adddf3+0x2bc>
     c28:	00140413          	addi	s0,s0,1
     c2c:	7ff00713          	li	a4,2047
     c30:	5ce40a63          	beq	s0,a4,1204 <__adddf3+0x6f0>
     c34:	ff800737          	lui	a4,0xff800
     c38:	fff70713          	addi	a4,a4,-1 # ff7fffff <det+0xff7efd97>
     c3c:	00e7f7b3          	and	a5,a5,a4
     c40:	00155713          	srli	a4,a0,0x1
     c44:	00157513          	andi	a0,a0,1
     c48:	00a76733          	or	a4,a4,a0
     c4c:	01f79513          	slli	a0,a5,0x1f
     c50:	00e56533          	or	a0,a0,a4
     c54:	0017d793          	srli	a5,a5,0x1
     c58:	1780006f          	j	dd0 <__adddf3+0x2bc>
     c5c:	fe058693          	addi	a3,a1,-32
     c60:	02000893          	li	a7,32
     c64:	00d756b3          	srl	a3,a4,a3
     c68:	00000813          	li	a6,0
     c6c:	01158863          	beq	a1,a7,c7c <__adddf3+0x168>
     c70:	04000813          	li	a6,64
     c74:	40b80833          	sub	a6,a6,a1
     c78:	01071833          	sll	a6,a4,a6
     c7c:	00c86833          	or	a6,a6,a2
     c80:	01003833          	snez	a6,a6
     c84:	0106e6b3          	or	a3,a3,a6
     c88:	00000593          	li	a1,0
     c8c:	f7dff06f          	j	c08 <__adddf3+0xf4>
     c90:	00c766b3          	or	a3,a4,a2
     c94:	00d036b3          	snez	a3,a3
     c98:	ff1ff06f          	j	c88 <__adddf3+0x174>
     c9c:	0e080263          	beqz	a6,d80 <__adddf3+0x26c>
     ca0:	408885b3          	sub	a1,a7,s0
     ca4:	02041e63          	bnez	s0,ce0 <__adddf3+0x1cc>
     ca8:	00a7e6b3          	or	a3,a5,a0
     cac:	52068c63          	beqz	a3,11e4 <__adddf3+0x6d0>
     cb0:	fff58693          	addi	a3,a1,-1
     cb4:	00069c63          	bnez	a3,ccc <__adddf3+0x1b8>
     cb8:	00c50533          	add	a0,a0,a2
     cbc:	00e78733          	add	a4,a5,a4
     cc0:	00c53633          	sltu	a2,a0,a2
     cc4:	00c707b3          	add	a5,a4,a2
     cc8:	ee1ff06f          	j	ba8 <__adddf3+0x94>
     ccc:	7ff00813          	li	a6,2047
     cd0:	03059263          	bne	a1,a6,cf4 <__adddf3+0x1e0>
     cd4:	00070793          	mv	a5,a4
     cd8:	00060513          	mv	a0,a2
     cdc:	eddff06f          	j	bb8 <__adddf3+0xa4>
     ce0:	7ff00693          	li	a3,2047
     ce4:	fed888e3          	beq	a7,a3,cd4 <__adddf3+0x1c0>
     ce8:	008006b7          	lui	a3,0x800
     cec:	00d7e7b3          	or	a5,a5,a3
     cf0:	00058693          	mv	a3,a1
     cf4:	03800593          	li	a1,56
     cf8:	06d5ce63          	blt	a1,a3,d74 <__adddf3+0x260>
     cfc:	01f00593          	li	a1,31
     d00:	04d5c063          	blt	a1,a3,d40 <__adddf3+0x22c>
     d04:	02000813          	li	a6,32
     d08:	40d80833          	sub	a6,a6,a3
     d0c:	010795b3          	sll	a1,a5,a6
     d10:	00d55333          	srl	t1,a0,a3
     d14:	01051833          	sll	a6,a0,a6
     d18:	0065e5b3          	or	a1,a1,t1
     d1c:	01003833          	snez	a6,a6
     d20:	0105e5b3          	or	a1,a1,a6
     d24:	00d7d6b3          	srl	a3,a5,a3
     d28:	00c58533          	add	a0,a1,a2
     d2c:	00e686b3          	add	a3,a3,a4
     d30:	00c53633          	sltu	a2,a0,a2
     d34:	00c687b3          	add	a5,a3,a2
     d38:	00088413          	mv	s0,a7
     d3c:	ee1ff06f          	j	c1c <__adddf3+0x108>
     d40:	fe068593          	addi	a1,a3,-32 # 7fffe0 <det+0x7efd78>
     d44:	02000313          	li	t1,32
     d48:	00b7d5b3          	srl	a1,a5,a1
     d4c:	00000813          	li	a6,0
     d50:	00668863          	beq	a3,t1,d60 <__adddf3+0x24c>
     d54:	04000813          	li	a6,64
     d58:	40d80833          	sub	a6,a6,a3
     d5c:	01079833          	sll	a6,a5,a6
     d60:	00a86833          	or	a6,a6,a0
     d64:	01003833          	snez	a6,a6
     d68:	0105e5b3          	or	a1,a1,a6
     d6c:	00000693          	li	a3,0
     d70:	fb9ff06f          	j	d28 <__adddf3+0x214>
     d74:	00a7e5b3          	or	a1,a5,a0
     d78:	00b035b3          	snez	a1,a1
     d7c:	ff1ff06f          	j	d6c <__adddf3+0x258>
     d80:	00140693          	addi	a3,s0,1
     d84:	7fe6f593          	andi	a1,a3,2046
     d88:	08059863          	bnez	a1,e18 <__adddf3+0x304>
     d8c:	00a7e6b3          	or	a3,a5,a0
     d90:	06041463          	bnez	s0,df8 <__adddf3+0x2e4>
     d94:	46068063          	beqz	a3,11f4 <__adddf3+0x6e0>
     d98:	00c766b3          	or	a3,a4,a2
     d9c:	02068a63          	beqz	a3,dd0 <__adddf3+0x2bc>
     da0:	00c50633          	add	a2,a0,a2
     da4:	00e78733          	add	a4,a5,a4
     da8:	00a637b3          	sltu	a5,a2,a0
     dac:	00f707b3          	add	a5,a4,a5
     db0:	00800737          	lui	a4,0x800
     db4:	00e7f733          	and	a4,a5,a4
     db8:	00060513          	mv	a0,a2
     dbc:	00070a63          	beqz	a4,dd0 <__adddf3+0x2bc>
     dc0:	ff800737          	lui	a4,0xff800
     dc4:	fff70713          	addi	a4,a4,-1 # ff7fffff <det+0xff7efd97>
     dc8:	00e7f7b3          	and	a5,a5,a4
     dcc:	00100413          	li	s0,1
     dd0:	00757713          	andi	a4,a0,7
     dd4:	42070c63          	beqz	a4,120c <__adddf3+0x6f8>
     dd8:	00f57713          	andi	a4,a0,15
     ddc:	00400693          	li	a3,4
     de0:	42d70663          	beq	a4,a3,120c <__adddf3+0x6f8>
     de4:	00450713          	addi	a4,a0,4
     de8:	00a73533          	sltu	a0,a4,a0
     dec:	00a787b3          	add	a5,a5,a0
     df0:	00070513          	mv	a0,a4
     df4:	4180006f          	j	120c <__adddf3+0x6f8>
     df8:	ec068ee3          	beqz	a3,cd4 <__adddf3+0x1c0>
     dfc:	00c76733          	or	a4,a4,a2
     e00:	da070ce3          	beqz	a4,bb8 <__adddf3+0xa4>
     e04:	00000493          	li	s1,0
     e08:	004007b7          	lui	a5,0x400
     e0c:	00000513          	li	a0,0
     e10:	7ff00413          	li	s0,2047
     e14:	3f80006f          	j	120c <__adddf3+0x6f8>
     e18:	7ff00593          	li	a1,2047
     e1c:	3eb68263          	beq	a3,a1,1200 <__adddf3+0x6ec>
     e20:	00c50633          	add	a2,a0,a2
     e24:	00a63533          	sltu	a0,a2,a0
     e28:	00e78733          	add	a4,a5,a4
     e2c:	00a70733          	add	a4,a4,a0
     e30:	01f71513          	slli	a0,a4,0x1f
     e34:	00165613          	srli	a2,a2,0x1
     e38:	00c56533          	or	a0,a0,a2
     e3c:	00175793          	srli	a5,a4,0x1
     e40:	00068413          	mv	s0,a3
     e44:	f8dff06f          	j	dd0 <__adddf3+0x2bc>
     e48:	0f005c63          	blez	a6,f40 <__adddf3+0x42c>
     e4c:	08089e63          	bnez	a7,ee8 <__adddf3+0x3d4>
     e50:	00c766b3          	or	a3,a4,a2
     e54:	44068863          	beqz	a3,12a4 <__adddf3+0x790>
     e58:	fff80593          	addi	a1,a6,-1
     e5c:	02059063          	bnez	a1,e7c <__adddf3+0x368>
     e60:	40c50633          	sub	a2,a0,a2
     e64:	40e78733          	sub	a4,a5,a4
     e68:	00c537b3          	sltu	a5,a0,a2
     e6c:	40f707b3          	sub	a5,a4,a5
     e70:	00060513          	mv	a0,a2
     e74:	00100413          	li	s0,1
     e78:	0540006f          	j	ecc <__adddf3+0x3b8>
     e7c:	7ff00693          	li	a3,2047
     e80:	d2d80ce3          	beq	a6,a3,bb8 <__adddf3+0xa4>
     e84:	03800693          	li	a3,56
     e88:	0ab6c663          	blt	a3,a1,f34 <__adddf3+0x420>
     e8c:	01f00693          	li	a3,31
     e90:	06b6c863          	blt	a3,a1,f00 <__adddf3+0x3ec>
     e94:	02000813          	li	a6,32
     e98:	40b80833          	sub	a6,a6,a1
     e9c:	010716b3          	sll	a3,a4,a6
     ea0:	00b658b3          	srl	a7,a2,a1
     ea4:	01061833          	sll	a6,a2,a6
     ea8:	0116e6b3          	or	a3,a3,a7
     eac:	01003833          	snez	a6,a6
     eb0:	0106e6b3          	or	a3,a3,a6
     eb4:	00b755b3          	srl	a1,a4,a1
     eb8:	40d506b3          	sub	a3,a0,a3
     ebc:	40b785b3          	sub	a1,a5,a1
     ec0:	00d537b3          	sltu	a5,a0,a3
     ec4:	40f587b3          	sub	a5,a1,a5
     ec8:	00068513          	mv	a0,a3
     ecc:	00800937          	lui	s2,0x800
     ed0:	0127f733          	and	a4,a5,s2
     ed4:	ee070ee3          	beqz	a4,dd0 <__adddf3+0x2bc>
     ed8:	fff90913          	addi	s2,s2,-1 # 7fffff <det+0x7efd97>
     edc:	0127f933          	and	s2,a5,s2
     ee0:	00050993          	mv	s3,a0
     ee4:	2140006f          	j	10f8 <__adddf3+0x5e4>
     ee8:	7ff00693          	li	a3,2047
     eec:	eed402e3          	beq	s0,a3,dd0 <__adddf3+0x2bc>
     ef0:	008006b7          	lui	a3,0x800
     ef4:	00d76733          	or	a4,a4,a3
     ef8:	00080593          	mv	a1,a6
     efc:	f89ff06f          	j	e84 <__adddf3+0x370>
     f00:	fe058693          	addi	a3,a1,-32
     f04:	02000893          	li	a7,32
     f08:	00d756b3          	srl	a3,a4,a3
     f0c:	00000813          	li	a6,0
     f10:	01158863          	beq	a1,a7,f20 <__adddf3+0x40c>
     f14:	04000813          	li	a6,64
     f18:	40b80833          	sub	a6,a6,a1
     f1c:	01071833          	sll	a6,a4,a6
     f20:	00c86833          	or	a6,a6,a2
     f24:	01003833          	snez	a6,a6
     f28:	0106e6b3          	or	a3,a3,a6
     f2c:	00000593          	li	a1,0
     f30:	f89ff06f          	j	eb8 <__adddf3+0x3a4>
     f34:	00c766b3          	or	a3,a4,a2
     f38:	00d036b3          	snez	a3,a3
     f3c:	ff1ff06f          	j	f2c <__adddf3+0x418>
     f40:	0e080863          	beqz	a6,1030 <__adddf3+0x51c>
     f44:	40888833          	sub	a6,a7,s0
     f48:	04041263          	bnez	s0,f8c <__adddf3+0x478>
     f4c:	00a7e5b3          	or	a1,a5,a0
     f50:	34058e63          	beqz	a1,12ac <__adddf3+0x798>
     f54:	fff80593          	addi	a1,a6,-1
     f58:	00059e63          	bnez	a1,f74 <__adddf3+0x460>
     f5c:	40a60533          	sub	a0,a2,a0
     f60:	40f70733          	sub	a4,a4,a5
     f64:	00a63633          	sltu	a2,a2,a0
     f68:	40c707b3          	sub	a5,a4,a2
     f6c:	00068493          	mv	s1,a3
     f70:	f05ff06f          	j	e74 <__adddf3+0x360>
     f74:	7ff00313          	li	t1,2047
     f78:	02681463          	bne	a6,t1,fa0 <__adddf3+0x48c>
     f7c:	00070793          	mv	a5,a4
     f80:	00060513          	mv	a0,a2
     f84:	7ff00413          	li	s0,2047
     f88:	0d00006f          	j	1058 <__adddf3+0x544>
     f8c:	7ff00593          	li	a1,2047
     f90:	feb886e3          	beq	a7,a1,f7c <__adddf3+0x468>
     f94:	008005b7          	lui	a1,0x800
     f98:	00b7e7b3          	or	a5,a5,a1
     f9c:	00080593          	mv	a1,a6
     fa0:	03800813          	li	a6,56
     fa4:	08b84063          	blt	a6,a1,1024 <__adddf3+0x510>
     fa8:	01f00813          	li	a6,31
     fac:	04b84263          	blt	a6,a1,ff0 <__adddf3+0x4dc>
     fb0:	02000313          	li	t1,32
     fb4:	40b30333          	sub	t1,t1,a1
     fb8:	00b55e33          	srl	t3,a0,a1
     fbc:	00679833          	sll	a6,a5,t1
     fc0:	00651333          	sll	t1,a0,t1
     fc4:	01c86833          	or	a6,a6,t3
     fc8:	00603333          	snez	t1,t1
     fcc:	00686533          	or	a0,a6,t1
     fd0:	00b7d5b3          	srl	a1,a5,a1
     fd4:	40a60533          	sub	a0,a2,a0
     fd8:	40b705b3          	sub	a1,a4,a1
     fdc:	00a63633          	sltu	a2,a2,a0
     fe0:	40c587b3          	sub	a5,a1,a2
     fe4:	00088413          	mv	s0,a7
     fe8:	00068493          	mv	s1,a3
     fec:	ee1ff06f          	j	ecc <__adddf3+0x3b8>
     ff0:	fe058813          	addi	a6,a1,-32 # 7fffe0 <det+0x7efd78>
     ff4:	02000e13          	li	t3,32
     ff8:	0107d833          	srl	a6,a5,a6
     ffc:	00000313          	li	t1,0
    1000:	01c58863          	beq	a1,t3,1010 <__adddf3+0x4fc>
    1004:	04000313          	li	t1,64
    1008:	40b30333          	sub	t1,t1,a1
    100c:	00679333          	sll	t1,a5,t1
    1010:	00a36333          	or	t1,t1,a0
    1014:	00603333          	snez	t1,t1
    1018:	00686533          	or	a0,a6,t1
    101c:	00000593          	li	a1,0
    1020:	fb5ff06f          	j	fd4 <__adddf3+0x4c0>
    1024:	00a7e533          	or	a0,a5,a0
    1028:	00a03533          	snez	a0,a0
    102c:	ff1ff06f          	j	101c <__adddf3+0x508>
    1030:	00140593          	addi	a1,s0,1
    1034:	7fe5f593          	andi	a1,a1,2046
    1038:	08059863          	bnez	a1,10c8 <__adddf3+0x5b4>
    103c:	00a7e833          	or	a6,a5,a0
    1040:	00c765b3          	or	a1,a4,a2
    1044:	06041263          	bnez	s0,10a8 <__adddf3+0x594>
    1048:	00081c63          	bnez	a6,1060 <__adddf3+0x54c>
    104c:	26058863          	beqz	a1,12bc <__adddf3+0x7a8>
    1050:	00070793          	mv	a5,a4
    1054:	00060513          	mv	a0,a2
    1058:	00068493          	mv	s1,a3
    105c:	d75ff06f          	j	dd0 <__adddf3+0x2bc>
    1060:	d60588e3          	beqz	a1,dd0 <__adddf3+0x2bc>
    1064:	40c50833          	sub	a6,a0,a2
    1068:	010538b3          	sltu	a7,a0,a6
    106c:	40e785b3          	sub	a1,a5,a4
    1070:	411585b3          	sub	a1,a1,a7
    1074:	008008b7          	lui	a7,0x800
    1078:	0115f8b3          	and	a7,a1,a7
    107c:	00088c63          	beqz	a7,1094 <__adddf3+0x580>
    1080:	40a60533          	sub	a0,a2,a0
    1084:	40f70733          	sub	a4,a4,a5
    1088:	00a63633          	sltu	a2,a2,a0
    108c:	40c707b3          	sub	a5,a4,a2
    1090:	fc9ff06f          	j	1058 <__adddf3+0x544>
    1094:	00b86533          	or	a0,a6,a1
    1098:	22050a63          	beqz	a0,12cc <__adddf3+0x7b8>
    109c:	00058793          	mv	a5,a1
    10a0:	00080513          	mv	a0,a6
    10a4:	d2dff06f          	j	dd0 <__adddf3+0x2bc>
    10a8:	00081c63          	bnez	a6,10c0 <__adddf3+0x5ac>
    10ac:	22058463          	beqz	a1,12d4 <__adddf3+0x7c0>
    10b0:	00070793          	mv	a5,a4
    10b4:	00060513          	mv	a0,a2
    10b8:	00068493          	mv	s1,a3
    10bc:	afdff06f          	j	bb8 <__adddf3+0xa4>
    10c0:	ae058ce3          	beqz	a1,bb8 <__adddf3+0xa4>
    10c4:	d41ff06f          	j	e04 <__adddf3+0x2f0>
    10c8:	40c509b3          	sub	s3,a0,a2
    10cc:	013535b3          	sltu	a1,a0,s3
    10d0:	40e78933          	sub	s2,a5,a4
    10d4:	40b90933          	sub	s2,s2,a1
    10d8:	008005b7          	lui	a1,0x800
    10dc:	00b975b3          	and	a1,s2,a1
    10e0:	08058463          	beqz	a1,1168 <__adddf3+0x654>
    10e4:	40a609b3          	sub	s3,a2,a0
    10e8:	40f70933          	sub	s2,a4,a5
    10ec:	01363633          	sltu	a2,a2,s3
    10f0:	40c90933          	sub	s2,s2,a2
    10f4:	00068493          	mv	s1,a3
    10f8:	08090263          	beqz	s2,117c <__adddf3+0x668>
    10fc:	00090513          	mv	a0,s2
    1100:	624010ef          	jal	ra,2724 <__clzsi2>
    1104:	ff850713          	addi	a4,a0,-8
    1108:	01f00793          	li	a5,31
    110c:	08e7c063          	blt	a5,a4,118c <__adddf3+0x678>
    1110:	02000793          	li	a5,32
    1114:	40e787b3          	sub	a5,a5,a4
    1118:	00e91933          	sll	s2,s2,a4
    111c:	00f9d7b3          	srl	a5,s3,a5
    1120:	0127e7b3          	or	a5,a5,s2
    1124:	00e99533          	sll	a0,s3,a4
    1128:	0a874463          	blt	a4,s0,11d0 <__adddf3+0x6bc>
    112c:	40870733          	sub	a4,a4,s0
    1130:	00170613          	addi	a2,a4,1
    1134:	01f00693          	li	a3,31
    1138:	06c6c263          	blt	a3,a2,119c <__adddf3+0x688>
    113c:	02000713          	li	a4,32
    1140:	40c70733          	sub	a4,a4,a2
    1144:	00e796b3          	sll	a3,a5,a4
    1148:	00c555b3          	srl	a1,a0,a2
    114c:	00e51733          	sll	a4,a0,a4
    1150:	00b6e6b3          	or	a3,a3,a1
    1154:	00e03733          	snez	a4,a4
    1158:	00e6e533          	or	a0,a3,a4
    115c:	00c7d7b3          	srl	a5,a5,a2
    1160:	00000413          	li	s0,0
    1164:	c6dff06f          	j	dd0 <__adddf3+0x2bc>
    1168:	0129e533          	or	a0,s3,s2
    116c:	f80516e3          	bnez	a0,10f8 <__adddf3+0x5e4>
    1170:	00000793          	li	a5,0
    1174:	00000413          	li	s0,0
    1178:	14c0006f          	j	12c4 <__adddf3+0x7b0>
    117c:	00098513          	mv	a0,s3
    1180:	5a4010ef          	jal	ra,2724 <__clzsi2>
    1184:	02050513          	addi	a0,a0,32
    1188:	f7dff06f          	j	1104 <__adddf3+0x5f0>
    118c:	fd850793          	addi	a5,a0,-40
    1190:	00f997b3          	sll	a5,s3,a5
    1194:	00000513          	li	a0,0
    1198:	f91ff06f          	j	1128 <__adddf3+0x614>
    119c:	fe170713          	addi	a4,a4,-31
    11a0:	02000593          	li	a1,32
    11a4:	00e7d733          	srl	a4,a5,a4
    11a8:	00000693          	li	a3,0
    11ac:	00b60863          	beq	a2,a1,11bc <__adddf3+0x6a8>
    11b0:	04000693          	li	a3,64
    11b4:	40c686b3          	sub	a3,a3,a2
    11b8:	00d796b3          	sll	a3,a5,a3
    11bc:	00d566b3          	or	a3,a0,a3
    11c0:	00d036b3          	snez	a3,a3
    11c4:	00d76533          	or	a0,a4,a3
    11c8:	00000793          	li	a5,0
    11cc:	f95ff06f          	j	1160 <__adddf3+0x64c>
    11d0:	40e40433          	sub	s0,s0,a4
    11d4:	ff800737          	lui	a4,0xff800
    11d8:	fff70713          	addi	a4,a4,-1 # ff7fffff <det+0xff7efd97>
    11dc:	00e7f7b3          	and	a5,a5,a4
    11e0:	bf1ff06f          	j	dd0 <__adddf3+0x2bc>
    11e4:	00070793          	mv	a5,a4
    11e8:	00060513          	mv	a0,a2
    11ec:	00058413          	mv	s0,a1
    11f0:	be1ff06f          	j	dd0 <__adddf3+0x2bc>
    11f4:	00070793          	mv	a5,a4
    11f8:	00060513          	mv	a0,a2
    11fc:	bd5ff06f          	j	dd0 <__adddf3+0x2bc>
    1200:	7ff00413          	li	s0,2047
    1204:	00000793          	li	a5,0
    1208:	00000513          	li	a0,0
    120c:	00800737          	lui	a4,0x800
    1210:	00e7f733          	and	a4,a5,a4
    1214:	00070e63          	beqz	a4,1230 <__adddf3+0x71c>
    1218:	00140413          	addi	s0,s0,1
    121c:	7ff00713          	li	a4,2047
    1220:	0ce40263          	beq	s0,a4,12e4 <__adddf3+0x7d0>
    1224:	ff800737          	lui	a4,0xff800
    1228:	fff70713          	addi	a4,a4,-1 # ff7fffff <det+0xff7efd97>
    122c:	00e7f7b3          	and	a5,a5,a4
    1230:	01d79693          	slli	a3,a5,0x1d
    1234:	00355513          	srli	a0,a0,0x3
    1238:	7ff00713          	li	a4,2047
    123c:	00a6e6b3          	or	a3,a3,a0
    1240:	0037d793          	srli	a5,a5,0x3
    1244:	00e41e63          	bne	s0,a4,1260 <__adddf3+0x74c>
    1248:	00f6e6b3          	or	a3,a3,a5
    124c:	00000793          	li	a5,0
    1250:	00068863          	beqz	a3,1260 <__adddf3+0x74c>
    1254:	000807b7          	lui	a5,0x80
    1258:	00000693          	li	a3,0
    125c:	00000493          	li	s1,0
    1260:	01441713          	slli	a4,s0,0x14
    1264:	7ff00637          	lui	a2,0x7ff00
    1268:	00c79793          	slli	a5,a5,0xc
    126c:	01c12083          	lw	ra,28(sp)
    1270:	01812403          	lw	s0,24(sp)
    1274:	00c77733          	and	a4,a4,a2
    1278:	00c7d793          	srli	a5,a5,0xc
    127c:	01f49493          	slli	s1,s1,0x1f
    1280:	00f767b3          	or	a5,a4,a5
    1284:	0097e733          	or	a4,a5,s1
    1288:	01012903          	lw	s2,16(sp)
    128c:	01412483          	lw	s1,20(sp)
    1290:	00c12983          	lw	s3,12(sp)
    1294:	00068513          	mv	a0,a3
    1298:	00070593          	mv	a1,a4
    129c:	02010113          	addi	sp,sp,32
    12a0:	00008067          	ret
    12a4:	00080413          	mv	s0,a6
    12a8:	b29ff06f          	j	dd0 <__adddf3+0x2bc>
    12ac:	00070793          	mv	a5,a4
    12b0:	00060513          	mv	a0,a2
    12b4:	00080413          	mv	s0,a6
    12b8:	da1ff06f          	j	1058 <__adddf3+0x544>
    12bc:	00000793          	li	a5,0
    12c0:	00000513          	li	a0,0
    12c4:	00000493          	li	s1,0
    12c8:	f45ff06f          	j	120c <__adddf3+0x6f8>
    12cc:	00000793          	li	a5,0
    12d0:	ff5ff06f          	j	12c4 <__adddf3+0x7b0>
    12d4:	00000513          	li	a0,0
    12d8:	00000493          	li	s1,0
    12dc:	004007b7          	lui	a5,0x400
    12e0:	b31ff06f          	j	e10 <__adddf3+0x2fc>
    12e4:	00000793          	li	a5,0
    12e8:	00000513          	li	a0,0
    12ec:	f45ff06f          	j	1230 <__adddf3+0x71c>

000012f0 <__ledf2>:
    12f0:	00100737          	lui	a4,0x100
    12f4:	fff70713          	addi	a4,a4,-1 # fffff <det+0xefd97>
    12f8:	0145d813          	srli	a6,a1,0x14
    12fc:	00b778b3          	and	a7,a4,a1
    1300:	00050793          	mv	a5,a0
    1304:	00050313          	mv	t1,a0
    1308:	7ff87813          	andi	a6,a6,2047
    130c:	01f5d513          	srli	a0,a1,0x1f
    1310:	7ff00e93          	li	t4,2047
    1314:	0146d593          	srli	a1,a3,0x14
    1318:	00d77733          	and	a4,a4,a3
    131c:	00060e13          	mv	t3,a2
    1320:	7ff5f593          	andi	a1,a1,2047
    1324:	01f6d693          	srli	a3,a3,0x1f
    1328:	01d81a63          	bne	a6,t4,133c <__ledf2+0x4c>
    132c:	00f8eeb3          	or	t4,a7,a5
    1330:	080e8a63          	beqz	t4,13c4 <__ledf2+0xd4>
    1334:	00200513          	li	a0,2
    1338:	00008067          	ret
    133c:	01d59663          	bne	a1,t4,1348 <__ledf2+0x58>
    1340:	00c76eb3          	or	t4,a4,a2
    1344:	fe0e98e3          	bnez	t4,1334 <__ledf2+0x44>
    1348:	08081063          	bnez	a6,13c8 <__ledf2+0xd8>
    134c:	00f8e7b3          	or	a5,a7,a5
    1350:	0017b793          	seqz	a5,a5
    1354:	00059663          	bnez	a1,1360 <__ledf2+0x70>
    1358:	00c76633          	or	a2,a4,a2
    135c:	04060c63          	beqz	a2,13b4 <__ledf2+0xc4>
    1360:	00079c63          	bnez	a5,1378 <__ledf2+0x88>
    1364:	00d51463          	bne	a0,a3,136c <__ledf2+0x7c>
    1368:	0305d063          	bge	a1,a6,1388 <__ledf2+0x98>
    136c:	04050063          	beqz	a0,13ac <__ledf2+0xbc>
    1370:	fff00513          	li	a0,-1
    1374:	00008067          	ret
    1378:	fff00513          	li	a0,-1
    137c:	00068a63          	beqz	a3,1390 <__ledf2+0xa0>
    1380:	00068513          	mv	a0,a3
    1384:	00008067          	ret
    1388:	00b85663          	bge	a6,a1,1394 <__ledf2+0xa4>
    138c:	fe0502e3          	beqz	a0,1370 <__ledf2+0x80>
    1390:	00008067          	ret
    1394:	fd176ce3          	bltu	a4,a7,136c <__ledf2+0x7c>
    1398:	02e89263          	bne	a7,a4,13bc <__ledf2+0xcc>
    139c:	fc6e68e3          	bltu	t3,t1,136c <__ledf2+0x7c>
    13a0:	ffc366e3          	bltu	t1,t3,138c <__ledf2+0x9c>
    13a4:	00000513          	li	a0,0
    13a8:	00008067          	ret
    13ac:	00100513          	li	a0,1
    13b0:	00008067          	ret
    13b4:	fe0798e3          	bnez	a5,13a4 <__ledf2+0xb4>
    13b8:	fb5ff06f          	j	136c <__ledf2+0x7c>
    13bc:	fce8e8e3          	bltu	a7,a4,138c <__ledf2+0x9c>
    13c0:	fe5ff06f          	j	13a4 <__ledf2+0xb4>
    13c4:	f7058ee3          	beq	a1,a6,1340 <__ledf2+0x50>
    13c8:	f8059ee3          	bnez	a1,1364 <__ledf2+0x74>
    13cc:	00000793          	li	a5,0
    13d0:	f89ff06f          	j	1358 <__ledf2+0x68>

000013d4 <__addsf3>:
    13d4:	00800737          	lui	a4,0x800
    13d8:	ff010113          	addi	sp,sp,-16
    13dc:	fff70713          	addi	a4,a4,-1 # 7fffff <det+0x7efd97>
    13e0:	00a777b3          	and	a5,a4,a0
    13e4:	00812423          	sw	s0,8(sp)
    13e8:	00912223          	sw	s1,4(sp)
    13ec:	01755413          	srli	s0,a0,0x17
    13f0:	01f55493          	srli	s1,a0,0x1f
    13f4:	0175d513          	srli	a0,a1,0x17
    13f8:	00b77733          	and	a4,a4,a1
    13fc:	0ff47413          	zext.b	s0,s0
    1400:	0ff57513          	zext.b	a0,a0
    1404:	00112623          	sw	ra,12(sp)
    1408:	01212023          	sw	s2,0(sp)
    140c:	01f5d593          	srli	a1,a1,0x1f
    1410:	00379793          	slli	a5,a5,0x3
    1414:	00371713          	slli	a4,a4,0x3
    1418:	40a406b3          	sub	a3,s0,a0
    141c:	18b49663          	bne	s1,a1,15a8 <__addsf3+0x1d4>
    1420:	0ad05863          	blez	a3,14d0 <__addsf3+0xfc>
    1424:	04051063          	bnez	a0,1464 <__addsf3+0x90>
    1428:	02070063          	beqz	a4,1448 <__addsf3+0x74>
    142c:	fff40693          	addi	a3,s0,-1
    1430:	00069863          	bnez	a3,1440 <__addsf3+0x6c>
    1434:	00e787b3          	add	a5,a5,a4
    1438:	00100413          	li	s0,1
    143c:	0600006f          	j	149c <__addsf3+0xc8>
    1440:	0ff00613          	li	a2,255
    1444:	02c41863          	bne	s0,a2,1474 <__addsf3+0xa0>
    1448:	0077f713          	andi	a4,a5,7
    144c:	34070a63          	beqz	a4,17a0 <__addsf3+0x3cc>
    1450:	00f7f713          	andi	a4,a5,15
    1454:	00400693          	li	a3,4
    1458:	34d70463          	beq	a4,a3,17a0 <__addsf3+0x3cc>
    145c:	00478793          	addi	a5,a5,4 # 400004 <det+0x3efd9c>
    1460:	3400006f          	j	17a0 <__addsf3+0x3cc>
    1464:	0ff00613          	li	a2,255
    1468:	fec400e3          	beq	s0,a2,1448 <__addsf3+0x74>
    146c:	04000637          	lui	a2,0x4000
    1470:	00c76733          	or	a4,a4,a2
    1474:	01b00593          	li	a1,27
    1478:	00100613          	li	a2,1
    147c:	00d5ce63          	blt	a1,a3,1498 <__addsf3+0xc4>
    1480:	02000613          	li	a2,32
    1484:	00d755b3          	srl	a1,a4,a3
    1488:	40d606b3          	sub	a3,a2,a3
    148c:	00d71733          	sll	a4,a4,a3
    1490:	00e03733          	snez	a4,a4
    1494:	00e5e633          	or	a2,a1,a4
    1498:	00c787b3          	add	a5,a5,a2
    149c:	04000737          	lui	a4,0x4000
    14a0:	00e7f733          	and	a4,a5,a4
    14a4:	fa0702e3          	beqz	a4,1448 <__addsf3+0x74>
    14a8:	00140413          	addi	s0,s0,1
    14ac:	0ff00713          	li	a4,255
    14b0:	2ee40663          	beq	s0,a4,179c <__addsf3+0x3c8>
    14b4:	7e000737          	lui	a4,0x7e000
    14b8:	0017f693          	andi	a3,a5,1
    14bc:	fff70713          	addi	a4,a4,-1 # 7dffffff <det+0x7dfefd97>
    14c0:	0017d793          	srli	a5,a5,0x1
    14c4:	00e7f7b3          	and	a5,a5,a4
    14c8:	00d7e7b3          	or	a5,a5,a3
    14cc:	f7dff06f          	j	1448 <__addsf3+0x74>
    14d0:	06068663          	beqz	a3,153c <__addsf3+0x168>
    14d4:	408506b3          	sub	a3,a0,s0
    14d8:	02041063          	bnez	s0,14f8 <__addsf3+0x124>
    14dc:	2a078663          	beqz	a5,1788 <__addsf3+0x3b4>
    14e0:	fff68613          	addi	a2,a3,-1 # 7fffff <det+0x7efd97>
    14e4:	f40608e3          	beqz	a2,1434 <__addsf3+0x60>
    14e8:	0ff00593          	li	a1,255
    14ec:	02b69063          	bne	a3,a1,150c <__addsf3+0x138>
    14f0:	00070793          	mv	a5,a4
    14f4:	2100006f          	j	1704 <__addsf3+0x330>
    14f8:	0ff00613          	li	a2,255
    14fc:	fec50ae3          	beq	a0,a2,14f0 <__addsf3+0x11c>
    1500:	04000637          	lui	a2,0x4000
    1504:	00c7e7b3          	or	a5,a5,a2
    1508:	00068613          	mv	a2,a3
    150c:	01b00593          	li	a1,27
    1510:	00100693          	li	a3,1
    1514:	00c5ce63          	blt	a1,a2,1530 <__addsf3+0x15c>
    1518:	02000693          	li	a3,32
    151c:	40c686b3          	sub	a3,a3,a2
    1520:	00c7d5b3          	srl	a1,a5,a2
    1524:	00d797b3          	sll	a5,a5,a3
    1528:	00f037b3          	snez	a5,a5
    152c:	00f5e6b3          	or	a3,a1,a5
    1530:	00e687b3          	add	a5,a3,a4
    1534:	00050413          	mv	s0,a0
    1538:	f65ff06f          	j	149c <__addsf3+0xc8>
    153c:	00140693          	addi	a3,s0,1
    1540:	0fe6f613          	andi	a2,a3,254
    1544:	04061663          	bnez	a2,1590 <__addsf3+0x1bc>
    1548:	02041863          	bnez	s0,1578 <__addsf3+0x1a4>
    154c:	24078263          	beqz	a5,1790 <__addsf3+0x3bc>
    1550:	ee070ce3          	beqz	a4,1448 <__addsf3+0x74>
    1554:	00e787b3          	add	a5,a5,a4
    1558:	04000737          	lui	a4,0x4000
    155c:	00e7f733          	and	a4,a5,a4
    1560:	ee0704e3          	beqz	a4,1448 <__addsf3+0x74>
    1564:	fc000737          	lui	a4,0xfc000
    1568:	fff70713          	addi	a4,a4,-1 # fbffffff <det+0xfbfefd97>
    156c:	00e7f7b3          	and	a5,a5,a4
    1570:	00100413          	li	s0,1
    1574:	ed5ff06f          	j	1448 <__addsf3+0x74>
    1578:	f6078ce3          	beqz	a5,14f0 <__addsf3+0x11c>
    157c:	18070463          	beqz	a4,1704 <__addsf3+0x330>
    1580:	00000493          	li	s1,0
    1584:	020007b7          	lui	a5,0x2000
    1588:	0ff00413          	li	s0,255
    158c:	2140006f          	j	17a0 <__addsf3+0x3cc>
    1590:	0ff00613          	li	a2,255
    1594:	20c68263          	beq	a3,a2,1798 <__addsf3+0x3c4>
    1598:	00e78733          	add	a4,a5,a4
    159c:	00175793          	srli	a5,a4,0x1
    15a0:	00068413          	mv	s0,a3
    15a4:	ea5ff06f          	j	1448 <__addsf3+0x74>
    15a8:	06d05e63          	blez	a3,1624 <__addsf3+0x250>
    15ac:	06051263          	bnez	a0,1610 <__addsf3+0x23c>
    15b0:	e8070ce3          	beqz	a4,1448 <__addsf3+0x74>
    15b4:	fff40693          	addi	a3,s0,-1
    15b8:	00069863          	bnez	a3,15c8 <__addsf3+0x1f4>
    15bc:	40e787b3          	sub	a5,a5,a4
    15c0:	00100413          	li	s0,1
    15c4:	0340006f          	j	15f8 <__addsf3+0x224>
    15c8:	0ff00613          	li	a2,255
    15cc:	e6c40ee3          	beq	s0,a2,1448 <__addsf3+0x74>
    15d0:	01b00593          	li	a1,27
    15d4:	00100613          	li	a2,1
    15d8:	00d5ce63          	blt	a1,a3,15f4 <__addsf3+0x220>
    15dc:	02000613          	li	a2,32
    15e0:	00d755b3          	srl	a1,a4,a3
    15e4:	40d606b3          	sub	a3,a2,a3
    15e8:	00d71733          	sll	a4,a4,a3
    15ec:	00e03733          	snez	a4,a4
    15f0:	00e5e633          	or	a2,a1,a4
    15f4:	40c787b3          	sub	a5,a5,a2
    15f8:	04000937          	lui	s2,0x4000
    15fc:	0127f733          	and	a4,a5,s2
    1600:	e40704e3          	beqz	a4,1448 <__addsf3+0x74>
    1604:	fff90913          	addi	s2,s2,-1 # 3ffffff <det+0x3fefd97>
    1608:	0127f933          	and	s2,a5,s2
    160c:	1180006f          	j	1724 <__addsf3+0x350>
    1610:	0ff00613          	li	a2,255
    1614:	e2c40ae3          	beq	s0,a2,1448 <__addsf3+0x74>
    1618:	04000637          	lui	a2,0x4000
    161c:	00c76733          	or	a4,a4,a2
    1620:	fb1ff06f          	j	15d0 <__addsf3+0x1fc>
    1624:	08068063          	beqz	a3,16a4 <__addsf3+0x2d0>
    1628:	408506b3          	sub	a3,a0,s0
    162c:	02041863          	bnez	s0,165c <__addsf3+0x288>
    1630:	1e078263          	beqz	a5,1814 <__addsf3+0x440>
    1634:	fff68613          	addi	a2,a3,-1
    1638:	00061863          	bnez	a2,1648 <__addsf3+0x274>
    163c:	40f707b3          	sub	a5,a4,a5
    1640:	00058493          	mv	s1,a1
    1644:	f7dff06f          	j	15c0 <__addsf3+0x1ec>
    1648:	0ff00813          	li	a6,255
    164c:	03069263          	bne	a3,a6,1670 <__addsf3+0x29c>
    1650:	00070793          	mv	a5,a4
    1654:	0ff00413          	li	s0,255
    1658:	06c0006f          	j	16c4 <__addsf3+0x2f0>
    165c:	0ff00613          	li	a2,255
    1660:	fec508e3          	beq	a0,a2,1650 <__addsf3+0x27c>
    1664:	04000637          	lui	a2,0x4000
    1668:	00c7e7b3          	or	a5,a5,a2
    166c:	00068613          	mv	a2,a3
    1670:	01b00813          	li	a6,27
    1674:	00100693          	li	a3,1
    1678:	00c84e63          	blt	a6,a2,1694 <__addsf3+0x2c0>
    167c:	02000693          	li	a3,32
    1680:	40c686b3          	sub	a3,a3,a2
    1684:	00c7d833          	srl	a6,a5,a2
    1688:	00d797b3          	sll	a5,a5,a3
    168c:	00f037b3          	snez	a5,a5
    1690:	00f866b3          	or	a3,a6,a5
    1694:	40d707b3          	sub	a5,a4,a3
    1698:	00050413          	mv	s0,a0
    169c:	00058493          	mv	s1,a1
    16a0:	f59ff06f          	j	15f8 <__addsf3+0x224>
    16a4:	00140693          	addi	a3,s0,1
    16a8:	0fe6f693          	andi	a3,a3,254
    16ac:	06069063          	bnez	a3,170c <__addsf3+0x338>
    16b0:	04041263          	bnez	s0,16f4 <__addsf3+0x320>
    16b4:	00079c63          	bnez	a5,16cc <__addsf3+0x2f8>
    16b8:	00000493          	li	s1,0
    16bc:	0e070263          	beqz	a4,17a0 <__addsf3+0x3cc>
    16c0:	00070793          	mv	a5,a4
    16c4:	00058493          	mv	s1,a1
    16c8:	d81ff06f          	j	1448 <__addsf3+0x74>
    16cc:	d6070ee3          	beqz	a4,1448 <__addsf3+0x74>
    16d0:	40e786b3          	sub	a3,a5,a4
    16d4:	04000637          	lui	a2,0x4000
    16d8:	00c6f633          	and	a2,a3,a2
    16dc:	40f707b3          	sub	a5,a4,a5
    16e0:	fe0612e3          	bnez	a2,16c4 <__addsf3+0x2f0>
    16e4:	00000793          	li	a5,0
    16e8:	08068263          	beqz	a3,176c <__addsf3+0x398>
    16ec:	00068793          	mv	a5,a3
    16f0:	d59ff06f          	j	1448 <__addsf3+0x74>
    16f4:	e80794e3          	bnez	a5,157c <__addsf3+0x1a8>
    16f8:	e80704e3          	beqz	a4,1580 <__addsf3+0x1ac>
    16fc:	00070793          	mv	a5,a4
    1700:	00058493          	mv	s1,a1
    1704:	0ff00413          	li	s0,255
    1708:	d41ff06f          	j	1448 <__addsf3+0x74>
    170c:	40e78933          	sub	s2,a5,a4
    1710:	040006b7          	lui	a3,0x4000
    1714:	00d976b3          	and	a3,s2,a3
    1718:	04068463          	beqz	a3,1760 <__addsf3+0x38c>
    171c:	40f70933          	sub	s2,a4,a5
    1720:	00058493          	mv	s1,a1
    1724:	00090513          	mv	a0,s2
    1728:	7fd000ef          	jal	ra,2724 <__clzsi2>
    172c:	ffb50513          	addi	a0,a0,-5
    1730:	00a91933          	sll	s2,s2,a0
    1734:	04854063          	blt	a0,s0,1774 <__addsf3+0x3a0>
    1738:	40850533          	sub	a0,a0,s0
    173c:	00150513          	addi	a0,a0,1
    1740:	02000713          	li	a4,32
    1744:	40a70733          	sub	a4,a4,a0
    1748:	00a957b3          	srl	a5,s2,a0
    174c:	00e91933          	sll	s2,s2,a4
    1750:	01203933          	snez	s2,s2
    1754:	0127e7b3          	or	a5,a5,s2
    1758:	00000413          	li	s0,0
    175c:	cedff06f          	j	1448 <__addsf3+0x74>
    1760:	fc0912e3          	bnez	s2,1724 <__addsf3+0x350>
    1764:	00000793          	li	a5,0
    1768:	00000413          	li	s0,0
    176c:	00000493          	li	s1,0
    1770:	0300006f          	j	17a0 <__addsf3+0x3cc>
    1774:	fc0007b7          	lui	a5,0xfc000
    1778:	fff78793          	addi	a5,a5,-1 # fbffffff <det+0xfbfefd97>
    177c:	40a40433          	sub	s0,s0,a0
    1780:	00f977b3          	and	a5,s2,a5
    1784:	cc5ff06f          	j	1448 <__addsf3+0x74>
    1788:	00070793          	mv	a5,a4
    178c:	e15ff06f          	j	15a0 <__addsf3+0x1cc>
    1790:	00070793          	mv	a5,a4
    1794:	cb5ff06f          	j	1448 <__addsf3+0x74>
    1798:	0ff00413          	li	s0,255
    179c:	00000793          	li	a5,0
    17a0:	04000737          	lui	a4,0x4000
    17a4:	00e7f733          	and	a4,a5,a4
    17a8:	00070e63          	beqz	a4,17c4 <__addsf3+0x3f0>
    17ac:	00140413          	addi	s0,s0,1
    17b0:	0ff00713          	li	a4,255
    17b4:	06e40663          	beq	s0,a4,1820 <__addsf3+0x44c>
    17b8:	fc000737          	lui	a4,0xfc000
    17bc:	fff70713          	addi	a4,a4,-1 # fbffffff <det+0xfbfefd97>
    17c0:	00e7f7b3          	and	a5,a5,a4
    17c4:	0ff00713          	li	a4,255
    17c8:	0037d793          	srli	a5,a5,0x3
    17cc:	00e41863          	bne	s0,a4,17dc <__addsf3+0x408>
    17d0:	00078663          	beqz	a5,17dc <__addsf3+0x408>
    17d4:	004007b7          	lui	a5,0x400
    17d8:	00000493          	li	s1,0
    17dc:	01741413          	slli	s0,s0,0x17
    17e0:	7f800737          	lui	a4,0x7f800
    17e4:	00979793          	slli	a5,a5,0x9
    17e8:	00e47433          	and	s0,s0,a4
    17ec:	0097d793          	srli	a5,a5,0x9
    17f0:	00f46433          	or	s0,s0,a5
    17f4:	01f49513          	slli	a0,s1,0x1f
    17f8:	00c12083          	lw	ra,12(sp)
    17fc:	00a46533          	or	a0,s0,a0
    1800:	00812403          	lw	s0,8(sp)
    1804:	00412483          	lw	s1,4(sp)
    1808:	00012903          	lw	s2,0(sp)
    180c:	01010113          	addi	sp,sp,16
    1810:	00008067          	ret
    1814:	00070793          	mv	a5,a4
    1818:	00068413          	mv	s0,a3
    181c:	ea9ff06f          	j	16c4 <__addsf3+0x2f0>
    1820:	00000793          	li	a5,0
    1824:	fa1ff06f          	j	17c4 <__addsf3+0x3f0>

00001828 <__divsf3>:
    1828:	fd010113          	addi	sp,sp,-48
    182c:	02912223          	sw	s1,36(sp)
    1830:	01755493          	srli	s1,a0,0x17
    1834:	01312e23          	sw	s3,28(sp)
    1838:	01512a23          	sw	s5,20(sp)
    183c:	01612823          	sw	s6,16(sp)
    1840:	00951a93          	slli	s5,a0,0x9
    1844:	02112623          	sw	ra,44(sp)
    1848:	02812423          	sw	s0,40(sp)
    184c:	03212023          	sw	s2,32(sp)
    1850:	01412c23          	sw	s4,24(sp)
    1854:	01712623          	sw	s7,12(sp)
    1858:	01812423          	sw	s8,8(sp)
    185c:	0ff4f493          	zext.b	s1,s1
    1860:	00058b13          	mv	s6,a1
    1864:	009ada93          	srli	s5,s5,0x9
    1868:	01f55993          	srli	s3,a0,0x1f
    186c:	08048463          	beqz	s1,18f4 <__divsf3+0xcc>
    1870:	0ff00793          	li	a5,255
    1874:	0af48063          	beq	s1,a5,1914 <__divsf3+0xec>
    1878:	003a9a93          	slli	s5,s5,0x3
    187c:	040007b7          	lui	a5,0x4000
    1880:	00faeab3          	or	s5,s5,a5
    1884:	f8148493          	addi	s1,s1,-127
    1888:	00000b93          	li	s7,0
    188c:	017b5793          	srli	a5,s6,0x17
    1890:	009b1413          	slli	s0,s6,0x9
    1894:	0ff7f793          	zext.b	a5,a5
    1898:	00945413          	srli	s0,s0,0x9
    189c:	01fb5b13          	srli	s6,s6,0x1f
    18a0:	08078a63          	beqz	a5,1934 <__divsf3+0x10c>
    18a4:	0ff00713          	li	a4,255
    18a8:	0ae78663          	beq	a5,a4,1954 <__divsf3+0x12c>
    18ac:	00341413          	slli	s0,s0,0x3
    18b0:	04000737          	lui	a4,0x4000
    18b4:	00e46433          	or	s0,s0,a4
    18b8:	f8178793          	addi	a5,a5,-127 # 3ffff81 <det+0x3fefd19>
    18bc:	00000713          	li	a4,0
    18c0:	40f48a33          	sub	s4,s1,a5
    18c4:	002b9793          	slli	a5,s7,0x2
    18c8:	00e7e7b3          	or	a5,a5,a4
    18cc:	fff78793          	addi	a5,a5,-1
    18d0:	00e00693          	li	a3,14
    18d4:	0169c933          	xor	s2,s3,s6
    18d8:	08f6ee63          	bltu	a3,a5,1974 <__divsf3+0x14c>
    18dc:	000106b7          	lui	a3,0x10
    18e0:	00279793          	slli	a5,a5,0x2
    18e4:	09068693          	addi	a3,a3,144 # 10090 <d_exp.0+0x24>
    18e8:	00d787b3          	add	a5,a5,a3
    18ec:	0007a783          	lw	a5,0(a5)
    18f0:	00078067          	jr	a5
    18f4:	020a8a63          	beqz	s5,1928 <__divsf3+0x100>
    18f8:	000a8513          	mv	a0,s5
    18fc:	629000ef          	jal	ra,2724 <__clzsi2>
    1900:	ffb50793          	addi	a5,a0,-5
    1904:	f8a00493          	li	s1,-118
    1908:	00fa9ab3          	sll	s5,s5,a5
    190c:	40a484b3          	sub	s1,s1,a0
    1910:	f79ff06f          	j	1888 <__divsf3+0x60>
    1914:	0ff00493          	li	s1,255
    1918:	00200b93          	li	s7,2
    191c:	f60a88e3          	beqz	s5,188c <__divsf3+0x64>
    1920:	00300b93          	li	s7,3
    1924:	f69ff06f          	j	188c <__divsf3+0x64>
    1928:	00000493          	li	s1,0
    192c:	00100b93          	li	s7,1
    1930:	f5dff06f          	j	188c <__divsf3+0x64>
    1934:	02040a63          	beqz	s0,1968 <__divsf3+0x140>
    1938:	00040513          	mv	a0,s0
    193c:	5e9000ef          	jal	ra,2724 <__clzsi2>
    1940:	ffb50793          	addi	a5,a0,-5
    1944:	00f41433          	sll	s0,s0,a5
    1948:	f8a00793          	li	a5,-118
    194c:	40a787b3          	sub	a5,a5,a0
    1950:	f6dff06f          	j	18bc <__divsf3+0x94>
    1954:	0ff00793          	li	a5,255
    1958:	00200713          	li	a4,2
    195c:	f60402e3          	beqz	s0,18c0 <__divsf3+0x98>
    1960:	00300713          	li	a4,3
    1964:	f5dff06f          	j	18c0 <__divsf3+0x98>
    1968:	00000793          	li	a5,0
    196c:	00100713          	li	a4,1
    1970:	f51ff06f          	j	18c0 <__divsf3+0x98>
    1974:	00541c13          	slli	s8,s0,0x5
    1978:	168afa63          	bgeu	s5,s0,1aec <__divsf3+0x2c4>
    197c:	fffa0a13          	addi	s4,s4,-1
    1980:	00000413          	li	s0,0
    1984:	010c5b13          	srli	s6,s8,0x10
    1988:	000109b7          	lui	s3,0x10
    198c:	000b0593          	mv	a1,s6
    1990:	fff98993          	addi	s3,s3,-1 # ffff <main+0xd88f>
    1994:	000a8513          	mv	a0,s5
    1998:	4e1000ef          	jal	ra,2678 <__udivsi3>
    199c:	013c79b3          	and	s3,s8,s3
    19a0:	00050593          	mv	a1,a0
    19a4:	00050b93          	mv	s7,a0
    19a8:	00098513          	mv	a0,s3
    19ac:	4a1000ef          	jal	ra,264c <__mulsi3>
    19b0:	00050493          	mv	s1,a0
    19b4:	000b0593          	mv	a1,s6
    19b8:	000a8513          	mv	a0,s5
    19bc:	505000ef          	jal	ra,26c0 <__umodsi3>
    19c0:	01045793          	srli	a5,s0,0x10
    19c4:	01051513          	slli	a0,a0,0x10
    19c8:	00a7e7b3          	or	a5,a5,a0
    19cc:	000b8413          	mv	s0,s7
    19d0:	0097fe63          	bgeu	a5,s1,19ec <__divsf3+0x1c4>
    19d4:	018787b3          	add	a5,a5,s8
    19d8:	fffb8413          	addi	s0,s7,-1
    19dc:	0187e863          	bltu	a5,s8,19ec <__divsf3+0x1c4>
    19e0:	0097f663          	bgeu	a5,s1,19ec <__divsf3+0x1c4>
    19e4:	ffeb8413          	addi	s0,s7,-2
    19e8:	018787b3          	add	a5,a5,s8
    19ec:	409784b3          	sub	s1,a5,s1
    19f0:	000b0593          	mv	a1,s6
    19f4:	00048513          	mv	a0,s1
    19f8:	481000ef          	jal	ra,2678 <__udivsi3>
    19fc:	00050593          	mv	a1,a0
    1a00:	00050a93          	mv	s5,a0
    1a04:	00098513          	mv	a0,s3
    1a08:	445000ef          	jal	ra,264c <__mulsi3>
    1a0c:	00050993          	mv	s3,a0
    1a10:	000b0593          	mv	a1,s6
    1a14:	00048513          	mv	a0,s1
    1a18:	4a9000ef          	jal	ra,26c0 <__umodsi3>
    1a1c:	01051793          	slli	a5,a0,0x10
    1a20:	000a8713          	mv	a4,s5
    1a24:	0137fe63          	bgeu	a5,s3,1a40 <__divsf3+0x218>
    1a28:	018787b3          	add	a5,a5,s8
    1a2c:	fffa8713          	addi	a4,s5,-1
    1a30:	0187e863          	bltu	a5,s8,1a40 <__divsf3+0x218>
    1a34:	0137f663          	bgeu	a5,s3,1a40 <__divsf3+0x218>
    1a38:	ffea8713          	addi	a4,s5,-2
    1a3c:	018787b3          	add	a5,a5,s8
    1a40:	01041413          	slli	s0,s0,0x10
    1a44:	413787b3          	sub	a5,a5,s3
    1a48:	00e46433          	or	s0,s0,a4
    1a4c:	00f037b3          	snez	a5,a5
    1a50:	00f46433          	or	s0,s0,a5
    1a54:	07fa0713          	addi	a4,s4,127
    1a58:	0ee05463          	blez	a4,1b40 <__divsf3+0x318>
    1a5c:	00747793          	andi	a5,s0,7
    1a60:	00078a63          	beqz	a5,1a74 <__divsf3+0x24c>
    1a64:	00f47793          	andi	a5,s0,15
    1a68:	00400693          	li	a3,4
    1a6c:	00d78463          	beq	a5,a3,1a74 <__divsf3+0x24c>
    1a70:	00440413          	addi	s0,s0,4
    1a74:	080007b7          	lui	a5,0x8000
    1a78:	00f477b3          	and	a5,s0,a5
    1a7c:	00078a63          	beqz	a5,1a90 <__divsf3+0x268>
    1a80:	f80007b7          	lui	a5,0xf8000
    1a84:	fff78793          	addi	a5,a5,-1 # f7ffffff <det+0xf7fefd97>
    1a88:	00f47433          	and	s0,s0,a5
    1a8c:	080a0713          	addi	a4,s4,128
    1a90:	0fe00793          	li	a5,254
    1a94:	08e7c463          	blt	a5,a4,1b1c <__divsf3+0x2f4>
    1a98:	00345793          	srli	a5,s0,0x3
    1a9c:	02c12083          	lw	ra,44(sp)
    1aa0:	02812403          	lw	s0,40(sp)
    1aa4:	01771713          	slli	a4,a4,0x17
    1aa8:	7f8006b7          	lui	a3,0x7f800
    1aac:	00979793          	slli	a5,a5,0x9
    1ab0:	00d77733          	and	a4,a4,a3
    1ab4:	0097d793          	srli	a5,a5,0x9
    1ab8:	01f91513          	slli	a0,s2,0x1f
    1abc:	00f76733          	or	a4,a4,a5
    1ac0:	02412483          	lw	s1,36(sp)
    1ac4:	02012903          	lw	s2,32(sp)
    1ac8:	01c12983          	lw	s3,28(sp)
    1acc:	01812a03          	lw	s4,24(sp)
    1ad0:	01412a83          	lw	s5,20(sp)
    1ad4:	01012b03          	lw	s6,16(sp)
    1ad8:	00c12b83          	lw	s7,12(sp)
    1adc:	00812c03          	lw	s8,8(sp)
    1ae0:	00a76533          	or	a0,a4,a0
    1ae4:	03010113          	addi	sp,sp,48
    1ae8:	00008067          	ret
    1aec:	01fa9413          	slli	s0,s5,0x1f
    1af0:	001ada93          	srli	s5,s5,0x1
    1af4:	e91ff06f          	j	1984 <__divsf3+0x15c>
    1af8:	00098913          	mv	s2,s3
    1afc:	000a8413          	mv	s0,s5
    1b00:	000b8713          	mv	a4,s7
    1b04:	00300793          	li	a5,3
    1b08:	08f70863          	beq	a4,a5,1b98 <__divsf3+0x370>
    1b0c:	00100793          	li	a5,1
    1b10:	08f70c63          	beq	a4,a5,1ba8 <__divsf3+0x380>
    1b14:	00200793          	li	a5,2
    1b18:	f2f71ee3          	bne	a4,a5,1a54 <__divsf3+0x22c>
    1b1c:	00000793          	li	a5,0
    1b20:	0ff00713          	li	a4,255
    1b24:	f79ff06f          	j	1a9c <__divsf3+0x274>
    1b28:	000b0913          	mv	s2,s6
    1b2c:	fd9ff06f          	j	1b04 <__divsf3+0x2dc>
    1b30:	00400437          	lui	s0,0x400
    1b34:	00000913          	li	s2,0
    1b38:	00300713          	li	a4,3
    1b3c:	fc9ff06f          	j	1b04 <__divsf3+0x2dc>
    1b40:	00100793          	li	a5,1
    1b44:	40e787b3          	sub	a5,a5,a4
    1b48:	01b00713          	li	a4,27
    1b4c:	04f74e63          	blt	a4,a5,1ba8 <__divsf3+0x380>
    1b50:	09ea0493          	addi	s1,s4,158
    1b54:	00f457b3          	srl	a5,s0,a5
    1b58:	00941433          	sll	s0,s0,s1
    1b5c:	00803433          	snez	s0,s0
    1b60:	0087e7b3          	or	a5,a5,s0
    1b64:	0077f713          	andi	a4,a5,7
    1b68:	00070a63          	beqz	a4,1b7c <__divsf3+0x354>
    1b6c:	00f7f713          	andi	a4,a5,15
    1b70:	00400693          	li	a3,4
    1b74:	00d70463          	beq	a4,a3,1b7c <__divsf3+0x354>
    1b78:	00478793          	addi	a5,a5,4
    1b7c:	04000737          	lui	a4,0x4000
    1b80:	00e7f733          	and	a4,a5,a4
    1b84:	0037d793          	srli	a5,a5,0x3
    1b88:	f0070ae3          	beqz	a4,1a9c <__divsf3+0x274>
    1b8c:	00000793          	li	a5,0
    1b90:	00100713          	li	a4,1
    1b94:	f09ff06f          	j	1a9c <__divsf3+0x274>
    1b98:	004007b7          	lui	a5,0x400
    1b9c:	0ff00713          	li	a4,255
    1ba0:	00000913          	li	s2,0
    1ba4:	ef9ff06f          	j	1a9c <__divsf3+0x274>
    1ba8:	00000793          	li	a5,0
    1bac:	00000713          	li	a4,0
    1bb0:	eedff06f          	j	1a9c <__divsf3+0x274>

00001bb4 <__eqsf2>:
    1bb4:	01755693          	srli	a3,a0,0x17
    1bb8:	008007b7          	lui	a5,0x800
    1bbc:	fff78793          	addi	a5,a5,-1 # 7fffff <det+0x7efd97>
    1bc0:	0175d613          	srli	a2,a1,0x17
    1bc4:	0ff6f693          	zext.b	a3,a3
    1bc8:	0ff00893          	li	a7,255
    1bcc:	00a7f833          	and	a6,a5,a0
    1bd0:	01f55713          	srli	a4,a0,0x1f
    1bd4:	00b7f7b3          	and	a5,a5,a1
    1bd8:	0ff67613          	zext.b	a2,a2
    1bdc:	01f5d593          	srli	a1,a1,0x1f
    1be0:	00100513          	li	a0,1
    1be4:	01169a63          	bne	a3,a7,1bf8 <__eqsf2+0x44>
    1be8:	00081663          	bnez	a6,1bf4 <__eqsf2+0x40>
    1bec:	00d61463          	bne	a2,a3,1bf4 <__eqsf2+0x40>
    1bf0:	00078a63          	beqz	a5,1c04 <__eqsf2+0x50>
    1bf4:	00008067          	ret
    1bf8:	ff160ee3          	beq	a2,a7,1bf4 <__eqsf2+0x40>
    1bfc:	fec69ce3          	bne	a3,a2,1bf4 <__eqsf2+0x40>
    1c00:	fef81ae3          	bne	a6,a5,1bf4 <__eqsf2+0x40>
    1c04:	00000513          	li	a0,0
    1c08:	feb706e3          	beq	a4,a1,1bf4 <__eqsf2+0x40>
    1c0c:	00100513          	li	a0,1
    1c10:	fe0692e3          	bnez	a3,1bf4 <__eqsf2+0x40>
    1c14:	01003533          	snez	a0,a6
    1c18:	00008067          	ret

00001c1c <__gesf2>:
    1c1c:	00800737          	lui	a4,0x800
    1c20:	fff70713          	addi	a4,a4,-1 # 7fffff <det+0x7efd97>
    1c24:	01755693          	srli	a3,a0,0x17
    1c28:	00a77633          	and	a2,a4,a0
    1c2c:	01f55793          	srli	a5,a0,0x1f
    1c30:	0ff6f693          	zext.b	a3,a3
    1c34:	0175d513          	srli	a0,a1,0x17
    1c38:	0ff00813          	li	a6,255
    1c3c:	00b77733          	and	a4,a4,a1
    1c40:	0ff57513          	zext.b	a0,a0
    1c44:	01f5d593          	srli	a1,a1,0x1f
    1c48:	01069863          	bne	a3,a6,1c58 <__gesf2+0x3c>
    1c4c:	06060c63          	beqz	a2,1cc4 <__gesf2+0xa8>
    1c50:	ffe00513          	li	a0,-2
    1c54:	00008067          	ret
    1c58:	01051463          	bne	a0,a6,1c60 <__gesf2+0x44>
    1c5c:	fe071ae3          	bnez	a4,1c50 <__gesf2+0x34>
    1c60:	06069463          	bnez	a3,1cc8 <__gesf2+0xac>
    1c64:	00051463          	bnez	a0,1c6c <__gesf2+0x50>
    1c68:	04070a63          	beqz	a4,1cbc <__gesf2+0xa0>
    1c6c:	00060e63          	beqz	a2,1c88 <__gesf2+0x6c>
    1c70:	00b79463          	bne	a5,a1,1c78 <__gesf2+0x5c>
    1c74:	02d55263          	bge	a0,a3,1c98 <__gesf2+0x7c>
    1c78:	00100513          	li	a0,1
    1c7c:	02078e63          	beqz	a5,1cb8 <__gesf2+0x9c>
    1c80:	fff00513          	li	a0,-1
    1c84:	00008067          	ret
    1c88:	fff00513          	li	a0,-1
    1c8c:	02058663          	beqz	a1,1cb8 <__gesf2+0x9c>
    1c90:	00058513          	mv	a0,a1
    1c94:	00008067          	ret
    1c98:	00a6da63          	bge	a3,a0,1cac <__gesf2+0x90>
    1c9c:	fff00513          	li	a0,-1
    1ca0:	00078c63          	beqz	a5,1cb8 <__gesf2+0x9c>
    1ca4:	00078513          	mv	a0,a5
    1ca8:	00008067          	ret
    1cac:	fcc766e3          	bltu	a4,a2,1c78 <__gesf2+0x5c>
    1cb0:	00000513          	li	a0,0
    1cb4:	fee664e3          	bltu	a2,a4,1c9c <__gesf2+0x80>
    1cb8:	00008067          	ret
    1cbc:	fe060ee3          	beqz	a2,1cb8 <__gesf2+0x9c>
    1cc0:	fb9ff06f          	j	1c78 <__gesf2+0x5c>
    1cc4:	f8d50ce3          	beq	a0,a3,1c5c <__gesf2+0x40>
    1cc8:	fa0514e3          	bnez	a0,1c70 <__gesf2+0x54>
    1ccc:	fa0706e3          	beqz	a4,1c78 <__gesf2+0x5c>
    1cd0:	fa1ff06f          	j	1c70 <__gesf2+0x54>

00001cd4 <__lesf2>:
    1cd4:	00800737          	lui	a4,0x800
    1cd8:	fff70713          	addi	a4,a4,-1 # 7fffff <det+0x7efd97>
    1cdc:	01755693          	srli	a3,a0,0x17
    1ce0:	00a77633          	and	a2,a4,a0
    1ce4:	01f55793          	srli	a5,a0,0x1f
    1ce8:	0ff6f693          	zext.b	a3,a3
    1cec:	0175d513          	srli	a0,a1,0x17
    1cf0:	0ff00813          	li	a6,255
    1cf4:	00b77733          	and	a4,a4,a1
    1cf8:	0ff57513          	zext.b	a0,a0
    1cfc:	01f5d593          	srli	a1,a1,0x1f
    1d00:	01069863          	bne	a3,a6,1d10 <__lesf2+0x3c>
    1d04:	06060c63          	beqz	a2,1d7c <__lesf2+0xa8>
    1d08:	00200513          	li	a0,2
    1d0c:	00008067          	ret
    1d10:	01051463          	bne	a0,a6,1d18 <__lesf2+0x44>
    1d14:	fe071ae3          	bnez	a4,1d08 <__lesf2+0x34>
    1d18:	06069463          	bnez	a3,1d80 <__lesf2+0xac>
    1d1c:	00051463          	bnez	a0,1d24 <__lesf2+0x50>
    1d20:	04070a63          	beqz	a4,1d74 <__lesf2+0xa0>
    1d24:	00060e63          	beqz	a2,1d40 <__lesf2+0x6c>
    1d28:	00b79463          	bne	a5,a1,1d30 <__lesf2+0x5c>
    1d2c:	02d55263          	bge	a0,a3,1d50 <__lesf2+0x7c>
    1d30:	00100513          	li	a0,1
    1d34:	02078e63          	beqz	a5,1d70 <__lesf2+0x9c>
    1d38:	fff00513          	li	a0,-1
    1d3c:	00008067          	ret
    1d40:	fff00513          	li	a0,-1
    1d44:	02058663          	beqz	a1,1d70 <__lesf2+0x9c>
    1d48:	00058513          	mv	a0,a1
    1d4c:	00008067          	ret
    1d50:	00a6da63          	bge	a3,a0,1d64 <__lesf2+0x90>
    1d54:	fff00513          	li	a0,-1
    1d58:	00078c63          	beqz	a5,1d70 <__lesf2+0x9c>
    1d5c:	00078513          	mv	a0,a5
    1d60:	00008067          	ret
    1d64:	fcc766e3          	bltu	a4,a2,1d30 <__lesf2+0x5c>
    1d68:	00000513          	li	a0,0
    1d6c:	fee664e3          	bltu	a2,a4,1d54 <__lesf2+0x80>
    1d70:	00008067          	ret
    1d74:	fe060ee3          	beqz	a2,1d70 <__lesf2+0x9c>
    1d78:	fb9ff06f          	j	1d30 <__lesf2+0x5c>
    1d7c:	f8d50ce3          	beq	a0,a3,1d14 <__lesf2+0x40>
    1d80:	fa0514e3          	bnez	a0,1d28 <__lesf2+0x54>
    1d84:	fa0706e3          	beqz	a4,1d30 <__lesf2+0x5c>
    1d88:	fa1ff06f          	j	1d28 <__lesf2+0x54>

00001d8c <__mulsf3>:
    1d8c:	fe010113          	addi	sp,sp,-32
    1d90:	01212823          	sw	s2,16(sp)
    1d94:	01755913          	srli	s2,a0,0x17
    1d98:	00912a23          	sw	s1,20(sp)
    1d9c:	01312623          	sw	s3,12(sp)
    1da0:	01512223          	sw	s5,4(sp)
    1da4:	00951493          	slli	s1,a0,0x9
    1da8:	00112e23          	sw	ra,28(sp)
    1dac:	00812c23          	sw	s0,24(sp)
    1db0:	01412423          	sw	s4,8(sp)
    1db4:	0ff97913          	zext.b	s2,s2
    1db8:	00058a93          	mv	s5,a1
    1dbc:	0094d493          	srli	s1,s1,0x9
    1dc0:	01f55993          	srli	s3,a0,0x1f
    1dc4:	1c090263          	beqz	s2,1f88 <__mulsf3+0x1fc>
    1dc8:	0ff00793          	li	a5,255
    1dcc:	1cf90e63          	beq	s2,a5,1fa8 <__mulsf3+0x21c>
    1dd0:	00349493          	slli	s1,s1,0x3
    1dd4:	040007b7          	lui	a5,0x4000
    1dd8:	00f4e4b3          	or	s1,s1,a5
    1ddc:	f8190913          	addi	s2,s2,-127
    1de0:	00000a13          	li	s4,0
    1de4:	017ad793          	srli	a5,s5,0x17
    1de8:	009a9413          	slli	s0,s5,0x9
    1dec:	0ff7f793          	zext.b	a5,a5
    1df0:	00945413          	srli	s0,s0,0x9
    1df4:	01fada93          	srli	s5,s5,0x1f
    1df8:	1c078863          	beqz	a5,1fc8 <__mulsf3+0x23c>
    1dfc:	0ff00713          	li	a4,255
    1e00:	1ee78463          	beq	a5,a4,1fe8 <__mulsf3+0x25c>
    1e04:	00341413          	slli	s0,s0,0x3
    1e08:	04000737          	lui	a4,0x4000
    1e0c:	00e46433          	or	s0,s0,a4
    1e10:	f8178793          	addi	a5,a5,-127 # 3ffff81 <det+0x3fefd19>
    1e14:	00000693          	li	a3,0
    1e18:	00f90933          	add	s2,s2,a5
    1e1c:	002a1793          	slli	a5,s4,0x2
    1e20:	00d7e7b3          	or	a5,a5,a3
    1e24:	00a00713          	li	a4,10
    1e28:	0159c833          	xor	a6,s3,s5
    1e2c:	00190893          	addi	a7,s2,1
    1e30:	22f74463          	blt	a4,a5,2058 <__mulsf3+0x2cc>
    1e34:	00200713          	li	a4,2
    1e38:	1cf74863          	blt	a4,a5,2008 <__mulsf3+0x27c>
    1e3c:	fff78793          	addi	a5,a5,-1
    1e40:	00100713          	li	a4,1
    1e44:	1ef77463          	bgeu	a4,a5,202c <__mulsf3+0x2a0>
    1e48:	00010eb7          	lui	t4,0x10
    1e4c:	fffe8313          	addi	t1,t4,-1 # ffff <main+0xd88f>
    1e50:	0104df93          	srli	t6,s1,0x10
    1e54:	01045f13          	srli	t5,s0,0x10
    1e58:	0064f4b3          	and	s1,s1,t1
    1e5c:	00647433          	and	s0,s0,t1
    1e60:	00048513          	mv	a0,s1
    1e64:	00040593          	mv	a1,s0
    1e68:	7e4000ef          	jal	ra,264c <__mulsi3>
    1e6c:	00050713          	mv	a4,a0
    1e70:	000f0593          	mv	a1,t5
    1e74:	00048513          	mv	a0,s1
    1e78:	7d4000ef          	jal	ra,264c <__mulsi3>
    1e7c:	00050793          	mv	a5,a0
    1e80:	00040593          	mv	a1,s0
    1e84:	000f8513          	mv	a0,t6
    1e88:	7c4000ef          	jal	ra,264c <__mulsi3>
    1e8c:	00050e13          	mv	t3,a0
    1e90:	000f0593          	mv	a1,t5
    1e94:	000f8513          	mv	a0,t6
    1e98:	7b4000ef          	jal	ra,264c <__mulsi3>
    1e9c:	01075413          	srli	s0,a4,0x10
    1ea0:	01c787b3          	add	a5,a5,t3
    1ea4:	00f40433          	add	s0,s0,a5
    1ea8:	00050693          	mv	a3,a0
    1eac:	01c47463          	bgeu	s0,t3,1eb4 <__mulsf3+0x128>
    1eb0:	01d506b3          	add	a3,a0,t4
    1eb4:	006477b3          	and	a5,s0,t1
    1eb8:	00677733          	and	a4,a4,t1
    1ebc:	01079793          	slli	a5,a5,0x10
    1ec0:	00e787b3          	add	a5,a5,a4
    1ec4:	00679713          	slli	a4,a5,0x6
    1ec8:	01045413          	srli	s0,s0,0x10
    1ecc:	00e03733          	snez	a4,a4
    1ed0:	01a7d793          	srli	a5,a5,0x1a
    1ed4:	00d40433          	add	s0,s0,a3
    1ed8:	00f767b3          	or	a5,a4,a5
    1edc:	00641413          	slli	s0,s0,0x6
    1ee0:	00f46433          	or	s0,s0,a5
    1ee4:	080007b7          	lui	a5,0x8000
    1ee8:	00f477b3          	and	a5,s0,a5
    1eec:	18078e63          	beqz	a5,2088 <__mulsf3+0x2fc>
    1ef0:	00145793          	srli	a5,s0,0x1
    1ef4:	00147413          	andi	s0,s0,1
    1ef8:	0087e433          	or	s0,a5,s0
    1efc:	07f88713          	addi	a4,a7,127 # 80007f <det+0x7efe17>
    1f00:	18e05863          	blez	a4,2090 <__mulsf3+0x304>
    1f04:	00747793          	andi	a5,s0,7
    1f08:	00078a63          	beqz	a5,1f1c <__mulsf3+0x190>
    1f0c:	00f47793          	andi	a5,s0,15
    1f10:	00400693          	li	a3,4
    1f14:	00d78463          	beq	a5,a3,1f1c <__mulsf3+0x190>
    1f18:	00440413          	addi	s0,s0,4 # 400004 <det+0x3efd9c>
    1f1c:	080007b7          	lui	a5,0x8000
    1f20:	00f477b3          	and	a5,s0,a5
    1f24:	00078a63          	beqz	a5,1f38 <__mulsf3+0x1ac>
    1f28:	f80007b7          	lui	a5,0xf8000
    1f2c:	fff78793          	addi	a5,a5,-1 # f7ffffff <det+0xf7fefd97>
    1f30:	00f47433          	and	s0,s0,a5
    1f34:	08088713          	addi	a4,a7,128
    1f38:	0fe00793          	li	a5,254
    1f3c:	1ae7ce63          	blt	a5,a4,20f8 <__mulsf3+0x36c>
    1f40:	00345793          	srli	a5,s0,0x3
    1f44:	01c12083          	lw	ra,28(sp)
    1f48:	01812403          	lw	s0,24(sp)
    1f4c:	01771713          	slli	a4,a4,0x17
    1f50:	7f8006b7          	lui	a3,0x7f800
    1f54:	00979793          	slli	a5,a5,0x9
    1f58:	00d77733          	and	a4,a4,a3
    1f5c:	0097d793          	srli	a5,a5,0x9
    1f60:	00f76733          	or	a4,a4,a5
    1f64:	01f81513          	slli	a0,a6,0x1f
    1f68:	01412483          	lw	s1,20(sp)
    1f6c:	01012903          	lw	s2,16(sp)
    1f70:	00c12983          	lw	s3,12(sp)
    1f74:	00812a03          	lw	s4,8(sp)
    1f78:	00412a83          	lw	s5,4(sp)
    1f7c:	00a76533          	or	a0,a4,a0
    1f80:	02010113          	addi	sp,sp,32
    1f84:	00008067          	ret
    1f88:	02048a63          	beqz	s1,1fbc <__mulsf3+0x230>
    1f8c:	00048513          	mv	a0,s1
    1f90:	794000ef          	jal	ra,2724 <__clzsi2>
    1f94:	ffb50793          	addi	a5,a0,-5
    1f98:	f8a00913          	li	s2,-118
    1f9c:	00f494b3          	sll	s1,s1,a5
    1fa0:	40a90933          	sub	s2,s2,a0
    1fa4:	e3dff06f          	j	1de0 <__mulsf3+0x54>
    1fa8:	0ff00913          	li	s2,255
    1fac:	00200a13          	li	s4,2
    1fb0:	e2048ae3          	beqz	s1,1de4 <__mulsf3+0x58>
    1fb4:	00300a13          	li	s4,3
    1fb8:	e2dff06f          	j	1de4 <__mulsf3+0x58>
    1fbc:	00000913          	li	s2,0
    1fc0:	00100a13          	li	s4,1
    1fc4:	e21ff06f          	j	1de4 <__mulsf3+0x58>
    1fc8:	02040a63          	beqz	s0,1ffc <__mulsf3+0x270>
    1fcc:	00040513          	mv	a0,s0
    1fd0:	754000ef          	jal	ra,2724 <__clzsi2>
    1fd4:	ffb50793          	addi	a5,a0,-5
    1fd8:	00f41433          	sll	s0,s0,a5
    1fdc:	f8a00793          	li	a5,-118
    1fe0:	40a787b3          	sub	a5,a5,a0
    1fe4:	e31ff06f          	j	1e14 <__mulsf3+0x88>
    1fe8:	0ff00793          	li	a5,255
    1fec:	00200693          	li	a3,2
    1ff0:	e20404e3          	beqz	s0,1e18 <__mulsf3+0x8c>
    1ff4:	00300693          	li	a3,3
    1ff8:	e21ff06f          	j	1e18 <__mulsf3+0x8c>
    1ffc:	00000793          	li	a5,0
    2000:	00100693          	li	a3,1
    2004:	e15ff06f          	j	1e18 <__mulsf3+0x8c>
    2008:	00100713          	li	a4,1
    200c:	00f717b3          	sll	a5,a4,a5
    2010:	5307f713          	andi	a4,a5,1328
    2014:	04071c63          	bnez	a4,206c <__mulsf3+0x2e0>
    2018:	2407f713          	andi	a4,a5,576
    201c:	0c071663          	bnez	a4,20e8 <__mulsf3+0x35c>
    2020:	0887f793          	andi	a5,a5,136
    2024:	e20782e3          	beqz	a5,1e48 <__mulsf3+0xbc>
    2028:	000a8813          	mv	a6,s5
    202c:	00200613          	li	a2,2
    2030:	00000793          	li	a5,0
    2034:	0ff00713          	li	a4,255
    2038:	f0c686e3          	beq	a3,a2,1f44 <__mulsf3+0x1b8>
    203c:	00300793          	li	a5,3
    2040:	0af68463          	beq	a3,a5,20e8 <__mulsf3+0x35c>
    2044:	00100793          	li	a5,1
    2048:	eaf69ae3          	bne	a3,a5,1efc <__mulsf3+0x170>
    204c:	00000793          	li	a5,0
    2050:	00000713          	li	a4,0
    2054:	ef1ff06f          	j	1f44 <__mulsf3+0x1b8>
    2058:	00f00713          	li	a4,15
    205c:	00e78e63          	beq	a5,a4,2078 <__mulsf3+0x2ec>
    2060:	00b00713          	li	a4,11
    2064:	fce782e3          	beq	a5,a4,2028 <__mulsf3+0x29c>
    2068:	00098813          	mv	a6,s3
    206c:	00048413          	mv	s0,s1
    2070:	000a0693          	mv	a3,s4
    2074:	fb9ff06f          	j	202c <__mulsf3+0x2a0>
    2078:	00400437          	lui	s0,0x400
    207c:	00000813          	li	a6,0
    2080:	00300693          	li	a3,3
    2084:	fb9ff06f          	j	203c <__mulsf3+0x2b0>
    2088:	00090893          	mv	a7,s2
    208c:	e71ff06f          	j	1efc <__mulsf3+0x170>
    2090:	00100793          	li	a5,1
    2094:	40e787b3          	sub	a5,a5,a4
    2098:	01b00713          	li	a4,27
    209c:	faf748e3          	blt	a4,a5,204c <__mulsf3+0x2c0>
    20a0:	09e88893          	addi	a7,a7,158
    20a4:	00f457b3          	srl	a5,s0,a5
    20a8:	01141433          	sll	s0,s0,a7
    20ac:	00803433          	snez	s0,s0
    20b0:	0087e7b3          	or	a5,a5,s0
    20b4:	0077f713          	andi	a4,a5,7
    20b8:	00070a63          	beqz	a4,20cc <__mulsf3+0x340>
    20bc:	00f7f713          	andi	a4,a5,15
    20c0:	00400693          	li	a3,4
    20c4:	00d70463          	beq	a4,a3,20cc <__mulsf3+0x340>
    20c8:	00478793          	addi	a5,a5,4
    20cc:	04000737          	lui	a4,0x4000
    20d0:	00e7f733          	and	a4,a5,a4
    20d4:	0037d793          	srli	a5,a5,0x3
    20d8:	e60706e3          	beqz	a4,1f44 <__mulsf3+0x1b8>
    20dc:	00000793          	li	a5,0
    20e0:	00100713          	li	a4,1
    20e4:	e61ff06f          	j	1f44 <__mulsf3+0x1b8>
    20e8:	004007b7          	lui	a5,0x400
    20ec:	0ff00713          	li	a4,255
    20f0:	00000813          	li	a6,0
    20f4:	e51ff06f          	j	1f44 <__mulsf3+0x1b8>
    20f8:	00000793          	li	a5,0
    20fc:	0ff00713          	li	a4,255
    2100:	e45ff06f          	j	1f44 <__mulsf3+0x1b8>

00002104 <__subsf3>:
    2104:	00800737          	lui	a4,0x800
    2108:	ff010113          	addi	sp,sp,-16
    210c:	fff70713          	addi	a4,a4,-1 # 7fffff <det+0x7efd97>
    2110:	0175d613          	srli	a2,a1,0x17
    2114:	00a777b3          	and	a5,a4,a0
    2118:	00812423          	sw	s0,8(sp)
    211c:	00b77733          	and	a4,a4,a1
    2120:	00912223          	sw	s1,4(sp)
    2124:	01755413          	srli	s0,a0,0x17
    2128:	00112623          	sw	ra,12(sp)
    212c:	01212023          	sw	s2,0(sp)
    2130:	0ff67613          	zext.b	a2,a2
    2134:	0ff00693          	li	a3,255
    2138:	0ff47413          	zext.b	s0,s0
    213c:	01f55493          	srli	s1,a0,0x1f
    2140:	00379793          	slli	a5,a5,0x3
    2144:	01f5d593          	srli	a1,a1,0x1f
    2148:	00371713          	slli	a4,a4,0x3
    214c:	00d61463          	bne	a2,a3,2154 <__subsf3+0x50>
    2150:	00071463          	bnez	a4,2158 <__subsf3+0x54>
    2154:	0015c593          	xori	a1,a1,1
    2158:	40c406b3          	sub	a3,s0,a2
    215c:	18959a63          	bne	a1,s1,22f0 <__subsf3+0x1ec>
    2160:	0ad05063          	blez	a3,2200 <__subsf3+0xfc>
    2164:	02061663          	bnez	a2,2190 <__subsf3+0x8c>
    2168:	18070063          	beqz	a4,22e8 <__subsf3+0x1e4>
    216c:	fff68613          	addi	a2,a3,-1 # 7f7fffff <det+0x7f7efd97>
    2170:	00061863          	bnez	a2,2180 <__subsf3+0x7c>
    2174:	00e787b3          	add	a5,a5,a4
    2178:	00100413          	li	s0,1
    217c:	0500006f          	j	21cc <__subsf3+0xc8>
    2180:	0ff00593          	li	a1,255
    2184:	02b69063          	bne	a3,a1,21a4 <__subsf3+0xa0>
    2188:	0ff00413          	li	s0,255
    218c:	1180006f          	j	22a4 <__subsf3+0x1a0>
    2190:	0ff00613          	li	a2,255
    2194:	10c40863          	beq	s0,a2,22a4 <__subsf3+0x1a0>
    2198:	04000637          	lui	a2,0x4000
    219c:	00c76733          	or	a4,a4,a2
    21a0:	00068613          	mv	a2,a3
    21a4:	01b00593          	li	a1,27
    21a8:	00100693          	li	a3,1
    21ac:	00c5ce63          	blt	a1,a2,21c8 <__subsf3+0xc4>
    21b0:	02000693          	li	a3,32
    21b4:	40c686b3          	sub	a3,a3,a2
    21b8:	00c755b3          	srl	a1,a4,a2
    21bc:	00d71733          	sll	a4,a4,a3
    21c0:	00e03733          	snez	a4,a4
    21c4:	00e5e6b3          	or	a3,a1,a4
    21c8:	00d787b3          	add	a5,a5,a3
    21cc:	04000737          	lui	a4,0x4000
    21d0:	00e7f733          	and	a4,a5,a4
    21d4:	0c070863          	beqz	a4,22a4 <__subsf3+0x1a0>
    21d8:	00140413          	addi	s0,s0,1 # 400001 <det+0x3efd99>
    21dc:	0ff00713          	li	a4,255
    21e0:	30e40263          	beq	s0,a4,24e4 <__subsf3+0x3e0>
    21e4:	7e000737          	lui	a4,0x7e000
    21e8:	0017f693          	andi	a3,a5,1
    21ec:	fff70713          	addi	a4,a4,-1 # 7dffffff <det+0x7dfefd97>
    21f0:	0017d793          	srli	a5,a5,0x1
    21f4:	00e7f7b3          	and	a5,a5,a4
    21f8:	00d7e7b3          	or	a5,a5,a3
    21fc:	0a80006f          	j	22a4 <__subsf3+0x1a0>
    2200:	06068663          	beqz	a3,226c <__subsf3+0x168>
    2204:	408606b3          	sub	a3,a2,s0
    2208:	02041063          	bnez	s0,2228 <__subsf3+0x124>
    220c:	2c078263          	beqz	a5,24d0 <__subsf3+0x3cc>
    2210:	fff68593          	addi	a1,a3,-1
    2214:	f60580e3          	beqz	a1,2174 <__subsf3+0x70>
    2218:	0ff00513          	li	a0,255
    221c:	02a69063          	bne	a3,a0,223c <__subsf3+0x138>
    2220:	00070793          	mv	a5,a4
    2224:	f65ff06f          	j	2188 <__subsf3+0x84>
    2228:	0ff00593          	li	a1,255
    222c:	feb60ae3          	beq	a2,a1,2220 <__subsf3+0x11c>
    2230:	040005b7          	lui	a1,0x4000
    2234:	00b7e7b3          	or	a5,a5,a1
    2238:	00068593          	mv	a1,a3
    223c:	01b00513          	li	a0,27
    2240:	00100693          	li	a3,1
    2244:	00b54e63          	blt	a0,a1,2260 <__subsf3+0x15c>
    2248:	02000693          	li	a3,32
    224c:	40b686b3          	sub	a3,a3,a1
    2250:	00b7d533          	srl	a0,a5,a1
    2254:	00d797b3          	sll	a5,a5,a3
    2258:	00f037b3          	snez	a5,a5
    225c:	00f566b3          	or	a3,a0,a5
    2260:	00e687b3          	add	a5,a3,a4
    2264:	00060413          	mv	s0,a2
    2268:	f65ff06f          	j	21cc <__subsf3+0xc8>
    226c:	00140693          	addi	a3,s0,1
    2270:	0fe6f613          	andi	a2,a3,254
    2274:	06061263          	bnez	a2,22d8 <__subsf3+0x1d4>
    2278:	04041463          	bnez	s0,22c0 <__subsf3+0x1bc>
    227c:	24078e63          	beqz	a5,24d8 <__subsf3+0x3d4>
    2280:	02070263          	beqz	a4,22a4 <__subsf3+0x1a0>
    2284:	00e787b3          	add	a5,a5,a4
    2288:	04000737          	lui	a4,0x4000
    228c:	00e7f733          	and	a4,a5,a4
    2290:	00070a63          	beqz	a4,22a4 <__subsf3+0x1a0>
    2294:	fc000737          	lui	a4,0xfc000
    2298:	fff70713          	addi	a4,a4,-1 # fbffffff <det+0xfbfefd97>
    229c:	00e7f7b3          	and	a5,a5,a4
    22a0:	00100413          	li	s0,1
    22a4:	0077f713          	andi	a4,a5,7
    22a8:	24070063          	beqz	a4,24e8 <__subsf3+0x3e4>
    22ac:	00f7f713          	andi	a4,a5,15
    22b0:	00400693          	li	a3,4
    22b4:	22d70a63          	beq	a4,a3,24e8 <__subsf3+0x3e4>
    22b8:	00478793          	addi	a5,a5,4 # 400004 <det+0x3efd9c>
    22bc:	22c0006f          	j	24e8 <__subsf3+0x3e4>
    22c0:	f60780e3          	beqz	a5,2220 <__subsf3+0x11c>
    22c4:	ec0702e3          	beqz	a4,2188 <__subsf3+0x84>
    22c8:	00000493          	li	s1,0
    22cc:	020007b7          	lui	a5,0x2000
    22d0:	0ff00413          	li	s0,255
    22d4:	2140006f          	j	24e8 <__subsf3+0x3e4>
    22d8:	0ff00613          	li	a2,255
    22dc:	20c68263          	beq	a3,a2,24e0 <__subsf3+0x3dc>
    22e0:	00e78733          	add	a4,a5,a4
    22e4:	00175793          	srli	a5,a4,0x1
    22e8:	00068413          	mv	s0,a3
    22ec:	fb9ff06f          	j	22a4 <__subsf3+0x1a0>
    22f0:	08d05063          	blez	a3,2370 <__subsf3+0x26c>
    22f4:	06061263          	bnez	a2,2358 <__subsf3+0x254>
    22f8:	fe0708e3          	beqz	a4,22e8 <__subsf3+0x1e4>
    22fc:	fff68613          	addi	a2,a3,-1
    2300:	00061863          	bnez	a2,2310 <__subsf3+0x20c>
    2304:	40e787b3          	sub	a5,a5,a4
    2308:	00100413          	li	s0,1
    230c:	0340006f          	j	2340 <__subsf3+0x23c>
    2310:	0ff00593          	li	a1,255
    2314:	e6b68ae3          	beq	a3,a1,2188 <__subsf3+0x84>
    2318:	01b00593          	li	a1,27
    231c:	00100693          	li	a3,1
    2320:	00c5ce63          	blt	a1,a2,233c <__subsf3+0x238>
    2324:	02000693          	li	a3,32
    2328:	40c686b3          	sub	a3,a3,a2
    232c:	00c755b3          	srl	a1,a4,a2
    2330:	00d71733          	sll	a4,a4,a3
    2334:	00e03733          	snez	a4,a4
    2338:	00e5e6b3          	or	a3,a1,a4
    233c:	40d787b3          	sub	a5,a5,a3
    2340:	04000937          	lui	s2,0x4000
    2344:	0127f733          	and	a4,a5,s2
    2348:	f4070ee3          	beqz	a4,22a4 <__subsf3+0x1a0>
    234c:	fff90913          	addi	s2,s2,-1 # 3ffffff <det+0x3fefd97>
    2350:	0127f933          	and	s2,a5,s2
    2354:	1180006f          	j	246c <__subsf3+0x368>
    2358:	0ff00613          	li	a2,255
    235c:	f4c404e3          	beq	s0,a2,22a4 <__subsf3+0x1a0>
    2360:	04000637          	lui	a2,0x4000
    2364:	00c76733          	or	a4,a4,a2
    2368:	00068613          	mv	a2,a3
    236c:	fadff06f          	j	2318 <__subsf3+0x214>
    2370:	08068063          	beqz	a3,23f0 <__subsf3+0x2ec>
    2374:	408606b3          	sub	a3,a2,s0
    2378:	02041863          	bnez	s0,23a8 <__subsf3+0x2a4>
    237c:	1e078063          	beqz	a5,255c <__subsf3+0x458>
    2380:	fff68513          	addi	a0,a3,-1
    2384:	00051863          	bnez	a0,2394 <__subsf3+0x290>
    2388:	40f707b3          	sub	a5,a4,a5
    238c:	00058493          	mv	s1,a1
    2390:	f79ff06f          	j	2308 <__subsf3+0x204>
    2394:	0ff00813          	li	a6,255
    2398:	03069263          	bne	a3,a6,23bc <__subsf3+0x2b8>
    239c:	00070793          	mv	a5,a4
    23a0:	0ff00413          	li	s0,255
    23a4:	06c0006f          	j	2410 <__subsf3+0x30c>
    23a8:	0ff00513          	li	a0,255
    23ac:	fea608e3          	beq	a2,a0,239c <__subsf3+0x298>
    23b0:	04000537          	lui	a0,0x4000
    23b4:	00a7e7b3          	or	a5,a5,a0
    23b8:	00068513          	mv	a0,a3
    23bc:	01b00813          	li	a6,27
    23c0:	00100693          	li	a3,1
    23c4:	00a84e63          	blt	a6,a0,23e0 <__subsf3+0x2dc>
    23c8:	02000693          	li	a3,32
    23cc:	40a686b3          	sub	a3,a3,a0
    23d0:	00a7d833          	srl	a6,a5,a0
    23d4:	00d797b3          	sll	a5,a5,a3
    23d8:	00f037b3          	snez	a5,a5
    23dc:	00f866b3          	or	a3,a6,a5
    23e0:	40d707b3          	sub	a5,a4,a3
    23e4:	00060413          	mv	s0,a2
    23e8:	00058493          	mv	s1,a1
    23ec:	f55ff06f          	j	2340 <__subsf3+0x23c>
    23f0:	00140693          	addi	a3,s0,1
    23f4:	0fe6f693          	andi	a3,a3,254
    23f8:	04069e63          	bnez	a3,2454 <__subsf3+0x350>
    23fc:	04041263          	bnez	s0,2440 <__subsf3+0x33c>
    2400:	00079c63          	bnez	a5,2418 <__subsf3+0x314>
    2404:	00000493          	li	s1,0
    2408:	0e070063          	beqz	a4,24e8 <__subsf3+0x3e4>
    240c:	00070793          	mv	a5,a4
    2410:	00058493          	mv	s1,a1
    2414:	e91ff06f          	j	22a4 <__subsf3+0x1a0>
    2418:	e80706e3          	beqz	a4,22a4 <__subsf3+0x1a0>
    241c:	40e786b3          	sub	a3,a5,a4
    2420:	04000637          	lui	a2,0x4000
    2424:	00c6f633          	and	a2,a3,a2
    2428:	40f707b3          	sub	a5,a4,a5
    242c:	fe0612e3          	bnez	a2,2410 <__subsf3+0x30c>
    2430:	00000793          	li	a5,0
    2434:	08068063          	beqz	a3,24b4 <__subsf3+0x3b0>
    2438:	00068793          	mv	a5,a3
    243c:	e69ff06f          	j	22a4 <__subsf3+0x1a0>
    2440:	e80792e3          	bnez	a5,22c4 <__subsf3+0x1c0>
    2444:	e80702e3          	beqz	a4,22c8 <__subsf3+0x1c4>
    2448:	00070793          	mv	a5,a4
    244c:	00058493          	mv	s1,a1
    2450:	d39ff06f          	j	2188 <__subsf3+0x84>
    2454:	40e78933          	sub	s2,a5,a4
    2458:	040006b7          	lui	a3,0x4000
    245c:	00d976b3          	and	a3,s2,a3
    2460:	04068463          	beqz	a3,24a8 <__subsf3+0x3a4>
    2464:	40f70933          	sub	s2,a4,a5
    2468:	00058493          	mv	s1,a1
    246c:	00090513          	mv	a0,s2
    2470:	2b4000ef          	jal	ra,2724 <__clzsi2>
    2474:	ffb50513          	addi	a0,a0,-5 # 3fffffb <det+0x3fefd93>
    2478:	00a91933          	sll	s2,s2,a0
    247c:	04854063          	blt	a0,s0,24bc <__subsf3+0x3b8>
    2480:	40850533          	sub	a0,a0,s0
    2484:	00150513          	addi	a0,a0,1
    2488:	02000713          	li	a4,32
    248c:	40a70733          	sub	a4,a4,a0
    2490:	00a957b3          	srl	a5,s2,a0
    2494:	00e91933          	sll	s2,s2,a4
    2498:	01203933          	snez	s2,s2
    249c:	0127e7b3          	or	a5,a5,s2
    24a0:	00000413          	li	s0,0
    24a4:	e01ff06f          	j	22a4 <__subsf3+0x1a0>
    24a8:	fc0912e3          	bnez	s2,246c <__subsf3+0x368>
    24ac:	00000793          	li	a5,0
    24b0:	00000413          	li	s0,0
    24b4:	00000493          	li	s1,0
    24b8:	0300006f          	j	24e8 <__subsf3+0x3e4>
    24bc:	fc0007b7          	lui	a5,0xfc000
    24c0:	fff78793          	addi	a5,a5,-1 # fbffffff <det+0xfbfefd97>
    24c4:	40a40433          	sub	s0,s0,a0
    24c8:	00f977b3          	and	a5,s2,a5
    24cc:	dd9ff06f          	j	22a4 <__subsf3+0x1a0>
    24d0:	00070793          	mv	a5,a4
    24d4:	e15ff06f          	j	22e8 <__subsf3+0x1e4>
    24d8:	00070793          	mv	a5,a4
    24dc:	dc9ff06f          	j	22a4 <__subsf3+0x1a0>
    24e0:	0ff00413          	li	s0,255
    24e4:	00000793          	li	a5,0
    24e8:	04000737          	lui	a4,0x4000
    24ec:	00e7f733          	and	a4,a5,a4
    24f0:	00070e63          	beqz	a4,250c <__subsf3+0x408>
    24f4:	00140413          	addi	s0,s0,1
    24f8:	0ff00713          	li	a4,255
    24fc:	06e40663          	beq	s0,a4,2568 <__subsf3+0x464>
    2500:	fc000737          	lui	a4,0xfc000
    2504:	fff70713          	addi	a4,a4,-1 # fbffffff <det+0xfbfefd97>
    2508:	00e7f7b3          	and	a5,a5,a4
    250c:	0ff00713          	li	a4,255
    2510:	0037d793          	srli	a5,a5,0x3
    2514:	00e41863          	bne	s0,a4,2524 <__subsf3+0x420>
    2518:	00078663          	beqz	a5,2524 <__subsf3+0x420>
    251c:	004007b7          	lui	a5,0x400
    2520:	00000493          	li	s1,0
    2524:	01741413          	slli	s0,s0,0x17
    2528:	7f800737          	lui	a4,0x7f800
    252c:	00979793          	slli	a5,a5,0x9
    2530:	00e47433          	and	s0,s0,a4
    2534:	0097d793          	srli	a5,a5,0x9
    2538:	00f46433          	or	s0,s0,a5
    253c:	01f49513          	slli	a0,s1,0x1f
    2540:	00c12083          	lw	ra,12(sp)
    2544:	00a46533          	or	a0,s0,a0
    2548:	00812403          	lw	s0,8(sp)
    254c:	00412483          	lw	s1,4(sp)
    2550:	00012903          	lw	s2,0(sp)
    2554:	01010113          	addi	sp,sp,16
    2558:	00008067          	ret
    255c:	00070793          	mv	a5,a4
    2560:	00068413          	mv	s0,a3
    2564:	eadff06f          	j	2410 <__subsf3+0x30c>
    2568:	00000793          	li	a5,0
    256c:	fa1ff06f          	j	250c <__subsf3+0x408>

00002570 <__extendsfdf2>:
    2570:	01755713          	srli	a4,a0,0x17
    2574:	0ff77713          	zext.b	a4,a4
    2578:	ff010113          	addi	sp,sp,-16
    257c:	00170793          	addi	a5,a4,1 # 7f800001 <det+0x7f7efd99>
    2580:	00812423          	sw	s0,8(sp)
    2584:	00912223          	sw	s1,4(sp)
    2588:	00951413          	slli	s0,a0,0x9
    258c:	00112623          	sw	ra,12(sp)
    2590:	0fe7f793          	andi	a5,a5,254
    2594:	00945413          	srli	s0,s0,0x9
    2598:	01f55493          	srli	s1,a0,0x1f
    259c:	04078263          	beqz	a5,25e0 <__extendsfdf2+0x70>
    25a0:	00345793          	srli	a5,s0,0x3
    25a4:	38070713          	addi	a4,a4,896
    25a8:	01d41413          	slli	s0,s0,0x1d
    25ac:	00c79793          	slli	a5,a5,0xc
    25b0:	00c7d793          	srli	a5,a5,0xc
    25b4:	01471713          	slli	a4,a4,0x14
    25b8:	01f49513          	slli	a0,s1,0x1f
    25bc:	00f76733          	or	a4,a4,a5
    25c0:	00c12083          	lw	ra,12(sp)
    25c4:	00a767b3          	or	a5,a4,a0
    25c8:	00040513          	mv	a0,s0
    25cc:	00812403          	lw	s0,8(sp)
    25d0:	00412483          	lw	s1,4(sp)
    25d4:	00078593          	mv	a1,a5
    25d8:	01010113          	addi	sp,sp,16
    25dc:	00008067          	ret
    25e0:	04071663          	bnez	a4,262c <__extendsfdf2+0xbc>
    25e4:	00000793          	li	a5,0
    25e8:	fc0402e3          	beqz	s0,25ac <__extendsfdf2+0x3c>
    25ec:	00040513          	mv	a0,s0
    25f0:	134000ef          	jal	ra,2724 <__clzsi2>
    25f4:	00a00793          	li	a5,10
    25f8:	02a7c263          	blt	a5,a0,261c <__extendsfdf2+0xac>
    25fc:	00b00793          	li	a5,11
    2600:	40a787b3          	sub	a5,a5,a0
    2604:	01550713          	addi	a4,a0,21
    2608:	00f457b3          	srl	a5,s0,a5
    260c:	00e41433          	sll	s0,s0,a4
    2610:	38900713          	li	a4,905
    2614:	40a70733          	sub	a4,a4,a0
    2618:	f95ff06f          	j	25ac <__extendsfdf2+0x3c>
    261c:	ff550793          	addi	a5,a0,-11
    2620:	00f417b3          	sll	a5,s0,a5
    2624:	00000413          	li	s0,0
    2628:	fe9ff06f          	j	2610 <__extendsfdf2+0xa0>
    262c:	00000793          	li	a5,0
    2630:	00040a63          	beqz	s0,2644 <__extendsfdf2+0xd4>
    2634:	00345793          	srli	a5,s0,0x3
    2638:	00080737          	lui	a4,0x80
    263c:	01d41413          	slli	s0,s0,0x1d
    2640:	00e7e7b3          	or	a5,a5,a4
    2644:	7ff00713          	li	a4,2047
    2648:	f65ff06f          	j	25ac <__extendsfdf2+0x3c>

0000264c <__mulsi3>:
    264c:	00050613          	mv	a2,a0
    2650:	00000513          	li	a0,0
    2654:	0015f693          	andi	a3,a1,1
    2658:	00068463          	beqz	a3,2660 <__mulsi3+0x14>
    265c:	00c50533          	add	a0,a0,a2
    2660:	0015d593          	srli	a1,a1,0x1
    2664:	00161613          	slli	a2,a2,0x1
    2668:	fe0596e3          	bnez	a1,2654 <__mulsi3+0x8>
    266c:	00008067          	ret

00002670 <__divsi3>:
    2670:	06054063          	bltz	a0,26d0 <__umodsi3+0x10>
    2674:	0605c663          	bltz	a1,26e0 <__umodsi3+0x20>

00002678 <__udivsi3>:
    2678:	00058613          	mv	a2,a1
    267c:	00050593          	mv	a1,a0
    2680:	fff00513          	li	a0,-1
    2684:	02060c63          	beqz	a2,26bc <__udivsi3+0x44>
    2688:	00100693          	li	a3,1
    268c:	00b67a63          	bgeu	a2,a1,26a0 <__udivsi3+0x28>
    2690:	00c05863          	blez	a2,26a0 <__udivsi3+0x28>
    2694:	00161613          	slli	a2,a2,0x1
    2698:	00169693          	slli	a3,a3,0x1
    269c:	feb66ae3          	bltu	a2,a1,2690 <__udivsi3+0x18>
    26a0:	00000513          	li	a0,0
    26a4:	00c5e663          	bltu	a1,a2,26b0 <__udivsi3+0x38>
    26a8:	40c585b3          	sub	a1,a1,a2
    26ac:	00d56533          	or	a0,a0,a3
    26b0:	0016d693          	srli	a3,a3,0x1
    26b4:	00165613          	srli	a2,a2,0x1
    26b8:	fe0696e3          	bnez	a3,26a4 <__udivsi3+0x2c>
    26bc:	00008067          	ret

000026c0 <__umodsi3>:
    26c0:	00008293          	mv	t0,ra
    26c4:	fb5ff0ef          	jal	ra,2678 <__udivsi3>
    26c8:	00058513          	mv	a0,a1
    26cc:	00028067          	jr	t0
    26d0:	40a00533          	neg	a0,a0
    26d4:	00b04863          	bgtz	a1,26e4 <__umodsi3+0x24>
    26d8:	40b005b3          	neg	a1,a1
    26dc:	f9dff06f          	j	2678 <__udivsi3>
    26e0:	40b005b3          	neg	a1,a1
    26e4:	00008293          	mv	t0,ra
    26e8:	f91ff0ef          	jal	ra,2678 <__udivsi3>
    26ec:	40a00533          	neg	a0,a0
    26f0:	00028067          	jr	t0

000026f4 <__modsi3>:
    26f4:	00008293          	mv	t0,ra
    26f8:	0005ca63          	bltz	a1,270c <__modsi3+0x18>
    26fc:	00054c63          	bltz	a0,2714 <__modsi3+0x20>
    2700:	f79ff0ef          	jal	ra,2678 <__udivsi3>
    2704:	00058513          	mv	a0,a1
    2708:	00028067          	jr	t0
    270c:	40b005b3          	neg	a1,a1
    2710:	fe0558e3          	bgez	a0,2700 <__modsi3+0xc>
    2714:	40a00533          	neg	a0,a0
    2718:	f61ff0ef          	jal	ra,2678 <__udivsi3>
    271c:	40b00533          	neg	a0,a1
    2720:	00028067          	jr	t0

00002724 <__clzsi2>:
    2724:	000107b7          	lui	a5,0x10
    2728:	02f57a63          	bgeu	a0,a5,275c <__clzsi2+0x38>
    272c:	10053793          	sltiu	a5,a0,256
    2730:	0017c793          	xori	a5,a5,1
    2734:	00379793          	slli	a5,a5,0x3
    2738:	00010737          	lui	a4,0x10
    273c:	02000693          	li	a3,32
    2740:	40f686b3          	sub	a3,a3,a5
    2744:	00f55533          	srl	a0,a0,a5
    2748:	0cc70793          	addi	a5,a4,204 # 100cc <__clz_tab>
    274c:	00a787b3          	add	a5,a5,a0
    2750:	0007c503          	lbu	a0,0(a5) # 10000 <a_ref>
    2754:	40a68533          	sub	a0,a3,a0
    2758:	00008067          	ret
    275c:	01000737          	lui	a4,0x1000
    2760:	01000793          	li	a5,16
    2764:	fce56ae3          	bltu	a0,a4,2738 <__clzsi2+0x14>
    2768:	01800793          	li	a5,24
    276c:	fcdff06f          	j	2738 <__clzsi2+0x14>

Disassembly of section .text.startup:

00002770 <main>:
    2770:	fe010113          	addi	sp,sp,-32
    2774:	00112e23          	sw	ra,28(sp)
    2778:	949fd0ef          	jal	ra,c0 <initialise_board>
    277c:	b5cfe0ef          	jal	ra,ad8 <initialise_benchmark>
    2780:	00100513          	li	a0,1
    2784:	b58fe0ef          	jal	ra,adc <warm_caches>
    2788:	93dfd0ef          	jal	ra,c4 <start_trigger>
    278c:	b68fe0ef          	jal	ra,af4 <benchmark>
    2790:	00a12623          	sw	a0,12(sp)
    2794:	95dfd0ef          	jal	ra,f0 <stop_trigger>
    2798:	00c12503          	lw	a0,12(sp)
    279c:	9f4fe0ef          	jal	ra,990 <verify_benchmark>
    27a0:	00051a63          	bnez	a0,27b4 <main+0x44>
    27a4:	110007b7          	lui	a5,0x11000
    27a8:	fff00713          	li	a4,-1
    27ac:	00e7a823          	sw	a4,16(a5) # 11000010 <det+0x10fefda8>
    27b0:	00e7aa23          	sw	a4,20(a5)
    27b4:	110007b7          	lui	a5,0x11000
    27b8:	00100713          	li	a4,1
    27bc:	08e7a023          	sw	a4,128(a5) # 11000080 <det+0x10fefe18>
    27c0:	0000006f          	j	27c0 <main+0x50>
