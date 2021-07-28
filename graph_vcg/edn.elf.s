
edn.elf:     file format elf32-littleriscv


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
  84:	64d000ef          	jal	ra,ed0 <main>

Disassembly of section .text:

00000088 <writeToCtrl>:
  88:	00251513          	slli	a0,a0,0x2
  8c:	110007b7          	lui	a5,0x11000
  90:	00a787b3          	add	a5,a5,a0
  94:	00b7a023          	sw	a1,0(a5) # 11000000 <c+0x10fef370>
  98:	00008067          	ret

0000009c <readFromCtrl>:
  9c:	00251513          	slli	a0,a0,0x2
  a0:	110007b7          	lui	a5,0x11000
  a4:	00a787b3          	add	a5,a5,a0
  a8:	0007a503          	lw	a0,0(a5) # 11000000 <c+0x10fef370>
  ac:	00008067          	ret

000000b0 <setIntr>:
  b0:	110007b7          	lui	a5,0x11000
  b4:	00100713          	li	a4,1
  b8:	08e7a023          	sw	a4,128(a5) # 11000080 <c+0x10fef3f0>
  bc:	0000006f          	j	bc <setIntr+0xc>

000000c0 <initialise_board>:
  c0:	00008067          	ret

000000c4 <start_trigger>:
  c4:	ff010113          	addi	sp,sp,-16 # 1fff0 <c+0xf360>
  c8:	01c00513          	li	a0,28
  cc:	00112623          	sw	ra,12(sp)
  d0:	fcdff0ef          	jal	ra,9c <readFromCtrl>
  d4:	00c12083          	lw	ra,12(sp)
  d8:	000117b7          	lui	a5,0x11
  dc:	41f55713          	srai	a4,a0,0x1f
  e0:	c8a7a023          	sw	a0,-896(a5) # 10c80 <start_time>
  e4:	c8e7a223          	sw	a4,-892(a5)
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
 110:	000117b7          	lui	a5,0x11
 114:	c807a583          	lw	a1,-896(a5) # 10c80 <start_time>
 118:	c847a703          	lw	a4,-892(a5)
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

00000150 <vec_mpy1>:
 150:	fe010113          	addi	sp,sp,-32
 154:	00812c23          	sw	s0,24(sp)
 158:	00912a23          	sw	s1,20(sp)
 15c:	01212823          	sw	s2,16(sp)
 160:	01312623          	sw	s3,12(sp)
 164:	00112e23          	sw	ra,28(sp)
 168:	00050413          	mv	s0,a0
 16c:	00060913          	mv	s2,a2
 170:	00058493          	mv	s1,a1
 174:	12c50993          	addi	s3,a0,300
 178:	00049503          	lh	a0,0(s1)
 17c:	00090593          	mv	a1,s2
 180:	00240413          	addi	s0,s0,2
 184:	4a9000ef          	jal	ra,e2c <__mulsi3>
 188:	ffe45783          	lhu	a5,-2(s0)
 18c:	40f55513          	srai	a0,a0,0xf
 190:	00248493          	addi	s1,s1,2
 194:	00f50533          	add	a0,a0,a5
 198:	fea41f23          	sh	a0,-2(s0)
 19c:	fc899ee3          	bne	s3,s0,178 <vec_mpy1+0x28>
 1a0:	01c12083          	lw	ra,28(sp)
 1a4:	01812403          	lw	s0,24(sp)
 1a8:	01412483          	lw	s1,20(sp)
 1ac:	01012903          	lw	s2,16(sp)
 1b0:	00c12983          	lw	s3,12(sp)
 1b4:	02010113          	addi	sp,sp,32
 1b8:	00008067          	ret

000001bc <mac>:
 1bc:	fe010113          	addi	sp,sp,-32
 1c0:	01412423          	sw	s4,8(sp)
 1c4:	0006aa03          	lw	s4,0(a3)
 1c8:	00812c23          	sw	s0,24(sp)
 1cc:	00912a23          	sw	s1,20(sp)
 1d0:	01312623          	sw	s3,12(sp)
 1d4:	01512223          	sw	s5,4(sp)
 1d8:	01612023          	sw	s6,0(sp)
 1dc:	00112e23          	sw	ra,28(sp)
 1e0:	01212823          	sw	s2,16(sp)
 1e4:	00068b13          	mv	s6,a3
 1e8:	00058413          	mv	s0,a1
 1ec:	00060993          	mv	s3,a2
 1f0:	00050493          	mv	s1,a0
 1f4:	12c58a93          	addi	s5,a1,300
 1f8:	00041903          	lh	s2,0(s0)
 1fc:	00049503          	lh	a0,0(s1)
 200:	00240413          	addi	s0,s0,2
 204:	00090593          	mv	a1,s2
 208:	425000ef          	jal	ra,e2c <__mulsi3>
 20c:	00050793          	mv	a5,a0
 210:	00090593          	mv	a1,s2
 214:	00090513          	mv	a0,s2
 218:	00fa0a33          	add	s4,s4,a5
 21c:	411000ef          	jal	ra,e2c <__mulsi3>
 220:	00a989b3          	add	s3,s3,a0
 224:	00248493          	addi	s1,s1,2
 228:	fc8a98e3          	bne	s5,s0,1f8 <mac+0x3c>
 22c:	01c12083          	lw	ra,28(sp)
 230:	01812403          	lw	s0,24(sp)
 234:	014b2023          	sw	s4,0(s6)
 238:	01412483          	lw	s1,20(sp)
 23c:	01012903          	lw	s2,16(sp)
 240:	00812a03          	lw	s4,8(sp)
 244:	00412a83          	lw	s5,4(sp)
 248:	00012b03          	lw	s6,0(sp)
 24c:	00098513          	mv	a0,s3
 250:	00c12983          	lw	s3,12(sp)
 254:	02010113          	addi	sp,sp,32
 258:	00008067          	ret

