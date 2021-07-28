
matmult-int.elf:     file format elf32-littleriscv


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
  84:	61c000ef          	jal	ra,6a0 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
  88:	00251513          	slli	a0,a0,0x2
  8c:	110007b7          	lui	a5,0x11000
  90:	00a787b3          	add	a5,a5,a0
  94:	00b7a023          	sw	a1,0(a5) # 11000000 <Seed+0x10feda78>
  98:	00008067          	ret

0000009c <readFromCtrl>:
  9c:	00251513          	slli	a0,a0,0x2
  a0:	110007b7          	lui	a5,0x11000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007a503          	lw	a0,0(a5) # 11000000 <Seed+0x10feda78>
  ac:	00008067          	ret

000000b0 <setIntr>:
  b0:	110007b7          	lui	a5,0x11000
  b4:	00100713          	li	a4,1
  b8:	08e7a023          	sw	a4,128(a5) # 11000080 <Seed+0x10fedaf8>
  bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
  c0:	00008067          	ret

000000c4 <start_trigger>:
  c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <Seed+0xda68>
  c8:	01c00513          	li	a0,28
  cc:	00112623          	sw	ra,12(sp)
  d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
  d4:	00c12083          	lw	ra,12(sp)
  d8:	000127b7          	lui	a5,0x12
  dc:	41f55713          	srai	a4,a0,0x1f
  e0:	58a7a023          	sw	a0,1408(a5) # 12580 <start_time>
  e4:	58e7a223          	sw	a4,1412(a5)
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
 114:	5807a583          	lw	a1,1408(a5) # 12580 <start_time>
 118:	5847a703          	lw	a4,1412(a5)
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

00000150 <values_match>:
 150:	40b50533          	sub	a0,a0,a1
 154:	00153513          	seqz	a0,a0
 158:	00008067          	ret

0000015c <InitSeed>:
 15c:	000127b7          	lui	a5,0x12
 160:	5807a423          	sw	zero,1416(a5) # 12588 <Seed>
 164:	00008067          	ret

00000168 <RandomInteger>:
 168:	ff010113          	addi	sp,sp,-16
 16c:	00812423          	sw	s0,8(sp)
 170:	00012437          	lui	s0,0x12
 174:	58842783          	lw	a5,1416(s0) # 12588 <Seed>
 178:	000025b7          	lui	a1,0x2
 17c:	f9f58593          	addi	a1,a1,-97 # 1f9f <main+0x18ff>
 180:	00579513          	slli	a0,a5,0x5
 184:	00f50533          	add	a0,a0,a5
 188:	00251513          	slli	a0,a0,0x2
 18c:	00f50533          	add	a0,a0,a5
 190:	05150513          	addi	a0,a0,81
 194:	00112623          	sw	ra,12(sp)
 198:	458000ef          	jal	ra,5f0 <__modsi3>
 19c:	00c12083          	lw	ra,12(sp)
 1a0:	58a42423          	sw	a0,1416(s0)
 1a4:	00812403          	lw	s0,8(sp)
 1a8:	01010113          	addi	sp,sp,16
 1ac:	00008067          	ret

000001b0 <Multiply>:
 1b0:	fc010113          	addi	sp,sp,-64
 1b4:	03512223          	sw	s5,36(sp)
 1b8:	01712e23          	sw	s7,28(sp)
 1bc:	01812c23          	sw	s8,24(sp)
 1c0:	01912a23          	sw	s9,20(sp)
 1c4:	01a12823          	sw	s10,16(sp)
 1c8:	01b12623          	sw	s11,12(sp)
 1cc:	02112e23          	sw	ra,60(sp)
 1d0:	02812c23          	sw	s0,56(sp)
 1d4:	02912a23          	sw	s1,52(sp)
 1d8:	03212823          	sw	s2,48(sp)
 1dc:	03312623          	sw	s3,44(sp)
 1e0:	03412423          	sw	s4,40(sp)
 1e4:	03612023          	sw	s6,32(sp)
 1e8:	00050c93          	mv	s9,a0
 1ec:	00060c13          	mv	s8,a2
 1f0:	00000b93          	li	s7,0
 1f4:	64058d93          	addi	s11,a1,1600
 1f8:	69058a93          	addi	s5,a1,1680
 1fc:	64000d13          	li	s10,1600
 200:	017c0a33          	add	s4,s8,s7
 204:	000d8993          	mv	s3,s11
 208:	017c8b33          	add	s6,s9,s7
 20c:	000a2023          	sw	zero,0(s4)
 210:	000b0913          	mv	s2,s6
 214:	9c098413          	addi	s0,s3,-1600
 218:	00000493          	li	s1,0
 21c:	00042583          	lw	a1,0(s0)
 220:	00092503          	lw	a0,0(s2)
 224:	05040413          	addi	s0,s0,80
 228:	00490913          	addi	s2,s2,4
 22c:	31c000ef          	jal	ra,548 <__mulsi3>
 230:	00a484b3          	add	s1,s1,a0
 234:	009a2023          	sw	s1,0(s4)
 238:	ff3412e3          	bne	s0,s3,21c <Multiply+0x6c>
 23c:	00440993          	addi	s3,s0,4
 240:	004a0a13          	addi	s4,s4,4
 244:	fd3a94e3          	bne	s5,s3,20c <Multiply+0x5c>
 248:	050b8b93          	addi	s7,s7,80
 24c:	fbab9ae3          	bne	s7,s10,200 <Multiply+0x50>
 250:	03c12083          	lw	ra,60(sp)
 254:	03812403          	lw	s0,56(sp)
 258:	03412483          	lw	s1,52(sp)
 25c:	03012903          	lw	s2,48(sp)
 260:	02c12983          	lw	s3,44(sp)
 264:	02812a03          	lw	s4,40(sp)
 268:	02412a83          	lw	s5,36(sp)
 26c:	02012b03          	lw	s6,32(sp)
 270:	01c12b83          	lw	s7,28(sp)
 274:	01812c03          	lw	s8,24(sp)
 278:	01412c83          	lw	s9,20(sp)
 27c:	01012d03          	lw	s10,16(sp)
 280:	00c12d83          	lw	s11,12(sp)
 284:	04010113          	addi	sp,sp,64
 288:	00008067          	ret

0000028c <Test>:
 28c:	ff010113          	addi	sp,sp,-16
 290:	00112623          	sw	ra,12(sp)
 294:	f1dff0ef          	jal	ra,1b0 <Multiply>
 298:	00c12083          	lw	ra,12(sp)
 29c:	01010113          	addi	sp,sp,16
 2a0:	00008067          	ret