0000025c <fir>:
 25c:	fd010113          	addi	sp,sp,-48
 260:	01312e23          	sw	s3,28(sp)
 264:	01412c23          	sw	s4,24(sp)
 268:	01512a23          	sw	s5,20(sp)
 26c:	01612823          	sw	s6,16(sp)
 270:	01712623          	sw	s7,12(sp)
 274:	02112623          	sw	ra,44(sp)
 278:	02812423          	sw	s0,40(sp)
 27c:	02912223          	sw	s1,36(sp)
 280:	03212023          	sw	s2,32(sp)
 284:	00058b13          	mv	s6,a1
 288:	00060a13          	mv	s4,a2
 28c:	06450993          	addi	s3,a0,100
 290:	00000a93          	li	s5,0
 294:	03200b93          	li	s7,50
 298:	f9c98413          	addi	s0,s3,-100
 29c:	000b0493          	mv	s1,s6
 2a0:	00000913          	li	s2,0
 2a4:	00049583          	lh	a1,0(s1)
 2a8:	00041503          	lh	a0,0(s0)
 2ac:	00240413          	addi	s0,s0,2
 2b0:	00248493          	addi	s1,s1,2
 2b4:	379000ef          	jal	ra,e2c <__mulsi3>
 2b8:	00a90933          	add	s2,s2,a0
 2bc:	fe8994e3          	bne	s3,s0,2a4 <fir+0x48>
 2c0:	40f95913          	srai	s2,s2,0xf
 2c4:	012a2023          	sw	s2,0(s4)
 2c8:	001a8a93          	addi	s5,s5,1
 2cc:	004a0a13          	addi	s4,s4,4
 2d0:	00298993          	addi	s3,s3,2
 2d4:	fd7a92e3          	bne	s5,s7,298 <fir+0x3c>
 2d8:	02c12083          	lw	ra,44(sp)
 2dc:	02812403          	lw	s0,40(sp)
 2e0:	02412483          	lw	s1,36(sp)
 2e4:	02012903          	lw	s2,32(sp)
 2e8:	01c12983          	lw	s3,28(sp)
 2ec:	01812a03          	lw	s4,24(sp)
 2f0:	01412a83          	lw	s5,20(sp)
 2f4:	01012b03          	lw	s6,16(sp)
 2f8:	00c12b83          	lw	s7,12(sp)
 2fc:	03010113          	addi	sp,sp,48
 300:	00008067          	ret

00000304 <fir_no_red_ld>:
 304:	fb010113          	addi	sp,sp,-80
 308:	03512a23          	sw	s5,52(sp)
 30c:	03612823          	sw	s6,48(sp)
 310:	03712623          	sw	s7,44(sp)
 314:	03912223          	sw	s9,36(sp)
 318:	04112623          	sw	ra,76(sp)
 31c:	04812423          	sw	s0,72(sp)
 320:	04912223          	sw	s1,68(sp)
 324:	05212023          	sw	s2,64(sp)
 328:	03312e23          	sw	s3,60(sp)
 32c:	03412c23          	sw	s4,56(sp)
 330:	03812423          	sw	s8,40(sp)
 334:	03a12023          	sw	s10,32(sp)
 338:	01b12e23          	sw	s11,28(sp)
 33c:	00b12623          	sw	a1,12(sp)
 340:	00060b13          	mv	s6,a2
 344:	04250a93          	addi	s5,a0,66
 348:	00000b93          	li	s7,0
 34c:	06400c93          	li	s9,100
 350:	fbea9d03          	lh	s10,-66(s5)
 354:	00c12983          	lw	s3,12(sp)
 358:	fc0a8413          	addi	s0,s5,-64
 35c:	00000493          	li	s1,0
 360:	00000913          	li	s2,0
 364:	00099d83          	lh	s11,0(s3)
 368:	000d0513          	mv	a0,s10
 36c:	00440413          	addi	s0,s0,4
 370:	000d8593          	mv	a1,s11
 374:	2b9000ef          	jal	ra,e2c <__mulsi3>
 378:	ffc41c03          	lh	s8,-4(s0)
 37c:	00050a13          	mv	s4,a0
 380:	000d8513          	mv	a0,s11
 384:	000c0593          	mv	a1,s8
 388:	2a5000ef          	jal	ra,e2c <__mulsi3>
 38c:	00299d83          	lh	s11,2(s3)
 390:	ffe41d03          	lh	s10,-2(s0)
 394:	00050713          	mv	a4,a0
 398:	000d8593          	mv	a1,s11
 39c:	000c0513          	mv	a0,s8
 3a0:	009704b3          	add	s1,a4,s1
 3a4:	289000ef          	jal	ra,e2c <__mulsi3>
 3a8:	012a0a33          	add	s4,s4,s2
 3ac:	000d8593          	mv	a1,s11
 3b0:	00050913          	mv	s2,a0
 3b4:	000d0513          	mv	a0,s10
 3b8:	275000ef          	jal	ra,e2c <__mulsi3>
 3bc:	01490933          	add	s2,s2,s4
 3c0:	009504b3          	add	s1,a0,s1
 3c4:	00498993          	addi	s3,s3,4
 3c8:	f88a9ee3          	bne	s5,s0,364 <fir_no_red_ld+0x60>
 3cc:	40f95913          	srai	s2,s2,0xf
 3d0:	40f4d493          	srai	s1,s1,0xf
 3d4:	012b2023          	sw	s2,0(s6)
 3d8:	009b2223          	sw	s1,4(s6)
 3dc:	002b8b93          	addi	s7,s7,2
 3e0:	008b0b13          	addi	s6,s6,8
 3e4:	004a8a93          	addi	s5,s5,4
 3e8:	f79b94e3          	bne	s7,s9,350 <fir_no_red_ld+0x4c>
 3ec:	04c12083          	lw	ra,76(sp)
 3f0:	04812403          	lw	s0,72(sp)
 3f4:	04412483          	lw	s1,68(sp)
 3f8:	04012903          	lw	s2,64(sp)
 3fc:	03c12983          	lw	s3,60(sp)
 400:	03812a03          	lw	s4,56(sp)
 404:	03412a83          	lw	s5,52(sp)
 408:	03012b03          	lw	s6,48(sp)
 40c:	02c12b83          	lw	s7,44(sp)
 410:	02812c03          	lw	s8,40(sp)
 414:	02412c83          	lw	s9,36(sp)
 418:	02012d03          	lw	s10,32(sp)
 41c:	01c12d83          	lw	s11,28(sp)
 420:	05010113          	addi	sp,sp,80
 424:	00008067          	ret