000002a4 <benchmark_body>:
 2a4:	00000013          	nop
 2a8:	10a05c63          	blez	a0,3c0 <benchmark_body+0x11c>
 2ac:	fd010113          	addi	sp,sp,-48
 2b0:	01312e23          	sw	s3,28(sp)
 2b4:	01412c23          	sw	s4,24(sp)
 2b8:	000129b7          	lui	s3,0x12
 2bc:	00011a37          	lui	s4,0x11
 2c0:	02912223          	sw	s1,36(sp)
 2c4:	01712623          	sw	s7,12(sp)
 2c8:	c80a0a13          	addi	s4,s4,-896 # 10c80 <ArrayA_ref>
 2cc:	90098993          	addi	s3,s3,-1792 # 11900 <ArrayB_ref>
 2d0:	000114b7          	lui	s1,0x11
 2d4:	00012bb7          	lui	s7,0x12
 2d8:	02812423          	sw	s0,40(sp)
 2dc:	03212023          	sw	s2,32(sp)
 2e0:	01512a23          	sw	s5,20(sp)
 2e4:	01612823          	sw	s6,16(sp)
 2e8:	01812423          	sw	s8,8(sp)
 2ec:	02112623          	sw	ra,44(sp)
 2f0:	00050913          	mv	s2,a0
 2f4:	00000413          	li	s0,0
 2f8:	00010c37          	lui	s8,0x10
 2fc:	2c048493          	addi	s1,s1,704 # 112c0 <ArrayB>
 300:	f40b8b93          	addi	s7,s7,-192 # 11f40 <ResultArray>
 304:	640a0b13          	addi	s6,s4,1600
 308:	64098a93          	addi	s5,s3,1600
 30c:	000a0793          	mv	a5,s4
 310:	640c0713          	addi	a4,s8,1600 # 10640 <ArrayA>
 314:	0007a503          	lw	a0,0(a5)
 318:	0047a583          	lw	a1,4(a5)
 31c:	0087a603          	lw	a2,8(a5)
 320:	00c7a683          	lw	a3,12(a5)
 324:	00a72023          	sw	a0,0(a4)
 328:	00b72223          	sw	a1,4(a4)
 32c:	00c72423          	sw	a2,8(a4)
 330:	00d72623          	sw	a3,12(a4)
 334:	01078793          	addi	a5,a5,16
 338:	01070713          	addi	a4,a4,16
 33c:	fd679ce3          	bne	a5,s6,314 <benchmark_body+0x70>
 340:	00098793          	mv	a5,s3
 344:	00048713          	mv	a4,s1
 348:	0007a503          	lw	a0,0(a5)
 34c:	0047a583          	lw	a1,4(a5)
 350:	0087a603          	lw	a2,8(a5)
 354:	00c7a683          	lw	a3,12(a5)
 358:	00a72023          	sw	a0,0(a4)
 35c:	00b72223          	sw	a1,4(a4)
 360:	00c72423          	sw	a2,8(a4)
 364:	00d72623          	sw	a3,12(a4)
 368:	01078793          	addi	a5,a5,16
 36c:	01070713          	addi	a4,a4,16
 370:	fd579ce3          	bne	a5,s5,348 <benchmark_body+0xa4>
 374:	00140413          	addi	s0,s0,1
 378:	000b8613          	mv	a2,s7
 37c:	00048593          	mv	a1,s1
 380:	640c0513          	addi	a0,s8,1600
 384:	e2dff0ef          	jal	ra,1b0 <Multiply>
 388:	f88912e3          	bne	s2,s0,30c <benchmark_body+0x68>
 38c:	02c12083          	lw	ra,44(sp)
 390:	02812403          	lw	s0,40(sp)
 394:	02412483          	lw	s1,36(sp)
 398:	02012903          	lw	s2,32(sp)
 39c:	01c12983          	lw	s3,28(sp)
 3a0:	01812a03          	lw	s4,24(sp)
 3a4:	01412a83          	lw	s5,20(sp)
 3a8:	01012b03          	lw	s6,16(sp)
 3ac:	00c12b83          	lw	s7,12(sp)
 3b0:	00812c03          	lw	s8,8(sp)
 3b4:	00000513          	li	a0,0
 3b8:	03010113          	addi	sp,sp,48
 3bc:	00008067          	ret
 3c0:	00000513          	li	a0,0
 3c4:	00008067          	ret

000003c8 <warm_caches>:
 3c8:	ff010113          	addi	sp,sp,-16
 3cc:	00112623          	sw	ra,12(sp)
 3d0:	ed5ff0ef          	jal	ra,2a4 <benchmark_body>
 3d4:	00c12083          	lw	ra,12(sp)
 3d8:	01010113          	addi	sp,sp,16
 3dc:	00008067          	ret

000003e0 <benchmark>:
 3e0:	00001537          	lui	a0,0x1
 3e4:	ff010113          	addi	sp,sp,-16
 3e8:	25c50513          	addi	a0,a0,604 # 125c <main+0xbbc>
 3ec:	00112623          	sw	ra,12(sp)
 3f0:	eb5ff0ef          	jal	ra,2a4 <benchmark_body>
 3f4:	00c12083          	lw	ra,12(sp)
 3f8:	01010113          	addi	sp,sp,16
 3fc:	00008067          	ret