00000428 <latsynth>:
 428:	fd010113          	addi	sp,sp,-48
 42c:	02812423          	sw	s0,40(sp)
 430:	00161413          	slli	s0,a2,0x1
 434:	ffe40413          	addi	s0,s0,-2
 438:	008507b3          	add	a5,a0,s0
 43c:	00858733          	add	a4,a1,s0
 440:	03212023          	sw	s2,32(sp)
 444:	01612823          	sw	s6,16(sp)
 448:	00058913          	mv	s2,a1
 44c:	00050b13          	mv	s6,a0
 450:	00071583          	lh	a1,0(a4)
 454:	00079503          	lh	a0,0(a5)
 458:	02912223          	sw	s1,36(sp)
 45c:	01312e23          	sw	s3,28(sp)
 460:	00068493          	mv	s1,a3
 464:	02112623          	sw	ra,44(sp)
 468:	01412c23          	sw	s4,24(sp)
 46c:	01512a23          	sw	s5,20(sp)
 470:	01712623          	sw	s7,12(sp)
 474:	00060993          	mv	s3,a2
 478:	1b5000ef          	jal	ra,e2c <__mulsi3>
 47c:	00100793          	li	a5,1
 480:	40a484b3          	sub	s1,s1,a0
 484:	0937d463          	bge	a5,s3,50c <latsynth+0xe4>
 488:	00240793          	addi	a5,s0,2
 48c:	00fb0433          	add	s0,s6,a5
 490:	00f90933          	add	s2,s2,a5
 494:	002b0b93          	addi	s7,s6,2
 498:	ffc91a03          	lh	s4,-4(s2)
 49c:	ffc41983          	lh	s3,-4(s0)
 4a0:	ffe40413          	addi	s0,s0,-2
 4a4:	000a0593          	mv	a1,s4
 4a8:	00098513          	mv	a0,s3
 4ac:	181000ef          	jal	ra,e2c <__mulsi3>
 4b0:	40a484b3          	sub	s1,s1,a0
 4b4:	4104da93          	srai	s5,s1,0x10
 4b8:	000a8593          	mv	a1,s5
 4bc:	000a0513          	mv	a0,s4
 4c0:	16d000ef          	jal	ra,e2c <__mulsi3>
 4c4:	41055793          	srai	a5,a0,0x10
 4c8:	013787b3          	add	a5,a5,s3
 4cc:	00f41023          	sh	a5,0(s0)
 4d0:	ffe90913          	addi	s2,s2,-2
 4d4:	fc8b92e3          	bne	s7,s0,498 <latsynth+0x70>
 4d8:	02c12083          	lw	ra,44(sp)
 4dc:	02812403          	lw	s0,40(sp)
 4e0:	015b1023          	sh	s5,0(s6)
 4e4:	02012903          	lw	s2,32(sp)
 4e8:	01c12983          	lw	s3,28(sp)
 4ec:	01812a03          	lw	s4,24(sp)
 4f0:	01412a83          	lw	s5,20(sp)
 4f4:	01012b03          	lw	s6,16(sp)
 4f8:	00c12b83          	lw	s7,12(sp)
 4fc:	00048513          	mv	a0,s1
 500:	02412483          	lw	s1,36(sp)
 504:	03010113          	addi	sp,sp,48
 508:	00008067          	ret
 50c:	4104da93          	srai	s5,s1,0x10
 510:	fc9ff06f          	j	4d8 <latsynth+0xb0>

00000514 <iir1>:
 514:	fd010113          	addi	sp,sp,-48
 518:	01512a23          	sw	s5,20(sp)
 51c:	00059a83          	lh	s5,0(a1)
 520:	02912223          	sw	s1,36(sp)
 524:	03212023          	sw	s2,32(sp)
 528:	01312e23          	sw	s3,28(sp)
 52c:	01412c23          	sw	s4,24(sp)
 530:	02112623          	sw	ra,44(sp)
 534:	02812423          	sw	s0,40(sp)
 538:	01612823          	sw	s6,16(sp)
 53c:	01712623          	sw	s7,12(sp)
 540:	00050493          	mv	s1,a0
 544:	00060993          	mv	s3,a2
 548:	00068913          	mv	s2,a3
 54c:	19050a13          	addi	s4,a0,400
 550:	00092b03          	lw	s6,0(s2)
 554:	00449503          	lh	a0,4(s1)
 558:	00492b83          	lw	s7,4(s2)
 55c:	000b0593          	mv	a1,s6
 560:	0cd000ef          	jal	ra,e2c <__mulsi3>
 564:	00050413          	mv	s0,a0
 568:	00649503          	lh	a0,6(s1)
 56c:	000b8593          	mv	a1,s7
 570:	00848493          	addi	s1,s1,8
 574:	0b9000ef          	jal	ra,e2c <__mulsi3>
 578:	00050793          	mv	a5,a0
 57c:	ff849503          	lh	a0,-8(s1)
 580:	00f40433          	add	s0,s0,a5
 584:	000b0593          	mv	a1,s6
 588:	0a5000ef          	jal	ra,e2c <__mulsi3>
 58c:	40f45413          	srai	s0,s0,0xf
 590:	01540ab3          	add	s5,s0,s5
 594:	00050413          	mv	s0,a0
 598:	ffa49503          	lh	a0,-6(s1)
 59c:	000b8593          	mv	a1,s7
 5a0:	00890913          	addi	s2,s2,8
 5a4:	089000ef          	jal	ra,e2c <__mulsi3>
 5a8:	00a40433          	add	s0,s0,a0
 5ac:	ff592c23          	sw	s5,-8(s2)
 5b0:	40f45413          	srai	s0,s0,0xf
 5b4:	ff692e23          	sw	s6,-4(s2)
 5b8:	01540ab3          	add	s5,s0,s5
 5bc:	f9449ae3          	bne	s1,s4,550 <iir1+0x3c>
 5c0:	02c12083          	lw	ra,44(sp)
 5c4:	02812403          	lw	s0,40(sp)
 5c8:	0159a023          	sw	s5,0(s3)
 5cc:	02412483          	lw	s1,36(sp)
 5d0:	02012903          	lw	s2,32(sp)
 5d4:	01c12983          	lw	s3,28(sp)
 5d8:	01812a03          	lw	s4,24(sp)
 5dc:	01412a83          	lw	s5,20(sp)
 5e0:	01012b03          	lw	s6,16(sp)
 5e4:	00c12b83          	lw	s7,12(sp)
 5e8:	03010113          	addi	sp,sp,48
 5ec:	00008067          	ret

000005f0 <codebook>:
 5f0:	00070513          	mv	a0,a4
 5f4:	00008067          	ret