00000400 <initialise_benchmark>:
 400:	fe010113          	addi	sp,sp,-32
 404:	00912a23          	sw	s1,20(sp)
 408:	000104b7          	lui	s1,0x10
 40c:	64048493          	addi	s1,s1,1600 # 10640 <ArrayA>
 410:	01212823          	sw	s2,16(sp)
 414:	01312623          	sw	s3,12(sp)
 418:	00002937          	lui	s2,0x2
 41c:	64048993          	addi	s3,s1,1600
 420:	00112e23          	sw	ra,28(sp)
 424:	00812c23          	sw	s0,24(sp)
 428:	69048493          	addi	s1,s1,1680
 42c:	69098993          	addi	s3,s3,1680
 430:	00000513          	li	a0,0
 434:	f9f90913          	addi	s2,s2,-97 # 1f9f <main+0x18ff>
 438:	fb048413          	addi	s0,s1,-80
 43c:	00551793          	slli	a5,a0,0x5
 440:	00a787b3          	add	a5,a5,a0
 444:	00279793          	slli	a5,a5,0x2
 448:	00a78533          	add	a0,a5,a0
 44c:	00090593          	mv	a1,s2
 450:	05150513          	addi	a0,a0,81
 454:	19c000ef          	jal	ra,5f0 <__modsi3>
 458:	00a42023          	sw	a0,0(s0)
 45c:	00440413          	addi	s0,s0,4
 460:	fc941ee3          	bne	s0,s1,43c <initialise_benchmark+0x3c>
 464:	05040493          	addi	s1,s0,80
 468:	fd3498e3          	bne	s1,s3,438 <initialise_benchmark+0x38>
 46c:	000114b7          	lui	s1,0x11
 470:	64048493          	addi	s1,s1,1600 # 11640 <ArrayB+0x380>
 474:	2c048993          	addi	s3,s1,704
 478:	00002937          	lui	s2,0x2
 47c:	31048493          	addi	s1,s1,784
 480:	69098993          	addi	s3,s3,1680
 484:	f9f90913          	addi	s2,s2,-97 # 1f9f <main+0x18ff>
 488:	fb048413          	addi	s0,s1,-80
 48c:	00551793          	slli	a5,a0,0x5
 490:	00a787b3          	add	a5,a5,a0
 494:	00279793          	slli	a5,a5,0x2
 498:	00a78533          	add	a0,a5,a0
 49c:	00090593          	mv	a1,s2
 4a0:	05150513          	addi	a0,a0,81
 4a4:	14c000ef          	jal	ra,5f0 <__modsi3>
 4a8:	00a42023          	sw	a0,0(s0)
 4ac:	00440413          	addi	s0,s0,4
 4b0:	fc941ee3          	bne	s0,s1,48c <initialise_benchmark+0x8c>
 4b4:	05040493          	addi	s1,s0,80
 4b8:	fd3498e3          	bne	s1,s3,488 <initialise_benchmark+0x88>
 4bc:	01c12083          	lw	ra,28(sp)
 4c0:	01812403          	lw	s0,24(sp)
 4c4:	000127b7          	lui	a5,0x12
 4c8:	58a7a423          	sw	a0,1416(a5) # 12588 <Seed>
 4cc:	01412483          	lw	s1,20(sp)
 4d0:	01012903          	lw	s2,16(sp)
 4d4:	00c12983          	lw	s3,12(sp)
 4d8:	02010113          	addi	sp,sp,32
 4dc:	00008067          	ret

000004e0 <verify_benchmark>:
 4e0:	000107b7          	lui	a5,0x10
 4e4:	9b010113          	addi	sp,sp,-1616
 4e8:	00078793          	mv	a5,a5
 4ec:	64112623          	sw	ra,1612(sp)
 4f0:	00010713          	mv	a4,sp
 4f4:	64078693          	addi	a3,a5,1600 # 10640 <ArrayA>
 4f8:	0007a803          	lw	a6,0(a5)
 4fc:	0047a503          	lw	a0,4(a5)
 500:	0087a583          	lw	a1,8(a5)
 504:	00c7a603          	lw	a2,12(a5)
 508:	01072023          	sw	a6,0(a4)
 50c:	00a72223          	sw	a0,4(a4)
 510:	00b72423          	sw	a1,8(a4)
 514:	00c72623          	sw	a2,12(a4)
 518:	01078793          	addi	a5,a5,16
 51c:	01070713          	addi	a4,a4,16
 520:	fcd79ce3          	bne	a5,a3,4f8 <verify_benchmark+0x18>
 524:	00012537          	lui	a0,0x12
 528:	00010593          	mv	a1,sp
 52c:	64000613          	li	a2,1600
 530:	f4050513          	addi	a0,a0,-192 # 11f40 <ResultArray>
 534:	0ec000ef          	jal	ra,620 <memcmp>
 538:	64c12083          	lw	ra,1612(sp)
 53c:	00153513          	seqz	a0,a0
 540:	65010113          	addi	sp,sp,1616
 544:	00008067          	ret

00000548 <__mulsi3>:
 548:	00050613          	mv	a2,a0
 54c:	00000513          	li	a0,0
 550:	0015f693          	andi	a3,a1,1
 554:	00068463          	beqz	a3,55c <__mulsi3+0x14>
 558:	00c50533          	add	a0,a0,a2
 55c:	0015d593          	srli	a1,a1,0x1
 560:	00161613          	slli	a2,a2,0x1
 564:	fe0596e3          	bnez	a1,550 <__mulsi3+0x8>
 568:	00008067          	ret

0000056c <__divsi3>:
 56c:	06054063          	bltz	a0,5cc <__umodsi3+0x10>
 570:	0605c663          	bltz	a1,5dc <__umodsi3+0x20>

00000574 <__udivsi3>:
 574:	00058613          	mv	a2,a1
 578:	00050593          	mv	a1,a0
 57c:	fff00513          	li	a0,-1
 580:	02060c63          	beqz	a2,5b8 <__udivsi3+0x44>
 584:	00100693          	li	a3,1
 588:	00b67a63          	bgeu	a2,a1,59c <__udivsi3+0x28>
 58c:	00c05863          	blez	a2,59c <__udivsi3+0x28>
 590:	00161613          	slli	a2,a2,0x1
 594:	00169693          	slli	a3,a3,0x1
 598:	feb66ae3          	bltu	a2,a1,58c <__udivsi3+0x18>
 59c:	00000513          	li	a0,0
 5a0:	00c5e663          	bltu	a1,a2,5ac <__udivsi3+0x38>
 5a4:	40c585b3          	sub	a1,a1,a2
 5a8:	00d56533          	or	a0,a0,a3
 5ac:	0016d693          	srli	a3,a3,0x1
 5b0:	00165613          	srli	a2,a2,0x1
 5b4:	fe0696e3          	bnez	a3,5a0 <__udivsi3+0x2c>
 5b8:	00008067          	ret

000005bc <__umodsi3>:
 5bc:	00008293          	mv	t0,ra
 5c0:	fb5ff0ef          	jal	ra,574 <__udivsi3>
 5c4:	00058513          	mv	a0,a1
 5c8:	00028067          	jr	t0
 5cc:	40a00533          	neg	a0,a0
 5d0:	00b04863          	bgtz	a1,5e0 <__umodsi3+0x24>
 5d4:	40b005b3          	neg	a1,a1
 5d8:	f9dff06f          	j	574 <__udivsi3>
 5dc:	40b005b3          	neg	a1,a1
 5e0:	00008293          	mv	t0,ra
 5e4:	f91ff0ef          	jal	ra,574 <__udivsi3>
 5e8:	40a00533          	neg	a0,a0
 5ec:	00028067          	jr	t0