000005f8 <jpegdct>:
 5f8:	f5010113          	addi	sp,sp,-176
 5fc:	01000793          	li	a5,16
 600:	00f12e23          	sw	a5,28(sp)
 604:	00600793          	li	a5,6
 608:	02f12023          	sw	a5,32(sp)
 60c:	00a00793          	li	a5,10
 610:	02f12223          	sw	a5,36(sp)
 614:	00e00793          	li	a5,14
 618:	02f12423          	sw	a5,40(sp)
 61c:	00c00793          	li	a5,12
 620:	02f12623          	sw	a5,44(sp)
 624:	00400793          	li	a5,4
 628:	02f12823          	sw	a5,48(sp)
 62c:	00800793          	li	a5,8
 630:	09612823          	sw	s6,144(sp)
 634:	02f12a23          	sw	a5,52(sp)
 638:	00000b13          	li	s6,0
 63c:	08000793          	li	a5,128
 640:	09712623          	sw	s7,140(sp)
 644:	09812423          	sw	s8,136(sp)
 648:	00200b93          	li	s7,2
 64c:	ffe00c13          	li	s8,-2
 650:	02f12e23          	sw	a5,60(sp)
 654:	000b0793          	mv	a5,s6
 658:	0b212023          	sw	s2,160(sp)
 65c:	09412c23          	sw	s4,152(sp)
 660:	09512a23          	sw	s5,148(sp)
 664:	000b8b13          	mv	s6,s7
 668:	0a112623          	sw	ra,172(sp)
 66c:	0a812423          	sw	s0,168(sp)
 670:	0a912223          	sw	s1,164(sp)
 674:	09312e23          	sw	s3,156(sp)
 678:	09912223          	sw	s9,132(sp)
 67c:	09a12023          	sw	s10,128(sp)
 680:	07b12e23          	sw	s11,124(sp)
 684:	02a12c23          	sw	a0,56(sp)
 688:	00058913          	mv	s2,a1
 68c:	03010a93          	addi	s5,sp,48
 690:	000c0a13          	mv	s4,s8
 694:	00078b93          	mv	s7,a5
 698:	03812c83          	lw	s9,56(sp)
 69c:	00800c13          	li	s8,8
 6a0:	000a0413          	mv	s0,s4
 6a4:	00db8993          	addi	s3,s7,13
 6a8:	000c8a13          	mv	s4,s9
 6ac:	000b0493          	mv	s1,s6
 6b0:	000c0c93          	mv	s9,s8
 6b4:	000b8c13          	mv	s8,s7
 6b8:	02812783          	lw	a5,40(sp)
 6bc:	04010693          	addi	a3,sp,64
 6c0:	000a0593          	mv	a1,s4
 6c4:	01478bb3          	add	s7,a5,s4
 6c8:	000b8613          	mv	a2,s7
 6cc:	00068713          	mv	a4,a3
 6d0:	00059783          	lh	a5,0(a1)
 6d4:	00061503          	lh	a0,0(a2)
 6d8:	ffc70713          	addi	a4,a4,-4
 6dc:	009585b3          	add	a1,a1,s1
 6e0:	00a78833          	add	a6,a5,a0
 6e4:	0106a023          	sw	a6,0(a3)
 6e8:	40a787b3          	sub	a5,a5,a0
 6ec:	02f72023          	sw	a5,32(a4)
 6f0:	00860633          	add	a2,a2,s0
 6f4:	00468693          	addi	a3,a3,4
 6f8:	fcea9ce3          	bne	s5,a4,6d0 <jpegdct+0xd8>
 6fc:	04812603          	lw	a2,72(sp)
 700:	04412703          	lw	a4,68(sp)
 704:	04012b03          	lw	s6,64(sp)
 708:	04c12503          	lw	a0,76(sp)
 70c:	03412683          	lw	a3,52(sp)
 710:	00c705b3          	add	a1,a4,a2
 714:	00ab07b3          	add	a5,s6,a0
 718:	00da0f33          	add	t5,s4,a3
 71c:	00b786b3          	add	a3,a5,a1
 720:	4186d6b3          	sra	a3,a3,s8
 724:	40b787b3          	sub	a5,a5,a1
 728:	00da1023          	sh	a3,0(s4)
 72c:	4187d7b3          	sra	a5,a5,s8
 730:	40c70d33          	sub	s10,a4,a2
 734:	00ff1023          	sh	a5,0(t5)
 738:	40ab0b33          	sub	s6,s6,a0
 73c:	01491583          	lh	a1,20(s2)
 740:	016d0533          	add	a0,s10,s6
 744:	01051513          	slli	a0,a0,0x10
 748:	41055513          	srai	a0,a0,0x10
 74c:	6e0000ef          	jal	ra,e2c <__mulsi3>
 750:	00050713          	mv	a4,a0
 754:	01291503          	lh	a0,18(s2)
 758:	000b0593          	mv	a1,s6
 75c:	01071b13          	slli	s6,a4,0x10
 760:	6cc000ef          	jal	ra,e2c <__mulsi3>
 764:	03012783          	lw	a5,48(sp)
 768:	010b5b13          	srli	s6,s6,0x10
 76c:	41355533          	sra	a0,a0,s3
 770:	00fa0733          	add	a4,s4,a5
 774:	00ab0533          	add	a0,s6,a0
 778:	00a71023          	sh	a0,0(a4)
 77c:	02c12783          	lw	a5,44(sp)
 780:	01691503          	lh	a0,22(s2)
 784:	000d0593          	mv	a1,s10
 788:	00fa0d33          	add	s10,s4,a5
 78c:	6a0000ef          	jal	ra,e2c <__mulsi3>
 790:	05012703          	lw	a4,80(sp)
 794:	05c12783          	lw	a5,92(sp)
 798:	41355533          	sra	a0,a0,s3
 79c:	01071393          	slli	t2,a4,0x10
 7a0:	01079d93          	slli	s11,a5,0x10
 7a4:	00ab0b33          	add	s6,s6,a0
 7a8:	0103d393          	srli	t2,t2,0x10
 7ac:	016d1023          	sh	s6,0(s10)
 7b0:	010ddd93          	srli	s11,s11,0x10
 7b4:	01b38533          	add	a0,t2,s11
 7b8:	00491583          	lh	a1,4(s2)
 7bc:	01051513          	slli	a0,a0,0x10
 7c0:	41055513          	srai	a0,a0,0x10
 7c4:	00712c23          	sw	t2,24(sp)
 7c8:	00e12623          	sw	a4,12(sp)
 7cc:	00f12223          	sw	a5,4(sp)
 7d0:	65c000ef          	jal	ra,e2c <__mulsi3>
 7d4:	05412d03          	lw	s10,84(sp)
 7d8:	05812b03          	lw	s6,88(sp)
 7dc:	00091583          	lh	a1,0(s2)
 7e0:	010d1293          	slli	t0,s10,0x10
 7e4:	010b1f13          	slli	t5,s6,0x10
 7e8:	010f5f13          	srli	t5,t5,0x10
 7ec:	0102d293          	srli	t0,t0,0x10
 7f0:	01e280b3          	add	ra,t0,t5
 7f4:	00050693          	mv	a3,a0
 7f8:	01009513          	slli	a0,ra,0x10
 7fc:	41055513          	srai	a0,a0,0x10
 800:	01e12a23          	sw	t5,20(sp)
 804:	00512823          	sw	t0,16(sp)
 808:	04d12023          	sw	a3,64(sp)
 80c:	00d12423          	sw	a3,8(sp)
 810:	61c000ef          	jal	ra,e2c <__mulsi3>
 814:	00c12703          	lw	a4,12(sp)
 818:	00412783          	lw	a5,4(sp)
 81c:	01091583          	lh	a1,16(s2)
 820:	01670b33          	add	s6,a4,s6
 824:	01a787b3          	add	a5,a5,s10
 828:	00fb0733          	add	a4,s6,a5
 82c:	00050f93          	mv	t6,a0
 830:	01071513          	slli	a0,a4,0x10
 834:	41055513          	srai	a0,a0,0x10
 838:	05f12223          	sw	t6,68(sp)
 83c:	01f12623          	sw	t6,12(sp)
 840:	00f12223          	sw	a5,4(sp)
 844:	5e8000ef          	jal	ra,e2c <__mulsi3>
 848:	00050d13          	mv	s10,a0
 84c:	00291503          	lh	a0,2(s2)
 850:	010b1593          	slli	a1,s6,0x10
 854:	4105d593          	srai	a1,a1,0x10
 858:	5d4000ef          	jal	ra,e2c <__mulsi3>
 85c:	00412783          	lw	a5,4(sp)
 860:	00050713          	mv	a4,a0
 864:	00691503          	lh	a0,6(s2)
 868:	01079593          	slli	a1,a5,0x10
 86c:	01a70733          	add	a4,a4,s10
 870:	4105d593          	srai	a1,a1,0x10
 874:	04e12423          	sw	a4,72(sp)
 878:	00e12223          	sw	a4,4(sp)
 87c:	5b0000ef          	jal	ra,e2c <__mulsi3>
 880:	01812383          	lw	t2,24(sp)
 884:	00895583          	lhu	a1,8(s2)
 888:	00812683          	lw	a3,8(sp)
 88c:	01a50d33          	add	s10,a0,s10
 890:	00038513          	mv	a0,t2
 894:	01069b13          	slli	s6,a3,0x10
 898:	05a12623          	sw	s10,76(sp)
 89c:	590000ef          	jal	ra,e2c <__mulsi3>
 8a0:	00412703          	lw	a4,4(sp)
 8a4:	010b5b13          	srli	s6,s6,0x10
 8a8:	00ab06b3          	add	a3,s6,a0
 8ac:	01071713          	slli	a4,a4,0x10
 8b0:	01075713          	srli	a4,a4,0x10
 8b4:	00d706b3          	add	a3,a4,a3
 8b8:	01069693          	slli	a3,a3,0x10
 8bc:	4106d693          	srai	a3,a3,0x10
 8c0:	4136d6b3          	sra	a3,a3,s3
 8c4:	01012283          	lw	t0,16(sp)
 8c8:	00c12f83          	lw	t6,12(sp)
 8cc:	00db9023          	sh	a3,0(s7)
 8d0:	00c95583          	lhu	a1,12(s2)
 8d4:	010f9b93          	slli	s7,t6,0x10
 8d8:	00028513          	mv	a0,t0
 8dc:	00e12423          	sw	a4,8(sp)
 8e0:	010bdb93          	srli	s7,s7,0x10
 8e4:	548000ef          	jal	ra,e2c <__mulsi3>
 8e8:	010d1d13          	slli	s10,s10,0x10
 8ec:	00ab86b3          	add	a3,s7,a0
 8f0:	010d5d13          	srli	s10,s10,0x10
 8f4:	02412783          	lw	a5,36(sp)
 8f8:	00dd06b3          	add	a3,s10,a3
 8fc:	01069693          	slli	a3,a3,0x10
 900:	4106d693          	srai	a3,a3,0x10
 904:	00fa05b3          	add	a1,s4,a5
 908:	4136d6b3          	sra	a3,a3,s3
 90c:	02012783          	lw	a5,32(sp)
 910:	01412f03          	lw	t5,20(sp)
 914:	00d59023          	sh	a3,0(a1)
 918:	00a95583          	lhu	a1,10(s2)
 91c:	00fa06b3          	add	a3,s4,a5
 920:	000f0513          	mv	a0,t5
 924:	00d12223          	sw	a3,4(sp)
 928:	504000ef          	jal	ra,e2c <__mulsi3>
 92c:	00812703          	lw	a4,8(sp)
 930:	00ab8bb3          	add	s7,s7,a0
 934:	00412683          	lw	a3,4(sp)
 938:	01770733          	add	a4,a4,s7
 93c:	01071713          	slli	a4,a4,0x10
 940:	41075713          	srai	a4,a4,0x10
 944:	41375733          	sra	a4,a4,s3
 948:	00e69023          	sh	a4,0(a3)
 94c:	00e95583          	lhu	a1,14(s2)
 950:	000d8513          	mv	a0,s11
 954:	009a0bb3          	add	s7,s4,s1
 958:	4d4000ef          	jal	ra,e2c <__mulsi3>
 95c:	00ab0b33          	add	s6,s6,a0
 960:	016d07b3          	add	a5,s10,s6
 964:	01079793          	slli	a5,a5,0x10
 968:	4107d793          	srai	a5,a5,0x10
 96c:	4137d7b3          	sra	a5,a5,s3
 970:	fffc8313          	addi	t1,s9,-1
 974:	00fb9023          	sh	a5,0(s7)
 978:	01c12783          	lw	a5,28(sp)
 97c:	01031c93          	slli	s9,t1,0x10
 980:	010cdc93          	srli	s9,s9,0x10
 984:	00fa0a33          	add	s4,s4,a5
 988:	d20c98e3          	bnez	s9,6b8 <jpegdct+0xc0>
 98c:	03c12703          	lw	a4,60(sp)
 990:	03812683          	lw	a3,56(sp)
 994:	003c0b93          	addi	s7,s8,3
 998:	f8070793          	addi	a5,a4,-128
 99c:	00f687b3          	add	a5,a3,a5
 9a0:	02f12c23          	sw	a5,56(sp)
 9a4:	03412783          	lw	a5,52(sp)
 9a8:	f9070713          	addi	a4,a4,-112
 9ac:	02e12e23          	sw	a4,60(sp)
 9b0:	03878793          	addi	a5,a5,56
 9b4:	02f12a23          	sw	a5,52(sp)
 9b8:	03012783          	lw	a5,48(sp)
 9bc:	00e48b13          	addi	s6,s1,14
 9c0:	ff240a13          	addi	s4,s0,-14
 9c4:	01c78793          	addi	a5,a5,28
 9c8:	02f12823          	sw	a5,48(sp)
 9cc:	02c12783          	lw	a5,44(sp)
 9d0:	05478793          	addi	a5,a5,84
 9d4:	02f12623          	sw	a5,44(sp)
 9d8:	02812783          	lw	a5,40(sp)
 9dc:	06278793          	addi	a5,a5,98
 9e0:	02f12423          	sw	a5,40(sp)
 9e4:	02412783          	lw	a5,36(sp)
 9e8:	04678793          	addi	a5,a5,70
 9ec:	02f12223          	sw	a5,36(sp)
 9f0:	02012783          	lw	a5,32(sp)
 9f4:	02a78793          	addi	a5,a5,42
 9f8:	02f12023          	sw	a5,32(sp)
 9fc:	01c12783          	lw	a5,28(sp)
 a00:	ff278793          	addi	a5,a5,-14
 a04:	00f12e23          	sw	a5,28(sp)
 a08:	fa000793          	li	a5,-96
 a0c:	c8f716e3          	bne	a4,a5,698 <jpegdct+0xa0>
 a10:	0ac12083          	lw	ra,172(sp)
 a14:	0a812403          	lw	s0,168(sp)
 a18:	0a412483          	lw	s1,164(sp)
 a1c:	0a012903          	lw	s2,160(sp)
 a20:	09c12983          	lw	s3,156(sp)
 a24:	09812a03          	lw	s4,152(sp)
 a28:	09412a83          	lw	s5,148(sp)
 a2c:	09012b03          	lw	s6,144(sp)
 a30:	08c12b83          	lw	s7,140(sp)
 a34:	08812c03          	lw	s8,136(sp)
 a38:	08412c83          	lw	s9,132(sp)
 a3c:	08012d03          	lw	s10,128(sp)
 a40:	07c12d83          	lw	s11,124(sp)
 a44:	0b010113          	addi	sp,sp,176
 a48:	00008067          	ret