000005f0 <__modsi3>:
 5f0:	00008293          	mv	t0,ra
 5f4:	0005ca63          	bltz	a1,608 <__modsi3+0x18>
 5f8:	00054c63          	bltz	a0,610 <__modsi3+0x20>
 5fc:	f79ff0ef          	jal	ra,574 <__udivsi3>
 600:	00058513          	mv	a0,a1
 604:	00028067          	jr	t0
 608:	40b005b3          	neg	a1,a1
 60c:	fe0558e3          	bgez	a0,5fc <__modsi3+0xc>
 610:	40a00533          	neg	a0,a0
 614:	f61ff0ef          	jal	ra,574 <__udivsi3>
 618:	40b00533          	neg	a0,a1
 61c:	00028067          	jr	t0

00000620 <memcmp>:
 620:	00300793          	li	a5,3
 624:	04c7f063          	bgeu	a5,a2,664 <memcmp+0x44>
 628:	00b567b3          	or	a5,a0,a1
 62c:	0037f793          	andi	a5,a5,3
 630:	00300693          	li	a3,3
 634:	00078a63          	beqz	a5,648 <memcmp+0x28>
 638:	fff60713          	addi	a4,a2,-1
 63c:	0300006f          	j	66c <memcmp+0x4c>
 640:	00000513          	li	a0,0
 644:	00008067          	ret
 648:	00052703          	lw	a4,0(a0)
 64c:	0005a783          	lw	a5,0(a1)
 650:	00f71a63          	bne	a4,a5,664 <memcmp+0x44>
 654:	00450513          	addi	a0,a0,4
 658:	00458593          	addi	a1,a1,4
 65c:	ffc60613          	addi	a2,a2,-4
 660:	fec6e4e3          	bltu	a3,a2,648 <memcmp+0x28>
 664:	fff60713          	addi	a4,a2,-1
 668:	fc060ce3          	beqz	a2,640 <memcmp+0x20>
 66c:	00050793          	mv	a5,a0
 670:	00170713          	addi	a4,a4,1
 674:	00e50533          	add	a0,a0,a4
 678:	0007c703          	lbu	a4,0(a5)
 67c:	0005c683          	lbu	a3,0(a1)
 680:	00d71c63          	bne	a4,a3,698 <memcmp+0x78>
 684:	00178793          	addi	a5,a5,1
 688:	00158593          	addi	a1,a1,1
 68c:	fea796e3          	bne	a5,a0,678 <memcmp+0x58>
 690:	00000513          	li	a0,0
 694:	00008067          	ret
 698:	40d70533          	sub	a0,a4,a3
 69c:	00008067          	ret

Disassembly of section .text.startup:

000006a0 <main>:
 6a0:	fe010113          	addi	sp,sp,-32
 6a4:	00112e23          	sw	ra,28(sp)
 6a8:	a19ff0ef          	jal	ra,c0 <initialise_board>
 6ac:	d55ff0ef          	jal	ra,400 <initialise_benchmark>
 6b0:	00100513          	li	a0,1
 6b4:	d15ff0ef          	jal	ra,3c8 <warm_caches>
 6b8:	a0dff0ef          	jal	ra,c4 <start_trigger>
 6bc:	d25ff0ef          	jal	ra,3e0 <benchmark>
 6c0:	00a12623          	sw	a0,12(sp)
 6c4:	a2dff0ef          	jal	ra,f0 <stop_trigger>
 6c8:	00c12503          	lw	a0,12(sp)
 6cc:	e15ff0ef          	jal	ra,4e0 <verify_benchmark>
 6d0:	00051a63          	bnez	a0,6e4 <main+0x44>
 6d4:	110007b7          	lui	a5,0x11000
 6d8:	fff00713          	li	a4,-1
 6dc:	00e7a823          	sw	a4,16(a5) # 11000010 <Seed+0x10feda88>
 6e0:	00e7aa23          	sw	a4,20(a5)
 6e4:	110007b7          	lui	a5,0x11000
 6e8:	00100713          	li	a4,1
 6ec:	08e7a023          	sw	a4,128(a5) # 11000080 <Seed+0x10fedaf8>
 6f0:	0000006f          	j	6f0 <main+0x50>