00000a4c <benchmark_body>:
 a4c:	c8010113          	addi	sp,sp,-896
 a50:	36112e23          	sw	ra,892(sp)
 a54:	36812c23          	sw	s0,888(sp)
 a58:	36912a23          	sw	s1,884(sp)
 a5c:	37212823          	sw	s2,880(sp)
 a60:	37312623          	sw	s3,876(sp)
 a64:	37412423          	sw	s4,872(sp)
 a68:	37512223          	sw	s5,868(sp)
 a6c:	37612023          	sw	s6,864(sp)
 a70:	35712e23          	sw	s7,860(sp)
 a74:	35812c23          	sw	s8,856(sp)
 a78:	35912a23          	sw	s9,852(sp)
 a7c:	35a12823          	sw	s10,848(sp)
 a80:	35b12623          	sw	s11,844(sp)
 a84:	00a12823          	sw	a0,16(sp)
 a88:	26a05463          	blez	a0,cf0 <benchmark_body+0x2a4>
 a8c:	000107b7          	lui	a5,0x10
 a90:	00078793          	mv	a5,a5
 a94:	00f12e23          	sw	a5,28(sp)
 a98:	00010b37          	lui	s6,0x10
 a9c:	000107b7          	lui	a5,0x10
 aa0:	64078a13          	addi	s4,a5,1600 # 10640 <a>
 aa4:	00011c37          	lui	s8,0x11
 aa8:	190b0793          	addi	a5,s6,400 # 10190 <main+0xf2c0>
 aac:	00f12223          	sw	a5,4(sp)
 ab0:	960c0793          	addi	a5,s8,-1696 # 10960 <output>
 ab4:	00f12623          	sw	a5,12(sp)
 ab8:	000107b7          	lui	a5,0x10
 abc:	70478793          	addi	a5,a5,1796 # 10704 <a+0xc4>
 ac0:	00f12c23          	sw	a5,24(sp)
 ac4:	0000b7b7          	lui	a5,0xb
 ac8:	00010ab7          	lui	s5,0x10
 acc:	000109b7          	lui	s3,0x10
 ad0:	00011937          	lui	s2,0x11
 ad4:	aaa78793          	addi	a5,a5,-1366 # aaaa <main+0x9bda>
 ad8:	00012423          	sw	zero,8(sp)
 adc:	1b010493          	addi	s1,sp,432
 ae0:	7d0a8a93          	addi	s5,s5,2000 # 107d0 <b>
 ae4:	76c98993          	addi	s3,s3,1900 # 1076c <a+0x12c>
 ae8:	8fc90913          	addi	s2,s2,-1796 # 108fc <b+0x12c>
 aec:	00f12a23          	sw	a5,20(sp)
 af0:	01c12783          	lw	a5,28(sp)
 af4:	02010713          	addi	a4,sp,32
 af8:	00c7a683          	lw	a3,12(a5)
 afc:	0007a503          	lw	a0,0(a5)
 b00:	0047a583          	lw	a1,4(a5)
 b04:	0087a603          	lw	a2,8(a5)
 b08:	00d72623          	sw	a3,12(a4)
 b0c:	00412683          	lw	a3,4(sp)
 b10:	00a72023          	sw	a0,0(a4)
 b14:	00b72223          	sw	a1,4(a4)
 b18:	00c72423          	sw	a2,8(a4)
 b1c:	01078793          	addi	a5,a5,16
 b20:	01070713          	addi	a4,a4,16
 b24:	fcd79ae3          	bne	a5,a3,af8 <benchmark_body+0xac>
 b28:	00068793          	mv	a5,a3
 b2c:	00048713          	mv	a4,s1
 b30:	00c7a683          	lw	a3,12(a5)
 b34:	0007a503          	lw	a0,0(a5)
 b38:	0047a583          	lw	a1,4(a5)
 b3c:	0087a603          	lw	a2,8(a5)
 b40:	00d72623          	sw	a3,12(a4)
 b44:	000106b7          	lui	a3,0x10
 b48:	00a72023          	sw	a0,0(a4)
 b4c:	00b72223          	sw	a1,4(a4)
 b50:	00c72423          	sw	a2,8(a4)
 b54:	01078793          	addi	a5,a5,16
 b58:	32068693          	addi	a3,a3,800 # 10320 <main+0xf450>
 b5c:	01070713          	addi	a4,a4,16
 b60:	fcd798e3          	bne	a5,a3,b30 <benchmark_body+0xe4>
 b64:	02010793          	addi	a5,sp,32
 b68:	00048593          	mv	a1,s1
 b6c:	000a8d93          	mv	s11,s5
 b70:	000a8613          	mv	a2,s5
 b74:	000a0713          	mv	a4,s4
 b78:	0007d803          	lhu	a6,0(a5)
 b7c:	0005d503          	lhu	a0,0(a1)
 b80:	00278793          	addi	a5,a5,2
 b84:	01071023          	sh	a6,0(a4)
 b88:	00a61023          	sh	a0,0(a2)
 b8c:	00270713          	addi	a4,a4,2
 b90:	00258593          	addi	a1,a1,2
 b94:	00260613          	addi	a2,a2,2
 b98:	fef490e3          	bne	s1,a5,b78 <benchmark_body+0x12c>
 b9c:	000a8613          	mv	a2,s5
 ba0:	000a0713          	mv	a4,s4
 ba4:	00061583          	lh	a1,0(a2)
 ba8:	00075503          	lhu	a0,0(a4)
 bac:	00270713          	addi	a4,a4,2
 bb0:	00159793          	slli	a5,a1,0x1
 bb4:	00b787b3          	add	a5,a5,a1
 bb8:	40f7d793          	srai	a5,a5,0xf
 bbc:	00a787b3          	add	a5,a5,a0
 bc0:	fef71f23          	sh	a5,-2(a4)
 bc4:	00260613          	addi	a2,a2,2
 bc8:	fce99ee3          	bne	s3,a4,ba4 <benchmark_body+0x158>
 bcc:	320a2403          	lw	s0,800(s4)
 bd0:	000a0d13          	mv	s10,s4
 bd4:	00300c93          	li	s9,3
 bd8:	000d9b03          	lh	s6,0(s11)
 bdc:	000d1503          	lh	a0,0(s10)
 be0:	002d8d93          	addi	s11,s11,2
 be4:	000b0593          	mv	a1,s6
 be8:	244000ef          	jal	ra,e2c <__mulsi3>
 bec:	00050613          	mv	a2,a0
 bf0:	000b0593          	mv	a1,s6
 bf4:	000b0513          	mv	a0,s6
 bf8:	00c40433          	add	s0,s0,a2
 bfc:	230000ef          	jal	ra,e2c <__mulsi3>
 c00:	00ac8cb3          	add	s9,s9,a0
 c04:	002d0d13          	addi	s10,s10,2
 c08:	fdb918e3          	bne	s2,s11,bd8 <benchmark_body+0x18c>
 c0c:	00c12b83          	lw	s7,12(sp)
 c10:	00010b37          	lui	s6,0x10
 c14:	000117b7          	lui	a5,0x11
 c18:	640b0513          	addi	a0,s6,1600 # 10640 <a>
 c1c:	000b8613          	mv	a2,s7
 c20:	000a8593          	mv	a1,s5
 c24:	c9979823          	sh	s9,-880(a5) # 10c90 <c>
 c28:	328a2023          	sw	s0,800(s4)
 c2c:	e30ff0ef          	jal	ra,25c <fir>
 c30:	000b8613          	mv	a2,s7
 c34:	000a8593          	mv	a1,s5
 c38:	640b0513          	addi	a0,s6,1600
 c3c:	ec8ff0ef          	jal	ra,304 <fir_no_red_ld>
 c40:	256a1583          	lh	a1,598(s4)
 c44:	0c6a1503          	lh	a0,198(s4)
 c48:	01812d03          	lw	s10,24(sp)
 c4c:	254a0c93          	addi	s9,s4,596
 c50:	1dc000ef          	jal	ra,e2c <__mulsi3>
 c54:	01412783          	lw	a5,20(sp)
 c58:	40a78433          	sub	s0,a5,a0
 c5c:	000d1b83          	lh	s7,0(s10)
 c60:	000c9c03          	lh	s8,0(s9)
 c64:	000d0b13          	mv	s6,s10
 c68:	000b8513          	mv	a0,s7
 c6c:	000c0593          	mv	a1,s8
 c70:	1bc000ef          	jal	ra,e2c <__mulsi3>
 c74:	40a40433          	sub	s0,s0,a0
 c78:	41045d93          	srai	s11,s0,0x10
 c7c:	000d8593          	mv	a1,s11
 c80:	000c0513          	mv	a0,s8
 c84:	1a8000ef          	jal	ra,e2c <__mulsi3>
 c88:	41055513          	srai	a0,a0,0x10
 c8c:	01750533          	add	a0,a0,s7
 c90:	00ad1123          	sh	a0,2(s10)
 c94:	ffec8c93          	addi	s9,s9,-2
 c98:	ffed0d13          	addi	s10,s10,-2
 c9c:	fd6a10e3          	bne	s4,s6,c5c <benchmark_body+0x210>
 ca0:	00c12683          	lw	a3,12(sp)
 ca4:	00010b37          	lui	s6,0x10
 ca8:	000117b7          	lui	a5,0x11
 cac:	af078613          	addi	a2,a5,-1296 # 10af0 <output+0x190>
 cb0:	640b0513          	addi	a0,s6,1600 # 10640 <a>
 cb4:	000117b7          	lui	a5,0x11
 cb8:	000a8593          	mv	a1,s5
 cbc:	c887a623          	sw	s0,-884(a5) # 10c8c <d>
 cc0:	01ba1023          	sh	s11,0(s4)
 cc4:	851ff0ef          	jal	ra,514 <iir1>
 cc8:	00812783          	lw	a5,8(sp)
 ccc:	640b0513          	addi	a0,s6,1600
 cd0:	000a8593          	mv	a1,s5
 cd4:	00178b13          	addi	s6,a5,1
 cd8:	000117b7          	lui	a5,0x11
 cdc:	c887a423          	sw	s0,-888(a5) # 10c88 <e>
 ce0:	01612423          	sw	s6,8(sp)
 ce4:	915ff0ef          	jal	ra,5f8 <jpegdct>
 ce8:	01012783          	lw	a5,16(sp)
 cec:	e16792e3          	bne	a5,s6,af0 <benchmark_body+0xa4>
 cf0:	37c12083          	lw	ra,892(sp)
 cf4:	37812403          	lw	s0,888(sp)
 cf8:	37412483          	lw	s1,884(sp)
 cfc:	37012903          	lw	s2,880(sp)
 d00:	36c12983          	lw	s3,876(sp)
 d04:	36812a03          	lw	s4,872(sp)
 d08:	36412a83          	lw	s5,868(sp)
 d0c:	36012b03          	lw	s6,864(sp)
 d10:	35c12b83          	lw	s7,860(sp)
 d14:	35812c03          	lw	s8,856(sp)
 d18:	35412c83          	lw	s9,852(sp)
 d1c:	35012d03          	lw	s10,848(sp)
 d20:	34c12d83          	lw	s11,844(sp)
 d24:	00000513          	li	a0,0
 d28:	38010113          	addi	sp,sp,896
 d2c:	00008067          	ret

00000d30 <initialise_benchmark>:
 d30:	00008067          	ret

00000d34 <warm_caches>:
 d34:	ff010113          	addi	sp,sp,-16
 d38:	00112623          	sw	ra,12(sp)
 d3c:	d11ff0ef          	jal	ra,a4c <benchmark_body>
 d40:	00c12083          	lw	ra,12(sp)
 d44:	01010113          	addi	sp,sp,16
 d48:	00008067          	ret

00000d4c <benchmark>:
 d4c:	00002537          	lui	a0,0x2
 d50:	ff010113          	addi	sp,sp,-16
 d54:	e1450513          	addi	a0,a0,-492 # 1e14 <main+0xf44>
 d58:	00112623          	sw	ra,12(sp)
 d5c:	cf1ff0ef          	jal	ra,a4c <benchmark_body>
 d60:	00c12083          	lw	ra,12(sp)
 d64:	01010113          	addi	sp,sp,16
 d68:	00008067          	ret

00000d6c <verify_benchmark>:
 d6c:	00010737          	lui	a4,0x10
 d70:	cd010113          	addi	sp,sp,-816
 d74:	00070713          	mv	a4,a4
 d78:	32070793          	addi	a5,a4,800 # 10320 <main+0xf450>
 d7c:	32112623          	sw	ra,812(sp)
 d80:	00010693          	mv	a3,sp
 d84:	64070713          	addi	a4,a4,1600
 d88:	0007a803          	lw	a6,0(a5)
 d8c:	0047a503          	lw	a0,4(a5)
 d90:	0087a583          	lw	a1,8(a5)
 d94:	00c7a603          	lw	a2,12(a5)
 d98:	0106a023          	sw	a6,0(a3)
 d9c:	00a6a223          	sw	a0,4(a3)
 da0:	00b6a423          	sw	a1,8(a3)
 da4:	00c6a623          	sw	a2,12(a3)
 da8:	01078793          	addi	a5,a5,16
 dac:	01068693          	addi	a3,a3,16
 db0:	fce79ce3          	bne	a5,a4,d88 <verify_benchmark+0x1c>
 db4:	00011537          	lui	a0,0x11
 db8:	32000613          	li	a2,800
 dbc:	00010593          	mv	a1,sp
 dc0:	96050513          	addi	a0,a0,-1696 # 10960 <output>
 dc4:	08c000ef          	jal	ra,e50 <memcmp>
 dc8:	02051263          	bnez	a0,dec <verify_benchmark+0x80>
 dcc:	000117b7          	lui	a5,0x11
 dd0:	c9079703          	lh	a4,-880(a5) # 10c90 <c>
 dd4:	000037b7          	lui	a5,0x3
 dd8:	80378793          	addi	a5,a5,-2045 # 2803 <main+0x1933>
 ddc:	02f70063          	beq	a4,a5,dfc <verify_benchmark+0x90>
 de0:	32c12083          	lw	ra,812(sp)
 de4:	33010113          	addi	sp,sp,816
 de8:	00008067          	ret
 dec:	32c12083          	lw	ra,812(sp)
 df0:	00000513          	li	a0,0
 df4:	33010113          	addi	sp,sp,816
 df8:	00008067          	ret
 dfc:	000117b7          	lui	a5,0x11
 e00:	c8c7a703          	lw	a4,-884(a5) # 10c8c <d>
 e04:	e5a967b7          	lui	a5,0xe5a96
 e08:	9ea78793          	addi	a5,a5,-1558 # e5a959ea <c+0xe5a84d5a>
 e0c:	fcf71ae3          	bne	a4,a5,de0 <verify_benchmark+0x74>
 e10:	000117b7          	lui	a5,0x11
 e14:	c887a503          	lw	a0,-888(a5) # 10c88 <e>
 e18:	1a56a7b7          	lui	a5,0x1a56a
 e1c:	61678793          	addi	a5,a5,1558 # 1a56a616 <c+0x1a559986>
 e20:	00f50533          	add	a0,a0,a5
 e24:	00153513          	seqz	a0,a0
 e28:	fb9ff06f          	j	de0 <verify_benchmark+0x74>

00000e2c <__mulsi3>:
 e2c:	00050613          	mv	a2,a0
 e30:	00000513          	li	a0,0
 e34:	0015f693          	andi	a3,a1,1
 e38:	00068463          	beqz	a3,e40 <__mulsi3+0x14>
 e3c:	00c50533          	add	a0,a0,a2
 e40:	0015d593          	srli	a1,a1,0x1
 e44:	00161613          	slli	a2,a2,0x1
 e48:	fe0596e3          	bnez	a1,e34 <__mulsi3+0x8>
 e4c:	00008067          	ret

00000e50 <memcmp>:
 e50:	00300793          	li	a5,3
 e54:	04c7f063          	bgeu	a5,a2,e94 <memcmp+0x44>
 e58:	00b567b3          	or	a5,a0,a1
 e5c:	0037f793          	andi	a5,a5,3
 e60:	00300693          	li	a3,3
 e64:	00078a63          	beqz	a5,e78 <memcmp+0x28>
 e68:	fff60713          	addi	a4,a2,-1
 e6c:	0300006f          	j	e9c <memcmp+0x4c>
 e70:	00000513          	li	a0,0
 e74:	00008067          	ret
 e78:	00052703          	lw	a4,0(a0)
 e7c:	0005a783          	lw	a5,0(a1)
 e80:	00f71a63          	bne	a4,a5,e94 <memcmp+0x44>
 e84:	00450513          	addi	a0,a0,4
 e88:	00458593          	addi	a1,a1,4
 e8c:	ffc60613          	addi	a2,a2,-4
 e90:	fec6e4e3          	bltu	a3,a2,e78 <memcmp+0x28>
 e94:	fff60713          	addi	a4,a2,-1
 e98:	fc060ce3          	beqz	a2,e70 <memcmp+0x20>
 e9c:	00050793          	mv	a5,a0
 ea0:	00170713          	addi	a4,a4,1
 ea4:	00e50533          	add	a0,a0,a4
 ea8:	0007c703          	lbu	a4,0(a5)
 eac:	0005c683          	lbu	a3,0(a1)
 eb0:	00d71c63          	bne	a4,a3,ec8 <memcmp+0x78>
 eb4:	00178793          	addi	a5,a5,1
 eb8:	00158593          	addi	a1,a1,1
 ebc:	fea796e3          	bne	a5,a0,ea8 <memcmp+0x58>
 ec0:	00000513          	li	a0,0
 ec4:	00008067          	ret
 ec8:	40d70533          	sub	a0,a4,a3
 ecc:	00008067          	ret

Disassembly of section .text.startup:

00000ed0 <main>:
 ed0:	fe010113          	addi	sp,sp,-32
 ed4:	00112e23          	sw	ra,28(sp)
 ed8:	9e8ff0ef          	jal	ra,c0 <initialise_board>
 edc:	e55ff0ef          	jal	ra,d30 <initialise_benchmark>
 ee0:	00100513          	li	a0,1
 ee4:	e51ff0ef          	jal	ra,d34 <warm_caches>
 ee8:	9dcff0ef          	jal	ra,c4 <start_trigger>
 eec:	e61ff0ef          	jal	ra,d4c <benchmark>
 ef0:	00a12623          	sw	a0,12(sp)
 ef4:	9fcff0ef          	jal	ra,f0 <stop_trigger>
 ef8:	00c12503          	lw	a0,12(sp)
 efc:	e71ff0ef          	jal	ra,d6c <verify_benchmark>
 f00:	00051a63          	bnez	a0,f14 <main+0x44>
 f04:	110007b7          	lui	a5,0x11000
 f08:	fff00713          	li	a4,-1
 f0c:	00e7a823          	sw	a4,16(a5) # 11000010 <c+0x10fef380>
 f10:	00e7aa23          	sw	a4,20(a5)
 f14:	110007b7          	lui	a5,0x11000
 f18:	00100713          	li	a4,1
 f1c:	08e7a023          	sw	a4,128(a5) # 11000080 <c+0x10fef3f0>
 f20:	0000006f          	j	f20 <main+0x50>
